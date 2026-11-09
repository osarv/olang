source_filename = "compiler_session.quick.ll"
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
%"compiler/session:Reader" = type { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1 }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"compiler/diag:Diagnostics" = type { i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, [3 x i64] }, { i64, ptr }, { i64, ptr }, i1, i1 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr } }
%"compiler/doc:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/session:Analysis" = type { ptr, ptr, ptr, ptr }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/source:Source" = type { { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/scope:Scoper" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { ptr, ptr }, { ptr, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, i64, i1, %"compiler/source:Span", %"compiler/source:Span", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/typed:Plan", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/source:Span", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, ptr, { i64, [2 x i64] }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, [2 x i64] }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, [2 x i64] }, i1, %"compiler/source:Span", { i64, [2 x i64] }, i1, { i64, [2 x i64] }, i1, i1, i1, %"compiler/source:Span", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/scope:fnRecs", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, [2 x i64] }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, { i64, [2 x i64] }, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i64, i1, i32, i1, i1, i1, i1, i64, %"compiler/source:Span", i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, i64, i1, i1, i1, i1, i64, i1, i1, i1, i1, i64, i1, i1, i1, i1, i64, %"compiler/source:Span", %"compiler/source:Span", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, ptr, { i64, ptr }, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"compiler/scope:Gap", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, i1, i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/source:Span" = type { i32, i32 }
%"compiler/typed:Plan" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/scope:fnRecs" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/scope:Gap" = type { i64, %"compiler/source:Span", { i64, ptr } }
%"compiler/interp:Exec" = type { ptr, ptr, i32, %"compiler/lower:Lowerer", %"compiler/eval:Machine", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1 }
%"compiler/lower:Lowerer" = type { ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i32, i32, i64, i64, i64, i64, i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/mir:GenInfo", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/mir:GenInfo" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64 }
%"compiler/eval:Machine" = type { ptr, i32, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/mir:GenInfo", i1, i64, i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/eval:Ptr", i32, { i64, [5 x i64] }, i64, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, i64, { i64, ptr }, { i64, ptr }, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i64, { i64, ptr }, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i64, { i64, ptr }, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"compiler/source:Span", i32 }
%"compiler/eval:Ptr" = type { i64, i64 }
%"compiler/check:Checker" = type { ptr, ptr, i1, i1, i1, i1, i64, i64, i1, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, { i64, [3 x i64] }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i32, i64, %"compiler/source:Span", i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/source:Span", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i32, i1, i1, %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, i32, i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, i64, i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/text:StringBuilder", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/session:symWriter" = type { ptr, i64 }
%"compiler/session:Found" = type { { i64, ptr }, { i64, ptr }, i64 }
%"compiler/typed:Local" = type { i32, %"compiler/source:Span", i32, i32, i32, { i64, [1 x i64] }, i1, i1 }
%"compiler/load:Import" = type { %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, { i64, ptr }, i64, i64, { i64, ptr }, %"compiler/source:Span" }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/session:memberInfo" = type { { i64, ptr }, i32, { i64, ptr }, { i64, ptr }, i64 }
%"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20" = type { i64, i32 }
%"compiler/names:Entry" = type { i32, %"compiler/source:Span", i32, i1, ptr }
%"compiler/names:Resolver" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/names:Table" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/ast:Func" = type { %"compiler/source:Span", ptr, i32, ptr, { i64, ptr }, { i64, ptr }, i1, i1, { i64, ptr }, ptr, i32 }
%"compiler/session:typeFinder" = type { i64, i32, i64 }
%"compiler/session:Items" = type { %"std/prelude/text:StringBuilder", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/session:Positions" = type { { i64, ptr }, i1, { i64, ptr } }
%"std/prelude/text:LineIter" = type { { i64, ptr }, i64 }
%"compiler/session:finder" = type { i64, i64, { i64, ptr }, ptr, i64, { i64, [6 x i64] }, i64 }
%"compiler/typed:If" = type { ptr, ptr, ptr }
%"compiler/typed:Join" = type { ptr, i1, { i64, ptr } }
%"compiler/typed:Spawn" = type { { i64, ptr }, ptr, { i64, ptr }, i32 }
%"compiler/ast:Param" = type { %"compiler/source:Span", i32, ptr, ptr, { i64, ptr } }
%"compiler/ast:TypeDecl" = type { i32, { i64, ptr }, i1, ptr, { i64, ptr }, i32, i1 }
%"compiler/ast:VarDecl" = type { { i64, ptr }, { i64, ptr }, ptr, { i64, ptr }, i1, i1, { i64, ptr }, i1 }
%"compiler/ast:TopIf" = type { ptr, ptr, ptr, ptr }
%"compiler/ast:TopBranch" = type { %"compiler/source:Span", { i64, ptr }, i64 }
%"compiler/doc:Example" = type { { i64, ptr }, { i64, ptr } }
%"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406" = type { i64, { i64, ptr } }
%"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd" = type { %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", %"compiler/scope:Placement" }
%"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" = type { i64, i64 }
%"compiler/scope:Placement" = type { i64, i64, i64, i64, { i64, ptr }, i1 }
%"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" = type { i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d" = type { i64, %"compiler/scope:fnRecs" }
%"std/prelude/map:MapEntry.39ab5235a9e7cc4d21ab272df52b187f" = type { %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/map:MapEntry.0bcda5c026701d95f15bce76f62e86ad" = type { %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", %"compiler/scope:fnRecs" }
%"compiler/scope:fnRec" = type { i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1 }
@G_2ecompiler_2fsession_2eCompConstant = constant <{ [8 x i8] }> <{ [8 x i8] c"\15\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fsession_2eCompField = constant <{ [8 x i8] }> <{ [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fsession_2eCompFunction = constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fsession_2eCompKeyword = constant <{ [8 x i8] }> <{ [8 x i8] c"\0E\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fsession_2eCompMethod = constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fsession_2eCompModule = constant <{ [8 x i8] }> <{ [8 x i8] c"\09\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fsession_2eCompStruct = constant <{ [8 x i8] }> <{ [8 x i8] c"\16\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fsession_2eCompVariable = constant <{ [8 x i8] }> <{ [8 x i8] c"\06\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fsession_2eKeywords = constant <{ [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fsession_2eKeywords.k1, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fsession_2eKeywords.k2, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fsession_2eKeywords.k3, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fsession_2eKeywords.k4, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fsession_2eKeywords.k5, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fsession_2eKeywords.k6, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fsession_2eKeywords.k7, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fsession_2eKeywords.k8, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fsession_2eKeywords.k9, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fsession_2eKeywords.k10, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fsession_2eKeywords.k11, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fsession_2eKeywords.k12, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fsession_2eKeywords.k13, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fsession_2eKeywords.k14, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fsession_2eKeywords.k15, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fsession_2eKeywords.k16, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fsession_2eKeywords.k17, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fsession_2eKeywords.k18, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fsession_2eKeywords.k19, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fsession_2eKeywords.k20, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fsession_2eKeywords.k21, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fsession_2eKeywords.k22, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fsession_2eKeywords.k23, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fsession_2eKeywords.k24, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fsession_2eKeywords.k25, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fsession_2eKeywords.k26, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fsession_2eKeywords.k27, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fsession_2eKeywords.k28, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fsession_2eKeywords.k29, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fsession_2eKeywords.k30, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fsession_2eKeywords.k31, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fsession_2eKeywords.k32, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fsession_2eKeywords.k33, [8 x i8] c"\0B\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fsession_2eKeywords.k34, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fsession_2eKeywords.k35, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fsession_2eKeywords.k36, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fsession_2eKeywords.k37, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fsession_2eKeywords.k38, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fsession_2eKeywords.k39, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fsession_2eKeywords.k40, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fsession_2eKeywords.k41, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fsession_2eKeywords.k42, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fsession_2eKeywords.k43, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fsession_2eKeywords.k44, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fsession_2eKeywords.k45, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fsession_2eKeywords.k46, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fsession_2eKeywords.k47, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fsession_2eKeywords.k48, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fsession_2eKeywords.k49, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fsession_2eKeywords.k50, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fsession_2eKeywords.k51, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fsession_2eKeywords.k52, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fsession_2eKeywords.k53, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fsession_2eKeywords.k54, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fsession_2eKeywords.k55, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fsession_2eKeywords.k56, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fsession_2eKeywords.k57, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fsession_2eKeywords.k58, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fsession_2eKeywords.k59, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fsession_2eKeywords.k60, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fsession_2eKeywords.k61, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fsession_2eKeywords.k62 }>, align 64
@G_2ecompiler_2fsession_2eKeywords.k1 = internal constant <{ [2 x i8] }> <{ [2 x i8] c"\66\6E" }>, align 8
@G_2ecompiler_2fsession_2eKeywords.k2 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\74\79\70\65" }>, align 8
@G_2ecompiler_2fsession_2eKeywords.k3 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\73\74\72\75\63\74" }>, align 8
@G_2ecompiler_2fsession_2eKeywords.k4 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\65\6E\75\6D" }>, align 8
@G_2ecompiler_2fsession_2eKeywords.k5 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\74\72\61\69\74" }>, align 8
@G_2ecompiler_2fsession_2eKeywords.k6 = internal constant <{ [7 x i8] }> <{ [7 x i8] c"\65\78\74\65\6E\64\73" }>, align 8
@G_2ecompiler_2fsession_2eKeywords.k7 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\69\6D\70\6F\72\74" }>, align 8
@G_2ecompiler_2fsession_2eKeywords.k8 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\74\65\73\74" }>, align 8
@G_2ecompiler_2fsession_2eKeywords.k9 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\65\78\74\65\72\6E" }>, align 8
@G_2ecompiler_2fsession_2eKeywords.k10 = internal constant <{ [2 x i8] }> <{ [2 x i8] c"\69\66" }>, align 8
@G_2ecompiler_2fsession_2eKeywords.k11 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\65\6C\73\65" }>, align 8
@G_2ecompiler_2fsession_2eKeywords.k12 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\66\6F\72" }>, align 8
@G_2ecompiler_2fsession_2eKeywords.k13 = internal constant <{ [2 x i8] }> <{ [2 x i8] c"\64\6F" }>, align 8
@G_2ecompiler_2fsession_2eKeywords.k14 = internal constant <{ [2 x i8] }> <{ [2 x i8] c"\69\6E" }>, align 8
@G_2ecompiler_2fsession_2eKeywords.k15 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\72\61\6E\67\65" }>, align 8
@G_2ecompiler_2fsession_2eKeywords.k16 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\6D\61\74\63\68" }>, align 8
@G_2ecompiler_2fsession_2eKeywords.k17 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\63\61\73\65" }>, align 8
@G_2ecompiler_2fsession_2eKeywords.k18 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\72\65\74\75\72\6E" }>, align 8
@G_2ecompiler_2fsession_2eKeywords.k19 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\62\72\65\61\6B" }>, align 8
@G_2ecompiler_2fsession_2eKeywords.k20 = internal constant <{ [8 x i8] }> <{ [8 x i8] c"\63\6F\6E\74\69\6E\75\65" }>, align 8
@G_2ecompiler_2fsession_2eKeywords.k21 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\65\72\72\6F\72" }>, align 8
@G_2ecompiler_2fsession_2eKeywords.k22 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\74\72\79" }>, align 8
@G_2ecompiler_2fsession_2eKeywords.k23 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\63\61\74\63\68" }>, align 8
@G_2ecompiler_2fsession_2eKeywords.k24 = internal constant <{ [7 x i8] }> <{ [7 x i8] c"\64\65\66\61\75\6C\74" }>, align 8
@G_2ecompiler_2fsession_2eKeywords.k25 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\6A\6F\69\6E" }>, align 8
@G_2ecompiler_2fsession_2eKeywords.k26 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\73\70\61\77\6E" }>, align 8
@G_2ecompiler_2fsession_2eKeywords.k27 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\64\65\66\65\72" }>, align 8
@G_2ecompiler_2fsession_2eKeywords.k28 = internal constant <{ [8 x i8] }> <{ [8 x i8] c"\65\72\72\64\65\66\65\72" }>, align 8
@G_2ecompiler_2fsession_2eKeywords.k29 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\65\6D\62\65\64" }>, align 8
@G_2ecompiler_2fsession_2eKeywords.k30 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\79\69\65\6C\64" }>, align 8
@G_2ecompiler_2fsession_2eKeywords.k31 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\62\65\63\6F\6D\65" }>, align 8
@G_2ecompiler_2fsession_2eKeywords.k32 = internal constant <{ [8 x i8] }> <{ [8 x i8] c"\63\6F\6D\70\74\69\6D\65" }>, align 8
@G_2ecompiler_2fsession_2eKeywords.k33 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\61\73\73\65\72\74" }>, align 8
@G_2ecompiler_2fsession_2eKeywords.k34 = internal constant <{ [11 x i8] }> <{ [11 x i8] c"\75\6E\72\65\61\63\68\61\62\6C\65" }>, align 8
@G_2ecompiler_2fsession_2eKeywords.k35 = internal constant <{ [8 x i8] }> <{ [8 x i8] c"\6E\6F\72\65\74\75\72\6E" }>, align 8
@G_2ecompiler_2fsession_2eKeywords.k36 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\6D\75\74" }>, align 8
@G_2ecompiler_2fsession_2eKeywords.k37 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\61\6E\64" }>, align 8
@G_2ecompiler_2fsession_2eKeywords.k38 = internal constant <{ [2 x i8] }> <{ [2 x i8] c"\6F\72" }>, align 8
@G_2ecompiler_2fsession_2eKeywords.k39 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\6E\6F\74" }>, align 8
@G_2ecompiler_2fsession_2eKeywords.k40 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\78\6F\72" }>, align 8
@G_2ecompiler_2fsession_2eKeywords.k41 = internal constant <{ [2 x i8] }> <{ [2 x i8] c"\69\73" }>, align 8
@G_2ecompiler_2fsession_2eKeywords.k42 = internal constant <{ [2 x i8] }> <{ [2 x i8] c"\61\73" }>, align 8
@G_2ecompiler_2fsession_2eKeywords.k43 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\6E\75\6C\6C" }>, align 8
@G_2ecompiler_2fsession_2eKeywords.k44 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\74\72\75\65" }>, align 8
@G_2ecompiler_2fsession_2eKeywords.k45 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\66\61\6C\73\65" }>, align 8
@G_2ecompiler_2fsession_2eKeywords.k46 = internal constant <{ [8 x i8] }> <{ [8 x i8] c"\64\65\73\74\72\75\63\74" }>, align 8
@G_2ecompiler_2fsession_2eKeywords.k47 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\61\6E\79" }>, align 8
@G_2ecompiler_2fsession_2eKeywords.k48 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\75\6E\69\71\75\65" }>, align 8
@G_2ecompiler_2fsession_2eKeywords.k49 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\69\6D\6D\75\74" }>, align 8
@G_2ecompiler_2fsession_2eKeywords.k50 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\70\61\63\6B\65\64" }>, align 8
@G_2ecompiler_2fsession_2eKeywords.k51 = internal constant <{ [8 x i8] }> <{ [8 x i8] c"\63\6F\6D\6D\75\74\65\73" }>, align 8
@G_2ecompiler_2fsession_2eKeywords.k52 = internal constant <{ [7 x i8] }> <{ [7 x i8] c"\72\65\74\75\72\6E\73" }>, align 8
@G_2ecompiler_2fsession_2eKeywords.k53 = internal constant <{ [7 x i8] }> <{ [7 x i8] c"\6E\6F\61\6C\6C\6F\63" }>, align 8
@G_2ecompiler_2fsession_2eKeywords.k54 = internal constant <{ [7 x i8] }> <{ [7 x i8] c"\6E\6F\62\6C\6F\63\6B" }>, align 8
@G_2ecompiler_2fsession_2eKeywords.k55 = internal constant <{ [7 x i8] }> <{ [7 x i8] c"\6E\6F\73\70\61\77\6E" }>, align 8
@G_2ecompiler_2fsession_2eKeywords.k56 = internal constant <{ [9 x i8] }> <{ [9 x i8] c"\6E\6F\72\65\63\75\72\73\65" }>, align 8
@G_2ecompiler_2fsession_2eKeywords.k57 = internal constant <{ [8 x i8] }> <{ [8 x i8] c"\6E\6F\65\78\74\65\72\6E" }>, align 8
@G_2ecompiler_2fsession_2eKeywords.k58 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\70\75\72\65" }>, align 8
@G_2ecompiler_2fsession_2eKeywords.k59 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\6B\65\65\70\73" }>, align 8
@G_2ecompiler_2fsession_2eKeywords.k60 = internal constant <{ [7 x i8] }> <{ [7 x i8] c"\62\6F\72\72\6F\77\73" }>, align 8
@G_2ecompiler_2fsession_2eKeywords.k61 = internal constant <{ [8 x i8] }> <{ [8 x i8] c"\6E\6F\62\6F\72\72\6F\77" }>, align 8
@G_2ecompiler_2fsession_2eKeywords.k62 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\77\65\61\6B" }>, align 8
@G_2ecompiler_2fsession_2eKindClass = constant <{ [8 x i8] }> <{ [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fsession_2eKindEnum = constant <{ [8 x i8] }> <{ [8 x i8] c"\0A\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fsession_2eKindEnumMember = constant <{ [8 x i8] }> <{ [8 x i8] c"\16\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fsession_2eKindField = constant <{ [8 x i8] }> <{ [8 x i8] c"\08\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fsession_2eKindFunction = constant <{ [8 x i8] }> <{ [8 x i8] c"\0C\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fsession_2eKindInterface = constant <{ [8 x i8] }> <{ [8 x i8] c"\0B\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fsession_2eKindMethod = constant <{ [8 x i8] }> <{ [8 x i8] c"\06\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fsession_2eKindStruct = constant <{ [8 x i8] }> <{ [8 x i8] c"\17\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fsession_2eKindVariable = constant <{ [8 x i8] }> <{ [8 x i8] c"\0D\00\00\00\00\00\00\00" }>, align 8
define dso_local { { i64, ptr }, i32 } @compiler_2fsession_2eChildOutput(ptr %v0, ptr %v1, ptr %a0c, ptr %a0e) #0 {
entry:
  %l0 = alloca { ptr, ptr }
  %l1 = alloca { i32, i32 }
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca %"compiler/session:Reader"
  %l6 = alloca i32
  %l7 = alloca { i32, i32 }
  %l13 = alloca { i64, ptr }
  %l15 = alloca i32
  %l21 = alloca { i64, ptr }
  %l26 = alloca i32
  %l28 = alloca { i64, ptr }
  %l31 = alloca i32
  %l33 = alloca i1
  %l38 = alloca %"compiler/session:Reader"
  %l40 = alloca i1
  %l44 = alloca i32
  %l46 = alloca { i64, ptr }
  %l47 = alloca { i64, ptr }
  %l48 = alloca i64
  %l49 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca { { i64, ptr }, i32 }
  %pf0 = insertvalue { ptr, ptr } undef, ptr %a0c, 0
  %pg0 = insertvalue { ptr, ptr } %pf0, ptr %a0e, 1
  store { ptr, ptr } %pg0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call { i32, i32 } @compiler_2fsession_2ePipe()
  store { i32, i32 } %t1, ptr %l7
  br label %bb1
bb1:
  %t2 = load { i32, i32 }, ptr %l7
  store { i32, i32 } %t2, ptr %l1
  %t3 = getelementptr { i32, i32 }, ptr %l1, i32 0, i32 0
  %t4 = load i32, ptr %t3, !tbaa !23
  store i32 %t4, ptr %l2, !tbaa !23
  %t6 = getelementptr { i32, i32 }, ptr %l1, i32 0, i32 1
  %t7 = load i32, ptr %t6, !tbaa !23
  store i32 %t7, ptr %l3, !tbaa !23
  %t9 = load i32, ptr %l2, !tbaa !23
  %t11 = icmp slt i32 %t9, 0
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load { ptr, ptr }, ptr %l0
  %t15 = extractvalue { ptr, ptr } %t13, 0
  %t16 = extractvalue { ptr, ptr } %t13, 1
  %t17 = call { i64, ptr } %t15(ptr %t16, ptr %v1)
  store { i64, ptr } %t17, ptr %l13
  br label %bb4
bb3:
  br label %bb5
bb4:
  %t18 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t19 = insertvalue { { i64, ptr }, i32 } undef, { i64, ptr } %t18, 0
  %t20 = insertvalue { { i64, ptr }, i32 } %t19, i32 0, 1
  call void @__olang_scope_close(ptr %s0)
  store { { i64, ptr }, i32 } %t20, ptr %rv
  br label %ret
bb5:
  %t22 = call i32 @fork()
  store i32 %t22, ptr %l15
  br label %bb6
bb6:
  %t23 = load i32, ptr %l15, !tbaa !23
  store i32 %t23, ptr %l4, !tbaa !23
  %t24 = load i32, ptr %l4, !tbaa !23
  %t26 = icmp slt i32 %t24, 0
  br i1 %t26, label %bb7, label %bb8
bb7:
  %t28 = load i32, ptr %l2, !tbaa !23
  call void @compiler_2fsession_2eCloseFd(i32 %t28)
  br label %bb9
bb8:
  br label %bb12
bb9:
  %t30 = load i32, ptr %l3, !tbaa !23
  call void @compiler_2fsession_2eCloseFd(i32 %t30)
  br label %bb10
bb10:
  %t32 = load { ptr, ptr }, ptr %l0
  %t34 = extractvalue { ptr, ptr } %t32, 0
  %t35 = extractvalue { ptr, ptr } %t32, 1
  %t36 = call { i64, ptr } %t34(ptr %t35, ptr %v1)
  store { i64, ptr } %t36, ptr %l21
  br label %bb11
bb11:
  %t37 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t38 = insertvalue { { i64, ptr }, i32 } undef, { i64, ptr } %t37, 0
  %t39 = insertvalue { { i64, ptr }, i32 } %t38, i32 0, 1
  call void @__olang_scope_close(ptr %s0)
  store { { i64, ptr }, i32 } %t39, ptr %rv
  br label %ret
bb12:
  %t41 = load i32, ptr %l4, !tbaa !23
  %t43 = icmp eq i32 %t41, 0
  br i1 %t43, label %bb13, label %bb14
bb13:
  store %olang.scope zeroinitializer, ptr %s3
  %t45 = load i32, ptr %l2, !tbaa !23
  call void @compiler_2fsession_2eCloseFd(i32 %t45)
  br label %bb15
bb14:
  br label %bb25
bb15:
  call void @compiler_2fsession_2eDup2(i32 2, i32 1)
  br label %bb16
bb16:
  %t47 = load i32, ptr %l3, !tbaa !23
  store i32 %t47, ptr %l26, !tbaa !23
  %t48 = load { ptr, ptr }, ptr %l0
  %t50 = extractvalue { ptr, ptr } %t48, 0
  %t51 = extractvalue { ptr, ptr } %t48, 1
  %t52 = call { i64, ptr } %t50(ptr %t51, ptr %s3)
  store { i64, ptr } %t52, ptr %l28
  br label %bb17
bb17:
  %t53 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t55 = extractvalue { i64, ptr } %t53, 0
  %t56 = extractvalue { i64, ptr } %t53, 1
  %t57 = mul i64 %t55, 1
  %t58 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t57)
  call void @llvm.memcpy.p0.p0.i64(ptr %t58, ptr %t56, i64 %t57, i1 false)
  %t59 = insertvalue { i64, ptr } undef, i64 %t55, 0
  %t60 = insertvalue { i64, ptr } %t59, ptr %t58, 1
  %t61 = load i32, ptr %l26, !tbaa !23
  %t63 = call i32 @std_2fio_2eWrite(ptr %s3, i32 %t61, { i64, ptr } %t60)
  store i32 %t63, ptr %l31
  %t64 = icmp ne i32 %t63, 0
  br i1 %t64, label %bb19, label %ok.65, !prof !99
ok.65:
  br label %bb18
bb18:
  br label %bb23
bb19:
  %t66 = load i32, ptr %l31, !tbaa !23
  %t67 = ashr i32 %t66, 16
  %t69 = icmp eq i32 %t67, 1
  store i1 %t69, ptr %l33, !tbaa !21
  %t70 = load i32, ptr %l31, !tbaa !23
  %t71 = ashr i32 %t70, 16
  %t73 = icmp eq i32 %t71, 1
  br i1 %t73, label %bb20, label %bb21
bb20:
  call void @__olang_errpay_pop()
  br label %bb21
bb21:
  br label %bb22
bb22:
  br label %bb23
bb23:
  call void @_exit(i32 0)
  unreachable
bb24:
  call void @__olang_check_failed(ptr @olang_loc_35fd852a81194674_cc9a5a6794b34358)
  unreachable
bb25:
  %t75 = load i32, ptr %l3, !tbaa !23
  call void @compiler_2fsession_2eCloseFd(i32 %t75)
  br label %bb26
bb26:
  %t77 = load i32, ptr %l2, !tbaa !23
  %t79 = call %"compiler/session:Reader" @compiler_2fsession_3aReader_2ector(ptr %s0, i32 %t77)
  store %"compiler/session:Reader" %t79, ptr %l38
  br label %bb27
bb27:
  %t80 = load %"compiler/session:Reader", ptr %l38
  store %"compiler/session:Reader" %t80, ptr %l5
  br label %bb28
bb28:
  %t82 = call i1 @compiler_2fsession_2ecompiler_2fsession_3aReader_2eFill(ptr %s0, ptr %l5)
  store i1 %t82, ptr %l40
  br label %bb29
bb29:
  %t83 = load i1, ptr %l40, !tbaa !21
  %t84 = xor i1 %t83, true
  br i1 %t84, label %bb30, label %bb31
bb30:
  br label %bb34
bb31:
  br label %bb32
bb32:
  br label %bb33
bb33:
  br label %bb28
bb34:
  %t86 = load i32, ptr %l2, !tbaa !23
  call void @compiler_2fsession_2eCloseFd(i32 %t86)
  br label %bb35
bb35:
  %t88 = load i32, ptr %l4, !tbaa !23
  %t90 = call i32 @compiler_2fsession_2eReap(i32 %t88)
  store i32 %t90, ptr %l44
  br label %bb36
bb36:
  %t91 = load i32, ptr %l44, !tbaa !23
  store i32 %t91, ptr %l6, !tbaa !23
  %t92 = getelementptr %"compiler/session:Reader", ptr %l5, i32 0, i32 1
  %t94 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eView_3cU8_3e(ptr %s0, ptr %s0, ptr %t92)
  store { i64, ptr } %t94, ptr %l46
  br label %bb37
bb37:
  %t95 = load { i64, ptr }, ptr %l46, !tbaa !27
  store { i64, ptr } %t95, ptr %l47, !tbaa !27
  %t96 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t97 = extractvalue { i64, ptr } %t96, 0
  store i64 %t97, ptr %l48, !tbaa !24
  %t98 = load i64, ptr %l48, !tbaa !24
  %t99 = mul i64 %t98, 1
  %t100 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t99)
  %t101 = insertvalue { i64, ptr } undef, i64 %t98, 0
  %t102 = insertvalue { i64, ptr } %t101, ptr %t100, 1
  store { i64, ptr } %t102, ptr %l49, !tbaa !27
  %t103 = getelementptr { i64, ptr }, ptr %l49, i32 0, i32 1
  %t104 = load ptr, ptr %t103, !tbaa !27
  %t105 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t106 = load ptr, ptr %t105, !tbaa !27
  %t107 = load i64, ptr %l48, !tbaa !24
  %t108 = mul i64 %t107, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t104, ptr %t106, i64 %t108, i1 false)
  %t109 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t111 = extractvalue { i64, ptr } %t109, 1
  %t112 = extractvalue { i64, ptr } %t109, 0
  %t113 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t112)
  call void @olang_textcopy(ptr %t113, ptr %t111, i64 %t112)
  %t114 = insertvalue { i64, ptr } undef, i64 %t112, 0
  %t115 = insertvalue { i64, ptr } %t114, ptr %t113, 1
  %t116 = load i32, ptr %l6, !tbaa !23
  %t118 = insertvalue { { i64, ptr }, i32 } undef, { i64, ptr } %t115, 0
  %t120 = insertvalue { { i64, ptr }, i32 } %t118, i32 %t116, 1
  call void @__olang_scope_close(ptr %s0)
  store { { i64, ptr }, i32 } %t120, ptr %rv
  br label %ret
ret:
  %rr = load { { i64, ptr }, i32 }, ptr %rv
  ret { { i64, ptr }, i32 } %rr
}

define dso_local i32 @compiler_2fsession_2eDocMode(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, ptr %a3) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l12 = alloca i32
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l14 = alloca ptr
  %l15 = alloca i64
  %l16 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l18 = alloca [2 x { i64, ptr }]
  %l19 = alloca { i64, ptr }
  %l21 = alloca i1
  %l22 = alloca i1
  %l23 = alloca %"compiler/diag:Diagnostics"
  %l25 = alloca { i64, ptr }
  %l26 = alloca { i64, ptr }
  %l27 = alloca ptr
  %l28 = alloca ptr
  %l29 = alloca i64
  %l31 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l33 = alloca ptr
  %l35 = alloca i64
  %l37 = alloca i1
  %l41 = alloca i1
  %l46 = alloca { i64, ptr }
  %l49 = alloca { i64, ptr }
  %l53 = alloca i1
  %l55 = alloca { i64, ptr }
  %l60 = alloca ptr
  %l65 = alloca ptr
  %l75 = alloca { i64, ptr }
  %l76 = alloca i32
  %l78 = alloca i1
  %l79 = alloca ptr
  %l80 = alloca { i64, [3 x i64] }
  %l82 = alloca { i64, ptr }
  %l84 = alloca %"compiler/diagmsg:Msg"
  %l85 = alloca i64
  %l87 = alloca { i64, ptr }
  %l96 = alloca ptr
  %l101 = alloca ptr
  %l110 = alloca %"compiler/doc:Module"
  %l112 = alloca { i64, ptr }
  %l115 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l123 = alloca { i64, ptr }
  %l131 = alloca i64
  %l135 = alloca i32
  %l137 = alloca i1
  %l144 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l146 = alloca i64
  %l148 = alloca i64
  %l153 = alloca { i64, ptr }
  %l158 = alloca i32
  %l160 = alloca { i64, ptr }
  %l162 = alloca { i64, ptr }
  %l163 = alloca i32
  %l165 = alloca i1
  %l168 = alloca ptr
  %l169 = alloca i64
  %l172 = alloca { i64, ptr }
  %l173 = alloca { i64, ptr }
  %l174 = alloca { i64, ptr }
  %l175 = alloca i64
  %l178 = alloca { i64, ptr }
  %l180 = alloca %"compiler/doc:Module"
  %l189 = alloca { i64, ptr }
  %l190 = alloca { i64, ptr }
  %l194 = alloca { i64, ptr }
  %l196 = alloca { i64, ptr }
  %l197 = alloca { i64, ptr }
  %l200 = alloca i32
  %l202 = alloca i1
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s16 = alloca %olang.scope
  %rv = alloca i32
  %t6 = alloca %"compiler/diag:Diagnostics", align 8
  %t143 = alloca { i64, [3 x i64] }, align 8
  %t332 = alloca { { i64, ptr }, ptr, { i64, ptr }, ptr, ptr, ptr }, align 8
  store { i64, ptr } %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d0, i32 0, i32 1) })
  store i1 %t3, ptr %l21
  br label %bb1
bb1:
  %t4 = load i1, ptr %l21, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t5 = call i1 @compiler_2fdiag_2eColorWanted()
  store i1 %t5, ptr %l22
  br label %bb4
bb3:
  br label %bb58
bb4:
  %t7 = load i1, ptr %l22, !tbaa !21
  call void @compiler_2fdiag_3aDiagnostics_2ector(ptr %t6, ptr %v3, i1 %t7)
  call void @llvm.memmove.p0.p0.i64(ptr %l23, ptr %t6, i64 544, i1 false)
  br label %bb5
bb5:
  %t8 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 544, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t8, ptr %l23, i64 544, i1 false)
  store ptr %t8, ptr %l4, !tbaa !29
  %t10 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t10, ptr %l25, !tbaa !27
  %t11 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t12 = load ptr, ptr %t11, !tbaa !27
  %t13 = getelementptr { i64, ptr }, ptr %t12, i64 0
  %t14 = load { i64, ptr }, ptr %t13, !tbaa !37
  store { i64, ptr } %t14, ptr %l26, !tbaa !27
  %t15 = load ptr, ptr %l3, !tbaa !29
  store ptr %t15, ptr %l27, !tbaa !29
  %t16 = load ptr, ptr %l4, !tbaa !29
  store ptr %t16, ptr %l28, !tbaa !29
  %t17 = ptrtoint ptr %v3 to i64
  store i64 %t17, ptr %l29, !tbaa !24
  %t18 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapIter_3cstd_2fprelude_2ftext_3aString_26_2c_20std_Hae258982e94f82c7c4916579e261fcef
  br i1 %t18, label %bb6, label %bb7
bb6:
  %t20 = call ptr @__olang_region_make(ptr %v3)
  %t21 = ptrtoint ptr %t20 to i64
  store i64 %t21, ptr %l29, !tbaa !24
  br label %bb7
bb7:
  %t22 = load i64, ptr %l29
  %t23 = inttoptr i64 %t22 to ptr
  %t24 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20std_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t23)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t24, ptr %l31
  br label %bb8
bb8:
  %t25 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l31
  %t26 = load i64, ptr %l29
  %t27 = inttoptr i64 %t26 to ptr
  %t28 = call ptr @__olang_scope_alloc_a(ptr %t27, i64 72, i64 8)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t25, ptr %t28
  %t29 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t30 = load ptr, ptr %l27, !tbaa !29
  %t31 = load ptr, ptr %l28, !tbaa !29
  %t33 = call ptr @compiler_2fsession_2eAnalysis_2eAnalyze(ptr %v0, ptr %v3, ptr %v3, ptr %v3, ptr %v3, { i64, ptr } %t29, ptr %t30, ptr %t31, ptr %t28, i1 true)
  store ptr %t33, ptr %l33
  br label %bb9
bb9:
  %t34 = load ptr, ptr %l33, !tbaa !29
  store ptr %t34, ptr %l5, !tbaa !29
  %t35 = load ptr, ptr %l4, !tbaa !29
  %t37 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrors(ptr %v3, ptr %t35)
  store i64 %t37, ptr %l35
  br label %bb10
bb10:
  %t38 = load i64, ptr %l35, !tbaa !24
  %t39 = icmp sgt i64 %t38, 0
  br i1 %t39, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l37, !tbaa !21
  br label %bb13
bb12:
  %t41 = load ptr, ptr %l5, !tbaa !29
  %t43 = getelementptr %"compiler/session:Analysis", ptr %t41, i32 0, i32 1
  %t44 = load ptr, ptr %t43, !tbaa !29
  %t46 = icmp eq ptr %t44, null
  store i1 %t46, ptr %l37, !tbaa !21
  br label %bb13
bb13:
  %t48 = load i1, ptr %l37, !tbaa !21
  br i1 %t48, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l41, !tbaa !21
  br label %bb16
bb15:
  %t49 = load ptr, ptr %l5, !tbaa !29
  %t51 = getelementptr %"compiler/session:Analysis", ptr %t49, i32 0, i32 2
  %t52 = load ptr, ptr %t51, !tbaa !29
  %t54 = icmp eq ptr %t52, null
  store i1 %t54, ptr %l41, !tbaa !21
  br label %bb16
bb16:
  %t56 = load i1, ptr %l41, !tbaa !21
  br i1 %t56, label %bb17, label %bb18
bb17:
  store %olang.scope zeroinitializer, ptr %s2
  %t57 = load ptr, ptr %l4, !tbaa !29
  %t59 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eRender(ptr %v3, ptr %s2, ptr %t57)
  store { i64, ptr } %t59, ptr %l46
  br label %bb19
bb18:
  br label %bb23
bb19:
  %t60 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t61 = extractvalue { i64, ptr } %t60, 0
  %t62 = extractvalue { i64, ptr } %t60, 1
  %t63 = mul i64 %t61, 1
  %t64 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t63)
  call void @llvm.memcpy.p0.p0.i64(ptr %t64, ptr %t62, i64 %t63, i1 false)
  %t65 = insertvalue { i64, ptr } undef, i64 %t61, 0
  %t66 = insertvalue { i64, ptr } %t65, ptr %t64, 1
  call void @compiler_2fsession_2esay(ptr %s2, { i64, ptr } %t66)
  br label %bb20
bb20:
  %t68 = load ptr, ptr %l4, !tbaa !29
  %t70 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eSummary(ptr %v3, ptr %s2, ptr %t68)
  store { i64, ptr } %t70, ptr %l49
  br label %bb21
bb21:
  %t71 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t72 = extractvalue { i64, ptr } %t71, 0
  %t73 = extractvalue { i64, ptr } %t71, 1
  %t74 = mul i64 %t72, 1
  %t75 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t74)
  call void @llvm.memcpy.p0.p0.i64(ptr %t75, ptr %t73, i64 %t74, i1 false)
  %t76 = insertvalue { i64, ptr } undef, i64 %t72, 0
  %t77 = insertvalue { i64, ptr } %t76, ptr %t75, 1
  call void @compiler_2fsession_2esay(ptr %s2, { i64, ptr } %t77)
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  store i32 1, ptr %rv
  br label %ret
bb23:
  %t80 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t82 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s1, { i64, ptr } %t80, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d1, i32 0, i32 1) })
  store i1 %t82, ptr %l53
  br label %bb24
bb24:
  %t83 = load i1, ptr %l53, !tbaa !21
  %t84 = xor i1 %t83, true
  br i1 %t84, label %bb25, label %bb26
bb25:
  store %olang.scope zeroinitializer, ptr %s3
  %t86 = load ptr, ptr %l5, !tbaa !29
  %t88 = getelementptr %"compiler/session:Analysis", ptr %t86, i32 0, i32 1
  %t89 = load ptr, ptr %t88, !tbaa !29
  %t91 = icmp eq ptr %t89, null
  br i1 %t91, label %bb27, label %bb28
bb26:
  br label %bb45
bb27:
  call void @__olang_check_failed(ptr @olang_loc_3107e0baf714f587_4e2de6149db597f3)
  unreachable
bb28:
  br label %bb29
bb29:
  %t93 = load ptr, ptr %l5, !tbaa !29
  %t95 = getelementptr %"compiler/session:Analysis", ptr %t93, i32 0, i32 1
  %t96 = load ptr, ptr %t95, !tbaa !29
  store ptr %t96, ptr %l60, !tbaa !29
  %t97 = load ptr, ptr %l5, !tbaa !29
  %t99 = getelementptr %"compiler/session:Analysis", ptr %t97, i32 0, i32 2
  %t100 = load ptr, ptr %t99, !tbaa !29
  %t102 = icmp eq ptr %t100, null
  br i1 %t102, label %bb30, label %bb31
bb30:
  call void @__olang_check_failed(ptr @olang_loc_3107e0baf714f587_4e2de6149db597f3)
  unreachable
bb31:
  br label %bb32
bb32:
  %t104 = load ptr, ptr %l5, !tbaa !29
  %t106 = getelementptr %"compiler/session:Analysis", ptr %t104, i32 0, i32 2
  %t107 = load ptr, ptr %t106, !tbaa !29
  store ptr %t107, ptr %l65, !tbaa !29
  %t108 = load ptr, ptr %l5, !tbaa !29
  %t110 = getelementptr %"compiler/session:Analysis", ptr %t108, i32 0, i32 3
  %t111 = load ptr, ptr %t110, !tbaa !29
  %t113 = icmp eq ptr %t111, null
  br i1 %t113, label %bb33, label %bb34
bb33:
  call void @__olang_check_failed(ptr @olang_loc_3107e0baf714f587_4e2de6149db597f3)
  unreachable
bb34:
  br label %bb35
bb35:
  %t115 = load ptr, ptr %l5, !tbaa !29
  %t117 = getelementptr %"compiler/session:Analysis", ptr %t115, i32 0, i32 3
  %t118 = load ptr, ptr %t117, !tbaa !29
  %t119 = load ptr, ptr %l5, !tbaa !29
  %t121 = getelementptr %"compiler/session:Analysis", ptr %t119, i32 0, i32 0
  %t122 = load ptr, ptr %t121, !tbaa !29
  %t124 = getelementptr %"compiler/load:Loader", ptr %t122, i32 0, i32 12
  %t125 = load i64, ptr %t124, !tbaa !24
  %t126 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t127 = load ptr, ptr %l60, !tbaa !29
  %t128 = load ptr, ptr %l65, !tbaa !29
  %t132 = call { i32, { i64, ptr } } @compiler_2fdoc_2eItemText(ptr %v3, ptr %v3, ptr %v3, ptr %v1, ptr %s3, ptr %t127, ptr %t128, ptr %t118, i64 %t125, { i64, ptr } %t126)
  %t133 = extractvalue { i32, { i64, ptr } } %t132, 1
  %t134 = extractvalue { i32, { i64, ptr } } %t132, 0
  store i32 %t134, ptr %l76
  %t135 = icmp ne i32 %t134, 0
  br i1 %t135, label %bb37, label %ok.136, !prof !99
ok.136:
  store { i64, ptr } %t133, ptr %l75
  br label %bb36
bb36:
  %t137 = load { i64, ptr }, ptr %l75, !tbaa !27
  store { i64, ptr } %t137, ptr %l55, !tbaa !27
  br label %bb43
bb37:
  %t138 = load i32, ptr %l76, !tbaa !23
  %t139 = ashr i32 %t138, 16
  %t141 = icmp eq i32 %t139, 1
  store i1 %t141, ptr %l78, !tbaa !21
  br label %bb38
bb38:
  store %olang.scope zeroinitializer, ptr %s4
  %t142 = load ptr, ptr %l4, !tbaa !29
  store ptr %t142, ptr %l79, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t143
  %t144 = getelementptr { i64, [3 x i64] }, ptr %t143, i32 0, i32 0
  store i64 0, ptr %t144
  %t145 = load { i64, [3 x i64] }, ptr %t143
  store { i64, [3 x i64] } %t145, ptr %l80
  %t146 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t147 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t147, ptr %l82, !tbaa !27
  %t148 = getelementptr { i64, ptr }, ptr %l82, i32 0, i32 1
  %t149 = load ptr, ptr %t148, !tbaa !27
  %t150 = getelementptr { i64, ptr }, ptr %t149, i64 0
  %t151 = load { i64, ptr }, ptr %t150, !tbaa !37
  %t154 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDocNoItem(ptr %v1, ptr %v0, ptr %v3, { i64, ptr } %t146, { i64, ptr } %t151)
  store %"compiler/diagmsg:Msg" %t154, ptr %l84
  br label %bb39
bb39:
  %t155 = load ptr, ptr %l79, !tbaa !29
  %t156 = load { i64, [3 x i64] }, ptr %l80
  %t157 = load %"compiler/diagmsg:Msg", ptr %l84
  %t158 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v3, ptr %v3, ptr %t155, { i64, [3 x i64] } %t156, %"compiler/diagmsg:Msg" %t157)
  store i64 %t158, ptr %l85
  br label %bb40
bb40:
  %t159 = load ptr, ptr %l4, !tbaa !29
  %t161 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eRender(ptr %v3, ptr %s4, ptr %t159)
  store { i64, ptr } %t161, ptr %l87
  br label %bb41
bb41:
  %t162 = load { i64, ptr }, ptr %l87, !tbaa !27
  %t163 = extractvalue { i64, ptr } %t162, 0
  %t164 = extractvalue { i64, ptr } %t162, 1
  %t165 = mul i64 %t163, 1
  %t166 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t165)
  call void @llvm.memcpy.p0.p0.i64(ptr %t166, ptr %t164, i64 %t165, i1 false)
  %t167 = insertvalue { i64, ptr } undef, i64 %t163, 0
  %t168 = insertvalue { i64, ptr } %t167, ptr %t166, 1
  call void @compiler_2fsession_2esay(ptr %s4, { i64, ptr } %t168)
  br label %bb42
bb42:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  store i32 1, ptr %rv
  br label %ret
bb43:
  %t171 = load { i64, ptr }, ptr %l55, !tbaa !27
  call void @compiler_2fsession_2esay(ptr %s3, { i64, ptr } %t171)
  br label %bb44
bb44:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
bb45:
  %t175 = load ptr, ptr %l5, !tbaa !29
  %t177 = getelementptr %"compiler/session:Analysis", ptr %t175, i32 0, i32 1
  %t178 = load ptr, ptr %t177, !tbaa !29
  %t180 = icmp eq ptr %t178, null
  br i1 %t180, label %bb46, label %bb47
bb46:
  call void @__olang_check_failed(ptr @olang_loc_6636dd2b26b29868_9b4c1750690bee24)
  unreachable
bb47:
  br label %bb48
bb48:
  %t182 = load ptr, ptr %l5, !tbaa !29
  %t184 = getelementptr %"compiler/session:Analysis", ptr %t182, i32 0, i32 1
  %t185 = load ptr, ptr %t184, !tbaa !29
  store ptr %t185, ptr %l96, !tbaa !29
  %t186 = load ptr, ptr %l5, !tbaa !29
  %t188 = getelementptr %"compiler/session:Analysis", ptr %t186, i32 0, i32 2
  %t189 = load ptr, ptr %t188, !tbaa !29
  %t191 = icmp eq ptr %t189, null
  br i1 %t191, label %bb49, label %bb50
bb49:
  call void @__olang_check_failed(ptr @olang_loc_6636dd2b26b29868_9b4c1750690bee24)
  unreachable
bb50:
  br label %bb51
bb51:
  %t193 = load ptr, ptr %l5, !tbaa !29
  %t195 = getelementptr %"compiler/session:Analysis", ptr %t193, i32 0, i32 2
  %t196 = load ptr, ptr %t195, !tbaa !29
  store ptr %t196, ptr %l101, !tbaa !29
  %t197 = load ptr, ptr %l5, !tbaa !29
  %t199 = getelementptr %"compiler/session:Analysis", ptr %t197, i32 0, i32 3
  %t200 = load ptr, ptr %t199, !tbaa !29
  %t202 = icmp eq ptr %t200, null
  br i1 %t202, label %bb52, label %bb53
bb52:
  call void @__olang_check_failed(ptr @olang_loc_6636dd2b26b29868_9b4c1750690bee24)
  unreachable
bb53:
  br label %bb54
bb54:
  %t204 = load ptr, ptr %l5, !tbaa !29
  %t206 = getelementptr %"compiler/session:Analysis", ptr %t204, i32 0, i32 3
  %t207 = load ptr, ptr %t206, !tbaa !29
  %t208 = load ptr, ptr %l5, !tbaa !29
  %t210 = getelementptr %"compiler/session:Analysis", ptr %t208, i32 0, i32 0
  %t211 = load ptr, ptr %t210, !tbaa !29
  %t213 = getelementptr %"compiler/load:Loader", ptr %t211, i32 0, i32 12
  %t214 = load i64, ptr %t213, !tbaa !24
  %t215 = load ptr, ptr %l96, !tbaa !29
  %t216 = load ptr, ptr %l101, !tbaa !29
  %t219 = call %"compiler/doc:Module" @compiler_2fdoc_2eModule_2eOf(ptr %v3, ptr %v3, ptr %v3, ptr %s1, ptr %t215, ptr %t216, ptr %t207, i64 %t214, i1 false)
  store %"compiler/doc:Module" %t219, ptr %l110
  br label %bb55
bb55:
  %t220 = load %"compiler/doc:Module", ptr %l110
  %t221 = call ptr @__olang_scope_alloc_a(ptr %s1, i64 80, i64 8)
  store %"compiler/doc:Module" %t220, ptr %t221
  %t223 = call { i64, ptr } @compiler_2fdoc_2ecompiler_2fdoc_3aModule_2eText(ptr %s1, ptr %s1, ptr %t221)
  store { i64, ptr } %t223, ptr %l112
  br label %bb56
bb56:
  %t224 = load { i64, ptr }, ptr %l112, !tbaa !27
  %t225 = extractvalue { i64, ptr } %t224, 0
  %t226 = extractvalue { i64, ptr } %t224, 1
  %t227 = mul i64 %t225, 1
  %t228 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t227)
  call void @llvm.memcpy.p0.p0.i64(ptr %t228, ptr %t226, i64 %t227, i1 false)
  %t229 = insertvalue { i64, ptr } undef, i64 %t225, 0
  %t230 = insertvalue { i64, ptr } %t229, ptr %t228, 1
  call void @compiler_2fsession_2esay(ptr %s1, { i64, ptr } %t230)
  br label %bb57
bb57:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
bb58:
  %t233 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t233, ptr %l115
  br label %bb59
bb59:
  %t234 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l115
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t234, ptr %l7
  %t235 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t235, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t237 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t239 = extractvalue { i64, ptr } %t237, 0
  store i64 %t239, ptr %l10, !tbaa !24
  br label %bb60
bb60:
  %t241 = load i64, ptr %l9, !tbaa !24
  %t242 = load i64, ptr %l10, !tbaa !24
  %t245 = icmp slt i64 %t241, %t242
  %t247 = xor i1 %t245, true
  br i1 %t247, label %bb61, label %bb62
bb61:
  br label %bb66
bb62:
  br label %bb63
bb63:
  %t249 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t249, ptr %l123, !tbaa !27
  %t250 = load i64, ptr %l9, !tbaa !24
  %t252 = getelementptr { i64, ptr }, ptr %l123, i32 0, i32 1
  %t253 = load ptr, ptr %t252, !tbaa !27
  %t254 = getelementptr { i64, ptr }, ptr %t253, i64 %t250
  %t255 = load { i64, ptr }, ptr %t254, !tbaa !37
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %v0, ptr %l7, { i64, ptr } %t255)
  br label %bb64
bb64:
  br label %bb65
bb65:
  %t260 = load i64, ptr %l9, !tbaa !24
  %t262 = add i64 %t260, 1
  store i64 %t262, ptr %l9, !tbaa !24
  br label %bb60
bb66:
  %t265 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %l7)
  store i64 %t265, ptr %l131
  br label %bb67
bb67:
  %t266 = load i64, ptr %l131, !tbaa !24
  %t267 = icmp eq i64 %t266, 0
  br i1 %t267, label %bb68, label %bb69
bb68:
  call void @compiler_2fsession_2estdModules(ptr %s0, ptr %l7)
  br label %bb70
bb69:
  br label %bb71
bb70:
  br label %bb71
bb71:
  %t270 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t272 = call i32 @std_2fos_2eMkDirAll(ptr %v2, { i64, ptr } %t270)
  store i32 %t272, ptr %l135
  %t273 = icmp ne i32 %t272, 0
  br i1 %t273, label %bb73, label %ok.274, !prof !99
ok.274:
  br label %bb72
bb72:
  br label %bb78
bb73:
  %t275 = load i32, ptr %l135, !tbaa !23
  %t276 = ashr i32 %t275, 16
  %t278 = icmp eq i32 %t276, 1
  store i1 %t278, ptr %l137, !tbaa !21
  %t279 = load i32, ptr %l135, !tbaa !23
  %t280 = ashr i32 %t279, 16
  %t282 = icmp eq i32 %t280, 1
  br i1 %t282, label %bb74, label %bb75
bb74:
  call void @__olang_errpay_pop()
  br label %bb75
bb75:
  br label %bb76
bb76:
  store %olang.scope zeroinitializer, ptr %s9
  %t284 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t285 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d2, i32 0, i32 1) }, 1
  %t286 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d2, i32 0, i32 1) }, 0
  %t288 = extractvalue { i64, ptr } %t284, 1
  %t289 = extractvalue { i64, ptr } %t284, 0
  %t290 = add i64 %t286, %t289
  %t291 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d3, i32 0, i32 1) }, 1
  %t292 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d3, i32 0, i32 1) }, 0
  %t293 = add i64 %t290, %t292
  %t294 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t293)
  call void @olang_textcopy(ptr %t294, ptr %t285, i64 %t286)
  %t295 = getelementptr i8, ptr %t294, i64 %t286
  call void @olang_textcopy(ptr %t295, ptr %t288, i64 %t289)
  %t296 = getelementptr i8, ptr %t295, i64 %t289
  call void @olang_textcopy(ptr %t296, ptr %t291, i64 %t292)
  %t297 = insertvalue { i64, ptr } undef, i64 %t293, 0
  %t298 = insertvalue { i64, ptr } %t297, ptr %t294, 1
  %t300 = extractvalue { i64, ptr } %t298, 0
  %t301 = extractvalue { i64, ptr } %t298, 1
  %t302 = mul i64 %t300, 1
  %t303 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t302)
  call void @llvm.memcpy.p0.p0.i64(ptr %t303, ptr %t301, i64 %t302, i1 false)
  %t304 = insertvalue { i64, ptr } undef, i64 %t300, 0
  %t305 = insertvalue { i64, ptr } %t304, ptr %t303, 1
  call void @compiler_2fsession_2esay(ptr %s9, { i64, ptr } %t305)
  br label %bb77
bb77:
  call void @__olang_scope_close(ptr %s9)
  call void @__olang_scope_close(ptr %s0)
  store i32 1, ptr %rv
  br label %ret
bb78:
  store i32 0, ptr %l12, !tbaa !23
  %t308 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fdoc_3aModule_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t308, ptr %l144
  br label %bb79
bb79:
  %t309 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l144
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t309, ptr %l13
  store ptr %l7, ptr %l14, !tbaa !29
  store i64 0, ptr %l15, !tbaa !24
  br label %bb80
bb80:
  store %olang.scope zeroinitializer, ptr %s12
  %t311 = load i64, ptr %l15, !tbaa !24
  store i64 %t311, ptr %l146, !tbaa !24
  %t312 = load ptr, ptr %l14, !tbaa !29
  %t314 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %t312)
  store i64 %t314, ptr %l148
  br label %bb81
bb81:
  %t315 = load i64, ptr %l146, !tbaa !24
  %t316 = load i64, ptr %l148, !tbaa !24
  %t317 = icmp slt i64 %t315, %t316
  %t319 = xor i1 %t317, true
  br i1 %t319, label %bb82, label %bb83
bb82:
  call void @__olang_scope_close(ptr %s12)
  br label %bb105
bb83:
  br label %bb84
bb84:
  %t321 = load ptr, ptr %l14, !tbaa !29
  %t322 = load i64, ptr %l15, !tbaa !24
  %t325 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %t321, i64 %t322)
  store { i64, ptr } %t325, ptr %l153
  br label %bb85
bb85:
  %t326 = load { i64, ptr }, ptr %l153, !tbaa !27
  store { i64, ptr } %t326, ptr %l16, !tbaa !27
  %t327 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t328 = load ptr, ptr %l3, !tbaa !29
  %t329 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t330 = getelementptr { { i64, ptr }, ptr, { i64, ptr }, ptr, ptr, ptr }, ptr null, i32 1
  %t331 = ptrtoint ptr %t330 to i64
  %t333 = getelementptr { { i64, ptr }, ptr, { i64, ptr }, ptr, ptr, ptr }, ptr %t332, i32 0, i32 0
  store { i64, ptr } %t327, ptr %t333, !tbaa !28
  %t335 = getelementptr { { i64, ptr }, ptr, { i64, ptr }, ptr, ptr, ptr }, ptr %t332, i32 0, i32 1
  store ptr %t328, ptr %t335, !tbaa !28
  %t337 = getelementptr { { i64, ptr }, ptr, { i64, ptr }, ptr, ptr, ptr }, ptr %t332, i32 0, i32 2
  store { i64, ptr } %t329, ptr %t337, !tbaa !28
  call void @__olang_scope_escape(ptr %s0)
  %t339 = getelementptr { { i64, ptr }, ptr, { i64, ptr }, ptr, ptr, ptr }, ptr %t332, i32 0, i32 3
  store ptr %s0, ptr %t339, !tbaa !28
  call void @__olang_scope_escape(ptr %v3)
  %t340 = getelementptr { { i64, ptr }, ptr, { i64, ptr }, ptr, ptr, ptr }, ptr %t332, i32 0, i32 4
  store ptr %v3, ptr %t340, !tbaa !28
  call void @__olang_scope_escape(ptr %v2)
  %t341 = getelementptr { { i64, ptr }, ptr, { i64, ptr }, ptr, ptr, ptr }, ptr %t332, i32 0, i32 5
  store ptr %v2, ptr %t341, !tbaa !28
  %t342 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_4, 0
  %t343 = insertvalue { ptr, ptr } %t342, ptr %t332, 1
  %t345 = extractvalue { ptr, ptr } %t343, 0
  %t346 = extractvalue { ptr, ptr } %t343, 1
  %t347 = call i32 @compiler_2fsession_2eInChild(ptr %s12, ptr %t345, ptr %t346)
  store i32 %t347, ptr %l158
  br label %bb86
bb86:
  %t348 = load i32, ptr %l158, !tbaa !23
  %t349 = icmp ne i32 %t348, 0
  br i1 %t349, label %bb87, label %bb88
bb87:
  store i32 1, ptr %l12, !tbaa !23
  call void @__olang_scope_close(ptr %s12)
  br label %bb104
bb88:
  br label %bb89
bb89:
  %t351 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t353 = call { i32, { i64, ptr } } @std_2fos_2eReadFile(ptr %s0, ptr %s12, { i64, ptr } %t351)
  %t354 = extractvalue { i32, { i64, ptr } } %t353, 1
  %t355 = extractvalue { i32, { i64, ptr } } %t353, 0
  store i32 %t355, ptr %l163
  %t356 = icmp ne i32 %t355, 0
  br i1 %t356, label %bb91, label %ok.357, !prof !99
ok.357:
  store { i64, ptr } %t354, ptr %l162
  br label %bb90
bb90:
  %t358 = load { i64, ptr }, ptr %l162, !tbaa !27
  store { i64, ptr } %t358, ptr %l160, !tbaa !27
  br label %bb95
bb91:
  %t359 = load i32, ptr %l163, !tbaa !23
  %t360 = ashr i32 %t359, 16
  %t362 = icmp eq i32 %t360, 1
  store i1 %t362, ptr %l165, !tbaa !21
  %t363 = load i32, ptr %l163, !tbaa !23
  %t364 = ashr i32 %t363, 16
  %t366 = icmp eq i32 %t364, 1
  br i1 %t366, label %bb92, label %bb93
bb92:
  call void @__olang_errpay_pop()
  br label %bb93
bb93:
  br label %bb94
bb94:
  call void @__olang_scope_close(ptr %s12)
  br label %bb104
bb95:
  %t368 = load { i64, ptr }, ptr %l160, !tbaa !27
  store { i64, ptr } %t368, ptr %l17, !tbaa !27
  store ptr %l13, ptr %l168, !tbaa !29
  %t369 = ptrtoint ptr %s0 to i64
  store i64 %t369, ptr %l169, !tbaa !24
  %t370 = load i1, ptr @olang_2esole_2ecompiler_2fdoc_3aModule_2e0
  br i1 %t370, label %bb96, label %bb97
bb96:
  %t372 = call ptr @__olang_region_make(ptr %s0)
  %t373 = ptrtoint ptr %t372 to i64
  store i64 %t373, ptr %l169, !tbaa !24
  br label %bb97
bb97:
  %t374 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t375 = load i64, ptr %l169
  %t376 = inttoptr i64 %t375 to ptr
  %t378 = call { i64, ptr } @compiler_2fsession_2eIdentityOf(ptr %s0, ptr %t376, { i64, ptr } %t374)
  store { i64, ptr } %t378, ptr %l172
  br label %bb98
bb98:
  %t379 = load { i64, ptr }, ptr %l172, !tbaa !27
  %t380 = load i64, ptr %l169
  %t381 = inttoptr i64 %t380 to ptr
  %t382 = extractvalue { i64, ptr } %t379, 0
  %t383 = extractvalue { i64, ptr } %t379, 1
  %t384 = mul i64 %t382, 1
  %t385 = call ptr @__olang_scope_alloc(ptr %t381, i64 %t384)
  call void @llvm.memcpy.p0.p0.i64(ptr %t385, ptr %t383, i64 %t384, i1 false)
  %t386 = insertvalue { i64, ptr } undef, i64 %t382, 0
  %t387 = insertvalue { i64, ptr } %t386, ptr %t385, 1
  store { i64, ptr } %t387, ptr %l173, !tbaa !27
  %t388 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t388, ptr %l174, !tbaa !27
  %t389 = ptrtoint ptr %s0 to i64
  store i64 %t389, ptr %l175, !tbaa !24
  %t390 = load i1, ptr @olang_2esole_2ecompiler_2fdoc_3aModule_2e2
  br i1 %t390, label %bb99, label %bb100
bb99:
  %t392 = call ptr @__olang_region_make(ptr %s0)
  %t393 = ptrtoint ptr %t392 to i64
  store i64 %t393, ptr %l175, !tbaa !24
  br label %bb100
bb100:
  %t394 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t395 = load i64, ptr %l175
  %t396 = inttoptr i64 %t395 to ptr
  %t398 = call { i64, ptr } @compiler_2fdoc_2eModuleDoc(ptr %s12, ptr %t396, { i64, ptr } %t394)
  store { i64, ptr } %t398, ptr %l178
  br label %bb101
bb101:
  %t399 = load { i64, ptr }, ptr %l178, !tbaa !27
  %t400 = load i64, ptr %l175
  %t401 = inttoptr i64 %t400 to ptr
  %t402 = extractvalue { i64, ptr } %t399, 0
  %t403 = extractvalue { i64, ptr } %t399, 1
  %t404 = mul i64 %t402, 1
  %t405 = call ptr @__olang_scope_alloc(ptr %t401, i64 %t404)
  call void @llvm.memcpy.p0.p0.i64(ptr %t405, ptr %t403, i64 %t404, i1 false)
  %t406 = insertvalue { i64, ptr } undef, i64 %t402, 0
  %t407 = insertvalue { i64, ptr } %t406, ptr %t405, 1
  %t408 = load { i64, ptr }, ptr %l173, !tbaa !27
  %t409 = load { i64, ptr }, ptr %l174, !tbaa !27
  %t411 = call %"compiler/doc:Module" @compiler_2fdoc_3aModule_2ector(ptr %s0, ptr %s0, ptr %s0, ptr %s0, { i64, ptr } %t408, { i64, ptr } %t409, { i64, ptr } %t407)
  store %"compiler/doc:Module" %t411, ptr %l180
  br label %bb102
bb102:
  %t412 = load ptr, ptr %l168, !tbaa !29
  %t413 = load %"compiler/doc:Module", ptr %l180
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdoc_3aModule_3e_2ePush_3ccompiler_2fdoc_3aModule_3e(ptr %s0, ptr %s0, ptr %t412, %"compiler/doc:Module" %t413)
  br label %bb103
bb103:
  call void @__olang_scope_close(ptr %s12)
  br label %bb104
bb104:
  %t414 = load i64, ptr %l15, !tbaa !24
  %t416 = add i64 %t414, 1
  store i64 %t416, ptr %l15, !tbaa !24
  br label %bb80
bb105:
  %t418 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_5, 0
  %t419 = insertvalue { ptr, ptr } %t418, ptr null, 1
  %t422 = extractvalue { ptr, ptr } %t419, 0
  %t423 = extractvalue { ptr, ptr } %t419, 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdoc_3aModule_3e_2eSort_3cco_Hfcfbe33647fb7db48e9022f22b0d44cf(ptr %s0, ptr %s0, ptr %l13, ptr %t422, ptr %t423)
  br label %bb106
bb106:
  %t424 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t426 = insertvalue [2 x { i64, ptr }] undef, { i64, ptr } %t424, 0
  %t427 = insertvalue [2 x { i64, ptr }] %t426, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  store [2 x { i64, ptr }] %t427, ptr %l18
  %t430 = insertvalue { i64, ptr } undef, i64 2, 0
  %t431 = insertvalue { i64, ptr } %t430, ptr %l18, 1
  %t433 = call { i64, ptr } @std_2ffilepath_2eJoin(ptr %s0, ptr %s0, { i64, ptr } %t431)
  store { i64, ptr } %t433, ptr %l189
  br label %bb107
bb107:
  %t434 = load { i64, ptr }, ptr %l189, !tbaa !27
  store { i64, ptr } %t434, ptr %l19, !tbaa !27
  %t435 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t435, ptr %l190, !tbaa !27
  %t436 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t438 = extractvalue { i64, ptr } %t436, 0
  %t440 = icmp eq i64 %t438, 0
  br i1 %t440, label %bb108, label %bb109
bb108:
  store { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d7, i32 0, i32 1) }, ptr %l194, !tbaa !27
  br label %bb110
bb109:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d8, i32 0, i32 1) }, ptr %l194, !tbaa !27
  br label %bb110
bb110:
  %t443 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdoc_3aModule_3e_2eToArray_3ccompiler_2fdoc_3aModule_3e(ptr %s0, ptr %s0, ptr %l13)
  store { i64, ptr } %t443, ptr %l196
  br label %bb111
bb111:
  %t444 = load { i64, ptr }, ptr %l194, !tbaa !27
  %t445 = load { i64, ptr }, ptr %l196, !tbaa !27
  %t446 = call { i64, ptr } @compiler_2fdoc_2eIndexHtml(ptr %s0, ptr %s0, ptr %s0, { i64, ptr } %t444, { i64, ptr } %t445)
  store { i64, ptr } %t446, ptr %l197
  br label %bb112
bb112:
  %t447 = load { i64, ptr }, ptr %l197, !tbaa !27
  %t449 = extractvalue { i64, ptr } %t447, 0
  %t450 = extractvalue { i64, ptr } %t447, 1
  %t451 = mul i64 %t449, 1
  %t452 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t451)
  call void @llvm.memcpy.p0.p0.i64(ptr %t452, ptr %t450, i64 %t451, i1 false)
  %t453 = insertvalue { i64, ptr } undef, i64 %t449, 0
  %t454 = insertvalue { i64, ptr } %t453, ptr %t452, 1
  %t455 = load { i64, ptr }, ptr %l190, !tbaa !27
  %t457 = call i32 @std_2fos_2eWriteFile(ptr %s0, ptr %s0, { i64, ptr } %t455, { i64, ptr } %t454)
  store i32 %t457, ptr %l200
  %t458 = icmp ne i32 %t457, 0
  br i1 %t458, label %bb114, label %ok.459, !prof !99
ok.459:
  br label %bb113
bb113:
  br label %bb119
bb114:
  %t460 = load i32, ptr %l200, !tbaa !23
  %t461 = ashr i32 %t460, 16
  %t463 = icmp eq i32 %t461, 1
  store i1 %t463, ptr %l202, !tbaa !21
  %t464 = load i32, ptr %l200, !tbaa !23
  %t465 = ashr i32 %t464, 16
  %t467 = icmp eq i32 %t465, 1
  br i1 %t467, label %bb115, label %bb116
bb115:
  call void @__olang_errpay_pop()
  br label %bb116
bb116:
  br label %bb117
bb117:
  store %olang.scope zeroinitializer, ptr %s16
  %t469 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t470 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d9, i32 0, i32 1) }, 1
  %t471 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d9, i32 0, i32 1) }, 0
  %t473 = extractvalue { i64, ptr } %t469, 1
  %t474 = extractvalue { i64, ptr } %t469, 0
  %t475 = add i64 %t471, %t474
  %t476 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d10, i32 0, i32 1) }, 1
  %t477 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d10, i32 0, i32 1) }, 0
  %t478 = add i64 %t475, %t477
  %t479 = call ptr @__olang_scope_alloc(ptr %s16, i64 %t478)
  call void @olang_textcopy(ptr %t479, ptr %t470, i64 %t471)
  %t480 = getelementptr i8, ptr %t479, i64 %t471
  call void @olang_textcopy(ptr %t480, ptr %t473, i64 %t474)
  %t481 = getelementptr i8, ptr %t480, i64 %t474
  call void @olang_textcopy(ptr %t481, ptr %t476, i64 %t477)
  %t482 = insertvalue { i64, ptr } undef, i64 %t478, 0
  %t483 = insertvalue { i64, ptr } %t482, ptr %t479, 1
  %t485 = extractvalue { i64, ptr } %t483, 0
  %t486 = extractvalue { i64, ptr } %t483, 1
  %t487 = mul i64 %t485, 1
  %t488 = call ptr @__olang_scope_alloc(ptr %s16, i64 %t487)
  call void @llvm.memcpy.p0.p0.i64(ptr %t488, ptr %t486, i64 %t487, i1 false)
  %t489 = insertvalue { i64, ptr } undef, i64 %t485, 0
  %t490 = insertvalue { i64, ptr } %t489, ptr %t488, 1
  call void @compiler_2fsession_2esay(ptr %s16, { i64, ptr } %t490)
  br label %bb118
bb118:
  call void @__olang_scope_close(ptr %s16)
  call void @__olang_scope_close(ptr %s0)
  store i32 1, ptr %rv
  br label %ret
bb119:
  %t493 = load i32, ptr %l12, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t493, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2fsession_2eDup2(i32 %a0, i32 %a1) #0 {
entry:
  %l4 = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call i32 @dup2(i32 %a0, i32 %a1)
  store i32 %t5, ptr %l4
  br label %bb1
bb1:
  br label %ret
ret:
  ret void
}

define dso_local { i32, { i64, ptr } } @compiler_2fsession_2eFormat(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca %"std/prelude/text:StringBuilder"
  %l3 = alloca { i64, ptr }
  %l4 = alloca %"std/prelude/text:StringBuilder"
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l9 = alloca %"compiler/source:Source"
  %l10 = alloca ptr
  %l11 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %l16 = alloca { i64, ptr }
  %l17 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca { i32, { i64, ptr } }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t1, ptr %l4
  br label %bb1
bb1:
  %t2 = load %"std/prelude/text:StringBuilder", ptr %l4
  store %"std/prelude/text:StringBuilder" %t2, ptr %l2
  %t3 = call { i64, ptr } @compiler_2fload_2eStdDir(ptr %s0)
  store { i64, ptr } %t3, ptr %l5
  br label %bb2
bb2:
  %t4 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t4, ptr %l3, !tbaa !27
  %t9 = call %"compiler/source:Source" @compiler_2fsource_3aSource_2ector(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
  store %"compiler/source:Source" %t9, ptr %l9
  br label %bb3
bb3:
  %t10 = load %"compiler/source:Source", ptr %l9
  %t11 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store %"compiler/source:Source" %t10, ptr %t11
  store ptr %t11, ptr %l10, !tbaa !29
  %t12 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t12, ptr %l11, !tbaa !27
  %t13 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t15 = call { i64, ptr } @compiler_2ffmt_2ePreludeTypes(ptr %s0, ptr %v2, { i64, ptr } %t13)
  store { i64, ptr } %t15, ptr %l13
  br label %bb4
bb4:
  %t16 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t17 = extractvalue { i64, ptr } %t16, 0
  %t18 = extractvalue { i64, ptr } %t16, 1
  %t19 = mul i64 %t17, 1
  %t20 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t19)
  call void @llvm.memcpy.p0.p0.i64(ptr %t20, ptr %t18, i64 %t19, i1 false)
  %t21 = insertvalue { i64, ptr } undef, i64 %t17, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t20, 1
  %t23 = load ptr, ptr %l10, !tbaa !29
  %t24 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t27 = call { i32, { i64, ptr } } @compiler_2ffmt_2eFileLayout(ptr %v2, ptr %s0, ptr %v2, ptr %s0, ptr %v2, ptr %t23, { i64, ptr } %t24, { i64, ptr } %t22, i1 false, ptr %l2)
  %t28 = extractvalue { i32, { i64, ptr } } %t27, 1
  %t29 = extractvalue { i32, { i64, ptr } } %t27, 0
  store i32 %t29, ptr %l17
  %t30 = icmp ne i32 %t29, 0
  br i1 %t30, label %bb6, label %ok.31, !prof !99
ok.31:
  store { i64, ptr } %t28, ptr %l16
  br label %bb5
bb5:
  %t32 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t32, ptr %l6, !tbaa !27
  br label %bb7
bb6:
  %t33 = load i32, ptr %l17, !tbaa !23
  %t34 = lshr i32 %t33, 16
  %t35 = and i32 %t33, 65535
  %t36 = icmp eq i32 %t34, 1
  %t37 = select i1 %t36, i32 1, i32 0
  %t38 = icmp eq i32 %t33, 0
  %t39 = shl i32 %t37, 16
  %t40 = or i32 %t39, %t35
  %t41 = select i1 %t38, i32 0, i32 %t40
  call void @__olang_scope_close(ptr %s0)
  %t43 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t41, 0
  store { i32, { i64, ptr } } %t43, ptr %rv
  br label %ret
bb7:
  call void @__olang_scope_close(ptr %s0)
  %t44 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t45 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t44, 1
  store { i32, { i64, ptr } } %t45, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local void @compiler_2fsession_2eHold(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l9 = alloca i1
  %l14 = alloca i1
  %l18 = alloca i1
  %l19 = alloca i64
  %l26 = alloca ptr
  %l31 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l33 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l34 = alloca %"compiler/scope:Scoper"
  %l36 = alloca %"compiler/scope:Scoper"
  %l48 = alloca i64
  %l59 = alloca ptr
  %l66 = alloca %"compiler/interp:Exec"
  %l68 = alloca ptr
  %l69 = alloca i64
  %l75 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l77 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l79 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %s0 = alloca %olang.scope
  %t56 = alloca %"compiler/scope:Scoper", align 8
  %t59 = alloca %"compiler/scope:Scoper", align 8
  %t143 = alloca %"compiler/interp:Exec", align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/session:Analysis", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = icmp eq ptr %t4, null
  br i1 %t6, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb3
bb2:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/session:Analysis", ptr %t8, i32 0, i32 2
  %t11 = load ptr, ptr %t10, !tbaa !29
  %t13 = icmp eq ptr %t11, null
  %t15 = xor i1 %t13, true
  store i1 %t15, ptr %l9, !tbaa !21
  br label %bb3
bb3:
  %t17 = load i1, ptr %l9, !tbaa !21
  br i1 %t17, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l14, !tbaa !21
  br label %bb7
bb5:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/session:Analysis", ptr %t18, i32 0, i32 0
  %t21 = load ptr, ptr %t20, !tbaa !29
  %t23 = getelementptr %"compiler/load:Loader", ptr %t21, i32 0, i32 4
  %t24 = load ptr, ptr %t23, !tbaa !29
  %t26 = call i1 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eHasFatal(ptr %v0, ptr %t24)
  store i1 %t26, ptr %l18
  br label %bb6
bb6:
  %t27 = load i1, ptr %l18, !tbaa !21
  store i1 %t27, ptr %l14, !tbaa !21
  br label %bb7
bb7:
  %t28 = load i1, ptr %l14, !tbaa !21
  br i1 %t28, label %bb8, label %bb9
bb8:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb9:
  br label %bb10
bb10:
  %t29 = call i64 @std_2ftime_2eNow()
  store i64 %t29, ptr %l19
  br label %bb11
bb11:
  %t30 = load i64, ptr %l19, !tbaa !24
  store i64 %t30, ptr %l2, !tbaa !24
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/session:Analysis", ptr %t31, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !29
  store ptr %t34, ptr %l3, !tbaa !29
  %t36 = load ptr, ptr %l3, !tbaa !29
  %t38 = icmp eq ptr %t36, null
  br i1 %t38, label %bb12, label %bb13
bb12:
  call void @__olang_check_failed(ptr @olang_loc_35f6bc648a66c5f9_fb290a2b6e993705)
  unreachable
bb13:
  br label %bb14
bb14:
  %t40 = load ptr, ptr %l3, !tbaa !29
  %t43 = getelementptr %"compiler/check:Checker", ptr %t40, i32 0, i32 1
  %t44 = load ptr, ptr %t43, !tbaa !29
  store ptr %t44, ptr %l26, !tbaa !29
  %t45 = load ptr, ptr %l3, !tbaa !29
  %t47 = icmp eq ptr %t45, null
  br i1 %t47, label %bb15, label %bb16
bb15:
  call void @__olang_check_failed(ptr @olang_loc_35f6bc648a66c5f9_fb290a2b6e993705)
  unreachable
bb16:
  br label %bb17
bb17:
  %t49 = load ptr, ptr %l3, !tbaa !29
  %t52 = getelementptr %"compiler/check:Checker", ptr %t49, i32 0, i32 14
  %t53 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t52
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t53, ptr %l31
  %t55 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e(ptr %v0, ptr %l31)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t55, ptr %l33
  br label %bb18
bb18:
  %t57 = load ptr, ptr %l26, !tbaa !29
  %t58 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l33
  call void @compiler_2fscope_3aScoper_2ector(ptr %t56, ptr %v0, ptr %v0, ptr %v0, ptr %t57, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t58)
  call void @llvm.memmove.p0.p0.i64(ptr %l34, ptr %t56, i64 8968, i1 false)
  br label %bb19
bb19:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3aScoper(ptr %t59, ptr %v0, ptr %l34)
  call void @llvm.memmove.p0.p0.i64(ptr %l36, ptr %t59, i64 8968, i1 false)
  br label %bb20
bb20:
  %t61 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 8968, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t61, ptr %l36, i64 8968, i1 false)
  store ptr %t61, ptr %l4, !tbaa !29
  %t63 = load ptr, ptr %l4, !tbaa !29
  %t64 = load ptr, ptr %l3, !tbaa !29
  %t65 = getelementptr { ptr, ptr }, ptr null, i32 1
  %t66 = ptrtoint ptr %t65 to i64
  %t67 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 %t66, i64 8)
  %t68 = getelementptr { ptr, ptr }, ptr %t67, i32 0, i32 0
  store ptr %t64, ptr %t68, !tbaa !28
  call void @__olang_scope_escape(ptr %v0)
  %t70 = getelementptr { ptr, ptr }, ptr %t67, i32 0, i32 1
  store ptr %v0, ptr %t70, !tbaa !28
  %t71 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_11, 0
  %t72 = insertvalue { ptr, ptr } %t71, ptr %t67, 1
  %t76 = getelementptr %"compiler/scope:Scoper", ptr %t63, i32 0, i32 4
  store { ptr, ptr } %t72, ptr %t76
  %t77 = load ptr, ptr %l4, !tbaa !29
  %t78 = load ptr, ptr %l3, !tbaa !29
  %t79 = getelementptr { ptr, ptr }, ptr null, i32 1
  %t80 = ptrtoint ptr %t79 to i64
  %t81 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 %t80, i64 8)
  %t82 = getelementptr { ptr, ptr }, ptr %t81, i32 0, i32 0
  store ptr %t78, ptr %t82, !tbaa !28
  call void @__olang_scope_escape(ptr %v0)
  %t84 = getelementptr { ptr, ptr }, ptr %t81, i32 0, i32 1
  store ptr %v0, ptr %t84, !tbaa !28
  %t85 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_12, 0
  %t86 = insertvalue { ptr, ptr } %t85, ptr %t81, 1
  %t90 = getelementptr %"compiler/scope:Scoper", ptr %t77, i32 0, i32 5
  store { ptr, ptr } %t86, ptr %t90
  %t91 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eRun(ptr %v0, ptr %t91)
  br label %bb21
bb21:
  %t93 = load i64, ptr %l2, !tbaa !24
  %t95 = call i64 @std_2ftime_2eSince(i64 %t93)
  store i64 %t95, ptr %l48
  br label %bb22
bb22:
  %t96 = load i64, ptr %l48, !tbaa !24
  %t97 = sdiv i64 %t96, 1000000
  %t98 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d13, i32 0, i32 1) }, 1
  %t99 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d13, i32 0, i32 1) }, 0
  %t101 = call i64 @__olang_fmt_i64(ptr null, i64 %t97)
  %t102 = add i64 %t99, %t101
  %t103 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d14, i32 0, i32 1) }, 1
  %t104 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d14, i32 0, i32 1) }, 0
  %t105 = add i64 %t102, %t104
  %t106 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t105)
  call void @olang_textcopy(ptr %t106, ptr %t98, i64 %t99)
  %t107 = getelementptr i8, ptr %t106, i64 %t99
  %t108 = call i64 @__olang_fmt_i64(ptr %t107, i64 %t97)
  %t109 = getelementptr i8, ptr %t107, i64 %t101
  call void @olang_textcopy(ptr %t109, ptr %t103, i64 %t104)
  %t110 = insertvalue { i64, ptr } undef, i64 %t105, 0
  %t111 = insertvalue { i64, ptr } %t110, ptr %t106, 1
  %t113 = extractvalue { i64, ptr } %t111, 0
  %t114 = extractvalue { i64, ptr } %t111, 1
  %t115 = mul i64 %t113, 1
  %t116 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t115)
  call void @llvm.memcpy.p0.p0.i64(ptr %t116, ptr %t114, i64 %t115, i1 false)
  %t117 = insertvalue { i64, ptr } undef, i64 %t113, 0
  %t118 = insertvalue { i64, ptr } %t117, ptr %t116, 1
  call void @compiler_2fsession_2eLog(ptr %s0, { i64, ptr } %t118)
  br label %bb23
bb23:
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t121 = load ptr, ptr %l4, !tbaa !29
  %t125 = getelementptr %"compiler/session:Analysis", ptr %t120, i32 0, i32 2
  store ptr %t121, ptr %t125, !tbaa !29
  %t126 = load ptr, ptr %l3, !tbaa !29
  %t128 = icmp eq ptr %t126, null
  br i1 %t128, label %bb24, label %bb25
bb24:
  call void @__olang_check_failed(ptr @olang_loc_7df5e84b4c633bd2_e3c06e6feae95f5e)
  unreachable
bb25:
  br label %bb26
bb26:
  %t130 = load ptr, ptr %l3, !tbaa !29
  %t133 = getelementptr %"compiler/check:Checker", ptr %t130, i32 0, i32 1
  %t134 = load ptr, ptr %t133, !tbaa !29
  store ptr %t134, ptr %l59, !tbaa !29
  %t135 = load ptr, ptr %l3, !tbaa !29
  %t137 = icmp eq ptr %t135, null
  br i1 %t137, label %bb27, label %bb28
bb27:
  call void @__olang_check_failed(ptr @olang_loc_7df5e84b4c633bd2_e3c06e6feae95f5e)
  unreachable
bb28:
  br label %bb29
bb29:
  %t139 = load ptr, ptr %l3, !tbaa !29
  %t142 = getelementptr %"compiler/check:Checker", ptr %t139, i32 0, i32 14
  %t144 = load ptr, ptr %l59, !tbaa !29
  call void @compiler_2finterp_3aExec_2ector(ptr %t143, ptr %v0, ptr %v0, ptr %v0, ptr %t144, ptr %t142, i32 0)
  call void @llvm.memmove.p0.p0.i64(ptr %l66, ptr %t143, i64 4976, i1 false)
  br label %bb30
bb30:
  %t147 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 4976, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t147, ptr %l66, i64 4976, i1 false)
  store ptr %t147, ptr %l5, !tbaa !29
  %t149 = load ptr, ptr %l5, !tbaa !29
  store ptr %t149, ptr %l68, !tbaa !29
  %t150 = ptrtoint ptr %v0 to i64
  store i64 %t150, ptr %l69, !tbaa !24
  %t151 = load i1, ptr @olang_2esole_2ecompiler_2finterp_3aExec_2e10
  br i1 %t151, label %bb31, label %bb32
bb31:
  %t153 = call ptr @__olang_region_make(ptr %v0)
  %t154 = ptrtoint ptr %t153 to i64
  store i64 %t154, ptr %l69, !tbaa !24
  br label %bb32
bb32:
  %t155 = load ptr, ptr %l3, !tbaa !29
  %t157 = icmp eq ptr %t155, null
  br i1 %t157, label %bb33, label %bb34
bb33:
  call void @__olang_check_failed(ptr @olang_loc_6f935d255f99d513_bebfb26ca618488f)
  unreachable
bb34:
  br label %bb35
bb35:
  %t159 = load ptr, ptr %l3, !tbaa !29
  %t162 = getelementptr %"compiler/check:Checker", ptr %t159, i32 0, i32 140
  %t163 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t162
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t163, ptr %l75
  %t164 = load i64, ptr %l69
  %t165 = inttoptr i64 %t164 to ptr
  %t167 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %t165, ptr %l75)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t167, ptr %l77
  br label %bb36
bb36:
  %t168 = load i1, ptr @olang_2esole_2ecompiler_2finterp_3aExec_2e10
  br i1 %t168, label %bb37, label %bb38
bb37:
  %t170 = load i64, ptr %l69
  %t171 = inttoptr i64 %t170 to ptr
  %t172 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l77, i32 0, i32 2
  %t173 = load { i64, ptr }, ptr %t172
  %t174 = extractvalue { i64, ptr } %t173, 1
  %t175 = call ptr @__olang_region_or(ptr %t174, ptr null)
  %t176 = icmp ne ptr %t175, null
  %t177 = select i1 %t176, ptr %t175, ptr null
  %t178 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l77, i32 0, i32 1
  %t179 = load { i64, ptr }, ptr %t178
  %t180 = extractvalue { i64, ptr } %t179, 1
  %t181 = call ptr @__olang_region_or(ptr %t180, ptr null)
  %t182 = icmp ne ptr %t181, null
  %t183 = select i1 %t182, ptr %t181, ptr %t177
  %t184 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l77, i32 0, i32 0
  %t185 = load { i64, ptr }, ptr %t184
  %t186 = extractvalue { i64, ptr } %t185, 1
  %t187 = call ptr @__olang_region_or(ptr %t186, ptr null)
  %t188 = icmp ne ptr %t187, null
  %t189 = select i1 %t188, ptr %t187, ptr %t183
  %t190 = icmp eq ptr %t189, %t171
  call void @__olang_region_settle(ptr %t171, i1 %t190)
  br label %bb38
bb38:
  %t191 = load ptr, ptr %l68, !tbaa !29
  %t192 = getelementptr %"compiler/interp:Exec", ptr %t191, i32 0, i32 10
  %t193 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t192
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t193, ptr %l79
  %t194 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l77
  %t195 = load ptr, ptr %l68, !tbaa !29
  %t196 = getelementptr %"compiler/interp:Exec", ptr %t195, i32 0, i32 10
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t194, ptr %t196
  %t197 = load i1, ptr @olang_2esole_2ecompiler_2finterp_3aExec_2e10
  br i1 %t197, label %bb39, label %bb40
bb39:
  %t199 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l79, i32 0, i32 2
  %t200 = load { i64, ptr }, ptr %t199
  %t201 = extractvalue { i64, ptr } %t200, 1
  %t202 = call ptr @__olang_region_or(ptr %t201, ptr null)
  %t203 = icmp ne ptr %t202, null
  %t204 = select i1 %t203, ptr %t202, ptr null
  %t205 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l79, i32 0, i32 1
  %t206 = load { i64, ptr }, ptr %t205
  %t207 = extractvalue { i64, ptr } %t206, 1
  %t208 = call ptr @__olang_region_or(ptr %t207, ptr null)
  %t209 = icmp ne ptr %t208, null
  %t210 = select i1 %t209, ptr %t208, ptr %t204
  %t211 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l79, i32 0, i32 0
  %t212 = load { i64, ptr }, ptr %t211
  %t213 = extractvalue { i64, ptr } %t212, 1
  %t214 = call ptr @__olang_region_or(ptr %t213, ptr null)
  %t215 = icmp ne ptr %t214, null
  %t216 = select i1 %t215, ptr %t214, ptr %t210
  call void @__olang_region_drop(ptr %t216)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" zeroinitializer, ptr %l79
  br label %bb40
bb40:
  %t217 = load ptr, ptr %l0, !tbaa !29
  %t218 = load ptr, ptr %l5, !tbaa !29
  %t222 = getelementptr %"compiler/session:Analysis", ptr %t217, i32 0, i32 3
  store ptr %t218, ptr %t222, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fsession_2eIdentityOf(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %lp6 = alloca ptr
  %l8 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %l14 = alloca i32
  %l17 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l19 = alloca i64
  %l20 = alloca { i64, ptr }
  %l21 = alloca { i64, ptr }
  %l22 = alloca { i64, ptr }
  %l23 = alloca i64
  %l24 = alloca { i64, ptr }
  %l29 = alloca i1
  %l32 = alloca i64
  %l34 = alloca i64
  %l35 = alloca i64
  %l40 = alloca { i64, ptr }
  %l42 = alloca i64
  %l44 = alloca { i64, ptr }
  %l45 = alloca { i64, ptr }
  %l47 = alloca i64
  %l49 = alloca i64
  %l50 = alloca { i64, ptr }
  %l55 = alloca i1
  %l58 = alloca i64
  %l60 = alloca i64
  %l61 = alloca i64
  %l66 = alloca { i64, ptr }
  %l68 = alloca i64
  %l71 = alloca i1
  %l73 = alloca { i64, ptr }
  %l78 = alloca { i64, ptr }
  %l81 = alloca i1
  %l82 = alloca { i64, ptr }
  %l85 = alloca i64
  %l86 = alloca i64
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = call { i64, ptr } @compiler_2fsession_2eRealOf(ptr %v0, ptr %s0, { i64, ptr } %a0)
  store { i64, ptr } %t3, ptr %l8
  br label %bb1
bb1:
  %t4 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t4, ptr %l1, !tbaa !27
  %t5 = call { i64, ptr } @compiler_2fload_2eStdDir(ptr %s0)
  store { i64, ptr } %t5, ptr %l9
  br label %bb2
bb2:
  %t6 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t6, 0
  %t8 = extractvalue { i64, ptr } %t6, 1
  %t9 = mul i64 %t7, 1
  %t10 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t9)
  call void @llvm.memcpy.p0.p0.i64(ptr %t10, ptr %t8, i64 %t9, i1 false)
  %t11 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t12 = insertvalue { i64, ptr } %t11, ptr %t10, 1
  %t14 = call { i64, ptr } @compiler_2fsession_2eRealOf(ptr %s0, ptr %s0, { i64, ptr } %t12)
  store { i64, ptr } %t14, ptr %l11
  br label %bb3
bb3:
  %t15 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t15, ptr %l2, !tbaa !27
  %t16 = call { i32, { i64, ptr } } @std_2fos_2eCwd(ptr %s0)
  %t17 = extractvalue { i32, { i64, ptr } } %t16, 1
  %t18 = extractvalue { i32, { i64, ptr } } %t16, 0
  store i32 %t18, ptr %l14
  %t19 = icmp ne i32 %t18, 0
  br i1 %t19, label %bb5, label %ok.20, !prof !99
ok.20:
  store { i64, ptr } %t17, ptr %l13
  br label %bb4
bb4:
  %t21 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t21, ptr %l12, !tbaa !27
  br label %bb9
bb5:
  %t22 = load i32, ptr %l14, !tbaa !23
  %t23 = ashr i32 %t22, 16
  %t25 = icmp eq i32 %t23, 1
  br i1 %t25, label %bb6, label %bb7
bb6:
  call void @__olang_errpay_pop()
  br label %bb7
bb7:
  br label %bb8
bb8:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, ptr %l12, !tbaa !27
  br label %bb9
bb9:
  %t27 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t27, ptr %l3, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d16, i32 0, i32 1) }, ptr %l17, !tbaa !27
  %t28 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t28, ptr %l18, !tbaa !27
  %t29 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t30 = extractvalue { i64, ptr } %t29, 0
  store i64 %t30, ptr %l19, !tbaa !24
  %t31 = load i64, ptr %l19, !tbaa !24
  %t32 = mul i64 %t31, 1
  %t33 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t32)
  %t34 = insertvalue { i64, ptr } undef, i64 %t31, 0
  %t35 = insertvalue { i64, ptr } %t34, ptr %t33, 1
  store { i64, ptr } %t35, ptr %l20, !tbaa !27
  %t36 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !27
  %t38 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t39 = load ptr, ptr %t38, !tbaa !27
  %t40 = load i64, ptr %l19, !tbaa !24
  %t41 = mul i64 %t40, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t37, ptr %t39, i64 %t41, i1 false)
  %t42 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t42, ptr %l4, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d17, i32 0, i32 1) }, ptr %l21, !tbaa !27
  %t43 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t43, ptr %l22, !tbaa !27
  %t44 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t45 = extractvalue { i64, ptr } %t44, 0
  store i64 %t45, ptr %l23, !tbaa !24
  %t46 = load i64, ptr %l23, !tbaa !24
  %t47 = mul i64 %t46, 1
  %t48 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t47)
  %t49 = insertvalue { i64, ptr } undef, i64 %t46, 0
  %t50 = insertvalue { i64, ptr } %t49, ptr %t48, 1
  store { i64, ptr } %t50, ptr %l24, !tbaa !27
  %t51 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !27
  %t53 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !27
  %t55 = load i64, ptr %l23, !tbaa !24
  %t56 = mul i64 %t55, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t52, ptr %t54, i64 %t56, i1 false)
  %t57 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t57, ptr %l5, !tbaa !27
  %t58 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t59 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t61 = extractvalue { i64, ptr } %t59, 1
  %t62 = extractvalue { i64, ptr } %t59, 0
  %t63 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t64 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  %t65 = add i64 %t62, %t64
  %t66 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t65)
  call void @olang_textcopy(ptr %t66, ptr %t61, i64 %t62)
  %t67 = getelementptr i8, ptr %t66, i64 %t62
  call void @olang_textcopy(ptr %t67, ptr %t63, i64 %t64)
  %t68 = insertvalue { i64, ptr } undef, i64 %t65, 0
  %t69 = insertvalue { i64, ptr } %t68, ptr %t66, 1
  %t71 = extractvalue { i64, ptr } %t69, 0
  %t72 = extractvalue { i64, ptr } %t69, 1
  %t73 = mul i64 %t71, 1
  %t74 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t73)
  call void @llvm.memcpy.p0.p0.i64(ptr %t74, ptr %t72, i64 %t73, i1 false)
  %t75 = insertvalue { i64, ptr } undef, i64 %t71, 0
  %t76 = insertvalue { i64, ptr } %t75, ptr %t74, 1
  %t79 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s0, ptr %s0, { i64, ptr } %t58, { i64, ptr } %t76)
  store i1 %t79, ptr %l29
  br label %bb10
bb10:
  %t80 = load i1, ptr %l29, !tbaa !21
  br i1 %t80, label %bb11, label %bb12
bb11:
  %t81 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t83 = extractvalue { i64, ptr } %t81, 0
  %t85 = add i64 %t83, 1
  store i64 %t85, ptr %l32, !tbaa !24
  %t86 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t88 = extractvalue { i64, ptr } %t86, 0
  store i64 %t88, ptr %l34, !tbaa !24
  %t89 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t90 = extractvalue { i64, ptr } %t89, 0
  store i64 %t90, ptr %l35, !tbaa !24
  %t91 = load i64, ptr %l32, !tbaa !24
  %t92 = icmp sge i64 %t91, 0
  br i1 %t92, label %bb13, label %bb14
bb12:
  store %olang.scope zeroinitializer, ptr %s4
  %t94 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t95 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t97 = extractvalue { i64, ptr } %t95, 1
  %t98 = extractvalue { i64, ptr } %t95, 0
  %t99 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d19, i32 0, i32 1) }, 1
  %t100 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d19, i32 0, i32 1) }, 0
  %t101 = add i64 %t98, %t100
  %t102 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t101)
  call void @olang_textcopy(ptr %t102, ptr %t97, i64 %t98)
  %t103 = getelementptr i8, ptr %t102, i64 %t98
  call void @olang_textcopy(ptr %t103, ptr %t99, i64 %t100)
  %t104 = insertvalue { i64, ptr } undef, i64 %t101, 0
  %t105 = insertvalue { i64, ptr } %t104, ptr %t102, 1
  %t107 = extractvalue { i64, ptr } %t105, 0
  %t108 = extractvalue { i64, ptr } %t105, 1
  %t109 = mul i64 %t107, 1
  %t110 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t109)
  call void @llvm.memcpy.p0.p0.i64(ptr %t110, ptr %t108, i64 %t109, i1 false)
  %t111 = insertvalue { i64, ptr } undef, i64 %t107, 0
  %t112 = insertvalue { i64, ptr } %t111, ptr %t110, 1
  %t115 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s0, ptr %s4, { i64, ptr } %t94, { i64, ptr } %t112)
  store i1 %t115, ptr %l55
  br label %bb25
bb13:
  %t116 = load i64, ptr %l32, !tbaa !24
  %t117 = load i64, ptr %l34, !tbaa !24
  %t118 = icmp sle i64 %t116, %t117
  br i1 %t118, label %bb15, label %bb16
bb14:
  call void @__olang_check_failed(ptr @olang_loc_41308d8b43e86301_faf6b9f2c6bbac3d)
  unreachable
bb15:
  %t120 = load i64, ptr %l34, !tbaa !24
  %t121 = load i64, ptr %l35, !tbaa !24
  %t122 = icmp sle i64 %t120, %t121
  br i1 %t122, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_41308d8b43e86301_faf6b9f2c6bbac3d)
  unreachable
bb17:
  %t124 = getelementptr { i64, ptr }, ptr %l1, i32 0, i32 1
  %t125 = load ptr, ptr %t124, !tbaa !27
  %t126 = load i64, ptr %l32, !tbaa !24
  %t127 = load i64, ptr %l34, !tbaa !24
  %t128 = getelementptr i8, ptr %t125, i64 %t126
  %t129 = sub i64 %t127, %t126
  %t130 = insertvalue { i64, ptr } undef, i64 %t129, 0
  %t131 = insertvalue { i64, ptr } %t130, ptr %t128, 1
  %t133 = extractvalue { i64, ptr } %t131, 1
  %t134 = extractvalue { i64, ptr } %t131, 0
  %t135 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t134)
  call void @olang_textcopy(ptr %t135, ptr %t133, i64 %t134)
  %t136 = insertvalue { i64, ptr } undef, i64 %t134, 0
  %t137 = insertvalue { i64, ptr } %t136, ptr %t135, 1
  store { i64, ptr } %t137, ptr %l40, !tbaa !27
  %t138 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t139 = extractvalue { i64, ptr } %t138, 0
  %t140 = load { i64, ptr }, ptr %l40, !tbaa !27
  %t141 = extractvalue { i64, ptr } %t140, 0
  store i64 %t141, ptr %l42, !tbaa !24
  %t143 = load i64, ptr %l42, !tbaa !24
  %t144 = icmp eq i64 %t139, %t143
  br i1 %t144, label %bb19, label %bb20
bb18:
  call void @__olang_check_failed(ptr @olang_loc_41308d8b43e86301_faf6b9f2c6bbac3d)
  unreachable
bb19:
  %t146 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t147 = load ptr, ptr %t146, !tbaa !27
  %t148 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t149 = load ptr, ptr %t148, !tbaa !27
  %t150 = load i64, ptr %l42, !tbaa !24
  %t151 = mul i64 %t150, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t147, ptr %t149, i64 %t151, i1 false)
  br label %bb21
bb20:
  %t152 = load { i64, ptr }, ptr %l40, !tbaa !27
  store { i64, ptr } %t152, ptr %l4, !tbaa !27
  br label %bb21
bb21:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d20, i32 0, i32 1) }, ptr %l44, !tbaa !27
  %t153 = load { i64, ptr }, ptr %l44, !tbaa !27
  store { i64, ptr } %t153, ptr %l45, !tbaa !27
  %t154 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t155 = extractvalue { i64, ptr } %t154, 0
  %t156 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t157 = extractvalue { i64, ptr } %t156, 0
  store i64 %t157, ptr %l47, !tbaa !24
  %t159 = load i64, ptr %l47, !tbaa !24
  %t160 = icmp eq i64 %t155, %t159
  br i1 %t160, label %bb22, label %bb23
bb22:
  %t162 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t163 = load ptr, ptr %t162, !tbaa !27
  %t164 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t165 = load ptr, ptr %t164, !tbaa !27
  %t166 = load i64, ptr %l47, !tbaa !24
  %t167 = mul i64 %t166, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t163, ptr %t165, i64 %t167, i1 false)
  br label %bb24
bb23:
  %t168 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t169 = extractvalue { i64, ptr } %t168, 0
  store i64 %t169, ptr %l49, !tbaa !24
  %t170 = load i64, ptr %l49, !tbaa !24
  %t171 = mul i64 %t170, 1
  %t172 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t171)
  %t173 = insertvalue { i64, ptr } undef, i64 %t170, 0
  %t174 = insertvalue { i64, ptr } %t173, ptr %t172, 1
  store { i64, ptr } %t174, ptr %l50, !tbaa !27
  %t175 = getelementptr { i64, ptr }, ptr %l50, i32 0, i32 1
  %t176 = load ptr, ptr %t175, !tbaa !27
  %t177 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t178 = load ptr, ptr %t177, !tbaa !27
  %t179 = load i64, ptr %l49, !tbaa !24
  %t180 = mul i64 %t179, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t176, ptr %t178, i64 %t180, i1 false)
  %t181 = load { i64, ptr }, ptr %l50, !tbaa !27
  store { i64, ptr } %t181, ptr %l5, !tbaa !27
  br label %bb24
bb24:
  br label %bb38
bb25:
  %t182 = load i1, ptr %l55, !tbaa !21
  br i1 %t182, label %bb26, label %bb27
bb26:
  %t183 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t185 = extractvalue { i64, ptr } %t183, 0
  %t187 = add i64 %t185, 1
  store i64 %t187, ptr %l58, !tbaa !24
  %t188 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t190 = extractvalue { i64, ptr } %t188, 0
  store i64 %t190, ptr %l60, !tbaa !24
  %t191 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t192 = extractvalue { i64, ptr } %t191, 0
  store i64 %t192, ptr %l61, !tbaa !24
  %t193 = load i64, ptr %l58, !tbaa !24
  %t194 = icmp sge i64 %t193, 0
  br i1 %t194, label %bb28, label %bb29
bb27:
  br label %bb37
bb28:
  %t196 = load i64, ptr %l58, !tbaa !24
  %t197 = load i64, ptr %l60, !tbaa !24
  %t198 = icmp sle i64 %t196, %t197
  br i1 %t198, label %bb30, label %bb31
bb29:
  call void @__olang_check_failed(ptr @olang_loc_18466e7707586594_33576ced7420fee0)
  unreachable
bb30:
  %t200 = load i64, ptr %l60, !tbaa !24
  %t201 = load i64, ptr %l61, !tbaa !24
  %t202 = icmp sle i64 %t200, %t201
  br i1 %t202, label %bb32, label %bb33
bb31:
  call void @__olang_check_failed(ptr @olang_loc_18466e7707586594_33576ced7420fee0)
  unreachable
bb32:
  %t204 = getelementptr { i64, ptr }, ptr %l1, i32 0, i32 1
  %t205 = load ptr, ptr %t204, !tbaa !27
  %t206 = load i64, ptr %l58, !tbaa !24
  %t207 = load i64, ptr %l60, !tbaa !24
  %t208 = getelementptr i8, ptr %t205, i64 %t206
  %t209 = sub i64 %t207, %t206
  %t210 = insertvalue { i64, ptr } undef, i64 %t209, 0
  %t211 = insertvalue { i64, ptr } %t210, ptr %t208, 1
  %t213 = extractvalue { i64, ptr } %t211, 1
  %t214 = extractvalue { i64, ptr } %t211, 0
  %t215 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t214)
  call void @olang_textcopy(ptr %t215, ptr %t213, i64 %t214)
  %t216 = insertvalue { i64, ptr } undef, i64 %t214, 0
  %t217 = insertvalue { i64, ptr } %t216, ptr %t215, 1
  store { i64, ptr } %t217, ptr %l66, !tbaa !27
  %t218 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t219 = extractvalue { i64, ptr } %t218, 0
  %t220 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t221 = extractvalue { i64, ptr } %t220, 0
  store i64 %t221, ptr %l68, !tbaa !24
  %t223 = load i64, ptr %l68, !tbaa !24
  %t224 = icmp eq i64 %t219, %t223
  br i1 %t224, label %bb34, label %bb35
bb33:
  call void @__olang_check_failed(ptr @olang_loc_18466e7707586594_33576ced7420fee0)
  unreachable
bb34:
  %t226 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t227 = load ptr, ptr %t226, !tbaa !27
  %t228 = getelementptr { i64, ptr }, ptr %l66, i32 0, i32 1
  %t229 = load ptr, ptr %t228, !tbaa !27
  %t230 = load i64, ptr %l68, !tbaa !24
  %t231 = mul i64 %t230, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t227, ptr %t229, i64 %t231, i1 false)
  br label %bb36
bb35:
  %t232 = load { i64, ptr }, ptr %l66, !tbaa !27
  store { i64, ptr } %t232, ptr %l4, !tbaa !27
  br label %bb36
bb36:
  br label %bb37
bb37:
  call void @__olang_scope_close(ptr %s4)
  br label %bb38
bb38:
  %t233 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t235 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t233, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d21, i32 0, i32 1) })
  store i1 %t235, ptr %l71
  br label %bb39
bb39:
  %t236 = load i1, ptr %l71, !tbaa !21
  %t237 = xor i1 %t236, true
  br i1 %t237, label %bb40, label %bb41
bb40:
  %t239 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t240 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t242 = extractvalue { i64, ptr } %t239, 1
  %t243 = extractvalue { i64, ptr } %t239, 0
  %t245 = extractvalue { i64, ptr } %t240, 1
  %t246 = extractvalue { i64, ptr } %t240, 0
  %t247 = add i64 %t243, %t246
  %t248 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t247)
  call void @olang_textcopy(ptr %t248, ptr %t242, i64 %t243)
  %t249 = getelementptr i8, ptr %t248, i64 %t243
  call void @olang_textcopy(ptr %t249, ptr %t245, i64 %t246)
  %t250 = insertvalue { i64, ptr } undef, i64 %t247, 0
  %t251 = insertvalue { i64, ptr } %t250, ptr %t248, 1
  store { i64, ptr } %t251, ptr %l73, !tbaa !27
  br label %bb43
bb41:
  %t253 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t255 = call { i64, ptr } @std_2ffilepath_2eBase(ptr %s0, ptr %s0, { i64, ptr } %t253)
  store { i64, ptr } %t255, ptr %l78
  br label %bb42
bb42:
  %t256 = load { i64, ptr }, ptr %l78, !tbaa !27
  %t257 = extractvalue { i64, ptr } %t256, 1
  %t258 = extractvalue { i64, ptr } %t256, 0
  %t259 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t258)
  call void @olang_textcopy(ptr %t259, ptr %t257, i64 %t258)
  %t260 = insertvalue { i64, ptr } undef, i64 %t258, 0
  %t261 = insertvalue { i64, ptr } %t260, ptr %t259, 1
  store { i64, ptr } %t261, ptr %l73, !tbaa !27
  br label %bb43
bb43:
  %t263 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t263, ptr %lp6
  %t264 = load { i64, ptr }, ptr %l73, !tbaa !27
  %t265 = load ptr, ptr %lp6
  store { i64, ptr } %t264, ptr %t265, !tbaa !27
  %t266 = load ptr, ptr %lp6
  %t267 = load { i64, ptr }, ptr %t266, !tbaa !27
  %t269 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v1, ptr %s0, { i64, ptr } %t267, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d22, i32 0, i32 1) })
  store i1 %t269, ptr %l81
  br label %bb44
bb44:
  %t270 = load i1, ptr %l81, !tbaa !21
  br i1 %t270, label %bb45, label %bb46
bb45:
  %t271 = load ptr, ptr %lp6
  %t272 = load { i64, ptr }, ptr %t271, !tbaa !27
  %t274 = extractvalue { i64, ptr } %t272, 0
  %t276 = sub i64 %t274, 6
  store i64 %t276, ptr %l85, !tbaa !24
  %t277 = load ptr, ptr %lp6
  %t278 = load { i64, ptr }, ptr %t277, !tbaa !27
  %t279 = extractvalue { i64, ptr } %t278, 0
  store i64 %t279, ptr %l86, !tbaa !24
  %t280 = icmp sge i64 0, 0
  br i1 %t280, label %bb47, label %bb48
bb46:
  %t282 = load ptr, ptr %lp6
  %t283 = load { i64, ptr }, ptr %t282, !tbaa !27
  store { i64, ptr } %t283, ptr %l82, !tbaa !27
  br label %bb53
bb47:
  %t285 = load i64, ptr %l85, !tbaa !24
  %t286 = icmp sle i64 0, %t285
  br i1 %t286, label %bb49, label %bb50
bb48:
  call void @__olang_check_failed(ptr @olang_loc_decc2d78854299ff_a983c2831d86fddb)
  unreachable
bb49:
  %t288 = load i64, ptr %l85, !tbaa !24
  %t289 = load i64, ptr %l86, !tbaa !24
  %t290 = icmp sle i64 %t288, %t289
  br i1 %t290, label %bb51, label %bb52
bb50:
  call void @__olang_check_failed(ptr @olang_loc_decc2d78854299ff_a983c2831d86fddb)
  unreachable
bb51:
  %t292 = load ptr, ptr %lp6
  %t293 = getelementptr { i64, ptr }, ptr %t292, i32 0, i32 1
  %t294 = load ptr, ptr %t293, !tbaa !27
  %t295 = load i64, ptr %l85, !tbaa !24
  %t296 = getelementptr i8, ptr %t294, i64 0
  %t297 = sub i64 %t295, 0
  %t298 = insertvalue { i64, ptr } undef, i64 %t297, 0
  %t299 = insertvalue { i64, ptr } %t298, ptr %t296, 1
  %t301 = extractvalue { i64, ptr } %t299, 1
  %t302 = extractvalue { i64, ptr } %t299, 0
  %t303 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t302)
  call void @olang_textcopy(ptr %t303, ptr %t301, i64 %t302)
  %t304 = insertvalue { i64, ptr } undef, i64 %t302, 0
  %t305 = insertvalue { i64, ptr } %t304, ptr %t303, 1
  store { i64, ptr } %t305, ptr %l82, !tbaa !27
  br label %bb53
bb52:
  call void @__olang_check_failed(ptr @olang_loc_decc2d78854299ff_a983c2831d86fddb)
  unreachable
bb53:
  call void @__olang_scope_close(ptr %s0)
  %t307 = load { i64, ptr }, ptr %l82, !tbaa !27
  store { i64, ptr } %t307, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i32 @compiler_2fsession_2eInChild(ptr %v0, ptr %a0c, ptr %a0e) #0 {
entry:
  %l0 = alloca { ptr, ptr }
  %l1 = alloca i32
  %l2 = alloca [1 x i32]
  %l3 = alloca i32
  %l7 = alloca i32
  %l11 = alloca i32
  %l16 = alloca i32
  %l20 = alloca i32
  %rv = alloca i32
  %pf0 = insertvalue { ptr, ptr } undef, ptr %a0c, 0
  %pg0 = insertvalue { ptr, ptr } %pf0, ptr %a0e, 1
  store { ptr, ptr } %pg0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call i32 @fork()
  store i32 %t1, ptr %l3
  br label %bb1
bb1:
  %t2 = load i32, ptr %l3, !tbaa !23
  store i32 %t2, ptr %l1, !tbaa !23
  %t3 = load i32, ptr %l1, !tbaa !23
  %t5 = icmp slt i32 %t3, 0
  br i1 %t5, label %bb2, label %bb3
bb2:
  %t7 = load { ptr, ptr }, ptr %l0
  %t9 = extractvalue { ptr, ptr } %t7, 0
  %t10 = extractvalue { ptr, ptr } %t7, 1
  %t11 = call i32 %t9(ptr %t10)
  store i32 %t11, ptr %l7
  br label %bb4
bb3:
  br label %bb5
bb4:
  %t12 = load i32, ptr %l7, !tbaa !23
  store i32 %t12, ptr %rv
  br label %ret
bb5:
  %t13 = load i32, ptr %l1, !tbaa !23
  %t15 = icmp eq i32 %t13, 0
  br i1 %t15, label %bb6, label %bb7
bb6:
  %t17 = load { ptr, ptr }, ptr %l0
  %t19 = extractvalue { ptr, ptr } %t17, 0
  %t20 = extractvalue { ptr, ptr } %t17, 1
  %t21 = call i32 %t19(ptr %t20)
  store i32 %t21, ptr %l11
  br label %bb8
bb7:
  br label %bb10
bb8:
  %t22 = load i32, ptr %l11, !tbaa !23
  call void @_exit(i32 %t22)
  unreachable
bb9:
  call void @__olang_check_failed(ptr @olang_loc_ff40fb5988b00df4_fbbcb1c788c8bd28)
  unreachable
bb10:
  %t23 = insertvalue [1 x i32] undef, i32 0, 0
  store [1 x i32] %t23, ptr %l2
  %t25 = load i32, ptr %l1, !tbaa !23
  %t27 = insertvalue { i64, ptr } undef, i64 1, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %l2, 1
  %t31 = extractvalue { i64, ptr } %t28, 1
  %t32 = extractvalue { i64, ptr } %t28, 0
  %t33 = call i32 @waitpid(i32 %t25, ptr %t31, i32 0)
  store i32 %t33, ptr %l16
  br label %bb11
bb11:
  %t34 = load i32, ptr %l16, !tbaa !23
  %t35 = icmp slt i32 %t34, 0
  br i1 %t35, label %bb12, label %bb13
bb12:
  store i32 1, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  %t38 = getelementptr [1 x i32], ptr %l2, i64 0, i64 0
  %t39 = load i32, ptr %t38, !tbaa !33
  %t41 = call i32 @compiler_2fsession_2eExitStatus(i32 %t39)
  store i32 %t41, ptr %l20
  br label %bb15
bb15:
  %t42 = load i32, ptr %l20, !tbaa !23
  store i32 %t42, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2fsession_2eJsonStr(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i8
  %l14 = alloca { i64, ptr }
  %l37 = alloca { i64, ptr }
  %l38 = alloca { i64, ptr }
  %l45 = alloca { i64, ptr }
  %l46 = alloca { i64, ptr }
  %s3 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s13 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %t1, i8 34)
  br label %bb1
bb1:
  store { i64, ptr } %a1, ptr %l2, !tbaa !27
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
  br label %bb34
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
  store %olang.scope zeroinitializer, ptr %s3
  %t29 = load ptr, ptr %l0, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s3, ptr %t29, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d23, i32 0, i32 1) })
  br label %bb8
bb7:
  %t31 = load i8, ptr %l5, !tbaa !22
  %t33 = icmp eq i8 %t31, 92
  br i1 %t33, label %bb9, label %bb10
bb8:
  call void @__olang_scope_close(ptr %s3)
  br label %bb32
bb9:
  store %olang.scope zeroinitializer, ptr %s5
  %t35 = load ptr, ptr %l0, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s5, ptr %t35, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d24, i32 0, i32 1) })
  br label %bb11
bb10:
  %t37 = load i8, ptr %l5, !tbaa !22
  %t39 = icmp eq i8 %t37, 10
  br i1 %t39, label %bb12, label %bb13
bb11:
  call void @__olang_scope_close(ptr %s5)
  br label %bb31
bb12:
  store %olang.scope zeroinitializer, ptr %s7
  %t41 = load ptr, ptr %l0, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s7, ptr %t41, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d25, i32 0, i32 1) })
  br label %bb14
bb13:
  %t43 = load i8, ptr %l5, !tbaa !22
  %t45 = icmp eq i8 %t43, 13
  br i1 %t45, label %bb15, label %bb16
bb14:
  call void @__olang_scope_close(ptr %s7)
  br label %bb30
bb15:
  store %olang.scope zeroinitializer, ptr %s9
  %t47 = load ptr, ptr %l0, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s9, ptr %t47, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d26, i32 0, i32 1) })
  br label %bb17
bb16:
  %t49 = load i8, ptr %l5, !tbaa !22
  %t51 = icmp eq i8 %t49, 9
  br i1 %t51, label %bb18, label %bb19
bb17:
  call void @__olang_scope_close(ptr %s9)
  br label %bb29
bb18:
  store %olang.scope zeroinitializer, ptr %s11
  %t53 = load ptr, ptr %l0, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s11, ptr %t53, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d27, i32 0, i32 1) })
  br label %bb20
bb19:
  %t55 = load i8, ptr %l5, !tbaa !22
  %t58 = icmp ult i8 %t55, 32
  br i1 %t58, label %bb21, label %bb22
bb20:
  call void @__olang_scope_close(ptr %s11)
  br label %bb28
bb21:
  store %olang.scope zeroinitializer, ptr %s13
  %t60 = load ptr, ptr %l0, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s13, ptr %t60, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d28, i32 0, i32 1) })
  br label %bb23
bb22:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t63 = load i8, ptr %l5, !tbaa !22
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %t62, i8 %t63)
  br label %bb26
bb23:
  %t66 = load ptr, ptr %l0, !tbaa !29
  store { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d29, i32 0, i32 1) }, ptr %l37, !tbaa !27
  %t67 = load { i64, ptr }, ptr %l37, !tbaa !27
  store { i64, ptr } %t67, ptr %l38, !tbaa !27
  %t68 = load i8, ptr %l5, !tbaa !22
  %t71 = lshr i8 %t68, 4
  %t73 = zext i8 %t71 to i64
  %t75 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !27
  %t77 = getelementptr i8, ptr %t76, i64 %t73
  %t78 = load i8, ptr %t77, !tbaa !32
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %t66, i8 %t78)
  br label %bb24
bb24:
  %t81 = load ptr, ptr %l0, !tbaa !29
  store { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d30, i32 0, i32 1) }, ptr %l45, !tbaa !27
  %t82 = load { i64, ptr }, ptr %l45, !tbaa !27
  store { i64, ptr } %t82, ptr %l46, !tbaa !27
  %t83 = load i8, ptr %l5, !tbaa !22
  %t86 = and i8 %t83, 15
  %t88 = zext i8 %t86 to i64
  %t90 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t91 = load ptr, ptr %t90, !tbaa !27
  %t92 = getelementptr i8, ptr %t91, i64 %t88
  %t93 = load i8, ptr %t92, !tbaa !32
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %t81, i8 %t93)
  br label %bb25
bb25:
  call void @__olang_scope_close(ptr %s13)
  br label %bb27
bb26:
  br label %bb27
bb27:
  br label %bb28
bb28:
  br label %bb29
bb29:
  br label %bb30
bb30:
  br label %bb31
bb31:
  br label %bb32
bb32:
  br label %bb33
bb33:
  %t96 = load i64, ptr %l3, !tbaa !24
  %t98 = add i64 %t96, 1
  store i64 %t98, ptr %l3, !tbaa !24
  br label %bb2
bb34:
  %t100 = load ptr, ptr %l0, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %t100, i8 34)
  br label %bb35
bb35:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fsession_2eKillAndReap(i32 %a0) #0 {
entry:
  %l0 = alloca i32
  %l4 = alloca i32
  %l6 = alloca i32
  store i32 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l0, !tbaa !23
  %t3 = icmp sle i32 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t5 = load i32, ptr %l0, !tbaa !23
  %t7 = call i32 @kill(i32 %t5, i32 9)
  store i32 %t7, ptr %l4
  br label %bb4
bb4:
  %t8 = load i32, ptr %l0, !tbaa !23
  %t10 = call i32 @compiler_2fsession_2eReap(i32 %t8)
  store i32 %t10, ptr %l6
  br label %bb5
bb5:
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fsession_2eRealOf(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca i32
  %l9 = alloca i1
  %l11 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = call { i32, { i64, ptr } } @std_2fos_2eRealPath(ptr %v0, ptr %s0, { i64, ptr } %t1)
  %t4 = extractvalue { i32, { i64, ptr } } %t3, 1
  %t5 = extractvalue { i32, { i64, ptr } } %t3, 0
  store i32 %t5, ptr %l5
  %t6 = icmp ne i32 %t5, 0
  br i1 %t6, label %bb2, label %ok.7, !prof !99
ok.7:
  store { i64, ptr } %t4, ptr %l4
  br label %bb1
bb1:
  %t8 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t8, ptr %l2, !tbaa !27
  br label %bb6
bb2:
  %t9 = load i32, ptr %l5, !tbaa !23
  %t10 = ashr i32 %t9, 16
  %t12 = icmp eq i32 %t10, 1
  br i1 %t12, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d31, i32 0, i32 1) }, ptr %l2, !tbaa !27
  br label %bb6
bb6:
  %t14 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t14, ptr %l1, !tbaa !27
  %t15 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t17 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t15, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d32, i32 0, i32 1) })
  store i1 %t17, ptr %l9
  br label %bb7
bb7:
  %t18 = load i1, ptr %l9, !tbaa !21
  %t19 = xor i1 %t18, true
  br i1 %t19, label %bb8, label %bb9
bb8:
  %t21 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t23 = extractvalue { i64, ptr } %t21, 1
  %t24 = extractvalue { i64, ptr } %t21, 0
  %t25 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t24)
  call void @olang_textcopy(ptr %t25, ptr %t23, i64 %t24)
  %t26 = insertvalue { i64, ptr } undef, i64 %t24, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  store { i64, ptr } %t27, ptr %l11, !tbaa !27
  br label %bb10
bb9:
  %t29 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t31 = extractvalue { i64, ptr } %t29, 1
  %t32 = extractvalue { i64, ptr } %t29, 0
  %t33 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t32)
  call void @olang_textcopy(ptr %t33, ptr %t31, i64 %t32)
  %t34 = insertvalue { i64, ptr } undef, i64 %t32, 0
  %t35 = insertvalue { i64, ptr } %t34, ptr %t33, 1
  store { i64, ptr } %t35, ptr %l11, !tbaa !27
  br label %bb10
bb10:
  call void @__olang_scope_close(ptr %s0)
  %t37 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t37, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fsession_2eStdModule(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca [2 x { i64, ptr }]
  %l3 = alloca i1
  %l4 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca i64
  %l20 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d33, i32 0, i32 1) })
  store i1 %t3, ptr %l3
  br label %bb1
bb1:
  %t4 = load i1, ptr %l3, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t5 = ptrtoint ptr %s1 to i64
  store i64 %t5, ptr %l4, !tbaa !24
  %t6 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_2c_202_3e_2e_2d1
  br i1 %t6, label %bb4, label %bb5
bb3:
  br label %bb14
bb4:
  %t8 = call ptr @__olang_region_make(ptr %s1)
  %t9 = ptrtoint ptr %t8 to i64
  store i64 %t9, ptr %l4, !tbaa !24
  br label %bb5
bb5:
  %t10 = load i64, ptr %l4
  %t11 = inttoptr i64 %t10 to ptr
  %t12 = call { i64, ptr } @compiler_2fload_2eStdDir(ptr %t11)
  store { i64, ptr } %t12, ptr %l6
  br label %bb6
bb6:
  %t13 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t14 = load i64, ptr %l4
  %t15 = inttoptr i64 %t14 to ptr
  %t16 = extractvalue { i64, ptr } %t13, 0
  %t17 = extractvalue { i64, ptr } %t13, 1
  %t18 = mul i64 %t16, 1
  %t19 = call ptr @__olang_scope_alloc(ptr %t15, i64 %t18)
  call void @llvm.memcpy.p0.p0.i64(ptr %t19, ptr %t17, i64 %t18, i1 false)
  %t20 = insertvalue { i64, ptr } undef, i64 %t16, 0
  %t21 = insertvalue { i64, ptr } %t20, ptr %t19, 1
  store { i64, ptr } %t21, ptr %l7, !tbaa !27
  %t22 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t22, ptr %l8, !tbaa !27
  %t23 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t26 = extractvalue { i64, ptr } %t23, 0
  store i64 %t26, ptr %l11, !tbaa !24
  %t27 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t28 = extractvalue { i64, ptr } %t27, 0
  store i64 %t28, ptr %l12, !tbaa !24
  %t29 = icmp sge i64 4, 0
  br i1 %t29, label %bb7, label %bb8
bb7:
  %t31 = load i64, ptr %l11, !tbaa !24
  %t32 = icmp sle i64 4, %t31
  br i1 %t32, label %bb9, label %bb10
bb8:
  call void @__olang_check_failed(ptr @olang_loc_b18535922df9c451_739a4491ef7ea55d)
  unreachable
bb9:
  %t34 = load i64, ptr %l11, !tbaa !24
  %t35 = load i64, ptr %l12, !tbaa !24
  %t36 = icmp sle i64 %t34, %t35
  br i1 %t36, label %bb11, label %bb12
bb10:
  call void @__olang_check_failed(ptr @olang_loc_b18535922df9c451_739a4491ef7ea55d)
  unreachable
bb11:
  %t38 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t39 = load ptr, ptr %t38, !tbaa !27
  %t40 = load i64, ptr %l11, !tbaa !24
  %t41 = getelementptr i8, ptr %t39, i64 4
  %t42 = sub i64 %t40, 4
  %t43 = insertvalue { i64, ptr } undef, i64 %t42, 0
  %t44 = insertvalue { i64, ptr } %t43, ptr %t41, 1
  %t45 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t46 = insertvalue [2 x { i64, ptr }] undef, { i64, ptr } %t45, 0
  %t48 = insertvalue [2 x { i64, ptr }] %t46, { i64, ptr } %t44, 1
  store [2 x { i64, ptr }] %t48, ptr %l1
  %t51 = insertvalue { i64, ptr } undef, i64 2, 0
  %t52 = insertvalue { i64, ptr } %t51, ptr %l1, 1
  %t54 = call { i64, ptr } @std_2ffilepath_2eJoin(ptr %s1, ptr %s1, { i64, ptr } %t52)
  store { i64, ptr } %t54, ptr %l20
  br label %bb13
bb12:
  call void @__olang_check_failed(ptr @olang_loc_b18535922df9c451_739a4491ef7ea55d)
  unreachable
bb13:
  %t55 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t56 = extractvalue { i64, ptr } %t55, 1
  %t57 = extractvalue { i64, ptr } %t55, 0
  %t58 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d34, i32 0, i32 1) }, 1
  %t59 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d34, i32 0, i32 1) }, 0
  %t60 = add i64 %t57, %t59
  %t61 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t60)
  call void @olang_textcopy(ptr %t61, ptr %t56, i64 %t57)
  %t62 = getelementptr i8, ptr %t61, i64 %t57
  call void @olang_textcopy(ptr %t62, ptr %t58, i64 %t59)
  %t63 = insertvalue { i64, ptr } undef, i64 %t60, 0
  %t64 = insertvalue { i64, ptr } %t63, ptr %t61, 1
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t64, ptr %rv
  br label %ret
bb14:
  %t66 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t68 = extractvalue { i64, ptr } %t66, 1
  %t69 = extractvalue { i64, ptr } %t66, 0
  %t70 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d35, i32 0, i32 1) }, 1
  %t71 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d35, i32 0, i32 1) }, 0
  %t72 = add i64 %t69, %t71
  %t73 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t72)
  call void @olang_textcopy(ptr %t73, ptr %t68, i64 %t69)
  %t74 = getelementptr i8, ptr %t73, i64 %t69
  call void @olang_textcopy(ptr %t74, ptr %t70, i64 %t71)
  %t75 = insertvalue { i64, ptr } undef, i64 %t72, 0
  %t76 = insertvalue { i64, ptr } %t75, ptr %t73, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t76, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fsession_2eSymbols(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, { i64, ptr } %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l4 = alloca %"compiler/session:symWriter"
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l11 = alloca %"compiler/session:symWriter"
  %l22 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %t1, i8 91)
  br label %bb1
bb1:
  %t5 = call %"compiler/session:symWriter" @compiler_2fsession_3asymWriter_2ector(ptr %v1, ptr %s0, ptr %a1)
  store %"compiler/session:symWriter" %t5, ptr %l11
  br label %bb2
bb2:
  %t6 = load %"compiler/session:symWriter", ptr %l11
  store %"compiler/session:symWriter" %t6, ptr %l4
  %t7 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t7, 0
  %t11 = icmp sgt i64 %t9, 0
  br i1 %t11, label %bb3, label %bb4
bb3:
  %t13 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t13, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t15 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t17 = extractvalue { i64, ptr } %t15, 0
  store i64 %t17, ptr %l7, !tbaa !24
  br label %bb5
bb4:
  br label %bb12
bb5:
  %t19 = load i64, ptr %l6, !tbaa !24
  %t20 = load i64, ptr %l7, !tbaa !24
  %t23 = icmp slt i64 %t19, %t20
  %t25 = xor i1 %t23, true
  br i1 %t25, label %bb6, label %bb7
bb6:
  br label %bb11
bb7:
  br label %bb8
bb8:
  %t27 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t27, ptr %l22, !tbaa !27
  %t28 = load i64, ptr %l6, !tbaa !24
  %t30 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !27
  %t32 = getelementptr ptr, ptr %t31, i64 %t28
  %t33 = load ptr, ptr %t32, !tbaa !39
  %t35 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3asymWriter_2edecl(ptr %s0, ptr %v0, ptr %v2, ptr %v3, ptr %l4, ptr %t35, ptr %t33, ptr %a3)
  br label %bb9
bb9:
  br label %bb10
bb10:
  %t42 = load i64, ptr %l6, !tbaa !24
  %t44 = add i64 %t42, 1
  store i64 %t44, ptr %l6, !tbaa !24
  br label %bb5
bb11:
  br label %bb12
bb12:
  %t46 = load ptr, ptr %l0, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %t46, i8 93)
  br label %bb13
bb13:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/source:Span" @compiler_2fsession_2eWordAt(ptr %v0, { i64, ptr } %a0, i64 %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l13 = alloca i1
  %l14 = alloca { i64, ptr }
  %l18 = alloca i1
  %l31 = alloca i1
  %l32 = alloca { i64, ptr }
  %l35 = alloca i1
  %l42 = alloca i1
  %l43 = alloca { i64, ptr }
  %l46 = alloca i1
  %l51 = alloca %"compiler/source:Span"
  %l56 = alloca %"compiler/source:Span"
  %s0 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %rv = alloca %"compiler/source:Span"
  store { i64, ptr } %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i64, ptr %l1, !tbaa !24
  store i64 %t1, ptr %l2, !tbaa !24
  %t3 = load i64, ptr %l2, !tbaa !24
  %t4 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 0
  %t9 = icmp sgt i64 %t3, %t6
  br i1 %t9, label %bb1, label %bb2
bb1:
  %t11 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t13 = extractvalue { i64, ptr } %t11, 0
  store i64 %t13, ptr %l2, !tbaa !24
  br label %bb3
bb2:
  br label %bb3
bb3:
  br label %bb4
bb4:
  %t15 = load i64, ptr %l2, !tbaa !24
  %t17 = icmp sgt i64 %t15, 0
  br i1 %t17, label %bb5, label %bb6
bb5:
  %t19 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t19, ptr %l14, !tbaa !27
  %t20 = load i64, ptr %l2, !tbaa !24
  %t22 = sub i64 %t20, 1
  %t24 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !27
  %t26 = getelementptr i8, ptr %t25, i64 %t22
  %t27 = load i8, ptr %t26, !tbaa !32
  %t29 = call i1 @compiler_2fsession_2eWordChar(i8 %t27)
  store i1 %t29, ptr %l18
  br label %bb7
bb6:
  store i1 false, ptr %l13, !tbaa !21
  br label %bb8
bb7:
  %t30 = load i1, ptr %l18, !tbaa !21
  store i1 %t30, ptr %l13, !tbaa !21
  br label %bb8
bb8:
  %t31 = load i1, ptr %l13, !tbaa !21
  %t32 = xor i1 %t31, true
  br i1 %t32, label %bb9, label %bb10
bb9:
  br label %bb13
bb10:
  br label %bb11
bb11:
  %t34 = load i64, ptr %l2, !tbaa !24
  %t36 = sub i64 %t34, 1
  store i64 %t36, ptr %l2, !tbaa !24
  br label %bb12
bb12:
  br label %bb4
bb13:
  %t38 = load i64, ptr %l1, !tbaa !24
  store i64 %t38, ptr %l3, !tbaa !24
  %t40 = load i64, ptr %l3, !tbaa !24
  %t41 = load i64, ptr %l2, !tbaa !24
  %t44 = icmp slt i64 %t40, %t41
  br i1 %t44, label %bb14, label %bb15
bb14:
  %t46 = load i64, ptr %l2, !tbaa !24
  store i64 %t46, ptr %l3, !tbaa !24
  br label %bb16
bb15:
  br label %bb16
bb16:
  br label %bb17
bb17:
  %t48 = load i64, ptr %l3, !tbaa !24
  %t49 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t51 = extractvalue { i64, ptr } %t49, 0
  %t54 = icmp slt i64 %t48, %t51
  br i1 %t54, label %bb18, label %bb19
bb18:
  %t56 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t56, ptr %l32, !tbaa !27
  %t57 = load i64, ptr %l3, !tbaa !24
  %t59 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t60 = load ptr, ptr %t59, !tbaa !27
  %t61 = getelementptr i8, ptr %t60, i64 %t57
  %t62 = load i8, ptr %t61, !tbaa !32
  %t64 = call i1 @compiler_2fsession_2eWordChar(i8 %t62)
  store i1 %t64, ptr %l35
  br label %bb20
bb19:
  store i1 false, ptr %l31, !tbaa !21
  br label %bb21
bb20:
  %t65 = load i1, ptr %l35, !tbaa !21
  store i1 %t65, ptr %l31, !tbaa !21
  br label %bb21
bb21:
  %t66 = load i1, ptr %l31, !tbaa !21
  %t67 = xor i1 %t66, true
  br i1 %t67, label %bb22, label %bb23
bb22:
  br label %bb26
bb23:
  br label %bb24
bb24:
  %t69 = load i64, ptr %l3, !tbaa !24
  %t71 = add i64 %t69, 1
  store i64 %t71, ptr %l3, !tbaa !24
  br label %bb25
bb25:
  br label %bb17
bb26:
  %t73 = load i64, ptr %l3, !tbaa !24
  %t74 = load i64, ptr %l2, !tbaa !24
  %t77 = icmp eq i64 %t73, %t74
  br i1 %t77, label %bb27, label %bb28
bb27:
  store i1 true, ptr %l42, !tbaa !21
  br label %bb30
bb28:
  %t79 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t79, ptr %l43, !tbaa !27
  %t80 = load i64, ptr %l2, !tbaa !24
  %t82 = getelementptr { i64, ptr }, ptr %l43, i32 0, i32 1
  %t83 = load ptr, ptr %t82, !tbaa !27
  %t84 = getelementptr i8, ptr %t83, i64 %t80
  %t85 = load i8, ptr %t84, !tbaa !32
  %t87 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t85)
  store i1 %t87, ptr %l46
  br label %bb29
bb29:
  %t88 = load i1, ptr %l46, !tbaa !21
  store i1 %t88, ptr %l42, !tbaa !21
  br label %bb30
bb30:
  %t89 = load i1, ptr %l42, !tbaa !21
  br i1 %t89, label %bb31, label %bb32
bb31:
  store %olang.scope zeroinitializer, ptr %s5
  %t90 = load i64, ptr %l1, !tbaa !24
  %t92 = trunc i64 %t90 to i32
  %t93 = load i64, ptr %l1, !tbaa !24
  %t95 = trunc i64 %t93 to i32
  %t98 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s5, i32 %t92, i32 %t95)
  store %"compiler/source:Span" %t98, ptr %l51
  br label %bb33
bb32:
  br label %bb34
bb33:
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  %t99 = load %"compiler/source:Span", ptr %l51
  store %"compiler/source:Span" %t99, ptr %rv
  br label %ret
bb34:
  %t100 = load i64, ptr %l2, !tbaa !24
  %t102 = trunc i64 %t100 to i32
  %t103 = load i64, ptr %l3, !tbaa !24
  %t105 = trunc i64 %t103 to i32
  %t108 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 %t102, i32 %t105)
  store %"compiler/source:Span" %t108, ptr %l56
  br label %bb35
bb35:
  call void @__olang_scope_close(ptr %s0)
  %t109 = load %"compiler/source:Span", ptr %l56
  store %"compiler/source:Span" %t109, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/source:Span", ptr %rv
  ret %"compiler/source:Span" %rr
}

define dso_local { i32, %"compiler/session:Found" } @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2eLookup(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i64
  %l5 = alloca %"compiler/source:Span"
  %l9 = alloca i64
  %l12 = alloca i1
  %l19 = alloca { i64, ptr }
  %l22 = alloca %"compiler/source:Span"
  %l30 = alloca { i64, [6 x i64] }
  %l31 = alloca %"compiler/session:Found"
  %l34 = alloca %"compiler/session:Found"
  %l35 = alloca i32
  %rv = alloca { i32, %"compiler/session:Found" }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i64 @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2eModuleOf(ptr %v0, ptr %v1, ptr %t1, { i64, ptr } %a1)
  store i64 %t5, ptr %l9
  br label %bb1
bb1:
  %t6 = load i64, ptr %l9, !tbaa !24
  store i64 %t6, ptr %l3, !tbaa !24
  %t7 = load i64, ptr %l3, !tbaa !24
  %t9 = icmp slt i64 %t7, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l12, !tbaa !21
  br label %bb4
bb3:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/session:Analysis", ptr %t11, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !29
  %t16 = icmp eq ptr %t14, null
  store i1 %t16, ptr %l12, !tbaa !21
  br label %bb4
bb4:
  %t18 = load i1, ptr %l12, !tbaa !21
  br i1 %t18, label %bb5, label %bb6
bb5:
  %t20 = insertvalue { i32, %"compiler/session:Found" } zeroinitializer, i32 65536, 0
  store { i32, %"compiler/session:Found" } %t20, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = load i64, ptr %l3, !tbaa !24
  %t25 = call { i64, ptr } @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2eTextOf(ptr %v0, ptr %v0, ptr %t21, i64 %t22)
  store { i64, ptr } %t25, ptr %l19
  br label %bb8
bb8:
  %t26 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t31 = call %"compiler/source:Span" @compiler_2fsession_2eWordAt(ptr %v0, { i64, ptr } %t26, i64 %a2)
  store %"compiler/source:Span" %t31, ptr %l22
  br label %bb9
bb9:
  %t32 = load %"compiler/source:Span", ptr %l22
  store %"compiler/source:Span" %t32, ptr %l5
  %t33 = getelementptr %"compiler/source:Span", ptr %l5, i32 0, i32 0
  %t34 = load i32, ptr %t33, !tbaa !23
  %t35 = getelementptr %"compiler/source:Span", ptr %l5, i32 0, i32 1
  %t36 = load i32, ptr %t35, !tbaa !23
  %t39 = icmp eq i32 %t34, %t36
  br i1 %t39, label %bb10, label %bb11
bb10:
  %t42 = insertvalue { i32, %"compiler/session:Found" } zeroinitializer, i32 65536, 0
  store { i32, %"compiler/session:Found" } %t42, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t44 = load i64, ptr %l3, !tbaa !24
  %t45 = load %"compiler/source:Span", ptr %l5
  %t49 = call { i64, [6 x i64] } @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2etarget(ptr %v0, ptr %v0, ptr %t43, i64 %t44, %"compiler/source:Span" %t45)
  store { i64, [6 x i64] } %t49, ptr %l30
  br label %bb13
bb13:
  %t50 = load { i64, [6 x i64] }, ptr %l30
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t55 = call { i32, %"compiler/session:Found" } @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2edescribe(ptr %v0, ptr %v0, ptr %v2, ptr %t51, { i64, [6 x i64] } %t50)
  %t56 = extractvalue { i32, %"compiler/session:Found" } %t55, 1
  %t57 = extractvalue { i32, %"compiler/session:Found" } %t55, 0
  store i32 %t57, ptr %l35
  %t58 = icmp ne i32 %t57, 0
  br i1 %t58, label %bb15, label %ok.59, !prof !99
ok.59:
  store %"compiler/session:Found" %t56, ptr %l34
  br label %bb14
bb14:
  %t60 = load %"compiler/session:Found", ptr %l34
  store %"compiler/session:Found" %t60, ptr %l31
  br label %bb16
bb15:
  %t61 = load i32, ptr %l35, !tbaa !23
  %t62 = lshr i32 %t61, 16
  %t63 = and i32 %t61, 65535
  %t64 = icmp eq i32 %t62, 1
  %t65 = select i1 %t64, i32 1, i32 0
  %t66 = icmp eq i32 %t61, 0
  %t67 = shl i32 %t65, 16
  %t68 = or i32 %t67, %t63
  %t69 = select i1 %t66, i32 0, i32 %t68
  %t71 = insertvalue { i32, %"compiler/session:Found" } zeroinitializer, i32 %t69, 0
  store { i32, %"compiler/session:Found" } %t71, ptr %rv
  br label %ret
bb16:
  %t72 = load %"compiler/session:Found", ptr %l31
  %t73 = insertvalue { i32, %"compiler/session:Found" } zeroinitializer, %"compiler/session:Found" %t72, 1
  store { i32, %"compiler/session:Found" } %t73, ptr %rv
  br label %ret
ret:
  %rr = load { i32, %"compiler/session:Found" }, ptr %rv
  ret { i32, %"compiler/session:Found" } %rr
}

define dso_local void @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2eNames(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, { i64, ptr } %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca i64
  %l11 = alloca %"compiler/typed:Local"
  %l12 = alloca ptr
  %l13 = alloca i64
  %l14 = alloca %"compiler/load:Import"
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca ptr
  %l22 = alloca i64
  %l23 = alloca i64
  %l27 = alloca i64
  %l30 = alloca i1
  %l38 = alloca ptr
  %l48 = alloca i64
  %l50 = alloca i64
  %l55 = alloca ptr
  %l60 = alloca i1
  %l66 = alloca i1
  %l74 = alloca i64
  %l76 = alloca i64
  %l81 = alloca %"compiler/typed:Local"
  %l84 = alloca i1
  %l91 = alloca i1
  %l94 = alloca i1
  %l97 = alloca ptr
  %l108 = alloca { i64, ptr }
  %l109 = alloca i64
  %l116 = alloca { i64, ptr }
  %l129 = alloca ptr
  %l132 = alloca i64
  %l134 = alloca i64
  %l139 = alloca %"compiler/load:Import"
  %l149 = alloca i64
  %l153 = alloca i64
  %l156 = alloca i64
  %l178 = alloca ptr
  %s8 = alloca %olang.scope
  %s19 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i64 @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2eModuleOf(ptr %v0, ptr %v2, ptr %t1, { i64, ptr } %a2)
  store i64 %t5, ptr %l27
  br label %bb1
bb1:
  %t6 = load i64, ptr %l27, !tbaa !24
  store i64 %t6, ptr %l4, !tbaa !24
  %t7 = load i64, ptr %l4, !tbaa !24
  %t9 = icmp slt i64 %t7, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l30, !tbaa !21
  br label %bb4
bb3:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/session:Analysis", ptr %t11, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !29
  %t16 = icmp eq ptr %t14, null
  store i1 %t16, ptr %l30, !tbaa !21
  br label %bb4
bb4:
  %t18 = load i1, ptr %l30, !tbaa !21
  br i1 %t18, label %bb5, label %bb6
bb5:
  br label %ret
bb6:
  br label %bb7
bb7:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/session:Analysis", ptr %t19, i32 0, i32 0
  %t22 = load ptr, ptr %t21, !tbaa !29
  %t24 = getelementptr %"compiler/load:Loader", ptr %t22, i32 0, i32 10
  %t25 = load i64, ptr %l4, !tbaa !24
  %t28 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t24, i64 %t25)
  store ptr %t28, ptr %l38
  br label %bb8
bb8:
  %t29 = load ptr, ptr %l38, !tbaa !29
  %t31 = getelementptr %"compiler/load:Module", ptr %t29, i32 0, i32 4
  %t32 = load i64, ptr %t31, !tbaa !24
  store i64 %t32, ptr %l5, !tbaa !24
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/session:Analysis", ptr %t34, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !29
  %t39 = icmp eq ptr %t37, null
  br i1 %t39, label %bb9, label %bb10
bb9:
  call void @__olang_check_failed(ptr @olang_loc_804f8b0fb45e435f_c5484f8454187243)
  unreachable
bb10:
  br label %bb11
bb11:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/session:Analysis", ptr %t41, i32 0, i32 1
  %t44 = load ptr, ptr %t43, !tbaa !29
  %t47 = getelementptr %"compiler/check:Checker", ptr %t44, i32 0, i32 14
  store ptr %t47, ptr %l6, !tbaa !29
  store i64 0, ptr %l7, !tbaa !24
  br label %bb12
bb12:
  %t49 = load i64, ptr %l7, !tbaa !24
  store i64 %t49, ptr %l48, !tbaa !24
  %t50 = load ptr, ptr %l6, !tbaa !29
  %t52 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t50)
  store i64 %t52, ptr %l50
  br label %bb13
bb13:
  %t53 = load i64, ptr %l48, !tbaa !24
  %t54 = load i64, ptr %l50, !tbaa !24
  %t55 = icmp slt i64 %t53, %t54
  %t57 = xor i1 %t55, true
  br i1 %t57, label %bb14, label %bb15
bb14:
  br label %bb60
bb15:
  br label %bb16
bb16:
  %t59 = load ptr, ptr %l6, !tbaa !29
  %t60 = load i64, ptr %l7, !tbaa !24
  %t63 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t59, i64 %t60)
  store ptr %t63, ptr %l55
  br label %bb17
bb17:
  %t64 = load ptr, ptr %l55, !tbaa !29
  store ptr %t64, ptr %l8, !tbaa !29
  %t65 = load ptr, ptr %l8, !tbaa !29
  %t67 = getelementptr %"compiler/typed:Body", ptr %t65, i32 0, i32 3
  %t68 = load i64, ptr %t67, !tbaa !24
  %t69 = load i64, ptr %l5, !tbaa !24
  %t72 = icmp ne i64 %t68, %t69
  br i1 %t72, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l60, !tbaa !21
  br label %bb20
bb19:
  %t74 = load ptr, ptr %l8, !tbaa !29
  %t76 = getelementptr %"compiler/typed:Body", ptr %t74, i32 0, i32 4
  %t77 = getelementptr %"compiler/source:Span", ptr %t76, i32 0, i32 0
  %t78 = load i32, ptr %t77, !tbaa !23
  %t80 = sext i32 %t78 to i64
  %t81 = load i64, ptr %l3, !tbaa !24
  %t84 = icmp sgt i64 %t80, %t81
  store i1 %t84, ptr %l60, !tbaa !21
  br label %bb20
bb20:
  %t86 = load i1, ptr %l60, !tbaa !21
  br i1 %t86, label %bb21, label %bb22
bb21:
  store i1 true, ptr %l66, !tbaa !21
  br label %bb23
bb22:
  %t87 = load i64, ptr %l3, !tbaa !24
  %t88 = load ptr, ptr %l8, !tbaa !29
  %t90 = getelementptr %"compiler/typed:Body", ptr %t88, i32 0, i32 4
  %t91 = getelementptr %"compiler/source:Span", ptr %t90, i32 0, i32 1
  %t92 = load i32, ptr %t91, !tbaa !23
  %t94 = sext i32 %t92 to i64
  %t97 = icmp sgt i64 %t87, %t94
  store i1 %t97, ptr %l66, !tbaa !21
  br label %bb23
bb23:
  %t99 = load i1, ptr %l66, !tbaa !21
  br i1 %t99, label %bb24, label %bb25
bb24:
  br label %bb59
bb25:
  br label %bb26
bb26:
  %t100 = load ptr, ptr %l8, !tbaa !29
  %t102 = getelementptr %"compiler/typed:Body", ptr %t100, i32 0, i32 7
  store ptr %t102, ptr %l9, !tbaa !29
  store i64 0, ptr %l10, !tbaa !24
  br label %bb27
bb27:
  %t104 = load i64, ptr %l10, !tbaa !24
  store i64 %t104, ptr %l74, !tbaa !24
  %t105 = load ptr, ptr %l9, !tbaa !29
  %t107 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eLen_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t105)
  store i64 %t107, ptr %l76
  br label %bb28
bb28:
  %t108 = load i64, ptr %l74, !tbaa !24
  %t109 = load i64, ptr %l76, !tbaa !24
  %t110 = icmp slt i64 %t108, %t109
  %t112 = xor i1 %t110, true
  br i1 %t112, label %bb29, label %bb30
bb29:
  br label %bb58
bb30:
  br label %bb31
bb31:
  %t114 = load ptr, ptr %l9, !tbaa !29
  %t115 = load i64, ptr %l10, !tbaa !24
  %t118 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t114, i64 %t115)
  store %"compiler/typed:Local" %t118, ptr %l81
  br label %bb32
bb32:
  %t119 = load %"compiler/typed:Local", ptr %l81
  store %"compiler/typed:Local" %t119, ptr %l11
  %t120 = getelementptr %"compiler/typed:Local", ptr %l11, i32 0, i32 0
  %t121 = load i32, ptr %t120, !tbaa !23
  %t123 = icmp eq i32 %t121, 0
  br i1 %t123, label %bb33, label %bb34
bb33:
  store i1 true, ptr %l84, !tbaa !21
  br label %bb35
bb34:
  %t125 = getelementptr %"compiler/typed:Local", ptr %l11, i32 0, i32 1
  %t126 = getelementptr %"compiler/source:Span", ptr %t125, i32 0, i32 0
  %t127 = load i32, ptr %t126, !tbaa !23
  %t129 = sext i32 %t127 to i64
  %t130 = load i64, ptr %l3, !tbaa !24
  %t133 = icmp sge i64 %t129, %t130
  store i1 %t133, ptr %l84, !tbaa !21
  br label %bb35
bb35:
  %t135 = load i1, ptr %l84, !tbaa !21
  br i1 %t135, label %bb36, label %bb37
bb36:
  br label %bb57
bb37:
  br label %bb38
bb38:
  %t136 = getelementptr %"compiler/typed:Local", ptr %l11, i32 0, i32 4
  %t137 = load i32, ptr %t136, !range !{i32 0, i32 7}
  %t139 = trunc i64 0 to i32
  %t140 = icmp eq i32 %t137, %t139
  br i1 %t140, label %bb39, label %bb40
bb39:
  store i1 true, ptr %l91, !tbaa !21
  br label %bb41
bb40:
  %t142 = getelementptr %"compiler/typed:Local", ptr %l11, i32 0, i32 4
  %t143 = load i32, ptr %t142, !range !{i32 0, i32 7}
  %t145 = trunc i64 1 to i32
  %t146 = icmp eq i32 %t143, %t145
  store i1 %t146, ptr %l91, !tbaa !21
  br label %bb41
bb41:
  %t148 = load i1, ptr %l91, !tbaa !21
  br i1 %t148, label %bb42, label %bb43
bb42:
  store i1 true, ptr %l94, !tbaa !21
  br label %bb44
bb43:
  %t149 = getelementptr %"compiler/typed:Local", ptr %l11, i32 0, i32 4
  %t150 = load i32, ptr %t149, !range !{i32 0, i32 7}
  %t152 = trunc i64 4 to i32
  %t153 = icmp eq i32 %t150, %t152
  store i1 %t153, ptr %l94, !tbaa !21
  br label %bb44
bb44:
  %t155 = load i1, ptr %l94, !tbaa !21
  br i1 %t155, label %bb45, label %bb46
bb45:
  store %olang.scope zeroinitializer, ptr %s8
  %t156 = load ptr, ptr %l1, !tbaa !29
  store ptr %t156, ptr %l97, !tbaa !29
  %t157 = load ptr, ptr %l0, !tbaa !29
  %t159 = getelementptr %"compiler/session:Analysis", ptr %t157, i32 0, i32 1
  %t160 = load ptr, ptr %t159, !tbaa !29
  %t162 = icmp eq ptr %t160, null
  br i1 %t162, label %bb47, label %bb48
bb46:
  br label %bb56
bb47:
  call void @__olang_check_failed(ptr @olang_loc_9033262c592f27c0_922b790dfcbd6cb4)
  unreachable
bb48:
  br label %bb49
bb49:
  %t164 = load ptr, ptr %l0, !tbaa !29
  %t166 = getelementptr %"compiler/session:Analysis", ptr %t164, i32 0, i32 1
  %t167 = load ptr, ptr %t166, !tbaa !29
  %t170 = getelementptr %"compiler/check:Checker", ptr %t167, i32 0, i32 1
  %t171 = load ptr, ptr %t170, !tbaa !29
  %t173 = getelementptr %"compiler/generic:Program", ptr %t171, i32 0, i32 0
  %t174 = load ptr, ptr %t173, !tbaa !29
  %t176 = getelementptr %"compiler/load:Loader", ptr %t174, i32 0, i32 3
  %t177 = load ptr, ptr %t176, !tbaa !29
  %t178 = getelementptr %"compiler/typed:Local", ptr %l11, i32 0, i32 0
  %t179 = load i32, ptr %t178, !tbaa !23
  %t182 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v1, ptr %t177, i32 %t179)
  store { i64, ptr } %t182, ptr %l108
  br label %bb50
bb50:
  %t183 = load i64, ptr @G_2ecompiler_2fsession_2eCompVariable, !tbaa !24
  store i64 %t183, ptr %l109, !tbaa !24
  %t184 = load ptr, ptr %l0, !tbaa !29
  %t186 = getelementptr %"compiler/session:Analysis", ptr %t184, i32 0, i32 1
  %t187 = load ptr, ptr %t186, !tbaa !29
  %t189 = icmp eq ptr %t187, null
  br i1 %t189, label %bb51, label %bb52
bb51:
  call void @__olang_check_failed(ptr @olang_loc_9033262c592f27c0_922b790dfcbd6cb4)
  unreachable
bb52:
  br label %bb53
bb53:
  %t191 = load ptr, ptr %l0, !tbaa !29
  %t193 = getelementptr %"compiler/session:Analysis", ptr %t191, i32 0, i32 1
  %t194 = load ptr, ptr %t193, !tbaa !29
  %t195 = getelementptr %"compiler/typed:Local", ptr %l11, i32 0, i32 2
  %t196 = load i32, ptr %t195, !tbaa !23
  %t199 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eTy(ptr %v0, ptr %s8, ptr %t194, i32 %t196)
  store { i64, ptr } %t199, ptr %l116
  br label %bb54
bb54:
  %t200 = load { i64, ptr }, ptr %l116, !tbaa !27
  %t201 = extractvalue { i64, ptr } %t200, 0
  %t202 = extractvalue { i64, ptr } %t200, 1
  %t203 = mul i64 %t201, 1
  %t204 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t203)
  call void @llvm.memcpy.p0.p0.i64(ptr %t204, ptr %t202, i64 %t203, i1 false)
  %t205 = insertvalue { i64, ptr } undef, i64 %t201, 0
  %t206 = insertvalue { i64, ptr } %t205, ptr %t204, 1
  %t207 = load ptr, ptr %l97, !tbaa !29
  %t208 = load { i64, ptr }, ptr %l108, !tbaa !27
  %t209 = load i64, ptr %l109, !tbaa !24
  call void @compiler_2fsession_2ecompiler_2fsession_3aItems_2eAdd(ptr %v1, ptr %v1, ptr %s8, ptr %t207, { i64, ptr } %t208, i64 %t209, { i64, ptr } %t206)
  br label %bb55
bb55:
  call void @__olang_scope_close(ptr %s8)
  br label %bb56
bb56:
  br label %bb57
bb57:
  %t211 = load i64, ptr %l10, !tbaa !24
  %t213 = add i64 %t211, 1
  store i64 %t213, ptr %l10, !tbaa !24
  br label %bb27
bb58:
  br label %bb59
bb59:
  %t215 = load i64, ptr %l7, !tbaa !24
  %t217 = add i64 %t215, 1
  store i64 %t217, ptr %l7, !tbaa !24
  br label %bb12
bb60:
  %t219 = load ptr, ptr %l0, !tbaa !29
  %t220 = load ptr, ptr %l1, !tbaa !29
  %t221 = load i64, ptr %l4, !tbaa !24
  call void @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2emoduleNames(ptr %v0, ptr %v1, ptr %t219, ptr %t220, i64 %t221, i1 true)
  br label %bb61
bb61:
  %t225 = load ptr, ptr %l0, !tbaa !29
  %t227 = getelementptr %"compiler/session:Analysis", ptr %t225, i32 0, i32 0
  %t228 = load ptr, ptr %t227, !tbaa !29
  %t230 = getelementptr %"compiler/load:Loader", ptr %t228, i32 0, i32 10
  %t231 = load i64, ptr %l4, !tbaa !24
  %t234 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t230, i64 %t231)
  store ptr %t234, ptr %l129
  br label %bb62
bb62:
  %t235 = load ptr, ptr %l129, !tbaa !29
  %t237 = getelementptr %"compiler/load:Module", ptr %t235, i32 0, i32 11
  store ptr %t237, ptr %l12, !tbaa !29
  store i64 0, ptr %l13, !tbaa !24
  br label %bb63
bb63:
  %t239 = load i64, ptr %l13, !tbaa !24
  store i64 %t239, ptr %l132, !tbaa !24
  %t240 = load ptr, ptr %l12, !tbaa !29
  %t242 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eLen_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %t240)
  store i64 %t242, ptr %l134
  br label %bb64
bb64:
  %t243 = load i64, ptr %l132, !tbaa !24
  %t244 = load i64, ptr %l134, !tbaa !24
  %t245 = icmp slt i64 %t243, %t244
  %t247 = xor i1 %t245, true
  br i1 %t247, label %bb65, label %bb66
bb65:
  br label %bb71
bb66:
  br label %bb67
bb67:
  %t249 = load ptr, ptr %l12, !tbaa !29
  %t250 = load i64, ptr %l13, !tbaa !24
  %t253 = call %"compiler/load:Import" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eAt_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %v0, ptr %t249, i64 %t250)
  store %"compiler/load:Import" %t253, ptr %l139
  br label %bb68
bb68:
  %t254 = load %"compiler/load:Import", ptr %l139
  store %"compiler/load:Import" %t254, ptr %l14
  %t255 = load ptr, ptr %l1, !tbaa !29
  %t256 = getelementptr %"compiler/load:Import", ptr %l14, i32 0, i32 2
  %t257 = load { i64, ptr }, ptr %t256, !tbaa !27
  %t258 = load i64, ptr @G_2ecompiler_2fsession_2eCompModule, !tbaa !24
  %t259 = getelementptr %"compiler/load:Import", ptr %l14, i32 0, i32 3
  %t260 = load { i64, ptr }, ptr %t259, !tbaa !27
  call void @compiler_2fsession_2ecompiler_2fsession_3aItems_2eAdd(ptr %v1, ptr %v0, ptr %v0, ptr %t255, { i64, ptr } %t257, i64 %t258, { i64, ptr } %t260)
  br label %bb69
bb69:
  br label %bb70
bb70:
  %t265 = load i64, ptr %l13, !tbaa !24
  %t267 = add i64 %t265, 1
  store i64 %t267, ptr %l13, !tbaa !24
  br label %bb63
bb71:
  store i64 0, ptr %l15, !tbaa !24
  %t269 = load ptr, ptr %l0, !tbaa !29
  %t271 = getelementptr %"compiler/session:Analysis", ptr %t269, i32 0, i32 0
  %t272 = load ptr, ptr %t271, !tbaa !29
  %t274 = getelementptr %"compiler/load:Loader", ptr %t272, i32 0, i32 10
  %t276 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t274)
  store i64 %t276, ptr %l149
  br label %bb72
bb72:
  %t277 = load i64, ptr %l149, !tbaa !24
  store i64 %t277, ptr %l16, !tbaa !24
  store i64 1, ptr %l17, !tbaa !24
  %t278 = load i64, ptr %l16, !tbaa !24
  %t279 = load i64, ptr %l15, !tbaa !24
  %t282 = icmp sgt i64 %t278, %t279
  br i1 %t282, label %bb73, label %bb74
bb73:
  %t284 = load i64, ptr %l17, !tbaa !24
  %t286 = icmp sgt i64 %t284, 0
  br i1 %t286, label %bb75, label %bb76
bb74:
  store i64 0, ptr %l153, !tbaa !24
  br label %bb78
bb75:
  %t288 = load i64, ptr %l16, !tbaa !24
  %t289 = load i64, ptr %l15, !tbaa !24
  %t292 = sub i64 %t288, %t289
  %t293 = load i64, ptr %l17, !tbaa !24
  %t296 = add i64 %t292, %t293
  %t298 = sub i64 %t296, 1
  %t299 = load i64, ptr %l17, !tbaa !24
  %t302 = sdiv i64 %t298, %t299
  store i64 %t302, ptr %l156, !tbaa !24
  br label %bb77
bb76:
  store i64 0, ptr %l156, !tbaa !24
  br label %bb77
bb77:
  %t304 = load i64, ptr %l156, !tbaa !24
  store i64 %t304, ptr %l153, !tbaa !24
  br label %bb78
bb78:
  %t305 = load i64, ptr %l153, !tbaa !24
  store i64 %t305, ptr %l18, !tbaa !24
  store i64 0, ptr %l19, !tbaa !24
  br label %bb79
bb79:
  %t306 = load i64, ptr %l19, !tbaa !24
  %t307 = load i64, ptr %l18, !tbaa !24
  %t310 = icmp slt i64 %t306, %t307
  %t312 = xor i1 %t310, true
  br i1 %t312, label %bb80, label %bb81
bb80:
  br label %bb89
bb81:
  br label %bb82
bb82:
  %t314 = load i64, ptr %l15, !tbaa !24
  %t315 = load i64, ptr %l19, !tbaa !24
  %t316 = load i64, ptr %l17, !tbaa !24
  %t319 = mul i64 %t315, %t316
  %t322 = add i64 %t314, %t319
  store i64 %t322, ptr %l20, !tbaa !24
  %t324 = load ptr, ptr %l0, !tbaa !29
  %t326 = getelementptr %"compiler/session:Analysis", ptr %t324, i32 0, i32 0
  %t327 = load ptr, ptr %t326, !tbaa !29
  %t329 = getelementptr %"compiler/load:Loader", ptr %t327, i32 0, i32 10
  %t330 = load i64, ptr %l20, !tbaa !24
  %t333 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t329, i64 %t330)
  store ptr %t333, ptr %l178
  br label %bb83
bb83:
  %t334 = load ptr, ptr %l178, !tbaa !29
  %t336 = getelementptr %"compiler/load:Module", ptr %t334, i32 0, i32 3
  %t337 = load i1, ptr %t336, !tbaa !21
  br i1 %t337, label %bb84, label %bb85
bb84:
  %t339 = load ptr, ptr %l0, !tbaa !29
  %t340 = load ptr, ptr %l1, !tbaa !29
  %t341 = load i64, ptr %l20, !tbaa !24
  call void @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2emoduleNames(ptr %v0, ptr %v1, ptr %t339, ptr %t340, i64 %t341, i1 false)
  br label %bb86
bb85:
  br label %bb87
bb86:
  br label %bb87
bb87:
  br label %bb88
bb88:
  %t345 = load i64, ptr %l19, !tbaa !24
  %t347 = add i64 %t345, 1
  store i64 %t347, ptr %l19, !tbaa !24
  br label %bb79
bb89:
  store ptr @G_2ecompiler_2fsession_2eKeywords, ptr %l21
  store i64 0, ptr %l22, !tbaa !24
  %t350 = load ptr, ptr %l21
  store i64 62, ptr %l23, !tbaa !24
  br label %bb90
bb90:
  store %olang.scope zeroinitializer, ptr %s19
  %t353 = load i64, ptr %l22, !tbaa !24
  %t354 = load i64, ptr %l23, !tbaa !24
  %t357 = icmp slt i64 %t353, %t354
  %t359 = xor i1 %t357, true
  br i1 %t359, label %bb91, label %bb92
bb91:
  call void @__olang_scope_close(ptr %s19)
  br label %bb96
bb92:
  br label %bb93
bb93:
  %t361 = load ptr, ptr %l21
  %t362 = load i64, ptr %l22, !tbaa !24
  %t365 = getelementptr [62 x { i64, ptr }], ptr %t361, i64 0, i64 %t362
  %t366 = load { i64, ptr }, ptr %t365, !tbaa !37
  %t368 = load ptr, ptr %l1, !tbaa !29
  %t370 = load i64, ptr @G_2ecompiler_2fsession_2eCompKeyword, !tbaa !24
  %t371 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2fsession_2ecompiler_2fsession_3aItems_2eAdd(ptr %v1, ptr %t371, ptr %s19, ptr %t368, { i64, ptr } %t366, i64 %t370, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d36, i32 0, i32 1) })
  br label %bb94
bb94:
  call void @__olang_scope_close(ptr %s19)
  br label %bb95
bb95:
  %t375 = load i64, ptr %l22, !tbaa !24
  %t377 = add i64 %t375, 1
  store i64 %t377, ptr %l22, !tbaa !24
  br label %bb90
bb96:
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2eTextOf(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l2 = alloca ptr
  %l7 = alloca ptr
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/session:Analysis", ptr %a0, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/load:Loader", ptr %t4, i32 0, i32 10
  %t10 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t6, i64 %a1)
  store ptr %t10, ptr %l7
  br label %bb1
bb1:
  %t11 = load ptr, ptr %l7, !tbaa !29
  %t13 = getelementptr %"compiler/load:Module", ptr %t11, i32 0, i32 6
  %t14 = load ptr, ptr %t13, !tbaa !29
  store ptr %t14, ptr %l2, !tbaa !29
  %t16 = load ptr, ptr %l2, !tbaa !29
  %t18 = icmp eq ptr %t16, null
  br i1 %t18, label %bb2, label %bb3
bb2:
  call void @__olang_check_failed(ptr @olang_loc_657f7671e8d24039_dcdf7cbf2572e335)
  unreachable
bb3:
  br label %bb4
bb4:
  %t20 = load ptr, ptr %l2, !tbaa !29
  %t23 = getelementptr %"compiler/source:Source", ptr %t20, i32 0, i32 1
  %t24 = load { i64, ptr }, ptr %t23, !tbaa !27
  store { i64, ptr } %t24, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2edeprecatedAt(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i1 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l6 = alloca i1
  %l9 = alloca i1
  %l14 = alloca ptr
  %l19 = alloca i64
  %l23 = alloca { i64, ptr }
  %l26 = alloca { i64, ptr }
  %l28 = alloca { i64, ptr }
  %l30 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = icmp slt i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb3
bb2:
  %t5 = load i64, ptr %l2, !tbaa !24
  %t7 = icmp slt i64 %t5, 0
  store i1 %t7, ptr %l6, !tbaa !21
  br label %bb3
bb3:
  %t9 = load i1, ptr %l6, !tbaa !21
  br i1 %t9, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb7
bb5:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/session:Analysis", ptr %t10, i32 0, i32 0
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t15 = getelementptr %"compiler/load:Loader", ptr %t13, i32 0, i32 10
  %t16 = load i64, ptr %l1, !tbaa !24
  %t19 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t15, i64 %t16)
  store ptr %t19, ptr %l14
  br label %bb6
bb6:
  %t20 = load ptr, ptr %l14, !tbaa !29
  %t22 = getelementptr %"compiler/load:Module", ptr %t20, i32 0, i32 6
  %t23 = load ptr, ptr %t22, !tbaa !29
  %t25 = icmp eq ptr %t23, null
  store i1 %t25, ptr %l9, !tbaa !21
  br label %bb7
bb7:
  %t27 = load i1, ptr %l9, !tbaa !21
  br i1 %t27, label %bb8, label %bb9
bb8:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t29 = ptrtoint ptr %s0 to i64
  store i64 %t29, ptr %l19, !tbaa !24
  %t30 = load i1, ptr @olang_2esole_2estd_2fprelude_2ftext_3aLineIter_2e0
  br i1 %t30, label %bb11, label %bb12
bb11:
  %t32 = call ptr @__olang_region_make(ptr %s0)
  %t33 = ptrtoint ptr %t32 to i64
  store i64 %t33, ptr %l19, !tbaa !24
  br label %bb12
bb12:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t35 = load i64, ptr %l1, !tbaa !24
  %t38 = call { i64, ptr } @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2eTextOf(ptr %v0, ptr %v0, ptr %t34, i64 %t35)
  store { i64, ptr } %t38, ptr %l23
  br label %bb13
bb13:
  %t39 = load i64, ptr %l2, !tbaa !24
  %t41 = load i64, ptr %l19
  %t42 = inttoptr i64 %t41 to ptr
  %t43 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t46 = call { i64, ptr } @compiler_2fdoc_2eComment(ptr %v0, ptr %t42, { i64, ptr } %t43, i64 %t39, i1 %a3)
  store { i64, ptr } %t46, ptr %l26
  br label %bb14
bb14:
  %t47 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t48 = load i64, ptr %l19
  %t49 = inttoptr i64 %t48 to ptr
  %t50 = extractvalue { i64, ptr } %t47, 0
  %t51 = extractvalue { i64, ptr } %t47, 1
  %t52 = mul i64 %t50, 1
  %t53 = call ptr @__olang_scope_alloc(ptr %t49, i64 %t52)
  call void @llvm.memcpy.p0.p0.i64(ptr %t53, ptr %t51, i64 %t52, i1 false)
  %t54 = insertvalue { i64, ptr } undef, i64 %t50, 0
  %t55 = insertvalue { i64, ptr } %t54, ptr %t53, 1
  %t57 = call { i64, ptr } @compiler_2fdoc_2eDeprecation(ptr %s0, ptr %s0, { i64, ptr } %t55)
  store { i64, ptr } %t57, ptr %l28
  br label %bb15
bb15:
  %t58 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t59 = extractvalue { i64, ptr } %t58, 0
  %t60 = extractvalue { i64, ptr } %t58, 1
  %t61 = mul i64 %t59, 1
  %t62 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t61)
  call void @llvm.memcpy.p0.p0.i64(ptr %t62, ptr %t60, i64 %t61, i1 false)
  %t63 = insertvalue { i64, ptr } undef, i64 %t59, 0
  %t64 = insertvalue { i64, ptr } %t63, ptr %t62, 1
  %t66 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t64, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d37, i32 0, i32 1) })
  store i1 %t66, ptr %l30
  br label %bb16
bb16:
  %t67 = load i1, ptr %l30, !tbaa !21
  %t68 = xor i1 %t67, true
  call void @__olang_scope_close(ptr %s0)
  store i1 %t68, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i32, %"compiler/session:memberInfo" } @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2efield(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca { i64, [2 x i64] }
  %l10 = alloca i32
  %l11 = alloca %"compiler/typed:Local"
  %l12 = alloca i64
  %l13 = alloca { i64, ptr }
  %lp14 = alloca ptr
  %l15 = alloca { i64, ptr }
  %l26 = alloca i32
  %l29 = alloca i32
  %l37 = alloca i32
  %l46 = alloca i32
  %l58 = alloca i32
  %l64 = alloca i64
  %l66 = alloca i64
  %l71 = alloca ptr
  %l84 = alloca i32
  %l88 = alloca i1
  %l96 = alloca i32
  %l99 = alloca i1
  %l100 = alloca i64
  %l103 = alloca i64
  %l106 = alloca ptr
  %l110 = alloca i32
  %l112 = alloca %"compiler/typed:Local"
  %l116 = alloca i64
  %l122 = alloca { i64, ptr }
  %l125 = alloca { i64, ptr }
  %l126 = alloca { i64, ptr }
  %l128 = alloca i64
  %l130 = alloca i64
  %l131 = alloca i64
  %l145 = alloca { i64, ptr }
  %l152 = alloca ptr
  %l160 = alloca i32
  %l161 = alloca { i64, ptr }
  %l166 = alloca i32
  %l167 = alloca { i64, ptr }
  %l171 = alloca { i64, ptr }
  %l172 = alloca i32
  %l173 = alloca i64
  %l178 = alloca { i64, ptr }
  %l179 = alloca { i64, ptr }
  %l180 = alloca i64
  %l186 = alloca ptr
  %l193 = alloca %"compiler/session:memberInfo"
  %s4 = alloca %olang.scope
  %rv = alloca { i32, %"compiler/session:memberInfo" }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/session:Analysis", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l3, !tbaa !29
  %t6 = load ptr, ptr %l3, !tbaa !29
  %t8 = icmp eq ptr %t6, null
  br i1 %t8, label %bb1, label %bb2
bb1:
  call void @__olang_check_failed(ptr @olang_loc_b16f220e0018fd17_df8b0dd8cdfc1943)
  unreachable
bb2:
  br label %bb3
bb3:
  %t10 = load ptr, ptr %l3, !tbaa !29
  %t13 = getelementptr %"compiler/check:Checker", ptr %t10, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !29
  %t16 = getelementptr %"compiler/generic:Program", ptr %t14, i32 0, i32 2
  %t17 = load i32, ptr %l1, !tbaa !23
  %t20 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t16, i32 %t17)
  store i32 %t20, ptr %l26
  br label %bb4
bb4:
  %t21 = load i32, ptr %l26, !range !{i32 0, i32 33}
  %t23 = trunc i64 20 to i32
  %t24 = icmp eq i32 %t21, %t23
  br i1 %t24, label %bb5, label %bb6
bb5:
  %t26 = load ptr, ptr %l3, !tbaa !29
  %t28 = icmp eq ptr %t26, null
  br i1 %t28, label %bb7, label %bb8
bb6:
  %t30 = load i32, ptr %l1, !tbaa !23
  store i32 %t30, ptr %l29, !tbaa !23
  br label %bb11
bb7:
  call void @__olang_check_failed(ptr @olang_loc_b16f220e0018fd17_df8b0dd8cdfc1943)
  unreachable
bb8:
  br label %bb9
bb9:
  %t32 = load ptr, ptr %l3, !tbaa !29
  %t35 = getelementptr %"compiler/check:Checker", ptr %t32, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !29
  %t38 = getelementptr %"compiler/generic:Program", ptr %t36, i32 0, i32 2
  %t39 = load i32, ptr %l1, !tbaa !23
  %t42 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t38, i32 %t39)
  store i32 %t42, ptr %l37
  br label %bb10
bb10:
  %t43 = load i32, ptr %l37, !tbaa !23
  store i32 %t43, ptr %l29, !tbaa !23
  br label %bb11
bb11:
  %t44 = load i32, ptr %l29, !tbaa !23
  store i32 %t44, ptr %l4, !tbaa !23
  %t45 = load ptr, ptr %l3, !tbaa !29
  %t47 = icmp eq ptr %t45, null
  br i1 %t47, label %bb12, label %bb13
bb12:
  call void @__olang_check_failed(ptr @olang_loc_e81878307a0930f8_ac6e376276a113b4)
  unreachable
bb13:
  br label %bb14
bb14:
  %t49 = load ptr, ptr %l3, !tbaa !29
  %t52 = getelementptr %"compiler/check:Checker", ptr %t49, i32 0, i32 1
  %t53 = load ptr, ptr %t52, !tbaa !29
  %t55 = getelementptr %"compiler/generic:Program", ptr %t53, i32 0, i32 2
  %t56 = load i32, ptr %l4, !tbaa !23
  %t59 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t55, i32 %t56)
  store i32 %t59, ptr %l46
  br label %bb15
bb15:
  %t60 = load i32, ptr %l46, !range !{i32 0, i32 33}
  %t62 = trunc i64 18 to i32
  %t63 = icmp eq i32 %t60, %t62
  %t65 = xor i1 %t63, true
  br i1 %t65, label %bb16, label %bb17
bb16:
  %t68 = insertvalue { i32, %"compiler/session:memberInfo" } zeroinitializer, i32 65536, 0
  store { i32, %"compiler/session:memberInfo" } %t68, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  %t69 = load ptr, ptr %l3, !tbaa !29
  %t71 = icmp eq ptr %t69, null
  br i1 %t71, label %bb19, label %bb20
bb19:
  call void @__olang_check_failed(ptr @olang_loc_cf719ce72396210d_6e539aa1951515a9)
  unreachable
bb20:
  br label %bb21
bb21:
  %t73 = load ptr, ptr %l3, !tbaa !29
  %t76 = getelementptr %"compiler/check:Checker", ptr %t73, i32 0, i32 1
  %t77 = load ptr, ptr %t76, !tbaa !29
  %t79 = getelementptr %"compiler/generic:Program", ptr %t77, i32 0, i32 2
  %t80 = load i32, ptr %l4, !tbaa !23
  %t83 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t79, i32 %t80)
  store i32 %t83, ptr %l58
  br label %bb22
bb22:
  %t84 = load i32, ptr %l58, !tbaa !23
  store i32 %t84, ptr %l5, !tbaa !23
  %t85 = load ptr, ptr %l3, !tbaa !29
  %t87 = icmp eq ptr %t85, null
  br i1 %t87, label %bb23, label %bb24
bb23:
  call void @__olang_check_failed(ptr @olang_loc_90bed28a447e5726_404cd49f4fb329c2)
  unreachable
bb24:
  br label %bb25
bb25:
  %t89 = load ptr, ptr %l3, !tbaa !29
  %t92 = getelementptr %"compiler/check:Checker", ptr %t89, i32 0, i32 14
  store ptr %t92, ptr %l6, !tbaa !29
  store i64 0, ptr %l7, !tbaa !24
  br label %bb26
bb26:
  %t94 = load i64, ptr %l7, !tbaa !24
  store i64 %t94, ptr %l64, !tbaa !24
  %t95 = load ptr, ptr %l6, !tbaa !29
  %t97 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t95)
  store i64 %t97, ptr %l66
  br label %bb27
bb27:
  %t98 = load i64, ptr %l64, !tbaa !24
  %t99 = load i64, ptr %l66, !tbaa !24
  %t100 = icmp slt i64 %t98, %t99
  %t102 = xor i1 %t100, true
  br i1 %t102, label %bb28, label %bb29
bb28:
  br label %bb98
bb29:
  br label %bb30
bb30:
  %t104 = load ptr, ptr %l6, !tbaa !29
  %t105 = load i64, ptr %l7, !tbaa !24
  %t108 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t104, i64 %t105)
  store ptr %t108, ptr %l71
  br label %bb31
bb31:
  %t109 = load ptr, ptr %l71, !tbaa !29
  store ptr %t109, ptr %l8, !tbaa !29
  %t110 = load ptr, ptr %l8, !tbaa !29
  %t112 = getelementptr %"compiler/typed:Body", ptr %t110, i32 0, i32 1
  %t113 = load { i64, [2 x i64] }, ptr %t112
  store { i64, [2 x i64] } %t113, ptr %l9
  %t115 = load { i64, [2 x i64] }, ptr %l9
  %t117 = extractvalue { i64, [2 x i64] } %t115, 0
  %t118 = icmp eq i64 %t117, 1
  br i1 %t118, label %bb32, label %bb33
bb32:
  %t120 = getelementptr { i64, [2 x i64] }, ptr %l9, i32 0, i32 1
  %t121 = getelementptr { i32, i32 }, ptr %t120, i32 0, i32 0
  %t122 = load i32, ptr %t121
  store i32 %t122, ptr %l10, !tbaa !23
  br label %bb34
bb33:
  br label %bb91
bb34:
  store %olang.scope zeroinitializer, ptr %s4
  %t124 = load ptr, ptr %l3, !tbaa !29
  %t126 = icmp eq ptr %t124, null
  br i1 %t126, label %bb35, label %bb36
bb35:
  call void @__olang_check_failed(ptr @olang_loc_966fb838f56733ab_5416c5dd2a23270f)
  unreachable
bb36:
  br label %bb37
bb37:
  %t128 = load ptr, ptr %l3, !tbaa !29
  %t131 = getelementptr %"compiler/check:Checker", ptr %t128, i32 0, i32 1
  %t132 = load ptr, ptr %t131, !tbaa !29
  %t134 = getelementptr %"compiler/generic:Program", ptr %t132, i32 0, i32 2
  %t135 = load i32, ptr %l10, !tbaa !23
  %t138 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t134, i32 %t135)
  store i32 %t138, ptr %l84
  br label %bb38
bb38:
  %t139 = load i32, ptr %l84, !range !{i32 0, i32 33}
  %t141 = trunc i64 18 to i32
  %t142 = icmp eq i32 %t139, %t141
  %t144 = xor i1 %t142, true
  br i1 %t144, label %bb39, label %bb40
bb39:
  store i1 true, ptr %l88, !tbaa !21
  br label %bb45
bb40:
  %t146 = load ptr, ptr %l3, !tbaa !29
  %t148 = icmp eq ptr %t146, null
  br i1 %t148, label %bb41, label %bb42
bb41:
  call void @__olang_check_failed(ptr @olang_loc_966fb838f56733ab_5416c5dd2a23270f)
  unreachable
bb42:
  br label %bb43
bb43:
  %t150 = load ptr, ptr %l3, !tbaa !29
  %t153 = getelementptr %"compiler/check:Checker", ptr %t150, i32 0, i32 1
  %t154 = load ptr, ptr %t153, !tbaa !29
  %t156 = getelementptr %"compiler/generic:Program", ptr %t154, i32 0, i32 2
  %t157 = load i32, ptr %l10, !tbaa !23
  %t160 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t156, i32 %t157)
  store i32 %t160, ptr %l96
  br label %bb44
bb44:
  %t161 = load i32, ptr %l5, !tbaa !23
  %t162 = load i32, ptr %l96, !tbaa !23
  %t164 = icmp ne i32 %t162, %t161
  store i1 %t164, ptr %l88, !tbaa !21
  br label %bb45
bb45:
  %t166 = load i1, ptr %l88, !tbaa !21
  br i1 %t166, label %bb46, label %bb47
bb46:
  store i1 true, ptr %l99, !tbaa !21
  br label %bb49
bb47:
  %t167 = load i64, ptr %l2, !tbaa !24
  store i64 %t167, ptr %l100, !tbaa !24
  %t168 = load ptr, ptr %l8, !tbaa !29
  %t170 = getelementptr %"compiler/typed:Body", ptr %t168, i32 0, i32 10
  %t172 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t170)
  store i64 %t172, ptr %l103
  br label %bb48
bb48:
  %t173 = load i64, ptr %l100, !tbaa !24
  %t174 = load i64, ptr %l103, !tbaa !24
  %t175 = icmp sge i64 %t173, %t174
  store i1 %t175, ptr %l99, !tbaa !21
  br label %bb49
bb49:
  %t177 = load i1, ptr %l99, !tbaa !21
  br i1 %t177, label %bb50, label %bb51
bb50:
  call void @__olang_scope_close(ptr %s4)
  br label %bb97
bb51:
  br label %bb52
bb52:
  %t178 = load ptr, ptr %l8, !tbaa !29
  %t180 = getelementptr %"compiler/typed:Body", ptr %t178, i32 0, i32 7
  store ptr %t180, ptr %l106, !tbaa !29
  %t181 = load ptr, ptr %l8, !tbaa !29
  %t183 = getelementptr %"compiler/typed:Body", ptr %t181, i32 0, i32 10
  %t184 = load i64, ptr %l2, !tbaa !24
  %t187 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t183, i64 %t184)
  store i32 %t187, ptr %l110
  br label %bb53
bb53:
  %t188 = load i32, ptr %l110, !tbaa !23
  %t189 = sext i32 %t188 to i64
  %t190 = load ptr, ptr %l106, !tbaa !29
  %t192 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t190, i64 %t189)
  store %"compiler/typed:Local" %t192, ptr %l112
  br label %bb54
bb54:
  %t193 = load %"compiler/typed:Local", ptr %l112
  store %"compiler/typed:Local" %t193, ptr %l11
  %t194 = load ptr, ptr %l0, !tbaa !29
  %t195 = load ptr, ptr %l8, !tbaa !29
  %t197 = getelementptr %"compiler/typed:Body", ptr %t195, i32 0, i32 3
  %t198 = load i64, ptr %t197, !tbaa !24
  %t201 = call i64 @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2emoduleOfFile(ptr %v0, ptr %t194, i64 %t198)
  store i64 %t201, ptr %l116
  br label %bb55
bb55:
  %t202 = load i64, ptr %l116, !tbaa !24
  store i64 %t202, ptr %l12, !tbaa !24
  %t203 = load i64, ptr %l12, !tbaa !24
  %t205 = icmp slt i64 %t203, 0
  br i1 %t205, label %bb56, label %bb57
bb56:
  call void @__olang_scope_close(ptr %s4)
  %t208 = insertvalue { i32, %"compiler/session:memberInfo" } zeroinitializer, i32 65536, 0
  store { i32, %"compiler/session:memberInfo" } %t208, ptr %rv
  br label %ret
bb57:
  br label %bb58
bb58:
  %t209 = load ptr, ptr %l0, !tbaa !29
  %t210 = load i64, ptr %l12, !tbaa !24
  %t213 = call { i64, ptr } @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2eTextOf(ptr %v0, ptr %v0, ptr %t209, i64 %t210)
  store { i64, ptr } %t213, ptr %l122
  br label %bb59
bb59:
  %t214 = load { i64, ptr }, ptr %l122, !tbaa !27
  store { i64, ptr } %t214, ptr %l13, !tbaa !27
  %t215 = getelementptr %"compiler/typed:Local", ptr %l11, i32 0, i32 0
  %t216 = load i32, ptr %t215, !tbaa !23
  %t218 = icmp eq i32 %t216, 0
  br i1 %t218, label %bb60, label %bb61
bb60:
  %t220 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t220, ptr %l126, !tbaa !27
  %t221 = getelementptr %"compiler/typed:Local", ptr %l11, i32 0, i32 1
  %t222 = getelementptr %"compiler/source:Span", ptr %t221, i32 0, i32 0
  %t223 = load i32, ptr %t222, !tbaa !23
  %t225 = sext i32 %t223 to i64
  store i64 %t225, ptr %l128, !tbaa !24
  %t226 = getelementptr %"compiler/typed:Local", ptr %l11, i32 0, i32 1
  %t227 = getelementptr %"compiler/source:Span", ptr %t226, i32 0, i32 1
  %t228 = load i32, ptr %t227, !tbaa !23
  %t230 = sext i32 %t228 to i64
  store i64 %t230, ptr %l130, !tbaa !24
  %t231 = load { i64, ptr }, ptr %l126, !tbaa !27
  %t232 = extractvalue { i64, ptr } %t231, 0
  store i64 %t232, ptr %l131, !tbaa !24
  %t233 = load i64, ptr %l128, !tbaa !24
  %t234 = icmp sge i64 %t233, 0
  br i1 %t234, label %bb62, label %bb63
bb61:
  %t236 = load ptr, ptr %l3, !tbaa !29
  %t238 = icmp eq ptr %t236, null
  br i1 %t238, label %bb68, label %bb69
bb62:
  %t240 = load i64, ptr %l128, !tbaa !24
  %t241 = load i64, ptr %l130, !tbaa !24
  %t242 = icmp sle i64 %t240, %t241
  br i1 %t242, label %bb64, label %bb65
bb63:
  call void @__olang_check_failed(ptr @olang_loc_55b3f811cb7477b4_5dfc53d9875946d8)
  unreachable
bb64:
  %t244 = load i64, ptr %l130, !tbaa !24
  %t245 = load i64, ptr %l131, !tbaa !24
  %t246 = icmp sle i64 %t244, %t245
  br i1 %t246, label %bb66, label %bb67
bb65:
  call void @__olang_check_failed(ptr @olang_loc_55b3f811cb7477b4_5dfc53d9875946d8)
  unreachable
bb66:
  %t248 = getelementptr { i64, ptr }, ptr %l126, i32 0, i32 1
  %t249 = load ptr, ptr %t248, !tbaa !27
  %t250 = load i64, ptr %l128, !tbaa !24
  %t251 = load i64, ptr %l130, !tbaa !24
  %t252 = getelementptr i8, ptr %t249, i64 %t250
  %t253 = sub i64 %t251, %t250
  %t254 = insertvalue { i64, ptr } undef, i64 %t253, 0
  %t255 = insertvalue { i64, ptr } %t254, ptr %t252, 1
  %t257 = extractvalue { i64, ptr } %t255, 1
  %t258 = extractvalue { i64, ptr } %t255, 0
  %t259 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t258)
  call void @olang_textcopy(ptr %t259, ptr %t257, i64 %t258)
  %t260 = insertvalue { i64, ptr } undef, i64 %t258, 0
  %t261 = insertvalue { i64, ptr } %t260, ptr %t259, 1
  store { i64, ptr } %t261, ptr %l125, !tbaa !27
  br label %bb72
bb67:
  call void @__olang_check_failed(ptr @olang_loc_55b3f811cb7477b4_5dfc53d9875946d8)
  unreachable
bb68:
  call void @__olang_check_failed(ptr @olang_loc_4c52bbc768601131_90801d9bf2a41585)
  unreachable
bb69:
  br label %bb70
bb70:
  %t263 = load ptr, ptr %l3, !tbaa !29
  %t266 = getelementptr %"compiler/check:Checker", ptr %t263, i32 0, i32 1
  %t267 = load ptr, ptr %t266, !tbaa !29
  %t269 = getelementptr %"compiler/generic:Program", ptr %t267, i32 0, i32 0
  %t270 = load ptr, ptr %t269, !tbaa !29
  %t272 = getelementptr %"compiler/load:Loader", ptr %t270, i32 0, i32 3
  %t273 = load ptr, ptr %t272, !tbaa !29
  %t274 = getelementptr %"compiler/typed:Local", ptr %l11, i32 0, i32 0
  %t275 = load i32, ptr %t274, !tbaa !23
  %t278 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %s4, ptr %t273, i32 %t275)
  store { i64, ptr } %t278, ptr %l145
  br label %bb71
bb71:
  %t279 = load { i64, ptr }, ptr %l145, !tbaa !27
  %t280 = extractvalue { i64, ptr } %t279, 1
  %t281 = extractvalue { i64, ptr } %t279, 0
  %t282 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t281)
  call void @olang_textcopy(ptr %t282, ptr %t280, i64 %t281)
  %t283 = insertvalue { i64, ptr } undef, i64 %t281, 0
  %t284 = insertvalue { i64, ptr } %t283, ptr %t282, 1
  store { i64, ptr } %t284, ptr %l125, !tbaa !27
  br label %bb72
bb72:
  %t286 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t286, ptr %lp14
  %t287 = load { i64, ptr }, ptr %l125, !tbaa !27
  %t288 = load ptr, ptr %lp14
  store { i64, ptr } %t287, ptr %t288, !tbaa !27
  %t289 = load ptr, ptr %l3, !tbaa !29
  %t291 = icmp eq ptr %t289, null
  br i1 %t291, label %bb73, label %bb74
bb73:
  call void @__olang_check_failed(ptr @olang_loc_42ed37d296a6252a_791781e06ef43dde)
  unreachable
bb74:
  br label %bb75
bb75:
  %t293 = load ptr, ptr %l3, !tbaa !29
  %t296 = getelementptr %"compiler/check:Checker", ptr %t293, i32 0, i32 1
  %t297 = load ptr, ptr %t296, !tbaa !29
  %t299 = getelementptr %"compiler/generic:Program", ptr %t297, i32 0, i32 2
  store ptr %t299, ptr %l152, !tbaa !29
  %t300 = load ptr, ptr %l3, !tbaa !29
  %t302 = icmp eq ptr %t300, null
  br i1 %t302, label %bb76, label %bb77
bb76:
  call void @__olang_check_failed(ptr @olang_loc_42ed37d296a6252a_791781e06ef43dde)
  unreachable
bb77:
  br label %bb78
bb78:
  %t304 = load ptr, ptr %l3, !tbaa !29
  %t307 = getelementptr %"compiler/check:Checker", ptr %t304, i32 0, i32 1
  %t308 = load ptr, ptr %t307, !tbaa !29
  %t310 = getelementptr %"compiler/generic:Program", ptr %t308, i32 0, i32 2
  %t311 = load i32, ptr %l4, !tbaa !23
  %t314 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t310, i32 %t311)
  store i32 %t314, ptr %l160
  br label %bb79
bb79:
  %t315 = load ptr, ptr %l152, !tbaa !29
  %t316 = load i32, ptr %l160, !tbaa !23
  %t317 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t315, i32 %t316)
  store { i64, ptr } %t317, ptr %l161
  br label %bb80
bb80:
  %t318 = load { i64, ptr }, ptr %l161, !tbaa !27
  store { i64, ptr } %t318, ptr %l15, !tbaa !27
  %t319 = load i64, ptr %l2, !tbaa !24
  %t320 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t322 = extractvalue { i64, ptr } %t320, 0
  %t325 = icmp slt i64 %t319, %t322
  br i1 %t325, label %bb81, label %bb82
bb81:
  %t327 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t327, ptr %l167, !tbaa !27
  %t328 = load i64, ptr %l2, !tbaa !24
  %t330 = getelementptr { i64, ptr }, ptr %l167, i32 0, i32 1
  %t331 = load ptr, ptr %t330, !tbaa !27
  %t332 = getelementptr i32, ptr %t331, i64 %t328
  %t333 = load i32, ptr %t332, !tbaa !33
  store i32 %t333, ptr %l166, !tbaa !23
  br label %bb83
bb82:
  %t335 = getelementptr %"compiler/typed:Local", ptr %l11, i32 0, i32 2
  %t336 = load i32, ptr %t335, !tbaa !23
  store i32 %t336, ptr %l166, !tbaa !23
  br label %bb83
bb83:
  %t338 = load i32, ptr %l166, !tbaa !23
  %t339 = load ptr, ptr %lp14
  %t340 = load { i64, ptr }, ptr %t339, !tbaa !27
  store { i64, ptr } %t340, ptr %l171, !tbaa !27
  store i32 %t338, ptr %l172, !tbaa !23
  %t342 = ptrtoint ptr %v1 to i64
  store i64 %t342, ptr %l173, !tbaa !24
  %t343 = load i1, ptr @olang_2esole_2ecompiler_2fsession_3amemberInfo_2e2
  br i1 %t343, label %bb84, label %bb85
bb84:
  %t345 = call ptr @__olang_region_make(ptr %v1)
  %t346 = ptrtoint ptr %t345 to i64
  store i64 %t346, ptr %l173, !tbaa !24
  br label %bb85
bb85:
  %t347 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t348 = getelementptr %"compiler/typed:Local", ptr %l11, i32 0, i32 1
  %t349 = getelementptr %"compiler/source:Span", ptr %t348, i32 0, i32 0
  %t350 = load i32, ptr %t349, !tbaa !23
  %t352 = sext i32 %t350 to i64
  %t353 = load i64, ptr %l173
  %t354 = inttoptr i64 %t353 to ptr
  %t357 = call { i64, ptr } @compiler_2fdoc_2eComment(ptr %v0, ptr %t354, { i64, ptr } %t347, i64 %t352, i1 true)
  store { i64, ptr } %t357, ptr %l178
  br label %bb86
bb86:
  %t358 = load { i64, ptr }, ptr %l178, !tbaa !27
  %t359 = load i64, ptr %l173
  %t360 = inttoptr i64 %t359 to ptr
  %t361 = extractvalue { i64, ptr } %t358, 0
  %t362 = extractvalue { i64, ptr } %t358, 1
  %t363 = mul i64 %t361, 1
  %t364 = call ptr @__olang_scope_alloc(ptr %t360, i64 %t363)
  call void @llvm.memcpy.p0.p0.i64(ptr %t364, ptr %t362, i64 %t363, i1 false)
  %t365 = insertvalue { i64, ptr } undef, i64 %t361, 0
  %t366 = insertvalue { i64, ptr } %t365, ptr %t364, 1
  store { i64, ptr } %t366, ptr %l179, !tbaa !27
  %t367 = ptrtoint ptr %v1 to i64
  store i64 %t367, ptr %l180, !tbaa !24
  %t368 = load i1, ptr @olang_2esole_2ecompiler_2fsession_3amemberInfo_2e3
  br i1 %t368, label %bb87, label %bb88
bb87:
  %t370 = call ptr @__olang_region_make(ptr %v1)
  %t371 = ptrtoint ptr %t370 to i64
  store i64 %t371, ptr %l180, !tbaa !24
  br label %bb88
bb88:
  %t372 = load ptr, ptr %l0, !tbaa !29
  %t374 = getelementptr %"compiler/session:Analysis", ptr %t372, i32 0, i32 0
  %t375 = load ptr, ptr %t374, !tbaa !29
  %t377 = getelementptr %"compiler/load:Loader", ptr %t375, i32 0, i32 10
  %t378 = load i64, ptr %l12, !tbaa !24
  %t381 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t377, i64 %t378)
  store ptr %t381, ptr %l186
  br label %bb89
bb89:
  %t382 = load ptr, ptr %l186, !tbaa !29
  %t384 = getelementptr %"compiler/load:Module", ptr %t382, i32 0, i32 1
  %t385 = load { i64, ptr }, ptr %t384, !tbaa !27
  %t387 = extractvalue { i64, ptr } %t385, 1
  %t388 = extractvalue { i64, ptr } %t385, 0
  %t389 = load i64, ptr %l180
  %t390 = inttoptr i64 %t389 to ptr
  %t391 = call ptr @__olang_scope_alloc(ptr %t390, i64 %t388)
  call void @olang_textcopy(ptr %t391, ptr %t387, i64 %t388)
  %t392 = insertvalue { i64, ptr } undef, i64 %t388, 0
  %t393 = insertvalue { i64, ptr } %t392, ptr %t391, 1
  %t395 = load i64, ptr %l180
  %t396 = inttoptr i64 %t395 to ptr
  %t397 = extractvalue { i64, ptr } %t393, 0
  %t398 = extractvalue { i64, ptr } %t393, 1
  %t399 = mul i64 %t397, 1
  %t400 = call ptr @__olang_scope_alloc(ptr %t396, i64 %t399)
  call void @llvm.memcpy.p0.p0.i64(ptr %t400, ptr %t398, i64 %t399, i1 false)
  %t401 = insertvalue { i64, ptr } undef, i64 %t397, 0
  %t402 = insertvalue { i64, ptr } %t401, ptr %t400, 1
  %t403 = getelementptr %"compiler/typed:Local", ptr %l11, i32 0, i32 1
  %t404 = getelementptr %"compiler/source:Span", ptr %t403, i32 0, i32 0
  %t405 = load i32, ptr %t404, !tbaa !23
  %t407 = sext i32 %t405 to i64
  %t408 = load { i64, ptr }, ptr %l171, !tbaa !27
  %t409 = load i32, ptr %l172, !tbaa !23
  %t410 = load { i64, ptr }, ptr %l179, !tbaa !27
  %t413 = call %"compiler/session:memberInfo" @compiler_2fsession_3amemberInfo_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, { i64, ptr } %t408, i32 %t409, { i64, ptr } %t410, { i64, ptr } %t402, i64 %t407)
  store %"compiler/session:memberInfo" %t413, ptr %l193
  br label %bb90
bb90:
  call void @__olang_scope_close(ptr %s4)
  %t414 = load %"compiler/session:memberInfo", ptr %l193
  %t415 = insertvalue { i32, %"compiler/session:memberInfo" } zeroinitializer, %"compiler/session:memberInfo" %t414, 1
  store { i32, %"compiler/session:memberInfo" } %t415, ptr %rv
  br label %ret
bb91:
  br i1 true, label %bb92, label %bb93
bb92:
  br label %bb94
bb93:
  br label %bb95
bb94:
  br label %bb96
bb95:
  call void @__olang_check_failed(ptr @olang_loc_dff094d230471566_615c91b3ab3b0902)
  unreachable
bb96:
  br label %bb97
bb97:
  %t416 = load i64, ptr %l7, !tbaa !24
  %t418 = add i64 %t416, 1
  store i64 %t418, ptr %l7, !tbaa !24
  br label %bb26
bb98:
  %t421 = insertvalue { i32, %"compiler/session:memberInfo" } zeroinitializer, i32 65536, 0
  store { i32, %"compiler/session:memberInfo" } %t421, ptr %rv
  br label %ret
ret:
  %rr = load { i32, %"compiler/session:memberInfo" }, ptr %rv
  ret { i32, %"compiler/session:memberInfo" } %rr
}

define dso_local %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20" @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2elocalAt(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca %"compiler/typed:Local"
  %l20 = alloca i64
  %l22 = alloca i64
  %l27 = alloca ptr
  %l34 = alloca i64
  %l38 = alloca i64
  %l41 = alloca i64
  %l62 = alloca %"compiler/typed:Local"
  %l65 = alloca i1
  %l76 = alloca %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20"
  %l81 = alloca %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20"
  %s0 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %rv = alloca %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/session:Analysis", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = icmp eq ptr %t4, null
  br i1 %t6, label %bb1, label %bb2
bb1:
  call void @__olang_check_failed(ptr @olang_loc_878a1a37f76dded1_df06407b9e0240ed)
  unreachable
bb2:
  br label %bb3
bb3:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/session:Analysis", ptr %t8, i32 0, i32 1
  %t11 = load ptr, ptr %t10, !tbaa !29
  %t14 = getelementptr %"compiler/check:Checker", ptr %t11, i32 0, i32 14
  store ptr %t14, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb4
bb4:
  %t16 = load i64, ptr %l4, !tbaa !24
  store i64 %t16, ptr %l20, !tbaa !24
  %t17 = load ptr, ptr %l3, !tbaa !29
  %t19 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t17)
  store i64 %t19, ptr %l22
  br label %bb5
bb5:
  %t20 = load i64, ptr %l20, !tbaa !24
  %t21 = load i64, ptr %l22, !tbaa !24
  %t22 = icmp slt i64 %t20, %t21
  %t24 = xor i1 %t22, true
  br i1 %t24, label %bb6, label %bb7
bb6:
  br label %bb35
bb7:
  br label %bb8
bb8:
  %t26 = load ptr, ptr %l3, !tbaa !29
  %t27 = load i64, ptr %l4, !tbaa !24
  %t30 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t26, i64 %t27)
  store ptr %t30, ptr %l27
  br label %bb9
bb9:
  %t31 = load ptr, ptr %l27, !tbaa !29
  store ptr %t31, ptr %l5, !tbaa !29
  %t32 = load ptr, ptr %l5, !tbaa !29
  %t34 = getelementptr %"compiler/typed:Body", ptr %t32, i32 0, i32 3
  %t35 = load i64, ptr %t34, !tbaa !24
  %t39 = icmp ne i64 %t35, %a1
  br i1 %t39, label %bb10, label %bb11
bb10:
  br label %bb34
bb11:
  br label %bb12
bb12:
  store i64 0, ptr %l6, !tbaa !24
  %t41 = load ptr, ptr %l5, !tbaa !29
  %t43 = getelementptr %"compiler/typed:Body", ptr %t41, i32 0, i32 7
  %t45 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eLen_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t43)
  store i64 %t45, ptr %l34
  br label %bb13
bb13:
  %t46 = load i64, ptr %l34, !tbaa !24
  store i64 %t46, ptr %l7, !tbaa !24
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
  store i64 0, ptr %l38, !tbaa !24
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
  store i64 %t71, ptr %l41, !tbaa !24
  br label %bb18
bb17:
  store i64 0, ptr %l41, !tbaa !24
  br label %bb18
bb18:
  %t73 = load i64, ptr %l41, !tbaa !24
  store i64 %t73, ptr %l38, !tbaa !24
  br label %bb19
bb19:
  %t74 = load i64, ptr %l38, !tbaa !24
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
  br label %bb33
bb22:
  br label %bb23
bb23:
  %t83 = load i64, ptr %l6, !tbaa !24
  %t84 = load i64, ptr %l10, !tbaa !24
  %t85 = load i64, ptr %l8, !tbaa !24
  %t88 = mul i64 %t84, %t85
  %t91 = add i64 %t83, %t88
  store i64 %t91, ptr %l11, !tbaa !24
  %t93 = load ptr, ptr %l5, !tbaa !29
  %t95 = getelementptr %"compiler/typed:Body", ptr %t93, i32 0, i32 7
  %t96 = load i64, ptr %l11, !tbaa !24
  %t99 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t95, i64 %t96)
  store %"compiler/typed:Local" %t99, ptr %l62
  br label %bb24
bb24:
  %t100 = load %"compiler/typed:Local", ptr %l62
  store %"compiler/typed:Local" %t100, ptr %l12
  %t101 = getelementptr %"compiler/typed:Local", ptr %l12, i32 0, i32 0
  %t102 = load i32, ptr %t101, !tbaa !23
  %t104 = icmp ne i32 %t102, 0
  br i1 %t104, label %bb25, label %bb26
bb25:
  %t106 = getelementptr %"compiler/typed:Local", ptr %l12, i32 0, i32 1
  %t107 = getelementptr %"compiler/source:Span", ptr %t106, i32 0, i32 0
  %t108 = load i32, ptr %t107, !tbaa !23
  %t110 = sext i32 %t108 to i64
  %t114 = icmp eq i64 %t110, %a2
  store i1 %t114, ptr %l65, !tbaa !21
  br label %bb27
bb26:
  store i1 false, ptr %l65, !tbaa !21
  br label %bb27
bb27:
  %t116 = load i1, ptr %l65, !tbaa !21
  br i1 %t116, label %bb28, label %bb29
bb28:
  store %olang.scope zeroinitializer, ptr %s6
  %t117 = load ptr, ptr %l5, !tbaa !29
  %t119 = getelementptr %"compiler/typed:Body", ptr %t117, i32 0, i32 0
  %t120 = load i32, ptr %t119, !tbaa !23
  %t122 = sext i32 %t120 to i64
  %t123 = load i64, ptr %l11, !tbaa !24
  %t125 = trunc i64 %t123 to i32
  %t129 = call %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20" @std_2fpair_3aPair_3cI64_2c_20compiler_2ftyped_3aLocalId_3e_2ector(ptr %s6, i64 %t122, i32 %t125)
  store %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20" %t129, ptr %l76
  br label %bb30
bb29:
  br label %bb31
bb30:
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s0)
  %t130 = load %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20", ptr %l76
  store %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20" %t130, ptr %rv
  br label %ret
bb31:
  br label %bb32
bb32:
  %t131 = load i64, ptr %l10, !tbaa !24
  %t133 = add i64 %t131, 1
  store i64 %t133, ptr %l10, !tbaa !24
  br label %bb20
bb33:
  br label %bb34
bb34:
  %t135 = load i64, ptr %l4, !tbaa !24
  %t137 = add i64 %t135, 1
  store i64 %t137, ptr %l4, !tbaa !24
  br label %bb4
bb35:
  %t139 = call %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20" @std_2fpair_3aPair_3cI64_2c_20compiler_2ftyped_3aLocalId_3e_2ector(ptr %s0, i64 -1, i32 0)
  store %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20" %t139, ptr %l81
  br label %bb36
bb36:
  call void @__olang_scope_close(ptr %s0)
  %t140 = load %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20", ptr %l81
  store %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20" %t140, ptr %rv
  br label %ret
ret:
  %rr = load %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20", ptr %rv
  ret %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20" %rr
}

define dso_local void @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2emoduleNames(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2, i1 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca %"compiler/names:Entry"
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l28 = alloca ptr
  %l31 = alloca i64
  %l33 = alloca i64
  %l38 = alloca %"compiler/names:Entry"
  %l41 = alloca { i64, ptr }
  %l44 = alloca i1
  %l46 = alloca i1
  %l50 = alloca { i64, ptr }
  %l51 = alloca i1
  %l61 = alloca i64
  %l64 = alloca i1
  %l71 = alloca ptr
  %l76 = alloca ptr
  %l77 = alloca { i64, ptr }
  %l78 = alloca i64
  %l81 = alloca ptr
  %l88 = alloca i32
  %l89 = alloca { i64, ptr }
  %l90 = alloca { i64, ptr }
  %l95 = alloca i1
  %l98 = alloca ptr
  %l99 = alloca { i64, ptr }
  %l100 = alloca i64
  %l105 = alloca i1
  %l108 = alloca i1
  %l110 = alloca i1
  %l112 = alloca ptr
  %l113 = alloca { i64, ptr }
  %l115 = alloca i64
  %l122 = alloca i1
  %s2 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s12 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/session:Analysis", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l4, !tbaa !29
  %t6 = load ptr, ptr %l4, !tbaa !29
  %t8 = icmp eq ptr %t6, null
  br i1 %t8, label %bb1, label %bb2
bb1:
  call void @__olang_check_failed(ptr @olang_loc_ad4014c285adba33_5f0a50bbd6dd5777)
  unreachable
bb2:
  br label %bb3
bb3:
  %t10 = load ptr, ptr %l4, !tbaa !29
  %t13 = getelementptr %"compiler/check:Checker", ptr %t10, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !29
  %t16 = getelementptr %"compiler/generic:Program", ptr %t14, i32 0, i32 0
  %t17 = load ptr, ptr %t16, !tbaa !29
  %t19 = getelementptr %"compiler/load:Loader", ptr %t17, i32 0, i32 3
  %t20 = load ptr, ptr %t19, !tbaa !29
  store ptr %t20, ptr %l5, !tbaa !29
  %t22 = load ptr, ptr %l4, !tbaa !29
  %t24 = icmp eq ptr %t22, null
  br i1 %t24, label %bb4, label %bb5
bb4:
  call void @__olang_check_failed(ptr @olang_loc_5a0f7bc549a8a64_9f8f3c14406c0758)
  unreachable
bb5:
  br label %bb6
bb6:
  %t26 = load ptr, ptr %l4, !tbaa !29
  %t29 = getelementptr %"compiler/check:Checker", ptr %t26, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !29
  %t32 = getelementptr %"compiler/generic:Program", ptr %t30, i32 0, i32 1
  %t33 = load ptr, ptr %t32, !tbaa !29
  %t35 = getelementptr %"compiler/names:Resolver", ptr %t33, i32 0, i32 1
  %t36 = load i64, ptr %l2, !tbaa !24
  %t39 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fnames_3aTable_26_3e_2_Hc2ccbbc5952c057a60f016e9cc1626d2(ptr %v0, ptr %v0, ptr %t35, i64 %t36)
  store ptr %t39, ptr %l28
  br label %bb7
bb7:
  %t40 = load ptr, ptr %l28, !tbaa !29
  %t42 = getelementptr %"compiler/names:Table", ptr %t40, i32 0, i32 0
  store ptr %t42, ptr %l6, !tbaa !29
  store i64 0, ptr %l7, !tbaa !24
  br label %bb8
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t44 = load i64, ptr %l7, !tbaa !24
  store i64 %t44, ptr %l31, !tbaa !24
  %t45 = load ptr, ptr %l6, !tbaa !29
  %t47 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eLen_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %t45)
  store i64 %t47, ptr %l33
  br label %bb9
bb9:
  %t48 = load i64, ptr %l31, !tbaa !24
  %t49 = load i64, ptr %l33, !tbaa !24
  %t50 = icmp slt i64 %t48, %t49
  %t52 = xor i1 %t50, true
  br i1 %t52, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s2)
  br label %bb75
bb11:
  br label %bb12
bb12:
  %t54 = load ptr, ptr %l6, !tbaa !29
  %t55 = load i64, ptr %l7, !tbaa !24
  %t58 = call %"compiler/names:Entry" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eAt_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %v0, ptr %t54, i64 %t55)
  store %"compiler/names:Entry" %t58, ptr %l38
  br label %bb13
bb13:
  %t59 = load %"compiler/names:Entry", ptr %l38
  store %"compiler/names:Entry" %t59, ptr %l8
  %t60 = load ptr, ptr %l5, !tbaa !29
  %t61 = getelementptr %"compiler/names:Entry", ptr %l8, i32 0, i32 0
  %t62 = load i32, ptr %t61, !tbaa !23
  %t65 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v0, ptr %t60, i32 %t62)
  store { i64, ptr } %t65, ptr %l41
  br label %bb14
bb14:
  %t66 = load { i64, ptr }, ptr %l41, !tbaa !27
  store { i64, ptr } %t66, ptr %l9, !tbaa !27
  %t69 = xor i1 %a3, true
  br i1 %t69, label %bb15, label %bb16
bb15:
  %t71 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t73 = call i1 @compiler_2fdoc_2eExported(ptr %v0, { i64, ptr } %t71)
  store i1 %t73, ptr %l46
  br label %bb17
bb16:
  store i1 false, ptr %l44, !tbaa !21
  br label %bb18
bb17:
  %t74 = load i1, ptr %l46, !tbaa !21
  %t75 = xor i1 %t74, true
  store i1 %t75, ptr %l44, !tbaa !21
  br label %bb18
bb18:
  %t77 = load i1, ptr %l44, !tbaa !21
  br i1 %t77, label %bb19, label %bb20
bb19:
  call void @__olang_scope_close(ptr %s2)
  br label %bb74
bb20:
  br label %bb21
bb21:
  %t78 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d38, i32 0, i32 1) }, ptr %l50, !tbaa !27
  %t81 = load { i64, ptr }, ptr %l50, !tbaa !27
  %t82 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %s2, { i64, ptr } %t78, { i64, ptr } %t81)
  store i1 %t82, ptr %l51
  br label %bb22
bb22:
  %t83 = load i1, ptr %l51, !tbaa !21
  br i1 %t83, label %bb23, label %bb24
bb23:
  call void @__olang_scope_close(ptr %s2)
  br label %bb74
bb24:
  br label %bb25
bb25:
  %t84 = getelementptr %"compiler/names:Entry", ptr %l8, i32 0, i32 2
  %t85 = load i32, ptr %t84, !range !{i32 0, i32 9}
  %t87 = trunc i64 3 to i32
  %t88 = icmp eq i32 %t85, %t87
  br i1 %t88, label %bb26, label %bb27
bb26:
  store %olang.scope zeroinitializer, ptr %s5
  %t90 = load ptr, ptr %l4, !tbaa !29
  %t92 = icmp eq ptr %t90, null
  br i1 %t92, label %bb28, label %bb29
bb27:
  %t94 = getelementptr %"compiler/names:Entry", ptr %l8, i32 0, i32 2
  %t95 = load i32, ptr %t94, !range !{i32 0, i32 9}
  %t97 = trunc i64 4 to i32
  %t98 = icmp eq i32 %t95, %t97
  br i1 %t98, label %bb52, label %bb53
bb28:
  call void @__olang_check_failed(ptr @olang_loc_c15f20635f7a4119_452b944b82f8966d)
  unreachable
bb29:
  br label %bb30
bb30:
  %t100 = load ptr, ptr %l4, !tbaa !29
  %t103 = getelementptr %"compiler/check:Checker", ptr %t100, i32 0, i32 1
  %t104 = load ptr, ptr %t103, !tbaa !29
  %t105 = load i64, ptr %l2, !tbaa !24
  %t106 = getelementptr %"compiler/names:Entry", ptr %l8, i32 0, i32 0
  %t107 = load i32, ptr %t106, !tbaa !23
  %t111 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnNamed(ptr %v0, ptr %t104, i64 %t105, i32 %t107)
  store i64 %t111, ptr %l61
  br label %bb31
bb31:
  %t112 = load i64, ptr %l61, !tbaa !24
  store i64 %t112, ptr %l10, !tbaa !24
  %t113 = load i64, ptr %l10, !tbaa !24
  %t115 = icmp slt i64 %t113, 0
  br i1 %t115, label %bb32, label %bb33
bb32:
  store i1 true, ptr %l64, !tbaa !21
  br label %bb38
bb33:
  %t117 = load ptr, ptr %l4, !tbaa !29
  %t119 = icmp eq ptr %t117, null
  br i1 %t119, label %bb34, label %bb35
bb34:
  call void @__olang_check_failed(ptr @olang_loc_6010ac475f88a9f2_430aff1aa96b7386)
  unreachable
bb35:
  br label %bb36
bb36:
  %t121 = load ptr, ptr %l4, !tbaa !29
  %t124 = getelementptr %"compiler/check:Checker", ptr %t121, i32 0, i32 1
  %t125 = load ptr, ptr %t124, !tbaa !29
  %t126 = load i64, ptr %l10, !tbaa !24
  %t129 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t125, i64 %t126)
  store ptr %t129, ptr %l71
  br label %bb37
bb37:
  %t130 = load ptr, ptr %l71, !tbaa !29
  %t132 = getelementptr %"compiler/ast:Func", ptr %t130, i32 0, i32 1
  %t133 = load ptr, ptr %t132, !tbaa !29
  %t135 = icmp eq ptr %t133, null
  %t137 = xor i1 %t135, true
  store i1 %t137, ptr %l64, !tbaa !21
  br label %bb38
bb38:
  %t139 = load i1, ptr %l64, !tbaa !21
  br i1 %t139, label %bb39, label %bb40
bb39:
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s2)
  br label %bb74
bb40:
  br label %bb41
bb41:
  %t140 = load ptr, ptr %l1, !tbaa !29
  store ptr %t140, ptr %l76, !tbaa !29
  %t141 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t141, ptr %l77, !tbaa !27
  %t142 = load i64, ptr @G_2ecompiler_2fsession_2eCompFunction, !tbaa !24
  store i64 %t142, ptr %l78, !tbaa !24
  %t143 = load ptr, ptr %l4, !tbaa !29
  %t145 = icmp eq ptr %t143, null
  br i1 %t145, label %bb42, label %bb43
bb42:
  call void @__olang_check_failed(ptr @olang_loc_64c89934b5f1bf_a2a8dc486100a28b)
  unreachable
bb43:
  br label %bb44
bb44:
  %t147 = load ptr, ptr %l4, !tbaa !29
  store ptr %t147, ptr %l81, !tbaa !29
  %t148 = load ptr, ptr %l4, !tbaa !29
  %t150 = icmp eq ptr %t148, null
  br i1 %t150, label %bb45, label %bb46
bb45:
  call void @__olang_check_failed(ptr @olang_loc_64c89934b5f1bf_a2a8dc486100a28b)
  unreachable
bb46:
  br label %bb47
bb47:
  %t152 = load ptr, ptr %l4, !tbaa !29
  %t155 = getelementptr %"compiler/check:Checker", ptr %t152, i32 0, i32 1
  %t156 = load ptr, ptr %t155, !tbaa !29
  %t157 = load i64, ptr %l10, !tbaa !24
  %t160 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %t156, i64 %t157)
  store i32 %t160, ptr %l88
  br label %bb48
bb48:
  %t161 = load ptr, ptr %l81, !tbaa !29
  %t162 = load i32, ptr %l88, !tbaa !23
  %t163 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eTy(ptr %v0, ptr %s5, ptr %t161, i32 %t162)
  store { i64, ptr } %t163, ptr %l89
  br label %bb49
bb49:
  %t164 = load { i64, ptr }, ptr %l89, !tbaa !27
  %t165 = extractvalue { i64, ptr } %t164, 0
  %t166 = extractvalue { i64, ptr } %t164, 1
  %t167 = mul i64 %t165, 1
  %t168 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t167)
  call void @llvm.memcpy.p0.p0.i64(ptr %t168, ptr %t166, i64 %t167, i1 false)
  %t169 = insertvalue { i64, ptr } undef, i64 %t165, 0
  %t170 = insertvalue { i64, ptr } %t169, ptr %t168, 1
  store { i64, ptr } %t170, ptr %l90, !tbaa !27
  %t171 = load ptr, ptr %l0, !tbaa !29
  %t172 = load i64, ptr %l2, !tbaa !24
  %t173 = getelementptr %"compiler/names:Entry", ptr %l8, i32 0, i32 1
  %t174 = getelementptr %"compiler/source:Span", ptr %t173, i32 0, i32 0
  %t175 = load i32, ptr %t174, !tbaa !23
  %t177 = sext i32 %t175 to i64
  %t181 = call i1 @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2edeprecatedAt(ptr %v0, ptr %t171, i64 %t172, i64 %t177, i1 false)
  store i1 %t181, ptr %l95
  br label %bb50
bb50:
  %t182 = load ptr, ptr %l76, !tbaa !29
  %t183 = load { i64, ptr }, ptr %l77, !tbaa !27
  %t184 = load i64, ptr %l78, !tbaa !24
  %t185 = load { i64, ptr }, ptr %l90, !tbaa !27
  %t186 = load i1, ptr %l95, !tbaa !21
  call void @compiler_2fsession_2ecompiler_2fsession_3aItems_2eAddDep(ptr %v1, ptr %v0, ptr %s5, ptr %t182, { i64, ptr } %t183, i64 %t184, { i64, ptr } %t185, i1 %t186)
  br label %bb51
bb51:
  call void @__olang_scope_close(ptr %s5)
  br label %bb73
bb52:
  store %olang.scope zeroinitializer, ptr %s8
  %t187 = load ptr, ptr %l1, !tbaa !29
  store ptr %t187, ptr %l98, !tbaa !29
  %t188 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t188, ptr %l99, !tbaa !27
  %t189 = load i64, ptr @G_2ecompiler_2fsession_2eCompStruct, !tbaa !24
  store i64 %t189, ptr %l100, !tbaa !24
  %t190 = load ptr, ptr %l0, !tbaa !29
  %t191 = load i64, ptr %l2, !tbaa !24
  %t192 = getelementptr %"compiler/names:Entry", ptr %l8, i32 0, i32 1
  %t193 = getelementptr %"compiler/source:Span", ptr %t192, i32 0, i32 0
  %t194 = load i32, ptr %t193, !tbaa !23
  %t196 = sext i32 %t194 to i64
  %t200 = call i1 @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2edeprecatedAt(ptr %v0, ptr %t190, i64 %t191, i64 %t196, i1 false)
  store i1 %t200, ptr %l105
  br label %bb54
bb53:
  store %olang.scope zeroinitializer, ptr %s9
  %t201 = getelementptr %"compiler/names:Entry", ptr %l8, i32 0, i32 2
  %t202 = load i32, ptr %t201, !range !{i32 0, i32 9}
  %t204 = trunc i64 2 to i32
  %t205 = icmp eq i32 %t202, %t204
  br i1 %t205, label %bb56, label %bb57
bb54:
  %t207 = load ptr, ptr %l98, !tbaa !29
  %t208 = load { i64, ptr }, ptr %l99, !tbaa !27
  %t209 = load i64, ptr %l100, !tbaa !24
  %t210 = load i1, ptr %l105, !tbaa !21
  call void @compiler_2fsession_2ecompiler_2fsession_3aItems_2eAddDep(ptr %v1, ptr %v0, ptr %s8, ptr %t207, { i64, ptr } %t208, i64 %t209, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d39, i32 0, i32 1) }, i1 %t210)
  br label %bb55
bb55:
  call void @__olang_scope_close(ptr %s8)
  br label %bb72
bb56:
  %t211 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t213 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s9, { i64, ptr } %t211, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d40, i32 0, i32 1) })
  store i1 %t213, ptr %l110
  br label %bb58
bb57:
  store i1 false, ptr %l108, !tbaa !21
  br label %bb59
bb58:
  %t214 = load i1, ptr %l110, !tbaa !21
  %t215 = xor i1 %t214, true
  store i1 %t215, ptr %l108, !tbaa !21
  br label %bb59
bb59:
  %t217 = load i1, ptr %l108, !tbaa !21
  br i1 %t217, label %bb60, label %bb61
bb60:
  store %olang.scope zeroinitializer, ptr %s10
  %t218 = load ptr, ptr %l1, !tbaa !29
  store ptr %t218, ptr %l112, !tbaa !29
  %t219 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t219, ptr %l113, !tbaa !27
  %t220 = getelementptr %"compiler/names:Entry", ptr %l8, i32 0, i32 3
  %t221 = load i1, ptr %t220, !tbaa !21
  br i1 %t221, label %bb62, label %bb63
bb61:
  %t223 = getelementptr %"compiler/names:Entry", ptr %l8, i32 0, i32 2
  %t224 = load i32, ptr %t223, !range !{i32 0, i32 9}
  %t226 = trunc i64 5 to i32
  %t227 = icmp eq i32 %t224, %t226
  br i1 %t227, label %bb67, label %bb68
bb62:
  %t229 = load i64, ptr @G_2ecompiler_2fsession_2eCompVariable, !tbaa !24
  store i64 %t229, ptr %l115, !tbaa !24
  br label %bb64
bb63:
  %t231 = load i64, ptr @G_2ecompiler_2fsession_2eCompConstant, !tbaa !24
  store i64 %t231, ptr %l115, !tbaa !24
  br label %bb64
bb64:
  %t233 = load ptr, ptr %l0, !tbaa !29
  %t234 = load i64, ptr %l2, !tbaa !24
  %t235 = getelementptr %"compiler/names:Entry", ptr %l8, i32 0, i32 1
  %t236 = getelementptr %"compiler/source:Span", ptr %t235, i32 0, i32 0
  %t237 = load i32, ptr %t236, !tbaa !23
  %t239 = sext i32 %t237 to i64
  %t243 = call i1 @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2edeprecatedAt(ptr %v0, ptr %t233, i64 %t234, i64 %t239, i1 true)
  store i1 %t243, ptr %l122
  br label %bb65
bb65:
  %t244 = load ptr, ptr %l112, !tbaa !29
  %t245 = load { i64, ptr }, ptr %l113, !tbaa !27
  %t246 = load i64, ptr %l115, !tbaa !24
  %t247 = load i1, ptr %l122, !tbaa !21
  call void @compiler_2fsession_2ecompiler_2fsession_3aItems_2eAddDep(ptr %v1, ptr %v0, ptr %s10, ptr %t244, { i64, ptr } %t245, i64 %t246, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d41, i32 0, i32 1) }, i1 %t247)
  br label %bb66
bb66:
  call void @__olang_scope_close(ptr %s10)
  br label %bb71
bb67:
  store %olang.scope zeroinitializer, ptr %s12
  %t248 = load ptr, ptr %l1, !tbaa !29
  %t249 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t250 = load i64, ptr @G_2ecompiler_2fsession_2eCompModule, !tbaa !24
  call void @compiler_2fsession_2ecompiler_2fsession_3aItems_2eAdd(ptr %v1, ptr %v0, ptr %s12, ptr %t248, { i64, ptr } %t249, i64 %t250, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d42, i32 0, i32 1) })
  br label %bb69
bb68:
  br label %bb70
bb69:
  call void @__olang_scope_close(ptr %s12)
  br label %bb70
bb70:
  br label %bb71
bb71:
  call void @__olang_scope_close(ptr %s9)
  br label %bb72
bb72:
  br label %bb73
bb73:
  call void @__olang_scope_close(ptr %s2)
  br label %bb74
bb74:
  %t254 = load i64, ptr %l7, !tbaa !24
  %t256 = add i64 %t254, 1
  store i64 %t256, ptr %l7, !tbaa !24
  br label %bb8
bb75:
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2etypeEndingAt(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca %"compiler/session:typeFinder"
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca { i64, ptr }
  %l8 = alloca %"compiler/source:Span"
  %l9 = alloca { i64, ptr }
  %l10 = alloca ptr
  %l11 = alloca i64
  %l12 = alloca ptr
  %l13 = alloca ptr
  %l14 = alloca i64
  %l15 = alloca %"compiler/typed:Local"
  %l17 = alloca %"compiler/session:typeFinder"
  %l25 = alloca i64
  %l27 = alloca i64
  %l32 = alloca ptr
  %l37 = alloca i1
  %l54 = alloca { i64, ptr }
  %l57 = alloca %"compiler/source:Span"
  %l62 = alloca { i64, ptr }
  %l64 = alloca i64
  %l66 = alloca i64
  %l67 = alloca i64
  %l79 = alloca i64
  %l81 = alloca i64
  %l86 = alloca ptr
  %l91 = alloca i1
  %l97 = alloca i1
  %l105 = alloca i64
  %l107 = alloca i64
  %l112 = alloca %"compiler/typed:Local"
  %l115 = alloca i1
  %l126 = alloca { i64, ptr }
  %l128 = alloca i1
  %l129 = alloca i1
  %s0 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i64, ptr %l2, !tbaa !24
  %t3 = call %"compiler/session:typeFinder" @compiler_2fsession_3atypeFinder_2ector(ptr %s0, i64 %t1)
  store %"compiler/session:typeFinder" %t3, ptr %l17
  br label %bb1
bb1:
  %t4 = load %"compiler/session:typeFinder", ptr %l17
  store %"compiler/session:typeFinder" %t4, ptr %l3
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/session:Analysis", ptr %t5, i32 0, i32 1
  %t8 = load ptr, ptr %t7, !tbaa !29
  %t10 = icmp eq ptr %t8, null
  br i1 %t10, label %bb2, label %bb3
bb2:
  call void @__olang_check_failed(ptr @olang_loc_cf04846f3952f731_2a54d968229bc665)
  unreachable
bb3:
  br label %bb4
bb4:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/session:Analysis", ptr %t12, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t18 = getelementptr %"compiler/check:Checker", ptr %t15, i32 0, i32 14
  store ptr %t18, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb5
bb5:
  %t20 = load i64, ptr %l5, !tbaa !24
  store i64 %t20, ptr %l25, !tbaa !24
  %t21 = load ptr, ptr %l4, !tbaa !29
  %t23 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t21)
  store i64 %t23, ptr %l27
  br label %bb6
bb6:
  %t24 = load i64, ptr %l25, !tbaa !24
  %t25 = load i64, ptr %l27, !tbaa !24
  %t26 = icmp slt i64 %t24, %t25
  %t28 = xor i1 %t26, true
  br i1 %t28, label %bb7, label %bb8
bb7:
  br label %bb19
bb8:
  br label %bb9
bb9:
  %t30 = load ptr, ptr %l4, !tbaa !29
  %t31 = load i64, ptr %l5, !tbaa !24
  %t34 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t30, i64 %t31)
  store ptr %t34, ptr %l32
  br label %bb10
bb10:
  %t35 = load ptr, ptr %l32, !tbaa !29
  store ptr %t35, ptr %l6, !tbaa !29
  %t36 = load ptr, ptr %l6, !tbaa !29
  %t38 = getelementptr %"compiler/typed:Body", ptr %t36, i32 0, i32 3
  %t39 = load i64, ptr %t38, !tbaa !24
  %t40 = load i64, ptr %l1, !tbaa !24
  %t43 = icmp ne i64 %t39, %t40
  br i1 %t43, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l37, !tbaa !21
  br label %bb13
bb12:
  %t45 = load ptr, ptr %l6, !tbaa !29
  %t47 = getelementptr %"compiler/typed:Body", ptr %t45, i32 0, i32 11
  %t48 = load ptr, ptr %t47, !tbaa !29
  %t50 = icmp eq ptr %t48, null
  store i1 %t50, ptr %l37, !tbaa !21
  br label %bb13
bb13:
  %t52 = load i1, ptr %l37, !tbaa !21
  br i1 %t52, label %bb14, label %bb15
bb14:
  br label %bb18
bb15:
  br label %bb16
bb16:
  %t53 = load ptr, ptr %l6, !tbaa !29
  %t55 = getelementptr %"compiler/typed:Body", ptr %t53, i32 0, i32 11
  %t56 = load ptr, ptr %t55, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3atypeFinder_2eblock(ptr %s0, ptr %v0, ptr %l3, ptr %t56)
  br label %bb17
bb17:
  br label %bb18
bb18:
  %t59 = load i64, ptr %l5, !tbaa !24
  %t61 = add i64 %t59, 1
  store i64 %t61, ptr %l5, !tbaa !24
  br label %bb5
bb19:
  %t63 = getelementptr %"compiler/session:typeFinder", ptr %l3, i32 0, i32 1
  %t64 = load i32, ptr %t63, !tbaa !23
  %t65 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t68 = icmp ne i32 %t64, %t65
  br i1 %t68, label %bb20, label %bb21
bb20:
  %t70 = getelementptr %"compiler/session:typeFinder", ptr %l3, i32 0, i32 1
  %t71 = load i32, ptr %t70, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t71, ptr %rv
  br label %ret
bb21:
  br label %bb22
bb22:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/session:Analysis", ptr %t73, i32 0, i32 0
  %t76 = load ptr, ptr %t75, !tbaa !29
  %t78 = getelementptr %"compiler/load:Loader", ptr %t76, i32 0, i32 4
  %t79 = load ptr, ptr %t78, !tbaa !29
  %t80 = load i64, ptr %l1, !tbaa !24
  %t83 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eTextOf(ptr %v0, ptr %v0, ptr %t79, i64 %t80)
  store { i64, ptr } %t83, ptr %l54
  br label %bb23
bb23:
  %t84 = load { i64, ptr }, ptr %l54, !tbaa !27
  store { i64, ptr } %t84, ptr %l7, !tbaa !27
  %t85 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t86 = load i64, ptr %l2, !tbaa !24
  %t89 = call %"compiler/source:Span" @compiler_2fsession_2eWordAt(ptr %v0, { i64, ptr } %t85, i64 %t86)
  store %"compiler/source:Span" %t89, ptr %l57
  br label %bb24
bb24:
  %t90 = load %"compiler/source:Span", ptr %l57
  store %"compiler/source:Span" %t90, ptr %l8
  %t91 = getelementptr %"compiler/source:Span", ptr %l8, i32 0, i32 0
  %t92 = load i32, ptr %t91, !tbaa !23
  %t93 = getelementptr %"compiler/source:Span", ptr %l8, i32 0, i32 1
  %t94 = load i32, ptr %t93, !tbaa !23
  %t97 = icmp eq i32 %t92, %t94
  br i1 %t97, label %bb25, label %bb26
bb25:
  %t99 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t99, ptr %rv
  br label %ret
bb26:
  br label %bb27
bb27:
  %t101 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t101, ptr %l62, !tbaa !27
  %t102 = getelementptr %"compiler/source:Span", ptr %l8, i32 0, i32 0
  %t103 = load i32, ptr %t102, !tbaa !23
  %t105 = sext i32 %t103 to i64
  store i64 %t105, ptr %l64, !tbaa !24
  %t106 = getelementptr %"compiler/source:Span", ptr %l8, i32 0, i32 1
  %t107 = load i32, ptr %t106, !tbaa !23
  %t109 = sext i32 %t107 to i64
  store i64 %t109, ptr %l66, !tbaa !24
  %t110 = load { i64, ptr }, ptr %l62, !tbaa !27
  %t111 = extractvalue { i64, ptr } %t110, 0
  store i64 %t111, ptr %l67, !tbaa !24
  %t112 = load i64, ptr %l64, !tbaa !24
  %t113 = icmp sge i64 %t112, 0
  br i1 %t113, label %bb28, label %bb29
bb28:
  %t115 = load i64, ptr %l64, !tbaa !24
  %t116 = load i64, ptr %l66, !tbaa !24
  %t117 = icmp sle i64 %t115, %t116
  br i1 %t117, label %bb30, label %bb31
bb29:
  call void @__olang_check_failed(ptr @olang_loc_77695651a3cbe722_713723fe03dd0eb6)
  unreachable
bb30:
  %t119 = load i64, ptr %l66, !tbaa !24
  %t120 = load i64, ptr %l67, !tbaa !24
  %t121 = icmp sle i64 %t119, %t120
  br i1 %t121, label %bb32, label %bb33
bb31:
  call void @__olang_check_failed(ptr @olang_loc_77695651a3cbe722_713723fe03dd0eb6)
  unreachable
bb32:
  %t123 = getelementptr { i64, ptr }, ptr %l62, i32 0, i32 1
  %t124 = load ptr, ptr %t123, !tbaa !27
  %t125 = load i64, ptr %l64, !tbaa !24
  %t126 = load i64, ptr %l66, !tbaa !24
  %t127 = getelementptr i8, ptr %t124, i64 %t125
  %t128 = sub i64 %t126, %t125
  %t129 = insertvalue { i64, ptr } undef, i64 %t128, 0
  %t130 = insertvalue { i64, ptr } %t129, ptr %t127, 1
  store { i64, ptr } %t130, ptr %l9, !tbaa !27
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t134 = getelementptr %"compiler/session:Analysis", ptr %t132, i32 0, i32 1
  %t135 = load ptr, ptr %t134, !tbaa !29
  %t137 = icmp eq ptr %t135, null
  br i1 %t137, label %bb34, label %bb35
bb33:
  call void @__olang_check_failed(ptr @olang_loc_77695651a3cbe722_713723fe03dd0eb6)
  unreachable
bb34:
  call void @__olang_check_failed(ptr @olang_loc_192180e0c65a19ab_79011e5b413ec96f)
  unreachable
bb35:
  br label %bb36
bb36:
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t141 = getelementptr %"compiler/session:Analysis", ptr %t139, i32 0, i32 1
  %t142 = load ptr, ptr %t141, !tbaa !29
  %t145 = getelementptr %"compiler/check:Checker", ptr %t142, i32 0, i32 14
  store ptr %t145, ptr %l10, !tbaa !29
  store i64 0, ptr %l11, !tbaa !24
  br label %bb37
bb37:
  %t147 = load i64, ptr %l11, !tbaa !24
  store i64 %t147, ptr %l79, !tbaa !24
  %t148 = load ptr, ptr %l10, !tbaa !29
  %t150 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t148)
  store i64 %t150, ptr %l81
  br label %bb38
bb38:
  %t151 = load i64, ptr %l79, !tbaa !24
  %t152 = load i64, ptr %l81, !tbaa !24
  %t153 = icmp slt i64 %t151, %t152
  %t155 = xor i1 %t153, true
  br i1 %t155, label %bb39, label %bb40
bb39:
  br label %bb75
bb40:
  br label %bb41
bb41:
  %t157 = load ptr, ptr %l10, !tbaa !29
  %t158 = load i64, ptr %l11, !tbaa !24
  %t161 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t157, i64 %t158)
  store ptr %t161, ptr %l86
  br label %bb42
bb42:
  %t162 = load ptr, ptr %l86, !tbaa !29
  store ptr %t162, ptr %l12, !tbaa !29
  %t163 = load ptr, ptr %l12, !tbaa !29
  %t165 = getelementptr %"compiler/typed:Body", ptr %t163, i32 0, i32 3
  %t166 = load i64, ptr %t165, !tbaa !24
  %t167 = load i64, ptr %l1, !tbaa !24
  %t170 = icmp ne i64 %t166, %t167
  br i1 %t170, label %bb43, label %bb44
bb43:
  store i1 true, ptr %l91, !tbaa !21
  br label %bb45
bb44:
  %t172 = load ptr, ptr %l12, !tbaa !29
  %t174 = getelementptr %"compiler/typed:Body", ptr %t172, i32 0, i32 4
  %t175 = getelementptr %"compiler/source:Span", ptr %t174, i32 0, i32 0
  %t176 = load i32, ptr %t175, !tbaa !23
  %t178 = sext i32 %t176 to i64
  %t179 = load i64, ptr %l2, !tbaa !24
  %t182 = icmp sgt i64 %t178, %t179
  store i1 %t182, ptr %l91, !tbaa !21
  br label %bb45
bb45:
  %t184 = load i1, ptr %l91, !tbaa !21
  br i1 %t184, label %bb46, label %bb47
bb46:
  store i1 true, ptr %l97, !tbaa !21
  br label %bb48
bb47:
  %t185 = load i64, ptr %l2, !tbaa !24
  %t186 = load ptr, ptr %l12, !tbaa !29
  %t188 = getelementptr %"compiler/typed:Body", ptr %t186, i32 0, i32 4
  %t189 = getelementptr %"compiler/source:Span", ptr %t188, i32 0, i32 1
  %t190 = load i32, ptr %t189, !tbaa !23
  %t192 = sext i32 %t190 to i64
  %t195 = icmp sgt i64 %t185, %t192
  store i1 %t195, ptr %l97, !tbaa !21
  br label %bb48
bb48:
  %t197 = load i1, ptr %l97, !tbaa !21
  br i1 %t197, label %bb49, label %bb50
bb49:
  br label %bb74
bb50:
  br label %bb51
bb51:
  %t198 = load ptr, ptr %l12, !tbaa !29
  %t200 = getelementptr %"compiler/typed:Body", ptr %t198, i32 0, i32 7
  store ptr %t200, ptr %l13, !tbaa !29
  store i64 0, ptr %l14, !tbaa !24
  br label %bb52
bb52:
  store %olang.scope zeroinitializer, ptr %s11
  %t202 = load i64, ptr %l14, !tbaa !24
  store i64 %t202, ptr %l105, !tbaa !24
  %t203 = load ptr, ptr %l13, !tbaa !29
  %t205 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eLen_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t203)
  store i64 %t205, ptr %l107
  br label %bb53
bb53:
  %t206 = load i64, ptr %l105, !tbaa !24
  %t207 = load i64, ptr %l107, !tbaa !24
  %t208 = icmp slt i64 %t206, %t207
  %t210 = xor i1 %t208, true
  br i1 %t210, label %bb54, label %bb55
bb54:
  call void @__olang_scope_close(ptr %s11)
  br label %bb73
bb55:
  br label %bb56
bb56:
  %t212 = load ptr, ptr %l13, !tbaa !29
  %t213 = load i64, ptr %l14, !tbaa !24
  %t216 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t212, i64 %t213)
  store %"compiler/typed:Local" %t216, ptr %l112
  br label %bb57
bb57:
  %t217 = load %"compiler/typed:Local", ptr %l112
  store %"compiler/typed:Local" %t217, ptr %l15
  %t218 = getelementptr %"compiler/typed:Local", ptr %l15, i32 0, i32 0
  %t219 = load i32, ptr %t218, !tbaa !23
  %t221 = icmp ne i32 %t219, 0
  br i1 %t221, label %bb58, label %bb59
bb58:
  %t223 = load ptr, ptr %l0, !tbaa !29
  %t225 = getelementptr %"compiler/session:Analysis", ptr %t223, i32 0, i32 1
  %t226 = load ptr, ptr %t225, !tbaa !29
  %t228 = icmp eq ptr %t226, null
  br i1 %t228, label %bb60, label %bb61
bb59:
  store i1 false, ptr %l115, !tbaa !21
  br label %bb65
bb60:
  call void @__olang_check_failed(ptr @olang_loc_41c9e4d1a5402e3c_f7f654128ad00b10)
  unreachable
bb61:
  br label %bb62
bb62:
  %t230 = load ptr, ptr %l0, !tbaa !29
  %t232 = getelementptr %"compiler/session:Analysis", ptr %t230, i32 0, i32 1
  %t233 = load ptr, ptr %t232, !tbaa !29
  %t236 = getelementptr %"compiler/check:Checker", ptr %t233, i32 0, i32 1
  %t237 = load ptr, ptr %t236, !tbaa !29
  %t239 = getelementptr %"compiler/generic:Program", ptr %t237, i32 0, i32 0
  %t240 = load ptr, ptr %t239, !tbaa !29
  %t242 = getelementptr %"compiler/load:Loader", ptr %t240, i32 0, i32 3
  %t243 = load ptr, ptr %t242, !tbaa !29
  %t244 = getelementptr %"compiler/typed:Local", ptr %l15, i32 0, i32 0
  %t245 = load i32, ptr %t244, !tbaa !23
  %t248 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %s11, ptr %t243, i32 %t245)
  store { i64, ptr } %t248, ptr %l126
  br label %bb63
bb63:
  %t249 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t250 = load { i64, ptr }, ptr %l126, !tbaa !27
  %t252 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s11, ptr %v0, { i64, ptr } %t250, { i64, ptr } %t249)
  store i1 %t252, ptr %l128
  br label %bb64
bb64:
  %t253 = load i1, ptr %l128, !tbaa !21
  store i1 %t253, ptr %l115, !tbaa !21
  br label %bb65
bb65:
  %t254 = load i1, ptr %l115, !tbaa !21
  br i1 %t254, label %bb66, label %bb67
bb66:
  %t255 = getelementptr %"compiler/typed:Local", ptr %l15, i32 0, i32 1
  %t256 = getelementptr %"compiler/source:Span", ptr %t255, i32 0, i32 0
  %t257 = load i32, ptr %t256, !tbaa !23
  %t259 = sext i32 %t257 to i64
  %t260 = load i64, ptr %l2, !tbaa !24
  %t263 = icmp slt i64 %t259, %t260
  store i1 %t263, ptr %l129, !tbaa !21
  br label %bb68
bb67:
  store i1 false, ptr %l129, !tbaa !21
  br label %bb68
bb68:
  %t265 = load i1, ptr %l129, !tbaa !21
  br i1 %t265, label %bb69, label %bb70
bb69:
  %t266 = getelementptr %"compiler/typed:Local", ptr %l15, i32 0, i32 2
  %t267 = load i32, ptr %t266, !tbaa !23
  call void @__olang_scope_close(ptr %s11)
  call void @__olang_scope_close(ptr %s0)
  store i32 %t267, ptr %rv
  br label %ret
bb70:
  br label %bb71
bb71:
  call void @__olang_scope_close(ptr %s11)
  br label %bb72
bb72:
  %t269 = load i64, ptr %l14, !tbaa !24
  %t271 = add i64 %t269, 1
  store i64 %t271, ptr %l14, !tbaa !24
  br label %bb52
bb73:
  br label %bb74
bb74:
  %t273 = load i64, ptr %l11, !tbaa !24
  %t275 = add i64 %t273, 1
  store i64 %t275, ptr %l11, !tbaa !24
  br label %bb37
bb75:
  %t277 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t277, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2fsession_2ecompiler_2fsession_3aItems_2eAddDep(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i64 %a2, { i64, ptr } %a3, i1 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l5 = alloca ptr
  %l6 = alloca i64
  %l10 = alloca i64
  %l12 = alloca i64
  %l17 = alloca { i64, ptr }
  %l20 = alloca i1
  %l31 = alloca ptr
  %l45 = alloca i1
  %s0 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s8 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store { i64, ptr } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/session:Items", ptr %t1, i32 0, i32 2
  store ptr %t3, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb1
bb1:
  %t5 = load i64, ptr %l6, !tbaa !24
  store i64 %t5, ptr %l10, !tbaa !24
  %t6 = load ptr, ptr %l5, !tbaa !29
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t6)
  store i64 %t8, ptr %l12
  br label %bb2
bb2:
  %t9 = load i64, ptr %l10, !tbaa !24
  %t10 = load i64, ptr %l12, !tbaa !24
  %t11 = icmp slt i64 %t9, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb3, label %bb4
bb3:
  br label %bb12
bb4:
  br label %bb5
bb5:
  %t15 = load ptr, ptr %l5, !tbaa !29
  %t16 = load i64, ptr %l6, !tbaa !24
  %t19 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t15, i64 %t16)
  store { i64, ptr } %t19, ptr %l17
  br label %bb6
bb6:
  %t20 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t22 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t25 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %t20, { i64, ptr } %t22)
  store i1 %t25, ptr %l20
  br label %bb7
bb7:
  %t26 = load i1, ptr %l20, !tbaa !21
  br i1 %t26, label %bb8, label %bb9
bb8:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb9:
  br label %bb10
bb10:
  br label %bb11
bb11:
  %t27 = load i64, ptr %l6, !tbaa !24
  %t29 = add i64 %t27, 1
  store i64 %t29, ptr %l6, !tbaa !24
  br label %bb1
bb12:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/session:Items", ptr %t31, i32 0, i32 2
  %t34 = load { i64, ptr }, ptr %l1, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %t33, { i64, ptr } %t34)
  br label %bb13
bb13:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/session:Items", ptr %t37, i32 0, i32 1
  %t40 = load i64, ptr %t39, !tbaa !24
  %t42 = icmp sgt i64 %t40, 0
  br i1 %t42, label %bb14, label %bb15
bb14:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/session:Items", ptr %t44, i32 0, i32 0
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %t46, i8 44)
  br label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb17
bb17:
  %t48 = load ptr, ptr %l0, !tbaa !29
  store ptr %t48, ptr %l31, !tbaa !29
  %t49 = load ptr, ptr %l31, !tbaa !29
  %t50 = getelementptr %"compiler/session:Items", ptr %t49, i32 0, i32 1
  %t51 = load i64, ptr %t50, !tbaa !24
  %t53 = add i64 %t51, 1
  %t55 = load ptr, ptr %l31, !tbaa !29
  %t56 = getelementptr %"compiler/session:Items", ptr %t55, i32 0, i32 1
  store i64 %t53, ptr %t56, !tbaa !24
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/session:Items", ptr %t57, i32 0, i32 0
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s0, ptr %t59, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d43, i32 0, i32 1) })
  br label %bb18
bb18:
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t63 = getelementptr %"compiler/session:Items", ptr %t61, i32 0, i32 0
  %t64 = load { i64, ptr }, ptr %l1, !tbaa !27
  call void @compiler_2fsession_2eJsonStr(ptr %v0, ptr %v1, ptr %t63, { i64, ptr } %t64)
  br label %bb19
bb19:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr %"compiler/session:Items", ptr %t67, i32 0, i32 0
  %t71 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d44, i32 0, i32 1) }, 1
  %t72 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d44, i32 0, i32 1) }, 0
  %t74 = call i64 @__olang_fmt_i64(ptr null, i64 %a2)
  %t75 = add i64 %t72, %t74
  %t76 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t75)
  call void @olang_textcopy(ptr %t76, ptr %t71, i64 %t72)
  %t77 = getelementptr i8, ptr %t76, i64 %t72
  %t78 = call i64 @__olang_fmt_i64(ptr %t77, i64 %a2)
  %t79 = insertvalue { i64, ptr } undef, i64 %t75, 0
  %t80 = insertvalue { i64, ptr } %t79, ptr %t76, 1
  %t82 = extractvalue { i64, ptr } %t80, 0
  %t83 = extractvalue { i64, ptr } %t80, 1
  %t84 = mul i64 %t82, 1
  %t85 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t84)
  call void @llvm.memcpy.p0.p0.i64(ptr %t85, ptr %t83, i64 %t84, i1 false)
  %t86 = insertvalue { i64, ptr } undef, i64 %t82, 0
  %t87 = insertvalue { i64, ptr } %t86, ptr %t85, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s0, ptr %t69, { i64, ptr } %t87)
  br label %bb20
bb20:
  %t90 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t92 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s0, { i64, ptr } %t90, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d45, i32 0, i32 1) })
  store i1 %t92, ptr %l45
  br label %bb21
bb21:
  %t93 = load i1, ptr %l45, !tbaa !21
  %t94 = xor i1 %t93, true
  br i1 %t94, label %bb22, label %bb23
bb22:
  store %olang.scope zeroinitializer, ptr %s7
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t98 = getelementptr %"compiler/session:Items", ptr %t96, i32 0, i32 0
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s7, ptr %t98, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d46, i32 0, i32 1) })
  br label %bb24
bb23:
  br label %bb26
bb24:
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t102 = getelementptr %"compiler/session:Items", ptr %t100, i32 0, i32 0
  %t103 = load { i64, ptr }, ptr %l3, !tbaa !27
  call void @compiler_2fsession_2eJsonStr(ptr %v0, ptr %v2, ptr %t102, { i64, ptr } %t103)
  br label %bb25
bb25:
  call void @__olang_scope_close(ptr %s7)
  br label %bb26
bb26:
  br i1 %a4, label %bb27, label %bb28
bb27:
  store %olang.scope zeroinitializer, ptr %s8
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t110 = getelementptr %"compiler/session:Items", ptr %t108, i32 0, i32 0
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s8, ptr %t110, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d47, i32 0, i32 1) })
  br label %bb29
bb28:
  br label %bb30
bb29:
  call void @__olang_scope_close(ptr %s8)
  br label %bb30
bb30:
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t114 = getelementptr %"compiler/session:Items", ptr %t112, i32 0, i32 0
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %t114, i8 125)
  br label %bb31
bb31:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, i64 } @compiler_2fsession_2ecompiler_2fsession_3aPositions_2ePos(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l32 = alloca { i64, ptr }
  %l42 = alloca { i64, ptr }
  %l53 = alloca i64
  %l58 = alloca i64
  %rv = alloca { i64, i64 }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 %a1, ptr %l2, !tbaa !24
  %t3 = load i64, ptr %l2, !tbaa !24
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/session:Positions", ptr %t4, i32 0, i32 0
  %t7 = load { i64, ptr }, ptr %t6, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t7, 0
  %t12 = icmp sgt i64 %t3, %t9
  br i1 %t12, label %bb1, label %bb2
bb1:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/session:Positions", ptr %t14, i32 0, i32 0
  %t17 = load { i64, ptr }, ptr %t16, !tbaa !27
  %t19 = extractvalue { i64, ptr } %t17, 0
  store i64 %t19, ptr %l2, !tbaa !24
  br label %bb3
bb2:
  br label %bb3
bb3:
  %t21 = load i64, ptr %l2, !tbaa !24
  %t23 = icmp slt i64 %t21, 0
  br i1 %t23, label %bb4, label %bb5
bb4:
  store i64 0, ptr %l2, !tbaa !24
  br label %bb6
bb5:
  br label %bb6
bb6:
  store i64 0, ptr %l3, !tbaa !24
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/session:Positions", ptr %t25, i32 0, i32 2
  %t28 = load { i64, ptr }, ptr %t27, !tbaa !27
  %t30 = extractvalue { i64, ptr } %t28, 0
  %t32 = sub i64 %t30, 1
  store i64 %t32, ptr %l4, !tbaa !24
  br label %bb7
bb7:
  %t34 = load i64, ptr %l3, !tbaa !24
  %t35 = load i64, ptr %l4, !tbaa !24
  %t38 = icmp slt i64 %t34, %t35
  %t40 = xor i1 %t38, true
  br i1 %t40, label %bb8, label %bb9
bb8:
  br label %bb15
bb9:
  br label %bb10
bb10:
  %t42 = load i64, ptr %l3, !tbaa !24
  %t43 = load i64, ptr %l4, !tbaa !24
  %t46 = add i64 %t42, %t43
  %t48 = add i64 %t46, 1
  %t50 = sdiv i64 %t48, 2
  store i64 %t50, ptr %l5, !tbaa !24
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/session:Positions", ptr %t52, i32 0, i32 2
  %t55 = load { i64, ptr }, ptr %t54, !tbaa !27
  store { i64, ptr } %t55, ptr %l32, !tbaa !27
  %t56 = load i64, ptr %l5, !tbaa !24
  %t58 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !27
  %t60 = getelementptr i32, ptr %t59, i64 %t56
  %t61 = load i32, ptr %t60, !tbaa !33
  %t63 = sext i32 %t61 to i64
  %t64 = load i64, ptr %l2, !tbaa !24
  %t67 = icmp sle i64 %t63, %t64
  br i1 %t67, label %bb11, label %bb12
bb11:
  %t69 = load i64, ptr %l5, !tbaa !24
  store i64 %t69, ptr %l3, !tbaa !24
  br label %bb13
bb12:
  %t71 = load i64, ptr %l5, !tbaa !24
  %t73 = sub i64 %t71, 1
  store i64 %t73, ptr %l4, !tbaa !24
  br label %bb13
bb13:
  br label %bb14
bb14:
  br label %bb7
bb15:
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t77 = getelementptr %"compiler/session:Positions", ptr %t75, i32 0, i32 2
  %t78 = load { i64, ptr }, ptr %t77, !tbaa !27
  store { i64, ptr } %t78, ptr %l42, !tbaa !27
  %t79 = load i64, ptr %l3, !tbaa !24
  %t81 = getelementptr { i64, ptr }, ptr %l42, i32 0, i32 1
  %t82 = load ptr, ptr %t81, !tbaa !27
  %t83 = getelementptr i32, ptr %t82, i64 %t79
  %t84 = load i32, ptr %t83, !tbaa !33
  %t86 = sext i32 %t84 to i64
  store i64 %t86, ptr %l6, !tbaa !24
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t90 = getelementptr %"compiler/session:Positions", ptr %t88, i32 0, i32 1
  %t91 = load i1, ptr %t90, !tbaa !21
  br i1 %t91, label %bb16, label %bb17
bb16:
  %t93 = load i64, ptr %l3, !tbaa !24
  %t94 = load i64, ptr %l2, !tbaa !24
  %t95 = load i64, ptr %l6, !tbaa !24
  %t98 = sub i64 %t94, %t95
  %t100 = insertvalue { i64, i64 } undef, i64 %t93, 0
  %t102 = insertvalue { i64, i64 } %t100, i64 %t98, 1
  store { i64, i64 } %t102, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  %t104 = load i64, ptr %l3, !tbaa !24
  store i64 %t104, ptr %l53, !tbaa !24
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t107 = getelementptr %"compiler/session:Positions", ptr %t105, i32 0, i32 0
  %t108 = load { i64, ptr }, ptr %t107, !tbaa !27
  %t109 = load i64, ptr %l6, !tbaa !24
  %t110 = load i64, ptr %l2, !tbaa !24
  %t114 = call i64 @compiler_2fsession_2eutf16Units(ptr %v0, { i64, ptr } %t108, i64 %t109, i64 %t110)
  store i64 %t114, ptr %l58
  br label %bb19
bb19:
  %t115 = load i64, ptr %l53, !tbaa !24
  %t116 = insertvalue { i64, i64 } undef, i64 %t115, 0
  %t117 = load i64, ptr %l58, !tbaa !24
  %t118 = insertvalue { i64, i64 } %t116, i64 %t117, 1
  store { i64, i64 } %t118, ptr %rv
  br label %ret
ret:
  %rr = load { i64, i64 }, ptr %rv
  ret { i64, i64 } %rr
}

define dso_local i1 @compiler_2fsession_2ecompiler_2fsession_3aReader_2eFill(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca [65536 x i8]
  %l2 = alloca i64
  %l3 = alloca [65536 x i8]
  %l7 = alloca [65536 x i8]
  %l10 = alloca i64
  %l16 = alloca ptr
  %l17 = alloca i64
  %l18 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  br label %fill.4
fill.4:
  br label %fill.1
fill.1:
  %t5 = phi i64 [ 0, %fill.4 ], [ %t6, %fill.2 ]
  %t7 = icmp slt i64 %t5, 65536
  br i1 %t7, label %fill.2, label %fill.3
fill.2:
  %t8 = getelementptr [65536 x i8], ptr %l3, i64 0, i64 %t5
  store i8 0, ptr %t8
  %t6 = add i64 %t5, 1
  br label %fill.1
fill.3:
  call void @llvm.memmove.p0.p0.i64(ptr %l1, ptr %l3, i64 65536, i1 false)
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/session:Reader", ptr %t9, i32 0, i32 0
  %t12 = load i32, ptr %t11, !tbaa !23
  call void @llvm.memmove.p0.p0.i64(ptr %l7, ptr %l1, i64 65536, i1 false)
  %t13 = load [65536 x i8], ptr %l7
  %t18 = call i64 @read(i32 %t12, ptr %l1, i64 65536)
  store i64 %t18, ptr %l10
  br label %bb1
bb1:
  %t19 = load i64, ptr %l10, !tbaa !24
  store i64 %t19, ptr %l2, !tbaa !24
  %t20 = load i64, ptr %l2, !tbaa !24
  %t22 = icmp sle i64 %t20, 0
  br i1 %t22, label %bb2, label %bb3
bb2:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/session:Reader", ptr %t24, i32 0, i32 2
  store i1 true, ptr %t26, !tbaa !21
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/session:Reader", ptr %t28, i32 0, i32 1
  store ptr %t30, ptr %l16, !tbaa !29
  %t31 = load i64, ptr %l2, !tbaa !24
  store i64 %t31, ptr %l17, !tbaa !24
  %t32 = load [65536 x i8], ptr %l1
  store i64 65536, ptr %l18, !tbaa !24
  %t33 = icmp sge i64 0, 0
  br i1 %t33, label %bb5, label %bb6
bb5:
  %t35 = load i64, ptr %l17, !tbaa !24
  %t36 = icmp sle i64 0, %t35
  br i1 %t36, label %bb7, label %bb8
bb6:
  call void @__olang_check_failed(ptr @olang_loc_bca4a5ed74171cc7_e50f418fa8ad666b)
  unreachable
bb7:
  %t38 = load i64, ptr %l17, !tbaa !24
  %t39 = load i64, ptr %l18, !tbaa !24
  %t40 = icmp sle i64 %t38, %t39
  br i1 %t40, label %bb9, label %bb10
bb8:
  call void @__olang_check_failed(ptr @olang_loc_bca4a5ed74171cc7_e50f418fa8ad666b)
  unreachable
bb9:
  %t42 = load i64, ptr %l17, !tbaa !24
  %t43 = getelementptr i8, ptr %l1, i64 0
  %t44 = sub i64 %t42, 0
  %t45 = insertvalue { i64, ptr } undef, i64 %t44, 0
  %t46 = insertvalue { i64, ptr } %t45, ptr %t43, 1
  %t47 = load ptr, ptr %l16, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2ePushAll_3cU8_3e(ptr %v0, ptr %s0, ptr %t47, { i64, ptr } %t46)
  br label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_bca4a5ed74171cc7_e50f418fa8ad666b)
  unreachable
bb11:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i32, { i64, ptr } } @compiler_2fsession_2ecompiler_2fsession_3aReader_2eNext(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l5 = alloca i64
  %l6 = alloca %"std/prelude/text:LineIter"
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %lp10 = alloca ptr
  %l13 = alloca { i64, ptr }
  %l20 = alloca i1
  %l21 = alloca { i64, ptr }
  %l25 = alloca i1
  %l26 = alloca { i64, ptr }
  %l31 = alloca i1
  %l32 = alloca { i64, ptr }
  %l37 = alloca i1
  %l38 = alloca { i64, ptr }
  %l52 = alloca { i64, ptr }
  %l53 = alloca i64
  %l54 = alloca i64
  %l59 = alloca { i64, ptr }
  %l60 = alloca i64
  %l61 = alloca { i64, ptr }
  %l64 = alloca %"std/prelude/text:LineIter"
  %l65 = alloca { i64, ptr }
  %l67 = alloca { i64, ptr }
  %l68 = alloca i32
  %l70 = alloca i1
  %l72 = alloca { i64, ptr }
  %l74 = alloca { i64, ptr }
  %l76 = alloca i1
  %l77 = alloca i64
  %l78 = alloca { i64, ptr }
  %l81 = alloca i64
  %l82 = alloca i64
  %l87 = alloca { i64, ptr }
  %l88 = alloca i64
  %l89 = alloca i32
  %l90 = alloca i64
  %l91 = alloca i32
  %l105 = alloca { i64, ptr }
  %l106 = alloca i64
  %l109 = alloca i64
  %l110 = alloca i64
  %l115 = alloca { i64, ptr }
  %l116 = alloca i64
  %l117 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %rv = alloca { i32, { i64, ptr } }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/session:Reader", ptr %t1, i32 0, i32 1
  %t5 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eView_3cU8_3e(ptr %v0, ptr %v0, ptr %t3)
  store { i64, ptr } %t5, ptr %l13
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t6, ptr %l1, !tbaa !27
  %t7 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t7, 0
  store i64 %t9, ptr %l2, !tbaa !24
  store i64 0, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  %t11 = load i64, ptr %l3, !tbaa !24
  %t13 = add i64 %t11, 3
  %t14 = load i64, ptr %l2, !tbaa !24
  %t17 = icmp slt i64 %t13, %t14
  br i1 %t17, label %bb3, label %bb4
bb3:
  %t19 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t19, ptr %l21, !tbaa !27
  %t20 = load i64, ptr %l3, !tbaa !24
  %t22 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !27
  %t24 = getelementptr i8, ptr %t23, i64 %t20
  %t25 = load i8, ptr %t24, !tbaa !32
  %t27 = icmp eq i8 %t25, 13
  br i1 %t27, label %bb5, label %bb6
bb4:
  store i1 false, ptr %l20, !tbaa !21
  br label %bb14
bb5:
  %t29 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t29, ptr %l26, !tbaa !27
  %t30 = load i64, ptr %l3, !tbaa !24
  %t32 = add i64 %t30, 1
  %t34 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t35 = load ptr, ptr %t34, !tbaa !27
  %t36 = getelementptr i8, ptr %t35, i64 %t32
  %t37 = load i8, ptr %t36, !tbaa !32
  %t39 = icmp eq i8 %t37, 10
  store i1 %t39, ptr %l25, !tbaa !21
  br label %bb7
bb6:
  store i1 false, ptr %l25, !tbaa !21
  br label %bb7
bb7:
  %t41 = load i1, ptr %l25, !tbaa !21
  br i1 %t41, label %bb8, label %bb9
bb8:
  %t42 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t42, ptr %l32, !tbaa !27
  %t43 = load i64, ptr %l3, !tbaa !24
  %t45 = add i64 %t43, 2
  %t47 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t48 = load ptr, ptr %t47, !tbaa !27
  %t49 = getelementptr i8, ptr %t48, i64 %t45
  %t50 = load i8, ptr %t49, !tbaa !32
  %t52 = icmp eq i8 %t50, 13
  store i1 %t52, ptr %l31, !tbaa !21
  br label %bb10
bb9:
  store i1 false, ptr %l31, !tbaa !21
  br label %bb10
bb10:
  %t54 = load i1, ptr %l31, !tbaa !21
  br i1 %t54, label %bb11, label %bb12
bb11:
  %t55 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t55, ptr %l38, !tbaa !27
  %t56 = load i64, ptr %l3, !tbaa !24
  %t58 = add i64 %t56, 3
  %t60 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t61 = load ptr, ptr %t60, !tbaa !27
  %t62 = getelementptr i8, ptr %t61, i64 %t58
  %t63 = load i8, ptr %t62, !tbaa !32
  %t65 = icmp eq i8 %t63, 10
  store i1 %t65, ptr %l37, !tbaa !21
  br label %bb13
bb12:
  store i1 false, ptr %l37, !tbaa !21
  br label %bb13
bb13:
  %t67 = load i1, ptr %l37, !tbaa !21
  %t68 = xor i1 %t67, true
  store i1 %t68, ptr %l20, !tbaa !21
  br label %bb14
bb14:
  %t70 = load i1, ptr %l20, !tbaa !21
  %t71 = xor i1 %t70, true
  br i1 %t71, label %bb15, label %bb16
bb15:
  br label %bb19
bb16:
  br label %bb17
bb17:
  %t73 = load i64, ptr %l3, !tbaa !24
  %t75 = add i64 %t73, 1
  store i64 %t75, ptr %l3, !tbaa !24
  br label %bb18
bb18:
  br label %bb2
bb19:
  %t77 = load i64, ptr %l3, !tbaa !24
  %t79 = add i64 %t77, 3
  %t80 = load i64, ptr %l2, !tbaa !24
  %t83 = icmp sge i64 %t79, %t80
  br i1 %t83, label %bb20, label %bb21
bb20:
  call void @__olang_scope_close(ptr %s0)
  %t86 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65536, 0
  store { i32, { i64, ptr } } %t86, ptr %rv
  br label %ret
bb21:
  br label %bb22
bb22:
  %t87 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t87, ptr %l52, !tbaa !27
  %t88 = load i64, ptr %l3, !tbaa !24
  store i64 %t88, ptr %l53, !tbaa !24
  %t89 = load { i64, ptr }, ptr %l52, !tbaa !27
  %t90 = extractvalue { i64, ptr } %t89, 0
  store i64 %t90, ptr %l54, !tbaa !24
  %t91 = icmp sge i64 0, 0
  br i1 %t91, label %bb23, label %bb24
bb23:
  %t93 = load i64, ptr %l53, !tbaa !24
  %t94 = icmp sle i64 0, %t93
  br i1 %t94, label %bb25, label %bb26
bb24:
  call void @__olang_check_failed(ptr @olang_loc_36ec2fbf7c558d87_ca970629ee3fcabb)
  unreachable
bb25:
  %t96 = load i64, ptr %l53, !tbaa !24
  %t97 = load i64, ptr %l54, !tbaa !24
  %t98 = icmp sle i64 %t96, %t97
  br i1 %t98, label %bb27, label %bb28
bb26:
  call void @__olang_check_failed(ptr @olang_loc_36ec2fbf7c558d87_ca970629ee3fcabb)
  unreachable
bb27:
  %t100 = getelementptr { i64, ptr }, ptr %l52, i32 0, i32 1
  %t101 = load ptr, ptr %t100, !tbaa !27
  %t102 = load i64, ptr %l53, !tbaa !24
  %t103 = getelementptr i8, ptr %t101, i64 0
  %t104 = sub i64 %t102, 0
  %t105 = insertvalue { i64, ptr } undef, i64 %t104, 0
  %t106 = insertvalue { i64, ptr } %t105, ptr %t103, 1
  store { i64, ptr } %t106, ptr %l59, !tbaa !27
  %t108 = load { i64, ptr }, ptr %l59, !tbaa !27
  %t109 = extractvalue { i64, ptr } %t108, 0
  store i64 %t109, ptr %l60, !tbaa !24
  %t110 = load i64, ptr %l60, !tbaa !24
  %t111 = mul i64 %t110, 1
  %t112 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t111)
  %t113 = insertvalue { i64, ptr } undef, i64 %t110, 0
  %t114 = insertvalue { i64, ptr } %t113, ptr %t112, 1
  store { i64, ptr } %t114, ptr %l61, !tbaa !27
  %t115 = getelementptr { i64, ptr }, ptr %l61, i32 0, i32 1
  %t116 = load ptr, ptr %t115, !tbaa !27
  %t117 = getelementptr { i64, ptr }, ptr %l59, i32 0, i32 1
  %t118 = load ptr, ptr %t117, !tbaa !27
  %t119 = load i64, ptr %l60, !tbaa !24
  %t120 = mul i64 %t119, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t116, ptr %t118, i64 %t120, i1 false)
  %t121 = load { i64, ptr }, ptr %l61, !tbaa !27
  store i64 -1, ptr %l5, !tbaa !24
  %t125 = call %"std/prelude/text:LineIter" @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLines(ptr %s0, ptr %s0, { i64, ptr } %t121)
  store %"std/prelude/text:LineIter" %t125, ptr %l64
  br label %bb29
bb28:
  call void @__olang_check_failed(ptr @olang_loc_36ec2fbf7c558d87_ca970629ee3fcabb)
  unreachable
bb29:
  %t126 = load %"std/prelude/text:LineIter", ptr %l64
  store %"std/prelude/text:LineIter" %t126, ptr %l6
  br label %bb30
bb30:
  store %olang.scope zeroinitializer, ptr %s4
  %t128 = call { i32, { i64, ptr } } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aLineIter_2eNext(ptr %s0, ptr %s0, ptr %l6)
  %t129 = extractvalue { i32, { i64, ptr } } %t128, 1
  %t130 = extractvalue { i32, { i64, ptr } } %t128, 0
  store i32 %t130, ptr %l68
  %t131 = icmp ne i32 %t130, 0
  br i1 %t131, label %bb32, label %ok.132, !prof !99
ok.132:
  store { i64, ptr } %t129, ptr %l67
  br label %bb31
bb31:
  %t133 = load { i64, ptr }, ptr %l67, !tbaa !27
  store { i64, ptr } %t133, ptr %l65, !tbaa !27
  br label %bb34
bb32:
  %t134 = load i32, ptr %l68, !tbaa !23
  %t135 = ashr i32 %t134, 16
  %t137 = icmp eq i32 %t135, 1
  store i1 %t137, ptr %l70, !tbaa !21
  br label %bb33
bb33:
  call void @__olang_scope_close(ptr %s4)
  br label %bb55
bb34:
  %t138 = load { i64, ptr }, ptr %l65, !tbaa !27
  %t141 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrim(ptr %s0, ptr %s0, { i64, ptr } %t138)
  store { i64, ptr } %t141, ptr %l72
  br label %bb35
bb35:
  %t142 = load { i64, ptr }, ptr %l72, !tbaa !27
  store { i64, ptr } %t142, ptr %l8, !tbaa !27
  %t143 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t145 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eToLower(ptr %s0, ptr %s4, { i64, ptr } %t143)
  store { i64, ptr } %t145, ptr %l74
  br label %bb36
bb36:
  %t146 = load { i64, ptr }, ptr %l74, !tbaa !27
  %t147 = extractvalue { i64, ptr } %t146, 0
  %t148 = extractvalue { i64, ptr } %t146, 1
  %t149 = mul i64 %t147, 1
  %t150 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t149)
  call void @llvm.memcpy.p0.p0.i64(ptr %t150, ptr %t148, i64 %t149, i1 false)
  %t151 = insertvalue { i64, ptr } undef, i64 %t147, 0
  %t152 = insertvalue { i64, ptr } %t151, ptr %t150, 1
  %t154 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s4, ptr %s4, { i64, ptr } %t152, { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d48, i32 0, i32 1) })
  store i1 %t154, ptr %l76
  br label %bb37
bb37:
  %t155 = load i1, ptr %l76, !tbaa !21
  br i1 %t155, label %bb38, label %bb39
bb38:
  store %olang.scope zeroinitializer, ptr %s5
  %t156 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t156, ptr %l78, !tbaa !27
  %t157 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t160 = extractvalue { i64, ptr } %t157, 0
  store i64 %t160, ptr %l81, !tbaa !24
  %t161 = load { i64, ptr }, ptr %l78, !tbaa !27
  %t162 = extractvalue { i64, ptr } %t161, 0
  store i64 %t162, ptr %l82, !tbaa !24
  %t163 = icmp sge i64 15, 0
  br i1 %t163, label %bb40, label %bb41
bb39:
  br label %bb53
bb40:
  %t165 = load i64, ptr %l81, !tbaa !24
  %t166 = icmp sle i64 15, %t165
  br i1 %t166, label %bb42, label %bb43
bb41:
  call void @__olang_check_failed(ptr @olang_loc_757e008d51ce27aa_df9e4b2b6fbab93e)
  unreachable
bb42:
  %t168 = load i64, ptr %l81, !tbaa !24
  %t169 = load i64, ptr %l82, !tbaa !24
  %t170 = icmp sle i64 %t168, %t169
  br i1 %t170, label %bb44, label %bb45
bb43:
  call void @__olang_check_failed(ptr @olang_loc_757e008d51ce27aa_df9e4b2b6fbab93e)
  unreachable
bb44:
  %t172 = getelementptr { i64, ptr }, ptr %l78, i32 0, i32 1
  %t173 = load ptr, ptr %t172, !tbaa !27
  %t174 = load i64, ptr %l81, !tbaa !24
  %t175 = getelementptr i8, ptr %t173, i64 15
  %t176 = sub i64 %t174, 15
  %t177 = insertvalue { i64, ptr } undef, i64 %t176, 0
  %t178 = insertvalue { i64, ptr } %t177, ptr %t175, 1
  %t180 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrim(ptr %s0, ptr %s5, { i64, ptr } %t178)
  store { i64, ptr } %t180, ptr %l87
  br label %bb46
bb45:
  call void @__olang_check_failed(ptr @olang_loc_757e008d51ce27aa_df9e4b2b6fbab93e)
  unreachable
bb46:
  %t181 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s5, i64 10)
  %t182 = extractvalue { i32, i64 } %t181, 1
  %t183 = extractvalue { i32, i64 } %t181, 0
  store i32 %t183, ptr %l89
  %t184 = icmp ne i32 %t183, 0
  br i1 %t184, label %bb48, label %ok.185, !prof !99
ok.185:
  store i64 %t182, ptr %l88
  br label %bb47
bb47:
  %t186 = load { i64, ptr }, ptr %l87, !tbaa !27
  %t187 = load i64, ptr %l88, !tbaa !24
  %t188 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %s5, { i64, ptr } %t186, i64 %t187)
  %t189 = extractvalue { i32, i64 } %t188, 1
  %t190 = extractvalue { i32, i64 } %t188, 0
  store i32 %t190, ptr %l91
  %t191 = icmp ne i32 %t190, 0
  br i1 %t191, label %bb51, label %ok.192, !prof !99
ok.192:
  store i64 %t189, ptr %l90
  br label %bb50
bb48:
  br label %bb49
bb49:
  store i64 -1, ptr %l77, !tbaa !24
  br label %bb52
bb50:
  %t193 = load i64, ptr %l90, !tbaa !24
  store i64 %t193, ptr %l77, !tbaa !24
  br label %bb52
bb51:
  br label %bb49
bb52:
  %t194 = load i64, ptr %l77, !tbaa !24
  store i64 %t194, ptr %l5, !tbaa !24
  call void @__olang_scope_close(ptr %s5)
  br label %bb53
bb53:
  call void @__olang_scope_close(ptr %s4)
  br label %bb54
bb54:
  br label %bb30
bb55:
  %t195 = load i64, ptr %l3, !tbaa !24
  %t197 = add i64 %t195, 4
  store i64 %t197, ptr %l9, !tbaa !24
  %t199 = load i64, ptr %l5, !tbaa !24
  %t201 = icmp slt i64 %t199, 0
  br i1 %t201, label %bb56, label %bb57
bb56:
  %t203 = load ptr, ptr %l0, !tbaa !29
  %t204 = load i64, ptr %l9, !tbaa !24
  call void @compiler_2fsession_2ecompiler_2fsession_3aReader_2edrop(ptr %v0, ptr %t203, i64 %t204)
  br label %bb58
bb57:
  br label %bb59
bb58:
  call void @__olang_scope_close(ptr %s0)
  %t208 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65536, 0
  store { i32, { i64, ptr } } %t208, ptr %rv
  br label %ret
bb59:
  %t209 = load i64, ptr %l2, !tbaa !24
  %t210 = load i64, ptr %l9, !tbaa !24
  %t211 = load i64, ptr %l5, !tbaa !24
  %t214 = add i64 %t210, %t211
  %t217 = icmp slt i64 %t209, %t214
  br i1 %t217, label %bb60, label %bb61
bb60:
  call void @__olang_scope_close(ptr %s0)
  %t220 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65536, 0
  store { i32, { i64, ptr } } %t220, ptr %rv
  br label %ret
bb61:
  br label %bb62
bb62:
  %t221 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t221, ptr %l105, !tbaa !27
  %t222 = load i64, ptr %l9, !tbaa !24
  store i64 %t222, ptr %l106, !tbaa !24
  %t223 = load i64, ptr %l9, !tbaa !24
  %t224 = load i64, ptr %l5, !tbaa !24
  %t227 = add i64 %t223, %t224
  store i64 %t227, ptr %l109, !tbaa !24
  %t228 = load { i64, ptr }, ptr %l105, !tbaa !27
  %t229 = extractvalue { i64, ptr } %t228, 0
  store i64 %t229, ptr %l110, !tbaa !24
  %t230 = load i64, ptr %l106, !tbaa !24
  %t231 = icmp sge i64 %t230, 0
  br i1 %t231, label %bb63, label %bb64
bb63:
  %t233 = load i64, ptr %l106, !tbaa !24
  %t234 = load i64, ptr %l109, !tbaa !24
  %t235 = icmp sle i64 %t233, %t234
  br i1 %t235, label %bb65, label %bb66
bb64:
  call void @__olang_check_failed(ptr @olang_loc_7fa1338bfb5c4549_286381a3bde0b91d)
  unreachable
bb65:
  %t237 = load i64, ptr %l109, !tbaa !24
  %t238 = load i64, ptr %l110, !tbaa !24
  %t239 = icmp sle i64 %t237, %t238
  br i1 %t239, label %bb67, label %bb68
bb66:
  call void @__olang_check_failed(ptr @olang_loc_7fa1338bfb5c4549_286381a3bde0b91d)
  unreachable
bb67:
  %t241 = getelementptr { i64, ptr }, ptr %l105, i32 0, i32 1
  %t242 = load ptr, ptr %t241, !tbaa !27
  %t243 = load i64, ptr %l106, !tbaa !24
  %t244 = load i64, ptr %l109, !tbaa !24
  %t245 = getelementptr i8, ptr %t242, i64 %t243
  %t246 = sub i64 %t244, %t243
  %t247 = insertvalue { i64, ptr } undef, i64 %t246, 0
  %t248 = insertvalue { i64, ptr } %t247, ptr %t245, 1
  store { i64, ptr } %t248, ptr %l115, !tbaa !27
  %t250 = load { i64, ptr }, ptr %l115, !tbaa !27
  %t251 = extractvalue { i64, ptr } %t250, 0
  store i64 %t251, ptr %l116, !tbaa !24
  %t252 = load i64, ptr %l116, !tbaa !24
  %t253 = mul i64 %t252, 1
  %t254 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t253)
  %t255 = insertvalue { i64, ptr } undef, i64 %t252, 0
  %t256 = insertvalue { i64, ptr } %t255, ptr %t254, 1
  store { i64, ptr } %t256, ptr %l117, !tbaa !27
  %t257 = getelementptr { i64, ptr }, ptr %l117, i32 0, i32 1
  %t258 = load ptr, ptr %t257, !tbaa !27
  %t259 = getelementptr { i64, ptr }, ptr %l115, i32 0, i32 1
  %t260 = load ptr, ptr %t259, !tbaa !27
  %t261 = load i64, ptr %l116, !tbaa !24
  %t262 = mul i64 %t261, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t258, ptr %t260, i64 %t262, i1 false)
  %t263 = load { i64, ptr }, ptr %l117, !tbaa !27
  %t265 = extractvalue { i64, ptr } %t263, 1
  %t266 = extractvalue { i64, ptr } %t263, 0
  %t267 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t266)
  call void @olang_textcopy(ptr %t267, ptr %t265, i64 %t266)
  %t268 = insertvalue { i64, ptr } undef, i64 %t266, 0
  %t269 = insertvalue { i64, ptr } %t268, ptr %t267, 1
  %t270 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t270, ptr %lp10
  %t272 = load ptr, ptr %lp10
  store { i64, ptr } %t269, ptr %t272, !tbaa !27
  %t273 = load ptr, ptr %l0, !tbaa !29
  %t274 = load i64, ptr %l9, !tbaa !24
  %t275 = load i64, ptr %l5, !tbaa !24
  %t278 = add i64 %t274, %t275
  call void @compiler_2fsession_2ecompiler_2fsession_3aReader_2edrop(ptr %v0, ptr %t273, i64 %t278)
  br label %bb69
bb68:
  call void @__olang_check_failed(ptr @olang_loc_7fa1338bfb5c4549_286381a3bde0b91d)
  unreachable
bb69:
  %t281 = load ptr, ptr %lp10
  %t282 = load { i64, ptr }, ptr %t281, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t284 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t282, 1
  store { i32, { i64, ptr } } %t284, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local { i32, { i64, ptr } } @compiler_2fsession_2ecompiler_2fsession_3aReader_2eNextLine(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %lp5 = alloca ptr
  %l8 = alloca { i64, ptr }
  %l14 = alloca i1
  %l15 = alloca { i64, ptr }
  %l28 = alloca i1
  %l29 = alloca { i64, ptr }
  %l34 = alloca i64
  %l38 = alloca { i64, ptr }
  %l39 = alloca i64
  %l40 = alloca i64
  %l45 = alloca { i64, ptr }
  %l46 = alloca i64
  %l47 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i32, { i64, ptr } }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/session:Reader", ptr %t1, i32 0, i32 1
  %t5 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eView_3cU8_3e(ptr %v0, ptr %v0, ptr %t3)
  store { i64, ptr } %t5, ptr %l8
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t6, ptr %l1, !tbaa !27
  %t7 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t7, 0
  store i64 %t9, ptr %l2, !tbaa !24
  store i64 0, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  %t11 = load i64, ptr %l3, !tbaa !24
  %t12 = load i64, ptr %l2, !tbaa !24
  %t15 = icmp slt i64 %t11, %t12
  br i1 %t15, label %bb3, label %bb4
bb3:
  %t17 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t17, ptr %l15, !tbaa !27
  %t18 = load i64, ptr %l3, !tbaa !24
  %t20 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !27
  %t22 = getelementptr i8, ptr %t21, i64 %t18
  %t23 = load i8, ptr %t22, !tbaa !32
  %t25 = icmp ne i8 %t23, 10
  store i1 %t25, ptr %l14, !tbaa !21
  br label %bb5
bb4:
  store i1 false, ptr %l14, !tbaa !21
  br label %bb5
bb5:
  %t27 = load i1, ptr %l14, !tbaa !21
  %t28 = xor i1 %t27, true
  br i1 %t28, label %bb6, label %bb7
bb6:
  br label %bb10
bb7:
  br label %bb8
bb8:
  %t30 = load i64, ptr %l3, !tbaa !24
  %t32 = add i64 %t30, 1
  store i64 %t32, ptr %l3, !tbaa !24
  br label %bb9
bb9:
  br label %bb2
bb10:
  %t34 = load i64, ptr %l3, !tbaa !24
  %t35 = load i64, ptr %l2, !tbaa !24
  %t38 = icmp sge i64 %t34, %t35
  br i1 %t38, label %bb11, label %bb12
bb11:
  call void @__olang_scope_close(ptr %s0)
  %t41 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65536, 0
  store { i32, { i64, ptr } } %t41, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  %t42 = load i64, ptr %l3, !tbaa !24
  %t44 = icmp sgt i64 %t42, 0
  br i1 %t44, label %bb14, label %bb15
bb14:
  %t46 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t46, ptr %l29, !tbaa !27
  %t47 = load i64, ptr %l3, !tbaa !24
  %t49 = sub i64 %t47, 1
  %t51 = getelementptr { i64, ptr }, ptr %l29, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !27
  %t53 = getelementptr i8, ptr %t52, i64 %t49
  %t54 = load i8, ptr %t53, !tbaa !32
  %t56 = icmp eq i8 %t54, 13
  store i1 %t56, ptr %l28, !tbaa !21
  br label %bb16
bb15:
  store i1 false, ptr %l28, !tbaa !21
  br label %bb16
bb16:
  %t58 = load i1, ptr %l28, !tbaa !21
  br i1 %t58, label %bb17, label %bb18
bb17:
  %t59 = load i64, ptr %l3, !tbaa !24
  %t61 = sub i64 %t59, 1
  store i64 %t61, ptr %l34, !tbaa !24
  br label %bb19
bb18:
  %t63 = load i64, ptr %l3, !tbaa !24
  store i64 %t63, ptr %l34, !tbaa !24
  br label %bb19
bb19:
  %t65 = load i64, ptr %l34, !tbaa !24
  %t66 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t66, ptr %l38, !tbaa !27
  store i64 %t65, ptr %l39, !tbaa !24
  %t68 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t69 = extractvalue { i64, ptr } %t68, 0
  store i64 %t69, ptr %l40, !tbaa !24
  %t70 = icmp sge i64 0, 0
  br i1 %t70, label %bb20, label %bb21
bb20:
  %t72 = load i64, ptr %l39, !tbaa !24
  %t73 = icmp sle i64 0, %t72
  br i1 %t73, label %bb22, label %bb23
bb21:
  call void @__olang_check_failed(ptr @olang_loc_98e1614ed1d054f5_86eb50e982cc0441)
  unreachable
bb22:
  %t75 = load i64, ptr %l39, !tbaa !24
  %t76 = load i64, ptr %l40, !tbaa !24
  %t77 = icmp sle i64 %t75, %t76
  br i1 %t77, label %bb24, label %bb25
bb23:
  call void @__olang_check_failed(ptr @olang_loc_98e1614ed1d054f5_86eb50e982cc0441)
  unreachable
bb24:
  %t79 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t80 = load ptr, ptr %t79, !tbaa !27
  %t81 = load i64, ptr %l39, !tbaa !24
  %t82 = getelementptr i8, ptr %t80, i64 0
  %t83 = sub i64 %t81, 0
  %t84 = insertvalue { i64, ptr } undef, i64 %t83, 0
  %t85 = insertvalue { i64, ptr } %t84, ptr %t82, 1
  store { i64, ptr } %t85, ptr %l45, !tbaa !27
  %t87 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t88 = extractvalue { i64, ptr } %t87, 0
  store i64 %t88, ptr %l46, !tbaa !24
  %t89 = load i64, ptr %l46, !tbaa !24
  %t90 = mul i64 %t89, 1
  %t91 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t90)
  %t92 = insertvalue { i64, ptr } undef, i64 %t89, 0
  %t93 = insertvalue { i64, ptr } %t92, ptr %t91, 1
  store { i64, ptr } %t93, ptr %l47, !tbaa !27
  %t94 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t95 = load ptr, ptr %t94, !tbaa !27
  %t96 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t97 = load ptr, ptr %t96, !tbaa !27
  %t98 = load i64, ptr %l46, !tbaa !24
  %t99 = mul i64 %t98, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t95, ptr %t97, i64 %t99, i1 false)
  %t100 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t102 = extractvalue { i64, ptr } %t100, 1
  %t103 = extractvalue { i64, ptr } %t100, 0
  %t104 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t103)
  call void @olang_textcopy(ptr %t104, ptr %t102, i64 %t103)
  %t105 = insertvalue { i64, ptr } undef, i64 %t103, 0
  %t106 = insertvalue { i64, ptr } %t105, ptr %t104, 1
  %t107 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t107, ptr %lp5
  %t109 = load ptr, ptr %lp5
  store { i64, ptr } %t106, ptr %t109, !tbaa !27
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t111 = load i64, ptr %l3, !tbaa !24
  %t113 = add i64 %t111, 1
  call void @compiler_2fsession_2ecompiler_2fsession_3aReader_2edrop(ptr %v0, ptr %t110, i64 %t113)
  br label %bb26
bb25:
  call void @__olang_check_failed(ptr @olang_loc_98e1614ed1d054f5_86eb50e982cc0441)
  unreachable
bb26:
  %t116 = load ptr, ptr %lp5
  %t117 = load { i64, ptr }, ptr %t116, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t119 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t117, 1
  store { i32, { i64, ptr } } %t119, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local void @compiler_2fsession_2ecompiler_2fsession_3aReader_2edrop(ptr %v0, ptr %a0, i64 %a1) #0 {
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
  %l11 = alloca i64
  %l17 = alloca i64
  %l20 = alloca i64
  %l39 = alloca ptr
  %l42 = alloca i64
  %l46 = alloca i8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/session:Reader", ptr %t1, i32 0, i32 1
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eLen_3cU8_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l11
  br label %bb1
bb1:
  %t6 = load i64, ptr %l11, !tbaa !24
  store i64 %t6, ptr %l2, !tbaa !24
  %t7 = load i64, ptr %l1, !tbaa !24
  store i64 %t7, ptr %l3, !tbaa !24
  %t9 = load i64, ptr %l2, !tbaa !24
  store i64 %t9, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t11 = load i64, ptr %l4, !tbaa !24
  %t12 = load i64, ptr %l3, !tbaa !24
  %t15 = icmp sgt i64 %t11, %t12
  br i1 %t15, label %bb2, label %bb3
bb2:
  %t17 = load i64, ptr %l5, !tbaa !24
  %t19 = icmp sgt i64 %t17, 0
  br i1 %t19, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l17, !tbaa !24
  br label %bb7
bb4:
  %t21 = load i64, ptr %l4, !tbaa !24
  %t22 = load i64, ptr %l3, !tbaa !24
  %t25 = sub i64 %t21, %t22
  %t26 = load i64, ptr %l5, !tbaa !24
  %t29 = add i64 %t25, %t26
  %t31 = sub i64 %t29, 1
  %t32 = load i64, ptr %l5, !tbaa !24
  %t35 = sdiv i64 %t31, %t32
  store i64 %t35, ptr %l20, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l20, !tbaa !24
  br label %bb6
bb6:
  %t37 = load i64, ptr %l20, !tbaa !24
  store i64 %t37, ptr %l17, !tbaa !24
  br label %bb7
bb7:
  %t38 = load i64, ptr %l17, !tbaa !24
  store i64 %t38, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb8
bb8:
  %t39 = load i64, ptr %l7, !tbaa !24
  %t40 = load i64, ptr %l6, !tbaa !24
  %t43 = icmp slt i64 %t39, %t40
  %t45 = xor i1 %t43, true
  br i1 %t45, label %bb9, label %bb10
bb9:
  br label %bb15
bb10:
  br label %bb11
bb11:
  %t47 = load i64, ptr %l3, !tbaa !24
  %t48 = load i64, ptr %l7, !tbaa !24
  %t49 = load i64, ptr %l5, !tbaa !24
  %t52 = mul i64 %t48, %t49
  %t55 = add i64 %t47, %t52
  store i64 %t55, ptr %l8, !tbaa !24
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/session:Reader", ptr %t57, i32 0, i32 1
  store ptr %t59, ptr %l39, !tbaa !29
  %t60 = load i64, ptr %l8, !tbaa !24
  %t61 = load i64, ptr %l1, !tbaa !24
  %t64 = sub i64 %t60, %t61
  store i64 %t64, ptr %l42, !tbaa !24
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/session:Reader", ptr %t65, i32 0, i32 1
  %t68 = load i64, ptr %l8, !tbaa !24
  %t71 = call i8 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eAt_3cU8_3e(ptr %v0, ptr %t67, i64 %t68)
  store i8 %t71, ptr %l46
  br label %bb12
bb12:
  %t72 = load ptr, ptr %l39, !tbaa !29
  %t73 = load i64, ptr %l42, !tbaa !24
  %t74 = load i8, ptr %l46, !tbaa !22
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eSetAt_3cU8_3e(ptr %v0, ptr %t72, i64 %t73, i8 %t74)
  br label %bb13
bb13:
  br label %bb14
bb14:
  %t75 = load i64, ptr %l7, !tbaa !24
  %t77 = add i64 %t75, 1
  store i64 %t77, ptr %l7, !tbaa !24
  br label %bb8
bb15:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"compiler/session:Reader", ptr %t79, i32 0, i32 1
  %t82 = load i64, ptr %l2, !tbaa !24
  %t83 = load i64, ptr %l1, !tbaa !24
  %t86 = sub i64 %t82, %t83
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eTruncate_3cU8_3e(ptr %v0, ptr %t81, i64 %t86)
  br label %bb16
bb16:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fsession_2ecompiler_2fsession_3afinder_2ebodyCallee(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, { i64, [2 x i64] } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i32
  %l6 = alloca i32
  %l14 = alloca i64
  %l19 = alloca ptr
  %l20 = alloca i1
  %l25 = alloca ptr
  %l30 = alloca ptr
  %l33 = alloca { i64, ptr }
  %l36 = alloca i1
  %l45 = alloca ptr
  %l50 = alloca ptr
  %l53 = alloca { i64, ptr }
  %l56 = alloca i1
  %l62 = alloca ptr
  %l71 = alloca ptr
  %l72 = alloca %"compiler/source:Span"
  %l77 = alloca i64
  %l89 = alloca i32
  %l98 = alloca i32
  %l103 = alloca ptr
  %l109 = alloca i32
  %l110 = alloca { i64, ptr }
  %l113 = alloca i1
  %l114 = alloca ptr
  %l115 = alloca %"compiler/source:Span"
  %l120 = alloca i64
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %t78 = alloca { i64, [6 x i64] }, align 8
  %t151 = alloca { i64, [6 x i64] }, align 8
  %t177 = alloca { i64, [6 x i64] }, align 8
  %t285 = alloca { i64, [6 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store { i64, [2 x i64] } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [2 x i64] }, ptr %l2
  %t3 = extractvalue { i64, [2 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 0
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t7 = getelementptr { i64 }, ptr %t6, i32 0, i32 0
  %t8 = load i64, ptr %t7
  store i64 %t8, ptr %l3, !tbaa !24
  br label %bb3
bb2:
  br label %bb30
bb3:
  store %olang.scope zeroinitializer, ptr %s1
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/session:finder", ptr %t10, i32 0, i32 3
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t15 = getelementptr %"compiler/check:Checker", ptr %t13, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !29
  %t17 = load i64, ptr %l3, !tbaa !24
  %t20 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %t16, i64 %t17)
  store i64 %t20, ptr %l14
  br label %bb4
bb4:
  %t21 = load i64, ptr %l14, !tbaa !24
  store i64 %t21, ptr %l4, !tbaa !24
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/session:finder", ptr %t22, i32 0, i32 3
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t27 = getelementptr %"compiler/check:Checker", ptr %t25, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !29
  %t29 = load i64, ptr %l4, !tbaa !24
  %t32 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t28, i64 %t29)
  store ptr %t32, ptr %l19
  br label %bb5
bb5:
  %t33 = load ptr, ptr %l19, !tbaa !29
  %t34 = call i1 @compiler_2fast_2ecompiler_2fast_3aFunc_2eIsBuilder(ptr %v0, ptr %t33)
  store i1 %t34, ptr %l20
  br label %bb6
bb6:
  %t35 = load i1, ptr %l20, !tbaa !21
  br i1 %t35, label %bb7, label %bb8
bb7:
  store %olang.scope zeroinitializer, ptr %s2
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/session:finder", ptr %t36, i32 0, i32 3
  %t39 = load ptr, ptr %t38, !tbaa !29
  %t41 = getelementptr %"compiler/check:Checker", ptr %t39, i32 0, i32 1
  %t42 = load ptr, ptr %t41, !tbaa !29
  %t44 = getelementptr %"compiler/generic:Program", ptr %t42, i32 0, i32 0
  %t45 = load ptr, ptr %t44, !tbaa !29
  %t47 = getelementptr %"compiler/load:Loader", ptr %t45, i32 0, i32 3
  %t48 = load ptr, ptr %t47, !tbaa !29
  store ptr %t48, ptr %l25, !tbaa !29
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/session:finder", ptr %t49, i32 0, i32 3
  %t52 = load ptr, ptr %t51, !tbaa !29
  %t54 = getelementptr %"compiler/check:Checker", ptr %t52, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !29
  %t56 = load i64, ptr %l4, !tbaa !24
  %t59 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %s2, ptr %t55, i64 %t56)
  store ptr %t59, ptr %l30
  br label %bb9
bb8:
  br label %bb16
bb9:
  %t60 = load ptr, ptr %l30, !tbaa !29
  %t62 = getelementptr %"compiler/ast:Func", ptr %t60, i32 0, i32 10
  %t63 = load i32, ptr %t62, !tbaa !23
  %t64 = load ptr, ptr %l25, !tbaa !29
  %t66 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v0, ptr %t64, i32 %t63)
  store { i64, ptr } %t66, ptr %l33
  br label %bb10
bb10:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr %"compiler/session:finder", ptr %t67, i32 0, i32 2
  %t70 = load { i64, ptr }, ptr %t69, !tbaa !27
  %t71 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t73 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v0, { i64, ptr } %t71, { i64, ptr } %t70)
  store i1 %t73, ptr %l36
  br label %bb11
bb11:
  %t74 = load i1, ptr %l36, !tbaa !21
  br i1 %t74, label %bb12, label %bb13
bb12:
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t76 = load %"compiler/source:Span", ptr %l1
  %t77 = load i64, ptr %l4, !tbaa !24
  store { i64, [6 x i64] } zeroinitializer, ptr %t78
  %t79 = getelementptr { i64, [6 x i64] }, ptr %t78, i32 0, i32 0
  store i64 2, ptr %t79
  %t81 = insertvalue { i64 } undef, i64 %t77, 0
  %t82 = getelementptr { i64, [6 x i64] }, ptr %t78, i32 0, i32 1
  store { i64 } %t81, ptr %t82
  %t83 = load { i64, [6 x i64] }, ptr %t78
  call void @compiler_2fsession_2ecompiler_2fsession_3afinder_2etake(ptr %v0, ptr %v0, ptr %t75, %"compiler/source:Span" %t76, { i64, [6 x i64] } %t83)
  br label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb15
bb15:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s1)
  br label %ret
bb16:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr %"compiler/session:finder", ptr %t87, i32 0, i32 3
  %t90 = load ptr, ptr %t89, !tbaa !29
  %t92 = getelementptr %"compiler/check:Checker", ptr %t90, i32 0, i32 1
  %t93 = load ptr, ptr %t92, !tbaa !29
  %t95 = getelementptr %"compiler/generic:Program", ptr %t93, i32 0, i32 0
  %t96 = load ptr, ptr %t95, !tbaa !29
  %t98 = getelementptr %"compiler/load:Loader", ptr %t96, i32 0, i32 3
  %t99 = load ptr, ptr %t98, !tbaa !29
  store ptr %t99, ptr %l45, !tbaa !29
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t102 = getelementptr %"compiler/session:finder", ptr %t100, i32 0, i32 3
  %t103 = load ptr, ptr %t102, !tbaa !29
  %t105 = getelementptr %"compiler/check:Checker", ptr %t103, i32 0, i32 1
  %t106 = load ptr, ptr %t105, !tbaa !29
  %t107 = load i64, ptr %l4, !tbaa !24
  %t110 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %s1, ptr %t106, i64 %t107)
  store ptr %t110, ptr %l50
  br label %bb17
bb17:
  %t111 = load ptr, ptr %l50, !tbaa !29
  %t113 = getelementptr %"compiler/ast:Func", ptr %t111, i32 0, i32 2
  %t114 = load i32, ptr %t113, !tbaa !23
  %t115 = load ptr, ptr %l45, !tbaa !29
  %t117 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v0, ptr %t115, i32 %t114)
  store { i64, ptr } %t117, ptr %l53
  br label %bb18
bb18:
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t120 = getelementptr %"compiler/session:finder", ptr %t118, i32 0, i32 2
  %t121 = load { i64, ptr }, ptr %t120, !tbaa !27
  %t122 = load { i64, ptr }, ptr %l53, !tbaa !27
  %t124 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v0, { i64, ptr } %t122, { i64, ptr } %t121)
  store i1 %t124, ptr %l56
  br label %bb19
bb19:
  %t125 = load i1, ptr %l56, !tbaa !21
  %t126 = xor i1 %t125, true
  br i1 %t126, label %bb20, label %bb21
bb20:
  call void @__olang_scope_close(ptr %s1)
  br label %ret
bb21:
  br label %bb22
bb22:
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t130 = getelementptr %"compiler/session:finder", ptr %t128, i32 0, i32 3
  %t131 = load ptr, ptr %t130, !tbaa !29
  %t133 = getelementptr %"compiler/check:Checker", ptr %t131, i32 0, i32 1
  %t134 = load ptr, ptr %t133, !tbaa !29
  %t135 = load i64, ptr %l4, !tbaa !24
  %t138 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t134, i64 %t135)
  store ptr %t138, ptr %l62
  br label %bb23
bb23:
  %t139 = load ptr, ptr %l62, !tbaa !29
  %t141 = getelementptr %"compiler/ast:Func", ptr %t139, i32 0, i32 1
  %t142 = load ptr, ptr %t141, !tbaa !29
  %t144 = icmp eq ptr %t142, null
  %t146 = xor i1 %t144, true
  br i1 %t146, label %bb24, label %bb25
bb24:
  %t148 = load ptr, ptr %l0, !tbaa !29
  %t149 = load %"compiler/source:Span", ptr %l1
  %t150 = load i64, ptr %l4, !tbaa !24
  store { i64, [6 x i64] } zeroinitializer, ptr %t151
  %t152 = getelementptr { i64, [6 x i64] }, ptr %t151, i32 0, i32 0
  store i64 2, ptr %t152
  %t154 = insertvalue { i64 } undef, i64 %t150, 0
  %t155 = getelementptr { i64, [6 x i64] }, ptr %t151, i32 0, i32 1
  store { i64 } %t154, ptr %t155
  %t156 = load { i64, [6 x i64] }, ptr %t151
  call void @compiler_2fsession_2ecompiler_2fsession_3afinder_2etake(ptr %v0, ptr %v0, ptr %t148, %"compiler/source:Span" %t149, { i64, [6 x i64] } %t156)
  br label %bb26
bb25:
  %t160 = load ptr, ptr %l0, !tbaa !29
  store ptr %t160, ptr %l71, !tbaa !29
  %t161 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t161, ptr %l72
  %t162 = load ptr, ptr %l0, !tbaa !29
  %t164 = getelementptr %"compiler/session:finder", ptr %t162, i32 0, i32 3
  %t165 = load ptr, ptr %t164, !tbaa !29
  %t167 = getelementptr %"compiler/check:Checker", ptr %t165, i32 0, i32 1
  %t168 = load ptr, ptr %t167, !tbaa !29
  %t169 = load i64, ptr %l4, !tbaa !24
  %t172 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t168, i64 %t169)
  store i64 %t172, ptr %l77
  br label %bb27
bb26:
  br label %bb29
bb27:
  %t173 = load ptr, ptr %l0, !tbaa !29
  %t175 = getelementptr %"compiler/session:finder", ptr %t173, i32 0, i32 2
  %t176 = load { i64, ptr }, ptr %t175, !tbaa !27
  store { i64, [6 x i64] } zeroinitializer, ptr %t177
  %t178 = getelementptr { i64, [6 x i64] }, ptr %t177, i32 0, i32 0
  store i64 1, ptr %t178
  %t179 = load i64, ptr %l77, !tbaa !24
  %t180 = insertvalue { i64, { i64, ptr } } undef, i64 %t179, 0
  %t182 = insertvalue { i64, { i64, ptr } } %t180, { i64, ptr } %t176, 1
  %t183 = getelementptr { i64, [6 x i64] }, ptr %t177, i32 0, i32 1
  store { i64, { i64, ptr } } %t182, ptr %t183
  %t184 = load { i64, [6 x i64] }, ptr %t177
  %t185 = load ptr, ptr %l71, !tbaa !29
  %t186 = load %"compiler/source:Span", ptr %l72
  call void @compiler_2fsession_2ecompiler_2fsession_3afinder_2etake(ptr %v0, ptr %v0, ptr %t185, %"compiler/source:Span" %t186, { i64, [6 x i64] } %t184)
  br label %bb28
bb28:
  br label %bb29
bb29:
  call void @__olang_scope_close(ptr %s1)
  br label %bb52
bb30:
  %t188 = load { i64, [2 x i64] }, ptr %l2
  %t190 = extractvalue { i64, [2 x i64] } %t188, 0
  %t191 = icmp eq i64 %t190, 1
  br i1 %t191, label %bb31, label %bb32
bb31:
  %t193 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t194 = getelementptr { i32, i32 }, ptr %t193, i32 0, i32 0
  %t195 = load i32, ptr %t194
  store i32 %t195, ptr %l5, !tbaa !23
  br label %bb33
bb32:
  br label %bb47
bb33:
  %t197 = load ptr, ptr %l0, !tbaa !29
  %t199 = getelementptr %"compiler/session:finder", ptr %t197, i32 0, i32 3
  %t200 = load ptr, ptr %t199, !tbaa !29
  %t202 = getelementptr %"compiler/check:Checker", ptr %t200, i32 0, i32 1
  %t203 = load ptr, ptr %t202, !tbaa !29
  %t205 = getelementptr %"compiler/generic:Program", ptr %t203, i32 0, i32 2
  %t206 = load i32, ptr %l5, !tbaa !23
  %t209 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t205, i32 %t206)
  store i32 %t209, ptr %l89
  br label %bb34
bb34:
  %t210 = load i32, ptr %l89, !range !{i32 0, i32 33}
  %t212 = trunc i64 18 to i32
  %t213 = icmp eq i32 %t210, %t212
  %t215 = xor i1 %t213, true
  br i1 %t215, label %bb35, label %bb36
bb35:
  br label %ret
bb36:
  br label %bb37
bb37:
  %t217 = load ptr, ptr %l0, !tbaa !29
  %t219 = getelementptr %"compiler/session:finder", ptr %t217, i32 0, i32 3
  %t220 = load ptr, ptr %t219, !tbaa !29
  %t222 = getelementptr %"compiler/check:Checker", ptr %t220, i32 0, i32 1
  %t223 = load ptr, ptr %t222, !tbaa !29
  %t225 = getelementptr %"compiler/generic:Program", ptr %t223, i32 0, i32 2
  %t226 = load i32, ptr %l5, !tbaa !23
  %t229 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t225, i32 %t226)
  store i32 %t229, ptr %l98
  br label %bb38
bb38:
  %t230 = load i32, ptr %l98, !tbaa !23
  store i32 %t230, ptr %l6, !tbaa !23
  %t231 = load ptr, ptr %l0, !tbaa !29
  %t233 = getelementptr %"compiler/session:finder", ptr %t231, i32 0, i32 3
  %t234 = load ptr, ptr %t233, !tbaa !29
  %t236 = getelementptr %"compiler/check:Checker", ptr %t234, i32 0, i32 1
  %t237 = load ptr, ptr %t236, !tbaa !29
  %t239 = getelementptr %"compiler/generic:Program", ptr %t237, i32 0, i32 0
  %t240 = load ptr, ptr %t239, !tbaa !29
  %t242 = getelementptr %"compiler/load:Loader", ptr %t240, i32 0, i32 3
  %t243 = load ptr, ptr %t242, !tbaa !29
  store ptr %t243, ptr %l103, !tbaa !29
  %t244 = load ptr, ptr %l0, !tbaa !29
  %t246 = getelementptr %"compiler/session:finder", ptr %t244, i32 0, i32 3
  %t247 = load ptr, ptr %t246, !tbaa !29
  %t249 = getelementptr %"compiler/check:Checker", ptr %t247, i32 0, i32 1
  %t250 = load ptr, ptr %t249, !tbaa !29
  %t252 = getelementptr %"compiler/generic:Program", ptr %t250, i32 0, i32 2
  %t253 = load i32, ptr %l6, !tbaa !23
  %t256 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %t252, i32 %t253)
  store i32 %t256, ptr %l109
  br label %bb39
bb39:
  %t257 = load ptr, ptr %l103, !tbaa !29
  %t258 = load i32, ptr %l109, !tbaa !23
  %t259 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v0, ptr %t257, i32 %t258)
  store { i64, ptr } %t259, ptr %l110
  br label %bb40
bb40:
  %t260 = load ptr, ptr %l0, !tbaa !29
  %t262 = getelementptr %"compiler/session:finder", ptr %t260, i32 0, i32 2
  %t263 = load { i64, ptr }, ptr %t262, !tbaa !27
  %t264 = load { i64, ptr }, ptr %l110, !tbaa !27
  %t266 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v0, { i64, ptr } %t264, { i64, ptr } %t263)
  store i1 %t266, ptr %l113
  br label %bb41
bb41:
  %t267 = load i1, ptr %l113, !tbaa !21
  br i1 %t267, label %bb42, label %bb43
bb42:
  %t268 = load ptr, ptr %l0, !tbaa !29
  store ptr %t268, ptr %l114, !tbaa !29
  %t269 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t269, ptr %l115
  %t270 = load ptr, ptr %l0, !tbaa !29
  %t272 = getelementptr %"compiler/session:finder", ptr %t270, i32 0, i32 3
  %t273 = load ptr, ptr %t272, !tbaa !29
  %t275 = getelementptr %"compiler/check:Checker", ptr %t273, i32 0, i32 1
  %t276 = load ptr, ptr %t275, !tbaa !29
  %t277 = load i32, ptr %l6, !tbaa !23
  %t280 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclModule(ptr %v0, ptr %t276, i32 %t277)
  store i64 %t280, ptr %l120
  br label %bb44
bb43:
  br label %bb46
bb44:
  %t281 = load ptr, ptr %l0, !tbaa !29
  %t283 = getelementptr %"compiler/session:finder", ptr %t281, i32 0, i32 2
  %t284 = load { i64, ptr }, ptr %t283, !tbaa !27
  store { i64, [6 x i64] } zeroinitializer, ptr %t285
  %t286 = getelementptr { i64, [6 x i64] }, ptr %t285, i32 0, i32 0
  store i64 1, ptr %t286
  %t287 = load i64, ptr %l120, !tbaa !24
  %t288 = insertvalue { i64, { i64, ptr } } undef, i64 %t287, 0
  %t290 = insertvalue { i64, { i64, ptr } } %t288, { i64, ptr } %t284, 1
  %t291 = getelementptr { i64, [6 x i64] }, ptr %t285, i32 0, i32 1
  store { i64, { i64, ptr } } %t290, ptr %t291
  %t292 = load { i64, [6 x i64] }, ptr %t285
  %t293 = load ptr, ptr %l114, !tbaa !29
  %t294 = load %"compiler/source:Span", ptr %l115
  call void @compiler_2fsession_2ecompiler_2fsession_3afinder_2etake(ptr %v0, ptr %v0, ptr %t293, %"compiler/source:Span" %t294, { i64, [6 x i64] } %t292)
  br label %bb45
bb45:
  br label %bb46
bb46:
  br label %bb52
bb47:
  br i1 true, label %bb48, label %bb49
bb48:
  br label %bb50
bb49:
  br label %bb51
bb50:
  br label %bb52
bb51:
  call void @__olang_check_failed(ptr @olang_loc_68ddcf9e12618436_cff7fbf614d16d4a)
  unreachable
bb52:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fsession_2ecompiler_2fsession_3afinder_2ecallee(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca ptr
  %l10 = alloca i1
  %l16 = alloca ptr
  %l17 = alloca i1
  %l22 = alloca ptr
  %l23 = alloca %"compiler/source:Span"
  %l29 = alloca ptr
  %l32 = alloca ptr
  %l33 = alloca i1
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t2 = load i32, ptr %t1, !tbaa !23
  %t4 = sext i32 %t2 to i64
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/session:finder", ptr %t5, i32 0, i32 0
  %t8 = load i64, ptr %t7, !tbaa !24
  %t11 = icmp sgt i64 %t4, %t8
  br i1 %t11, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l10, !tbaa !21
  br label %bb3
bb2:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/session:finder", ptr %t13, i32 0, i32 1
  %t16 = load i64, ptr %t15, !tbaa !24
  %t17 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 1
  %t18 = load i32, ptr %t17, !tbaa !23
  %t20 = sext i32 %t18 to i64
  %t23 = icmp sgt i64 %t16, %t20
  store i1 %t23, ptr %l10, !tbaa !21
  br label %bb3
bb3:
  %t25 = load i1, ptr %l10, !tbaa !21
  br i1 %t25, label %bb4, label %bb5
bb4:
  br label %ret
bb5:
  br label %bb6
bb6:
  %t26 = load ptr, ptr %l2, !tbaa !29
  store ptr %t26, ptr %l16, !tbaa !29
  store i1 false, ptr %l17, !tbaa !21
  %t27 = load ptr, ptr %l16, !tbaa !29
  %t28 = icmp ne ptr %t27, null
  br i1 %t28, label %bb7, label %bb8
bb7:
  %t30 = load ptr, ptr %l16, !tbaa !29
  %t31 = load i64, ptr %t30, !range !{i64 0, i64 5}
  %t33 = icmp eq i64 %t31, 0
  store i1 %t33, ptr %l17, !tbaa !21
  br label %bb8
bb8:
  %t34 = load i1, ptr %l17, !tbaa !21
  br i1 %t34, label %bb9, label %bb10
bb9:
  %t35 = load ptr, ptr %l2, !tbaa !29
  %t37 = getelementptr { i64, [3 x i64] }, ptr %t35, i32 0, i32 1
  %t38 = getelementptr { i32 }, ptr %t37, i32 0, i32 0
  %t39 = load i32, ptr %t38
  store i32 %t39, ptr %l3, !tbaa !23
  br label %bb11
bb10:
  br label %bb14
bb11:
  %t41 = load ptr, ptr %l0, !tbaa !29
  store ptr %t41, ptr %l22, !tbaa !29
  %t42 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t42, ptr %l23
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/session:finder", ptr %t43, i32 0, i32 3
  %t46 = load ptr, ptr %t45, !tbaa !29
  %t48 = getelementptr %"compiler/check:Checker", ptr %t46, i32 0, i32 14
  %t49 = load i32, ptr %l3, !tbaa !23
  %t51 = sext i32 %t49 to i64
  %t54 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t48, i64 %t51)
  store ptr %t54, ptr %l29
  br label %bb12
bb12:
  %t55 = load ptr, ptr %l29, !tbaa !29
  %t57 = getelementptr %"compiler/typed:Body", ptr %t55, i32 0, i32 1
  %t58 = load { i64, [2 x i64] }, ptr %t57
  %t59 = load ptr, ptr %l22, !tbaa !29
  %t60 = load %"compiler/source:Span", ptr %l23
  call void @compiler_2fsession_2ecompiler_2fsession_3afinder_2ebodyCallee(ptr %v0, ptr %t59, %"compiler/source:Span" %t60, { i64, [2 x i64] } %t58)
  br label %bb13
bb13:
  br label %bb26
bb14:
  %t62 = load ptr, ptr %l2, !tbaa !29
  store ptr %t62, ptr %l32, !tbaa !29
  store i1 false, ptr %l33, !tbaa !21
  %t63 = load ptr, ptr %l32, !tbaa !29
  %t64 = icmp ne ptr %t63, null
  br i1 %t64, label %bb15, label %bb16
bb15:
  %t66 = load ptr, ptr %l32, !tbaa !29
  %t67 = load i64, ptr %t66, !range !{i64 0, i64 5}
  %t69 = icmp eq i64 %t67, 2
  store i1 %t69, ptr %l33, !tbaa !21
  br label %bb16
bb16:
  %t70 = load i1, ptr %l33, !tbaa !21
  br i1 %t70, label %bb17, label %bb18
bb17:
  %t71 = load ptr, ptr %l2, !tbaa !29
  %t73 = getelementptr { i64, [3 x i64] }, ptr %t71, i32 0, i32 1
  %t74 = getelementptr { ptr }, ptr %t73, i32 0, i32 0
  %t75 = load ptr, ptr %t74
  store ptr %t75, ptr %l4, !tbaa !29
  br label %bb19
bb18:
  br label %bb21
bb19:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t78 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3afinder_2eexpr(ptr %v0, ptr %v1, ptr %t77, ptr %t78)
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
  call void @__olang_check_failed(ptr @olang_loc_a3421b14f56bfb72_e21214c32a246516)
  unreachable
bb26:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fsession_2ecompiler_2fsession_3afinder_2estmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
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
  %l15 = alloca ptr
  %l16 = alloca { i64, ptr }
  %l17 = alloca i64
  %l18 = alloca i64
  %l20 = alloca ptr
  %l23 = alloca ptr
  %l24 = alloca i1
  %l32 = alloca ptr
  %l33 = alloca i1
  %l46 = alloca ptr
  %l47 = alloca i1
  %l55 = alloca ptr
  %l56 = alloca i1
  %l72 = alloca ptr
  %l73 = alloca i1
  %l85 = alloca ptr
  %l86 = alloca i1
  %l91 = alloca ptr
  %l92 = alloca i1
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
  %l145 = alloca ptr
  %l146 = alloca i1
  %l159 = alloca { i64, ptr }
  %l170 = alloca ptr
  %l171 = alloca i1
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
  store ptr %t5, ptr %l23, !tbaa !29
  store i1 false, ptr %l24, !tbaa !21
  %t6 = load ptr, ptr %l23, !tbaa !29
  %t7 = icmp ne ptr %t6, null
  br i1 %t7, label %bb4, label %bb5
bb4:
  %t9 = load ptr, ptr %l23, !tbaa !29
  %t10 = load i64, ptr %t9, !range !{i64 0, i64 17}
  %t12 = icmp eq i64 %t10, 0
  store i1 %t12, ptr %l24, !tbaa !21
  br label %bb5
bb5:
  %t13 = load i1, ptr %l24, !tbaa !21
  br i1 %t13, label %bb6, label %bb7
bb6:
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t16 = getelementptr { i64, [3 x i64] }, ptr %t14, i32 0, i32 1
  %t17 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t16, i32 0, i32 2
  %t18 = load ptr, ptr %t17
  store ptr %t18, ptr %l2, !tbaa !29
  br label %bb8
bb7:
  br label %bb10
bb8:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3afinder_2eexpr(ptr %v0, ptr %v1, ptr %t20, ptr %t21)
  br label %bb9
bb9:
  br label %bb112
bb10:
  %t25 = load ptr, ptr %l1, !tbaa !29
  store ptr %t25, ptr %l32, !tbaa !29
  store i1 false, ptr %l33, !tbaa !21
  %t26 = load ptr, ptr %l32, !tbaa !29
  %t27 = icmp ne ptr %t26, null
  br i1 %t27, label %bb11, label %bb12
bb11:
  %t29 = load ptr, ptr %l32, !tbaa !29
  %t30 = load i64, ptr %t29, !range !{i64 0, i64 17}
  %t32 = icmp eq i64 %t30, 1
  store i1 %t32, ptr %l33, !tbaa !21
  br label %bb12
bb12:
  %t33 = load i1, ptr %l33, !tbaa !21
  br i1 %t33, label %bb13, label %bb14
bb13:
  %t34 = load ptr, ptr %l1, !tbaa !29
  %t36 = getelementptr { i64, [3 x i64] }, ptr %t34, i32 0, i32 1
  %t37 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t36, i32 0, i32 1
  %t38 = load ptr, ptr %t37
  store ptr %t38, ptr %l3, !tbaa !29
  %t40 = load ptr, ptr %l1, !tbaa !29
  %t42 = getelementptr { i64, [3 x i64] }, ptr %t40, i32 0, i32 1
  %t43 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t42, i32 0, i32 2
  %t44 = load ptr, ptr %t43
  store ptr %t44, ptr %l4, !tbaa !29
  br label %bb15
bb14:
  br label %bb18
bb15:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3afinder_2eplace(ptr %v0, ptr %v1, ptr %t46, ptr %t47)
  br label %bb16
bb16:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t52 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3afinder_2eexpr(ptr %v0, ptr %v1, ptr %t51, ptr %t52)
  br label %bb17
bb17:
  br label %bb112
bb18:
  %t56 = load ptr, ptr %l1, !tbaa !29
  store ptr %t56, ptr %l46, !tbaa !29
  store i1 false, ptr %l47, !tbaa !21
  %t57 = load ptr, ptr %l46, !tbaa !29
  %t58 = icmp ne ptr %t57, null
  br i1 %t58, label %bb19, label %bb20
bb19:
  %t60 = load ptr, ptr %l46, !tbaa !29
  %t61 = load i64, ptr %t60, !range !{i64 0, i64 17}
  %t63 = icmp eq i64 %t61, 2
  store i1 %t63, ptr %l47, !tbaa !21
  br label %bb20
bb20:
  %t64 = load i1, ptr %l47, !tbaa !21
  br i1 %t64, label %bb21, label %bb22
bb21:
  %t65 = load ptr, ptr %l1, !tbaa !29
  %t67 = getelementptr { i64, [3 x i64] }, ptr %t65, i32 0, i32 1
  %t68 = getelementptr { %"compiler/source:Span", ptr }, ptr %t67, i32 0, i32 1
  %t69 = load ptr, ptr %t68
  store ptr %t69, ptr %l5, !tbaa !29
  br label %bb23
bb22:
  br label %bb25
bb23:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t72 = load ptr, ptr %l5, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3afinder_2eexpr(ptr %v0, ptr %v1, ptr %t71, ptr %t72)
  br label %bb24
bb24:
  br label %bb112
bb25:
  %t76 = load ptr, ptr %l1, !tbaa !29
  store ptr %t76, ptr %l55, !tbaa !29
  store i1 false, ptr %l56, !tbaa !21
  %t77 = load ptr, ptr %l55, !tbaa !29
  %t78 = icmp ne ptr %t77, null
  br i1 %t78, label %bb26, label %bb27
bb26:
  %t80 = load ptr, ptr %l55, !tbaa !29
  %t81 = load i64, ptr %t80, !range !{i64 0, i64 17}
  %t83 = icmp eq i64 %t81, 3
  store i1 %t83, ptr %l56, !tbaa !21
  br label %bb27
bb27:
  %t84 = load i1, ptr %l56, !tbaa !21
  br i1 %t84, label %bb28, label %bb29
bb28:
  %t85 = load ptr, ptr %l1, !tbaa !29
  %t87 = getelementptr { i64, [3 x i64] }, ptr %t85, i32 0, i32 1
  %t88 = getelementptr { %"compiler/source:Span", ptr }, ptr %t87, i32 0, i32 1
  %t89 = load ptr, ptr %t88
  store ptr %t89, ptr %l6, !tbaa !29
  br label %bb30
bb29:
  br label %bb34
bb30:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t92 = load ptr, ptr %l6, !tbaa !29
  %t94 = getelementptr %"compiler/typed:If", ptr %t92, i32 0, i32 0
  %t95 = load ptr, ptr %t94, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3afinder_2eexpr(ptr %v0, ptr %v1, ptr %t91, ptr %t95)
  br label %bb31
bb31:
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t100 = load ptr, ptr %l6, !tbaa !29
  %t102 = getelementptr %"compiler/typed:If", ptr %t100, i32 0, i32 1
  %t103 = load ptr, ptr %t102, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3afinder_2eblock(ptr %v0, ptr %v1, ptr %t99, ptr %t103)
  br label %bb32
bb32:
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t108 = load ptr, ptr %l6, !tbaa !29
  %t110 = getelementptr %"compiler/typed:If", ptr %t108, i32 0, i32 2
  %t111 = load ptr, ptr %t110, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3afinder_2eblock(ptr %v0, ptr %v1, ptr %t107, ptr %t111)
  br label %bb33
bb33:
  br label %bb112
bb34:
  %t114 = load ptr, ptr %l1, !tbaa !29
  store ptr %t114, ptr %l72, !tbaa !29
  store i1 false, ptr %l73, !tbaa !21
  %t115 = load ptr, ptr %l72, !tbaa !29
  %t116 = icmp ne ptr %t115, null
  br i1 %t116, label %bb35, label %bb36
bb35:
  %t118 = load ptr, ptr %l72, !tbaa !29
  %t119 = load i64, ptr %t118, !range !{i64 0, i64 17}
  %t121 = icmp eq i64 %t119, 4
  store i1 %t121, ptr %l73, !tbaa !21
  br label %bb36
bb36:
  %t122 = load i1, ptr %l73, !tbaa !21
  br i1 %t122, label %bb37, label %bb38
bb37:
  %t123 = load ptr, ptr %l1, !tbaa !29
  %t125 = getelementptr { i64, [3 x i64] }, ptr %t123, i32 0, i32 1
  %t126 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t125, i32 0, i32 1
  %t127 = load ptr, ptr %t126
  store ptr %t127, ptr %l7, !tbaa !29
  %t129 = load ptr, ptr %l1, !tbaa !29
  %t131 = getelementptr { i64, [3 x i64] }, ptr %t129, i32 0, i32 1
  %t132 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t131, i32 0, i32 2
  %t133 = load ptr, ptr %t132
  store ptr %t133, ptr %l8, !tbaa !29
  br label %bb39
bb38:
  br label %bb42
bb39:
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t136 = load ptr, ptr %l7, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3afinder_2eblock(ptr %v0, ptr %v1, ptr %t135, ptr %t136)
  br label %bb40
bb40:
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t141 = load ptr, ptr %l8, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3afinder_2eblock(ptr %v0, ptr %v1, ptr %t140, ptr %t141)
  br label %bb41
bb41:
  br label %bb112
bb42:
  %t144 = load ptr, ptr %l1, !tbaa !29
  store ptr %t144, ptr %l85, !tbaa !29
  store i1 false, ptr %l86, !tbaa !21
  %t145 = load ptr, ptr %l85, !tbaa !29
  %t146 = icmp ne ptr %t145, null
  br i1 %t146, label %bb43, label %bb44
bb43:
  %t148 = load ptr, ptr %l85, !tbaa !29
  %t149 = load i64, ptr %t148, !range !{i64 0, i64 17}
  %t151 = icmp eq i64 %t149, 6
  store i1 %t151, ptr %l86, !tbaa !21
  br label %bb44
bb44:
  %t152 = load i1, ptr %l86, !tbaa !21
  br i1 %t152, label %bb45, label %bb46
bb45:
  %t153 = load ptr, ptr %l1, !tbaa !29
  %t155 = getelementptr { i64, [3 x i64] }, ptr %t153, i32 0, i32 1
  %t156 = getelementptr { %"compiler/source:Span", ptr }, ptr %t155, i32 0, i32 1
  %t157 = load ptr, ptr %t156
  store ptr %t157, ptr %l9, !tbaa !29
  br label %bb51
bb46:
  %t159 = load ptr, ptr %l1, !tbaa !29
  store ptr %t159, ptr %l91, !tbaa !29
  store i1 false, ptr %l92, !tbaa !21
  %t160 = load ptr, ptr %l91, !tbaa !29
  %t161 = icmp ne ptr %t160, null
  br i1 %t161, label %bb47, label %bb48
bb47:
  %t163 = load ptr, ptr %l91, !tbaa !29
  %t164 = load i64, ptr %t163, !range !{i64 0, i64 17}
  %t166 = icmp eq i64 %t164, 16
  store i1 %t166, ptr %l92, !tbaa !21
  br label %bb48
bb48:
  %t167 = load i1, ptr %l92, !tbaa !21
  br i1 %t167, label %bb49, label %bb50
bb49:
  %t168 = load ptr, ptr %l1, !tbaa !29
  %t170 = getelementptr { i64, [3 x i64] }, ptr %t168, i32 0, i32 1
  %t171 = getelementptr { %"compiler/source:Span", ptr }, ptr %t170, i32 0, i32 1
  %t172 = load ptr, ptr %t171
  store ptr %t172, ptr %l9, !tbaa !29
  br label %bb51
bb50:
  br label %bb53
bb51:
  %t174 = load ptr, ptr %l0, !tbaa !29
  %t175 = load ptr, ptr %l9, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3afinder_2eexpr(ptr %v0, ptr %v1, ptr %t174, ptr %t175)
  br label %bb52
bb52:
  br label %bb112
bb53:
  %t178 = load ptr, ptr %l1, !tbaa !29
  store ptr %t178, ptr %l99, !tbaa !29
  store i1 false, ptr %l100, !tbaa !21
  %t179 = load ptr, ptr %l99, !tbaa !29
  %t180 = icmp ne ptr %t179, null
  br i1 %t180, label %bb54, label %bb55
bb54:
  %t182 = load ptr, ptr %l99, !tbaa !29
  %t183 = load i64, ptr %t182, !range !{i64 0, i64 17}
  %t185 = icmp eq i64 %t183, 9
  store i1 %t185, ptr %l100, !tbaa !21
  br label %bb55
bb55:
  %t186 = load i1, ptr %l100, !tbaa !21
  br i1 %t186, label %bb56, label %bb57
bb56:
  %t187 = load ptr, ptr %l1, !tbaa !29
  %t189 = getelementptr { i64, [3 x i64] }, ptr %t187, i32 0, i32 1
  %t190 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t189, i32 0, i32 2
  %t191 = load ptr, ptr %t190
  store ptr %t191, ptr %l10, !tbaa !29
  br label %bb58
bb57:
  br label %bb60
bb58:
  %t193 = load ptr, ptr %l0, !tbaa !29
  %t194 = load ptr, ptr %l10, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3afinder_2eexpr(ptr %v0, ptr %v1, ptr %t193, ptr %t194)
  br label %bb59
bb59:
  br label %bb112
bb60:
  %t197 = load ptr, ptr %l1, !tbaa !29
  store ptr %t197, ptr %l107, !tbaa !29
  store i1 false, ptr %l108, !tbaa !21
  %t198 = load ptr, ptr %l107, !tbaa !29
  %t199 = icmp ne ptr %t198, null
  br i1 %t199, label %bb61, label %bb62
bb61:
  %t201 = load ptr, ptr %l107, !tbaa !29
  %t202 = load i64, ptr %t201, !range !{i64 0, i64 17}
  %t204 = icmp eq i64 %t202, 10
  store i1 %t204, ptr %l108, !tbaa !21
  br label %bb62
bb62:
  %t205 = load i1, ptr %l108, !tbaa !21
  br i1 %t205, label %bb63, label %bb64
bb63:
  %t206 = load ptr, ptr %l1, !tbaa !29
  %t208 = getelementptr { i64, [3 x i64] }, ptr %t206, i32 0, i32 1
  %t209 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t208, i32 0, i32 1
  %t210 = load ptr, ptr %t209
  store ptr %t210, ptr %l11, !tbaa !29
  %t212 = load ptr, ptr %l1, !tbaa !29
  %t214 = getelementptr { i64, [3 x i64] }, ptr %t212, i32 0, i32 1
  %t215 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t214, i32 0, i32 2
  %t216 = load ptr, ptr %t215
  store ptr %t216, ptr %l12, !tbaa !29
  br label %bb65
bb64:
  br label %bb68
bb65:
  %t218 = load ptr, ptr %l0, !tbaa !29
  %t219 = load ptr, ptr %l11, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3afinder_2eexpr(ptr %v0, ptr %v1, ptr %t218, ptr %t219)
  br label %bb66
bb66:
  %t223 = load ptr, ptr %l0, !tbaa !29
  %t224 = load ptr, ptr %l12, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3afinder_2eexpr(ptr %v0, ptr %v1, ptr %t223, ptr %t224)
  br label %bb67
bb67:
  br label %bb112
bb68:
  %t227 = load ptr, ptr %l1, !tbaa !29
  store ptr %t227, ptr %l120, !tbaa !29
  store i1 false, ptr %l121, !tbaa !21
  %t228 = load ptr, ptr %l120, !tbaa !29
  %t229 = icmp ne ptr %t228, null
  br i1 %t229, label %bb69, label %bb70
bb69:
  %t231 = load ptr, ptr %l120, !tbaa !29
  %t232 = load i64, ptr %t231, !range !{i64 0, i64 17}
  %t234 = icmp eq i64 %t232, 11
  store i1 %t234, ptr %l121, !tbaa !21
  br label %bb70
bb70:
  %t235 = load i1, ptr %l121, !tbaa !21
  br i1 %t235, label %bb71, label %bb72
bb71:
  %t236 = load ptr, ptr %l1, !tbaa !29
  %t238 = getelementptr { i64, [3 x i64] }, ptr %t236, i32 0, i32 1
  %t239 = getelementptr { %"compiler/source:Span", ptr }, ptr %t238, i32 0, i32 1
  %t240 = load ptr, ptr %t239
  store ptr %t240, ptr %l13, !tbaa !29
  br label %bb77
bb72:
  %t242 = load ptr, ptr %l1, !tbaa !29
  store ptr %t242, ptr %l126, !tbaa !29
  store i1 false, ptr %l127, !tbaa !21
  %t243 = load ptr, ptr %l126, !tbaa !29
  %t244 = icmp ne ptr %t243, null
  br i1 %t244, label %bb73, label %bb74
bb73:
  %t246 = load ptr, ptr %l126, !tbaa !29
  %t247 = load i64, ptr %t246, !range !{i64 0, i64 17}
  %t249 = icmp eq i64 %t247, 12
  store i1 %t249, ptr %l127, !tbaa !21
  br label %bb74
bb74:
  %t250 = load i1, ptr %l127, !tbaa !21
  br i1 %t250, label %bb75, label %bb76
bb75:
  %t251 = load ptr, ptr %l1, !tbaa !29
  %t253 = getelementptr { i64, [3 x i64] }, ptr %t251, i32 0, i32 1
  %t254 = getelementptr { %"compiler/source:Span", ptr }, ptr %t253, i32 0, i32 1
  %t255 = load ptr, ptr %t254
  store ptr %t255, ptr %l13, !tbaa !29
  br label %bb77
bb76:
  br label %bb79
bb77:
  %t257 = load ptr, ptr %l0, !tbaa !29
  %t258 = load ptr, ptr %l13, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3afinder_2eblock(ptr %v0, ptr %v1, ptr %t257, ptr %t258)
  br label %bb78
bb78:
  br label %bb112
bb79:
  %t262 = load ptr, ptr %l1, !tbaa !29
  store ptr %t262, ptr %l135, !tbaa !29
  store i1 false, ptr %l136, !tbaa !21
  %t263 = load ptr, ptr %l135, !tbaa !29
  %t264 = icmp ne ptr %t263, null
  br i1 %t264, label %bb80, label %bb81
bb80:
  %t266 = load ptr, ptr %l135, !tbaa !29
  %t267 = load i64, ptr %t266, !range !{i64 0, i64 17}
  %t269 = icmp eq i64 %t267, 13
  store i1 %t269, ptr %l136, !tbaa !21
  br label %bb81
bb81:
  %t270 = load i1, ptr %l136, !tbaa !21
  br i1 %t270, label %bb82, label %bb83
bb82:
  %t271 = load ptr, ptr %l1, !tbaa !29
  %t273 = getelementptr { i64, [3 x i64] }, ptr %t271, i32 0, i32 1
  %t274 = getelementptr { %"compiler/source:Span", ptr }, ptr %t273, i32 0, i32 1
  %t275 = load ptr, ptr %t274
  store ptr %t275, ptr %l14, !tbaa !29
  br label %bb84
bb83:
  br label %bb86
bb84:
  %t277 = load ptr, ptr %l0, !tbaa !29
  %t278 = load ptr, ptr %l14, !tbaa !29
  %t280 = getelementptr %"compiler/typed:Join", ptr %t278, i32 0, i32 0
  %t281 = load ptr, ptr %t280, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3afinder_2eblock(ptr %v0, ptr %v1, ptr %t277, ptr %t281)
  br label %bb85
bb85:
  br label %bb112
bb86:
  %t285 = load ptr, ptr %l1, !tbaa !29
  store ptr %t285, ptr %l145, !tbaa !29
  store i1 false, ptr %l146, !tbaa !21
  %t286 = load ptr, ptr %l145, !tbaa !29
  %t287 = icmp ne ptr %t286, null
  br i1 %t287, label %bb87, label %bb88
bb87:
  %t289 = load ptr, ptr %l145, !tbaa !29
  %t290 = load i64, ptr %t289, !range !{i64 0, i64 17}
  %t292 = icmp eq i64 %t290, 14
  store i1 %t292, ptr %l146, !tbaa !21
  br label %bb88
bb88:
  %t293 = load i1, ptr %l146, !tbaa !21
  br i1 %t293, label %bb89, label %bb90
bb89:
  %t294 = load ptr, ptr %l1, !tbaa !29
  %t296 = getelementptr { i64, [3 x i64] }, ptr %t294, i32 0, i32 1
  %t297 = getelementptr { %"compiler/source:Span", ptr }, ptr %t296, i32 0, i32 1
  %t298 = load ptr, ptr %t297
  store ptr %t298, ptr %l15, !tbaa !29
  br label %bb91
bb90:
  br label %bb100
bb91:
  %t300 = load ptr, ptr %l15, !tbaa !29
  %t302 = getelementptr %"compiler/typed:Spawn", ptr %t300, i32 0, i32 0
  %t303 = load { i64, ptr }, ptr %t302, !tbaa !27
  store { i64, ptr } %t303, ptr %l16, !tbaa !27
  store i64 0, ptr %l17, !tbaa !24
  %t305 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t307 = extractvalue { i64, ptr } %t305, 0
  store i64 %t307, ptr %l18, !tbaa !24
  br label %bb92
bb92:
  %t309 = load i64, ptr %l17, !tbaa !24
  %t310 = load i64, ptr %l18, !tbaa !24
  %t313 = icmp slt i64 %t309, %t310
  %t315 = xor i1 %t313, true
  br i1 %t315, label %bb93, label %bb94
bb93:
  br label %bb98
bb94:
  br label %bb95
bb95:
  %t317 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t317, ptr %l159, !tbaa !27
  %t318 = load i64, ptr %l17, !tbaa !24
  %t320 = getelementptr { i64, ptr }, ptr %l159, i32 0, i32 1
  %t321 = load ptr, ptr %t320, !tbaa !27
  %t322 = getelementptr ptr, ptr %t321, i64 %t318
  %t323 = load ptr, ptr %t322, !tbaa !39
  %t325 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3afinder_2eplace(ptr %v0, ptr %v1, ptr %t325, ptr %t323)
  br label %bb96
bb96:
  br label %bb97
bb97:
  %t329 = load i64, ptr %l17, !tbaa !24
  %t331 = add i64 %t329, 1
  store i64 %t331, ptr %l17, !tbaa !24
  br label %bb92
bb98:
  %t333 = load ptr, ptr %l0, !tbaa !29
  %t334 = load ptr, ptr %l15, !tbaa !29
  %t336 = getelementptr %"compiler/typed:Spawn", ptr %t334, i32 0, i32 1
  %t337 = load ptr, ptr %t336, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3afinder_2eexpr(ptr %v0, ptr %v1, ptr %t333, ptr %t337)
  br label %bb99
bb99:
  br label %bb112
bb100:
  %t341 = load ptr, ptr %l1, !tbaa !29
  store ptr %t341, ptr %l170, !tbaa !29
  store i1 false, ptr %l171, !tbaa !21
  %t342 = load ptr, ptr %l170, !tbaa !29
  %t343 = icmp ne ptr %t342, null
  br i1 %t343, label %bb101, label %bb102
bb101:
  %t345 = load ptr, ptr %l170, !tbaa !29
  %t346 = load i64, ptr %t345, !range !{i64 0, i64 17}
  %t348 = icmp eq i64 %t346, 15
  store i1 %t348, ptr %l171, !tbaa !21
  br label %bb102
bb102:
  %t349 = load i1, ptr %l171, !tbaa !21
  br i1 %t349, label %bb103, label %bb104
bb103:
  %t350 = load ptr, ptr %l1, !tbaa !29
  %t352 = getelementptr { i64, [3 x i64] }, ptr %t350, i32 0, i32 1
  %t353 = getelementptr { %"compiler/source:Span", ptr }, ptr %t352, i32 0, i32 1
  %t354 = load ptr, ptr %t353
  store ptr %t354, ptr %l20, !tbaa !29
  br label %bb105
bb104:
  br label %bb107
bb105:
  %t356 = load ptr, ptr %l0, !tbaa !29
  %t357 = load ptr, ptr %l20, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3afinder_2eexpr(ptr %v0, ptr %v1, ptr %t356, ptr %t357)
  br label %bb106
bb106:
  br label %bb112
bb107:
  br i1 true, label %bb108, label %bb109
bb108:
  br label %bb110
bb109:
  br label %bb111
bb110:
  br label %bb112
bb111:
  call void @__olang_check_failed(ptr @olang_loc_9a3dbb58dbc7a31a_5629726f6c293dd6)
  unreachable
bb112:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fsession_2ecompiler_2fsession_3asymWriter_2edecl(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca { i64, ptr }
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca %"compiler/source:Span"
  %l12 = alloca ptr
  %l13 = alloca { i64, ptr }
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca ptr
  %l17 = alloca %"compiler/session:symWriter"
  %l18 = alloca %"compiler/source:Span"
  %l19 = alloca ptr
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca %"compiler/source:Span"
  %l27 = alloca %"compiler/source:Span"
  %l28 = alloca i32
  %l29 = alloca { i64, ptr }
  %l30 = alloca { i64, ptr }
  %l31 = alloca i64
  %l32 = alloca %"compiler/session:symWriter"
  %l33 = alloca { i64, ptr }
  %l34 = alloca i64
  %l35 = alloca i64
  %l37 = alloca { i64, ptr }
  %l38 = alloca i64
  %l39 = alloca %"compiler/source:Span"
  %l40 = alloca %"compiler/source:Span"
  %l41 = alloca ptr
  %l42 = alloca { i64, ptr }
  %l43 = alloca { i64, ptr }
  %l44 = alloca i64
  %l45 = alloca i64
  %l50 = alloca ptr
  %l51 = alloca i1
  %l56 = alloca ptr
  %l57 = alloca i1
  %l65 = alloca { i64, ptr }
  %l71 = alloca i64
  %l72 = alloca { i64, ptr }
  %l73 = alloca { i64, ptr }
  %l74 = alloca i64
  %l75 = alloca { i64, ptr }
  %l80 = alloca i1
  %l90 = alloca { i64, ptr }
  %l101 = alloca %"compiler/source:Span"
  %l103 = alloca i64
  %l114 = alloca %"compiler/source:Span"
  %l116 = alloca i64
  %l117 = alloca i64
  %l122 = alloca { i64, ptr }
  %l124 = alloca i64
  %l127 = alloca i1
  %l128 = alloca { i64, ptr }
  %l134 = alloca %"compiler/source:Span"
  %l136 = alloca i64
  %l142 = alloca %"compiler/source:Span"
  %l144 = alloca i64
  %l145 = alloca i64
  %l150 = alloca { i64, ptr }
  %l152 = alloca i64
  %l157 = alloca { i64, ptr }
  %l158 = alloca { i64, ptr }
  %l164 = alloca %"compiler/source:Span"
  %l168 = alloca i64
  %l169 = alloca ptr
  %l170 = alloca ptr
  %l171 = alloca { i64, ptr }
  %l176 = alloca i1
  %l178 = alloca i1
  %l179 = alloca i64
  %l195 = alloca ptr
  %l196 = alloca i1
  %l206 = alloca { i64, ptr }
  %l211 = alloca i64
  %l219 = alloca i64
  %l220 = alloca ptr
  %l221 = alloca i1
  %l225 = alloca ptr
  %l226 = alloca i1
  %l230 = alloca ptr
  %l231 = alloca i1
  %l251 = alloca %"compiler/session:symWriter"
  %l256 = alloca ptr
  %l257 = alloca ptr
  %l265 = alloca ptr
  %l266 = alloca i1
  %l281 = alloca i64
  %l284 = alloca i64
  %l303 = alloca { i64, ptr }
  %l306 = alloca ptr
  %l307 = alloca ptr
  %l310 = alloca { i64, ptr }
  %l313 = alloca { i64, ptr }
  %l325 = alloca ptr
  %l326 = alloca i1
  %l337 = alloca { i64, ptr }
  %l342 = alloca i64
  %l358 = alloca %"compiler/session:symWriter"
  %l366 = alloca { i64, ptr }
  %l371 = alloca { i64, ptr }
  %l378 = alloca i64
  %l398 = alloca ptr
  %l399 = alloca i1
  %l406 = alloca ptr
  %l407 = alloca ptr
  %l408 = alloca { i64, ptr }
  %l410 = alloca i64
  %l412 = alloca i64
  %l413 = alloca i64
  %l429 = alloca ptr
  %l430 = alloca i1
  %l440 = alloca ptr
  %l441 = alloca i1
  %l453 = alloca { i64, ptr }
  %s1 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s16 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %s21 = alloca %olang.scope
  %s23 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/session:symWriter", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/session:Positions", ptr %t4, i32 0, i32 0
  %t7 = load { i64, ptr }, ptr %t6, !tbaa !27
  store { i64, ptr } %t7, ptr %l4, !tbaa !27
  %t9 = load ptr, ptr %l2, !tbaa !29
  store ptr %t9, ptr %l50, !tbaa !29
  store i1 false, ptr %l51, !tbaa !21
  %t10 = load ptr, ptr %l50, !tbaa !29
  %t11 = icmp ne ptr %t10, null
  br i1 %t11, label %bb1, label %bb2
bb1:
  %t13 = load ptr, ptr %l50, !tbaa !29
  %t14 = load i64, ptr %t13, !range !{i64 0, i64 11}
  %t16 = icmp eq i64 %t14, 0
  store i1 %t16, ptr %l51, !tbaa !21
  br label %bb2
bb2:
  %t17 = load i1, ptr %l51, !tbaa !21
  br i1 %t17, label %bb3, label %bb4
bb3:
  %t18 = load ptr, ptr %l2, !tbaa !29
  %t20 = getelementptr { i64, [8 x i64] }, ptr %t18, i32 0, i32 1
  %t21 = getelementptr { ptr }, ptr %t20, i32 0, i32 0
  %t22 = load ptr, ptr %t21
  store ptr %t22, ptr %l5, !tbaa !29
  br label %bb9
bb4:
  %t24 = load ptr, ptr %l2, !tbaa !29
  store ptr %t24, ptr %l56, !tbaa !29
  store i1 false, ptr %l57, !tbaa !21
  %t25 = load ptr, ptr %l56, !tbaa !29
  %t26 = icmp ne ptr %t25, null
  br i1 %t26, label %bb5, label %bb6
bb5:
  %t28 = load ptr, ptr %l56, !tbaa !29
  %t29 = load i64, ptr %t28, !range !{i64 0, i64 11}
  %t31 = icmp eq i64 %t29, 1
  store i1 %t31, ptr %l57, !tbaa !21
  br label %bb6
bb6:
  %t32 = load i1, ptr %l57, !tbaa !21
  br i1 %t32, label %bb7, label %bb8
bb7:
  %t33 = load ptr, ptr %l2, !tbaa !29
  %t35 = getelementptr { i64, [8 x i64] }, ptr %t33, i32 0, i32 1
  %t36 = getelementptr { ptr }, ptr %t35, i32 0, i32 0
  %t37 = load ptr, ptr %t36
  store ptr %t37, ptr %l5, !tbaa !29
  br label %bb9
bb8:
  br label %bb79
bb9:
  store %olang.scope zeroinitializer, ptr %s1
  %t39 = load ptr, ptr %l3, !tbaa !29
  %t40 = load ptr, ptr %l5, !tbaa !29
  %t42 = getelementptr %"compiler/ast:Func", ptr %t40, i32 0, i32 2
  %t43 = load i32, ptr %t42, !tbaa !23
  %t46 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v3, ptr %v3, ptr %t39, i32 %t43)
  store { i64, ptr } %t46, ptr %l65
  br label %bb10
bb10:
  %t47 = load { i64, ptr }, ptr %l65, !tbaa !27
  store { i64, ptr } %t47, ptr %l6, !tbaa !27
  %t48 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t49 = load ptr, ptr %l5, !tbaa !29
  %t51 = getelementptr %"compiler/ast:Func", ptr %t49, i32 0, i32 0
  %t52 = getelementptr %"compiler/source:Span", ptr %t51, i32 0, i32 0
  %t53 = load i32, ptr %t52, !tbaa !23
  %t55 = sext i32 %t53 to i64
  %t56 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t60 = call i64 @compiler_2fsession_2enameIn(ptr %v0, ptr %v3, { i64, ptr } %t48, i64 %t55, { i64, ptr } %t56)
  store i64 %t60, ptr %l71
  br label %bb11
bb11:
  %t61 = load i64, ptr %l71, !tbaa !24
  store i64 %t61, ptr %l7, !tbaa !24
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d49, i32 0, i32 1) }, ptr %l72, !tbaa !27
  %t62 = load { i64, ptr }, ptr %l72, !tbaa !27
  store { i64, ptr } %t62, ptr %l73, !tbaa !27
  %t63 = load { i64, ptr }, ptr %l73, !tbaa !27
  %t64 = extractvalue { i64, ptr } %t63, 0
  store i64 %t64, ptr %l74, !tbaa !24
  %t65 = load i64, ptr %l74, !tbaa !24
  %t66 = mul i64 %t65, 1
  %t67 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t66)
  %t68 = insertvalue { i64, ptr } undef, i64 %t65, 0
  %t69 = insertvalue { i64, ptr } %t68, ptr %t67, 1
  store { i64, ptr } %t69, ptr %l75, !tbaa !27
  %t70 = getelementptr { i64, ptr }, ptr %l75, i32 0, i32 1
  %t71 = load ptr, ptr %t70, !tbaa !27
  %t72 = getelementptr { i64, ptr }, ptr %l73, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !27
  %t74 = load i64, ptr %l74, !tbaa !24
  %t75 = mul i64 %t74, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t71, ptr %t73, i64 %t75, i1 false)
  %t76 = load { i64, ptr }, ptr %l75, !tbaa !27
  store { i64, ptr } %t76, ptr %l8, !tbaa !27
  %t77 = load ptr, ptr %l5, !tbaa !29
  %t79 = getelementptr %"compiler/ast:Func", ptr %t77, i32 0, i32 1
  %t80 = load ptr, ptr %t79, !tbaa !29
  %t82 = icmp eq ptr %t80, null
  %t84 = xor i1 %t82, true
  br i1 %t84, label %bb12, label %bb13
bb12:
  %t86 = load ptr, ptr %l5, !tbaa !29
  %t88 = getelementptr %"compiler/ast:Func", ptr %t86, i32 0, i32 1
  %t89 = load ptr, ptr %t88, !tbaa !29
  %t91 = icmp eq ptr %t89, null
  br i1 %t91, label %bb14, label %bb15
bb13:
  store i1 false, ptr %l80, !tbaa !21
  br label %bb17
bb14:
  call void @__olang_check_failed(ptr @olang_loc_17c267c41fc9225_ba4af4ec5e6e67d9)
  unreachable
bb15:
  br label %bb16
bb16:
  %t93 = load ptr, ptr %l5, !tbaa !29
  %t95 = getelementptr %"compiler/ast:Func", ptr %t93, i32 0, i32 1
  %t96 = load ptr, ptr %t95, !tbaa !29
  %t99 = getelementptr %"compiler/ast:Param", ptr %t96, i32 0, i32 2
  %t100 = load ptr, ptr %t99, !tbaa !29
  %t102 = icmp eq ptr %t100, null
  %t104 = xor i1 %t102, true
  store i1 %t104, ptr %l80, !tbaa !21
  br label %bb17
bb17:
  %t106 = load i1, ptr %l80, !tbaa !21
  br i1 %t106, label %bb18, label %bb19
bb18:
  %t107 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t107, ptr %l90, !tbaa !27
  %t108 = load ptr, ptr %l5, !tbaa !29
  %t110 = getelementptr %"compiler/ast:Func", ptr %t108, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !29
  %t113 = icmp eq ptr %t111, null
  br i1 %t113, label %bb20, label %bb21
bb19:
  br label %bb43
bb20:
  call void @__olang_check_failed(ptr @olang_loc_17c267c41fc9225_ba4af4ec5e6e67d9)
  unreachable
bb21:
  br label %bb22
bb22:
  %t115 = load ptr, ptr %l5, !tbaa !29
  %t117 = getelementptr %"compiler/ast:Func", ptr %t115, i32 0, i32 1
  %t118 = load ptr, ptr %t117, !tbaa !29
  %t121 = getelementptr %"compiler/ast:Param", ptr %t118, i32 0, i32 2
  %t122 = load ptr, ptr %t121, !tbaa !29
  store ptr %t122, ptr %l9, !tbaa !29
  %t124 = load ptr, ptr %l9, !tbaa !29
  %t126 = icmp eq ptr %t124, null
  br i1 %t126, label %bb23, label %bb24
bb23:
  call void @__olang_check_failed(ptr @olang_loc_17c267c41fc9225_ba4af4ec5e6e67d9)
  unreachable
bb24:
  br label %bb25
bb25:
  %t128 = load ptr, ptr %l9, !tbaa !29
  %t130 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v2, ptr %t128)
  store %"compiler/source:Span" %t130, ptr %l101
  br label %bb26
bb26:
  %t131 = getelementptr %"compiler/source:Span", ptr %l101, i32 0, i32 0
  %t132 = load i32, ptr %t131, !tbaa !23
  %t134 = sext i32 %t132 to i64
  store i64 %t134, ptr %l103, !tbaa !24
  %t135 = load ptr, ptr %l5, !tbaa !29
  %t137 = getelementptr %"compiler/ast:Func", ptr %t135, i32 0, i32 1
  %t138 = load ptr, ptr %t137, !tbaa !29
  %t140 = icmp eq ptr %t138, null
  br i1 %t140, label %bb27, label %bb28
bb27:
  call void @__olang_check_failed(ptr @olang_loc_17c267c41fc9225_ba4af4ec5e6e67d9)
  unreachable
bb28:
  br label %bb29
bb29:
  %t142 = load ptr, ptr %l5, !tbaa !29
  %t144 = getelementptr %"compiler/ast:Func", ptr %t142, i32 0, i32 1
  %t145 = load ptr, ptr %t144, !tbaa !29
  %t148 = getelementptr %"compiler/ast:Param", ptr %t145, i32 0, i32 2
  %t149 = load ptr, ptr %t148, !tbaa !29
  store ptr %t149, ptr %l10, !tbaa !29
  %t151 = load ptr, ptr %l10, !tbaa !29
  %t153 = icmp eq ptr %t151, null
  br i1 %t153, label %bb30, label %bb31
bb30:
  call void @__olang_check_failed(ptr @olang_loc_17c267c41fc9225_ba4af4ec5e6e67d9)
  unreachable
bb31:
  br label %bb32
bb32:
  %t155 = load ptr, ptr %l10, !tbaa !29
  %t157 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v2, ptr %t155)
  store %"compiler/source:Span" %t157, ptr %l114
  br label %bb33
bb33:
  %t158 = getelementptr %"compiler/source:Span", ptr %l114, i32 0, i32 1
  %t159 = load i32, ptr %t158, !tbaa !23
  %t161 = sext i32 %t159 to i64
  store i64 %t161, ptr %l116, !tbaa !24
  %t162 = load { i64, ptr }, ptr %l90, !tbaa !27
  %t163 = extractvalue { i64, ptr } %t162, 0
  store i64 %t163, ptr %l117, !tbaa !24
  %t164 = load i64, ptr %l103, !tbaa !24
  %t165 = icmp sge i64 %t164, 0
  br i1 %t165, label %bb34, label %bb35
bb34:
  %t167 = load i64, ptr %l103, !tbaa !24
  %t168 = load i64, ptr %l116, !tbaa !24
  %t169 = icmp sle i64 %t167, %t168
  br i1 %t169, label %bb36, label %bb37
bb35:
  call void @__olang_check_failed(ptr @olang_loc_e2fdffbec4ffc6f6_d7c57975026acfca)
  unreachable
bb36:
  %t171 = load i64, ptr %l116, !tbaa !24
  %t172 = load i64, ptr %l117, !tbaa !24
  %t173 = icmp sle i64 %t171, %t172
  br i1 %t173, label %bb38, label %bb39
bb37:
  call void @__olang_check_failed(ptr @olang_loc_e2fdffbec4ffc6f6_d7c57975026acfca)
  unreachable
bb38:
  %t175 = getelementptr { i64, ptr }, ptr %l90, i32 0, i32 1
  %t176 = load ptr, ptr %t175, !tbaa !27
  %t177 = load i64, ptr %l103, !tbaa !24
  %t178 = load i64, ptr %l116, !tbaa !24
  %t179 = getelementptr i8, ptr %t176, i64 %t177
  %t180 = sub i64 %t178, %t177
  %t181 = insertvalue { i64, ptr } undef, i64 %t180, 0
  %t182 = insertvalue { i64, ptr } %t181, ptr %t179, 1
  %t184 = extractvalue { i64, ptr } %t182, 1
  %t185 = extractvalue { i64, ptr } %t182, 0
  %t186 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t185)
  call void @olang_textcopy(ptr %t186, ptr %t184, i64 %t185)
  %t187 = insertvalue { i64, ptr } undef, i64 %t185, 0
  %t188 = insertvalue { i64, ptr } %t187, ptr %t186, 1
  store { i64, ptr } %t188, ptr %l122, !tbaa !27
  %t189 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t190 = extractvalue { i64, ptr } %t189, 0
  %t191 = load { i64, ptr }, ptr %l122, !tbaa !27
  %t192 = extractvalue { i64, ptr } %t191, 0
  store i64 %t192, ptr %l124, !tbaa !24
  %t194 = load i64, ptr %l124, !tbaa !24
  %t195 = icmp eq i64 %t190, %t194
  br i1 %t195, label %bb40, label %bb41
bb39:
  call void @__olang_check_failed(ptr @olang_loc_e2fdffbec4ffc6f6_d7c57975026acfca)
  unreachable
bb40:
  %t197 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t198 = load ptr, ptr %t197, !tbaa !27
  %t199 = getelementptr { i64, ptr }, ptr %l122, i32 0, i32 1
  %t200 = load ptr, ptr %t199, !tbaa !27
  %t201 = load i64, ptr %l124, !tbaa !24
  %t202 = mul i64 %t201, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t198, ptr %t200, i64 %t202, i1 false)
  br label %bb42
bb41:
  %t203 = load { i64, ptr }, ptr %l122, !tbaa !27
  store { i64, ptr } %t203, ptr %l8, !tbaa !27
  br label %bb42
bb42:
  br label %bb43
bb43:
  %t204 = load ptr, ptr %l5, !tbaa !29
  %t206 = call i1 @compiler_2fast_2ecompiler_2fast_3aFunc_2eIsBuilder(ptr %v2, ptr %t204)
  store i1 %t206, ptr %l127
  br label %bb44
bb44:
  %t207 = load i1, ptr %l127, !tbaa !21
  br i1 %t207, label %bb45, label %bb46
bb45:
  %t208 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t208, ptr %l128, !tbaa !27
  %t209 = load ptr, ptr %l5, !tbaa !29
  %t211 = getelementptr %"compiler/ast:Func", ptr %t209, i32 0, i32 9
  %t212 = load ptr, ptr %t211, !tbaa !29
  %t214 = icmp eq ptr %t212, null
  br i1 %t214, label %bb47, label %bb48
bb46:
  br label %bb70
bb47:
  call void @__olang_check_failed(ptr @olang_loc_20935b6efc97b92f_a6b75dda1390d5f3)
  unreachable
bb48:
  br label %bb49
bb49:
  %t216 = load ptr, ptr %l5, !tbaa !29
  %t218 = getelementptr %"compiler/ast:Func", ptr %t216, i32 0, i32 9
  %t219 = load ptr, ptr %t218, !tbaa !29
  %t221 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v2, ptr %t219)
  store %"compiler/source:Span" %t221, ptr %l134
  br label %bb50
bb50:
  %t222 = getelementptr %"compiler/source:Span", ptr %l134, i32 0, i32 0
  %t223 = load i32, ptr %t222, !tbaa !23
  %t225 = sext i32 %t223 to i64
  store i64 %t225, ptr %l136, !tbaa !24
  %t226 = load ptr, ptr %l5, !tbaa !29
  %t228 = getelementptr %"compiler/ast:Func", ptr %t226, i32 0, i32 9
  %t229 = load ptr, ptr %t228, !tbaa !29
  %t231 = icmp eq ptr %t229, null
  br i1 %t231, label %bb51, label %bb52
bb51:
  call void @__olang_check_failed(ptr @olang_loc_20935b6efc97b92f_a6b75dda1390d5f3)
  unreachable
bb52:
  br label %bb53
bb53:
  %t233 = load ptr, ptr %l5, !tbaa !29
  %t235 = getelementptr %"compiler/ast:Func", ptr %t233, i32 0, i32 9
  %t236 = load ptr, ptr %t235, !tbaa !29
  %t238 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v2, ptr %t236)
  store %"compiler/source:Span" %t238, ptr %l142
  br label %bb54
bb54:
  %t239 = getelementptr %"compiler/source:Span", ptr %l142, i32 0, i32 1
  %t240 = load i32, ptr %t239, !tbaa !23
  %t242 = sext i32 %t240 to i64
  store i64 %t242, ptr %l144, !tbaa !24
  %t243 = load { i64, ptr }, ptr %l128, !tbaa !27
  %t244 = extractvalue { i64, ptr } %t243, 0
  store i64 %t244, ptr %l145, !tbaa !24
  %t245 = load i64, ptr %l136, !tbaa !24
  %t246 = icmp sge i64 %t245, 0
  br i1 %t246, label %bb55, label %bb56
bb55:
  %t248 = load i64, ptr %l136, !tbaa !24
  %t249 = load i64, ptr %l144, !tbaa !24
  %t250 = icmp sle i64 %t248, %t249
  br i1 %t250, label %bb57, label %bb58
bb56:
  call void @__olang_check_failed(ptr @olang_loc_d4784f9ecdded0f8_efac4001dd272cfc)
  unreachable
bb57:
  %t252 = load i64, ptr %l144, !tbaa !24
  %t253 = load i64, ptr %l145, !tbaa !24
  %t254 = icmp sle i64 %t252, %t253
  br i1 %t254, label %bb59, label %bb60
bb58:
  call void @__olang_check_failed(ptr @olang_loc_d4784f9ecdded0f8_efac4001dd272cfc)
  unreachable
bb59:
  %t256 = getelementptr { i64, ptr }, ptr %l128, i32 0, i32 1
  %t257 = load ptr, ptr %t256, !tbaa !27
  %t258 = load i64, ptr %l136, !tbaa !24
  %t259 = load i64, ptr %l144, !tbaa !24
  %t260 = getelementptr i8, ptr %t257, i64 %t258
  %t261 = sub i64 %t259, %t258
  %t262 = insertvalue { i64, ptr } undef, i64 %t261, 0
  %t263 = insertvalue { i64, ptr } %t262, ptr %t260, 1
  %t265 = extractvalue { i64, ptr } %t263, 1
  %t266 = extractvalue { i64, ptr } %t263, 0
  %t267 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t266)
  call void @olang_textcopy(ptr %t267, ptr %t265, i64 %t266)
  %t268 = insertvalue { i64, ptr } undef, i64 %t266, 0
  %t269 = insertvalue { i64, ptr } %t268, ptr %t267, 1
  store { i64, ptr } %t269, ptr %l150, !tbaa !27
  %t270 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t271 = extractvalue { i64, ptr } %t270, 0
  %t272 = load { i64, ptr }, ptr %l150, !tbaa !27
  %t273 = extractvalue { i64, ptr } %t272, 0
  store i64 %t273, ptr %l152, !tbaa !24
  %t275 = load i64, ptr %l152, !tbaa !24
  %t276 = icmp eq i64 %t271, %t275
  br i1 %t276, label %bb61, label %bb62
bb60:
  call void @__olang_check_failed(ptr @olang_loc_d4784f9ecdded0f8_efac4001dd272cfc)
  unreachable
bb61:
  %t278 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t279 = load ptr, ptr %t278, !tbaa !27
  %t280 = getelementptr { i64, ptr }, ptr %l150, i32 0, i32 1
  %t281 = load ptr, ptr %t280, !tbaa !27
  %t282 = load i64, ptr %l152, !tbaa !24
  %t283 = mul i64 %t282, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t279, ptr %t281, i64 %t283, i1 false)
  br label %bb63
bb62:
  %t284 = load { i64, ptr }, ptr %l150, !tbaa !27
  store { i64, ptr } %t284, ptr %l8, !tbaa !27
  br label %bb63
bb63:
  %t285 = load ptr, ptr %l3, !tbaa !29
  %t286 = load ptr, ptr %l5, !tbaa !29
  %t288 = getelementptr %"compiler/ast:Func", ptr %t286, i32 0, i32 10
  %t289 = load i32, ptr %t288, !tbaa !23
  %t292 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v3, ptr %s1, ptr %t285, i32 %t289)
  store { i64, ptr } %t292, ptr %l157
  br label %bb64
bb64:
  %t293 = load { i64, ptr }, ptr %l157, !tbaa !27
  store { i64, ptr } %t293, ptr %l6, !tbaa !27
  %t294 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t294, ptr %l158, !tbaa !27
  %t295 = load ptr, ptr %l5, !tbaa !29
  %t297 = getelementptr %"compiler/ast:Func", ptr %t295, i32 0, i32 9
  %t298 = load ptr, ptr %t297, !tbaa !29
  %t300 = icmp eq ptr %t298, null
  br i1 %t300, label %bb65, label %bb66
bb65:
  call void @__olang_check_failed(ptr @olang_loc_8cc976989131f049_16bcaa94a8222275)
  unreachable
bb66:
  br label %bb67
bb67:
  %t302 = load ptr, ptr %l5, !tbaa !29
  %t304 = getelementptr %"compiler/ast:Func", ptr %t302, i32 0, i32 9
  %t305 = load ptr, ptr %t304, !tbaa !29
  %t307 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v2, ptr %t305)
  store %"compiler/source:Span" %t307, ptr %l164
  br label %bb68
bb68:
  %t308 = getelementptr %"compiler/source:Span", ptr %l164, i32 0, i32 1
  %t309 = load i32, ptr %t308, !tbaa !23
  %t311 = sext i32 %t309 to i64
  %t312 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t313 = load { i64, ptr }, ptr %l158, !tbaa !27
  %t316 = call i64 @compiler_2fsession_2enameIn(ptr %v0, ptr %s1, { i64, ptr } %t313, i64 %t311, { i64, ptr } %t312)
  store i64 %t316, ptr %l168
  br label %bb69
bb69:
  %t317 = load i64, ptr %l168, !tbaa !24
  store i64 %t317, ptr %l7, !tbaa !24
  br label %bb70
bb70:
  %t318 = load ptr, ptr %l0, !tbaa !29
  store ptr %t318, ptr %l169, !tbaa !29
  %t319 = load ptr, ptr %l1, !tbaa !29
  store ptr %t319, ptr %l170, !tbaa !29
  %t320 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t320, ptr %l171, !tbaa !27
  %t321 = load ptr, ptr %l5, !tbaa !29
  %t323 = getelementptr %"compiler/ast:Func", ptr %t321, i32 0, i32 1
  %t324 = load ptr, ptr %t323, !tbaa !29
  %t326 = icmp eq ptr %t324, null
  %t328 = xor i1 %t326, true
  br i1 %t328, label %bb71, label %bb72
bb71:
  store i1 true, ptr %l176, !tbaa !21
  br label %bb74
bb72:
  %t330 = load ptr, ptr %l5, !tbaa !29
  %t332 = call i1 @compiler_2fast_2ecompiler_2fast_3aFunc_2eIsBuilder(ptr %v2, ptr %t330)
  store i1 %t332, ptr %l178
  br label %bb73
bb73:
  %t333 = load i1, ptr %l178, !tbaa !21
  store i1 %t333, ptr %l176, !tbaa !21
  br label %bb74
bb74:
  %t334 = load i1, ptr %l176, !tbaa !21
  br i1 %t334, label %bb75, label %bb76
bb75:
  %t335 = load i64, ptr @G_2ecompiler_2fsession_2eKindMethod, !tbaa !24
  store i64 %t335, ptr %l179, !tbaa !24
  br label %bb77
bb76:
  %t337 = load i64, ptr @G_2ecompiler_2fsession_2eKindFunction, !tbaa !24
  store i64 %t337, ptr %l179, !tbaa !24
  br label %bb77
bb77:
  %t339 = load ptr, ptr %l5, !tbaa !29
  %t341 = getelementptr %"compiler/ast:Func", ptr %t339, i32 0, i32 0
  %t342 = getelementptr %"compiler/source:Span", ptr %t341, i32 0, i32 0
  %t343 = load i32, ptr %t342, !tbaa !23
  %t345 = sext i32 %t343 to i64
  %t346 = load ptr, ptr %l5, !tbaa !29
  %t348 = getelementptr %"compiler/ast:Func", ptr %t346, i32 0, i32 0
  %t349 = getelementptr %"compiler/source:Span", ptr %t348, i32 0, i32 1
  %t350 = load i32, ptr %t349, !tbaa !23
  %t352 = sext i32 %t350 to i64
  %t353 = load i64, ptr %l7, !tbaa !24
  %t354 = load i64, ptr %l7, !tbaa !24
  %t355 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t357 = extractvalue { i64, ptr } %t355, 0
  %t360 = add i64 %t354, %t357
  %t361 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t362 = load { i64, ptr }, ptr %l171, !tbaa !27
  %t363 = extractvalue { i64, ptr } %t362, 1
  %t364 = call ptr @__olang_scope_of(ptr %t363, ptr null)
  %t365 = ptrtoint ptr %t364 to i64
  %t367 = inttoptr i64 %t365 to ptr
  %t368 = load ptr, ptr %l169, !tbaa !29
  %t369 = load ptr, ptr %l170, !tbaa !29
  %t370 = load { i64, ptr }, ptr %l171, !tbaa !27
  %t371 = load i64, ptr %l179, !tbaa !24
  call void @compiler_2fsession_2ecompiler_2fsession_3asymWriter_2eleaf(ptr %v0, ptr %v1, ptr %t367, ptr %s1, ptr %t368, ptr %t369, { i64, ptr } %t370, i64 %t371, i64 %t345, i64 %t352, i64 %t353, i64 %t360, { i64, ptr } %t361)
  br label %bb78
bb78:
  call void @__olang_scope_close(ptr %s1)
  br label %bb207
bb79:
  %t377 = load ptr, ptr %l2, !tbaa !29
  store ptr %t377, ptr %l195, !tbaa !29
  store i1 false, ptr %l196, !tbaa !21
  %t378 = load ptr, ptr %l195, !tbaa !29
  %t379 = icmp ne ptr %t378, null
  br i1 %t379, label %bb80, label %bb81
bb80:
  %t381 = load ptr, ptr %l195, !tbaa !29
  %t382 = load i64, ptr %t381, !range !{i64 0, i64 11}
  %t384 = icmp eq i64 %t382, 2
  store i1 %t384, ptr %l196, !tbaa !21
  br label %bb81
bb81:
  %t385 = load i1, ptr %l196, !tbaa !21
  br i1 %t385, label %bb82, label %bb83
bb82:
  %t386 = load ptr, ptr %l2, !tbaa !29
  %t388 = getelementptr { i64, [8 x i64] }, ptr %t386, i32 0, i32 1
  %t389 = getelementptr { %"compiler/source:Span", ptr }, ptr %t388, i32 0, i32 0
  %t390 = load %"compiler/source:Span", ptr %t389
  store %"compiler/source:Span" %t390, ptr %l11
  %t392 = load ptr, ptr %l2, !tbaa !29
  %t394 = getelementptr { i64, [8 x i64] }, ptr %t392, i32 0, i32 1
  %t395 = getelementptr { %"compiler/source:Span", ptr }, ptr %t394, i32 0, i32 1
  %t396 = load ptr, ptr %t395
  store ptr %t396, ptr %l12, !tbaa !29
  br label %bb84
bb83:
  br label %bb123
bb84:
  store %olang.scope zeroinitializer, ptr %s6
  %t398 = load ptr, ptr %l3, !tbaa !29
  %t399 = load ptr, ptr %l12, !tbaa !29
  %t401 = getelementptr %"compiler/ast:TypeDecl", ptr %t399, i32 0, i32 0
  %t402 = load i32, ptr %t401, !tbaa !23
  %t405 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v3, ptr %v3, ptr %t398, i32 %t402)
  store { i64, ptr } %t405, ptr %l206
  br label %bb85
bb85:
  %t406 = load { i64, ptr }, ptr %l206, !tbaa !27
  store { i64, ptr } %t406, ptr %l13, !tbaa !27
  %t407 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t408 = getelementptr %"compiler/source:Span", ptr %l11, i32 0, i32 0
  %t409 = load i32, ptr %t408, !tbaa !23
  %t411 = sext i32 %t409 to i64
  %t412 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t416 = call i64 @compiler_2fsession_2enameIn(ptr %v0, ptr %v3, { i64, ptr } %t407, i64 %t411, { i64, ptr } %t412)
  store i64 %t416, ptr %l211
  br label %bb86
bb86:
  %t417 = load i64, ptr %l211, !tbaa !24
  store i64 %t417, ptr %l14, !tbaa !24
  %t418 = load i64, ptr @G_2ecompiler_2fsession_2eKindClass, !tbaa !24
  store i64 %t418, ptr %l15, !tbaa !24
  %t420 = load ptr, ptr %l12, !tbaa !29
  %t422 = getelementptr %"compiler/ast:TypeDecl", ptr %t420, i32 0, i32 3
  %t423 = load ptr, ptr %t422, !tbaa !29
  %t425 = icmp eq ptr %t423, null
  %t427 = xor i1 %t425, true
  br i1 %t427, label %bb87, label %bb88
bb87:
  %t429 = load ptr, ptr %l12, !tbaa !29
  %t431 = getelementptr %"compiler/ast:TypeDecl", ptr %t429, i32 0, i32 3
  %t432 = load ptr, ptr %t431, !tbaa !29
  store ptr %t432, ptr %l16, !tbaa !29
  %t434 = load ptr, ptr %l16, !tbaa !29
  store ptr %t434, ptr %l220, !tbaa !29
  store i1 false, ptr %l221, !tbaa !21
  %t435 = load ptr, ptr %l220, !tbaa !29
  %t436 = icmp ne ptr %t435, null
  br i1 %t436, label %bb89, label %bb90
bb88:
  br label %bb112
bb89:
  %t438 = load ptr, ptr %l220, !tbaa !29
  %t439 = load i64, ptr %t438, !range !{i64 0, i64 5}
  %t441 = icmp eq i64 %t439, 0
  store i1 %t441, ptr %l221, !tbaa !21
  br label %bb90
bb90:
  %t442 = load i1, ptr %l221, !tbaa !21
  br i1 %t442, label %bb91, label %bb92
bb91:
  br label %bb93
bb92:
  br label %bb94
bb93:
  %t443 = load i64, ptr @G_2ecompiler_2fsession_2eKindStruct, !tbaa !24
  store i64 %t443, ptr %l219, !tbaa !24
  br label %bb111
bb94:
  %t445 = load ptr, ptr %l16, !tbaa !29
  store ptr %t445, ptr %l225, !tbaa !29
  store i1 false, ptr %l226, !tbaa !21
  %t446 = load ptr, ptr %l225, !tbaa !29
  %t447 = icmp ne ptr %t446, null
  br i1 %t447, label %bb95, label %bb96
bb95:
  %t449 = load ptr, ptr %l225, !tbaa !29
  %t450 = load i64, ptr %t449, !range !{i64 0, i64 5}
  %t452 = icmp eq i64 %t450, 1
  store i1 %t452, ptr %l226, !tbaa !21
  br label %bb96
bb96:
  %t453 = load i1, ptr %l226, !tbaa !21
  br i1 %t453, label %bb97, label %bb98
bb97:
  br label %bb99
bb98:
  br label %bb100
bb99:
  %t454 = load i64, ptr @G_2ecompiler_2fsession_2eKindEnum, !tbaa !24
  store i64 %t454, ptr %l219, !tbaa !24
  br label %bb111
bb100:
  %t456 = load ptr, ptr %l16, !tbaa !29
  store ptr %t456, ptr %l230, !tbaa !29
  store i1 false, ptr %l231, !tbaa !21
  %t457 = load ptr, ptr %l230, !tbaa !29
  %t458 = icmp ne ptr %t457, null
  br i1 %t458, label %bb101, label %bb102
bb101:
  %t460 = load ptr, ptr %l230, !tbaa !29
  %t461 = load i64, ptr %t460, !range !{i64 0, i64 5}
  %t463 = icmp eq i64 %t461, 2
  store i1 %t463, ptr %l231, !tbaa !21
  br label %bb102
bb102:
  %t464 = load i1, ptr %l231, !tbaa !21
  br i1 %t464, label %bb103, label %bb104
bb103:
  br label %bb105
bb104:
  br label %bb106
bb105:
  %t465 = load i64, ptr @G_2ecompiler_2fsession_2eKindInterface, !tbaa !24
  store i64 %t465, ptr %l219, !tbaa !24
  br label %bb111
bb106:
  br i1 true, label %bb107, label %bb108
bb107:
  br label %bb109
bb108:
  br label %bb110
bb109:
  %t467 = load i64, ptr @G_2ecompiler_2fsession_2eKindClass, !tbaa !24
  store i64 %t467, ptr %l219, !tbaa !24
  br label %bb111
bb110:
  call void @__olang_check_failed(ptr @olang_loc_6d13c8aa31bd5d91_e2d0bffb643f3edd)
  unreachable
bb111:
  %t469 = load i64, ptr %l219, !tbaa !24
  store i64 %t469, ptr %l15, !tbaa !24
  br label %bb112
bb112:
  %t470 = load ptr, ptr %l0, !tbaa !29
  %t471 = load ptr, ptr %l1, !tbaa !29
  %t472 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t473 = load i64, ptr %l15, !tbaa !24
  %t474 = getelementptr %"compiler/source:Span", ptr %l11, i32 0, i32 0
  %t475 = load i32, ptr %t474, !tbaa !23
  %t477 = sext i32 %t475 to i64
  %t478 = getelementptr %"compiler/source:Span", ptr %l11, i32 0, i32 1
  %t479 = load i32, ptr %t478, !tbaa !23
  %t481 = sext i32 %t479 to i64
  %t482 = load i64, ptr %l14, !tbaa !24
  %t483 = load i64, ptr %l14, !tbaa !24
  %t484 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t486 = extractvalue { i64, ptr } %t484, 0
  %t489 = add i64 %t483, %t486
  call void @compiler_2fsession_2ecompiler_2fsession_3asymWriter_2eopen(ptr %v0, ptr %v1, ptr %v3, ptr %s6, ptr %t470, ptr %t471, { i64, ptr } %t472, i64 %t473, i64 %t477, i64 %t481, i64 %t482, i64 %t489, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d50, i32 0, i32 1) })
  br label %bb113
bb113:
  %t498 = load ptr, ptr %l0, !tbaa !29
  %t500 = getelementptr %"compiler/session:symWriter", ptr %t498, i32 0, i32 0
  %t501 = load ptr, ptr %t500, !tbaa !29
  %t503 = call %"compiler/session:symWriter" @compiler_2fsession_3asymWriter_2ector(ptr %v0, ptr %s6, ptr %t501)
  store %"compiler/session:symWriter" %t503, ptr %l251
  br label %bb114
bb114:
  %t504 = load %"compiler/session:symWriter", ptr %l251
  store %"compiler/session:symWriter" %t504, ptr %l17
  %t505 = load ptr, ptr %l12, !tbaa !29
  %t507 = getelementptr %"compiler/ast:TypeDecl", ptr %t505, i32 0, i32 3
  %t508 = load ptr, ptr %t507, !tbaa !29
  %t510 = icmp eq ptr %t508, null
  %t512 = xor i1 %t510, true
  br i1 %t512, label %bb115, label %bb116
bb115:
  store ptr %l17, ptr %l256, !tbaa !29
  %t514 = load ptr, ptr %l1, !tbaa !29
  store ptr %t514, ptr %l257, !tbaa !29
  %t515 = load ptr, ptr %l12, !tbaa !29
  %t517 = getelementptr %"compiler/ast:TypeDecl", ptr %t515, i32 0, i32 3
  %t518 = load ptr, ptr %t517, !tbaa !29
  %t520 = icmp eq ptr %t518, null
  br i1 %t520, label %bb117, label %bb118
bb116:
  br label %bb121
bb117:
  call void @__olang_check_failed(ptr @olang_loc_aa1a720e54961963_b2017c5bfd4a977f)
  unreachable
bb118:
  br label %bb119
bb119:
  %t522 = load ptr, ptr %l12, !tbaa !29
  %t524 = getelementptr %"compiler/ast:TypeDecl", ptr %t522, i32 0, i32 3
  %t525 = load ptr, ptr %t524, !tbaa !29
  %t526 = load ptr, ptr %l3, !tbaa !29
  %t527 = load ptr, ptr %l256, !tbaa !29
  %t528 = load ptr, ptr %l257, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3asymWriter_2emembers(ptr %s6, ptr %v1, ptr %v2, ptr %v3, ptr %t527, ptr %t528, ptr %t525, ptr %t526)
  br label %bb120
bb120:
  br label %bb121
bb121:
  %t531 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s6, ptr %t531, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d51, i32 0, i32 1) })
  br label %bb122
bb122:
  call void @__olang_scope_close(ptr %s6)
  br label %bb207
bb123:
  %t533 = load ptr, ptr %l2, !tbaa !29
  store ptr %t533, ptr %l265, !tbaa !29
  store i1 false, ptr %l266, !tbaa !21
  %t534 = load ptr, ptr %l265, !tbaa !29
  %t535 = icmp ne ptr %t534, null
  br i1 %t535, label %bb124, label %bb125
bb124:
  %t537 = load ptr, ptr %l265, !tbaa !29
  %t538 = load i64, ptr %t537, !range !{i64 0, i64 11}
  %t540 = icmp eq i64 %t538, 3
  store i1 %t540, ptr %l266, !tbaa !21
  br label %bb125
bb125:
  %t541 = load i1, ptr %l266, !tbaa !21
  br i1 %t541, label %bb126, label %bb127
bb126:
  %t542 = load ptr, ptr %l2, !tbaa !29
  %t544 = getelementptr { i64, [8 x i64] }, ptr %t542, i32 0, i32 1
  %t545 = getelementptr { %"compiler/source:Span", ptr }, ptr %t544, i32 0, i32 0
  %t546 = load %"compiler/source:Span", ptr %t545
  store %"compiler/source:Span" %t546, ptr %l18
  %t548 = load ptr, ptr %l2, !tbaa !29
  %t550 = getelementptr { i64, [8 x i64] }, ptr %t548, i32 0, i32 1
  %t551 = getelementptr { %"compiler/source:Span", ptr }, ptr %t550, i32 0, i32 1
  %t552 = load ptr, ptr %t551
  store ptr %t552, ptr %l19, !tbaa !29
  br label %bb128
bb127:
  br label %bb146
bb128:
  %t554 = load ptr, ptr %l19, !tbaa !29
  %t556 = getelementptr %"compiler/ast:VarDecl", ptr %t554, i32 0, i32 7
  %t557 = load i1, ptr %t556, !tbaa !21
  br i1 %t557, label %bb129, label %bb130
bb129:
  br label %ret
bb130:
  br label %bb131
bb131:
  store i64 0, ptr %l20, !tbaa !24
  %t559 = load ptr, ptr %l19, !tbaa !29
  %t561 = getelementptr %"compiler/ast:VarDecl", ptr %t559, i32 0, i32 0
  %t562 = load { i64, ptr }, ptr %t561, !tbaa !27
  %t564 = extractvalue { i64, ptr } %t562, 0
  store i64 %t564, ptr %l21, !tbaa !24
  store i64 1, ptr %l22, !tbaa !24
  %t566 = load i64, ptr %l21, !tbaa !24
  %t567 = load i64, ptr %l20, !tbaa !24
  %t570 = icmp sgt i64 %t566, %t567
  br i1 %t570, label %bb132, label %bb133
bb132:
  %t572 = load i64, ptr %l22, !tbaa !24
  %t574 = icmp sgt i64 %t572, 0
  br i1 %t574, label %bb134, label %bb135
bb133:
  store i64 0, ptr %l281, !tbaa !24
  br label %bb137
bb134:
  %t576 = load i64, ptr %l21, !tbaa !24
  %t577 = load i64, ptr %l20, !tbaa !24
  %t580 = sub i64 %t576, %t577
  %t581 = load i64, ptr %l22, !tbaa !24
  %t584 = add i64 %t580, %t581
  %t586 = sub i64 %t584, 1
  %t587 = load i64, ptr %l22, !tbaa !24
  %t590 = sdiv i64 %t586, %t587
  store i64 %t590, ptr %l284, !tbaa !24
  br label %bb136
bb135:
  store i64 0, ptr %l284, !tbaa !24
  br label %bb136
bb136:
  %t592 = load i64, ptr %l284, !tbaa !24
  store i64 %t592, ptr %l281, !tbaa !24
  br label %bb137
bb137:
  %t593 = load i64, ptr %l281, !tbaa !24
  store i64 %t593, ptr %l23, !tbaa !24
  store i64 0, ptr %l24, !tbaa !24
  br label %bb138
bb138:
  store %olang.scope zeroinitializer, ptr %s16
  %t594 = load i64, ptr %l24, !tbaa !24
  %t595 = load i64, ptr %l23, !tbaa !24
  %t598 = icmp slt i64 %t594, %t595
  %t600 = xor i1 %t598, true
  br i1 %t600, label %bb139, label %bb140
bb139:
  call void @__olang_scope_close(ptr %s16)
  br label %bb145
bb140:
  br label %bb141
bb141:
  %t602 = load i64, ptr %l20, !tbaa !24
  %t603 = load i64, ptr %l24, !tbaa !24
  %t604 = load i64, ptr %l22, !tbaa !24
  %t607 = mul i64 %t603, %t604
  %t610 = add i64 %t602, %t607
  store i64 %t610, ptr %l25, !tbaa !24
  %t612 = load ptr, ptr %l19, !tbaa !29
  %t614 = getelementptr %"compiler/ast:VarDecl", ptr %t612, i32 0, i32 1
  %t615 = load { i64, ptr }, ptr %t614, !tbaa !27
  store { i64, ptr } %t615, ptr %l303, !tbaa !27
  %t616 = load i64, ptr %l25, !tbaa !24
  %t618 = getelementptr { i64, ptr }, ptr %l303, i32 0, i32 1
  %t619 = load ptr, ptr %t618, !tbaa !27
  %t620 = getelementptr %"compiler/source:Span", ptr %t619, i64 %t616
  %t621 = load %"compiler/source:Span", ptr %t620
  store %"compiler/source:Span" %t621, ptr %l26
  %t623 = load ptr, ptr %l0, !tbaa !29
  store ptr %t623, ptr %l306, !tbaa !29
  %t624 = load ptr, ptr %l1, !tbaa !29
  store ptr %t624, ptr %l307, !tbaa !29
  %t625 = load ptr, ptr %l3, !tbaa !29
  %t626 = load ptr, ptr %l19, !tbaa !29
  %t628 = getelementptr %"compiler/ast:VarDecl", ptr %t626, i32 0, i32 0
  %t629 = load { i64, ptr }, ptr %t628, !tbaa !27
  store { i64, ptr } %t629, ptr %l310, !tbaa !27
  %t630 = load i64, ptr %l25, !tbaa !24
  %t632 = getelementptr { i64, ptr }, ptr %l310, i32 0, i32 1
  %t633 = load ptr, ptr %t632, !tbaa !27
  %t634 = getelementptr i32, ptr %t633, i64 %t630
  %t635 = load i32, ptr %t634, !tbaa !33
  %t638 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v3, ptr %v3, ptr %t625, i32 %t635)
  store { i64, ptr } %t638, ptr %l313
  br label %bb142
bb142:
  %t639 = load i64, ptr @G_2ecompiler_2fsession_2eKindVariable, !tbaa !24
  %t640 = getelementptr %"compiler/source:Span", ptr %l18, i32 0, i32 0
  %t641 = load i32, ptr %t640, !tbaa !23
  %t643 = sext i32 %t641 to i64
  %t644 = getelementptr %"compiler/source:Span", ptr %l18, i32 0, i32 1
  %t645 = load i32, ptr %t644, !tbaa !23
  %t647 = sext i32 %t645 to i64
  %t648 = getelementptr %"compiler/source:Span", ptr %l26, i32 0, i32 0
  %t649 = load i32, ptr %t648, !tbaa !23
  %t651 = sext i32 %t649 to i64
  %t652 = getelementptr %"compiler/source:Span", ptr %l26, i32 0, i32 1
  %t653 = load i32, ptr %t652, !tbaa !23
  %t655 = sext i32 %t653 to i64
  %t656 = load ptr, ptr %l306, !tbaa !29
  %t657 = load ptr, ptr %l307, !tbaa !29
  %t658 = load { i64, ptr }, ptr %l313, !tbaa !27
  call void @compiler_2fsession_2ecompiler_2fsession_3asymWriter_2eleaf(ptr %v0, ptr %v1, ptr %v3, ptr %s16, ptr %t656, ptr %t657, { i64, ptr } %t658, i64 %t639, i64 %t643, i64 %t647, i64 %t651, i64 %t655, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d52, i32 0, i32 1) })
  br label %bb143
bb143:
  call void @__olang_scope_close(ptr %s16)
  br label %bb144
bb144:
  %t664 = load i64, ptr %l24, !tbaa !24
  %t666 = add i64 %t664, 1
  store i64 %t666, ptr %l24, !tbaa !24
  br label %bb138
bb145:
  br label %bb207
bb146:
  %t668 = load ptr, ptr %l2, !tbaa !29
  store ptr %t668, ptr %l325, !tbaa !29
  store i1 false, ptr %l326, !tbaa !21
  %t669 = load ptr, ptr %l325, !tbaa !29
  %t670 = icmp ne ptr %t669, null
  br i1 %t670, label %bb147, label %bb148
bb147:
  %t672 = load ptr, ptr %l325, !tbaa !29
  %t673 = load i64, ptr %t672, !range !{i64 0, i64 11}
  %t675 = icmp eq i64 %t673, 5
  store i1 %t675, ptr %l326, !tbaa !21
  br label %bb148
bb148:
  %t676 = load i1, ptr %l326, !tbaa !21
  br i1 %t676, label %bb149, label %bb150
bb149:
  %t677 = load ptr, ptr %l2, !tbaa !29
  %t679 = getelementptr { i64, [8 x i64] }, ptr %t677, i32 0, i32 1
  %t680 = getelementptr { %"compiler/source:Span", i32, { i64, ptr }, { i64, ptr }, { i64, ptr } }, ptr %t679, i32 0, i32 0
  %t681 = load %"compiler/source:Span", ptr %t680
  store %"compiler/source:Span" %t681, ptr %l27
  %t683 = load ptr, ptr %l2, !tbaa !29
  %t685 = getelementptr { i64, [8 x i64] }, ptr %t683, i32 0, i32 1
  %t686 = getelementptr { %"compiler/source:Span", i32, { i64, ptr }, { i64, ptr }, { i64, ptr } }, ptr %t685, i32 0, i32 1
  %t687 = load i32, ptr %t686
  store i32 %t687, ptr %l28, !tbaa !23
  %t689 = load ptr, ptr %l2, !tbaa !29
  %t691 = getelementptr { i64, [8 x i64] }, ptr %t689, i32 0, i32 1
  %t692 = getelementptr { %"compiler/source:Span", i32, { i64, ptr }, { i64, ptr }, { i64, ptr } }, ptr %t691, i32 0, i32 2
  %t693 = load { i64, ptr }, ptr %t692
  store { i64, ptr } %t693, ptr %l29, !tbaa !27
  br label %bb151
bb150:
  br label %bb169
bb151:
  store %olang.scope zeroinitializer, ptr %s18
  %t695 = load ptr, ptr %l3, !tbaa !29
  %t696 = load i32, ptr %l28, !tbaa !23
  %t699 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v3, ptr %v3, ptr %t695, i32 %t696)
  store { i64, ptr } %t699, ptr %l337
  br label %bb152
bb152:
  %t700 = load { i64, ptr }, ptr %l337, !tbaa !27
  store { i64, ptr } %t700, ptr %l30, !tbaa !27
  %t701 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t702 = getelementptr %"compiler/source:Span", ptr %l27, i32 0, i32 0
  %t703 = load i32, ptr %t702, !tbaa !23
  %t705 = sext i32 %t703 to i64
  %t706 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t710 = call i64 @compiler_2fsession_2enameIn(ptr %v0, ptr %v3, { i64, ptr } %t701, i64 %t705, { i64, ptr } %t706)
  store i64 %t710, ptr %l342
  br label %bb153
bb153:
  %t711 = load i64, ptr %l342, !tbaa !24
  store i64 %t711, ptr %l31, !tbaa !24
  %t712 = load ptr, ptr %l0, !tbaa !29
  %t713 = load ptr, ptr %l1, !tbaa !29
  %t714 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t715 = load i64, ptr @G_2ecompiler_2fsession_2eKindEnum, !tbaa !24
  %t716 = getelementptr %"compiler/source:Span", ptr %l27, i32 0, i32 0
  %t717 = load i32, ptr %t716, !tbaa !23
  %t719 = sext i32 %t717 to i64
  %t720 = getelementptr %"compiler/source:Span", ptr %l27, i32 0, i32 1
  %t721 = load i32, ptr %t720, !tbaa !23
  %t723 = sext i32 %t721 to i64
  %t724 = load i64, ptr %l31, !tbaa !24
  %t725 = load i64, ptr %l31, !tbaa !24
  %t726 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t728 = extractvalue { i64, ptr } %t726, 0
  %t731 = add i64 %t725, %t728
  call void @compiler_2fsession_2ecompiler_2fsession_3asymWriter_2eopen(ptr %v0, ptr %v1, ptr %v3, ptr %s18, ptr %t712, ptr %t713, { i64, ptr } %t714, i64 %t715, i64 %t719, i64 %t723, i64 %t724, i64 %t731, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d53, i32 0, i32 1) })
  br label %bb154
bb154:
  %t740 = load ptr, ptr %l0, !tbaa !29
  %t742 = getelementptr %"compiler/session:symWriter", ptr %t740, i32 0, i32 0
  %t743 = load ptr, ptr %t742, !tbaa !29
  %t745 = call %"compiler/session:symWriter" @compiler_2fsession_3asymWriter_2ector(ptr %v0, ptr %s18, ptr %t743)
  store %"compiler/session:symWriter" %t745, ptr %l358
  br label %bb155
bb155:
  %t746 = load %"compiler/session:symWriter", ptr %l358
  store %"compiler/session:symWriter" %t746, ptr %l32
  %t747 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t747, ptr %l33, !tbaa !27
  store i64 0, ptr %l34, !tbaa !24
  %t749 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t751 = extractvalue { i64, ptr } %t749, 0
  store i64 %t751, ptr %l35, !tbaa !24
  br label %bb156
bb156:
  %t753 = load i64, ptr %l34, !tbaa !24
  %t754 = load i64, ptr %l35, !tbaa !24
  %t757 = icmp slt i64 %t753, %t754
  %t759 = xor i1 %t757, true
  br i1 %t759, label %bb157, label %bb158
bb157:
  br label %bb167
bb158:
  br label %bb159
bb159:
  %t761 = load { i64, ptr }, ptr %l33, !tbaa !27
  store { i64, ptr } %t761, ptr %l366, !tbaa !27
  %t762 = load i64, ptr %l34, !tbaa !24
  %t764 = getelementptr { i64, ptr }, ptr %l366, i32 0, i32 1
  %t765 = load ptr, ptr %t764, !tbaa !27
  %t766 = getelementptr i32, ptr %t765, i64 %t762
  %t767 = load i32, ptr %t766, !tbaa !33
  %t769 = load ptr, ptr %l3, !tbaa !29
  %t773 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v3, ptr %v3, ptr %t769, i32 %t767)
  store { i64, ptr } %t773, ptr %l371
  br label %bb160
bb160:
  %t774 = load { i64, ptr }, ptr %l371, !tbaa !27
  store { i64, ptr } %t774, ptr %l37, !tbaa !27
  %t775 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t776 = load i64, ptr %l31, !tbaa !24
  %t777 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t779 = extractvalue { i64, ptr } %t777, 0
  %t782 = add i64 %t776, %t779
  %t783 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t787 = call i64 @compiler_2fdoc_2eWordIn(ptr %v0, ptr %v3, { i64, ptr } %t775, i64 %t782, { i64, ptr } %t783)
  store i64 %t787, ptr %l378
  br label %bb161
bb161:
  %t788 = load i64, ptr %l378, !tbaa !24
  store i64 %t788, ptr %l38, !tbaa !24
  %t789 = load i64, ptr %l38, !tbaa !24
  %t791 = icmp sge i64 %t789, 0
  br i1 %t791, label %bb162, label %bb163
bb162:
  store %olang.scope zeroinitializer, ptr %s21
  %t793 = load ptr, ptr %l1, !tbaa !29
  %t794 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t795 = load i64, ptr @G_2ecompiler_2fsession_2eKindEnumMember, !tbaa !24
  %t796 = load i64, ptr %l38, !tbaa !24
  %t797 = load i64, ptr %l38, !tbaa !24
  %t798 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t800 = extractvalue { i64, ptr } %t798, 0
  %t803 = add i64 %t797, %t800
  %t804 = load i64, ptr %l38, !tbaa !24
  %t805 = load i64, ptr %l38, !tbaa !24
  %t806 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t808 = extractvalue { i64, ptr } %t806, 0
  %t811 = add i64 %t805, %t808
  call void @compiler_2fsession_2ecompiler_2fsession_3asymWriter_2eleaf(ptr %s18, ptr %v1, ptr %v3, ptr %s21, ptr %l32, ptr %t793, { i64, ptr } %t794, i64 %t795, i64 %t796, i64 %t803, i64 %t804, i64 %t811, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d54, i32 0, i32 1) })
  br label %bb164
bb163:
  br label %bb165
bb164:
  call void @__olang_scope_close(ptr %s21)
  br label %bb165
bb165:
  br label %bb166
bb166:
  %t820 = load i64, ptr %l34, !tbaa !24
  %t822 = add i64 %t820, 1
  store i64 %t822, ptr %l34, !tbaa !24
  br label %bb156
bb167:
  %t824 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s18, ptr %t824, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d55, i32 0, i32 1) })
  br label %bb168
bb168:
  call void @__olang_scope_close(ptr %s18)
  br label %bb207
bb169:
  %t826 = load ptr, ptr %l2, !tbaa !29
  store ptr %t826, ptr %l398, !tbaa !29
  store i1 false, ptr %l399, !tbaa !21
  %t827 = load ptr, ptr %l398, !tbaa !29
  %t828 = icmp ne ptr %t827, null
  br i1 %t828, label %bb170, label %bb171
bb170:
  %t830 = load ptr, ptr %l398, !tbaa !29
  %t831 = load i64, ptr %t830, !range !{i64 0, i64 11}
  %t833 = icmp eq i64 %t831, 6
  store i1 %t833, ptr %l399, !tbaa !21
  br label %bb171
bb171:
  %t834 = load i1, ptr %l399, !tbaa !21
  br i1 %t834, label %bb172, label %bb173
bb172:
  %t835 = load ptr, ptr %l2, !tbaa !29
  %t837 = getelementptr { i64, [8 x i64] }, ptr %t835, i32 0, i32 1
  %t838 = getelementptr { %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, ptr }, ptr %t837, i32 0, i32 0
  %t839 = load %"compiler/source:Span", ptr %t838
  store %"compiler/source:Span" %t839, ptr %l39
  %t841 = load ptr, ptr %l2, !tbaa !29
  %t843 = getelementptr { i64, [8 x i64] }, ptr %t841, i32 0, i32 1
  %t844 = getelementptr { %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, ptr }, ptr %t843, i32 0, i32 1
  %t845 = load %"compiler/source:Span", ptr %t844
  store %"compiler/source:Span" %t845, ptr %l40
  br label %bb174
bb173:
  br label %bb182
bb174:
  store %olang.scope zeroinitializer, ptr %s23
  %t847 = load ptr, ptr %l0, !tbaa !29
  store ptr %t847, ptr %l406, !tbaa !29
  %t848 = load ptr, ptr %l1, !tbaa !29
  store ptr %t848, ptr %l407, !tbaa !29
  %t849 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t849, ptr %l408, !tbaa !27
  %t850 = getelementptr %"compiler/source:Span", ptr %l40, i32 0, i32 0
  %t851 = load i32, ptr %t850, !tbaa !23
  %t853 = sext i32 %t851 to i64
  store i64 %t853, ptr %l410, !tbaa !24
  %t854 = getelementptr %"compiler/source:Span", ptr %l40, i32 0, i32 1
  %t855 = load i32, ptr %t854, !tbaa !23
  %t857 = sext i32 %t855 to i64
  store i64 %t857, ptr %l412, !tbaa !24
  %t858 = load { i64, ptr }, ptr %l408, !tbaa !27
  %t859 = extractvalue { i64, ptr } %t858, 0
  store i64 %t859, ptr %l413, !tbaa !24
  %t860 = load i64, ptr %l410, !tbaa !24
  %t861 = icmp sge i64 %t860, 0
  br i1 %t861, label %bb175, label %bb176
bb175:
  %t863 = load i64, ptr %l410, !tbaa !24
  %t864 = load i64, ptr %l412, !tbaa !24
  %t865 = icmp sle i64 %t863, %t864
  br i1 %t865, label %bb177, label %bb178
bb176:
  call void @__olang_check_failed(ptr @olang_loc_a8f128570d4ee58c_72533cb80a04a368)
  unreachable
bb177:
  %t867 = load i64, ptr %l412, !tbaa !24
  %t868 = load i64, ptr %l413, !tbaa !24
  %t869 = icmp sle i64 %t867, %t868
  br i1 %t869, label %bb179, label %bb180
bb178:
  call void @__olang_check_failed(ptr @olang_loc_a8f128570d4ee58c_72533cb80a04a368)
  unreachable
bb179:
  %t871 = getelementptr { i64, ptr }, ptr %l408, i32 0, i32 1
  %t872 = load ptr, ptr %t871, !tbaa !27
  %t873 = load i64, ptr %l410, !tbaa !24
  %t874 = load i64, ptr %l412, !tbaa !24
  %t875 = getelementptr i8, ptr %t872, i64 %t873
  %t876 = sub i64 %t874, %t873
  %t877 = insertvalue { i64, ptr } undef, i64 %t876, 0
  %t878 = insertvalue { i64, ptr } %t877, ptr %t875, 1
  %t879 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d56, i32 0, i32 1) }, 1
  %t880 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d56, i32 0, i32 1) }, 0
  %t882 = extractvalue { i64, ptr } %t878, 1
  %t883 = extractvalue { i64, ptr } %t878, 0
  %t884 = add i64 %t880, %t883
  %t885 = call ptr @__olang_scope_alloc(ptr %s23, i64 %t884)
  call void @olang_textcopy(ptr %t885, ptr %t879, i64 %t880)
  %t886 = getelementptr i8, ptr %t885, i64 %t880
  call void @olang_textcopy(ptr %t886, ptr %t882, i64 %t883)
  %t887 = insertvalue { i64, ptr } undef, i64 %t884, 0
  %t888 = insertvalue { i64, ptr } %t887, ptr %t885, 1
  %t890 = extractvalue { i64, ptr } %t888, 0
  %t891 = extractvalue { i64, ptr } %t888, 1
  %t892 = mul i64 %t890, 1
  %t893 = call ptr @__olang_scope_alloc(ptr %s23, i64 %t892)
  call void @llvm.memcpy.p0.p0.i64(ptr %t893, ptr %t891, i64 %t892, i1 false)
  %t894 = insertvalue { i64, ptr } undef, i64 %t890, 0
  %t895 = insertvalue { i64, ptr } %t894, ptr %t893, 1
  %t896 = load i64, ptr @G_2ecompiler_2fsession_2eKindFunction, !tbaa !24
  %t897 = getelementptr %"compiler/source:Span", ptr %l39, i32 0, i32 0
  %t898 = load i32, ptr %t897, !tbaa !23
  %t900 = sext i32 %t898 to i64
  %t901 = getelementptr %"compiler/source:Span", ptr %l39, i32 0, i32 1
  %t902 = load i32, ptr %t901, !tbaa !23
  %t904 = sext i32 %t902 to i64
  %t905 = getelementptr %"compiler/source:Span", ptr %l40, i32 0, i32 0
  %t906 = load i32, ptr %t905, !tbaa !23
  %t908 = sext i32 %t906 to i64
  %t909 = getelementptr %"compiler/source:Span", ptr %l40, i32 0, i32 1
  %t910 = load i32, ptr %t909, !tbaa !23
  %t912 = sext i32 %t910 to i64
  %t913 = load ptr, ptr %l406, !tbaa !29
  %t914 = load ptr, ptr %l407, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3asymWriter_2eleaf(ptr %v0, ptr %v1, ptr %s23, ptr %s23, ptr %t913, ptr %t914, { i64, ptr } %t895, i64 %t896, i64 %t900, i64 %t904, i64 %t908, i64 %t912, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d57, i32 0, i32 1) })
  br label %bb181
bb180:
  call void @__olang_check_failed(ptr @olang_loc_a8f128570d4ee58c_72533cb80a04a368)
  unreachable
bb181:
  call void @__olang_scope_close(ptr %s23)
  br label %bb207
bb182:
  %t921 = load ptr, ptr %l2, !tbaa !29
  store ptr %t921, ptr %l429, !tbaa !29
  store i1 false, ptr %l430, !tbaa !21
  %t922 = load ptr, ptr %l429, !tbaa !29
  %t923 = icmp ne ptr %t922, null
  br i1 %t923, label %bb183, label %bb184
bb183:
  %t925 = load ptr, ptr %l429, !tbaa !29
  %t926 = load i64, ptr %t925, !range !{i64 0, i64 11}
  %t928 = icmp eq i64 %t926, 7
  store i1 %t928, ptr %l430, !tbaa !21
  br label %bb184
bb184:
  %t929 = load i1, ptr %l430, !tbaa !21
  br i1 %t929, label %bb185, label %bb186
bb185:
  %t930 = load ptr, ptr %l2, !tbaa !29
  %t932 = getelementptr { i64, [8 x i64] }, ptr %t930, i32 0, i32 1
  %t933 = getelementptr { %"compiler/source:Span", ptr }, ptr %t932, i32 0, i32 1
  %t934 = load ptr, ptr %t933
  store ptr %t934, ptr %l41, !tbaa !29
  br label %bb187
bb186:
  br label %bb189
bb187:
  %t936 = load ptr, ptr %l0, !tbaa !29
  %t937 = load ptr, ptr %l1, !tbaa !29
  %t938 = load ptr, ptr %l41, !tbaa !29
  %t940 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3asymWriter_2etopIf(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t936, ptr %t937, ptr %t938, ptr %t940)
  br label %bb188
bb188:
  br label %bb207
bb189:
  %t945 = load ptr, ptr %l2, !tbaa !29
  store ptr %t945, ptr %l440, !tbaa !29
  store i1 false, ptr %l441, !tbaa !21
  %t946 = load ptr, ptr %l440, !tbaa !29
  %t947 = icmp ne ptr %t946, null
  br i1 %t947, label %bb190, label %bb191
bb190:
  %t949 = load ptr, ptr %l440, !tbaa !29
  %t950 = load i64, ptr %t949, !range !{i64 0, i64 11}
  %t952 = icmp eq i64 %t950, 10
  store i1 %t952, ptr %l441, !tbaa !21
  br label %bb191
bb191:
  %t953 = load i1, ptr %l441, !tbaa !21
  br i1 %t953, label %bb192, label %bb193
bb192:
  %t954 = load ptr, ptr %l2, !tbaa !29
  %t956 = getelementptr { i64, [8 x i64] }, ptr %t954, i32 0, i32 1
  %t957 = getelementptr { %"compiler/source:Span", %"compiler/source:Span", { i64, ptr } }, ptr %t956, i32 0, i32 2
  %t958 = load { i64, ptr }, ptr %t957
  store { i64, ptr } %t958, ptr %l42, !tbaa !27
  br label %bb194
bb193:
  br label %bb202
bb194:
  %t960 = load { i64, ptr }, ptr %l42, !tbaa !27
  store { i64, ptr } %t960, ptr %l43, !tbaa !27
  store i64 0, ptr %l44, !tbaa !24
  %t962 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t964 = extractvalue { i64, ptr } %t962, 0
  store i64 %t964, ptr %l45, !tbaa !24
  br label %bb195
bb195:
  %t966 = load i64, ptr %l44, !tbaa !24
  %t967 = load i64, ptr %l45, !tbaa !24
  %t970 = icmp slt i64 %t966, %t967
  %t972 = xor i1 %t970, true
  br i1 %t972, label %bb196, label %bb197
bb196:
  br label %bb201
bb197:
  br label %bb198
bb198:
  %t974 = load { i64, ptr }, ptr %l43, !tbaa !27
  store { i64, ptr } %t974, ptr %l453, !tbaa !27
  %t975 = load i64, ptr %l44, !tbaa !24
  %t977 = getelementptr { i64, ptr }, ptr %l453, i32 0, i32 1
  %t978 = load ptr, ptr %t977, !tbaa !27
  %t979 = getelementptr ptr, ptr %t978, i64 %t975
  %t980 = load ptr, ptr %t979, !tbaa !39
  %t982 = load ptr, ptr %l0, !tbaa !29
  %t983 = load ptr, ptr %l1, !tbaa !29
  %t985 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3asymWriter_2edecl(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t982, ptr %t983, ptr %t980, ptr %t985)
  br label %bb199
bb199:
  br label %bb200
bb200:
  %t990 = load i64, ptr %l44, !tbaa !24
  %t992 = add i64 %t990, 1
  store i64 %t992, ptr %l44, !tbaa !24
  br label %bb195
bb201:
  br label %bb207
bb202:
  br i1 true, label %bb203, label %bb204
bb203:
  br label %bb205
bb204:
  br label %bb206
bb205:
  br label %bb207
bb206:
  call void @__olang_check_failed(ptr @olang_loc_a7d5113fa702b704_e2f71baa964fc498)
  unreachable
bb207:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fsession_2ecompiler_2fsession_3asymWriter_2eleaf(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, { i64, ptr } %a2, i64 %a3, i64 %a4, i64 %a5, i64 %a6, i64 %a7, { i64, ptr } %a8) #0 {
entry:
  %l1 = alloca ptr
  %s0 = alloca %olang.scope
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t2 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3asymWriter_2eopen(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %t2, { i64, ptr } %a2, i64 %a3, i64 %a4, i64 %a5, i64 %a6, i64 %a7, { i64, ptr } %a8)
  br label %bb1
bb1:
  %t19 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s0, ptr %t19, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d58, i32 0, i32 1) })
  br label %bb2
bb2:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fsession_2ecompiler_2fsession_3asymWriter_2eopen(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, { i64, ptr } %a2, i64 %a3, i64 %a4, i64 %a5, i64 %a6, i64 %a7, { i64, ptr } %a8) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l13 = alloca ptr
  %l17 = alloca ptr
  %l19 = alloca i1
  %l21 = alloca { i64, ptr }
  %l39 = alloca i1
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  store { i64, ptr } %a8, ptr %l8
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/session:symWriter", ptr %t1, i32 0, i32 1
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = icmp sgt i64 %t4, 0
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v1, ptr %t8, i8 44)
  br label %bb3
bb2:
  br label %bb4
bb3:
  br label %bb4
bb4:
  %t10 = load ptr, ptr %l0, !tbaa !29
  store ptr %t10, ptr %l13, !tbaa !29
  %t11 = load ptr, ptr %l13, !tbaa !29
  %t12 = getelementptr %"compiler/session:symWriter", ptr %t11, i32 0, i32 1
  %t13 = load i64, ptr %t12, !tbaa !24
  %t15 = add i64 %t13, 1
  %t17 = load ptr, ptr %l13, !tbaa !29
  %t18 = getelementptr %"compiler/session:symWriter", ptr %t17, i32 0, i32 1
  store i64 %t15, ptr %t18, !tbaa !24
  %t19 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s0, ptr %t19, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d59, i32 0, i32 1) })
  br label %bb5
bb5:
  %t21 = load ptr, ptr %l1, !tbaa !29
  store ptr %t21, ptr %l17, !tbaa !29
  %t22 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t24 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s0, { i64, ptr } %t22, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d60, i32 0, i32 1) })
  store i1 %t24, ptr %l19
  br label %bb6
bb6:
  %t25 = load i1, ptr %l19, !tbaa !21
  %t26 = xor i1 %t25, true
  br i1 %t26, label %bb7, label %bb8
bb7:
  %t28 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t28, ptr %l21, !tbaa !27
  br label %bb9
bb8:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d61, i32 0, i32 1) }, ptr %l21, !tbaa !27
  br label %bb9
bb9:
  %t30 = load ptr, ptr %l17, !tbaa !29
  %t31 = load { i64, ptr }, ptr %l21, !tbaa !27
  call void @compiler_2fsession_2eJsonStr(ptr %v1, ptr %v2, ptr %t30, { i64, ptr } %t31)
  br label %bb10
bb10:
  %t32 = load ptr, ptr %l1, !tbaa !29
  %t34 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d62, i32 0, i32 1) }, 1
  %t35 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d62, i32 0, i32 1) }, 0
  %t37 = call i64 @__olang_fmt_i64(ptr null, i64 %a3)
  %t38 = add i64 %t35, %t37
  %t39 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d63, i32 0, i32 1) }, 1
  %t40 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d63, i32 0, i32 1) }, 0
  %t41 = add i64 %t38, %t40
  %t42 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t41)
  call void @olang_textcopy(ptr %t42, ptr %t34, i64 %t35)
  %t43 = getelementptr i8, ptr %t42, i64 %t35
  %t44 = call i64 @__olang_fmt_i64(ptr %t43, i64 %a3)
  %t45 = getelementptr i8, ptr %t43, i64 %t37
  call void @olang_textcopy(ptr %t45, ptr %t39, i64 %t40)
  %t46 = insertvalue { i64, ptr } undef, i64 %t41, 0
  %t47 = insertvalue { i64, ptr } %t46, ptr %t42, 1
  %t49 = extractvalue { i64, ptr } %t47, 0
  %t50 = extractvalue { i64, ptr } %t47, 1
  %t51 = mul i64 %t49, 1
  %t52 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t51)
  call void @llvm.memcpy.p0.p0.i64(ptr %t52, ptr %t50, i64 %t51, i1 false)
  %t53 = insertvalue { i64, ptr } undef, i64 %t49, 0
  %t54 = insertvalue { i64, ptr } %t53, ptr %t52, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s0, ptr %t32, { i64, ptr } %t54)
  br label %bb11
bb11:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/session:symWriter", ptr %t57, i32 0, i32 0
  %t60 = load ptr, ptr %t59, !tbaa !29
  %t61 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3aPositions_2eRange(ptr %v0, ptr %v1, ptr %t60, ptr %t61, i64 %a4, i64 %a5)
  br label %bb12
bb12:
  %t68 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s0, ptr %t68, { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d64, i32 0, i32 1) })
  br label %bb13
bb13:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/session:symWriter", ptr %t70, i32 0, i32 0
  %t73 = load ptr, ptr %t72, !tbaa !29
  %t74 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3aPositions_2eRange(ptr %v0, ptr %v1, ptr %t73, ptr %t74, i64 %a6, i64 %a7)
  br label %bb14
bb14:
  %t81 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t83 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v3, ptr %s0, { i64, ptr } %t81, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d65, i32 0, i32 1) })
  store i1 %t83, ptr %l39
  br label %bb15
bb15:
  %t84 = load i1, ptr %l39, !tbaa !21
  %t85 = xor i1 %t84, true
  br i1 %t85, label %bb16, label %bb17
bb16:
  store %olang.scope zeroinitializer, ptr %s3
  %t87 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s3, ptr %t87, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d66, i32 0, i32 1) })
  br label %bb18
bb17:
  br label %bb20
bb18:
  %t89 = load ptr, ptr %l1, !tbaa !29
  %t90 = load { i64, ptr }, ptr %l8, !tbaa !27
  call void @compiler_2fsession_2eJsonStr(ptr %v1, ptr %v3, ptr %t89, { i64, ptr } %t90)
  br label %bb19
bb19:
  call void @__olang_scope_close(ptr %s3)
  br label %bb20
bb20:
  %t93 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s0, ptr %t93, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d67, i32 0, i32 1) })
  br label %bb21
bb21:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fsession_2ecompiler_2fsession_3asymWriter_2etopIf(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l18 = alloca i1
  %l41 = alloca { i64, ptr }
  %l59 = alloca i1
  %l82 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t5 = load ptr, ptr %l2, !tbaa !29
  %t7 = getelementptr %"compiler/ast:TopIf", ptr %t5, i32 0, i32 1
  %t8 = load ptr, ptr %t7, !tbaa !29
  %t10 = icmp eq ptr %t8, null
  %t12 = xor i1 %t10, true
  br i1 %t12, label %bb4, label %bb5
bb4:
  %t14 = load ptr, ptr %l2, !tbaa !29
  %t16 = getelementptr %"compiler/ast:TopIf", ptr %t14, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !29
  %t19 = icmp eq ptr %t17, null
  br i1 %t19, label %bb6, label %bb7
bb5:
  store i1 false, ptr %l18, !tbaa !21
  br label %bb9
bb6:
  call void @__olang_check_failed(ptr @olang_loc_d9881facfbc222b9_fdfa0d9fbca7f5d5)
  unreachable
bb7:
  br label %bb8
bb8:
  %t21 = load ptr, ptr %l2, !tbaa !29
  %t23 = getelementptr %"compiler/ast:TopIf", ptr %t21, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !29
  %t27 = getelementptr %"compiler/ast:TopBranch", ptr %t24, i32 0, i32 1
  %t28 = load { i64, ptr }, ptr %t27, !tbaa !27
  %t30 = extractvalue { i64, ptr } %t28, 0
  %t32 = icmp sgt i64 %t30, 0
  store i1 %t32, ptr %l18, !tbaa !21
  br label %bb9
bb9:
  %t34 = load i1, ptr %l18, !tbaa !21
  br i1 %t34, label %bb10, label %bb11
bb10:
  %t35 = load ptr, ptr %l2, !tbaa !29
  %t37 = getelementptr %"compiler/ast:TopIf", ptr %t35, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !29
  %t40 = icmp eq ptr %t38, null
  br i1 %t40, label %bb12, label %bb13
bb11:
  br label %bb22
bb12:
  call void @__olang_check_failed(ptr @olang_loc_7c90741a89491e92_62c7d4207901162e)
  unreachable
bb13:
  br label %bb14
bb14:
  %t42 = load ptr, ptr %l2, !tbaa !29
  %t44 = getelementptr %"compiler/ast:TopIf", ptr %t42, i32 0, i32 1
  %t45 = load ptr, ptr %t44, !tbaa !29
  %t48 = getelementptr %"compiler/ast:TopBranch", ptr %t45, i32 0, i32 1
  %t49 = load { i64, ptr }, ptr %t48, !tbaa !27
  store { i64, ptr } %t49, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t51 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t53 = extractvalue { i64, ptr } %t51, 0
  store i64 %t53, ptr %l6, !tbaa !24
  br label %bb15
bb15:
  %t55 = load i64, ptr %l5, !tbaa !24
  %t56 = load i64, ptr %l6, !tbaa !24
  %t59 = icmp slt i64 %t55, %t56
  %t61 = xor i1 %t59, true
  br i1 %t61, label %bb16, label %bb17
bb16:
  br label %bb21
bb17:
  br label %bb18
bb18:
  %t63 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t63, ptr %l41, !tbaa !27
  %t64 = load i64, ptr %l5, !tbaa !24
  %t66 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !27
  %t68 = getelementptr ptr, ptr %t67, i64 %t64
  %t69 = load ptr, ptr %t68, !tbaa !39
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t72 = load ptr, ptr %l1, !tbaa !29
  %t74 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3asymWriter_2edecl(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t71, ptr %t72, ptr %t69, ptr %t74)
  br label %bb19
bb19:
  br label %bb20
bb20:
  %t79 = load i64, ptr %l5, !tbaa !24
  %t81 = add i64 %t79, 1
  store i64 %t81, ptr %l5, !tbaa !24
  br label %bb15
bb21:
  br label %bb22
bb22:
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t84 = load ptr, ptr %l1, !tbaa !29
  %t85 = load ptr, ptr %l2, !tbaa !29
  %t87 = getelementptr %"compiler/ast:TopIf", ptr %t85, i32 0, i32 2
  %t88 = load ptr, ptr %t87, !tbaa !29
  %t89 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3asymWriter_2etopIf(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t83, ptr %t84, ptr %t88, ptr %t89)
  br label %bb23
bb23:
  %t94 = load ptr, ptr %l2, !tbaa !29
  %t96 = getelementptr %"compiler/ast:TopIf", ptr %t94, i32 0, i32 3
  %t97 = load ptr, ptr %t96, !tbaa !29
  %t99 = icmp eq ptr %t97, null
  %t101 = xor i1 %t99, true
  br i1 %t101, label %bb24, label %bb25
bb24:
  %t103 = load ptr, ptr %l2, !tbaa !29
  %t105 = getelementptr %"compiler/ast:TopIf", ptr %t103, i32 0, i32 3
  %t106 = load ptr, ptr %t105, !tbaa !29
  %t108 = icmp eq ptr %t106, null
  br i1 %t108, label %bb26, label %bb27
bb25:
  store i1 false, ptr %l59, !tbaa !21
  br label %bb29
bb26:
  call void @__olang_check_failed(ptr @olang_loc_445788eb90ff4fd3_8bea5f8a87ea775f)
  unreachable
bb27:
  br label %bb28
bb28:
  %t110 = load ptr, ptr %l2, !tbaa !29
  %t112 = getelementptr %"compiler/ast:TopIf", ptr %t110, i32 0, i32 3
  %t113 = load ptr, ptr %t112, !tbaa !29
  %t116 = getelementptr %"compiler/ast:TopBranch", ptr %t113, i32 0, i32 1
  %t117 = load { i64, ptr }, ptr %t116, !tbaa !27
  %t119 = extractvalue { i64, ptr } %t117, 0
  %t121 = icmp sgt i64 %t119, 0
  store i1 %t121, ptr %l59, !tbaa !21
  br label %bb29
bb29:
  %t123 = load i1, ptr %l59, !tbaa !21
  br i1 %t123, label %bb30, label %bb31
bb30:
  %t124 = load ptr, ptr %l2, !tbaa !29
  %t126 = getelementptr %"compiler/ast:TopIf", ptr %t124, i32 0, i32 3
  %t127 = load ptr, ptr %t126, !tbaa !29
  %t129 = icmp eq ptr %t127, null
  br i1 %t129, label %bb32, label %bb33
bb31:
  br label %bb42
bb32:
  call void @__olang_check_failed(ptr @olang_loc_5bdbf2396576e204_9bcdfaa72cbb5bc0)
  unreachable
bb33:
  br label %bb34
bb34:
  %t131 = load ptr, ptr %l2, !tbaa !29
  %t133 = getelementptr %"compiler/ast:TopIf", ptr %t131, i32 0, i32 3
  %t134 = load ptr, ptr %t133, !tbaa !29
  %t137 = getelementptr %"compiler/ast:TopBranch", ptr %t134, i32 0, i32 1
  %t138 = load { i64, ptr }, ptr %t137, !tbaa !27
  store { i64, ptr } %t138, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t140 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t142 = extractvalue { i64, ptr } %t140, 0
  store i64 %t142, ptr %l10, !tbaa !24
  br label %bb35
bb35:
  %t144 = load i64, ptr %l9, !tbaa !24
  %t145 = load i64, ptr %l10, !tbaa !24
  %t148 = icmp slt i64 %t144, %t145
  %t150 = xor i1 %t148, true
  br i1 %t150, label %bb36, label %bb37
bb36:
  br label %bb41
bb37:
  br label %bb38
bb38:
  %t152 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t152, ptr %l82, !tbaa !27
  %t153 = load i64, ptr %l9, !tbaa !24
  %t155 = getelementptr { i64, ptr }, ptr %l82, i32 0, i32 1
  %t156 = load ptr, ptr %t155, !tbaa !27
  %t157 = getelementptr ptr, ptr %t156, i64 %t153
  %t158 = load ptr, ptr %t157, !tbaa !39
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t161 = load ptr, ptr %l1, !tbaa !29
  %t163 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3asymWriter_2edecl(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t160, ptr %t161, ptr %t158, ptr %t163)
  br label %bb39
bb39:
  br label %bb40
bb40:
  %t168 = load i64, ptr %l9, !tbaa !24
  %t170 = add i64 %t168, 1
  store i64 %t170, ptr %l9, !tbaa !24
  br label %bb35
bb41:
  br label %bb42
bb42:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fsession_2ecompiler_2fsession_3atypeFinder_2estmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
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
  %l16 = alloca ptr
  %l17 = alloca i1
  %l25 = alloca ptr
  %l26 = alloca i1
  %l39 = alloca ptr
  %l40 = alloca i1
  %l45 = alloca ptr
  %l46 = alloca i1
  %l51 = alloca ptr
  %l52 = alloca i1
  %l57 = alloca ptr
  %l58 = alloca i1
  %l65 = alloca ptr
  %l66 = alloca i1
  %l82 = alloca ptr
  %l83 = alloca i1
  %l95 = alloca ptr
  %l96 = alloca i1
  %l108 = alloca ptr
  %l109 = alloca i1
  %l114 = alloca ptr
  %l115 = alloca i1
  %l123 = alloca ptr
  %l124 = alloca i1
  %l133 = alloca ptr
  %l134 = alloca i1
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
  store ptr %t5, ptr %l16, !tbaa !29
  store i1 false, ptr %l17, !tbaa !21
  %t6 = load ptr, ptr %l16, !tbaa !29
  %t7 = icmp ne ptr %t6, null
  br i1 %t7, label %bb4, label %bb5
bb4:
  %t9 = load ptr, ptr %l16, !tbaa !29
  %t10 = load i64, ptr %t9, !range !{i64 0, i64 17}
  %t12 = icmp eq i64 %t10, 0
  store i1 %t12, ptr %l17, !tbaa !21
  br label %bb5
bb5:
  %t13 = load i1, ptr %l17, !tbaa !21
  br i1 %t13, label %bb6, label %bb7
bb6:
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t16 = getelementptr { i64, [3 x i64] }, ptr %t14, i32 0, i32 1
  %t17 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t16, i32 0, i32 2
  %t18 = load ptr, ptr %t17
  store ptr %t18, ptr %l2, !tbaa !29
  br label %bb8
bb7:
  br label %bb10
bb8:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3atypeFinder_2eexpr(ptr %v0, ptr %v1, ptr %t20, ptr %t21)
  br label %bb9
bb9:
  br label %bb92
bb10:
  %t25 = load ptr, ptr %l1, !tbaa !29
  store ptr %t25, ptr %l25, !tbaa !29
  store i1 false, ptr %l26, !tbaa !21
  %t26 = load ptr, ptr %l25, !tbaa !29
  %t27 = icmp ne ptr %t26, null
  br i1 %t27, label %bb11, label %bb12
bb11:
  %t29 = load ptr, ptr %l25, !tbaa !29
  %t30 = load i64, ptr %t29, !range !{i64 0, i64 17}
  %t32 = icmp eq i64 %t30, 1
  store i1 %t32, ptr %l26, !tbaa !21
  br label %bb12
bb12:
  %t33 = load i1, ptr %l26, !tbaa !21
  br i1 %t33, label %bb13, label %bb14
bb13:
  %t34 = load ptr, ptr %l1, !tbaa !29
  %t36 = getelementptr { i64, [3 x i64] }, ptr %t34, i32 0, i32 1
  %t37 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t36, i32 0, i32 1
  %t38 = load ptr, ptr %t37
  store ptr %t38, ptr %l3, !tbaa !29
  %t40 = load ptr, ptr %l1, !tbaa !29
  %t42 = getelementptr { i64, [3 x i64] }, ptr %t40, i32 0, i32 1
  %t43 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t42, i32 0, i32 2
  %t44 = load ptr, ptr %t43
  store ptr %t44, ptr %l4, !tbaa !29
  br label %bb15
bb14:
  br label %bb18
bb15:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3atypeFinder_2eplace(ptr %v0, ptr %v1, ptr %t46, ptr %t47)
  br label %bb16
bb16:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t52 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3atypeFinder_2eexpr(ptr %v0, ptr %v1, ptr %t51, ptr %t52)
  br label %bb17
bb17:
  br label %bb92
bb18:
  %t56 = load ptr, ptr %l1, !tbaa !29
  store ptr %t56, ptr %l39, !tbaa !29
  store i1 false, ptr %l40, !tbaa !21
  %t57 = load ptr, ptr %l39, !tbaa !29
  %t58 = icmp ne ptr %t57, null
  br i1 %t58, label %bb19, label %bb20
bb19:
  %t60 = load ptr, ptr %l39, !tbaa !29
  %t61 = load i64, ptr %t60, !range !{i64 0, i64 17}
  %t63 = icmp eq i64 %t61, 2
  store i1 %t63, ptr %l40, !tbaa !21
  br label %bb20
bb20:
  %t64 = load i1, ptr %l40, !tbaa !21
  br i1 %t64, label %bb21, label %bb22
bb21:
  %t65 = load ptr, ptr %l1, !tbaa !29
  %t67 = getelementptr { i64, [3 x i64] }, ptr %t65, i32 0, i32 1
  %t68 = getelementptr { %"compiler/source:Span", ptr }, ptr %t67, i32 0, i32 1
  %t69 = load ptr, ptr %t68
  store ptr %t69, ptr %l5, !tbaa !29
  br label %bb35
bb22:
  %t71 = load ptr, ptr %l1, !tbaa !29
  store ptr %t71, ptr %l45, !tbaa !29
  store i1 false, ptr %l46, !tbaa !21
  %t72 = load ptr, ptr %l45, !tbaa !29
  %t73 = icmp ne ptr %t72, null
  br i1 %t73, label %bb23, label %bb24
bb23:
  %t75 = load ptr, ptr %l45, !tbaa !29
  %t76 = load i64, ptr %t75, !range !{i64 0, i64 17}
  %t78 = icmp eq i64 %t76, 6
  store i1 %t78, ptr %l46, !tbaa !21
  br label %bb24
bb24:
  %t79 = load i1, ptr %l46, !tbaa !21
  br i1 %t79, label %bb25, label %bb26
bb25:
  %t80 = load ptr, ptr %l1, !tbaa !29
  %t82 = getelementptr { i64, [3 x i64] }, ptr %t80, i32 0, i32 1
  %t83 = getelementptr { %"compiler/source:Span", ptr }, ptr %t82, i32 0, i32 1
  %t84 = load ptr, ptr %t83
  store ptr %t84, ptr %l5, !tbaa !29
  br label %bb35
bb26:
  %t86 = load ptr, ptr %l1, !tbaa !29
  store ptr %t86, ptr %l51, !tbaa !29
  store i1 false, ptr %l52, !tbaa !21
  %t87 = load ptr, ptr %l51, !tbaa !29
  %t88 = icmp ne ptr %t87, null
  br i1 %t88, label %bb27, label %bb28
bb27:
  %t90 = load ptr, ptr %l51, !tbaa !29
  %t91 = load i64, ptr %t90, !range !{i64 0, i64 17}
  %t93 = icmp eq i64 %t91, 15
  store i1 %t93, ptr %l52, !tbaa !21
  br label %bb28
bb28:
  %t94 = load i1, ptr %l52, !tbaa !21
  br i1 %t94, label %bb29, label %bb30
bb29:
  %t95 = load ptr, ptr %l1, !tbaa !29
  %t97 = getelementptr { i64, [3 x i64] }, ptr %t95, i32 0, i32 1
  %t98 = getelementptr { %"compiler/source:Span", ptr }, ptr %t97, i32 0, i32 1
  %t99 = load ptr, ptr %t98
  store ptr %t99, ptr %l5, !tbaa !29
  br label %bb35
bb30:
  %t101 = load ptr, ptr %l1, !tbaa !29
  store ptr %t101, ptr %l57, !tbaa !29
  store i1 false, ptr %l58, !tbaa !21
  %t102 = load ptr, ptr %l57, !tbaa !29
  %t103 = icmp ne ptr %t102, null
  br i1 %t103, label %bb31, label %bb32
bb31:
  %t105 = load ptr, ptr %l57, !tbaa !29
  %t106 = load i64, ptr %t105, !range !{i64 0, i64 17}
  %t108 = icmp eq i64 %t106, 16
  store i1 %t108, ptr %l58, !tbaa !21
  br label %bb32
bb32:
  %t109 = load i1, ptr %l58, !tbaa !21
  br i1 %t109, label %bb33, label %bb34
bb33:
  %t110 = load ptr, ptr %l1, !tbaa !29
  %t112 = getelementptr { i64, [3 x i64] }, ptr %t110, i32 0, i32 1
  %t113 = getelementptr { %"compiler/source:Span", ptr }, ptr %t112, i32 0, i32 1
  %t114 = load ptr, ptr %t113
  store ptr %t114, ptr %l5, !tbaa !29
  br label %bb35
bb34:
  br label %bb37
bb35:
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t117 = load ptr, ptr %l5, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3atypeFinder_2eexpr(ptr %v0, ptr %v1, ptr %t116, ptr %t117)
  br label %bb36
bb36:
  br label %bb92
bb37:
  %t120 = load ptr, ptr %l1, !tbaa !29
  store ptr %t120, ptr %l65, !tbaa !29
  store i1 false, ptr %l66, !tbaa !21
  %t121 = load ptr, ptr %l65, !tbaa !29
  %t122 = icmp ne ptr %t121, null
  br i1 %t122, label %bb38, label %bb39
bb38:
  %t124 = load ptr, ptr %l65, !tbaa !29
  %t125 = load i64, ptr %t124, !range !{i64 0, i64 17}
  %t127 = icmp eq i64 %t125, 3
  store i1 %t127, ptr %l66, !tbaa !21
  br label %bb39
bb39:
  %t128 = load i1, ptr %l66, !tbaa !21
  br i1 %t128, label %bb40, label %bb41
bb40:
  %t129 = load ptr, ptr %l1, !tbaa !29
  %t131 = getelementptr { i64, [3 x i64] }, ptr %t129, i32 0, i32 1
  %t132 = getelementptr { %"compiler/source:Span", ptr }, ptr %t131, i32 0, i32 1
  %t133 = load ptr, ptr %t132
  store ptr %t133, ptr %l6, !tbaa !29
  br label %bb42
bb41:
  br label %bb46
bb42:
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t136 = load ptr, ptr %l6, !tbaa !29
  %t138 = getelementptr %"compiler/typed:If", ptr %t136, i32 0, i32 0
  %t139 = load ptr, ptr %t138, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3atypeFinder_2eexpr(ptr %v0, ptr %v1, ptr %t135, ptr %t139)
  br label %bb43
bb43:
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t144 = load ptr, ptr %l6, !tbaa !29
  %t146 = getelementptr %"compiler/typed:If", ptr %t144, i32 0, i32 1
  %t147 = load ptr, ptr %t146, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3atypeFinder_2eblock(ptr %v0, ptr %v1, ptr %t143, ptr %t147)
  br label %bb44
bb44:
  %t151 = load ptr, ptr %l0, !tbaa !29
  %t152 = load ptr, ptr %l6, !tbaa !29
  %t154 = getelementptr %"compiler/typed:If", ptr %t152, i32 0, i32 2
  %t155 = load ptr, ptr %t154, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3atypeFinder_2eblock(ptr %v0, ptr %v1, ptr %t151, ptr %t155)
  br label %bb45
bb45:
  br label %bb92
bb46:
  %t158 = load ptr, ptr %l1, !tbaa !29
  store ptr %t158, ptr %l82, !tbaa !29
  store i1 false, ptr %l83, !tbaa !21
  %t159 = load ptr, ptr %l82, !tbaa !29
  %t160 = icmp ne ptr %t159, null
  br i1 %t160, label %bb47, label %bb48
bb47:
  %t162 = load ptr, ptr %l82, !tbaa !29
  %t163 = load i64, ptr %t162, !range !{i64 0, i64 17}
  %t165 = icmp eq i64 %t163, 4
  store i1 %t165, ptr %l83, !tbaa !21
  br label %bb48
bb48:
  %t166 = load i1, ptr %l83, !tbaa !21
  br i1 %t166, label %bb49, label %bb50
bb49:
  %t167 = load ptr, ptr %l1, !tbaa !29
  %t169 = getelementptr { i64, [3 x i64] }, ptr %t167, i32 0, i32 1
  %t170 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t169, i32 0, i32 1
  %t171 = load ptr, ptr %t170
  store ptr %t171, ptr %l7, !tbaa !29
  %t173 = load ptr, ptr %l1, !tbaa !29
  %t175 = getelementptr { i64, [3 x i64] }, ptr %t173, i32 0, i32 1
  %t176 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t175, i32 0, i32 2
  %t177 = load ptr, ptr %t176
  store ptr %t177, ptr %l8, !tbaa !29
  br label %bb51
bb50:
  br label %bb54
bb51:
  %t179 = load ptr, ptr %l0, !tbaa !29
  %t180 = load ptr, ptr %l7, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3atypeFinder_2eblock(ptr %v0, ptr %v1, ptr %t179, ptr %t180)
  br label %bb52
bb52:
  %t184 = load ptr, ptr %l0, !tbaa !29
  %t185 = load ptr, ptr %l8, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3atypeFinder_2eblock(ptr %v0, ptr %v1, ptr %t184, ptr %t185)
  br label %bb53
bb53:
  br label %bb92
bb54:
  %t188 = load ptr, ptr %l1, !tbaa !29
  store ptr %t188, ptr %l95, !tbaa !29
  store i1 false, ptr %l96, !tbaa !21
  %t189 = load ptr, ptr %l95, !tbaa !29
  %t190 = icmp ne ptr %t189, null
  br i1 %t190, label %bb55, label %bb56
bb55:
  %t192 = load ptr, ptr %l95, !tbaa !29
  %t193 = load i64, ptr %t192, !range !{i64 0, i64 17}
  %t195 = icmp eq i64 %t193, 10
  store i1 %t195, ptr %l96, !tbaa !21
  br label %bb56
bb56:
  %t196 = load i1, ptr %l96, !tbaa !21
  br i1 %t196, label %bb57, label %bb58
bb57:
  %t197 = load ptr, ptr %l1, !tbaa !29
  %t199 = getelementptr { i64, [3 x i64] }, ptr %t197, i32 0, i32 1
  %t200 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t199, i32 0, i32 1
  %t201 = load ptr, ptr %t200
  store ptr %t201, ptr %l9, !tbaa !29
  %t203 = load ptr, ptr %l1, !tbaa !29
  %t205 = getelementptr { i64, [3 x i64] }, ptr %t203, i32 0, i32 1
  %t206 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t205, i32 0, i32 2
  %t207 = load ptr, ptr %t206
  store ptr %t207, ptr %l10, !tbaa !29
  br label %bb59
bb58:
  br label %bb62
bb59:
  %t209 = load ptr, ptr %l0, !tbaa !29
  %t210 = load ptr, ptr %l9, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3atypeFinder_2eexpr(ptr %v0, ptr %v1, ptr %t209, ptr %t210)
  br label %bb60
bb60:
  %t214 = load ptr, ptr %l0, !tbaa !29
  %t215 = load ptr, ptr %l10, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3atypeFinder_2eexpr(ptr %v0, ptr %v1, ptr %t214, ptr %t215)
  br label %bb61
bb61:
  br label %bb92
bb62:
  %t218 = load ptr, ptr %l1, !tbaa !29
  store ptr %t218, ptr %l108, !tbaa !29
  store i1 false, ptr %l109, !tbaa !21
  %t219 = load ptr, ptr %l108, !tbaa !29
  %t220 = icmp ne ptr %t219, null
  br i1 %t220, label %bb63, label %bb64
bb63:
  %t222 = load ptr, ptr %l108, !tbaa !29
  %t223 = load i64, ptr %t222, !range !{i64 0, i64 17}
  %t225 = icmp eq i64 %t223, 11
  store i1 %t225, ptr %l109, !tbaa !21
  br label %bb64
bb64:
  %t226 = load i1, ptr %l109, !tbaa !21
  br i1 %t226, label %bb65, label %bb66
bb65:
  %t227 = load ptr, ptr %l1, !tbaa !29
  %t229 = getelementptr { i64, [3 x i64] }, ptr %t227, i32 0, i32 1
  %t230 = getelementptr { %"compiler/source:Span", ptr }, ptr %t229, i32 0, i32 1
  %t231 = load ptr, ptr %t230
  store ptr %t231, ptr %l11, !tbaa !29
  br label %bb71
bb66:
  %t233 = load ptr, ptr %l1, !tbaa !29
  store ptr %t233, ptr %l114, !tbaa !29
  store i1 false, ptr %l115, !tbaa !21
  %t234 = load ptr, ptr %l114, !tbaa !29
  %t235 = icmp ne ptr %t234, null
  br i1 %t235, label %bb67, label %bb68
bb67:
  %t237 = load ptr, ptr %l114, !tbaa !29
  %t238 = load i64, ptr %t237, !range !{i64 0, i64 17}
  %t240 = icmp eq i64 %t238, 12
  store i1 %t240, ptr %l115, !tbaa !21
  br label %bb68
bb68:
  %t241 = load i1, ptr %l115, !tbaa !21
  br i1 %t241, label %bb69, label %bb70
bb69:
  %t242 = load ptr, ptr %l1, !tbaa !29
  %t244 = getelementptr { i64, [3 x i64] }, ptr %t242, i32 0, i32 1
  %t245 = getelementptr { %"compiler/source:Span", ptr }, ptr %t244, i32 0, i32 1
  %t246 = load ptr, ptr %t245
  store ptr %t246, ptr %l11, !tbaa !29
  br label %bb71
bb70:
  br label %bb73
bb71:
  %t248 = load ptr, ptr %l0, !tbaa !29
  %t249 = load ptr, ptr %l11, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3atypeFinder_2eblock(ptr %v0, ptr %v1, ptr %t248, ptr %t249)
  br label %bb72
bb72:
  br label %bb92
bb73:
  %t253 = load ptr, ptr %l1, !tbaa !29
  store ptr %t253, ptr %l123, !tbaa !29
  store i1 false, ptr %l124, !tbaa !21
  %t254 = load ptr, ptr %l123, !tbaa !29
  %t255 = icmp ne ptr %t254, null
  br i1 %t255, label %bb74, label %bb75
bb74:
  %t257 = load ptr, ptr %l123, !tbaa !29
  %t258 = load i64, ptr %t257, !range !{i64 0, i64 17}
  %t260 = icmp eq i64 %t258, 13
  store i1 %t260, ptr %l124, !tbaa !21
  br label %bb75
bb75:
  %t261 = load i1, ptr %l124, !tbaa !21
  br i1 %t261, label %bb76, label %bb77
bb76:
  %t262 = load ptr, ptr %l1, !tbaa !29
  %t264 = getelementptr { i64, [3 x i64] }, ptr %t262, i32 0, i32 1
  %t265 = getelementptr { %"compiler/source:Span", ptr }, ptr %t264, i32 0, i32 1
  %t266 = load ptr, ptr %t265
  store ptr %t266, ptr %l12, !tbaa !29
  br label %bb78
bb77:
  br label %bb80
bb78:
  %t268 = load ptr, ptr %l0, !tbaa !29
  %t269 = load ptr, ptr %l12, !tbaa !29
  %t271 = getelementptr %"compiler/typed:Join", ptr %t269, i32 0, i32 0
  %t272 = load ptr, ptr %t271, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3atypeFinder_2eblock(ptr %v0, ptr %v1, ptr %t268, ptr %t272)
  br label %bb79
bb79:
  br label %bb92
bb80:
  %t276 = load ptr, ptr %l1, !tbaa !29
  store ptr %t276, ptr %l133, !tbaa !29
  store i1 false, ptr %l134, !tbaa !21
  %t277 = load ptr, ptr %l133, !tbaa !29
  %t278 = icmp ne ptr %t277, null
  br i1 %t278, label %bb81, label %bb82
bb81:
  %t280 = load ptr, ptr %l133, !tbaa !29
  %t281 = load i64, ptr %t280, !range !{i64 0, i64 17}
  %t283 = icmp eq i64 %t281, 14
  store i1 %t283, ptr %l134, !tbaa !21
  br label %bb82
bb82:
  %t284 = load i1, ptr %l134, !tbaa !21
  br i1 %t284, label %bb83, label %bb84
bb83:
  %t285 = load ptr, ptr %l1, !tbaa !29
  %t287 = getelementptr { i64, [3 x i64] }, ptr %t285, i32 0, i32 1
  %t288 = getelementptr { %"compiler/source:Span", ptr }, ptr %t287, i32 0, i32 1
  %t289 = load ptr, ptr %t288
  store ptr %t289, ptr %l13, !tbaa !29
  br label %bb85
bb84:
  br label %bb87
bb85:
  %t291 = load ptr, ptr %l0, !tbaa !29
  %t292 = load ptr, ptr %l13, !tbaa !29
  %t294 = getelementptr %"compiler/typed:Spawn", ptr %t292, i32 0, i32 1
  %t295 = load ptr, ptr %t294, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3atypeFinder_2eexpr(ptr %v0, ptr %v1, ptr %t291, ptr %t295)
  br label %bb86
bb86:
  br label %bb92
bb87:
  br i1 true, label %bb88, label %bb89
bb88:
  br label %bb90
bb89:
  br label %bb91
bb90:
  br label %bb92
bb91:
  call void @__olang_check_failed(ptr @olang_loc_4291427b0116e0e2_c8a2c34732e3da0e)
  unreachable
bb92:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fsession_2edeclOf(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca %"compiler/names:Entry"
  %l8 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i32
  %l15 = alloca ptr
  %l18 = alloca { i64, ptr }
  %l20 = alloca { i64, ptr }
  %l21 = alloca i64
  %l22 = alloca i64
  %l27 = alloca i32
  %l33 = alloca ptr
  %l36 = alloca i64
  %l38 = alloca i64
  %l43 = alloca %"compiler/names:Entry"
  %s0 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t3 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v1, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d68, i32 0, i32 1) })
  %t4 = extractvalue { i32, i64 } %t3, 1
  %t5 = extractvalue { i32, i64 } %t3, 0
  store i32 %t5, ptr %l11
  %t6 = icmp ne i32 %t5, 0
  br i1 %t6, label %bb2, label %ok.7, !prof !99
ok.7:
  store i64 %t4, ptr %l10
  br label %bb1
bb1:
  %t8 = load i64, ptr %l10, !tbaa !24
  store i64 %t8, ptr %l8, !tbaa !24
  br label %bb4
bb2:
  br label %bb3
bb3:
  store i64 -1, ptr %l8, !tbaa !24
  br label %bb4
bb4:
  %t9 = load i64, ptr %l8, !tbaa !24
  store i64 %t9, ptr %l3, !tbaa !24
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/check:Checker", ptr %t10, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t15 = getelementptr %"compiler/generic:Program", ptr %t13, i32 0, i32 0
  %t16 = load ptr, ptr %t15, !tbaa !29
  %t18 = getelementptr %"compiler/load:Loader", ptr %t16, i32 0, i32 3
  %t19 = load ptr, ptr %t18, !tbaa !29
  store ptr %t19, ptr %l15, !tbaa !29
  %t20 = load i64, ptr %l3, !tbaa !24
  %t22 = icmp slt i64 %t20, 0
  br i1 %t22, label %bb5, label %bb6
bb5:
  %t24 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t24, ptr %l18, !tbaa !27
  br label %bb13
bb6:
  %t26 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t26, ptr %l20, !tbaa !27
  %t27 = load i64, ptr %l3, !tbaa !24
  store i64 %t27, ptr %l21, !tbaa !24
  %t28 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t29 = extractvalue { i64, ptr } %t28, 0
  store i64 %t29, ptr %l22, !tbaa !24
  %t30 = icmp sge i64 0, 0
  br i1 %t30, label %bb7, label %bb8
bb7:
  %t32 = load i64, ptr %l21, !tbaa !24
  %t33 = icmp sle i64 0, %t32
  br i1 %t33, label %bb9, label %bb10
bb8:
  call void @__olang_check_failed(ptr @olang_loc_5f2579128b68b5af_d9dbce929ac4615b)
  unreachable
bb9:
  %t35 = load i64, ptr %l21, !tbaa !24
  %t36 = load i64, ptr %l22, !tbaa !24
  %t37 = icmp sle i64 %t35, %t36
  br i1 %t37, label %bb11, label %bb12
bb10:
  call void @__olang_check_failed(ptr @olang_loc_5f2579128b68b5af_d9dbce929ac4615b)
  unreachable
bb11:
  %t39 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !27
  %t41 = load i64, ptr %l21, !tbaa !24
  %t42 = getelementptr i8, ptr %t40, i64 0
  %t43 = sub i64 %t41, 0
  %t44 = insertvalue { i64, ptr } undef, i64 %t43, 0
  %t45 = insertvalue { i64, ptr } %t44, ptr %t42, 1
  store { i64, ptr } %t45, ptr %l18, !tbaa !27
  br label %bb13
bb12:
  call void @__olang_check_failed(ptr @olang_loc_5f2579128b68b5af_d9dbce929ac4615b)
  unreachable
bb13:
  %t47 = load ptr, ptr %l15, !tbaa !29
  %t48 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t49 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %v1, ptr %t47, { i64, ptr } %t48)
  store i32 %t49, ptr %l27
  br label %bb14
bb14:
  %t50 = load i32, ptr %l27, !tbaa !23
  store i32 %t50, ptr %l4, !tbaa !23
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"compiler/check:Checker", ptr %t51, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !29
  %t56 = getelementptr %"compiler/generic:Program", ptr %t54, i32 0, i32 1
  %t57 = load ptr, ptr %t56, !tbaa !29
  %t59 = getelementptr %"compiler/names:Resolver", ptr %t57, i32 0, i32 1
  %t63 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fnames_3aTable_26_3e_2_Hc2ccbbc5952c057a60f016e9cc1626d2(ptr %v0, ptr %v0, ptr %t59, i64 %a1)
  store ptr %t63, ptr %l33
  br label %bb15
bb15:
  %t64 = load ptr, ptr %l33, !tbaa !29
  %t66 = getelementptr %"compiler/names:Table", ptr %t64, i32 0, i32 0
  store ptr %t66, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb16
bb16:
  %t68 = load i64, ptr %l6, !tbaa !24
  store i64 %t68, ptr %l36, !tbaa !24
  %t69 = load ptr, ptr %l5, !tbaa !29
  %t71 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eLen_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %t69)
  store i64 %t71, ptr %l38
  br label %bb17
bb17:
  %t72 = load i64, ptr %l36, !tbaa !24
  %t73 = load i64, ptr %l38, !tbaa !24
  %t74 = icmp slt i64 %t72, %t73
  %t76 = xor i1 %t74, true
  br i1 %t76, label %bb18, label %bb19
bb18:
  br label %bb26
bb19:
  br label %bb20
bb20:
  %t78 = load ptr, ptr %l5, !tbaa !29
  %t79 = load i64, ptr %l6, !tbaa !24
  %t82 = call %"compiler/names:Entry" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eAt_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %v0, ptr %t78, i64 %t79)
  store %"compiler/names:Entry" %t82, ptr %l43
  br label %bb21
bb21:
  %t83 = load %"compiler/names:Entry", ptr %l43
  store %"compiler/names:Entry" %t83, ptr %l7
  %t84 = getelementptr %"compiler/names:Entry", ptr %l7, i32 0, i32 0
  %t85 = load i32, ptr %t84, !tbaa !23
  %t86 = load i32, ptr %l4, !tbaa !23
  %t89 = icmp eq i32 %t85, %t86
  br i1 %t89, label %bb22, label %bb23
bb22:
  %t91 = getelementptr %"compiler/names:Entry", ptr %l7, i32 0, i32 1
  %t92 = getelementptr %"compiler/source:Span", ptr %t91, i32 0, i32 0
  %t93 = load i32, ptr %t92, !tbaa !23
  %t95 = sext i32 %t93 to i64
  call void @__olang_scope_close(ptr %s0)
  store i64 %t95, ptr %rv
  br label %ret
bb23:
  br label %bb24
bb24:
  br label %bb25
bb25:
  %t97 = load i64, ptr %l6, !tbaa !24
  %t99 = add i64 %t97, 1
  store i64 %t99, ptr %l6, !tbaa !24
  br label %bb16
bb26:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i32 @compiler_2fsession_2edocPage(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, ptr %a1, { i64, ptr } %a2) #0 {
entry:
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca %"compiler/doc:Module"
  %l6 = alloca [2 x { i64, ptr }]
  %l7 = alloca { i64, ptr }
  %l8 = alloca i1
  %l9 = alloca %"compiler/diag:Diagnostics"
  %l11 = alloca { i64, ptr }
  %l12 = alloca ptr
  %l13 = alloca ptr
  %l14 = alloca i64
  %l16 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l18 = alloca ptr
  %l20 = alloca i64
  %l22 = alloca i1
  %l26 = alloca i1
  %l31 = alloca { i64, ptr }
  %l38 = alloca ptr
  %l43 = alloca ptr
  %l52 = alloca %"compiler/doc:Module"
  %l53 = alloca { i64, ptr }
  %l54 = alloca i64
  %l57 = alloca { i64, ptr }
  %l62 = alloca { i64, ptr }
  %l63 = alloca { i64, ptr }
  %l65 = alloca { i64, ptr }
  %l68 = alloca i32
  %l70 = alloca i1
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca i32
  %t2 = alloca %"compiler/diag:Diagnostics", align 8
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call i1 @compiler_2fdiag_2eColorWanted()
  store i1 %t1, ptr %l8
  br label %bb1
bb1:
  %t3 = load i1, ptr %l8, !tbaa !21
  call void @compiler_2fdiag_3aDiagnostics_2ector(ptr %t2, ptr %v1, i1 %t3)
  call void @llvm.memmove.p0.p0.i64(ptr %l9, ptr %t2, i64 544, i1 false)
  br label %bb2
bb2:
  %t4 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 544, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t4, ptr %l9, i64 544, i1 false)
  store ptr %t4, ptr %l3, !tbaa !29
  store { i64, ptr } %a0, ptr %l11, !tbaa !27
  store ptr %a1, ptr %l12, !tbaa !29
  %t8 = load ptr, ptr %l3, !tbaa !29
  store ptr %t8, ptr %l13, !tbaa !29
  %t9 = ptrtoint ptr %v1 to i64
  store i64 %t9, ptr %l14, !tbaa !24
  %t10 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapIter_3cstd_2fprelude_2ftext_3aString_26_2c_20std_Hae258982e94f82c7c4916579e261fcef
  br i1 %t10, label %bb3, label %bb4
bb3:
  %t12 = call ptr @__olang_region_make(ptr %v1)
  %t13 = ptrtoint ptr %t12 to i64
  store i64 %t13, ptr %l14, !tbaa !24
  br label %bb4
bb4:
  %t14 = load i64, ptr %l14
  %t15 = inttoptr i64 %t14 to ptr
  %t16 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20std_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t15)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t16, ptr %l16
  br label %bb5
bb5:
  %t17 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l16
  %t18 = load i64, ptr %l14
  %t19 = inttoptr i64 %t18 to ptr
  %t20 = call ptr @__olang_scope_alloc_a(ptr %t19, i64 72, i64 8)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t17, ptr %t20
  %t21 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t22 = load ptr, ptr %l12, !tbaa !29
  %t23 = load ptr, ptr %l13, !tbaa !29
  %t25 = call ptr @compiler_2fsession_2eAnalysis_2eAnalyze(ptr %v0, ptr %v1, ptr %v1, ptr %v1, ptr %v1, { i64, ptr } %t21, ptr %t22, ptr %t23, ptr %t20, i1 true)
  store ptr %t25, ptr %l18
  br label %bb6
bb6:
  %t26 = load ptr, ptr %l18, !tbaa !29
  store ptr %t26, ptr %l4, !tbaa !29
  %t27 = load ptr, ptr %l3, !tbaa !29
  %t29 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrors(ptr %v1, ptr %t27)
  store i64 %t29, ptr %l20
  br label %bb7
bb7:
  %t30 = load i64, ptr %l20, !tbaa !24
  %t31 = icmp sgt i64 %t30, 0
  br i1 %t31, label %bb8, label %bb9
bb8:
  store i1 true, ptr %l22, !tbaa !21
  br label %bb10
bb9:
  %t33 = load ptr, ptr %l4, !tbaa !29
  %t35 = getelementptr %"compiler/session:Analysis", ptr %t33, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !29
  %t38 = icmp eq ptr %t36, null
  store i1 %t38, ptr %l22, !tbaa !21
  br label %bb10
bb10:
  %t40 = load i1, ptr %l22, !tbaa !21
  br i1 %t40, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l26, !tbaa !21
  br label %bb13
bb12:
  %t41 = load ptr, ptr %l4, !tbaa !29
  %t43 = getelementptr %"compiler/session:Analysis", ptr %t41, i32 0, i32 2
  %t44 = load ptr, ptr %t43, !tbaa !29
  %t46 = icmp eq ptr %t44, null
  store i1 %t46, ptr %l26, !tbaa !21
  br label %bb13
bb13:
  %t48 = load i1, ptr %l26, !tbaa !21
  br i1 %t48, label %bb14, label %bb15
bb14:
  store %olang.scope zeroinitializer, ptr %s1
  %t49 = load ptr, ptr %l3, !tbaa !29
  %t51 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eRender(ptr %v1, ptr %s1, ptr %t49)
  store { i64, ptr } %t51, ptr %l31
  br label %bb16
bb15:
  br label %bb18
bb16:
  %t52 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t53 = extractvalue { i64, ptr } %t52, 0
  %t54 = extractvalue { i64, ptr } %t52, 1
  %t55 = mul i64 %t53, 1
  %t56 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t55)
  call void @llvm.memcpy.p0.p0.i64(ptr %t56, ptr %t54, i64 %t55, i1 false)
  %t57 = insertvalue { i64, ptr } undef, i64 %t53, 0
  %t58 = insertvalue { i64, ptr } %t57, ptr %t56, 1
  call void @compiler_2fsession_2esay(ptr %s1, { i64, ptr } %t58)
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  store i32 1, ptr %rv
  br label %ret
bb18:
  %t61 = load ptr, ptr %l4, !tbaa !29
  %t63 = getelementptr %"compiler/session:Analysis", ptr %t61, i32 0, i32 1
  %t64 = load ptr, ptr %t63, !tbaa !29
  %t66 = icmp eq ptr %t64, null
  br i1 %t66, label %bb19, label %bb20
bb19:
  call void @__olang_check_failed(ptr @olang_loc_e6936df67b662b33_7a0885fa2c8953cf)
  unreachable
bb20:
  br label %bb21
bb21:
  %t68 = load ptr, ptr %l4, !tbaa !29
  %t70 = getelementptr %"compiler/session:Analysis", ptr %t68, i32 0, i32 1
  %t71 = load ptr, ptr %t70, !tbaa !29
  store ptr %t71, ptr %l38, !tbaa !29
  %t72 = load ptr, ptr %l4, !tbaa !29
  %t74 = getelementptr %"compiler/session:Analysis", ptr %t72, i32 0, i32 2
  %t75 = load ptr, ptr %t74, !tbaa !29
  %t77 = icmp eq ptr %t75, null
  br i1 %t77, label %bb22, label %bb23
bb22:
  call void @__olang_check_failed(ptr @olang_loc_e6936df67b662b33_7a0885fa2c8953cf)
  unreachable
bb23:
  br label %bb24
bb24:
  %t79 = load ptr, ptr %l4, !tbaa !29
  %t81 = getelementptr %"compiler/session:Analysis", ptr %t79, i32 0, i32 2
  %t82 = load ptr, ptr %t81, !tbaa !29
  store ptr %t82, ptr %l43, !tbaa !29
  %t83 = load ptr, ptr %l4, !tbaa !29
  %t85 = getelementptr %"compiler/session:Analysis", ptr %t83, i32 0, i32 3
  %t86 = load ptr, ptr %t85, !tbaa !29
  %t88 = icmp eq ptr %t86, null
  br i1 %t88, label %bb25, label %bb26
bb25:
  call void @__olang_check_failed(ptr @olang_loc_e6936df67b662b33_7a0885fa2c8953cf)
  unreachable
bb26:
  br label %bb27
bb27:
  %t90 = load ptr, ptr %l4, !tbaa !29
  %t92 = getelementptr %"compiler/session:Analysis", ptr %t90, i32 0, i32 3
  %t93 = load ptr, ptr %t92, !tbaa !29
  %t94 = load ptr, ptr %l4, !tbaa !29
  %t96 = getelementptr %"compiler/session:Analysis", ptr %t94, i32 0, i32 0
  %t97 = load ptr, ptr %t96, !tbaa !29
  %t99 = getelementptr %"compiler/load:Loader", ptr %t97, i32 0, i32 12
  %t100 = load i64, ptr %t99, !tbaa !24
  %t101 = load ptr, ptr %l38, !tbaa !29
  %t102 = load ptr, ptr %l43, !tbaa !29
  %t105 = call %"compiler/doc:Module" @compiler_2fdoc_2eModule_2eOf(ptr %v1, ptr %v1, ptr %v1, ptr %s0, ptr %t101, ptr %t102, ptr %t93, i64 %t100, i1 false)
  store %"compiler/doc:Module" %t105, ptr %l52
  br label %bb28
bb28:
  %t106 = load %"compiler/doc:Module", ptr %l52
  store %"compiler/doc:Module" %t106, ptr %l5
  store { i64, ptr } %a2, ptr %l53, !tbaa !27
  %t108 = ptrtoint ptr %s0 to i64
  store i64 %t108, ptr %l54, !tbaa !24
  %t109 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_2c_202_3e_2e_2d1
  br i1 %t109, label %bb29, label %bb30
bb29:
  %t111 = call ptr @__olang_region_make(ptr %s0)
  %t112 = ptrtoint ptr %t111 to i64
  store i64 %t112, ptr %l54, !tbaa !24
  br label %bb30
bb30:
  %t113 = getelementptr %"compiler/doc:Module", ptr %l5, i32 0, i32 0
  %t114 = load { i64, ptr }, ptr %t113, !tbaa !27
  %t115 = load i64, ptr %l54
  %t116 = inttoptr i64 %t115 to ptr
  %t118 = call { i64, ptr } @compiler_2fdoc_2ePageName(ptr %s0, ptr %t116, { i64, ptr } %t114)
  store { i64, ptr } %t118, ptr %l57
  br label %bb31
bb31:
  %t119 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t120 = load i64, ptr %l54
  %t121 = inttoptr i64 %t120 to ptr
  %t122 = extractvalue { i64, ptr } %t119, 0
  %t123 = extractvalue { i64, ptr } %t119, 1
  %t124 = mul i64 %t122, 1
  %t125 = call ptr @__olang_scope_alloc(ptr %t121, i64 %t124)
  call void @llvm.memcpy.p0.p0.i64(ptr %t125, ptr %t123, i64 %t124, i1 false)
  %t126 = insertvalue { i64, ptr } undef, i64 %t122, 0
  %t127 = insertvalue { i64, ptr } %t126, ptr %t125, 1
  %t128 = load { i64, ptr }, ptr %l53, !tbaa !27
  %t129 = insertvalue [2 x { i64, ptr }] undef, { i64, ptr } %t128, 0
  %t131 = insertvalue [2 x { i64, ptr }] %t129, { i64, ptr } %t127, 1
  store [2 x { i64, ptr }] %t131, ptr %l6
  %t134 = insertvalue { i64, ptr } undef, i64 2, 0
  %t135 = insertvalue { i64, ptr } %t134, ptr %l6, 1
  %t137 = call { i64, ptr } @std_2ffilepath_2eJoin(ptr %s0, ptr %s0, { i64, ptr } %t135)
  store { i64, ptr } %t137, ptr %l62
  br label %bb32
bb32:
  %t138 = load { i64, ptr }, ptr %l62, !tbaa !27
  store { i64, ptr } %t138, ptr %l7, !tbaa !27
  %t139 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t139, ptr %l63, !tbaa !27
  %t141 = call { i64, ptr } @compiler_2fdoc_2ecompiler_2fdoc_3aModule_2eHtml(ptr %s0, ptr %s0, ptr %l5)
  store { i64, ptr } %t141, ptr %l65
  br label %bb33
bb33:
  %t142 = load { i64, ptr }, ptr %l65, !tbaa !27
  %t144 = extractvalue { i64, ptr } %t142, 0
  %t145 = extractvalue { i64, ptr } %t142, 1
  %t146 = mul i64 %t144, 1
  %t147 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t146)
  call void @llvm.memcpy.p0.p0.i64(ptr %t147, ptr %t145, i64 %t146, i1 false)
  %t148 = insertvalue { i64, ptr } undef, i64 %t144, 0
  %t149 = insertvalue { i64, ptr } %t148, ptr %t147, 1
  %t150 = load { i64, ptr }, ptr %l63, !tbaa !27
  %t152 = call i32 @std_2fos_2eWriteFile(ptr %s0, ptr %s0, { i64, ptr } %t150, { i64, ptr } %t149)
  store i32 %t152, ptr %l68
  %t153 = icmp ne i32 %t152, 0
  br i1 %t153, label %bb35, label %ok.154, !prof !99
ok.154:
  br label %bb34
bb34:
  br label %bb40
bb35:
  %t155 = load i32, ptr %l68, !tbaa !23
  %t156 = ashr i32 %t155, 16
  %t158 = icmp eq i32 %t156, 1
  store i1 %t158, ptr %l70, !tbaa !21
  %t159 = load i32, ptr %l68, !tbaa !23
  %t160 = ashr i32 %t159, 16
  %t162 = icmp eq i32 %t160, 1
  br i1 %t162, label %bb36, label %bb37
bb36:
  call void @__olang_errpay_pop()
  br label %bb37
bb37:
  br label %bb38
bb38:
  store %olang.scope zeroinitializer, ptr %s2
  %t164 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t165 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d69, i32 0, i32 1) }, 1
  %t166 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d69, i32 0, i32 1) }, 0
  %t168 = extractvalue { i64, ptr } %t164, 1
  %t169 = extractvalue { i64, ptr } %t164, 0
  %t170 = add i64 %t166, %t169
  %t171 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d70, i32 0, i32 1) }, 1
  %t172 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d70, i32 0, i32 1) }, 0
  %t173 = add i64 %t170, %t172
  %t174 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t173)
  call void @olang_textcopy(ptr %t174, ptr %t165, i64 %t166)
  %t175 = getelementptr i8, ptr %t174, i64 %t166
  call void @olang_textcopy(ptr %t175, ptr %t168, i64 %t169)
  %t176 = getelementptr i8, ptr %t175, i64 %t169
  call void @olang_textcopy(ptr %t176, ptr %t171, i64 %t172)
  %t177 = insertvalue { i64, ptr } undef, i64 %t173, 0
  %t178 = insertvalue { i64, ptr } %t177, ptr %t174, 1
  %t180 = extractvalue { i64, ptr } %t178, 0
  %t181 = extractvalue { i64, ptr } %t178, 1
  %t182 = mul i64 %t180, 1
  %t183 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t182)
  call void @llvm.memcpy.p0.p0.i64(ptr %t183, ptr %t181, i64 %t182, i1 false)
  %t184 = insertvalue { i64, ptr } undef, i64 %t180, 0
  %t185 = insertvalue { i64, ptr } %t184, ptr %t183, 1
  call void @compiler_2fsession_2esay(ptr %s2, { i64, ptr } %t185)
  br label %bb39
bb39:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  store i32 1, ptr %rv
  br label %ret
bb40:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i64, ptr } @compiler_2fsession_2eexampleText(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, { i64, ptr } %a2) #0 {
entry:
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca %"std/prelude/text:StringBuilder"
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l10 = alloca i64
  %l12 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %l14 = alloca i64
  %l15 = alloca { i64, ptr }
  %l16 = alloca %"std/prelude/text:StringBuilder"
  %l17 = alloca ptr
  %l19 = alloca %"compiler/doc:Example"
  %l20 = alloca { i64, ptr }
  %l22 = alloca %"compiler/doc:Example"
  %l27 = alloca i64
  %l29 = alloca ptr
  %l31 = alloca i64
  %l32 = alloca i64
  %l34 = alloca i64
  %l36 = alloca { i64, ptr }
  %l40 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t7 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fdoc_2eExamplesOf(ptr %v0, ptr %v1, ptr %s0, ptr %a0, i64 %a1, { i64, ptr } %a2)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t7, ptr %l8
  br label %bb1
bb1:
  %t8 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l8
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t8, ptr %l3
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdoc_3aExample_3e_2eLen_3ccompiler_2fdoc_3aExample_3e(ptr %s0, ptr %l3)
  store i64 %t10, ptr %l10
  br label %bb2
bb2:
  %t11 = load i64, ptr %l10, !tbaa !24
  %t12 = icmp eq i64 %t11, 0
  br i1 %t12, label %bb3, label %bb4
bb3:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d71, i32 0, i32 1) }, ptr %l12, !tbaa !27
  %t14 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t14, ptr %l13, !tbaa !27
  %t15 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t16 = extractvalue { i64, ptr } %t15, 0
  store i64 %t16, ptr %l14, !tbaa !24
  %t17 = load i64, ptr %l14, !tbaa !24
  %t18 = mul i64 %t17, 1
  %t19 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t18)
  %t20 = insertvalue { i64, ptr } undef, i64 %t17, 0
  %t21 = insertvalue { i64, ptr } %t20, ptr %t19, 1
  store { i64, ptr } %t21, ptr %l15, !tbaa !27
  %t22 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !27
  %t24 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !27
  %t26 = load i64, ptr %l14, !tbaa !24
  %t27 = mul i64 %t26, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t23, ptr %t25, i64 %t27, i1 false)
  %t28 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t28, ptr %l13, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t29 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t29, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t30 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t30, ptr %l16
  br label %bb6
bb6:
  %t31 = load %"std/prelude/text:StringBuilder", ptr %l16
  store %"std/prelude/text:StringBuilder" %t31, ptr %l4
  store ptr %l4, ptr %l17, !tbaa !29
  %t33 = call %"compiler/doc:Example" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdoc_3aExample_3e_2eAt_3ccompiler_2fdoc_3aExample_3e(ptr %s0, ptr %s0, ptr %l3, i64 0)
  store %"compiler/doc:Example" %t33, ptr %l19
  br label %bb7
bb7:
  %t34 = getelementptr %"compiler/doc:Example", ptr %l19, i32 0, i32 0
  %t35 = load { i64, ptr }, ptr %t34, !tbaa !27
  store { i64, ptr } %t35, ptr %l20, !tbaa !27
  %t37 = call %"compiler/doc:Example" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdoc_3aExample_3e_2eAt_3ccompiler_2fdoc_3aExample_3e(ptr %s0, ptr %s0, ptr %l3, i64 0)
  store %"compiler/doc:Example" %t37, ptr %l22
  br label %bb8
bb8:
  %t38 = getelementptr %"compiler/doc:Example", ptr %l22, i32 0, i32 1
  %t39 = load { i64, ptr }, ptr %t38, !tbaa !27
  %t40 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d72, i32 0, i32 1) }, 1
  %t41 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d72, i32 0, i32 1) }, 0
  %t42 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t43 = extractvalue { i64, ptr } %t42, 1
  %t44 = extractvalue { i64, ptr } %t42, 0
  %t45 = add i64 %t41, %t44
  %t46 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d73, i32 0, i32 1) }, 1
  %t47 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d73, i32 0, i32 1) }, 0
  %t48 = add i64 %t45, %t47
  %t50 = extractvalue { i64, ptr } %t39, 1
  %t51 = extractvalue { i64, ptr } %t39, 0
  %t52 = add i64 %t48, %t51
  %t53 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d74, i32 0, i32 1) }, 1
  %t54 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d74, i32 0, i32 1) }, 0
  %t55 = add i64 %t52, %t54
  %t56 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t55)
  call void @olang_textcopy(ptr %t56, ptr %t40, i64 %t41)
  %t57 = getelementptr i8, ptr %t56, i64 %t41
  call void @olang_textcopy(ptr %t57, ptr %t43, i64 %t44)
  %t58 = getelementptr i8, ptr %t57, i64 %t44
  call void @olang_textcopy(ptr %t58, ptr %t46, i64 %t47)
  %t59 = getelementptr i8, ptr %t58, i64 %t47
  call void @olang_textcopy(ptr %t59, ptr %t50, i64 %t51)
  %t60 = getelementptr i8, ptr %t59, i64 %t51
  call void @olang_textcopy(ptr %t60, ptr %t53, i64 %t54)
  %t61 = insertvalue { i64, ptr } undef, i64 %t55, 0
  %t62 = insertvalue { i64, ptr } %t61, ptr %t56, 1
  %t64 = extractvalue { i64, ptr } %t62, 0
  %t65 = extractvalue { i64, ptr } %t62, 1
  %t66 = mul i64 %t64, 1
  %t67 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t66)
  call void @llvm.memcpy.p0.p0.i64(ptr %t67, ptr %t65, i64 %t66, i1 false)
  %t68 = insertvalue { i64, ptr } undef, i64 %t64, 0
  %t69 = insertvalue { i64, ptr } %t68, ptr %t67, 1
  %t70 = load ptr, ptr %l17, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t70, { i64, ptr } %t69)
  br label %bb9
bb9:
  %t73 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdoc_3aExample_3e_2eLen_3ccompiler_2fdoc_3aExample_3e(ptr %s0, ptr %l3)
  store i64 %t73, ptr %l27
  br label %bb10
bb10:
  %t74 = load i64, ptr %l27, !tbaa !24
  %t75 = icmp sgt i64 %t74, 1
  br i1 %t75, label %bb11, label %bb12
bb11:
  store %olang.scope zeroinitializer, ptr %s3
  store ptr %l4, ptr %l29, !tbaa !29
  %t78 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdoc_3aExample_3e_2eLen_3ccompiler_2fdoc_3aExample_3e(ptr %s0, ptr %l3)
  store i64 %t78, ptr %l31
  br label %bb13
bb12:
  br label %bb19
bb13:
  %t79 = load i64, ptr %l31, !tbaa !24
  %t80 = sub i64 %t79, 1
  store i64 %t80, ptr %l32, !tbaa !24
  %t82 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdoc_3aExample_3e_2eLen_3ccompiler_2fdoc_3aExample_3e(ptr %s0, ptr %l3)
  store i64 %t82, ptr %l34
  br label %bb14
bb14:
  %t83 = load i64, ptr %l34, !tbaa !24
  %t84 = icmp eq i64 %t83, 2
  br i1 %t84, label %bb15, label %bb16
bb15:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d75, i32 0, i32 1) }, ptr %l36, !tbaa !27
  br label %bb17
bb16:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d76, i32 0, i32 1) }, ptr %l36, !tbaa !27
  br label %bb17
bb17:
  %t86 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d77, i32 0, i32 1) }, 1
  %t87 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d77, i32 0, i32 1) }, 0
  %t88 = load i64, ptr %l32, !tbaa !24
  %t89 = call i64 @__olang_fmt_i64(ptr null, i64 %t88)
  %t90 = add i64 %t87, %t89
  %t91 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d78, i32 0, i32 1) }, 1
  %t92 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d78, i32 0, i32 1) }, 0
  %t93 = add i64 %t90, %t92
  %t94 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t95 = extractvalue { i64, ptr } %t94, 1
  %t96 = extractvalue { i64, ptr } %t94, 0
  %t97 = add i64 %t93, %t96
  %t98 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t97)
  call void @olang_textcopy(ptr %t98, ptr %t86, i64 %t87)
  %t99 = getelementptr i8, ptr %t98, i64 %t87
  %t100 = call i64 @__olang_fmt_i64(ptr %t99, i64 %t88)
  %t101 = getelementptr i8, ptr %t99, i64 %t89
  call void @olang_textcopy(ptr %t101, ptr %t91, i64 %t92)
  %t102 = getelementptr i8, ptr %t101, i64 %t92
  call void @olang_textcopy(ptr %t102, ptr %t95, i64 %t96)
  %t103 = insertvalue { i64, ptr } undef, i64 %t97, 0
  %t104 = insertvalue { i64, ptr } %t103, ptr %t98, 1
  %t106 = extractvalue { i64, ptr } %t104, 0
  %t107 = extractvalue { i64, ptr } %t104, 1
  %t108 = mul i64 %t106, 1
  %t109 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t108)
  call void @llvm.memcpy.p0.p0.i64(ptr %t109, ptr %t107, i64 %t108, i1 false)
  %t110 = insertvalue { i64, ptr } undef, i64 %t106, 0
  %t111 = insertvalue { i64, ptr } %t110, ptr %t109, 1
  %t112 = load ptr, ptr %l29, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s3, ptr %t112, { i64, ptr } %t111)
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s3)
  br label %bb19
bb19:
  %t115 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v2, ptr %l4)
  store { i64, ptr } %t115, ptr %l40
  br label %bb20
bb20:
  call void @__olang_scope_close(ptr %s0)
  %t116 = load { i64, ptr }, ptr %l40, !tbaa !27
  store { i64, ptr } %t116, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2fsession_2esameShape(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca i32
  %l9 = alloca i32
  %l14 = alloca i32
  %l17 = alloca i1
  %l24 = alloca i32
  %l29 = alloca i32
  %l34 = alloca i32
  %l36 = alloca i32
  %l38 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  %t7 = load i32, ptr %l1, !tbaa !23
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t6, i32 %t7)
  store i32 %t10, ptr %l9
  br label %bb1
bb1:
  %t11 = load i32, ptr %l9, !range !{i32 0, i32 33}
  store i32 %t11, ptr %l3
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/check:Checker", ptr %t12, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t17 = getelementptr %"compiler/generic:Program", ptr %t15, i32 0, i32 2
  %t18 = load i32, ptr %l2, !tbaa !23
  %t21 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t17, i32 %t18)
  store i32 %t21, ptr %l14
  br label %bb2
bb2:
  %t22 = load i32, ptr %l14, !range !{i32 0, i32 33}
  store i32 %t22, ptr %l4
  %t23 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t25 = trunc i64 18 to i32
  %t26 = icmp eq i32 %t23, %t25
  br i1 %t26, label %bb3, label %bb4
bb3:
  %t28 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t30 = trunc i64 18 to i32
  %t31 = icmp eq i32 %t28, %t30
  store i1 %t31, ptr %l17, !tbaa !21
  br label %bb5
bb4:
  store i1 false, ptr %l17, !tbaa !21
  br label %bb5
bb5:
  %t33 = load i1, ptr %l17, !tbaa !21
  br i1 %t33, label %bb6, label %bb7
bb6:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/check:Checker", ptr %t34, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !29
  %t39 = getelementptr %"compiler/generic:Program", ptr %t37, i32 0, i32 2
  %t40 = load i32, ptr %l1, !tbaa !23
  %t43 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t39, i32 %t40)
  store i32 %t43, ptr %l24
  br label %bb8
bb7:
  br label %bb10
bb8:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/check:Checker", ptr %t44, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !29
  %t49 = getelementptr %"compiler/generic:Program", ptr %t47, i32 0, i32 2
  %t50 = load i32, ptr %l2, !tbaa !23
  %t53 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t49, i32 %t50)
  store i32 %t53, ptr %l29
  br label %bb9
bb9:
  %t54 = load i32, ptr %l24, !tbaa !23
  %t55 = load i32, ptr %l29, !tbaa !23
  %t56 = icmp eq i32 %t54, %t55
  store i1 %t56, ptr %rv
  br label %ret
bb10:
  %t58 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t60 = trunc i64 25 to i32
  %t61 = icmp eq i32 %t58, %t60
  br i1 %t61, label %bb11, label %bb12
bb11:
  store i1 false, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  %t64 = load i32, ptr %l3, !range !{i32 0, i32 33}
  store i32 %t64, ptr %l34
  %t65 = load i32, ptr %l4, !range !{i32 0, i32 33}
  store i32 %t65, ptr %l36
  %t68 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2ftypes_3aKind(ptr %l34, ptr %l36)
  store i1 %t68, ptr %l38
  br label %bb14
bb14:
  %t69 = load i1, ptr %l38, !tbaa !21
  store i1 %t69, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fsession_2esay(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l2 = alloca i32
  %l4 = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call i32 @std_2fio_2ePrint(ptr %v0, { i64, ptr } %a0)
  store i32 %t3, ptr %l2
  %t4 = icmp ne i32 %t3, 0
  br i1 %t4, label %bb2, label %ok.5, !prof !99
ok.5:
  br label %bb1
bb1:
  br label %bb6
bb2:
  %t6 = load i32, ptr %l2, !tbaa !23
  %t7 = ashr i32 %t6, 16
  %t9 = icmp eq i32 %t7, 1
  store i1 %t9, ptr %l4, !tbaa !21
  %t10 = load i32, ptr %l2, !tbaa !23
  %t11 = ashr i32 %t10, 16
  %t13 = icmp eq i32 %t11, 1
  br i1 %t13, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  br label %bb6
bb6:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fsession_2eutf16Units(ptr %v0, { i64, ptr } %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i8
  %l6 = alloca i64
  %l12 = alloca { i64, ptr }
  %l18 = alloca i64
  %l21 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i64
  %l28 = alloca i64
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l3, !tbaa !24
  store i64 %a1, ptr %l4, !tbaa !24
  br label %bb1
bb1:
  %t3 = load i64, ptr %l4, !tbaa !24
  %t7 = icmp slt i64 %t3, %a2
  %t9 = xor i1 %t7, true
  br i1 %t9, label %bb2, label %bb3
bb2:
  br label %bb18
bb3:
  br label %bb4
bb4:
  store { i64, ptr } %a0, ptr %l12, !tbaa !27
  %t12 = load i64, ptr %l4, !tbaa !24
  %t14 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = getelementptr i8, ptr %t15, i64 %t12
  %t17 = load i8, ptr %t16, !tbaa !32
  store i8 %t17, ptr %l5, !tbaa !22
  %t20 = load i8, ptr %l5, !tbaa !22
  %t22 = icmp ult i8 %t20, -64
  br i1 %t22, label %bb5, label %bb6
bb5:
  store i64 1, ptr %l18, !tbaa !24
  br label %bb13
bb6:
  %t24 = load i8, ptr %l5, !tbaa !22
  %t26 = icmp ult i8 %t24, -32
  br i1 %t26, label %bb7, label %bb8
bb7:
  store i64 2, ptr %l21, !tbaa !24
  br label %bb12
bb8:
  %t28 = load i8, ptr %l5, !tbaa !22
  %t30 = icmp ult i8 %t28, -16
  br i1 %t30, label %bb9, label %bb10
bb9:
  store i64 3, ptr %l24, !tbaa !24
  br label %bb11
bb10:
  store i64 4, ptr %l24, !tbaa !24
  br label %bb11
bb11:
  %t32 = load i64, ptr %l24, !tbaa !24
  store i64 %t32, ptr %l21, !tbaa !24
  br label %bb12
bb12:
  %t33 = load i64, ptr %l21, !tbaa !24
  store i64 %t33, ptr %l18, !tbaa !24
  br label %bb13
bb13:
  %t34 = load i64, ptr %l18, !tbaa !24
  store i64 %t34, ptr %l6, !tbaa !24
  %t35 = load i64, ptr %l3, !tbaa !24
  store i64 %t35, ptr %l25, !tbaa !24
  %t36 = load i64, ptr %l6, !tbaa !24
  %t38 = icmp eq i64 %t36, 4
  br i1 %t38, label %bb14, label %bb15
bb14:
  store i64 2, ptr %l28, !tbaa !24
  br label %bb16
bb15:
  store i64 1, ptr %l28, !tbaa !24
  br label %bb16
bb16:
  %t40 = load i64, ptr %l25, !tbaa !24
  %t41 = load i64, ptr %l28, !tbaa !24
  %t42 = add i64 %t40, %t41
  store i64 %t42, ptr %l3, !tbaa !24
  %t44 = load i64, ptr %l4, !tbaa !24
  %t45 = load i64, ptr %l6, !tbaa !24
  %t48 = add i64 %t44, %t45
  store i64 %t48, ptr %l4, !tbaa !24
  br label %bb17
bb17:
  br label %bb1
bb18:
  %t50 = load i64, ptr %l3, !tbaa !24
  store i64 %t50, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local %"compiler/session:Analysis" @compiler_2fsession_3aAnalysis_2ector(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %rv = alloca %"compiler/session:Analysis"
  br label %start
start:
  br label %bb0
bb0:
  %t4 = insertvalue %"compiler/session:Analysis" undef, ptr %a0, 0
  %t6 = insertvalue %"compiler/session:Analysis" %t4, ptr null, 1
  %t8 = insertvalue %"compiler/session:Analysis" %t6, ptr null, 2
  %t10 = insertvalue %"compiler/session:Analysis" %t8, ptr null, 3
  store %"compiler/session:Analysis" %t10, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/session:Analysis", ptr %rv
  ret %"compiler/session:Analysis" %rr
}

define dso_local %"compiler/session:Found" @compiler_2fsession_3aFound_2ector(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1, i64 %a2) #0 {
entry:
  %rv = alloca %"compiler/session:Found"
  br label %start
start:
  br label %bb0
bb0:
  %t8 = insertvalue %"compiler/session:Found" undef, { i64, ptr } %a0, 0
  %t10 = insertvalue %"compiler/session:Found" %t8, { i64, ptr } %a1, 1
  %t12 = insertvalue %"compiler/session:Found" %t10, i64 %a2, 2
  store %"compiler/session:Found" %t12, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/session:Found", ptr %rv
  ret %"compiler/session:Found" %rr
}

define dso_local %"compiler/session:Items" @compiler_2fsession_3aItems_2ector(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/text:StringBuilder"
  %l1 = alloca i64
  %l3 = alloca i64
  %l5 = alloca %"std/prelude/text:StringBuilder"
  %l7 = alloca i64
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"compiler/session:Items"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = ptrtoint ptr %v0 to i64
  store i64 %t1, ptr %l3, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fsession_3aItems_2e0
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v0)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  %t6 = load i64, ptr %l3
  %t7 = inttoptr i64 %t6 to ptr
  %t8 = call %"std/prelude/text:StringBuilder" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2ftext_3aStringBuilder(ptr %t7)
  store %"std/prelude/text:StringBuilder" %t8, ptr %l5
  br label %bb3
bb3:
  %t9 = load i1, ptr @olang_2esole_2ecompiler_2fsession_3aItems_2e0
  br i1 %t9, label %bb4, label %bb5
bb4:
  %t11 = load i64, ptr %l3
  %t12 = inttoptr i64 %t11 to ptr
  %t13 = getelementptr %"std/prelude/text:StringBuilder", ptr %l5, i32 0, i32 0
  %t14 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t13, i32 0, i32 0
  %t15 = load { i64, ptr }, ptr %t14
  %t16 = extractvalue { i64, ptr } %t15, 1
  %t17 = call ptr @__olang_region_or(ptr %t16, ptr null)
  %t18 = icmp ne ptr %t17, null
  %t19 = select i1 %t18, ptr %t17, ptr null
  %t20 = icmp eq ptr %t19, %t12
  call void @__olang_region_settle(ptr %t12, i1 %t20)
  br label %bb5
bb5:
  %t21 = load %"std/prelude/text:StringBuilder", ptr %l5
  store %"std/prelude/text:StringBuilder" %t21, ptr %l0
  store i64 0, ptr %l1, !tbaa !24
  %t22 = ptrtoint ptr %v0 to i64
  store i64 %t22, ptr %l7, !tbaa !24
  %t23 = load i1, ptr @olang_2esole_2ecompiler_2fsession_3aItems_2e2
  br i1 %t23, label %bb6, label %bb7
bb6:
  %t25 = call ptr @__olang_region_make(ptr %v0)
  %t26 = ptrtoint ptr %t25 to i64
  store i64 %t26, ptr %l7, !tbaa !24
  br label %bb7
bb7:
  %t27 = load i64, ptr %l7
  %t28 = inttoptr i64 %t27 to ptr
  %t29 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t28, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t29, ptr %l9
  br label %bb8
bb8:
  %t30 = load i1, ptr @olang_2esole_2ecompiler_2fsession_3aItems_2e2
  br i1 %t30, label %bb9, label %bb10
bb9:
  %t32 = load i64, ptr %l7
  %t33 = inttoptr i64 %t32 to ptr
  %t34 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9, i32 0, i32 0
  %t35 = load { i64, ptr }, ptr %t34
  %t36 = extractvalue { i64, ptr } %t35, 1
  %t37 = call ptr @__olang_region_or(ptr %t36, ptr null)
  %t38 = icmp ne ptr %t37, null
  %t39 = select i1 %t38, ptr %t37, ptr null
  %t40 = icmp eq ptr %t39, %t33
  call void @__olang_region_settle(ptr %t33, i1 %t40)
  br label %bb10
bb10:
  %t41 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9
  %t42 = load %"std/prelude/text:StringBuilder", ptr %l0
  %t43 = insertvalue %"compiler/session:Items" undef, %"std/prelude/text:StringBuilder" %t42, 0
  %t44 = load i64, ptr %l1, !tbaa !24
  %t45 = insertvalue %"compiler/session:Items" %t43, i64 %t44, 1
  %t47 = insertvalue %"compiler/session:Items" %t45, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t41, 2
  store %"compiler/session:Items" %t47, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/session:Items", ptr %rv
  ret %"compiler/session:Items" %rr
}

define dso_local %"compiler/session:Positions" @compiler_2fsession_3aPositions_2ector(ptr %v0, ptr %v1, { i64, ptr } %a0, i1 %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca i1
  %l8 = alloca { i64, ptr }
  %rv = alloca %"compiler/session:Positions"
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t1, ptr %l2, !tbaa !27
  store i1 %a1, ptr %l3, !tbaa !21
  %t5 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t7 = call { i64, ptr } @compiler_2fsource_2eLineStarts(ptr %v0, ptr %v1, { i64, ptr } %t5)
  store { i64, ptr } %t7, ptr %l8
  br label %bb1
bb1:
  %t8 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t9 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t10 = insertvalue %"compiler/session:Positions" undef, { i64, ptr } %t9, 0
  %t11 = load i1, ptr %l3, !tbaa !21
  %t12 = insertvalue %"compiler/session:Positions" %t10, i1 %t11, 1
  %t14 = insertvalue %"compiler/session:Positions" %t12, { i64, ptr } %t8, 2
  store %"compiler/session:Positions" %t14, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/session:Positions", ptr %rv
  ret %"compiler/session:Positions" %rr
}

define dso_local %"compiler/session:finder" @compiler_2fsession_3afinder_2ector(ptr %v0, ptr %v1, ptr %v2, i64 %a0, i64 %a1, { i64, ptr } %a2, ptr %a3) #0 {
entry:
  %rv = alloca %"compiler/session:finder"
  %t9 = alloca { i64, [6 x i64] }, align 8
  br label %start
start:
  br label %bb0
bb0:
  store { i64, [6 x i64] } zeroinitializer, ptr %t9
  %t10 = getelementptr { i64, [6 x i64] }, ptr %t9, i32 0, i32 0
  store i64 0, ptr %t10
  %t11 = load { i64, [6 x i64] }, ptr %t9
  %t14 = insertvalue %"compiler/session:finder" undef, i64 %a0, 0
  %t16 = insertvalue %"compiler/session:finder" %t14, i64 %a1, 1
  %t18 = insertvalue %"compiler/session:finder" %t16, { i64, ptr } %a2, 2
  %t20 = insertvalue %"compiler/session:finder" %t18, ptr %a3, 3
  %t22 = insertvalue %"compiler/session:finder" %t20, i64 -1, 4
  %t24 = insertvalue %"compiler/session:finder" %t22, { i64, [6 x i64] } %t11, 5
  %t26 = insertvalue %"compiler/session:finder" %t24, i64 9223372036854775807, 6
  store %"compiler/session:finder" %t26, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/session:finder", ptr %rv
  ret %"compiler/session:finder" %rr
}

define dso_local %"compiler/session:memberInfo" @compiler_2fsession_3amemberInfo_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, i32 %a1, { i64, ptr } %a2, { i64, ptr } %a3, i64 %a4) #0 {
entry:
  %rv = alloca %"compiler/session:memberInfo"
  br label %start
start:
  br label %bb0
bb0:
  %t12 = insertvalue %"compiler/session:memberInfo" undef, { i64, ptr } %a0, 0
  %t14 = insertvalue %"compiler/session:memberInfo" %t12, i32 %a1, 1
  %t16 = insertvalue %"compiler/session:memberInfo" %t14, { i64, ptr } %a2, 2
  %t18 = insertvalue %"compiler/session:memberInfo" %t16, { i64, ptr } %a3, 3
  %t20 = insertvalue %"compiler/session:memberInfo" %t18, i64 %a4, 4
  store %"compiler/session:memberInfo" %t20, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/session:memberInfo", ptr %rv
  ret %"compiler/session:memberInfo" %rr
}

define dso_local %"compiler/session:symWriter" @compiler_2fsession_3asymWriter_2ector(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %rv = alloca %"compiler/session:symWriter"
  br label %start
start:
  br label %bb0
bb0:
  %t4 = insertvalue %"compiler/session:symWriter" undef, ptr %a0, 0
  %t6 = insertvalue %"compiler/session:symWriter" %t4, i64 0, 1
  store %"compiler/session:symWriter" %t6, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/session:symWriter", ptr %rv
  ret %"compiler/session:symWriter" %rr
}

define dso_local %"compiler/session:typeFinder" @compiler_2fsession_3atypeFinder_2ector(ptr %v0, i64 %a0) #0 {
entry:
  %rv = alloca %"compiler/session:typeFinder"
  br label %start
start:
  br label %bb0
bb0:
  %t3 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t6 = insertvalue %"compiler/session:typeFinder" undef, i64 %a0, 0
  %t8 = insertvalue %"compiler/session:typeFinder" %t6, i32 %t3, 1
  %t10 = insertvalue %"compiler/session:typeFinder" %t8, i64 -1, 2
  store %"compiler/session:typeFinder" %t10, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/session:typeFinder", ptr %rv
  ret %"compiler/session:typeFinder" %rr
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
declare i32 @fork()
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
declare void @__olang_errpay_pop()
declare void @_exit(i32)
declare void @__olang_check_failed(ptr) cold noreturn
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
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
@.d0 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
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
@olang_2esole_2estd_2fprelude_2fmap_3aMapIter_3cstd_2fprelude_2ftext_3aString_26_2c_20std_Hae258982e94f82c7c4916579e261fcef = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@.d1 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d2 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"olang: " }>, align 8
@.d3 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c": cannot be made\0A" }>, align 8
define available_externally void @__olang_scope_escape(ptr %s) alwaysinline {
entry:
  %op = getelementptr %olang.scope, ptr %s, i32 0, i32 3
  %o = load atomic ptr, ptr %op monotonic, align 8
  %un = icmp eq ptr %o, null
  br i1 %un, label %claim, label %done
claim:
  %me = load ptr, ptr @__olang_self
  store atomic ptr %me, ptr %op monotonic, align 8
  br label %done
done:
  ret void
}
define internal i32 @olang_lambda_4(ptr %env) #0 {
entry:
  %l6 = alloca i32
  %rv = alloca i32
  %cp0 = getelementptr { { i64, ptr }, ptr, { i64, ptr }, ptr, ptr, ptr }, ptr %env, i32 0, i32 0
  %cv0 = load { i64, ptr }, ptr %cp0, !tbaa !28
  %cp1 = getelementptr { { i64, ptr }, ptr, { i64, ptr }, ptr, ptr, ptr }, ptr %env, i32 0, i32 1
  %cv1 = load ptr, ptr %cp1, !tbaa !28
  %cp2 = getelementptr { { i64, ptr }, ptr, { i64, ptr }, ptr, ptr, ptr }, ptr %env, i32 0, i32 2
  %cv2 = load { i64, ptr }, ptr %cp2, !tbaa !28
  %vq0 = getelementptr { { i64, ptr }, ptr, { i64, ptr }, ptr, ptr, ptr }, ptr %env, i32 0, i32 3
  %vr0 = load ptr, ptr %vq0, !tbaa !28
  %vc0 = call ptr @__olang_capture_scope(ptr %vr0)
  %vq1 = getelementptr { { i64, ptr }, ptr, { i64, ptr }, ptr, ptr, ptr }, ptr %env, i32 0, i32 4
  %vr1 = load ptr, ptr %vq1, !tbaa !28
  %vc1 = call ptr @__olang_capture_scope(ptr %vr1)
  %vq2 = getelementptr { { i64, ptr }, ptr, { i64, ptr }, ptr, ptr, ptr }, ptr %env, i32 0, i32 5
  %vr2 = load ptr, ptr %vq2, !tbaa !28
  %vc2 = call ptr @__olang_capture_scope(ptr %vr2)
  br label %start
start:
  br label %bb0
bb0:
  %t7 = call i32 @compiler_2fsession_2edocPage(ptr %vc0, ptr %vc1, ptr %vc2, { i64, ptr } %cv0, ptr %cv1, { i64, ptr } %cv2)
  store i32 %t7, ptr %l6
  br label %bb1
bb1:
  %t8 = load i32, ptr %l6, !tbaa !23
  store i32 %t8, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

@olang_2esole_2ecompiler_2fdoc_3aModule_2e0 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fdoc_3aModule_2e2 = weak hidden constant i1 false
define internal i1 @olang_lambda_5(ptr %env, ptr %v0, ptr %v1, %"compiler/doc:Module" %a0, %"compiler/doc:Module" %a1) #0 {
entry:
  %l0 = alloca %"compiler/doc:Module"
  %l1 = alloca %"compiler/doc:Module"
  %l4 = alloca i1
  %rv = alloca i1
  store %"compiler/doc:Module" %a0, ptr %l0
  store %"compiler/doc:Module" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/doc:Module", ptr %l0, i32 0, i32 0
  %t2 = load { i64, ptr }, ptr %t1, !tbaa !27
  %t3 = getelementptr %"compiler/doc:Module", ptr %l1, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t7 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLess(ptr %v0, ptr %v1, { i64, ptr } %t2, { i64, ptr } %t4)
  store i1 %t7, ptr %l4
  br label %bb1
bb1:
  %t8 = load i1, ptr %l4, !tbaa !21
  store i1 %t8, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

@.d6 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"index.html" }>, align 8
@.d7 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"olang standard library" }>, align 8
@.d8 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"olang" }>, align 8
@.d9 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"olang: " }>, align 8
@.d10 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c": cannot be written\0A" }>, align 8
declare i32 @dup2(i32, i32)
define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3aScoper(ptr %out, ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/scope:Scoper"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l13 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l15 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l17 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l19 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l21 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l23 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l25 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l27 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l29 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l31 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l33 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l35 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l37 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l39 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l41 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l43 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l45 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l47 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l49 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l51 = alloca %"compiler/typed:Plan"
  %l53 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l55 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l57 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l59 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l61 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l63 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l65 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l67 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l69 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l71 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l73 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l75 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l77 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l79 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l81 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l83 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l85 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l87 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l89 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l91 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l93 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l95 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l97 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l99 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l101 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l103 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l105 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l107 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l109 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l111 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l113 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l115 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l117 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l119 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l121 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l123 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l125 = alloca %"compiler/scope:fnRecs"
  %l127 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l129 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l131 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l133 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l135 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l137 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l139 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l141 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l143 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l145 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l147 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l149 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l151 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l153 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l155 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l157 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l159 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l161 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l163 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l165 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l167 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l169 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l171 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l173 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l175 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l177 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l179 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l181 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l183 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l185 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l187 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l189 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l191 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l193 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l195 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l197 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l199 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l201 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l203 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l205 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l207 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l209 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l211 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l213 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l215 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l217 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l219 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l221 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l223 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l225 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l227 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l229 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l231 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l233 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l235 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l237 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l239 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l241 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l243 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l245 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l247 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l249 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l251 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l253 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l255 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l257 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l258 = alloca { i64, ptr }
  %l259 = alloca i64
  %l260 = alloca { i64, ptr }
  %l262 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l264 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l266 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l268 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l270 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l272 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l274 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l276 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l278 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l280 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l282 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l284 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l286 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l288 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l290 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l292 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l294 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l296 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %t123 = alloca %"compiler/typed:Plan", align 8
  br label %start
start:
  br label %bb0
bb0:
  call void @llvm.memmove.p0.p0.i64(ptr %l1, ptr %a0, i64 8968, i1 false)
  %t2 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 1
  %t4 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e(ptr %v0, ptr %t2)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t4, ptr %l3
  br label %bb1
bb1:
  %t5 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t6 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %t6
  %t7 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 2
  %t9 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e(ptr %v0, ptr %t7)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t9, ptr %l5
  br label %bb2
bb2:
  %t10 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  %t11 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %t11
  %t12 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 3
  %t14 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aGap_3e(ptr %v0, ptr %t12)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t14, ptr %l7
  br label %bb3
bb3:
  %t15 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  %t16 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t15, ptr %t16
  %t17 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 6
  %t19 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e(ptr %v0, ptr %t17)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t19, ptr %l9
  br label %bb4
bb4:
  %t20 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9
  %t21 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 6
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t20, ptr %t21
  %t22 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 7
  %t24 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e(ptr %v0, ptr %t22)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t24, ptr %l11
  br label %bb5
bb5:
  %t25 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l11
  %t26 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 7
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t25, ptr %t26
  %t27 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 8
  %t29 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e(ptr %v0, ptr %t27)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t29, ptr %l13
  br label %bb6
bb6:
  %t30 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l13
  %t31 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 8
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t30, ptr %t31
  %t32 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 9
  %t34 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e(ptr %v0, ptr %t32)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t34, ptr %l15
  br label %bb7
bb7:
  %t35 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l15
  %t36 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 9
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t35, ptr %t36
  %t37 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 10
  %t39 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20I64_3e(ptr %v0, ptr %t37)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t39, ptr %l17
  br label %bb8
bb8:
  %t40 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l17
  %t41 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 10
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t40, ptr %t41
  %t42 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 11
  %t44 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %t42)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t44, ptr %l19
  br label %bb9
bb9:
  %t45 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l19
  %t46 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 11
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t45, ptr %t46
  %t47 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 12
  %t49 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cBool_3e(ptr %v0, ptr %t47)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t49, ptr %l21
  br label %bb10
bb10:
  %t50 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l21
  %t51 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 12
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t50, ptr %t51
  %t52 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 13
  %t54 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t52)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t54, ptr %l23
  br label %bb11
bb11:
  %t55 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l23
  %t56 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 13
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t55, ptr %t56
  %t57 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 14
  %t59 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t57)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t59, ptr %l25
  br label %bb12
bb12:
  %t60 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l25
  %t61 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 14
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t60, ptr %t61
  %t62 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 15
  %t64 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t62)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t64, ptr %l27
  br label %bb13
bb13:
  %t65 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l27
  %t66 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 15
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t65, ptr %t66
  %t67 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 16
  %t69 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t67)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t69, ptr %l29
  br label %bb14
bb14:
  %t70 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l29
  %t71 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 16
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t70, ptr %t71
  %t72 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 17
  %t74 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t72)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t74, ptr %l31
  br label %bb15
bb15:
  %t75 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l31
  %t76 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 17
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t75, ptr %t76
  %t77 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 18
  %t79 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t77)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t79, ptr %l33
  br label %bb16
bb16:
  %t80 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l33
  %t81 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 18
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t80, ptr %t81
  %t82 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 19
  %t84 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t82)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t84, ptr %l35
  br label %bb17
bb17:
  %t85 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l35
  %t86 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 19
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t85, ptr %t86
  %t87 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 20
  %t89 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t87)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t89, ptr %l37
  br label %bb18
bb18:
  %t90 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l37
  %t91 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 20
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t90, ptr %t91
  %t92 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 21
  %t94 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cBool_3e(ptr %v0, ptr %t92)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t94, ptr %l39
  br label %bb19
bb19:
  %t95 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l39
  %t96 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 21
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t95, ptr %t96
  %t97 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 22
  %t99 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t97)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t99, ptr %l41
  br label %bb20
bb20:
  %t100 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l41
  %t101 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 22
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t100, ptr %t101
  %t102 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 24
  %t104 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t102)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t104, ptr %l43
  br label %bb21
bb21:
  %t105 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l43
  %t106 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 24
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t105, ptr %t106
  %t107 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 25
  %t109 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t107)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t109, ptr %l45
  br label %bb22
bb22:
  %t110 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l45
  %t111 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 25
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t110, ptr %t111
  %t112 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 31
  %t114 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Array_3ccompiler_2ftyped_3aBlockId_3e_3e(ptr %v0, ptr %t112)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t114, ptr %l47
  br label %bb23
bb23:
  %t115 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l47
  %t116 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 31
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t115, ptr %t116
  %t117 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 32
  %t119 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_H90251316700b89c67e565c550ab10b7e(ptr %v0, ptr %t117)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t119, ptr %l49
  br label %bb24
bb24:
  %t120 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l49
  %t121 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 32
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t120, ptr %t121
  %t122 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 33
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2ftyped_3aPlan(ptr %t123, ptr %v0, ptr %t122)
  call void @llvm.memmove.p0.p0.i64(ptr %l51, ptr %t123, i64 536, i1 false)
  br label %bb25
bb25:
  %t125 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 33
  call void @llvm.memmove.p0.p0.i64(ptr %t125, ptr %l51, i64 536, i1 false)
  %t126 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 34
  %t128 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t126)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t128, ptr %l53
  br label %bb26
bb26:
  %t129 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l53
  %t130 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 34
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t129, ptr %t130
  %t131 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 35
  %t133 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t131)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t133, ptr %l55
  br label %bb27
bb27:
  %t134 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l55
  %t135 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 35
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t134, ptr %t135
  %t136 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 36
  %t138 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %v0, ptr %t136)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t138, ptr %l57
  br label %bb28
bb28:
  %t139 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l57
  %t140 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 36
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t139, ptr %t140
  %t141 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 37
  %t143 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %t141)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t143, ptr %l59
  br label %bb29
bb29:
  %t144 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l59
  %t145 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 37
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t144, ptr %t145
  %t146 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 38
  %t148 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %t146)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t148, ptr %l61
  br label %bb30
bb30:
  %t149 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l61
  %t150 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 38
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t149, ptr %t150
  %t151 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 39
  %t153 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t151)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t153, ptr %l63
  br label %bb31
bb31:
  %t154 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l63
  %t155 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 39
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t154, ptr %t155
  %t156 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 40
  %t158 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t156)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t158, ptr %l65
  br label %bb32
bb32:
  %t159 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l65
  %t160 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 40
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t159, ptr %t160
  %t161 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 43
  %t163 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t161)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t163, ptr %l67
  br label %bb33
bb33:
  %t164 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l67
  %t165 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 43
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t164, ptr %t165
  %t166 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 44
  %t168 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3aTerm_3e(ptr %v0, ptr %t166)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t168, ptr %l69
  br label %bb34
bb34:
  %t169 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l69
  %t170 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 44
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t169, ptr %t170
  %t171 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 45
  %t173 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t171)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t173, ptr %l71
  br label %bb35
bb35:
  %t174 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l71
  %t175 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 45
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t174, ptr %t175
  %t176 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 46
  %t178 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %v0, ptr %t176)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t178, ptr %l73
  br label %bb36
bb36:
  %t179 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l73
  %t180 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 46
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t179, ptr %t180
  %t181 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 47
  %t183 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t181)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t183, ptr %l75
  br label %bb37
bb37:
  %t184 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l75
  %t185 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 47
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t184, ptr %t185
  %t186 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 48
  %t188 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t186)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t188, ptr %l77
  br label %bb38
bb38:
  %t189 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l77
  %t190 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 48
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t189, ptr %t190
  %t191 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 49
  %t193 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %v0, ptr %t191)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t193, ptr %l79
  br label %bb39
bb39:
  %t194 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l79
  %t195 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 49
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t194, ptr %t195
  %t196 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 50
  %t198 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e(ptr %v0, ptr %t196)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t198, ptr %l81
  br label %bb40
bb40:
  %t199 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l81
  %t200 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 50
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t199, ptr %t200
  %t201 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 53
  %t203 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fv_H7ef236450d3feb960a8cf3e06f49bf11(ptr %v0, ptr %t201)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t203, ptr %l83
  br label %bb41
bb41:
  %t204 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l83
  %t205 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 53
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t204, ptr %t205
  %t206 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 54
  %t208 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %v0, ptr %t206)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t208, ptr %l85
  br label %bb42
bb42:
  %t209 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l85
  %t210 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 54
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t209, ptr %t210
  %t211 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 55
  %t213 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %v0, ptr %t211)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t213, ptr %l87
  br label %bb43
bb43:
  %t214 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l87
  %t215 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 55
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t214, ptr %t215
  %t216 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 58
  %t218 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t216)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t218, ptr %l89
  br label %bb44
bb44:
  %t219 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l89
  %t220 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 58
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t219, ptr %t220
  %t221 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 60
  %t223 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e(ptr %v0, ptr %t221)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t223, ptr %l91
  br label %bb45
bb45:
  %t224 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l91
  %t225 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 60
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t224, ptr %t225
  %t226 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 61
  %t228 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cBool_3e(ptr %v0, ptr %t226)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t228, ptr %l93
  br label %bb46
bb46:
  %t229 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l93
  %t230 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 61
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t229, ptr %t230
  %t231 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 62
  %t233 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cBool_3e(ptr %v0, ptr %t231)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t233, ptr %l95
  br label %bb47
bb47:
  %t234 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l95
  %t235 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 62
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t234, ptr %t235
  %t236 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 66
  %t238 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t236)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t238, ptr %l97
  br label %bb48
bb48:
  %t239 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l97
  %t240 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 66
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t239, ptr %t240
  %t241 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 67
  %t243 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t241)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t243, ptr %l99
  br label %bb49
bb49:
  %t244 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l99
  %t245 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 67
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t244, ptr %t245
  %t246 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 68
  %t248 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t246)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t248, ptr %l101
  br label %bb50
bb50:
  %t249 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l101
  %t250 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 68
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t249, ptr %t250
  %t251 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 69
  %t253 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cBool_3e(ptr %v0, ptr %t251)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t253, ptr %l103
  br label %bb51
bb51:
  %t254 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l103
  %t255 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 69
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t254, ptr %t255
  %t256 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 71
  %t258 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %v0, ptr %t256)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t258, ptr %l105
  br label %bb52
bb52:
  %t259 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l105
  %t260 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 71
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t259, ptr %t260
  %t261 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 73
  %t263 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3aTerm_3e(ptr %v0, ptr %t261)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t263, ptr %l107
  br label %bb53
bb53:
  %t264 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l107
  %t265 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 73
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t264, ptr %t265
  %t266 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 75
  %t268 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %v0, ptr %t266)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t268, ptr %l109
  br label %bb54
bb54:
  %t269 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l109
  %t270 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 75
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t269, ptr %t270
  %t271 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 81
  %t273 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %t271)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t273, ptr %l111
  br label %bb55
bb55:
  %t274 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l111
  %t275 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 81
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t274, ptr %t275
  %t276 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 92
  %t278 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fv_H7ef236450d3feb960a8cf3e06f49bf11(ptr %v0, ptr %t276)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t278, ptr %l113
  br label %bb56
bb56:
  %t279 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l113
  %t280 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 92
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t279, ptr %t280
  %t281 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 93
  %t283 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3afnRecs_3e(ptr %v0, ptr %t281)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t283, ptr %l115
  br label %bb57
bb57:
  %t284 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l115
  %t285 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 93
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t284, ptr %t285
  %t286 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 94
  %t288 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3afnRecs_3e(ptr %v0, ptr %t286)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t288, ptr %l117
  br label %bb58
bb58:
  %t289 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l117
  %t290 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 94
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t289, ptr %t290
  %t291 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 95
  %t293 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3afnRecs_3e(ptr %v0, ptr %t291)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t293, ptr %l119
  br label %bb59
bb59:
  %t294 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l119
  %t295 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 95
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t294, ptr %t295
  %t296 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 96
  %t298 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3afnRecs_3e(ptr %v0, ptr %t296)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t298, ptr %l121
  br label %bb60
bb60:
  %t299 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l121
  %t300 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 96
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t299, ptr %t300
  %t301 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 97
  %t303 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fv_H09c3079d182b8cef4a686eac89911323(ptr %v0, ptr %t301)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t303, ptr %l123
  br label %bb61
bb61:
  %t304 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l123
  %t305 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 97
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t304, ptr %t305
  %t306 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 98
  %t308 = call %"compiler/scope:fnRecs" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRecs(ptr %v0, ptr %t306)
  store %"compiler/scope:fnRecs" %t308, ptr %l125
  br label %bb62
bb62:
  %t309 = load %"compiler/scope:fnRecs", ptr %l125
  %t310 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 98
  store %"compiler/scope:fnRecs" %t309, ptr %t310
  %t311 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 102
  %t313 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fv_H1486ed990d77c8f720439dfec9d6318c(ptr %v0, ptr %t311)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t313, ptr %l127
  br label %bb63
bb63:
  %t314 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l127
  %t315 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 102
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t314, ptr %t315
  %t316 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 103
  %t318 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %v0, ptr %t316)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t318, ptr %l129
  br label %bb64
bb64:
  %t319 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l129
  %t320 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 103
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t319, ptr %t320
  %t321 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 107
  %t323 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cBool_3e(ptr %v0, ptr %t321)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t323, ptr %l131
  br label %bb65
bb65:
  %t324 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l131
  %t325 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 107
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t324, ptr %t325
  %t326 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 108
  %t328 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cBool_3e(ptr %v0, ptr %t326)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t328, ptr %l133
  br label %bb66
bb66:
  %t329 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l133
  %t330 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 108
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t329, ptr %t330
  %t331 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 109
  %t333 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cBool_3e(ptr %v0, ptr %t331)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t333, ptr %l135
  br label %bb67
bb67:
  %t334 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l135
  %t335 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 109
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t334, ptr %t335
  %t336 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 110
  %t338 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t336)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t338, ptr %l137
  br label %bb68
bb68:
  %t339 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l137
  %t340 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 110
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t339, ptr %t340
  %t341 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 111
  %t343 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cBool_3e(ptr %v0, ptr %t341)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t343, ptr %l139
  br label %bb69
bb69:
  %t344 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l139
  %t345 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 111
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t344, ptr %t345
  %t346 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 112
  %t348 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t346)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t348, ptr %l141
  br label %bb70
bb70:
  %t349 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l141
  %t350 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 112
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t349, ptr %t350
  %t351 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 113
  %t353 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3aTerm_3e(ptr %v0, ptr %t351)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t353, ptr %l143
  br label %bb71
bb71:
  %t354 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l143
  %t355 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 113
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t354, ptr %t355
  %t356 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 114
  %t358 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3aTerm_3e(ptr %v0, ptr %t356)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t358, ptr %l145
  br label %bb72
bb72:
  %t359 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l145
  %t360 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 114
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t359, ptr %t360
  %t361 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 116
  %t363 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %v0, ptr %t361)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t363, ptr %l147
  br label %bb73
bb73:
  %t364 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l147
  %t365 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 116
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t364, ptr %t365
  %t366 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 117
  %t368 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20I64_3e(ptr %v0, ptr %t366)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t368, ptr %l149
  br label %bb74
bb74:
  %t369 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l149
  %t370 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 117
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t369, ptr %t370
  %t371 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 118
  %t373 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20I64_3e(ptr %v0, ptr %t371)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t373, ptr %l151
  br label %bb75
bb75:
  %t374 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l151
  %t375 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 118
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t374, ptr %t375
  %t376 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 119
  %t378 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_Hdb5ecd177dbbe8266fbcd9adcd3a6e46(ptr %v0, ptr %t376)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t378, ptr %l153
  br label %bb76
bb76:
  %t379 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l153
  %t380 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 119
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t379, ptr %t380
  %t381 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 121
  %t383 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t381)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t383, ptr %l155
  br label %bb77
bb77:
  %t384 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l155
  %t385 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 121
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t384, ptr %t385
  %t386 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 122
  %t388 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t386)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t388, ptr %l157
  br label %bb78
bb78:
  %t389 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l157
  %t390 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 122
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t389, ptr %t390
  %t391 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 123
  %t393 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI64_3e_3e(ptr %v0, ptr %t391)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t393, ptr %l159
  br label %bb79
bb79:
  %t394 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l159
  %t395 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 123
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t394, ptr %t395
  %t396 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 129
  %t398 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t396)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t398, ptr %l161
  br label %bb80
bb80:
  %t399 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l161
  %t400 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 129
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t399, ptr %t400
  %t401 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 134
  %t403 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t401)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t403, ptr %l163
  br label %bb81
bb81:
  %t404 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l163
  %t405 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 134
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t404, ptr %t405
  %t406 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 135
  %t408 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t406)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t408, ptr %l165
  br label %bb82
bb82:
  %t409 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l165
  %t410 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 135
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t409, ptr %t410
  %t411 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 149
  %t413 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_Haa0337ae63b732d75ee2e0a37f501ff2(ptr %v0, ptr %t411)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t413, ptr %l167
  br label %bb83
bb83:
  %t414 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l167
  %t415 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 149
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t414, ptr %t415
  %t416 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 150
  %t418 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_Haa0337ae63b732d75ee2e0a37f501ff2(ptr %v0, ptr %t416)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t418, ptr %l169
  br label %bb84
bb84:
  %t419 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l169
  %t420 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 150
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t419, ptr %t420
  %t421 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 151
  %t423 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e(ptr %v0, ptr %t421)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t423, ptr %l171
  br label %bb85
bb85:
  %t424 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l171
  %t425 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 151
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t424, ptr %t425
  %t426 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 152
  %t428 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_Haa0337ae63b732d75ee2e0a37f501ff2(ptr %v0, ptr %t426)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t428, ptr %l173
  br label %bb86
bb86:
  %t429 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l173
  %t430 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 152
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t429, ptr %t430
  %t431 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 153
  %t433 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20I64_3e(ptr %v0, ptr %t431)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t433, ptr %l175
  br label %bb87
bb87:
  %t434 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l175
  %t435 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 153
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t434, ptr %t435
  %t436 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 154
  %t438 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %v0, ptr %t436)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t438, ptr %l177
  br label %bb88
bb88:
  %t439 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l177
  %t440 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 154
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t439, ptr %t440
  %t441 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 155
  %t443 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e(ptr %v0, ptr %t441)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t443, ptr %l179
  br label %bb89
bb89:
  %t444 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l179
  %t445 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 155
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t444, ptr %t445
  %t446 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 156
  %t448 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e(ptr %v0, ptr %t446)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t448, ptr %l181
  br label %bb90
bb90:
  %t449 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l181
  %t450 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 156
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t449, ptr %t450
  %t451 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 158
  %t453 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20I64_3e(ptr %v0, ptr %t451)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t453, ptr %l183
  br label %bb91
bb91:
  %t454 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l183
  %t455 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 158
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t454, ptr %t455
  %t456 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 160
  %t458 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aVersions_26_3e(ptr %v0, ptr %t456)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t458, ptr %l185
  br label %bb92
bb92:
  %t459 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l185
  %t460 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 160
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t459, ptr %t460
  %t461 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 161
  %t463 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %v0, ptr %t461)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t463, ptr %l187
  br label %bb93
bb93:
  %t464 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l187
  %t465 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 161
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t464, ptr %t465
  %t466 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 162
  %t468 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t466)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t468, ptr %l189
  br label %bb94
bb94:
  %t469 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l189
  %t470 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 162
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t469, ptr %t470
  %t471 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 163
  %t473 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t471)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t473, ptr %l191
  br label %bb95
bb95:
  %t474 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l191
  %t475 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 163
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t474, ptr %t475
  %t476 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 164
  %t478 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t476)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t478, ptr %l193
  br label %bb96
bb96:
  %t479 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l193
  %t480 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 164
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t479, ptr %t480
  %t481 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 165
  %t483 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cBool_3e(ptr %v0, ptr %t481)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t483, ptr %l195
  br label %bb97
bb97:
  %t484 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l195
  %t485 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 165
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t484, ptr %t485
  %t486 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 166
  %t488 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t486)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t488, ptr %l197
  br label %bb98
bb98:
  %t489 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l197
  %t490 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 166
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t489, ptr %t490
  %t491 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 167
  %t493 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t491)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t493, ptr %l199
  br label %bb99
bb99:
  %t494 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l199
  %t495 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 167
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t494, ptr %t495
  %t496 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 168
  %t498 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t496)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t498, ptr %l201
  br label %bb100
bb100:
  %t499 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l201
  %t500 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 168
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t499, ptr %t500
  %t501 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 169
  %t503 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3averAtom_3e(ptr %v0, ptr %t501)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t503, ptr %l203
  br label %bb101
bb101:
  %t504 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l203
  %t505 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 169
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t504, ptr %t505
  %t506 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 170
  %t508 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_H02d7c113dc0c806945ae5d5c07175526(ptr %v0, ptr %t506)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t508, ptr %l205
  br label %bb102
bb102:
  %t509 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l205
  %t510 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 170
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t509, ptr %t510
  %t511 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 171
  %t513 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_Haa0337ae63b732d75ee2e0a37f501ff2(ptr %v0, ptr %t511)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t513, ptr %l207
  br label %bb103
bb103:
  %t514 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l207
  %t515 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 171
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t514, ptr %t515
  %t516 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 172
  %t518 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %v0, ptr %t516)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t518, ptr %l209
  br label %bb104
bb104:
  %t519 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l209
  %t520 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 172
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t519, ptr %t520
  %t521 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 174
  %t523 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t521)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t523, ptr %l211
  br label %bb105
bb105:
  %t524 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l211
  %t525 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 174
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t524, ptr %t525
  %t526 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 175
  %t528 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %t526)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t528, ptr %l213
  br label %bb106
bb106:
  %t529 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l213
  %t530 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 175
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t529, ptr %t530
  %t531 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 176
  %t533 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cBool_3e(ptr %v0, ptr %t531)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t533, ptr %l215
  br label %bb107
bb107:
  %t534 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l215
  %t535 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 176
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t534, ptr %t535
  %t536 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 177
  %t538 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e(ptr %v0, ptr %t536)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t538, ptr %l217
  br label %bb108
bb108:
  %t539 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l217
  %t540 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 177
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t539, ptr %t540
  %t541 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 179
  %t543 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t541)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t543, ptr %l219
  br label %bb109
bb109:
  %t544 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l219
  %t545 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 179
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t544, ptr %t545
  %t546 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 180
  %t548 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t546)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t548, ptr %l221
  br label %bb110
bb110:
  %t549 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l221
  %t550 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 180
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t549, ptr %t550
  %t551 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 181
  %t553 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t551)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t553, ptr %l223
  br label %bb111
bb111:
  %t554 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l223
  %t555 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 181
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t554, ptr %t555
  %t556 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 182
  %t558 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cBool_3e(ptr %v0, ptr %t556)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t558, ptr %l225
  br label %bb112
bb112:
  %t559 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l225
  %t560 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 182
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t559, ptr %t560
  %t561 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 183
  %t563 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t561)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t563, ptr %l227
  br label %bb113
bb113:
  %t564 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l227
  %t565 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 183
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t564, ptr %t565
  %t566 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 186
  %t568 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fscope_3averAtom_2c_20I64_3e(ptr %v0, ptr %t566)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t568, ptr %l229
  br label %bb114
bb114:
  %t569 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l229
  %t570 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 186
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t569, ptr %t570
  %t571 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 187
  %t573 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %v0, ptr %t571)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t573, ptr %l231
  br label %bb115
bb115:
  %t574 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l231
  %t575 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 187
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t574, ptr %t575
  %t576 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 188
  %t578 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3aTerm_3e(ptr %v0, ptr %t576)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t578, ptr %l233
  br label %bb116
bb116:
  %t579 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l233
  %t580 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 188
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t579, ptr %t580
  %t581 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 189
  %t583 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %v0, ptr %t581)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t583, ptr %l235
  br label %bb117
bb117:
  %t584 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l235
  %t585 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 189
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t584, ptr %t585
  %t586 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 192
  %t588 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %v0, ptr %t586)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t588, ptr %l237
  br label %bb118
bb118:
  %t589 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l237
  %t590 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 192
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t589, ptr %t590
  %t591 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 193
  %t593 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %v0, ptr %t591)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t593, ptr %l239
  br label %bb119
bb119:
  %t594 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l239
  %t595 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 193
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t594, ptr %t595
  %t596 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 194
  %t598 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t596)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t598, ptr %l241
  br label %bb120
bb120:
  %t599 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l241
  %t600 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 194
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t599, ptr %t600
  %t601 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 195
  %t603 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t601)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t603, ptr %l243
  br label %bb121
bb121:
  %t604 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l243
  %t605 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 195
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t604, ptr %t605
  %t606 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 216
  %t608 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_H33ad8677ba7b567a135a5f5a3960fb01(ptr %v0, ptr %t606)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t608, ptr %l245
  br label %bb122
bb122:
  %t609 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l245
  %t610 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 216
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t609, ptr %t610
  %t611 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 219
  %t613 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t611)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t613, ptr %l247
  br label %bb123
bb123:
  %t614 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l247
  %t615 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 219
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t614, ptr %t615
  %t616 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 221
  %t618 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %v0, ptr %t616)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t618, ptr %l249
  br label %bb124
bb124:
  %t619 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l249
  %t620 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 221
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t619, ptr %t620
  %t621 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 222
  %t623 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e(ptr %v0, ptr %t621)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t623, ptr %l251
  br label %bb125
bb125:
  %t624 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l251
  %t625 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 222
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t624, ptr %t625
  %t626 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 223
  %t628 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20I64_3e(ptr %v0, ptr %t626)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t628, ptr %l253
  br label %bb126
bb126:
  %t629 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l253
  %t630 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 223
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t629, ptr %t630
  %t631 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 224
  %t633 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e(ptr %v0, ptr %t631)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t633, ptr %l255
  br label %bb127
bb127:
  %t634 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l255
  %t635 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 224
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t634, ptr %t635
  %t636 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 225
  %t638 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %t636)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t638, ptr %l257
  br label %bb128
bb128:
  %t639 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l257
  %t640 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 225
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t639, ptr %t640
  %t641 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 228
  %t642 = load { i64, ptr }, ptr %t641, !tbaa !27
  store { i64, ptr } %t642, ptr %l258, !tbaa !27
  %t643 = load { i64, ptr }, ptr %l258, !tbaa !27
  %t644 = extractvalue { i64, ptr } %t643, 0
  store i64 %t644, ptr %l259, !tbaa !24
  %t645 = load i64, ptr %l259, !tbaa !24
  %t646 = mul i64 %t645, 1
  %t647 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t646)
  %t648 = insertvalue { i64, ptr } undef, i64 %t645, 0
  %t649 = insertvalue { i64, ptr } %t648, ptr %t647, 1
  store { i64, ptr } %t649, ptr %l260, !tbaa !27
  %t650 = getelementptr { i64, ptr }, ptr %l260, i32 0, i32 1
  %t651 = load ptr, ptr %t650, !tbaa !27
  %t652 = getelementptr { i64, ptr }, ptr %l258, i32 0, i32 1
  %t653 = load ptr, ptr %t652, !tbaa !27
  %t654 = load i64, ptr %l259, !tbaa !24
  %t655 = mul i64 %t654, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t651, ptr %t653, i64 %t655, i1 false)
  %t656 = load { i64, ptr }, ptr %l260, !tbaa !27
  %t657 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 228
  store { i64, ptr } %t656, ptr %t657, !tbaa !27
  %t658 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 231
  %t660 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3afnRecs_3e(ptr %v0, ptr %t658)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t660, ptr %l262
  br label %bb129
bb129:
  %t661 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l262
  %t662 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 231
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t661, ptr %t662
  %t663 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 232
  %t665 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %v0, ptr %t663)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t665, ptr %l264
  br label %bb130
bb130:
  %t666 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l264
  %t667 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 232
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t666, ptr %t667
  %t668 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 233
  %t670 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %v0, ptr %t668)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t670, ptr %l266
  br label %bb131
bb131:
  %t671 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l266
  %t672 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 233
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t671, ptr %t672
  %t673 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 234
  %t675 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e(ptr %v0, ptr %t673)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t675, ptr %l268
  br label %bb132
bb132:
  %t676 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l268
  %t677 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 234
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t676, ptr %t677
  %t678 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 235
  %t680 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Array_3ccompiler_2ftyped_3aCapture_26_3e_3e(ptr %v0, ptr %t678)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t680, ptr %l270
  br label %bb133
bb133:
  %t681 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l270
  %t682 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 235
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t681, ptr %t682
  %t683 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 236
  %t685 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t683)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t685, ptr %l272
  br label %bb134
bb134:
  %t686 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l272
  %t687 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 236
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t686, ptr %t687
  %t688 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 239
  %t690 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_H914f32a339b5444c6d16c69a20d2d561(ptr %v0, ptr %t688)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t690, ptr %l274
  br label %bb135
bb135:
  %t691 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l274
  %t692 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 239
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t691, ptr %t692
  %t693 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 240
  %t695 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e(ptr %v0, ptr %t693)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t695, ptr %l276
  br label %bb136
bb136:
  %t696 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l276
  %t697 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 240
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t696, ptr %t697
  %t698 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 241
  %t700 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %v0, ptr %t698)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t700, ptr %l278
  br label %bb137
bb137:
  %t701 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l278
  %t702 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 241
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t701, ptr %t702
  %t703 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 242
  %t705 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %v0, ptr %t703)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t705, ptr %l280
  br label %bb138
bb138:
  %t706 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l280
  %t707 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 242
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t706, ptr %t707
  %t708 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 249
  %t710 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec__H3d323b423d49e8dd9f04e04715566ac1(ptr %v0, ptr %t708)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t710, ptr %l282
  br label %bb139
bb139:
  %t711 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l282
  %t712 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 249
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t711, ptr %t712
  %t713 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 250
  %t715 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_Hf0da9692a6959d4aeac270438b2ff1fc(ptr %v0, ptr %t713)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t715, ptr %l284
  br label %bb140
bb140:
  %t716 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l284
  %t717 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 250
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t716, ptr %t717
  %t718 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 251
  %t720 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %v0, ptr %t718)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t720, ptr %l286
  br label %bb141
bb141:
  %t721 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l286
  %t722 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 251
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t721, ptr %t722
  %t723 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 252
  %t725 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t723)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t725, ptr %l288
  br label %bb142
bb142:
  %t726 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l288
  %t727 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 252
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t726, ptr %t727
  %t728 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 253
  %t730 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e(ptr %v0, ptr %t728)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t730, ptr %l290
  br label %bb143
bb143:
  %t731 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l290
  %t732 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 253
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t731, ptr %t732
  %t733 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 254
  %t735 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t733)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t735, ptr %l292
  br label %bb144
bb144:
  %t736 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l292
  %t737 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 254
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t736, ptr %t737
  %t738 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 255
  %t740 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e(ptr %v0, ptr %t738)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t740, ptr %l294
  br label %bb145
bb145:
  %t741 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l294
  %t742 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 255
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t741, ptr %t742
  %t743 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 256
  %t745 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %t743)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t745, ptr %l296
  br label %bb146
bb146:
  %t746 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l296
  %t747 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 256
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t746, ptr %t747
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l1, i64 8968, i1 false)
  br label %ret
ret:
  ret void
}

define internal { i64, ptr } @olang_lambda_11(ptr %env, ptr %v0, i64 %a0) #0 {
entry:
  %l1 = alloca ptr
  %l6 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  %cp0 = getelementptr { ptr, ptr }, ptr %env, i32 0, i32 0
  %cv0 = load ptr, ptr %cp0, !tbaa !28
  store ptr %cv0, ptr %l1
  %vq0 = getelementptr { ptr, ptr }, ptr %env, i32 0, i32 1
  %vr0 = load ptr, ptr %vq0, !tbaa !28
  %vc0 = call ptr @__olang_capture_scope(ptr %vr0)
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  call void @__olang_check_failed(ptr @olang_loc_51582b1a0e30bcb1_9563e8081c953955)
  unreachable
bb2:
  br label %bb3
bb3:
  %t5 = load ptr, ptr %l1, !tbaa !29
  %t9 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eInstNote(ptr %vc0, ptr %v0, ptr %t5, i64 %a0)
  store { i64, ptr } %t9, ptr %l6
  br label %bb4
bb4:
  %t10 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t10, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define internal { i64, ptr } @olang_lambda_12(ptr %env, ptr %v0, i32 %a0) #0 {
entry:
  %l1 = alloca ptr
  %l6 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  %cp0 = getelementptr { ptr, ptr }, ptr %env, i32 0, i32 0
  %cv0 = load ptr, ptr %cp0, !tbaa !28
  store ptr %cv0, ptr %l1
  %vq0 = getelementptr { ptr, ptr }, ptr %env, i32 0, i32 1
  %vr0 = load ptr, ptr %vq0, !tbaa !28
  %vc0 = call ptr @__olang_capture_scope(ptr %vr0)
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  call void @__olang_check_failed(ptr @olang_loc_53726bd6cca5663f_63c9f91772010c1b)
  unreachable
bb2:
  br label %bb3
bb3:
  %t5 = load ptr, ptr %l1, !tbaa !29
  %t9 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eTy(ptr %vc0, ptr %v0, ptr %t5, i32 %a0)
  store { i64, ptr } %t9, ptr %l6
  br label %bb4
bb4:
  %t10 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t10, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

@.d13 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"held to section 8 in " }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d14 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" ms" }>, align 8
@olang_2esole_2ecompiler_2finterp_3aExec_2e10 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %a0
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2, ptr %l1
  %t3 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 0
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
  %t19 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 0
  store { i64, ptr } %t18, ptr %t19, !tbaa !27
  %t20 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 1
  %t21 = load { i64, ptr }, ptr %t20, !tbaa !27
  store { i64, ptr } %t21, ptr %l5, !tbaa !27
  %t22 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t23 = extractvalue { i64, ptr } %t22, 0
  store i64 %t23, ptr %l6, !tbaa !24
  %t24 = load i64, ptr %l6, !tbaa !24
  %t25 = mul i64 %t24, 8
  %t26 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t25)
  %t27 = insertvalue { i64, ptr } undef, i64 %t24, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t26, 1
  store { i64, ptr } %t28, ptr %l7, !tbaa !27
  %t29 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !27
  %t31 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !27
  %t33 = load i64, ptr %l6, !tbaa !24
  %t34 = mul i64 %t33, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t30, ptr %t32, i64 %t34, i1 false)
  %t35 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t36 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 1
  store { i64, ptr } %t35, ptr %t36, !tbaa !27
  %t37 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 2
  %t38 = load { i64, ptr }, ptr %t37, !tbaa !27
  store { i64, ptr } %t38, ptr %l8, !tbaa !27
  %t39 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t40 = extractvalue { i64, ptr } %t39, 0
  store i64 %t40, ptr %l9, !tbaa !24
  %t41 = load i64, ptr %l9, !tbaa !24
  %t42 = mul i64 %t41, 8
  %t43 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t42)
  %t44 = insertvalue { i64, ptr } undef, i64 %t41, 0
  %t45 = insertvalue { i64, ptr } %t44, ptr %t43, 1
  store { i64, ptr } %t45, ptr %l10, !tbaa !27
  %t46 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !27
  %t48 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !27
  %t50 = load i64, ptr %l9, !tbaa !24
  %t51 = mul i64 %t50, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t47, ptr %t49, i64 %t51, i1 false)
  %t52 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t53 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 2
  store { i64, ptr } %t52, ptr %t53, !tbaa !27
  %t54 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t54, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %rv
  ret %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %rr
}

declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
declare void @__olang_region_drop(ptr) noinline
@.d15 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d16 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d17 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d18 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d19 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d20 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"std/" }>, align 8
@.d21 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d22 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c".olang" }>, align 8
declare i32 @waitpid(i32, ptr, i32)
@.d23 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"\5C\22" }>, align 8
@.d24 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"\5C\5C" }>, align 8
@.d25 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"\5Cn" }>, align 8
@.d26 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"\5Cr" }>, align 8
@.d27 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"\5Ct" }>, align 8
@.d28 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"\5Cu00" }>, align 8
@.d29 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"0123456789abcdef" }>, align 8
@.d30 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"0123456789abcdef" }>, align 8
declare i32 @kill(i32, i32)
@.d31 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d32 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d33 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"std/" }>, align 8
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_2c_202_3e_2e_2d1 = weak hidden constant i1 false
@.d34 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c".olang" }>, align 8
@.d35 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c".olang" }>, align 8
@__olang_prog_scope = external thread_local(initialexec) global ptr
@.d36 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2estd_2fprelude_2ftext_3aLineIter_2e0 = weak hidden constant i1 false
@.d37 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2fsession_3amemberInfo_2e2 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fsession_3amemberInfo_2e3 = weak hidden constant i1 false
@.d38 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"$" }>, align 8
@.d39 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d40 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"@" }>, align 8
@.d41 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d42 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d43 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"{\22label\22:" }>, align 8
@.d44 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c",\22kind\22:" }>, align 8
@.d45 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d46 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c",\22detail\22:" }>, align 8
@.d47 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c",\22tags\22:[1]" }>, align 8
declare i64 @read(i32, ptr, i64)
@.d48 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"content-length:" }>, align 8
@.d49 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare ptr @__olang_scope_of(ptr, ptr) noinline
@.d50 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d51 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"]}" }>, align 8
@.d52 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d53 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"error" }>, align 8
@.d54 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d55 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"]}" }>, align 8
@.d56 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"test " }>, align 8
@.d57 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d58 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"]}" }>, align 8
@.d59 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"{\22name\22:" }>, align 8
@.d60 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d61 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"?" }>, align 8
@.d62 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c",\22kind\22:" }>, align 8
@.d63 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c",\22range\22:" }>, align 8
@.d64 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c",\22selectionRange\22:" }>, align 8
@.d65 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d66 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c",\22detail\22:" }>, align 8
@.d67 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c",\22children\22:[" }>, align 8
@.d68 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d69 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"olang: " }>, align 8
@.d70 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c": cannot be written\0A" }>, align 8
@.d71 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d72 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"\0A\0AExample: " }>, align 8
@.d73 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"\0A```olang\0A" }>, align 8
@.d74 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"\0A```" }>, align 8
@.d75 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d76 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"s" }>, align 8
@.d77 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"\0A\0A+" }>, align 8
@.d78 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c" more test" }>, align 8
define linkonce_odr i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2ftypes_3aKind(ptr %a0, ptr %a1) #0 {
entry:
  %l2 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store i1 true, ptr %l2, !tbaa !21
  %t2 = load i32, ptr %a0, !range !{i32 0, i32 33}
  %t3 = sext i32 %t2 to i64
  %t5 = load i32, ptr %a1, !range !{i32 0, i32 33}
  %t6 = sext i32 %t5 to i64
  %t9 = icmp eq i64 %t3, %t6
  br i1 %t9, label %bb2, label %bb1
bb1:
  store i1 false, ptr %l2, !tbaa !21
  br label %bb3
bb2:
  br label %bb3
bb3:
  %t11 = load i1, ptr %l2, !tbaa !21
  store i1 %t11, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

@olang_2esole_2ecompiler_2fsession_3aItems_2e0 = weak hidden constant i1 false
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

@olang_2esole_2ecompiler_2fsession_3aItems_2e2 = weak hidden constant i1 false
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
@__olang_self = external thread_local(initialexec) global ptr
define available_externally ptr @__olang_capture_scope(ptr %s) alwaysinline {
entry:
  %isprog = icmp eq ptr %s, null
  br i1 %isprog, label %prog, label %mine
prog:
  %p = load ptr, ptr @__olang_prog_scope
  ret ptr %p
mine:
  %m = call ptr @__olang_scope_mine(ptr %s)
  ret ptr %m
}
define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e(ptr %v0, ptr %a0) #0 {
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
  %t6 = call { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3ccompiler_2ftyped_3aPlan_3e(ptr %v0, { i64, ptr } %t4)
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aGap_3e(ptr %v0, ptr %a0) #0 {
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
  %t8 = mul i64 %t7, 32
  %t9 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t8)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t9, 1
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  %t12 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t17 = mul i64 %t16, 32
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %a0
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2, ptr %l1
  %t3 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 0
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
  %t19 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 0
  store { i64, ptr } %t18, ptr %t19, !tbaa !27
  %t20 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 1
  %t21 = load { i64, ptr }, ptr %t20, !tbaa !27
  store { i64, ptr } %t21, ptr %l5, !tbaa !27
  %t22 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t23 = extractvalue { i64, ptr } %t22, 0
  store i64 %t23, ptr %l6, !tbaa !24
  %t24 = load i64, ptr %l6, !tbaa !24
  %t25 = mul i64 %t24, 8
  %t26 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t25)
  %t27 = insertvalue { i64, ptr } undef, i64 %t24, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t26, 1
  store { i64, ptr } %t28, ptr %l7, !tbaa !27
  %t29 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !27
  %t31 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !27
  %t33 = load i64, ptr %l6, !tbaa !24
  %t34 = mul i64 %t33, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t30, ptr %t32, i64 %t34, i1 false)
  %t35 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t36 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 1
  store { i64, ptr } %t35, ptr %t36, !tbaa !27
  %t37 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 2
  %t38 = load { i64, ptr }, ptr %t37, !tbaa !27
  store { i64, ptr } %t38, ptr %l8, !tbaa !27
  %t39 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t40 = extractvalue { i64, ptr } %t39, 0
  store i64 %t40, ptr %l9, !tbaa !24
  %t41 = load i64, ptr %l9, !tbaa !24
  %t42 = mul i64 %t41, 8
  %t43 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t42)
  %t44 = insertvalue { i64, ptr } undef, i64 %t41, 0
  %t45 = insertvalue { i64, ptr } %t44, ptr %t43, 1
  store { i64, ptr } %t45, ptr %l10, !tbaa !27
  %t46 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !27
  %t48 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !27
  %t50 = load i64, ptr %l9, !tbaa !24
  %t51 = mul i64 %t50, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t47, ptr %t49, i64 %t51, i1 false)
  %t52 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t53 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 2
  store { i64, ptr } %t52, ptr %t53, !tbaa !27
  %t54 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t54, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %rv
  ret %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %rr
}

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20I64_3e(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %a0
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2, ptr %l1
  %t3 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 0
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
  %t19 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 0
  store { i64, ptr } %t18, ptr %t19, !tbaa !27
  %t20 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 1
  %t21 = load { i64, ptr }, ptr %t20, !tbaa !27
  store { i64, ptr } %t21, ptr %l5, !tbaa !27
  %t22 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t23 = extractvalue { i64, ptr } %t22, 0
  store i64 %t23, ptr %l6, !tbaa !24
  %t24 = load i64, ptr %l6, !tbaa !24
  %t25 = mul i64 %t24, 8
  %t26 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t25)
  %t27 = insertvalue { i64, ptr } undef, i64 %t24, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t26, 1
  store { i64, ptr } %t28, ptr %l7, !tbaa !27
  %t29 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !27
  %t31 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !27
  %t33 = load i64, ptr %l6, !tbaa !24
  %t34 = mul i64 %t33, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t30, ptr %t32, i64 %t34, i1 false)
  %t35 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t36 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 1
  store { i64, ptr } %t35, ptr %t36, !tbaa !27
  %t37 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 2
  %t38 = load { i64, ptr }, ptr %t37, !tbaa !27
  store { i64, ptr } %t38, ptr %l8, !tbaa !27
  %t39 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t40 = extractvalue { i64, ptr } %t39, 0
  store i64 %t40, ptr %l9, !tbaa !24
  %t41 = load i64, ptr %l9, !tbaa !24
  %t42 = mul i64 %t41, 8
  %t43 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t42)
  %t44 = insertvalue { i64, ptr } undef, i64 %t41, 0
  %t45 = insertvalue { i64, ptr } %t44, ptr %t43, 1
  store { i64, ptr } %t45, ptr %l10, !tbaa !27
  %t46 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !27
  %t48 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !27
  %t50 = load i64, ptr %l9, !tbaa !24
  %t51 = mul i64 %t50, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t47, ptr %t49, i64 %t51, i1 false)
  %t52 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t53 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 2
  store { i64, ptr } %t52, ptr %t53, !tbaa !27
  %t54 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t54, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %rv
  ret %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %rr
}

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %a0
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2, ptr %l1
  %t3 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 0
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
  %t19 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 0
  store { i64, ptr } %t18, ptr %t19, !tbaa !27
  %t20 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 1
  %t21 = load { i64, ptr }, ptr %t20, !tbaa !27
  store { i64, ptr } %t21, ptr %l5, !tbaa !27
  %t22 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t23 = extractvalue { i64, ptr } %t22, 0
  store i64 %t23, ptr %l6, !tbaa !24
  %t24 = load i64, ptr %l6, !tbaa !24
  %t25 = mul i64 %t24, 8
  %t26 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t25)
  %t27 = insertvalue { i64, ptr } undef, i64 %t24, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t26, 1
  store { i64, ptr } %t28, ptr %l7, !tbaa !27
  %t29 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !27
  %t31 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !27
  %t33 = load i64, ptr %l6, !tbaa !24
  %t34 = mul i64 %t33, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t30, ptr %t32, i64 %t34, i1 false)
  %t35 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t36 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 1
  store { i64, ptr } %t35, ptr %t36, !tbaa !27
  %t37 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 2
  %t38 = load { i64, ptr }, ptr %t37, !tbaa !27
  store { i64, ptr } %t38, ptr %l8, !tbaa !27
  %t39 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t40 = extractvalue { i64, ptr } %t39, 0
  store i64 %t40, ptr %l9, !tbaa !24
  %t41 = load i64, ptr %l9, !tbaa !24
  %t42 = mul i64 %t41, 8
  %t43 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t42)
  %t44 = insertvalue { i64, ptr } undef, i64 %t41, 0
  %t45 = insertvalue { i64, ptr } %t44, ptr %t43, 1
  store { i64, ptr } %t45, ptr %l10, !tbaa !27
  %t46 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !27
  %t48 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !27
  %t50 = load i64, ptr %l9, !tbaa !24
  %t51 = mul i64 %t50, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t47, ptr %t49, i64 %t51, i1 false)
  %t52 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t53 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 2
  store { i64, ptr } %t52, ptr %t53, !tbaa !27
  %t54 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t54, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %rv
  ret %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %rr
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

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Array_3ccompiler_2ftyped_3aBlockId_3e_3e(ptr %v0, ptr %a0) #0 {
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
  %t6 = call { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20Arra_H3754a7a53f9c3df2a9a6243d146906a5(ptr %v0, { i64, ptr } %t4)
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

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_H90251316700b89c67e565c550ab10b7e(ptr %v0, ptr %a0) #0 {
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
  %t6 = call { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fmap_3aMapEntry_3cstd_2fpair_3a_Hbd2ae184353a9c65166b58ded2f03aef(ptr %v0, { i64, ptr } %t4)
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %a0) #0 {
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
  %t8 = mul i64 %t7, 4
  %t9 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t8)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t9, 1
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  %t12 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t17 = mul i64 %t16, 4
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %a0) #0 {
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
  %t8 = mul i64 %t7, 80
  %t9 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t8)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t9, 1
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  %t12 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t17 = mul i64 %t16, 80
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

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %a0
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2, ptr %l1
  %t3 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 0
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
  %t19 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 0
  store { i64, ptr } %t18, ptr %t19, !tbaa !27
  %t20 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 1
  %t21 = load { i64, ptr }, ptr %t20, !tbaa !27
  store { i64, ptr } %t21, ptr %l5, !tbaa !27
  %t22 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t23 = extractvalue { i64, ptr } %t22, 0
  store i64 %t23, ptr %l6, !tbaa !24
  %t24 = load i64, ptr %l6, !tbaa !24
  %t25 = mul i64 %t24, 8
  %t26 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t25)
  %t27 = insertvalue { i64, ptr } undef, i64 %t24, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t26, 1
  store { i64, ptr } %t28, ptr %l7, !tbaa !27
  %t29 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !27
  %t31 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !27
  %t33 = load i64, ptr %l6, !tbaa !24
  %t34 = mul i64 %t33, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t30, ptr %t32, i64 %t34, i1 false)
  %t35 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t36 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 1
  store { i64, ptr } %t35, ptr %t36, !tbaa !27
  %t37 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 2
  %t38 = load { i64, ptr }, ptr %t37, !tbaa !27
  store { i64, ptr } %t38, ptr %l8, !tbaa !27
  %t39 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t40 = extractvalue { i64, ptr } %t39, 0
  store i64 %t40, ptr %l9, !tbaa !24
  %t41 = load i64, ptr %l9, !tbaa !24
  %t42 = mul i64 %t41, 8
  %t43 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t42)
  %t44 = insertvalue { i64, ptr } undef, i64 %t41, 0
  %t45 = insertvalue { i64, ptr } %t44, ptr %t43, 1
  store { i64, ptr } %t45, ptr %l10, !tbaa !27
  %t46 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !27
  %t48 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !27
  %t50 = load i64, ptr %l9, !tbaa !24
  %t51 = mul i64 %t50, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t47, ptr %t49, i64 %t51, i1 false)
  %t52 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t53 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 2
  store { i64, ptr } %t52, ptr %t53, !tbaa !27
  %t54 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t54, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %rv
  ret %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %rr
}

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3aTerm_3e(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %a0
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2, ptr %l1
  %t3 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l2, !tbaa !27
  %t5 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t5, 0
  store i64 %t6, ptr %l3, !tbaa !24
  %t7 = load i64, ptr %l3, !tbaa !24
  %t8 = mul i64 %t7, 32
  %t9 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t8)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t9, 1
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  %t12 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t17 = mul i64 %t16, 32
  call void @llvm.memmove.p0.p0.i64(ptr %t13, ptr %t15, i64 %t17, i1 false)
  %t18 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t19 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 0
  store { i64, ptr } %t18, ptr %t19, !tbaa !27
  %t20 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 1
  %t21 = load { i64, ptr }, ptr %t20, !tbaa !27
  store { i64, ptr } %t21, ptr %l5, !tbaa !27
  %t22 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t23 = extractvalue { i64, ptr } %t22, 0
  store i64 %t23, ptr %l6, !tbaa !24
  %t24 = load i64, ptr %l6, !tbaa !24
  %t25 = mul i64 %t24, 8
  %t26 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t25)
  %t27 = insertvalue { i64, ptr } undef, i64 %t24, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t26, 1
  store { i64, ptr } %t28, ptr %l7, !tbaa !27
  %t29 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !27
  %t31 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !27
  %t33 = load i64, ptr %l6, !tbaa !24
  %t34 = mul i64 %t33, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t30, ptr %t32, i64 %t34, i1 false)
  %t35 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t36 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 1
  store { i64, ptr } %t35, ptr %t36, !tbaa !27
  %t37 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 2
  %t38 = load { i64, ptr }, ptr %t37, !tbaa !27
  store { i64, ptr } %t38, ptr %l8, !tbaa !27
  %t39 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t40 = extractvalue { i64, ptr } %t39, 0
  store i64 %t40, ptr %l9, !tbaa !24
  %t41 = load i64, ptr %l9, !tbaa !24
  %t42 = mul i64 %t41, 8
  %t43 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t42)
  %t44 = insertvalue { i64, ptr } undef, i64 %t41, 0
  %t45 = insertvalue { i64, ptr } %t44, ptr %t43, 1
  store { i64, ptr } %t45, ptr %l10, !tbaa !27
  %t46 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !27
  %t48 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !27
  %t50 = load i64, ptr %l9, !tbaa !24
  %t51 = mul i64 %t50, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t47, ptr %t49, i64 %t51, i1 false)
  %t52 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t53 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 2
  store { i64, ptr } %t52, ptr %t53, !tbaa !27
  %t54 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t54, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %rv
  ret %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %rr
}

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %a0
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2, ptr %l1
  %t3 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 0
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
  %t19 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 0
  store { i64, ptr } %t18, ptr %t19, !tbaa !27
  %t20 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 1
  %t21 = load { i64, ptr }, ptr %t20, !tbaa !27
  store { i64, ptr } %t21, ptr %l5, !tbaa !27
  %t22 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t23 = extractvalue { i64, ptr } %t22, 0
  store i64 %t23, ptr %l6, !tbaa !24
  %t24 = load i64, ptr %l6, !tbaa !24
  %t25 = mul i64 %t24, 8
  %t26 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t25)
  %t27 = insertvalue { i64, ptr } undef, i64 %t24, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t26, 1
  store { i64, ptr } %t28, ptr %l7, !tbaa !27
  %t29 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !27
  %t31 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !27
  %t33 = load i64, ptr %l6, !tbaa !24
  %t34 = mul i64 %t33, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t30, ptr %t32, i64 %t34, i1 false)
  %t35 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t36 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 1
  store { i64, ptr } %t35, ptr %t36, !tbaa !27
  %t37 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 2
  %t38 = load { i64, ptr }, ptr %t37, !tbaa !27
  store { i64, ptr } %t38, ptr %l8, !tbaa !27
  %t39 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t40 = extractvalue { i64, ptr } %t39, 0
  store i64 %t40, ptr %l9, !tbaa !24
  %t41 = load i64, ptr %l9, !tbaa !24
  %t42 = mul i64 %t41, 8
  %t43 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t42)
  %t44 = insertvalue { i64, ptr } undef, i64 %t41, 0
  %t45 = insertvalue { i64, ptr } %t44, ptr %t43, 1
  store { i64, ptr } %t45, ptr %l10, !tbaa !27
  %t46 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !27
  %t48 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !27
  %t50 = load i64, ptr %l9, !tbaa !24
  %t51 = mul i64 %t50, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t47, ptr %t49, i64 %t51, i1 false)
  %t52 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t53 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 2
  store { i64, ptr } %t52, ptr %t53, !tbaa !27
  %t54 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t54, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %rv
  ret %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %rr
}

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %a0
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2, ptr %l1
  %t3 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 0
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
  %t19 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 0
  store { i64, ptr } %t18, ptr %t19, !tbaa !27
  %t20 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 1
  %t21 = load { i64, ptr }, ptr %t20, !tbaa !27
  store { i64, ptr } %t21, ptr %l5, !tbaa !27
  %t22 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t23 = extractvalue { i64, ptr } %t22, 0
  store i64 %t23, ptr %l6, !tbaa !24
  %t24 = load i64, ptr %l6, !tbaa !24
  %t25 = mul i64 %t24, 8
  %t26 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t25)
  %t27 = insertvalue { i64, ptr } undef, i64 %t24, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t26, 1
  store { i64, ptr } %t28, ptr %l7, !tbaa !27
  %t29 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !27
  %t31 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !27
  %t33 = load i64, ptr %l6, !tbaa !24
  %t34 = mul i64 %t33, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t30, ptr %t32, i64 %t34, i1 false)
  %t35 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t36 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 1
  store { i64, ptr } %t35, ptr %t36, !tbaa !27
  %t37 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 2
  %t38 = load { i64, ptr }, ptr %t37, !tbaa !27
  store { i64, ptr } %t38, ptr %l8, !tbaa !27
  %t39 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t40 = extractvalue { i64, ptr } %t39, 0
  store i64 %t40, ptr %l9, !tbaa !24
  %t41 = load i64, ptr %l9, !tbaa !24
  %t42 = mul i64 %t41, 8
  %t43 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t42)
  %t44 = insertvalue { i64, ptr } undef, i64 %t41, 0
  %t45 = insertvalue { i64, ptr } %t44, ptr %t43, 1
  store { i64, ptr } %t45, ptr %l10, !tbaa !27
  %t46 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !27
  %t48 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !27
  %t50 = load i64, ptr %l9, !tbaa !24
  %t51 = mul i64 %t50, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t47, ptr %t49, i64 %t51, i1 false)
  %t52 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t53 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 2
  store { i64, ptr } %t52, ptr %t53, !tbaa !27
  %t54 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t54, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %rv
  ret %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %rr
}

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fv_H7ef236450d3feb960a8cf3e06f49bf11(ptr %v0, ptr %a0) #0 {
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
  %t6 = call { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std__H46e9870415440eb929428c107005dab1(ptr %v0, { i64, ptr } %t4)
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3afnRecs_3e(ptr %v0, ptr %a0) #0 {
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
  %t6 = call { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20compiler_2fscope_3afnRecs_3e_3e(ptr %v0, { i64, ptr } %t4)
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

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fv_H09c3079d182b8cef4a686eac89911323(ptr %v0, ptr %a0) #0 {
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
  %t6 = call { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std__Heb206f2e84d8edcc6bd0c4cf1e4ad9b1(ptr %v0, { i64, ptr } %t4)
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

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fv_H1486ed990d77c8f720439dfec9d6318c(ptr %v0, ptr %a0) #0 {
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
  %t6 = call { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std__H820e5950ca8610a4db942db17cebed6e(ptr %v0, { i64, ptr } %t4)
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

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_Hdb5ecd177dbbe8266fbcd9adcd3a6e46(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %a0
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2, ptr %l1
  %t3 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 0
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
  %t19 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 0
  store { i64, ptr } %t18, ptr %t19, !tbaa !27
  %t20 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 1
  %t21 = load { i64, ptr }, ptr %t20, !tbaa !27
  store { i64, ptr } %t21, ptr %l5, !tbaa !27
  %t22 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t23 = extractvalue { i64, ptr } %t22, 0
  store i64 %t23, ptr %l6, !tbaa !24
  %t24 = load i64, ptr %l6, !tbaa !24
  %t25 = mul i64 %t24, 8
  %t26 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t25)
  %t27 = insertvalue { i64, ptr } undef, i64 %t24, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t26, 1
  store { i64, ptr } %t28, ptr %l7, !tbaa !27
  %t29 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !27
  %t31 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !27
  %t33 = load i64, ptr %l6, !tbaa !24
  %t34 = mul i64 %t33, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t30, ptr %t32, i64 %t34, i1 false)
  %t35 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t36 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 1
  store { i64, ptr } %t35, ptr %t36, !tbaa !27
  %t37 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 2
  %t38 = load { i64, ptr }, ptr %t37, !tbaa !27
  store { i64, ptr } %t38, ptr %l8, !tbaa !27
  %t39 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t40 = extractvalue { i64, ptr } %t39, 0
  store i64 %t40, ptr %l9, !tbaa !24
  %t41 = load i64, ptr %l9, !tbaa !24
  %t42 = mul i64 %t41, 8
  %t43 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t42)
  %t44 = insertvalue { i64, ptr } undef, i64 %t41, 0
  %t45 = insertvalue { i64, ptr } %t44, ptr %t43, 1
  store { i64, ptr } %t45, ptr %l10, !tbaa !27
  %t46 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !27
  %t48 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !27
  %t50 = load i64, ptr %l9, !tbaa !24
  %t51 = mul i64 %t50, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t47, ptr %t49, i64 %t51, i1 false)
  %t52 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t53 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 2
  store { i64, ptr } %t52, ptr %t53, !tbaa !27
  %t54 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t54, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %rv
  ret %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %rr
}

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI64_3e_3e(ptr %v0, ptr %a0) #0 {
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
  %t6 = call { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std__H57d5c8605cc7fd44e810264046d9b247(ptr %v0, { i64, ptr } %t4)
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

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_Haa0337ae63b732d75ee2e0a37f501ff2(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %a0
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2, ptr %l1
  %t3 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 0
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
  %t19 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 0
  store { i64, ptr } %t18, ptr %t19, !tbaa !27
  %t20 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 1
  %t21 = load { i64, ptr }, ptr %t20, !tbaa !27
  store { i64, ptr } %t21, ptr %l5, !tbaa !27
  %t22 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t23 = extractvalue { i64, ptr } %t22, 0
  store i64 %t23, ptr %l6, !tbaa !24
  %t24 = load i64, ptr %l6, !tbaa !24
  %t25 = mul i64 %t24, 8
  %t26 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t25)
  %t27 = insertvalue { i64, ptr } undef, i64 %t24, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t26, 1
  store { i64, ptr } %t28, ptr %l7, !tbaa !27
  %t29 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !27
  %t31 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !27
  %t33 = load i64, ptr %l6, !tbaa !24
  %t34 = mul i64 %t33, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t30, ptr %t32, i64 %t34, i1 false)
  %t35 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t36 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 1
  store { i64, ptr } %t35, ptr %t36, !tbaa !27
  %t37 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 2
  %t38 = load { i64, ptr }, ptr %t37, !tbaa !27
  store { i64, ptr } %t38, ptr %l8, !tbaa !27
  %t39 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t40 = extractvalue { i64, ptr } %t39, 0
  store i64 %t40, ptr %l9, !tbaa !24
  %t41 = load i64, ptr %l9, !tbaa !24
  %t42 = mul i64 %t41, 8
  %t43 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t42)
  %t44 = insertvalue { i64, ptr } undef, i64 %t41, 0
  %t45 = insertvalue { i64, ptr } %t44, ptr %t43, 1
  store { i64, ptr } %t45, ptr %l10, !tbaa !27
  %t46 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !27
  %t48 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !27
  %t50 = load i64, ptr %l9, !tbaa !24
  %t51 = mul i64 %t50, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t47, ptr %t49, i64 %t51, i1 false)
  %t52 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t53 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 2
  store { i64, ptr } %t52, ptr %t53, !tbaa !27
  %t54 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t54, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %rv
  ret %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %rr
}

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aVersions_26_3e(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %a0
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2, ptr %l1
  %t3 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 0
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
  %t19 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 0
  store { i64, ptr } %t18, ptr %t19, !tbaa !27
  %t20 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 1
  %t21 = load { i64, ptr }, ptr %t20, !tbaa !27
  store { i64, ptr } %t21, ptr %l5, !tbaa !27
  %t22 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t23 = extractvalue { i64, ptr } %t22, 0
  store i64 %t23, ptr %l6, !tbaa !24
  %t24 = load i64, ptr %l6, !tbaa !24
  %t25 = mul i64 %t24, 8
  %t26 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t25)
  %t27 = insertvalue { i64, ptr } undef, i64 %t24, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t26, 1
  store { i64, ptr } %t28, ptr %l7, !tbaa !27
  %t29 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !27
  %t31 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !27
  %t33 = load i64, ptr %l6, !tbaa !24
  %t34 = mul i64 %t33, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t30, ptr %t32, i64 %t34, i1 false)
  %t35 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t36 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 1
  store { i64, ptr } %t35, ptr %t36, !tbaa !27
  %t37 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 2
  %t38 = load { i64, ptr }, ptr %t37, !tbaa !27
  store { i64, ptr } %t38, ptr %l8, !tbaa !27
  %t39 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t40 = extractvalue { i64, ptr } %t39, 0
  store i64 %t40, ptr %l9, !tbaa !24
  %t41 = load i64, ptr %l9, !tbaa !24
  %t42 = mul i64 %t41, 8
  %t43 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t42)
  %t44 = insertvalue { i64, ptr } undef, i64 %t41, 0
  %t45 = insertvalue { i64, ptr } %t44, ptr %t43, 1
  store { i64, ptr } %t45, ptr %l10, !tbaa !27
  %t46 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !27
  %t48 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !27
  %t50 = load i64, ptr %l9, !tbaa !24
  %t51 = mul i64 %t50, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t47, ptr %t49, i64 %t51, i1 false)
  %t52 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t53 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 2
  store { i64, ptr } %t52, ptr %t53, !tbaa !27
  %t54 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t54, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %rv
  ret %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %rr
}

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3averAtom_3e(ptr %v0, ptr %a0) #0 {
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
  %t8 = mul i64 %t7, 64
  %t9 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t8)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t9, 1
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  %t12 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t17 = mul i64 %t16, 64
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

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_H02d7c113dc0c806945ae5d5c07175526(ptr %v0, ptr %a0) #0 {
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
  %t6 = call { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fmap_3aMapEntry_3cstd_2fpair_3a_H7b35f03bb561057eca2e7862ee253215(ptr %v0, { i64, ptr } %t4)
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

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fscope_3averAtom_2c_20I64_3e(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %a0
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2, ptr %l1
  %t3 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l2, !tbaa !27
  %t5 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t5, 0
  store i64 %t6, ptr %l3, !tbaa !24
  %t7 = load i64, ptr %l3, !tbaa !24
  %t8 = mul i64 %t7, 72
  %t9 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t8)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t9, 1
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  %t12 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t17 = mul i64 %t16, 72
  call void @llvm.memmove.p0.p0.i64(ptr %t13, ptr %t15, i64 %t17, i1 false)
  %t18 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t19 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 0
  store { i64, ptr } %t18, ptr %t19, !tbaa !27
  %t20 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 1
  %t21 = load { i64, ptr }, ptr %t20, !tbaa !27
  store { i64, ptr } %t21, ptr %l5, !tbaa !27
  %t22 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t23 = extractvalue { i64, ptr } %t22, 0
  store i64 %t23, ptr %l6, !tbaa !24
  %t24 = load i64, ptr %l6, !tbaa !24
  %t25 = mul i64 %t24, 8
  %t26 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t25)
  %t27 = insertvalue { i64, ptr } undef, i64 %t24, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t26, 1
  store { i64, ptr } %t28, ptr %l7, !tbaa !27
  %t29 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !27
  %t31 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !27
  %t33 = load i64, ptr %l6, !tbaa !24
  %t34 = mul i64 %t33, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t30, ptr %t32, i64 %t34, i1 false)
  %t35 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t36 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 1
  store { i64, ptr } %t35, ptr %t36, !tbaa !27
  %t37 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 2
  %t38 = load { i64, ptr }, ptr %t37, !tbaa !27
  store { i64, ptr } %t38, ptr %l8, !tbaa !27
  %t39 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t40 = extractvalue { i64, ptr } %t39, 0
  store i64 %t40, ptr %l9, !tbaa !24
  %t41 = load i64, ptr %l9, !tbaa !24
  %t42 = mul i64 %t41, 8
  %t43 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t42)
  %t44 = insertvalue { i64, ptr } undef, i64 %t41, 0
  %t45 = insertvalue { i64, ptr } %t44, ptr %t43, 1
  store { i64, ptr } %t45, ptr %l10, !tbaa !27
  %t46 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !27
  %t48 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !27
  %t50 = load i64, ptr %l9, !tbaa !24
  %t51 = mul i64 %t50, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t47, ptr %t49, i64 %t51, i1 false)
  %t52 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t53 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 2
  store { i64, ptr } %t52, ptr %t53, !tbaa !27
  %t54 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t54, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %rv
  ret %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %rr
}

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_H33ad8677ba7b567a135a5f5a3960fb01(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %a0
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2, ptr %l1
  %t3 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l2, !tbaa !27
  %t5 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t5, 0
  store i64 %t6, ptr %l3, !tbaa !24
  %t7 = load i64, ptr %l3, !tbaa !24
  %t8 = mul i64 %t7, 32
  %t9 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t8)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t9, 1
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  %t12 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t17 = mul i64 %t16, 32
  call void @llvm.memmove.p0.p0.i64(ptr %t13, ptr %t15, i64 %t17, i1 false)
  %t18 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t19 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 0
  store { i64, ptr } %t18, ptr %t19, !tbaa !27
  %t20 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 1
  %t21 = load { i64, ptr }, ptr %t20, !tbaa !27
  store { i64, ptr } %t21, ptr %l5, !tbaa !27
  %t22 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t23 = extractvalue { i64, ptr } %t22, 0
  store i64 %t23, ptr %l6, !tbaa !24
  %t24 = load i64, ptr %l6, !tbaa !24
  %t25 = mul i64 %t24, 8
  %t26 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t25)
  %t27 = insertvalue { i64, ptr } undef, i64 %t24, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t26, 1
  store { i64, ptr } %t28, ptr %l7, !tbaa !27
  %t29 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !27
  %t31 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !27
  %t33 = load i64, ptr %l6, !tbaa !24
  %t34 = mul i64 %t33, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t30, ptr %t32, i64 %t34, i1 false)
  %t35 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t36 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 1
  store { i64, ptr } %t35, ptr %t36, !tbaa !27
  %t37 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 2
  %t38 = load { i64, ptr }, ptr %t37, !tbaa !27
  store { i64, ptr } %t38, ptr %l8, !tbaa !27
  %t39 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t40 = extractvalue { i64, ptr } %t39, 0
  store i64 %t40, ptr %l9, !tbaa !24
  %t41 = load i64, ptr %l9, !tbaa !24
  %t42 = mul i64 %t41, 8
  %t43 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t42)
  %t44 = insertvalue { i64, ptr } undef, i64 %t41, 0
  %t45 = insertvalue { i64, ptr } %t44, ptr %t43, 1
  store { i64, ptr } %t45, ptr %l10, !tbaa !27
  %t46 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !27
  %t48 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !27
  %t50 = load i64, ptr %l9, !tbaa !24
  %t51 = mul i64 %t50, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t47, ptr %t49, i64 %t51, i1 false)
  %t52 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t53 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 2
  store { i64, ptr } %t52, ptr %t53, !tbaa !27
  %t54 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t54, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %rv
  ret %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %rr
}

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

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Array_3ccompiler_2ftyped_3aCapture_26_3e_3e(ptr %v0, ptr %a0) #0 {
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
  %t6 = call { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20Arra_Hb5684bfafa29c4cae0e6f1c5df0e58ef(ptr %v0, { i64, ptr } %t4)
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

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_H914f32a339b5444c6d16c69a20d2d561(ptr %v0, ptr %a0) #0 {
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
  %t6 = call { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fmap_3aMapEntry_3cstd_2fpair_3a_H22e6af9a6dfb33c1c3ba8b840b708334(ptr %v0, { i64, ptr } %t4)
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec__H3d323b423d49e8dd9f04e04715566ac1(ptr %v0, ptr %a0) #0 {
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
  %t6 = call { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3acompRun_26_3e_3e(ptr %v0, { i64, ptr } %t4)
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

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_Hf0da9692a6959d4aeac270438b2ff1fc(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %a0
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2, ptr %l1
  %t3 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l2, !tbaa !27
  %t5 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t5, 0
  store i64 %t6, ptr %l3, !tbaa !24
  %t7 = load i64, ptr %l3, !tbaa !24
  %t8 = mul i64 %t7, 32
  %t9 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t8)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t9, 1
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  %t12 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t17 = mul i64 %t16, 32
  call void @llvm.memmove.p0.p0.i64(ptr %t13, ptr %t15, i64 %t17, i1 false)
  %t18 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t19 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 0
  store { i64, ptr } %t18, ptr %t19, !tbaa !27
  %t20 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 1
  %t21 = load { i64, ptr }, ptr %t20, !tbaa !27
  store { i64, ptr } %t21, ptr %l5, !tbaa !27
  %t22 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t23 = extractvalue { i64, ptr } %t22, 0
  store i64 %t23, ptr %l6, !tbaa !24
  %t24 = load i64, ptr %l6, !tbaa !24
  %t25 = mul i64 %t24, 8
  %t26 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t25)
  %t27 = insertvalue { i64, ptr } undef, i64 %t24, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t26, 1
  store { i64, ptr } %t28, ptr %l7, !tbaa !27
  %t29 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !27
  %t31 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !27
  %t33 = load i64, ptr %l6, !tbaa !24
  %t34 = mul i64 %t33, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t30, ptr %t32, i64 %t34, i1 false)
  %t35 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t36 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 1
  store { i64, ptr } %t35, ptr %t36, !tbaa !27
  %t37 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 2
  %t38 = load { i64, ptr }, ptr %t37, !tbaa !27
  store { i64, ptr } %t38, ptr %l8, !tbaa !27
  %t39 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t40 = extractvalue { i64, ptr } %t39, 0
  store i64 %t40, ptr %l9, !tbaa !24
  %t41 = load i64, ptr %l9, !tbaa !24
  %t42 = mul i64 %t41, 8
  %t43 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t42)
  %t44 = insertvalue { i64, ptr } undef, i64 %t41, 0
  %t45 = insertvalue { i64, ptr } %t44, ptr %t43, 1
  store { i64, ptr } %t45, ptr %l10, !tbaa !27
  %t46 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !27
  %t48 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !27
  %t50 = load i64, ptr %l9, !tbaa !24
  %t51 = mul i64 %t50, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t47, ptr %t49, i64 %t51, i1 false)
  %t52 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t53 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 2
  store { i64, ptr } %t52, ptr %t53, !tbaa !27
  %t54 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t54, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %rv
  ret %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %rr
}

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e(ptr %v0, ptr %a0) #0 {
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

define available_externally ptr @__olang_scope_mine(ptr %s) alwaysinline {
entry:
  %op = getelementptr %olang.scope, ptr %s, i32 0, i32 3
  %o = load atomic ptr, ptr %op monotonic, align 8
  %me = load ptr, ptr @__olang_self
  %own = icmp eq ptr %o, %me
  br i1 %own, label %mine, label %slow
mine:
  ret ptr %s
slow:
  %r = call ptr @__olang_scope_mine_slow(ptr %s)
  ret ptr %r
}
define linkonce_odr { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3ccompiler_2ftyped_3aPlan_3e(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l6 = alloca %"compiler/typed:Plan"
  %rv = alloca { i64, ptr }
  %t16 = alloca %"compiler/typed:Plan", align 8
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t2 = extractvalue { i64, ptr } %t1, 0
  store i64 %t2, ptr %l1, !tbaa !24
  %t3 = load i64, ptr %l1, !tbaa !24
  %t4 = mul i64 %t3, 536
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
  %t15 = getelementptr %"compiler/typed:Plan", ptr %t14, i64 %t12
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2ftyped_3aPlan(ptr %t16, ptr %v0, ptr %t15)
  call void @llvm.memmove.p0.p0.i64(ptr %l6, ptr %t16, i64 536, i1 false)
  br label %bb4
bb3:
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t18, ptr %rv
  br label %ret
bb4:
  %t19 = load i64, ptr %l3, !tbaa !24
  %t20 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !27
  %t22 = getelementptr %"compiler/typed:Plan", ptr %t21, i64 %t19
  call void @llvm.memmove.p0.p0.i64(ptr %t22, ptr %l6, i64 536, i1 false)
  %t23 = load i64, ptr %l3, !tbaa !24
  %t24 = add i64 %t23, 1
  store i64 %t24, ptr %l3, !tbaa !24
  br label %bb1
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define linkonce_odr { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20Arra_H3754a7a53f9c3df2a9a6243d146906a5(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l6 = alloca %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406"
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
  %t4 = mul i64 %t3, 24
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
  %t15 = getelementptr %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406", ptr %t14, i64 %t12
  %t17 = call %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20Array_3ccompiler_2ftyped_3aBlockId_3e_3e(ptr %v0, ptr %t15)
  store %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406" %t17, ptr %l6
  br label %bb4
bb3:
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t18, ptr %rv
  br label %ret
bb4:
  %t19 = load %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406", ptr %l6
  %t20 = load i64, ptr %l3, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406", ptr %t22, i64 %t20
  store %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406" %t19, ptr %t23
  %t24 = load i64, ptr %l3, !tbaa !24
  %t25 = add i64 %t24, 1
  store i64 %t25, ptr %l3, !tbaa !24
  br label %bb1
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define linkonce_odr { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fmap_3aMapEntry_3cstd_2fpair_3a_Hbd2ae184353a9c65166b58ded2f03aef(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l6 = alloca %"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd"
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
  %t4 = mul i64 %t3, 72
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
  %t15 = getelementptr %"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd", ptr %t14, i64 %t12
  %t17 = call %"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fpair_3aPair_3cI_Hba3d3054cd7ffa4093e8aae0f585f337(ptr %v0, ptr %t15)
  store %"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd" %t17, ptr %l6
  br label %bb4
bb3:
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t18, ptr %rv
  br label %ret
bb4:
  %t19 = load %"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd", ptr %l6
  %t20 = load i64, ptr %l3, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr %"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd", ptr %t22, i64 %t20
  store %"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd" %t19, ptr %t23
  %t24 = load i64, ptr %l3, !tbaa !24
  %t25 = add i64 %t24, 1
  store i64 %t25, ptr %l3, !tbaa !24
  br label %bb1
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
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

define linkonce_odr { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std__H46e9870415440eb929428c107005dab1(ptr %v0, { i64, ptr } %a0) #0 {
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
  %t17 = call %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std_2fprelud_H5e5591591a9c0dc82035b67f3c188b05(ptr %v0, ptr %t15)
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

define linkonce_odr { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20compiler_2fscope_3afnRecs_3e_3e(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l6 = alloca %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d"
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
  %t4 = mul i64 %t3, 112
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
  %t15 = getelementptr %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d", ptr %t14, i64 %t12
  %t17 = call %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20compiler_2fscope_3afnRecs_3e(ptr %v0, ptr %t15)
  store %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d" %t17, ptr %l6
  br label %bb4
bb3:
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t18, ptr %rv
  br label %ret
bb4:
  %t19 = load %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d", ptr %l6
  %t20 = load i64, ptr %l3, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d", ptr %t22, i64 %t20
  store %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d" %t19, ptr %t23
  %t24 = load i64, ptr %l3, !tbaa !24
  %t25 = add i64 %t24, 1
  store i64 %t25, ptr %l3, !tbaa !24
  br label %bb1
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define linkonce_odr { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std__Heb206f2e84d8edcc6bd0c4cf1e4ad9b1(ptr %v0, { i64, ptr } %a0) #0 {
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
  %t17 = call %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std_2fprelud_H42ee29add8a5c225791d9887f7c78b2f(ptr %v0, ptr %t15)
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

define linkonce_odr { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std__H820e5950ca8610a4db942db17cebed6e(ptr %v0, { i64, ptr } %a0) #0 {
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
  %t17 = call %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std_2fprelud_Hff03c904942c15bd0aa9c7c744faa430(ptr %v0, ptr %t15)
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

define linkonce_odr { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std__H57d5c8605cc7fd44e810264046d9b247(ptr %v0, { i64, ptr } %a0) #0 {
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
  %t17 = call %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI64_3e_3e(ptr %v0, ptr %t15)
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

define linkonce_odr { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fmap_3aMapEntry_3cstd_2fpair_3a_H7b35f03bb561057eca2e7862ee253215(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l6 = alloca %"std/prelude/map:MapEntry.39ab5235a9e7cc4d21ab272df52b187f"
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
  %t15 = getelementptr %"std/prelude/map:MapEntry.39ab5235a9e7cc4d21ab272df52b187f", ptr %t14, i64 %t12
  %t17 = call %"std/prelude/map:MapEntry.39ab5235a9e7cc4d21ab272df52b187f" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fpair_3aPair_3cI_Hf236050a4c87b3db613542553d971547(ptr %v0, ptr %t15)
  store %"std/prelude/map:MapEntry.39ab5235a9e7cc4d21ab272df52b187f" %t17, ptr %l6
  br label %bb4
bb3:
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t18, ptr %rv
  br label %ret
bb4:
  %t19 = load %"std/prelude/map:MapEntry.39ab5235a9e7cc4d21ab272df52b187f", ptr %l6
  %t20 = load i64, ptr %l3, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr %"std/prelude/map:MapEntry.39ab5235a9e7cc4d21ab272df52b187f", ptr %t22, i64 %t20
  store %"std/prelude/map:MapEntry.39ab5235a9e7cc4d21ab272df52b187f" %t19, ptr %t23
  %t24 = load i64, ptr %l3, !tbaa !24
  %t25 = add i64 %t24, 1
  store i64 %t25, ptr %l3, !tbaa !24
  br label %bb1
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define linkonce_odr { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20Arra_Hb5684bfafa29c4cae0e6f1c5df0e58ef(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l6 = alloca %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406"
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
  %t4 = mul i64 %t3, 24
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
  %t15 = getelementptr %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406", ptr %t14, i64 %t12
  %t17 = call %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20Array_3ccompiler_2ftyped_3aCapture_26_3e_3e(ptr %v0, ptr %t15)
  store %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406" %t17, ptr %l6
  br label %bb4
bb3:
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t18, ptr %rv
  br label %ret
bb4:
  %t19 = load %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406", ptr %l6
  %t20 = load i64, ptr %l3, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406", ptr %t22, i64 %t20
  store %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406" %t19, ptr %t23
  %t24 = load i64, ptr %l3, !tbaa !24
  %t25 = add i64 %t24, 1
  store i64 %t25, ptr %l3, !tbaa !24
  br label %bb1
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define linkonce_odr { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fmap_3aMapEntry_3cstd_2fpair_3a_H22e6af9a6dfb33c1c3ba8b840b708334(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l6 = alloca %"std/prelude/map:MapEntry.0bcda5c026701d95f15bce76f62e86ad"
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
  %t4 = mul i64 %t3, 120
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
  %t15 = getelementptr %"std/prelude/map:MapEntry.0bcda5c026701d95f15bce76f62e86ad", ptr %t14, i64 %t12
  %t17 = call %"std/prelude/map:MapEntry.0bcda5c026701d95f15bce76f62e86ad" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fpair_3aPair_3cI_He76ccdd46fc8fd3edee4364d67fec2b5(ptr %v0, ptr %t15)
  store %"std/prelude/map:MapEntry.0bcda5c026701d95f15bce76f62e86ad" %t17, ptr %l6
  br label %bb4
bb3:
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t18, ptr %rv
  br label %ret
bb4:
  %t19 = load %"std/prelude/map:MapEntry.0bcda5c026701d95f15bce76f62e86ad", ptr %l6
  %t20 = load i64, ptr %l3, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr %"std/prelude/map:MapEntry.0bcda5c026701d95f15bce76f62e86ad", ptr %t22, i64 %t20
  store %"std/prelude/map:MapEntry.0bcda5c026701d95f15bce76f62e86ad" %t19, ptr %t23
  %t24 = load i64, ptr %l3, !tbaa !24
  %t25 = add i64 %t24, 1
  store i64 %t25, ptr %l3, !tbaa !24
  br label %bb1
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define linkonce_odr { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3acompRun_26_3e_3e(ptr %v0, { i64, ptr } %a0) #0 {
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
  %t17 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3acompRun_26_3e(ptr %v0, ptr %t15)
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

declare ptr @__olang_scope_mine_slow(ptr) noinline
define linkonce_odr %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20Array_3ccompiler_2ftyped_3aBlockId_3e_3e(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %rv = alloca %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406", ptr %a0
  store %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406" %t2, ptr %l1
  %t3 = getelementptr %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406", ptr %l1, i32 0, i32 1
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l2, !tbaa !27
  %t5 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t5, 0
  store i64 %t6, ptr %l3, !tbaa !24
  %t7 = load i64, ptr %l3, !tbaa !24
  %t8 = mul i64 %t7, 4
  %t9 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t8)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t9, 1
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  %t12 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t17 = mul i64 %t16, 4
  call void @llvm.memmove.p0.p0.i64(ptr %t13, ptr %t15, i64 %t17, i1 false)
  %t18 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t19 = getelementptr %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406", ptr %l1, i32 0, i32 1
  store { i64, ptr } %t18, ptr %t19, !tbaa !27
  %t20 = load %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406", ptr %l1
  store %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406" %t20, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406", ptr %rv
  ret %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406" %rr
}

define linkonce_odr %"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fpair_3aPair_3cI_Hba3d3054cd7ffa4093e8aae0f585f337(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd"
  %l3 = alloca %"compiler/scope:Placement"
  %rv = alloca %"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd", ptr %a0
  store %"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd" %t2, ptr %l1
  %t3 = getelementptr %"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd", ptr %l1, i32 0, i32 1
  %t5 = call %"compiler/scope:Placement" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3aPlacement(ptr %v0, ptr %t3)
  store %"compiler/scope:Placement" %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load %"compiler/scope:Placement", ptr %l3
  %t7 = getelementptr %"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd", ptr %l1, i32 0, i32 1
  store %"compiler/scope:Placement" %t6, ptr %t7
  %t8 = load %"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd", ptr %l1
  store %"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd", ptr %rv
  ret %"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd" %rr
}

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

define linkonce_odr %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std_2fprelud_H5e5591591a9c0dc82035b67f3c188b05(ptr %v0, ptr %a0) #0 {
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
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t3)
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

define linkonce_odr %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20compiler_2fscope_3afnRecs_3e(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d"
  %l3 = alloca %"compiler/scope:fnRecs"
  %rv = alloca %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d", ptr %a0
  store %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d" %t2, ptr %l1
  %t3 = getelementptr %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d", ptr %l1, i32 0, i32 1
  %t5 = call %"compiler/scope:fnRecs" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRecs(ptr %v0, ptr %t3)
  store %"compiler/scope:fnRecs" %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load %"compiler/scope:fnRecs", ptr %l3
  %t7 = getelementptr %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d", ptr %l1, i32 0, i32 1
  store %"compiler/scope:fnRecs" %t6, ptr %t7
  %t8 = load %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d", ptr %l1
  store %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d", ptr %rv
  ret %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d" %rr
}

define linkonce_odr %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std_2fprelud_H42ee29add8a5c225791d9887f7c78b2f(ptr %v0, ptr %a0) #0 {
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
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %t3)
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

define linkonce_odr %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std_2fprelud_Hff03c904942c15bd0aa9c7c744faa430(ptr %v0, ptr %a0) #0 {
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
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t3)
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

define linkonce_odr %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI64_3e_3e(ptr %v0, ptr %a0) #0 {
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
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t3)
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

define linkonce_odr %"std/prelude/map:MapEntry.39ab5235a9e7cc4d21ab272df52b187f" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fpair_3aPair_3cI_Hf236050a4c87b3db613542553d971547(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/map:MapEntry.39ab5235a9e7cc4d21ab272df52b187f"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"std/prelude/map:MapEntry.39ab5235a9e7cc4d21ab272df52b187f"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"std/prelude/map:MapEntry.39ab5235a9e7cc4d21ab272df52b187f", ptr %a0
  store %"std/prelude/map:MapEntry.39ab5235a9e7cc4d21ab272df52b187f" %t2, ptr %l1
  %t3 = getelementptr %"std/prelude/map:MapEntry.39ab5235a9e7cc4d21ab272df52b187f", ptr %l1, i32 0, i32 1
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3averAtom_3e(ptr %v0, ptr %t3)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t7 = getelementptr %"std/prelude/map:MapEntry.39ab5235a9e7cc4d21ab272df52b187f", ptr %l1, i32 0, i32 1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %t7
  %t8 = load %"std/prelude/map:MapEntry.39ab5235a9e7cc4d21ab272df52b187f", ptr %l1
  store %"std/prelude/map:MapEntry.39ab5235a9e7cc4d21ab272df52b187f" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:MapEntry.39ab5235a9e7cc4d21ab272df52b187f", ptr %rv
  ret %"std/prelude/map:MapEntry.39ab5235a9e7cc4d21ab272df52b187f" %rr
}

define linkonce_odr %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20Array_3ccompiler_2ftyped_3aCapture_26_3e_3e(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %rv = alloca %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406", ptr %a0
  store %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406" %t2, ptr %l1
  %t3 = getelementptr %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406", ptr %l1, i32 0, i32 1
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
  %t19 = getelementptr %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406", ptr %l1, i32 0, i32 1
  store { i64, ptr } %t18, ptr %t19, !tbaa !27
  %t20 = load %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406", ptr %l1
  store %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406" %t20, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406", ptr %rv
  ret %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406" %rr
}

define linkonce_odr %"std/prelude/map:MapEntry.0bcda5c026701d95f15bce76f62e86ad" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fpair_3aPair_3cI_He76ccdd46fc8fd3edee4364d67fec2b5(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/map:MapEntry.0bcda5c026701d95f15bce76f62e86ad"
  %l3 = alloca %"compiler/scope:fnRecs"
  %rv = alloca %"std/prelude/map:MapEntry.0bcda5c026701d95f15bce76f62e86ad"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"std/prelude/map:MapEntry.0bcda5c026701d95f15bce76f62e86ad", ptr %a0
  store %"std/prelude/map:MapEntry.0bcda5c026701d95f15bce76f62e86ad" %t2, ptr %l1
  %t3 = getelementptr %"std/prelude/map:MapEntry.0bcda5c026701d95f15bce76f62e86ad", ptr %l1, i32 0, i32 1
  %t5 = call %"compiler/scope:fnRecs" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRecs(ptr %v0, ptr %t3)
  store %"compiler/scope:fnRecs" %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load %"compiler/scope:fnRecs", ptr %l3
  %t7 = getelementptr %"std/prelude/map:MapEntry.0bcda5c026701d95f15bce76f62e86ad", ptr %l1, i32 0, i32 1
  store %"compiler/scope:fnRecs" %t6, ptr %t7
  %t8 = load %"std/prelude/map:MapEntry.0bcda5c026701d95f15bce76f62e86ad", ptr %l1
  store %"std/prelude/map:MapEntry.0bcda5c026701d95f15bce76f62e86ad" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:MapEntry.0bcda5c026701d95f15bce76f62e86ad", ptr %rv
  ret %"std/prelude/map:MapEntry.0bcda5c026701d95f15bce76f62e86ad" %rr
}

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3acompRun_26_3e(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr %"compiler/scope:Placement" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3aPlacement(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/scope:Placement"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %rv = alloca %"compiler/scope:Placement"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"compiler/scope:Placement", ptr %a0
  store %"compiler/scope:Placement" %t2, ptr %l1
  %t3 = getelementptr %"compiler/scope:Placement", ptr %l1, i32 0, i32 4
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
  %t19 = getelementptr %"compiler/scope:Placement", ptr %l1, i32 0, i32 4
  store { i64, ptr } %t18, ptr %t19, !tbaa !27
  %t20 = load %"compiler/scope:Placement", ptr %l1
  store %"compiler/scope:Placement" %t20, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/scope:Placement", ptr %rv
  ret %"compiler/scope:Placement" %rr
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

declare { i32, i32 } @compiler_2fsession_2ePipe()
declare void @compiler_2fsession_2eCloseFd(i32 %a0)
declare i32 @std_2fio_2eWrite(ptr %v0, i32 %a0, { i64, ptr } %a1)
@olang_loc_35fd852a81194674_cc9a5a6794b34358 = external constant [0 x i8]
declare %"compiler/session:Reader" @compiler_2fsession_3aReader_2ector(ptr %v0, i32 %a0)
declare i32 @compiler_2fsession_2eReap(i32 %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eView_3cU8_3e(ptr %v0, ptr %v1, ptr %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @compiler_2fdiag_2eColorWanted()
declare void @compiler_2fdiag_3aDiagnostics_2ector(ptr %out, ptr %v0, i1 %a0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20std_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0)
declare ptr @compiler_2fsession_2eAnalysis_2eAnalyze(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, { i64, ptr } %a0, ptr %a1, ptr %a2, ptr %a3, i1 %a4)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrors(ptr %v0, ptr %a0)
declare { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eRender(ptr %v0, ptr %v1, ptr %a0)
declare { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eSummary(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_3107e0baf714f587_4e2de6149db597f3 = external constant [0 x i8]
declare { i32, { i64, ptr } } @compiler_2fdoc_2eItemText(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, ptr %a2, i64 %a3, { i64, ptr } %a4)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDocNoItem(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2)
@olang_loc_6636dd2b26b29868_9b4c1750690bee24 = external constant [0 x i8]
declare %"compiler/doc:Module" @compiler_2fdoc_2eModule_2eOf(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, i64 %a3, i1 %a4)
declare { i64, ptr } @compiler_2fdoc_2ecompiler_2fdoc_3aModule_2eText(ptr %v0, ptr %v1, ptr %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %a0)
declare void @compiler_2fsession_2estdModules(ptr %v0, ptr %a0)
declare i32 @std_2fos_2eMkDirAll(ptr %v0, { i64, ptr } %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fdoc_3aModule_3e_2ector(ptr %v0, i64 %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i32, { i64, ptr } } @std_2fos_2eReadFile(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i64, ptr } @compiler_2fdoc_2eModuleDoc(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/doc:Module" @compiler_2fdoc_3aModule_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdoc_3aModule_3e_2ePush_3ccompiler_2fdoc_3aModule_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/doc:Module" %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdoc_3aModule_3e_2eSort_3cco_Hfcfbe33647fb7db48e9022f22b0d44cf(ptr %v0, ptr %v1, ptr %a0, ptr %a1c, ptr %a1e)
declare { i64, ptr } @std_2ffilepath_2eJoin(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdoc_3aModule_3e_2eToArray_3ccompiler_2fdoc_3aModule_3e(ptr %v0, ptr %v1, ptr %a0)
declare { i64, ptr } @compiler_2fdoc_2eIndexHtml(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i32 @std_2fos_2eWriteFile(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare { i64, ptr } @compiler_2fload_2eStdDir(ptr %v0)
declare %"compiler/source:Source" @compiler_2fsource_3aSource_2ector(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2ffmt_2ePreludeTypes(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i32, { i64, ptr } } @compiler_2ffmt_2eFileLayout(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, i1 %a3, ptr %a4)
declare i1 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eHasFatal(ptr %v0, ptr %a0)
declare i64 @std_2ftime_2eNow()
@olang_loc_35f6bc648a66c5f9_fb290a2b6e993705 = external constant [0 x i8]
declare void @compiler_2fscope_3aScoper_2ector(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eRun(ptr %v0, ptr %a0)
declare i64 @std_2ftime_2eSince(i64 %a0)
declare void @compiler_2fsession_2eLog(ptr %v0, { i64, ptr } %a0)
@olang_loc_7df5e84b4c633bd2_e3c06e6feae95f5e = external constant [0 x i8]
declare void @compiler_2finterp_3aExec_2ector(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
@olang_loc_6f935d255f99d513_bebfb26ca618488f = external constant [0 x i8]
declare { i32, { i64, ptr } } @std_2fos_2eCwd(ptr %v0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_41308d8b43e86301_faf6b9f2c6bbac3d = external constant [0 x i8]
@olang_loc_18466e7707586594_33576ced7420fee0 = external constant [0 x i8]
declare { i64, ptr } @std_2ffilepath_2eBase(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_decc2d78854299ff_a983c2831d86fddb = external constant [0 x i8]
@olang_loc_ff40fb5988b00df4_fbbcb1c788c8bd28 = external constant [0 x i8]
declare i32 @compiler_2fsession_2eExitStatus(i32 %a0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %a0, i8 %a1)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i32, { i64, ptr } } @std_2fos_2eRealPath(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_b18535922df9c451_739a4491ef7ea55d = external constant [0 x i8]
declare i1 @compiler_2fsession_2eWordChar(i8 %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %a0)
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
declare i64 @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2eModuleOf(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, [6 x i64] } @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2etarget(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"compiler/source:Span" %a2)
declare { i32, %"compiler/session:Found" } @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2edescribe(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, [6 x i64] } %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_804f8b0fb45e435f_c5484f8454187243 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eLen_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0)
declare %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_9033262c592f27c0_922b790dfcbd6cb4 = external constant [0 x i8]
declare { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eTy(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare void @compiler_2fsession_2ecompiler_2fsession_3aItems_2eAdd(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i64 %a2, { i64, ptr } %a3)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eLen_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %a0)
declare %"compiler/load:Import" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eAt_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %a0)
@olang_loc_657f7671e8d24039_dcdf7cbf2572e335 = external constant [0 x i8]
declare { i64, ptr } @compiler_2fdoc_2eComment(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1, i1 %a2)
declare { i64, ptr } @compiler_2fdoc_2eDeprecation(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_b16f220e0018fd17_df8b0dd8cdfc1943 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_e81878307a0930f8_ac6e376276a113b4 = external constant [0 x i8]
@olang_loc_cf719ce72396210d_6e539aa1951515a9 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_90bed28a447e5726_404cd49f4fb329c2 = external constant [0 x i8]
@olang_loc_966fb838f56733ab_5416c5dd2a23270f = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2emoduleOfFile(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_55b3f811cb7477b4_5dfc53d9875946d8 = external constant [0 x i8]
@olang_loc_4c52bbc768601131_90801d9bf2a41585 = external constant [0 x i8]
@olang_loc_42ed37d296a6252a_791781e06ef43dde = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_dff094d230471566_615c91b3ab3b0902 = external constant [0 x i8]
@olang_loc_878a1a37f76dded1_df06407b9e0240ed = external constant [0 x i8]
declare %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20" @std_2fpair_3aPair_3cI64_2c_20compiler_2ftyped_3aLocalId_3e_2ector(ptr %v0, i64 %a0, i32 %a1)
@olang_loc_ad4014c285adba33_5f0a50bbd6dd5777 = external constant [0 x i8]
@olang_loc_5a0f7bc549a8a64_9f8f3c14406c0758 = external constant [0 x i8]
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fnames_3aTable_26_3e_2_Hc2ccbbc5952c057a60f016e9cc1626d2(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eLen_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %a0)
declare %"compiler/names:Entry" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eAt_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2fdoc_2eExported(ptr %v0, { i64, ptr } %a0)
declare i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_c15f20635f7a4119_452b944b82f8966d = external constant [0 x i8]
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnNamed(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
@olang_loc_6010ac475f88a9f2_430aff1aa96b7386 = external constant [0 x i8]
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_64c89934b5f1bf_a2a8dc486100a28b = external constant [0 x i8]
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_cf04846f3952f731_2a54d968229bc665 = external constant [0 x i8]
declare void @compiler_2fsession_2ecompiler_2fsession_3atypeFinder_2eblock(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eTextOf(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_77695651a3cbe722_713723fe03dd0eb6 = external constant [0 x i8]
@olang_loc_192180e0c65a19ab_79011e5b413ec96f = external constant [0 x i8]
@olang_loc_41c9e4d1a5402e3c_f7f654128ad00b10 = external constant [0 x i8]
@olang_loc_bca4a5ed74171cc7_e50f418fa8ad666b = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2ePushAll_3cU8_3e(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@olang_loc_36ec2fbf7c558d87_ca970629ee3fcabb = external constant [0 x i8]
declare %"std/prelude/text:LineIter" @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLines(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i32, { i64, ptr } } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aLineIter_2eNext(ptr %v0, ptr %v1, ptr %a0)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrim(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eToLower(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_757e008d51ce27aa_df9e4b2b6fbab93e = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %v0, i64 %a0)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %v0, { i64, ptr } %a0, i64 %a1)
@olang_loc_7fa1338bfb5c4549_286381a3bde0b91d = external constant [0 x i8]
@olang_loc_98e1614ed1d054f5_86eb50e982cc0441 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eLen_3cU8_3e(ptr %v0, ptr %a0)
declare i8 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eAt_3cU8_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eSetAt_3cU8_3e(ptr %v0, ptr %a0, i64 %a1, i8 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eTruncate_3cU8_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fast_2ecompiler_2fast_3aFunc_2eIsBuilder(ptr %v0, ptr %a0)
declare void @compiler_2fsession_2ecompiler_2fsession_3afinder_2etake(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, { i64, [6 x i64] } %a2)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclModule(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_68ddcf9e12618436_cff7fbf614d16d4a = external constant [0 x i8]
declare void @compiler_2fsession_2ecompiler_2fsession_3afinder_2eexpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_a3421b14f56bfb72_e21214c32a246516 = external constant [0 x i8]
declare void @compiler_2fsession_2ecompiler_2fsession_3afinder_2eplace(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fsession_2ecompiler_2fsession_3afinder_2eblock(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_9a3dbb58dbc7a31a_5629726f6c293dd6 = external constant [0 x i8]
declare i64 @compiler_2fsession_2enameIn(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1, { i64, ptr } %a2)
@olang_loc_17c267c41fc9225_ba4af4ec5e6e67d9 = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v0, ptr %a0)
@olang_loc_e2fdffbec4ffc6f6_d7c57975026acfca = external constant [0 x i8]
@olang_loc_20935b6efc97b92f_a6b75dda1390d5f3 = external constant [0 x i8]
@olang_loc_d4784f9ecdded0f8_efac4001dd272cfc = external constant [0 x i8]
@olang_loc_8cc976989131f049_16bcaa94a8222275 = external constant [0 x i8]
@olang_loc_6d13c8aa31bd5d91_e2d0bffb643f3edd = external constant [0 x i8]
@olang_loc_aa1a720e54961963_b2017c5bfd4a977f = external constant [0 x i8]
declare void @compiler_2fsession_2ecompiler_2fsession_3asymWriter_2emembers(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3)
declare i64 @compiler_2fdoc_2eWordIn(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1, { i64, ptr } %a2)
@olang_loc_a8f128570d4ee58c_72533cb80a04a368 = external constant [0 x i8]
@olang_loc_a7d5113fa702b704_e2f71baa964fc498 = external constant [0 x i8]
declare void @compiler_2fsession_2ecompiler_2fsession_3aPositions_2eRange(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2, i64 %a3)
@olang_loc_d9881facfbc222b9_fdfa0d9fbca7f5d5 = external constant [0 x i8]
@olang_loc_7c90741a89491e92_62c7d4207901162e = external constant [0 x i8]
@olang_loc_445788eb90ff4fd3_8bea5f8a87ea775f = external constant [0 x i8]
@olang_loc_5bdbf2396576e204_9bcdfaa72cbb5bc0 = external constant [0 x i8]
declare void @compiler_2fsession_2ecompiler_2fsession_3atypeFinder_2eexpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fsession_2ecompiler_2fsession_3atypeFinder_2eplace(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_4291427b0116e0e2_c8a2c34732e3da0e = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_5f2579128b68b5af_d9dbce929ac4615b = external constant [0 x i8]
declare i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@olang_loc_e6936df67b662b33_7a0885fa2c8953cf = external constant [0 x i8]
declare { i64, ptr } @compiler_2fdoc_2ePageName(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i64, ptr } @compiler_2fdoc_2ecompiler_2fdoc_3aModule_2eHtml(ptr %v0, ptr %v1, ptr %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fdoc_2eExamplesOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, { i64, ptr } %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdoc_3aExample_3e_2eLen_3ccompiler_2fdoc_3aExample_3e(ptr %v0, ptr %a0)
declare %"compiler/doc:Example" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdoc_3aExample_3e_2eAt_3ccompiler_2fdoc_3aExample_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare i32 @std_2fio_2ePrint(ptr %v0, { i64, ptr } %a0)
declare { i64, ptr } @compiler_2fsource_2eLineStarts(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLess(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_51582b1a0e30bcb1_9563e8081c953955 = external constant [0 x i8]
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eInstNote(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_53726bd6cca5663f_63c9f91772010c1b = external constant [0 x i8]

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
