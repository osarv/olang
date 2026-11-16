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
%"compiler/interp:CondErr" = type { { i64, [3 x i64] }, %"compiler/diagmsg:Msg" }
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"compiler/names:Resolver" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/source:Span" = type { i32, i32 }
%"compiler/check:Checker" = type { ptr, ptr, i1, i1, i1, i1, i64, i64, i1, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, i64, i32, i1, { i64, [3 x i64] }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i32, i64, %"compiler/source:Span", i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/source:Span", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/check:knownRange", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i32, i1, i1, %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, i32, i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, i64, i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i32, i64, i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/text:StringBuilder", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/check:knownRange" = type { i64, i64, i64 }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/views:Kept" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" = type { ptr, i64 }
%"std/prelude/map:MapEntry.9f40551e0d6019a8e678d8f53048b6ba" = type { i64, %"compiler/source:Span" }
%"compiler/interp:Exec" = type { ptr, ptr, i32, %"compiler/lower:Lowerer", %"compiler/eval:Machine", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1 }
%"compiler/lower:Lowerer" = type { ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i32, i32, i64, i64, i64, i64, i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/typed:RefsKept", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/mir:GenInfo", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64 }
%"compiler/typed:RefsKept" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/mir:GenInfo" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/eval:Machine" = type { ptr, i32, i64, { ptr, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/mir:GenInfo", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/eval:Ptr", i32, { i64, [5 x i64] }, i64, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, i64, { i64, ptr }, { i64, ptr }, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i64, { i64, ptr }, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i64, { i64, ptr }, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"compiler/source:Span", i32 }
%"compiler/eval:Ptr" = type { i64, i64 }
%"compiler/eval:Image" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1 }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/ast:VarDecl" = type { { i64, ptr }, { i64, ptr }, ptr, { i64, ptr }, i1, i1, { i64, ptr }, i1 }
%"compiler/check:AssertAsk" = type { i64, i64, %"compiler/source:Span", %"compiler/source:Span", i64, i64, i1, { i64, ptr }, { i64, ptr }, { i64, [3 x i64] }, { i64, ptr }, { i64, [3 x i64] }, { i64, ptr } }
%"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" = type { i64, i64 }
%"compiler/interp:abortedAsk" = type { i64, i32, i64, %"compiler/source:Span", i64 }
%"compiler/check:ValueAsk" = type { i32, i64, %"compiler/source:Span", i32, i64, { i64, [3 x i64] }, i1, { i64, [3 x i64] } }
%"compiler/interp:chained" = type { i64, i1, { i64, ptr }, { i64, [3 x i64] } }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/ast:TopIf" = type { ptr, ptr, ptr, ptr }
%"compiler/source:Source" = type { { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/eval:Blob" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/ast:Func" = type { %"compiler/source:Span", ptr, i32, ptr, { i64, ptr }, { i64, ptr }, i1, i1, { i64, ptr }, ptr, i32 }
%"compiler/ast:Sig" = type { { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, i1, i1, i1, { i64, ptr } }
%"compiler/mir:Call" = type { { i64, [7 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Lvalue", i1, i32, i32, i32 }
%"compiler/mir:Range" = type { i32, i32 }
%"compiler/mir:Lvalue" = type { { i64, [2 x i64] }, %"compiler/mir:Range" }
%"compiler/mir:Task" = type { { i64, [7 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/source:Span", %"compiler/mir:Range" }
%"compiler/mir:Local" = type { i32, %"compiler/source:Span", i32, i32, { i64, [1 x i64] } }
%"compiler/mir:Fn" = type { { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/mir:BasicBlock" = type { %"compiler/mir:StmtList", { i64, [8 x i64] } }
%"compiler/mir:StmtList" = type { { i64, ptr }, i64 }
%"compiler/generic:AnyTable" = type { i32, i32, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/check:UnrollAsk" = type { { i64, ptr }, { i64, ptr }, i64, i32 }
%"compiler/check:EmbedAsk" = type { i64, i64, i32 }
%"compiler/check:Ask" = type { i64, i64, i32, ptr, i64, { i64, ptr } }
%"compiler/generic:ConstAsk" = type { i64, ptr, i32, i64, { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20" = type { i64, i32 }
%"compiler/check:ContractAsk" = type { i64, i64, %"compiler/source:Span", i64, %"compiler/source:Span", { i64, ptr }, { i64, ptr }, { i64, [3 x i64] }, { i64, ptr }, { i64, ptr }, i1, i64, i64 }
%"compiler/check:TopAssertAsk" = type { i64, %"compiler/source:Span", %"compiler/source:Span", i64, i64 }
%"compiler/ast:TopBranch" = type { %"compiler/source:Span", { i64, ptr }, i64 }
%"compiler/typed:Block" = type { i32, { i64, ptr } }
%"compiler/views:Viewer" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, i64, i1, i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, i1 }
%"std/prelude/map:MapEntry.b259c967cf16ba62f29f59ede353f7e9" = type { { i64, ptr }, i1 }
define dso_local { i64, ptr } @compiler_2finterp_2eAbortWhy(ptr %v0, i32 %a0) #0 {
entry:
  %l0 = alloca i32
  %l1 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store i32 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l0, !range !{i32 0, i32 20}
  %t3 = trunc i64 3 to i32
  %t4 = icmp eq i32 %t1, %t3
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %bb3
bb2:
  br label %bb4
bb3:
  store { i64, ptr } { i64 53, ptr getelementptr inbounds (<{ i64, [53 x i8] }>, ptr @.d0, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb69
bb4:
  %t6 = load i32, ptr %l0, !range !{i32 0, i32 20}
  %t8 = trunc i64 4 to i32
  %t9 = icmp eq i32 %t6, %t8
  br i1 %t9, label %bb5, label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb8
bb7:
  store { i64, ptr } { i64 50, ptr getelementptr inbounds (<{ i64, [50 x i8] }>, ptr @.d1, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb69
bb8:
  %t11 = load i32, ptr %l0, !range !{i32 0, i32 20}
  %t13 = trunc i64 5 to i32
  %t14 = icmp eq i32 %t11, %t13
  br i1 %t14, label %bb9, label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb12
bb11:
  store { i64, ptr } { i64 48, ptr getelementptr inbounds (<{ i64, [48 x i8] }>, ptr @.d2, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb69
bb12:
  %t16 = load i32, ptr %l0, !range !{i32 0, i32 20}
  %t18 = trunc i64 7 to i32
  %t19 = icmp eq i32 %t16, %t18
  br i1 %t19, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  store { i64, ptr } { i64 50, ptr getelementptr inbounds (<{ i64, [50 x i8] }>, ptr @.d3, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb69
bb16:
  %t21 = load i32, ptr %l0, !range !{i32 0, i32 20}
  %t23 = trunc i64 8 to i32
  %t24 = icmp eq i32 %t21, %t23
  br i1 %t24, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  store { i64, ptr } { i64 48, ptr getelementptr inbounds (<{ i64, [48 x i8] }>, ptr @.d4, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb69
bb20:
  %t26 = load i32, ptr %l0, !range !{i32 0, i32 20}
  %t28 = trunc i64 9 to i32
  %t29 = icmp eq i32 %t26, %t28
  br i1 %t29, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb24
bb23:
  store { i64, ptr } { i64 68, ptr getelementptr inbounds (<{ i64, [68 x i8] }>, ptr @.d5, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb69
bb24:
  %t31 = load i32, ptr %l0, !range !{i32 0, i32 20}
  %t33 = trunc i64 11 to i32
  %t34 = icmp eq i32 %t31, %t33
  br i1 %t34, label %bb25, label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb28
bb27:
  store { i64, ptr } { i64 81, ptr getelementptr inbounds (<{ i64, [81 x i8] }>, ptr @.d6, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb69
bb28:
  %t36 = load i32, ptr %l0, !range !{i32 0, i32 20}
  %t38 = trunc i64 12 to i32
  %t39 = icmp eq i32 %t36, %t38
  br i1 %t39, label %bb29, label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb32
bb31:
  store { i64, ptr } { i64 82, ptr getelementptr inbounds (<{ i64, [82 x i8] }>, ptr @.d7, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb69
bb32:
  %t41 = load i32, ptr %l0, !range !{i32 0, i32 20}
  %t43 = trunc i64 10 to i32
  %t44 = icmp eq i32 %t41, %t43
  br i1 %t44, label %bb33, label %bb34
bb33:
  br label %bb35
bb34:
  br label %bb36
bb35:
  store { i64, ptr } { i64 45, ptr getelementptr inbounds (<{ i64, [45 x i8] }>, ptr @.d8, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb69
bb36:
  %t46 = load i32, ptr %l0, !range !{i32 0, i32 20}
  %t48 = trunc i64 13 to i32
  %t49 = icmp eq i32 %t46, %t48
  br i1 %t49, label %bb37, label %bb38
bb37:
  br label %bb39
bb38:
  br label %bb40
bb39:
  store { i64, ptr } { i64 101, ptr getelementptr inbounds (<{ i64, [101 x i8] }>, ptr @.d9, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb69
bb40:
  %t51 = load i32, ptr %l0, !range !{i32 0, i32 20}
  %t53 = trunc i64 16 to i32
  %t54 = icmp eq i32 %t51, %t53
  br i1 %t54, label %bb41, label %bb42
bb41:
  br label %bb43
bb42:
  br label %bb44
bb43:
  store { i64, ptr } { i64 52, ptr getelementptr inbounds (<{ i64, [52 x i8] }>, ptr @.d10, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb69
bb44:
  %t56 = load i32, ptr %l0, !range !{i32 0, i32 20}
  %t58 = trunc i64 17 to i32
  %t59 = icmp eq i32 %t56, %t58
  br i1 %t59, label %bb45, label %bb46
bb45:
  br label %bb47
bb46:
  br label %bb48
bb47:
  store { i64, ptr } { i64 47, ptr getelementptr inbounds (<{ i64, [47 x i8] }>, ptr @.d11, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb69
bb48:
  %t61 = load i32, ptr %l0, !range !{i32 0, i32 20}
  %t63 = trunc i64 18 to i32
  %t64 = icmp eq i32 %t61, %t63
  br i1 %t64, label %bb49, label %bb50
bb49:
  br label %bb51
bb50:
  br label %bb52
bb51:
  store { i64, ptr } { i64 61, ptr getelementptr inbounds (<{ i64, [61 x i8] }>, ptr @.d12, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb69
bb52:
  %t66 = load i32, ptr %l0, !range !{i32 0, i32 20}
  %t68 = trunc i64 19 to i32
  %t69 = icmp eq i32 %t66, %t68
  br i1 %t69, label %bb53, label %bb54
bb53:
  br label %bb55
bb54:
  br label %bb56
bb55:
  store { i64, ptr } { i64 69, ptr getelementptr inbounds (<{ i64, [69 x i8] }>, ptr @.d13, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb69
bb56:
  %t71 = load i32, ptr %l0, !range !{i32 0, i32 20}
  %t73 = trunc i64 14 to i32
  %t74 = icmp eq i32 %t71, %t73
  br i1 %t74, label %bb57, label %bb58
bb57:
  br label %bb59
bb58:
  br label %bb60
bb59:
  store { i64, ptr } { i64 44, ptr getelementptr inbounds (<{ i64, [44 x i8] }>, ptr @.d14, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb69
bb60:
  %t76 = load i32, ptr %l0, !range !{i32 0, i32 20}
  %t78 = trunc i64 15 to i32
  %t79 = icmp eq i32 %t76, %t78
  br i1 %t79, label %bb61, label %bb62
bb61:
  br label %bb63
bb62:
  br label %bb64
bb63:
  store { i64, ptr } { i64 39, ptr getelementptr inbounds (<{ i64, [39 x i8] }>, ptr @.d15, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb69
bb64:
  br i1 true, label %bb65, label %bb66
bb65:
  br label %bb67
bb66:
  br label %bb68
bb67:
  store { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d16, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb69
bb68:
  call void @__olang_check_failed(ptr @olang_loc_eb3df5da8012cb63_283e587d4f698dd7)
  unreachable
bb69:
  %t81 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t81, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2finterp_2eAnalyze(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %a0, i1 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %lp3 = alloca ptr
  %lp4 = alloca ptr
  %lp5 = alloca ptr
  %lp6 = alloca ptr
  %lp7 = alloca ptr
  %lp8 = alloca ptr
  %lp9 = alloca ptr
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %lp13 = alloca ptr
  %lp14 = alloca ptr
  %lp15 = alloca ptr
  %l16 = alloca ptr
  %l17 = alloca i64
  %l18 = alloca %"compiler/interp:CondErr"
  %l19 = alloca i64
  %l20 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l21 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l22 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l23 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l24 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l25 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l26 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l31 = alloca i64
  %l34 = alloca i64
  %l36 = alloca %"compiler/names:Resolver"
  %l40 = alloca %"compiler/generic:Program"
  %l41 = alloca i64
  %l43 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l45 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l47 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l49 = alloca i64
  %l51 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l53 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l55 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l57 = alloca i64
  %l59 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l61 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l63 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l65 = alloca i64
  %l67 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l69 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l71 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l75 = alloca %"compiler/check:Checker"
  %l76 = alloca i64
  %l78 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l80 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l82 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l84 = alloca i64
  %l86 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l88 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l90 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l102 = alloca i64
  %l105 = alloca i64
  %l107 = alloca i64
  %l112 = alloca %"compiler/interp:CondErr"
  %l117 = alloca i64
  %l120 = alloca i64
  %l123 = alloca i64
  %l131 = alloca i64
  %l136 = alloca %"compiler/check:Checker"
  %t48 = alloca %"compiler/names:Resolver", align 8
  %t56 = alloca %"compiler/generic:Program", align 8
  %t327 = alloca %"compiler/check:Checker", align 8
  store ptr %a0, ptr %l0
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e(ptr %v2)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1, ptr %l20
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 72, i64 8)
  store ptr %t2, ptr %lp3
  %t3 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l20
  %t4 = load ptr, ptr %lp3
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t3, ptr %t4
  %t5 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e(ptr %v2)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t5, ptr %l21
  br label %bb2
bb2:
  %t6 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 72, i64 8)
  store ptr %t6, ptr %lp4
  %t7 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l21
  %t8 = load ptr, ptr %lp4
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t7, ptr %t8
  %t9 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e(ptr %v2)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t9, ptr %l22
  br label %bb3
bb3:
  %t10 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 72, i64 8)
  store ptr %t10, ptr %lp5
  %t11 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l22
  %t12 = load ptr, ptr %lp5
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t11, ptr %t12
  %t13 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_H6229cef23ae97e8e8df94ae881e620c3(ptr %v2)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t13, ptr %l23
  br label %bb4
bb4:
  %t14 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 72, i64 8)
  store ptr %t14, ptr %lp6
  %t15 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l23
  %t16 = load ptr, ptr %lp6
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t15, ptr %t16
  %t17 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20Array_3cI64_3e_26_3e(ptr %v2)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t17, ptr %l24
  br label %bb5
bb5:
  %t18 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 72, i64 8)
  store ptr %t18, ptr %lp7
  %t19 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l24
  %t20 = load ptr, ptr %lp7
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t19, ptr %t20
  %t21 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aStr_H4eff2894ad89de6e140d6d54faebb689(ptr %v2)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t21, ptr %l25
  br label %bb6
bb6:
  %t22 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 72, i64 8)
  store ptr %t22, ptr %lp8
  %t23 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l25
  %t24 = load ptr, ptr %lp8
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t23, ptr %t24
  %t25 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2finterp_3aCondErr_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t25, ptr %l26
  br label %bb7
bb7:
  %t26 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store ptr %t26, ptr %lp9
  %t27 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l26
  %t28 = load ptr, ptr %lp9
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t27, ptr %t28
  store i64 0, ptr %l10, !tbaa !24
  br label %bb8
bb8:
  %t29 = load i64, ptr %l10, !tbaa !24
  %t31 = add i64 %t29, 1
  store i64 %t31, ptr %l10, !tbaa !24
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/load:Loader", ptr %t33, i32 0, i32 4
  %t36 = load ptr, ptr %t35, !tbaa !29
  %t38 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eCount(ptr %v0, ptr %t36)
  store i64 %t38, ptr %l31
  br label %bb9
bb9:
  %t39 = load i64, ptr %l31, !tbaa !24
  store i64 %t39, ptr %l11, !tbaa !24
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/load:Loader", ptr %t40, i32 0, i32 4
  %t43 = load ptr, ptr %t42, !tbaa !29
  %t45 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eFirm(ptr %v0, ptr %t43)
  store i64 %t45, ptr %l34
  br label %bb10
bb10:
  %t46 = load i64, ptr %l34, !tbaa !24
  store i64 %t46, ptr %l12, !tbaa !24
  %t47 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fnames_3aResolver_2ector(ptr %t48, ptr %v0, ptr %v2, ptr %t47)
  call void @llvm.memmove.p0.p0.i64(ptr %l36, ptr %t48, i64 1072, i1 false)
  br label %bb11
bb11:
  %t50 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 1072, i64 8)
  store ptr %t50, ptr %lp13
  %t51 = load ptr, ptr %lp13
  call void @llvm.memmove.p0.p0.i64(ptr %t51, ptr %l36, i64 1072, i1 false)
  %t52 = load ptr, ptr %lp13
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eResolve(ptr %v2, ptr %t52)
  br label %bb12
bb12:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t55 = load ptr, ptr %lp13
  call void @compiler_2fgeneric_3aProgram_2ector(ptr %t56, ptr %v0, ptr %v2, ptr %v2, ptr %t54, ptr %t55)
  call void @llvm.memmove.p0.p0.i64(ptr %l40, ptr %t56, i64 5784, i1 false)
  br label %bb13
bb13:
  %t59 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 5784, i64 8)
  store ptr %t59, ptr %lp14
  %t60 = load ptr, ptr %lp14
  call void @llvm.memmove.p0.p0.i64(ptr %t60, ptr %l40, i64 5784, i1 false)
  %t61 = ptrtoint ptr %v2 to i64
  store i64 %t61, ptr %l41, !tbaa !24
  %t62 = load i1, ptr @olang_2esole_2ecompiler_2fgeneric_3aProgram_2e54
  br i1 %t62, label %bb14, label %bb15
bb14:
  %t64 = call ptr @__olang_region_make(ptr %v2)
  %t65 = ptrtoint ptr %t64 to i64
  store i64 %t65, ptr %l41, !tbaa !24
  br label %bb15
bb15:
  %t66 = load ptr, ptr %lp5
  %t67 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t66
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t67, ptr %l43
  %t68 = load i64, ptr %l41
  %t69 = inttoptr i64 %t68 to ptr
  %t71 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e(ptr %t69, ptr %l43)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t71, ptr %l45
  br label %bb16
bb16:
  %t72 = load i1, ptr @olang_2esole_2ecompiler_2fgeneric_3aProgram_2e54
  br i1 %t72, label %bb17, label %bb18
bb17:
  %t74 = load i64, ptr %l41
  %t75 = inttoptr i64 %t74 to ptr
  %t76 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l45, i32 0, i32 2
  %t77 = load { i64, ptr }, ptr %t76
  %t78 = extractvalue { i64, ptr } %t77, 1
  %t79 = call ptr @__olang_region_or(ptr %t78, ptr null)
  %t80 = call ptr @__olang_region_home(ptr %t79)
  %t81 = icmp ne ptr %t80, null
  %t82 = select i1 %t81, ptr %t80, ptr null
  %t83 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l45, i32 0, i32 1
  %t84 = load { i64, ptr }, ptr %t83
  %t85 = extractvalue { i64, ptr } %t84, 1
  %t86 = call ptr @__olang_region_or(ptr %t85, ptr null)
  %t87 = call ptr @__olang_region_home(ptr %t86)
  %t88 = icmp ne ptr %t87, null
  %t89 = select i1 %t88, ptr %t87, ptr %t82
  %t90 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l45, i32 0, i32 0
  %t91 = load { i64, ptr }, ptr %t90
  %t92 = extractvalue { i64, ptr } %t91, 1
  %t93 = call ptr @__olang_region_or(ptr %t92, ptr null)
  %t94 = call ptr @__olang_region_home(ptr %t93)
  %t95 = icmp ne ptr %t94, null
  %t96 = select i1 %t95, ptr %t94, ptr %t89
  %t97 = icmp eq ptr %t96, %t75
  call void @__olang_region_settle(ptr %t75, i1 %t97)
  br label %bb18
bb18:
  %t98 = load ptr, ptr %lp14
  %t99 = getelementptr %"compiler/generic:Program", ptr %t98, i32 0, i32 54
  %t100 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t99
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t100, ptr %l47
  %t101 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l45
  %t102 = load ptr, ptr %lp14
  %t103 = getelementptr %"compiler/generic:Program", ptr %t102, i32 0, i32 54
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t101, ptr %t103
  %t104 = load i1, ptr @olang_2esole_2ecompiler_2fgeneric_3aProgram_2e54
  br i1 %t104, label %bb19, label %bb20
bb19:
  %t106 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l47, i32 0, i32 2
  %t107 = load { i64, ptr }, ptr %t106
  %t108 = extractvalue { i64, ptr } %t107, 1
  %t109 = call ptr @__olang_region_or(ptr %t108, ptr null)
  %t110 = call ptr @__olang_region_home(ptr %t109)
  %t111 = icmp ne ptr %t110, null
  %t112 = select i1 %t111, ptr %t110, ptr null
  %t113 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l47, i32 0, i32 1
  %t114 = load { i64, ptr }, ptr %t113
  %t115 = extractvalue { i64, ptr } %t114, 1
  %t116 = call ptr @__olang_region_or(ptr %t115, ptr null)
  %t117 = call ptr @__olang_region_home(ptr %t116)
  %t118 = icmp ne ptr %t117, null
  %t119 = select i1 %t118, ptr %t117, ptr %t112
  %t120 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l47, i32 0, i32 0
  %t121 = load { i64, ptr }, ptr %t120
  %t122 = extractvalue { i64, ptr } %t121, 1
  %t123 = call ptr @__olang_region_or(ptr %t122, ptr null)
  %t124 = call ptr @__olang_region_home(ptr %t123)
  %t125 = icmp ne ptr %t124, null
  %t126 = select i1 %t125, ptr %t124, ptr %t119
  call void @__olang_region_drop(ptr %t126)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" zeroinitializer, ptr %l47
  br label %bb20
bb20:
  %t127 = ptrtoint ptr %v2 to i64
  store i64 %t127, ptr %l49, !tbaa !24
  %t128 = load i1, ptr @olang_2esole_2ecompiler_2fgeneric_3aProgram_2e56
  br i1 %t128, label %bb21, label %bb22
bb21:
  %t130 = call ptr @__olang_region_make(ptr %v2)
  %t131 = ptrtoint ptr %t130 to i64
  store i64 %t131, ptr %l49, !tbaa !24
  br label %bb22
bb22:
  %t132 = load ptr, ptr %lp6
  %t133 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t132
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t133, ptr %l51
  %t134 = load i64, ptr %l49
  %t135 = inttoptr i64 %t134 to ptr
  %t137 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_H78c060037e43d34bc1ccb9cb8b566ae6(ptr %t135, ptr %l51)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t137, ptr %l53
  br label %bb23
bb23:
  %t138 = load i1, ptr @olang_2esole_2ecompiler_2fgeneric_3aProgram_2e56
  br i1 %t138, label %bb24, label %bb25
bb24:
  %t140 = load i64, ptr %l49
  %t141 = inttoptr i64 %t140 to ptr
  %t142 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l53, i32 0, i32 2
  %t143 = load { i64, ptr }, ptr %t142
  %t144 = extractvalue { i64, ptr } %t143, 1
  %t145 = call ptr @__olang_region_or(ptr %t144, ptr null)
  %t146 = call ptr @__olang_region_home(ptr %t145)
  %t147 = icmp ne ptr %t146, null
  %t148 = select i1 %t147, ptr %t146, ptr null
  %t149 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l53, i32 0, i32 1
  %t150 = load { i64, ptr }, ptr %t149
  %t151 = extractvalue { i64, ptr } %t150, 1
  %t152 = call ptr @__olang_region_or(ptr %t151, ptr null)
  %t153 = call ptr @__olang_region_home(ptr %t152)
  %t154 = icmp ne ptr %t153, null
  %t155 = select i1 %t154, ptr %t153, ptr %t148
  %t156 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l53, i32 0, i32 0
  %t157 = load { i64, ptr }, ptr %t156
  %t158 = extractvalue { i64, ptr } %t157, 1
  %t159 = call ptr @__olang_region_or(ptr %t158, ptr null)
  %t160 = call ptr @__olang_region_home(ptr %t159)
  %t161 = icmp ne ptr %t160, null
  %t162 = select i1 %t161, ptr %t160, ptr %t155
  %t163 = icmp eq ptr %t162, %t141
  call void @__olang_region_settle(ptr %t141, i1 %t163)
  br label %bb25
bb25:
  %t164 = load ptr, ptr %lp14
  %t165 = getelementptr %"compiler/generic:Program", ptr %t164, i32 0, i32 56
  %t166 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t165
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t166, ptr %l55
  %t167 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l53
  %t168 = load ptr, ptr %lp14
  %t169 = getelementptr %"compiler/generic:Program", ptr %t168, i32 0, i32 56
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t167, ptr %t169
  %t170 = load i1, ptr @olang_2esole_2ecompiler_2fgeneric_3aProgram_2e56
  br i1 %t170, label %bb26, label %bb27
bb26:
  %t172 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l55, i32 0, i32 2
  %t173 = load { i64, ptr }, ptr %t172
  %t174 = extractvalue { i64, ptr } %t173, 1
  %t175 = call ptr @__olang_region_or(ptr %t174, ptr null)
  %t176 = call ptr @__olang_region_home(ptr %t175)
  %t177 = icmp ne ptr %t176, null
  %t178 = select i1 %t177, ptr %t176, ptr null
  %t179 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l55, i32 0, i32 1
  %t180 = load { i64, ptr }, ptr %t179
  %t181 = extractvalue { i64, ptr } %t180, 1
  %t182 = call ptr @__olang_region_or(ptr %t181, ptr null)
  %t183 = call ptr @__olang_region_home(ptr %t182)
  %t184 = icmp ne ptr %t183, null
  %t185 = select i1 %t184, ptr %t183, ptr %t178
  %t186 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l55, i32 0, i32 0
  %t187 = load { i64, ptr }, ptr %t186
  %t188 = extractvalue { i64, ptr } %t187, 1
  %t189 = call ptr @__olang_region_or(ptr %t188, ptr null)
  %t190 = call ptr @__olang_region_home(ptr %t189)
  %t191 = icmp ne ptr %t190, null
  %t192 = select i1 %t191, ptr %t190, ptr %t185
  call void @__olang_region_drop(ptr %t192)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" zeroinitializer, ptr %l55
  br label %bb27
bb27:
  %t193 = ptrtoint ptr %v2 to i64
  store i64 %t193, ptr %l57, !tbaa !24
  %t194 = load i1, ptr @olang_2esole_2ecompiler_2fgeneric_3aProgram_2e57
  br i1 %t194, label %bb28, label %bb29
bb28:
  %t196 = call ptr @__olang_region_make(ptr %v2)
  %t197 = ptrtoint ptr %t196 to i64
  store i64 %t197, ptr %l57, !tbaa !24
  br label %bb29
bb29:
  %t198 = load ptr, ptr %lp7
  %t199 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t198
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t199, ptr %l59
  %t200 = load i64, ptr %l57
  %t201 = inttoptr i64 %t200 to ptr
  %t203 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20Array_3cI64_3e_26_3e(ptr %t201, ptr %l59)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t203, ptr %l61
  br label %bb30
bb30:
  %t204 = load i1, ptr @olang_2esole_2ecompiler_2fgeneric_3aProgram_2e57
  br i1 %t204, label %bb31, label %bb32
bb31:
  %t206 = load i64, ptr %l57
  %t207 = inttoptr i64 %t206 to ptr
  %t208 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l61, i32 0, i32 2
  %t209 = load { i64, ptr }, ptr %t208
  %t210 = extractvalue { i64, ptr } %t209, 1
  %t211 = call ptr @__olang_region_or(ptr %t210, ptr null)
  %t212 = call ptr @__olang_region_home(ptr %t211)
  %t213 = icmp ne ptr %t212, null
  %t214 = select i1 %t213, ptr %t212, ptr null
  %t215 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l61, i32 0, i32 1
  %t216 = load { i64, ptr }, ptr %t215
  %t217 = extractvalue { i64, ptr } %t216, 1
  %t218 = call ptr @__olang_region_or(ptr %t217, ptr null)
  %t219 = call ptr @__olang_region_home(ptr %t218)
  %t220 = icmp ne ptr %t219, null
  %t221 = select i1 %t220, ptr %t219, ptr %t214
  %t222 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l61, i32 0, i32 0
  %t223 = load { i64, ptr }, ptr %t222
  %t224 = extractvalue { i64, ptr } %t223, 1
  %t225 = call ptr @__olang_region_or(ptr %t224, ptr null)
  %t226 = call ptr @__olang_region_home(ptr %t225)
  %t227 = icmp ne ptr %t226, null
  %t228 = select i1 %t227, ptr %t226, ptr %t221
  %t229 = icmp eq ptr %t228, %t207
  call void @__olang_region_settle(ptr %t207, i1 %t229)
  br label %bb32
bb32:
  %t230 = load ptr, ptr %lp14
  %t231 = getelementptr %"compiler/generic:Program", ptr %t230, i32 0, i32 57
  %t232 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t231
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t232, ptr %l63
  %t233 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l61
  %t234 = load ptr, ptr %lp14
  %t235 = getelementptr %"compiler/generic:Program", ptr %t234, i32 0, i32 57
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t233, ptr %t235
  %t236 = load i1, ptr @olang_2esole_2ecompiler_2fgeneric_3aProgram_2e57
  br i1 %t236, label %bb33, label %bb34
bb33:
  %t238 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l63, i32 0, i32 2
  %t239 = load { i64, ptr }, ptr %t238
  %t240 = extractvalue { i64, ptr } %t239, 1
  %t241 = call ptr @__olang_region_or(ptr %t240, ptr null)
  %t242 = call ptr @__olang_region_home(ptr %t241)
  %t243 = icmp ne ptr %t242, null
  %t244 = select i1 %t243, ptr %t242, ptr null
  %t245 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l63, i32 0, i32 1
  %t246 = load { i64, ptr }, ptr %t245
  %t247 = extractvalue { i64, ptr } %t246, 1
  %t248 = call ptr @__olang_region_or(ptr %t247, ptr null)
  %t249 = call ptr @__olang_region_home(ptr %t248)
  %t250 = icmp ne ptr %t249, null
  %t251 = select i1 %t250, ptr %t249, ptr %t244
  %t252 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l63, i32 0, i32 0
  %t253 = load { i64, ptr }, ptr %t252
  %t254 = extractvalue { i64, ptr } %t253, 1
  %t255 = call ptr @__olang_region_or(ptr %t254, ptr null)
  %t256 = call ptr @__olang_region_home(ptr %t255)
  %t257 = icmp ne ptr %t256, null
  %t258 = select i1 %t257, ptr %t256, ptr %t251
  call void @__olang_region_drop(ptr %t258)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" zeroinitializer, ptr %l63
  br label %bb34
bb34:
  %t259 = ptrtoint ptr %v2 to i64
  store i64 %t259, ptr %l65, !tbaa !24
  %t260 = load i1, ptr @olang_2esole_2ecompiler_2fgeneric_3aProgram_2e58
  br i1 %t260, label %bb35, label %bb36
bb35:
  %t262 = call ptr @__olang_region_make(ptr %v2)
  %t263 = ptrtoint ptr %t262 to i64
  store i64 %t263, ptr %l65, !tbaa !24
  br label %bb36
bb36:
  %t264 = load ptr, ptr %lp8
  %t265 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t264
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t265, ptr %l67
  %t266 = load i64, ptr %l65
  %t267 = inttoptr i64 %t266 to ptr
  %t269 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aStr_H04c1419530b7cb79edb46934aa4393dc(ptr %t267, ptr %l67)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t269, ptr %l69
  br label %bb37
bb37:
  %t270 = load i1, ptr @olang_2esole_2ecompiler_2fgeneric_3aProgram_2e58
  br i1 %t270, label %bb38, label %bb39
bb38:
  %t272 = load i64, ptr %l65
  %t273 = inttoptr i64 %t272 to ptr
  %t274 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l69, i32 0, i32 2
  %t275 = load { i64, ptr }, ptr %t274
  %t276 = extractvalue { i64, ptr } %t275, 1
  %t277 = call ptr @__olang_region_or(ptr %t276, ptr null)
  %t278 = call ptr @__olang_region_home(ptr %t277)
  %t279 = icmp ne ptr %t278, null
  %t280 = select i1 %t279, ptr %t278, ptr null
  %t281 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l69, i32 0, i32 1
  %t282 = load { i64, ptr }, ptr %t281
  %t283 = extractvalue { i64, ptr } %t282, 1
  %t284 = call ptr @__olang_region_or(ptr %t283, ptr null)
  %t285 = call ptr @__olang_region_home(ptr %t284)
  %t286 = icmp ne ptr %t285, null
  %t287 = select i1 %t286, ptr %t285, ptr %t280
  %t288 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l69, i32 0, i32 0
  %t289 = load { i64, ptr }, ptr %t288
  %t290 = extractvalue { i64, ptr } %t289, 1
  %t291 = call ptr @__olang_region_or(ptr %t290, ptr null)
  %t292 = call ptr @__olang_region_home(ptr %t291)
  %t293 = icmp ne ptr %t292, null
  %t294 = select i1 %t293, ptr %t292, ptr %t287
  %t295 = icmp eq ptr %t294, %t273
  call void @__olang_region_settle(ptr %t273, i1 %t295)
  br label %bb39
bb39:
  %t296 = load ptr, ptr %lp14
  %t297 = getelementptr %"compiler/generic:Program", ptr %t296, i32 0, i32 58
  %t298 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t297
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t298, ptr %l71
  %t299 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l69
  %t300 = load ptr, ptr %lp14
  %t301 = getelementptr %"compiler/generic:Program", ptr %t300, i32 0, i32 58
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t299, ptr %t301
  %t302 = load i1, ptr @olang_2esole_2ecompiler_2fgeneric_3aProgram_2e58
  br i1 %t302, label %bb40, label %bb41
bb40:
  %t304 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l71, i32 0, i32 2
  %t305 = load { i64, ptr }, ptr %t304
  %t306 = extractvalue { i64, ptr } %t305, 1
  %t307 = call ptr @__olang_region_or(ptr %t306, ptr null)
  %t308 = call ptr @__olang_region_home(ptr %t307)
  %t309 = icmp ne ptr %t308, null
  %t310 = select i1 %t309, ptr %t308, ptr null
  %t311 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l71, i32 0, i32 1
  %t312 = load { i64, ptr }, ptr %t311
  %t313 = extractvalue { i64, ptr } %t312, 1
  %t314 = call ptr @__olang_region_or(ptr %t313, ptr null)
  %t315 = call ptr @__olang_region_home(ptr %t314)
  %t316 = icmp ne ptr %t315, null
  %t317 = select i1 %t316, ptr %t315, ptr %t310
  %t318 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l71, i32 0, i32 0
  %t319 = load { i64, ptr }, ptr %t318
  %t320 = extractvalue { i64, ptr } %t319, 1
  %t321 = call ptr @__olang_region_or(ptr %t320, ptr null)
  %t322 = call ptr @__olang_region_home(ptr %t321)
  %t323 = icmp ne ptr %t322, null
  %t324 = select i1 %t323, ptr %t322, ptr %t317
  call void @__olang_region_drop(ptr %t324)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" zeroinitializer, ptr %l71
  br label %bb41
bb41:
  %t325 = load ptr, ptr %lp14
  call void @compiler_2fcheck_3aChecker_2ector(ptr %t327, ptr %v2, ptr %v2, ptr %t325, i1 %a1)
  call void @llvm.memmove.p0.p0.i64(ptr %l75, ptr %t327, i64 5416, i1 false)
  br label %bb42
bb42:
  %t330 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 5416, i64 8)
  store ptr %t330, ptr %lp15
  %t331 = load ptr, ptr %lp15
  call void @llvm.memmove.p0.p0.i64(ptr %t331, ptr %l75, i64 5416, i1 false)
  %t332 = ptrtoint ptr %v2 to i64
  store i64 %t332, ptr %l76, !tbaa !24
  %t333 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e112
  br i1 %t333, label %bb43, label %bb44
bb43:
  %t335 = call ptr @__olang_region_make(ptr %v2)
  %t336 = ptrtoint ptr %t335 to i64
  store i64 %t336, ptr %l76, !tbaa !24
  br label %bb44
bb44:
  %t337 = load ptr, ptr %lp3
  %t338 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t337
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t338, ptr %l78
  %t339 = load i64, ptr %l76
  %t340 = inttoptr i64 %t339 to ptr
  %t342 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e(ptr %t340, ptr %l78)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t342, ptr %l80
  br label %bb45
bb45:
  %t343 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e112
  br i1 %t343, label %bb46, label %bb47
bb46:
  %t345 = load i64, ptr %l76
  %t346 = inttoptr i64 %t345 to ptr
  %t347 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l80, i32 0, i32 2
  %t348 = load { i64, ptr }, ptr %t347
  %t349 = extractvalue { i64, ptr } %t348, 1
  %t350 = call ptr @__olang_region_or(ptr %t349, ptr null)
  %t351 = call ptr @__olang_region_home(ptr %t350)
  %t352 = icmp ne ptr %t351, null
  %t353 = select i1 %t352, ptr %t351, ptr null
  %t354 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l80, i32 0, i32 1
  %t355 = load { i64, ptr }, ptr %t354
  %t356 = extractvalue { i64, ptr } %t355, 1
  %t357 = call ptr @__olang_region_or(ptr %t356, ptr null)
  %t358 = call ptr @__olang_region_home(ptr %t357)
  %t359 = icmp ne ptr %t358, null
  %t360 = select i1 %t359, ptr %t358, ptr %t353
  %t361 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l80, i32 0, i32 0
  %t362 = load { i64, ptr }, ptr %t361
  %t363 = extractvalue { i64, ptr } %t362, 1
  %t364 = call ptr @__olang_region_or(ptr %t363, ptr null)
  %t365 = call ptr @__olang_region_home(ptr %t364)
  %t366 = icmp ne ptr %t365, null
  %t367 = select i1 %t366, ptr %t365, ptr %t360
  %t368 = icmp eq ptr %t367, %t346
  call void @__olang_region_settle(ptr %t346, i1 %t368)
  br label %bb47
bb47:
  %t369 = load ptr, ptr %lp15
  %t370 = getelementptr %"compiler/check:Checker", ptr %t369, i32 0, i32 112
  %t371 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t370
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t371, ptr %l82
  %t372 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l80
  %t373 = load ptr, ptr %lp15
  %t374 = getelementptr %"compiler/check:Checker", ptr %t373, i32 0, i32 112
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t372, ptr %t374
  %t375 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e112
  br i1 %t375, label %bb48, label %bb49
bb48:
  %t377 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l82, i32 0, i32 2
  %t378 = load { i64, ptr }, ptr %t377
  %t379 = extractvalue { i64, ptr } %t378, 1
  %t380 = call ptr @__olang_region_or(ptr %t379, ptr null)
  %t381 = call ptr @__olang_region_home(ptr %t380)
  %t382 = icmp ne ptr %t381, null
  %t383 = select i1 %t382, ptr %t381, ptr null
  %t384 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l82, i32 0, i32 1
  %t385 = load { i64, ptr }, ptr %t384
  %t386 = extractvalue { i64, ptr } %t385, 1
  %t387 = call ptr @__olang_region_or(ptr %t386, ptr null)
  %t388 = call ptr @__olang_region_home(ptr %t387)
  %t389 = icmp ne ptr %t388, null
  %t390 = select i1 %t389, ptr %t388, ptr %t383
  %t391 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l82, i32 0, i32 0
  %t392 = load { i64, ptr }, ptr %t391
  %t393 = extractvalue { i64, ptr } %t392, 1
  %t394 = call ptr @__olang_region_or(ptr %t393, ptr null)
  %t395 = call ptr @__olang_region_home(ptr %t394)
  %t396 = icmp ne ptr %t395, null
  %t397 = select i1 %t396, ptr %t395, ptr %t390
  call void @__olang_region_drop(ptr %t397)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" zeroinitializer, ptr %l82
  br label %bb49
bb49:
  %t398 = ptrtoint ptr %v2 to i64
  store i64 %t398, ptr %l84, !tbaa !24
  %t399 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e156
  br i1 %t399, label %bb50, label %bb51
bb50:
  %t401 = call ptr @__olang_region_make(ptr %v2)
  %t402 = ptrtoint ptr %t401 to i64
  store i64 %t402, ptr %l84, !tbaa !24
  br label %bb51
bb51:
  %t403 = load ptr, ptr %lp4
  %t404 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t403
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t404, ptr %l86
  %t405 = load i64, ptr %l84
  %t406 = inttoptr i64 %t405 to ptr
  %t408 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e(ptr %t406, ptr %l86)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t408, ptr %l88
  br label %bb52
bb52:
  %t409 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e156
  br i1 %t409, label %bb53, label %bb54
bb53:
  %t411 = load i64, ptr %l84
  %t412 = inttoptr i64 %t411 to ptr
  %t413 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l88, i32 0, i32 2
  %t414 = load { i64, ptr }, ptr %t413
  %t415 = extractvalue { i64, ptr } %t414, 1
  %t416 = call ptr @__olang_region_or(ptr %t415, ptr null)
  %t417 = call ptr @__olang_region_home(ptr %t416)
  %t418 = icmp ne ptr %t417, null
  %t419 = select i1 %t418, ptr %t417, ptr null
  %t420 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l88, i32 0, i32 1
  %t421 = load { i64, ptr }, ptr %t420
  %t422 = extractvalue { i64, ptr } %t421, 1
  %t423 = call ptr @__olang_region_or(ptr %t422, ptr null)
  %t424 = call ptr @__olang_region_home(ptr %t423)
  %t425 = icmp ne ptr %t424, null
  %t426 = select i1 %t425, ptr %t424, ptr %t419
  %t427 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l88, i32 0, i32 0
  %t428 = load { i64, ptr }, ptr %t427
  %t429 = extractvalue { i64, ptr } %t428, 1
  %t430 = call ptr @__olang_region_or(ptr %t429, ptr null)
  %t431 = call ptr @__olang_region_home(ptr %t430)
  %t432 = icmp ne ptr %t431, null
  %t433 = select i1 %t432, ptr %t431, ptr %t426
  %t434 = icmp eq ptr %t433, %t412
  call void @__olang_region_settle(ptr %t412, i1 %t434)
  br label %bb54
bb54:
  %t435 = load ptr, ptr %lp15
  %t436 = getelementptr %"compiler/check:Checker", ptr %t435, i32 0, i32 156
  %t437 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t436
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t437, ptr %l90
  %t438 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l88
  %t439 = load ptr, ptr %lp15
  %t440 = getelementptr %"compiler/check:Checker", ptr %t439, i32 0, i32 156
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t438, ptr %t440
  %t441 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e156
  br i1 %t441, label %bb55, label %bb56
bb55:
  %t443 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l90, i32 0, i32 2
  %t444 = load { i64, ptr }, ptr %t443
  %t445 = extractvalue { i64, ptr } %t444, 1
  %t446 = call ptr @__olang_region_or(ptr %t445, ptr null)
  %t447 = call ptr @__olang_region_home(ptr %t446)
  %t448 = icmp ne ptr %t447, null
  %t449 = select i1 %t448, ptr %t447, ptr null
  %t450 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l90, i32 0, i32 1
  %t451 = load { i64, ptr }, ptr %t450
  %t452 = extractvalue { i64, ptr } %t451, 1
  %t453 = call ptr @__olang_region_or(ptr %t452, ptr null)
  %t454 = call ptr @__olang_region_home(ptr %t453)
  %t455 = icmp ne ptr %t454, null
  %t456 = select i1 %t455, ptr %t454, ptr %t449
  %t457 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l90, i32 0, i32 0
  %t458 = load { i64, ptr }, ptr %t457
  %t459 = extractvalue { i64, ptr } %t458, 1
  %t460 = call ptr @__olang_region_or(ptr %t459, ptr null)
  %t461 = call ptr @__olang_region_home(ptr %t460)
  %t462 = icmp ne ptr %t461, null
  %t463 = select i1 %t462, ptr %t461, ptr %t456
  call void @__olang_region_drop(ptr %t463)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" zeroinitializer, ptr %l90
  br label %bb56
bb56:
  %t464 = load ptr, ptr %lp15
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eCheckProgram(ptr %v2, ptr %t464)
  br label %bb57
bb57:
  %t466 = load ptr, ptr %l0, !tbaa !29
  %t467 = load ptr, ptr %lp15
  %t468 = load ptr, ptr %lp3
  %t469 = load ptr, ptr %lp4
  %t470 = load ptr, ptr %lp5
  %t471 = load ptr, ptr %lp6
  %t472 = load ptr, ptr %lp7
  %t473 = load ptr, ptr %lp8
  %t474 = load ptr, ptr %lp9
  %t484 = call i64 @compiler_2finterp_2edecide(ptr %v0, ptr %v2, ptr %v2, ptr %v2, ptr %v2, ptr %v2, ptr %v2, ptr %v2, ptr %v2, ptr %t466, ptr %t467, ptr %t468, ptr %t469, ptr %t470, ptr %t471, ptr %t472, ptr %t473, ptr %t474)
  store i64 %t484, ptr %l102
  br label %bb58
bb58:
  %t485 = load i64, ptr %l102, !tbaa !24
  %t486 = icmp eq i64 %t485, 0
  br i1 %t486, label %bb59, label %bb60
bb59:
  %t488 = load ptr, ptr %lp9
  store ptr %t488, ptr %l16, !tbaa !29
  store i64 0, ptr %l17, !tbaa !24
  br label %bb61
bb60:
  br label %bb80
bb61:
  %t490 = load i64, ptr %l17, !tbaa !24
  store i64 %t490, ptr %l105, !tbaa !24
  %t491 = load ptr, ptr %l16, !tbaa !29
  %t493 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2finterp_3aCondErr_3e_2eLen_3ccompiler_2finterp_3aCondErr_3e(ptr %v2, ptr %t491)
  store i64 %t493, ptr %l107
  br label %bb62
bb62:
  %t494 = load i64, ptr %l105, !tbaa !24
  %t495 = load i64, ptr %l107, !tbaa !24
  %t496 = icmp slt i64 %t494, %t495
  %t498 = xor i1 %t496, true
  br i1 %t498, label %bb63, label %bb64
bb63:
  br label %bb69
bb64:
  br label %bb65
bb65:
  %t500 = load ptr, ptr %l16, !tbaa !29
  %t501 = load i64, ptr %l17, !tbaa !24
  %t504 = call %"compiler/interp:CondErr" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2finterp_3aCondErr_3e_2eAt_3ccompiler_2finterp_3aCondErr_3e(ptr %v2, ptr %v2, ptr %t500, i64 %t501)
  store %"compiler/interp:CondErr" %t504, ptr %l112
  br label %bb66
bb66:
  %t505 = load %"compiler/interp:CondErr", ptr %l112
  store %"compiler/interp:CondErr" %t505, ptr %l18
  %t506 = load ptr, ptr %l0, !tbaa !29
  %t508 = getelementptr %"compiler/load:Loader", ptr %t506, i32 0, i32 4
  %t509 = load ptr, ptr %t508, !tbaa !29
  %t510 = getelementptr %"compiler/interp:CondErr", ptr %l18, i32 0, i32 0
  %t511 = load { i64, [3 x i64] }, ptr %t510
  %t512 = getelementptr %"compiler/interp:CondErr", ptr %l18, i32 0, i32 1
  %t513 = load %"compiler/diagmsg:Msg", ptr %t512
  %t517 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v2, ptr %t509, { i64, [3 x i64] } %t511, %"compiler/diagmsg:Msg" %t513)
  store i64 %t517, ptr %l117
  br label %bb67
bb67:
  br label %bb68
bb68:
  %t518 = load i64, ptr %l17, !tbaa !24
  %t520 = add i64 %t518, 1
  store i64 %t520, ptr %l17, !tbaa !24
  br label %bb61
bb69:
  %t522 = call i64 @std_2ftime_2eNow()
  store i64 %t522, ptr %l120
  br label %bb70
bb70:
  %t523 = load i64, ptr %l120, !tbaa !24
  store i64 %t523, ptr %l19, !tbaa !24
  %t524 = load ptr, ptr %l0, !tbaa !29
  %t526 = getelementptr %"compiler/load:Loader", ptr %t524, i32 0, i32 4
  %t527 = load ptr, ptr %t526, !tbaa !29
  %t529 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eFirm(ptr %v0, ptr %t527)
  store i64 %t529, ptr %l123
  br label %bb71
bb71:
  %t530 = load i64, ptr %l12, !tbaa !24
  %t531 = load i64, ptr %l123, !tbaa !24
  %t533 = sub i64 %t531, %t530
  %t535 = icmp eq i64 %t533, 0
  br i1 %t535, label %bb72, label %bb73
bb72:
  %t537 = load ptr, ptr %l2, !tbaa !29
  %t539 = getelementptr %"compiler/views:Kept", ptr %t537, i32 0, i32 3
  %t540 = load i1, ptr %t539, !tbaa !21
  br i1 %t540, label %bb74, label %bb75
bb73:
  br label %bb78
bb74:
  %t542 = load ptr, ptr %lp15
  %t543 = getelementptr %"compiler/check:Checker", ptr %t542, i32 0, i32 80
  store i1 true, ptr %t543, !tbaa !21
  br label %bb77
bb75:
  %t544 = load ptr, ptr %lp15
  %t545 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2finterp_2ejudgeViews(ptr %v2, ptr %v1, ptr %t544, ptr %t545)
  br label %bb76
bb76:
  br label %bb77
bb77:
  br label %bb78
bb78:
  %t548 = call i64 @std_2ftime_2eNow()
  store i64 %t548, ptr %l131
  br label %bb79
bb79:
  %t549 = load i64, ptr %l19, !tbaa !24
  %t550 = load i64, ptr %l131, !tbaa !24
  %t552 = sub i64 %t550, %t549
  %t554 = sdiv i64 %t552, 1000000
  %t556 = load ptr, ptr %lp15
  %t557 = getelementptr %"compiler/check:Checker", ptr %t556, i32 0, i32 81
  store i64 %t554, ptr %t557, !tbaa !24
  %t558 = load i64, ptr %l10, !tbaa !24
  %t560 = load ptr, ptr %lp15
  %t561 = getelementptr %"compiler/check:Checker", ptr %t560, i32 0, i32 82
  store i64 %t558, ptr %t561, !tbaa !24
  %t562 = load ptr, ptr %lp15
  call void @llvm.memmove.p0.p0.i64(ptr %l136, ptr %t562, i64 5416, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l136, i64 5416, i1 false)
  br label %ret
bb80:
  %t563 = load ptr, ptr %l0, !tbaa !29
  %t565 = getelementptr %"compiler/load:Loader", ptr %t563, i32 0, i32 4
  %t566 = load ptr, ptr %t565, !tbaa !29
  %t567 = load i64, ptr %l11, !tbaa !24
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eForget(ptr %v0, ptr %t566, i64 %t567)
  br label %bb81
bb81:
  br label %bb82
bb82:
  br label %bb8
ret:
  ret void
}

define dso_local %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @compiler_2finterp_2eBake(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %lp1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l5 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l6 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca { i64, [2 x i64] }
  %l12 = alloca i64
  %l13 = alloca i32
  %l14 = alloca ptr
  %l17 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l18 = alloca %"std/prelude/map:MapEntry.9f40551e0d6019a8e678d8f53048b6ba"
  %l19 = alloca ptr
  %l20 = alloca { i64, ptr }
  %l21 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l27 = alloca %"compiler/interp:Exec"
  %l29 = alloca ptr
  %l30 = alloca i64
  %l33 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l35 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l37 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l44 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l45 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l48 = alloca i64
  %l50 = alloca i64
  %l55 = alloca i64
  %l60 = alloca ptr
  %l74 = alloca ptr
  %l78 = alloca i1
  %l81 = alloca i1
  %l82 = alloca %"compiler/eval:Image"
  %l86 = alloca %"compiler/eval:Image"
  %l87 = alloca i32
  %l89 = alloca i1
  %l93 = alloca %"compiler/eval:Image"
  %l98 = alloca %"compiler/eval:Image"
  %l99 = alloca i32
  %l101 = alloca i1
  %l118 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l119 = alloca %"std/prelude/map:MapEntry.9f40551e0d6019a8e678d8f53048b6ba"
  %l121 = alloca %"std/prelude/map:MapEntry.9f40551e0d6019a8e678d8f53048b6ba"
  %l122 = alloca i32
  %l124 = alloca i1
  %l127 = alloca i1
  %l128 = alloca i1
  %l132 = alloca i1
  %l136 = alloca ptr
  %l137 = alloca { i64, ptr }
  %l140 = alloca { i64, ptr }
  %l141 = alloca i32
  %l142 = alloca { i64, ptr }
  %l144 = alloca i1
  %l145 = alloca ptr
  %l152 = alloca { i64, [3 x i64] }
  %l153 = alloca { i64, ptr }
  %l155 = alloca %"compiler/diagmsg:Msg"
  %l156 = alloca i64
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %t12 = alloca %"compiler/interp:Exec", align 8
  %t331 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2feval_3aImage_3e(ptr %v1)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1, ptr %l21
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 72, i64 8)
  store ptr %t2, ptr %lp1
  %t3 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l21
  %t4 = load ptr, ptr %lp1
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t3, ptr %t4
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/check:Checker", ptr %t5, i32 0, i32 1
  %t8 = load ptr, ptr %t7, !tbaa !29
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/check:Checker", ptr %t9, i32 0, i32 18
  call void @compiler_2finterp_3aExec_2ector(ptr %t12, ptr %v0, ptr %v0, ptr %v0, ptr %t8, ptr %t11, i32 0)
  call void @llvm.memmove.p0.p0.i64(ptr %l27, ptr %t12, i64 6136, i1 false)
  br label %bb2
bb2:
  %t16 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 6136, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t16, ptr %l27, i64 6136, i1 false)
  store ptr %t16, ptr %l2, !tbaa !29
  %t18 = load ptr, ptr %l2, !tbaa !29
  store ptr %t18, ptr %l29, !tbaa !29
  %t19 = ptrtoint ptr %v0 to i64
  store i64 %t19, ptr %l30, !tbaa !24
  %t20 = load i1, ptr @olang_2esole_2ecompiler_2finterp_3aExec_2e10
  br i1 %t20, label %bb3, label %bb4
bb3:
  %t22 = call ptr @__olang_region_make(ptr %v0)
  %t23 = ptrtoint ptr %t22 to i64
  store i64 %t23, ptr %l30, !tbaa !24
  br label %bb4
bb4:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/check:Checker", ptr %t24, i32 0, i32 151
  %t27 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t26
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t27, ptr %l33
  %t28 = load i64, ptr %l30
  %t29 = inttoptr i64 %t28 to ptr
  %t31 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %t29, ptr %l33)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t31, ptr %l35
  br label %bb5
bb5:
  %t32 = load i1, ptr @olang_2esole_2ecompiler_2finterp_3aExec_2e10
  br i1 %t32, label %bb6, label %bb7
bb6:
  %t34 = load i64, ptr %l30
  %t35 = inttoptr i64 %t34 to ptr
  %t36 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l35, i32 0, i32 2
  %t37 = load { i64, ptr }, ptr %t36
  %t38 = extractvalue { i64, ptr } %t37, 1
  %t39 = call ptr @__olang_region_or(ptr %t38, ptr null)
  %t40 = call ptr @__olang_region_home(ptr %t39)
  %t41 = icmp ne ptr %t40, null
  %t42 = select i1 %t41, ptr %t40, ptr null
  %t43 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l35, i32 0, i32 1
  %t44 = load { i64, ptr }, ptr %t43
  %t45 = extractvalue { i64, ptr } %t44, 1
  %t46 = call ptr @__olang_region_or(ptr %t45, ptr null)
  %t47 = call ptr @__olang_region_home(ptr %t46)
  %t48 = icmp ne ptr %t47, null
  %t49 = select i1 %t48, ptr %t47, ptr %t42
  %t50 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l35, i32 0, i32 0
  %t51 = load { i64, ptr }, ptr %t50
  %t52 = extractvalue { i64, ptr } %t51, 1
  %t53 = call ptr @__olang_region_or(ptr %t52, ptr null)
  %t54 = call ptr @__olang_region_home(ptr %t53)
  %t55 = icmp ne ptr %t54, null
  %t56 = select i1 %t55, ptr %t54, ptr %t49
  %t57 = icmp eq ptr %t56, %t35
  call void @__olang_region_settle(ptr %t35, i1 %t57)
  br label %bb7
bb7:
  %t58 = load ptr, ptr %l29, !tbaa !29
  %t59 = getelementptr %"compiler/interp:Exec", ptr %t58, i32 0, i32 10
  %t60 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t59
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t60, ptr %l37
  %t61 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l35
  %t62 = load ptr, ptr %l29, !tbaa !29
  %t63 = getelementptr %"compiler/interp:Exec", ptr %t62, i32 0, i32 10
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t61, ptr %t63
  %t64 = load i1, ptr @olang_2esole_2ecompiler_2finterp_3aExec_2e10
  br i1 %t64, label %bb8, label %bb9
bb8:
  %t66 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l37, i32 0, i32 2
  %t67 = load { i64, ptr }, ptr %t66
  %t68 = extractvalue { i64, ptr } %t67, 1
  %t69 = call ptr @__olang_region_or(ptr %t68, ptr null)
  %t70 = call ptr @__olang_region_home(ptr %t69)
  %t71 = icmp ne ptr %t70, null
  %t72 = select i1 %t71, ptr %t70, ptr null
  %t73 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l37, i32 0, i32 1
  %t74 = load { i64, ptr }, ptr %t73
  %t75 = extractvalue { i64, ptr } %t74, 1
  %t76 = call ptr @__olang_region_or(ptr %t75, ptr null)
  %t77 = call ptr @__olang_region_home(ptr %t76)
  %t78 = icmp ne ptr %t77, null
  %t79 = select i1 %t78, ptr %t77, ptr %t72
  %t80 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l37, i32 0, i32 0
  %t81 = load { i64, ptr }, ptr %t80
  %t82 = extractvalue { i64, ptr } %t81, 1
  %t83 = call ptr @__olang_region_or(ptr %t82, ptr null)
  %t84 = call ptr @__olang_region_home(ptr %t83)
  %t85 = icmp ne ptr %t84, null
  %t86 = select i1 %t85, ptr %t84, ptr %t79
  call void @__olang_region_drop(ptr %t86)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" zeroinitializer, ptr %l37
  br label %bb9
bb9:
  %t87 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2finterp_2ecompiler_2finterp_3aExec_2estart(ptr %v0, ptr %t87)
  br label %bb10
bb10:
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t91 = getelementptr %"compiler/check:Checker", ptr %t89, i32 0, i32 1
  %t92 = load ptr, ptr %t91, !tbaa !29
  %t94 = getelementptr %"compiler/generic:Program", ptr %t92, i32 0, i32 0
  %t95 = load ptr, ptr %t94, !tbaa !29
  %t97 = getelementptr %"compiler/load:Loader", ptr %t95, i32 0, i32 4
  %t98 = load ptr, ptr %t97, !tbaa !29
  store ptr %t98, ptr %l3, !tbaa !29
  %t100 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t100, ptr %l44
  br label %bb11
bb11:
  %t101 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l44
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t101, ptr %l4
  %t102 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_26_3e(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t102, ptr %l45
  br label %bb12
bb12:
  %t103 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l45
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t103, ptr %l5
  %t104 = load ptr, ptr %l2, !tbaa !29
  %t106 = getelementptr %"compiler/interp:Exec", ptr %t104, i32 0, i32 9
  store ptr %t106, ptr %l6, !tbaa !29
  store i64 0, ptr %l7, !tbaa !24
  br label %bb13
bb13:
  store %olang.scope zeroinitializer, ptr %s2
  %t108 = load i64, ptr %l7, !tbaa !24
  store i64 %t108, ptr %l48, !tbaa !24
  %t109 = load ptr, ptr %l6, !tbaa !29
  %t111 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t109)
  store i64 %t111, ptr %l50
  br label %bb14
bb14:
  %t112 = load i64, ptr %l48, !tbaa !24
  %t113 = load i64, ptr %l50, !tbaa !24
  %t114 = icmp slt i64 %t112, %t113
  %t116 = xor i1 %t114, true
  br i1 %t116, label %bb15, label %bb16
bb15:
  call void @__olang_scope_close(ptr %s2)
  br label %bb43
bb16:
  br label %bb17
bb17:
  %t118 = load ptr, ptr %l6, !tbaa !29
  %t119 = load i64, ptr %l7, !tbaa !24
  %t122 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t118, i64 %t119)
  store i64 %t122, ptr %l55
  br label %bb18
bb18:
  %t123 = load i64, ptr %l55, !tbaa !24
  store i64 %t123, ptr %l8, !tbaa !24
  %t124 = load ptr, ptr %l2, !tbaa !29
  %t126 = getelementptr %"compiler/interp:Exec", ptr %t124, i32 0, i32 1
  %t127 = load ptr, ptr %t126, !tbaa !29
  %t129 = load i64, ptr %l8, !tbaa !24
  %t132 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t127, i64 %t129)
  store ptr %t132, ptr %l60
  br label %bb19
bb19:
  %t133 = load ptr, ptr %l60, !tbaa !29
  %t135 = getelementptr %"compiler/typed:Body", ptr %t133, i32 0, i32 1
  %t136 = load { i64, [2 x i64] }, ptr %t135
  store { i64, [2 x i64] } %t136, ptr %l9
  %t138 = load { i64, [2 x i64] }, ptr %l9
  %t140 = extractvalue { i64, [2 x i64] } %t138, 0
  %t141 = icmp eq i64 %t140, 6
  %t143 = xor i1 %t141, true
  br i1 %t143, label %bb20, label %bb21
bb20:
  call void @__olang_scope_close(ptr %s2)
  br label %bb42
bb21:
  br label %bb22
bb22:
  %t145 = getelementptr { i64, [2 x i64] }, ptr %l9, i32 0, i32 1
  %t146 = getelementptr { i64, i32 }, ptr %t145, i32 0, i32 0
  %t147 = load i64, ptr %t146
  %t149 = getelementptr { i64, [2 x i64] }, ptr %l9, i32 0, i32 1
  %t150 = getelementptr { i64, i32 }, ptr %t149, i32 0, i32 1
  %t151 = load i32, ptr %t150
  store i64 %t147, ptr %l12, !tbaa !24
  store i32 %t151, ptr %l13, !tbaa !23
  %t157 = load ptr, ptr %l0, !tbaa !29
  %t159 = getelementptr %"compiler/check:Checker", ptr %t157, i32 0, i32 1
  %t160 = load ptr, ptr %t159, !tbaa !29
  %t161 = load i64, ptr %l12, !tbaa !24
  %t162 = load i32, ptr %l13, !tbaa !23
  %t166 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eGlobalDecl(ptr %v0, ptr %v0, ptr %t160, i64 %t161, i32 %t162)
  store ptr %t166, ptr %l74
  br label %bb23
bb23:
  %t167 = load ptr, ptr %l74, !tbaa !29
  store ptr %t167, ptr %l14, !tbaa !29
  %t168 = load ptr, ptr %l14, !tbaa !29
  %t170 = icmp eq ptr %t168, null
  %t172 = xor i1 %t170, true
  br i1 %t172, label %bb24, label %bb25
bb24:
  %t174 = load ptr, ptr %l14, !tbaa !29
  %t176 = getelementptr %"compiler/ast:VarDecl", ptr %t174, i32 0, i32 2
  %t177 = load ptr, ptr %t176, !tbaa !29
  %t179 = call i1 @compiler_2fgeneric_2eWrittenMut(ptr %v0, ptr %t177)
  store i1 %t179, ptr %l81
  br label %bb26
bb25:
  store i1 false, ptr %l78, !tbaa !21
  br label %bb27
bb26:
  %t180 = load i1, ptr %l81, !tbaa !21
  store i1 %t180, ptr %l78, !tbaa !21
  br label %bb27
bb27:
  %t181 = load i1, ptr %l78, !tbaa !21
  br i1 %t181, label %bb28, label %bb29
bb28:
  store %olang.scope zeroinitializer, ptr %s4
  %t182 = load ptr, ptr %l2, !tbaa !29
  %t183 = load i64, ptr %l12, !tbaa !24
  %t184 = load i32, ptr %l13, !tbaa !23
  %t188 = call { i32, %"compiler/eval:Image" } @compiler_2finterp_2ecompiler_2finterp_3aExec_2ebakeMutable(ptr %v0, ptr %s4, ptr %t182, i64 %t183, i32 %t184)
  %t189 = extractvalue { i32, %"compiler/eval:Image" } %t188, 1
  %t190 = extractvalue { i32, %"compiler/eval:Image" } %t188, 0
  store i32 %t190, ptr %l87
  %t191 = icmp ne i32 %t190, 0
  br i1 %t191, label %bb31, label %ok.192, !prof !99
ok.192:
  store %"compiler/eval:Image" %t189, ptr %l86
  br label %bb30
bb29:
  br label %bb35
bb30:
  %t193 = load %"compiler/eval:Image", ptr %l86
  store %"compiler/eval:Image" %t193, ptr %l82
  br label %bb33
bb31:
  %t194 = load i32, ptr %l87, !tbaa !23
  %t195 = ashr i32 %t194, 16
  %t197 = icmp eq i32 %t195, 1
  store i1 %t197, ptr %l89, !tbaa !21
  br label %bb32
bb32:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s2)
  br label %bb42
bb33:
  %t198 = load %"compiler/eval:Image", ptr %l82
  %t199 = load ptr, ptr %lp1
  %t200 = load i64, ptr %l8, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2feval_3aImage_3e_2e_Hb8bfbe57c0e5b70e405cb38b3b12641e(ptr %v1, ptr %s4, ptr %t199, i64 %t200, %"compiler/eval:Image" %t198)
  br label %bb34
bb34:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s2)
  br label %bb42
bb35:
  %t205 = load ptr, ptr %l2, !tbaa !29
  %t207 = getelementptr %"compiler/interp:Exec", ptr %t205, i32 0, i32 4
  %t208 = load i64, ptr %l12, !tbaa !24
  %t209 = load i32, ptr %l13, !tbaa !23
  %t213 = call { i32, %"compiler/eval:Image" } @compiler_2feval_2ecompiler_2feval_3aMachine_2eImage(ptr %v0, ptr %s2, ptr %t207, i64 %t208, i32 %t209, i1 false)
  %t214 = extractvalue { i32, %"compiler/eval:Image" } %t213, 1
  %t215 = extractvalue { i32, %"compiler/eval:Image" } %t213, 0
  store i32 %t215, ptr %l99
  %t216 = icmp ne i32 %t215, 0
  br i1 %t216, label %bb37, label %ok.217, !prof !99
ok.217:
  store %"compiler/eval:Image" %t214, ptr %l98
  br label %bb36
bb36:
  %t218 = load %"compiler/eval:Image", ptr %l98
  store %"compiler/eval:Image" %t218, ptr %l93
  br label %bb40
bb37:
  %t219 = load i32, ptr %l99, !tbaa !23
  %t220 = ashr i32 %t219, 16
  %t222 = icmp eq i32 %t220, 1
  store i1 %t222, ptr %l101, !tbaa !21
  br label %bb38
bb38:
  %t223 = load ptr, ptr %l2, !tbaa !29
  %t224 = load ptr, ptr %l0, !tbaa !29
  %t225 = load ptr, ptr %l3, !tbaa !29
  %t226 = load i64, ptr %l8, !tbaa !24
  %t227 = load ptr, ptr %l14, !tbaa !29
  call void @compiler_2finterp_2eunbaked(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %s0, ptr %s0, ptr %t223, ptr %t224, ptr %t225, i64 %t226, ptr %t227, ptr %l4, ptr %l5)
  br label %bb39
bb39:
  call void @__olang_scope_close(ptr %s2)
  br label %bb42
bb40:
  %t235 = load %"compiler/eval:Image", ptr %l93
  %t236 = load ptr, ptr %lp1
  %t237 = load i64, ptr %l8, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2feval_3aImage_3e_2e_Hb8bfbe57c0e5b70e405cb38b3b12641e(ptr %v1, ptr %s2, ptr %t236, i64 %t237, %"compiler/eval:Image" %t235)
  br label %bb41
bb41:
  call void @__olang_scope_close(ptr %s2)
  br label %bb42
bb42:
  %t242 = load i64, ptr %l7, !tbaa !24
  %t244 = add i64 %t242, 1
  store i64 %t244, ptr %l7, !tbaa !24
  br label %bb13
bb43:
  %t246 = load ptr, ptr %l2, !tbaa !29
  %t247 = load ptr, ptr %lp1
  call void @compiler_2finterp_2eshareStorage(ptr %v0, ptr %v1, ptr %t246, ptr %t247)
  br label %bb44
bb44:
  %t250 = load ptr, ptr %l0, !tbaa !29
  %t252 = getelementptr %"compiler/check:Checker", ptr %t250, i32 0, i32 147
  %t254 = call %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fsource_3aSpan_3e_2_Hbfebb6c42bc5b6ebe27287b6298add36(ptr %v0, ptr %v0, ptr %t252)
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t254, ptr %l118
  br label %bb45
bb45:
  %t255 = load %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %l118
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t255, ptr %l17
  br label %bb46
bb46:
  store %olang.scope zeroinitializer, ptr %s9
  %t257 = call { i32, %"std/prelude/map:MapEntry.9f40551e0d6019a8e678d8f53048b6ba" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapIter_3cI64_2c_20compiler_2fsource_3aSpan__Hd38fe3b5521cd0cc33c71306d155ae89(ptr %v0, ptr %l17)
  %t258 = extractvalue { i32, %"std/prelude/map:MapEntry.9f40551e0d6019a8e678d8f53048b6ba" } %t257, 1
  %t259 = extractvalue { i32, %"std/prelude/map:MapEntry.9f40551e0d6019a8e678d8f53048b6ba" } %t257, 0
  store i32 %t259, ptr %l122
  %t260 = icmp ne i32 %t259, 0
  br i1 %t260, label %bb48, label %ok.261, !prof !99
ok.261:
  store %"std/prelude/map:MapEntry.9f40551e0d6019a8e678d8f53048b6ba" %t258, ptr %l121
  br label %bb47
bb47:
  %t262 = load %"std/prelude/map:MapEntry.9f40551e0d6019a8e678d8f53048b6ba", ptr %l121
  store %"std/prelude/map:MapEntry.9f40551e0d6019a8e678d8f53048b6ba" %t262, ptr %l119
  br label %bb50
bb48:
  %t263 = load i32, ptr %l122, !tbaa !23
  %t264 = ashr i32 %t263, 16
  %t266 = icmp eq i32 %t264, 1
  store i1 %t266, ptr %l124, !tbaa !21
  br label %bb49
bb49:
  call void @__olang_scope_close(ptr %s9)
  br label %bb71
bb50:
  %t267 = load %"std/prelude/map:MapEntry.9f40551e0d6019a8e678d8f53048b6ba", ptr %l119
  store %"std/prelude/map:MapEntry.9f40551e0d6019a8e678d8f53048b6ba" %t267, ptr %l18
  %t268 = load ptr, ptr %lp1
  %t269 = getelementptr %"std/prelude/map:MapEntry.9f40551e0d6019a8e678d8f53048b6ba", ptr %l18, i32 0, i32 0
  %t270 = load i64, ptr %t269, !tbaa !24
  %t273 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2feval_3aImage_3e_2e_H901ad831a5883703dcf426ee01511832(ptr %v1, ptr %t268, i64 %t270)
  store i1 %t273, ptr %l127
  br label %bb51
bb51:
  %t274 = load i1, ptr %l127, !tbaa !21
  br i1 %t274, label %bb52, label %bb53
bb52:
  store i1 true, ptr %l128, !tbaa !21
  br label %bb55
bb53:
  %t275 = load ptr, ptr %l2, !tbaa !29
  %t277 = getelementptr %"compiler/interp:Exec", ptr %t275, i32 0, i32 10
  %t278 = getelementptr %"std/prelude/map:MapEntry.9f40551e0d6019a8e678d8f53048b6ba", ptr %l18, i32 0, i32 0
  %t279 = load i64, ptr %t278, !tbaa !24
  %t282 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t277, i64 %t279)
  store i1 %t282, ptr %l132
  br label %bb54
bb54:
  %t283 = load i1, ptr %l132, !tbaa !21
  store i1 %t283, ptr %l128, !tbaa !21
  br label %bb55
bb55:
  %t284 = load i1, ptr %l128, !tbaa !21
  br i1 %t284, label %bb56, label %bb57
bb56:
  call void @__olang_scope_close(ptr %s9)
  br label %bb70
bb57:
  br label %bb58
bb58:
  %t285 = load ptr, ptr %l2, !tbaa !29
  %t287 = getelementptr %"compiler/interp:Exec", ptr %t285, i32 0, i32 1
  %t288 = load ptr, ptr %t287, !tbaa !29
  %t289 = getelementptr %"std/prelude/map:MapEntry.9f40551e0d6019a8e678d8f53048b6ba", ptr %l18, i32 0, i32 0
  %t290 = load i64, ptr %t289, !tbaa !24
  %t293 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t288, i64 %t290)
  store ptr %t293, ptr %l136
  br label %bb59
bb59:
  %t294 = load ptr, ptr %l136, !tbaa !29
  store ptr %t294, ptr %l19, !tbaa !29
  %t295 = getelementptr %"std/prelude/map:MapEntry.9f40551e0d6019a8e678d8f53048b6ba", ptr %l18, i32 0, i32 0
  %t296 = load i64, ptr %t295, !tbaa !24
  %t299 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_He9bc6cfad7ef603960b4717f3121b8e8(ptr %s0, ptr %s0, ptr %l5, i64 %t296)
  %t300 = extractvalue { i32, { i64, ptr } } %t299, 1
  %t301 = extractvalue { i32, { i64, ptr } } %t299, 0
  store i32 %t301, ptr %l141
  %t302 = icmp ne i32 %t301, 0
  br i1 %t302, label %bb61, label %ok.303, !prof !99
ok.303:
  store { i64, ptr } %t300, ptr %l140
  br label %bb60
bb60:
  %t304 = load { i64, ptr }, ptr %l140, !tbaa !27
  store { i64, ptr } %t304, ptr %l137, !tbaa !27
  br label %bb63
bb61:
  br label %bb62
bb62:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d17, i32 0, i32 1) }, ptr %l137, !tbaa !27
  br label %bb63
bb63:
  %t305 = load { i64, ptr }, ptr %l137, !tbaa !27
  store { i64, ptr } %t305, ptr %l20, !tbaa !27
  %t306 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t306, ptr %l142, !tbaa !27
  %t307 = load { i64, ptr }, ptr %l142, !tbaa !27
  %t308 = extractvalue { i64, ptr } %t307, 1
  %t309 = call ptr @__olang_scope_of(ptr %t308, ptr null)
  %t310 = ptrtoint ptr %t309 to i64
  %t312 = inttoptr i64 %t310 to ptr
  %t313 = load { i64, ptr }, ptr %l142, !tbaa !27
  %t314 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %t312, ptr %s9, { i64, ptr } %t313, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d18, i32 0, i32 1) })
  store i1 %t314, ptr %l144
  br label %bb64
bb64:
  %t315 = load i1, ptr %l144, !tbaa !21
  br i1 %t315, label %bb65, label %bb66
bb65:
  store { i64, ptr } { i64 94, ptr getelementptr inbounds (<{ i64, [94 x i8] }>, ptr @.d19, i32 0, i32 1) }, ptr %l20, !tbaa !27
  br label %bb67
bb66:
  br label %bb67
bb67:
  %t316 = load ptr, ptr %l3, !tbaa !29
  store ptr %t316, ptr %l145, !tbaa !29
  %t317 = load ptr, ptr %l19, !tbaa !29
  %t319 = getelementptr %"compiler/typed:Body", ptr %t317, i32 0, i32 3
  %t320 = load i64, ptr %t319, !tbaa !24
  %t321 = getelementptr %"std/prelude/map:MapEntry.9f40551e0d6019a8e678d8f53048b6ba", ptr %l18, i32 0, i32 1
  %t322 = getelementptr %"compiler/source:Span", ptr %t321, i32 0, i32 0
  %t323 = load i32, ptr %t322, !tbaa !23
  %t325 = sext i32 %t323 to i64
  %t326 = getelementptr %"std/prelude/map:MapEntry.9f40551e0d6019a8e678d8f53048b6ba", ptr %l18, i32 0, i32 1
  %t327 = getelementptr %"compiler/source:Span", ptr %t326, i32 0, i32 1
  %t328 = load i32, ptr %t327, !tbaa !23
  %t330 = sext i32 %t328 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t331
  %t332 = getelementptr { i64, [3 x i64] }, ptr %t331, i32 0, i32 0
  store i64 3, ptr %t332
  %t334 = insertvalue { i64, i64, i64 } undef, i64 %t320, 0
  %t336 = insertvalue { i64, i64, i64 } %t334, i64 %t325, 1
  %t338 = insertvalue { i64, i64, i64 } %t336, i64 %t330, 2
  %t339 = getelementptr { i64, [3 x i64] }, ptr %t331, i32 0, i32 1
  store { i64, i64, i64 } %t338, ptr %t339
  %t340 = load { i64, [3 x i64] }, ptr %t331
  store { i64, [3 x i64] } %t340, ptr %l152
  %t341 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t341, ptr %l153, !tbaa !27
  %t342 = load { i64, ptr }, ptr %l153, !tbaa !27
  %t343 = extractvalue { i64, ptr } %t342, 1
  %t344 = call ptr @__olang_scope_of(ptr %t343, ptr null)
  %t345 = ptrtoint ptr %t344 to i64
  %t347 = inttoptr i64 %t345 to ptr
  %t348 = load { i64, ptr }, ptr %l153, !tbaa !27
  %t349 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eComptimeNotBaked(ptr %t347, ptr %v0, { i64, ptr } %t348)
  store %"compiler/diagmsg:Msg" %t349, ptr %l155
  br label %bb68
bb68:
  %t350 = load ptr, ptr %l145, !tbaa !29
  %t351 = load { i64, [3 x i64] }, ptr %l152
  %t352 = load %"compiler/diagmsg:Msg", ptr %l155
  %t353 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t350, { i64, [3 x i64] } %t351, %"compiler/diagmsg:Msg" %t352)
  store i64 %t353, ptr %l156
  br label %bb69
bb69:
  call void @__olang_scope_close(ptr %s9)
  br label %bb70
bb70:
  br label %bb46
bb71:
  %t354 = load ptr, ptr %lp1
  %t355 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t354
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t355, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %rv
  ret %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %rr
}

define dso_local i64 @compiler_2finterp_2eDecideAsserts(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca %"compiler/check:AssertAsk"
  %l11 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l12 = alloca { i64, [5 x i64] }
  %l13 = alloca i1
  %l14 = alloca { i64, [2 x i64] }
  %l15 = alloca { i64, [3 x i64] }
  %l16 = alloca i64
  %l17 = alloca i32
  %l18 = alloca i64
  %l19 = alloca %"compiler/source:Span"
  %l20 = alloca { i64, ptr }
  %l21 = alloca i64
  %l22 = alloca %"compiler/source:Span"
  %l24 = alloca ptr
  %l25 = alloca i64
  %l26 = alloca %"compiler/interp:abortedAsk"
  %l27 = alloca %"compiler/check:AssertAsk"
  %l31 = alloca i64
  %l33 = alloca i1
  %l36 = alloca i64
  %l38 = alloca i1
  %l41 = alloca i64
  %l45 = alloca i1
  %l56 = alloca %"compiler/interp:Exec"
  %l58 = alloca ptr
  %l59 = alloca i64
  %l62 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l64 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l66 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l70 = alloca i64
  %l73 = alloca i64
  %l75 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l76 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l79 = alloca i64
  %l81 = alloca i64
  %l87 = alloca %"compiler/check:AssertAsk"
  %l91 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l94 = alloca i1
  %l105 = alloca ptr
  %l106 = alloca { i64, [2 x i64] }
  %l110 = alloca { i64, [5 x i64] }
  %l118 = alloca i64
  %l128 = alloca i1
  %l137 = alloca ptr
  %l141 = alloca i1
  %l147 = alloca ptr
  %l151 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l152 = alloca ptr
  %l153 = alloca ptr
  %l154 = alloca { i64, [3 x i64] }
  %l157 = alloca %"compiler/diagmsg:Msg"
  %l158 = alloca i64
  %l160 = alloca i1
  %l162 = alloca ptr
  %l163 = alloca i64
  %l164 = alloca { i64, [3 x i64] }
  %l165 = alloca %"compiler/diagmsg:Msg"
  %l168 = alloca %"compiler/diagmsg:Msg"
  %l176 = alloca ptr
  %l183 = alloca %"compiler/interp:abortedAsk"
  %l191 = alloca i1
  %l195 = alloca ptr
  %l196 = alloca ptr
  %l197 = alloca { i64, [3 x i64] }
  %l199 = alloca %"compiler/diagmsg:Msg"
  %l200 = alloca i64
  %l209 = alloca i64
  %l211 = alloca i64
  %l216 = alloca %"compiler/interp:abortedAsk"
  %l217 = alloca ptr
  %l221 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l222 = alloca i1
  %l234 = alloca %"compiler/check:AssertAsk"
  %l235 = alloca ptr
  %l236 = alloca ptr
  %l242 = alloca { i64, [3 x i64] }
  %l244 = alloca { i64, ptr }
  %l245 = alloca %"compiler/diagmsg:Msg"
  %l246 = alloca i64
  %l247 = alloca ptr
  %l248 = alloca i64
  %l254 = alloca { i64, [3 x i64] }
  %l255 = alloca %"compiler/diagmsg:Msg"
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %rv = alloca i64
  %t51 = alloca %"compiler/interp:Exec", align 8
  %t162 = alloca %"compiler/check:AssertAsk", align 8
  %t182 = alloca { i64, [5 x i64] }, align 8
  %t196 = alloca { i64, [2 x i64] }, align 8
  %t256 = alloca { i64, [3 x i64] }, align 8
  %t509 = alloca %"compiler/check:AssertAsk", align 8
  %t525 = alloca { i64, [3 x i64] }, align 8
  %t561 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 115
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aAssertAsk_3e_2eLen__Hcf51b196874cac8430175c74f3bdddd4(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l31
  br label %bb1
bb1:
  %t6 = load i64, ptr %l31, !tbaa !24
  %t7 = icmp eq i64 %t6, 0
  br i1 %t7, label %bb2, label %bb3
bb2:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/check:Checker", ptr %t9, i32 0, i32 141
  %t13 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aContractAsk_3e_2eLe_H3dc16594b41531049b330439cbeee191(ptr %v0, ptr %t11)
  store i64 %t13, ptr %l36
  br label %bb4
bb3:
  store i1 false, ptr %l33, !tbaa !21
  br label %bb5
bb4:
  %t14 = load i64, ptr %l36, !tbaa !24
  %t15 = icmp eq i64 %t14, 0
  store i1 %t15, ptr %l33, !tbaa !21
  br label %bb5
bb5:
  %t17 = load i1, ptr %l33, !tbaa !21
  br i1 %t17, label %bb6, label %bb7
bb6:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/check:Checker", ptr %t18, i32 0, i32 116
  %t22 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aTopAssertAsk_3e_2eL_H34364174f15757c2d142d60c88ce0944(ptr %v0, ptr %t20)
  store i64 %t22, ptr %l41
  br label %bb8
bb7:
  store i1 false, ptr %l38, !tbaa !21
  br label %bb9
bb8:
  %t23 = load i64, ptr %l41, !tbaa !24
  %t24 = icmp eq i64 %t23, 0
  store i1 %t24, ptr %l38, !tbaa !21
  br label %bb9
bb9:
  %t26 = load i1, ptr %l38, !tbaa !21
  br i1 %t26, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s0)
  store i64 0, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eFactsUnsettled(ptr %v0, ptr %t28)
  store i1 %t30, ptr %l45
  br label %bb13
bb13:
  %t31 = load i1, ptr %l45, !tbaa !21
  br i1 %t31, label %bb14, label %bb15
bb14:
  call void @__olang_scope_close(ptr %s0)
  store i64 0, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/check:Checker", ptr %t33, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !29
  %t38 = getelementptr %"compiler/generic:Program", ptr %t36, i32 0, i32 0
  %t39 = load ptr, ptr %t38, !tbaa !29
  %t41 = getelementptr %"compiler/load:Loader", ptr %t39, i32 0, i32 4
  %t42 = load ptr, ptr %t41, !tbaa !29
  store ptr %t42, ptr %l2, !tbaa !29
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/check:Checker", ptr %t44, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !29
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/check:Checker", ptr %t48, i32 0, i32 18
  call void @compiler_2finterp_3aExec_2ector(ptr %t51, ptr %v0, ptr %v0, ptr %v0, ptr %t47, ptr %t50, i32 0)
  call void @llvm.memmove.p0.p0.i64(ptr %l56, ptr %t51, i64 6136, i1 false)
  br label %bb17
bb17:
  %t55 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 6136, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t55, ptr %l56, i64 6136, i1 false)
  store ptr %t55, ptr %l3, !tbaa !29
  %t57 = load ptr, ptr %l3, !tbaa !29
  store ptr %t57, ptr %l58, !tbaa !29
  %t58 = ptrtoint ptr %v0 to i64
  store i64 %t58, ptr %l59, !tbaa !24
  %t59 = load i1, ptr @olang_2esole_2ecompiler_2finterp_3aExec_2e10
  br i1 %t59, label %bb18, label %bb19
bb18:
  %t61 = call ptr @__olang_region_make(ptr %v0)
  %t62 = ptrtoint ptr %t61 to i64
  store i64 %t62, ptr %l59, !tbaa !24
  br label %bb19
bb19:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/check:Checker", ptr %t63, i32 0, i32 151
  %t66 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t65
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t66, ptr %l62
  %t67 = load i64, ptr %l59
  %t68 = inttoptr i64 %t67 to ptr
  %t70 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %t68, ptr %l62)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t70, ptr %l64
  br label %bb20
bb20:
  %t71 = load i1, ptr @olang_2esole_2ecompiler_2finterp_3aExec_2e10
  br i1 %t71, label %bb21, label %bb22
bb21:
  %t73 = load i64, ptr %l59
  %t74 = inttoptr i64 %t73 to ptr
  %t75 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l64, i32 0, i32 2
  %t76 = load { i64, ptr }, ptr %t75
  %t77 = extractvalue { i64, ptr } %t76, 1
  %t78 = call ptr @__olang_region_or(ptr %t77, ptr null)
  %t79 = call ptr @__olang_region_home(ptr %t78)
  %t80 = icmp ne ptr %t79, null
  %t81 = select i1 %t80, ptr %t79, ptr null
  %t82 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l64, i32 0, i32 1
  %t83 = load { i64, ptr }, ptr %t82
  %t84 = extractvalue { i64, ptr } %t83, 1
  %t85 = call ptr @__olang_region_or(ptr %t84, ptr null)
  %t86 = call ptr @__olang_region_home(ptr %t85)
  %t87 = icmp ne ptr %t86, null
  %t88 = select i1 %t87, ptr %t86, ptr %t81
  %t89 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l64, i32 0, i32 0
  %t90 = load { i64, ptr }, ptr %t89
  %t91 = extractvalue { i64, ptr } %t90, 1
  %t92 = call ptr @__olang_region_or(ptr %t91, ptr null)
  %t93 = call ptr @__olang_region_home(ptr %t92)
  %t94 = icmp ne ptr %t93, null
  %t95 = select i1 %t94, ptr %t93, ptr %t88
  %t96 = icmp eq ptr %t95, %t74
  call void @__olang_region_settle(ptr %t74, i1 %t96)
  br label %bb22
bb22:
  %t97 = load ptr, ptr %l58, !tbaa !29
  %t98 = getelementptr %"compiler/interp:Exec", ptr %t97, i32 0, i32 10
  %t99 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t98
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t99, ptr %l66
  %t100 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l64
  %t101 = load ptr, ptr %l58, !tbaa !29
  %t102 = getelementptr %"compiler/interp:Exec", ptr %t101, i32 0, i32 10
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t100, ptr %t102
  %t103 = load i1, ptr @olang_2esole_2ecompiler_2finterp_3aExec_2e10
  br i1 %t103, label %bb23, label %bb24
bb23:
  %t105 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l66, i32 0, i32 2
  %t106 = load { i64, ptr }, ptr %t105
  %t107 = extractvalue { i64, ptr } %t106, 1
  %t108 = call ptr @__olang_region_or(ptr %t107, ptr null)
  %t109 = call ptr @__olang_region_home(ptr %t108)
  %t110 = icmp ne ptr %t109, null
  %t111 = select i1 %t110, ptr %t109, ptr null
  %t112 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l66, i32 0, i32 1
  %t113 = load { i64, ptr }, ptr %t112
  %t114 = extractvalue { i64, ptr } %t113, 1
  %t115 = call ptr @__olang_region_or(ptr %t114, ptr null)
  %t116 = call ptr @__olang_region_home(ptr %t115)
  %t117 = icmp ne ptr %t116, null
  %t118 = select i1 %t117, ptr %t116, ptr %t111
  %t119 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l66, i32 0, i32 0
  %t120 = load { i64, ptr }, ptr %t119
  %t121 = extractvalue { i64, ptr } %t120, 1
  %t122 = call ptr @__olang_region_or(ptr %t121, ptr null)
  %t123 = call ptr @__olang_region_home(ptr %t122)
  %t124 = icmp ne ptr %t123, null
  %t125 = select i1 %t124, ptr %t123, ptr %t118
  call void @__olang_region_drop(ptr %t125)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" zeroinitializer, ptr %l66
  br label %bb24
bb24:
  %t126 = load ptr, ptr %l0, !tbaa !29
  %t127 = load ptr, ptr %l3, !tbaa !29
  %t130 = call i64 @compiler_2finterp_2edecideContracts(ptr %v0, ptr %v0, ptr %t126, ptr %t127)
  store i64 %t130, ptr %l70
  br label %bb25
bb25:
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t132 = load ptr, ptr %l3, !tbaa !29
  %t135 = call i64 @compiler_2finterp_2edecideTopAsserts(ptr %v0, ptr %v0, ptr %t131, ptr %t132)
  store i64 %t135, ptr %l73
  br label %bb26
bb26:
  %t136 = load i64, ptr %l70, !tbaa !24
  %t137 = load i64, ptr %l73, !tbaa !24
  %t138 = add i64 %t136, %t137
  store i64 %t138, ptr %l4, !tbaa !24
  %t140 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t140, ptr %l75
  br label %bb27
bb27:
  %t141 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l75
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t141, ptr %l5
  %t142 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2finterp_3aabortedAsk_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t142, ptr %l76
  br label %bb28
bb28:
  %t143 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l76
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t143, ptr %l6
  %t144 = load ptr, ptr %l0, !tbaa !29
  %t146 = getelementptr %"compiler/check:Checker", ptr %t144, i32 0, i32 115
  store ptr %t146, ptr %l7, !tbaa !29
  store i64 0, ptr %l8, !tbaa !24
  br label %bb29
bb29:
  store %olang.scope zeroinitializer, ptr %s4
  %t148 = load i64, ptr %l8, !tbaa !24
  store i64 %t148, ptr %l79, !tbaa !24
  %t149 = load ptr, ptr %l7, !tbaa !29
  %t151 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aAssertAsk_3e_2eLen__Hcf51b196874cac8430175c74f3bdddd4(ptr %v0, ptr %t149)
  store i64 %t151, ptr %l81
  br label %bb30
bb30:
  %t152 = load i64, ptr %l79, !tbaa !24
  %t153 = load i64, ptr %l81, !tbaa !24
  %t154 = icmp slt i64 %t152, %t153
  %t156 = xor i1 %t154, true
  br i1 %t156, label %bb31, label %bb32
bb31:
  call void @__olang_scope_close(ptr %s4)
  br label %bb103
bb32:
  br label %bb33
bb33:
  %t158 = load i64, ptr %l8, !tbaa !24
  store i64 %t158, ptr %l9, !tbaa !24
  %t160 = load ptr, ptr %l7, !tbaa !29
  %t161 = load i64, ptr %l8, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aAssertAsk_3e_2eAt_3ccompiler_2fcheck_3aAssertAsk_3e(ptr %t162, ptr %v0, ptr %v0, ptr %t160, i64 %t161)
  call void @llvm.memmove.p0.p0.i64(ptr %l87, ptr %t162, i64 184, i1 false)
  br label %bb34
bb34:
  call void @llvm.memmove.p0.p0.i64(ptr %l10, ptr %l87, i64 184, i1 false)
  %t165 = getelementptr %"compiler/check:AssertAsk", ptr %l10, i32 0, i32 0
  %t166 = load i64, ptr %t165, !tbaa !24
  %t167 = getelementptr %"compiler/check:AssertAsk", ptr %l10, i32 0, i32 2
  %t168 = getelementptr %"compiler/source:Span", ptr %t167, i32 0, i32 0
  %t169 = load i32, ptr %t168, !tbaa !23
  %t171 = sext i32 %t169 to i64
  %t174 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s4, i64 %t166, i64 %t171)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t174, ptr %l91
  br label %bb35
bb35:
  %t175 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l91
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t175, ptr %l11
  %t176 = load ptr, ptr %l1, !tbaa !29
  %t177 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l11
  %t180 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2ed2e5427629ba63a7110fc86d969058(ptr %v1, ptr %t176, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t177)
  store i1 %t180, ptr %l94
  br label %bb36
bb36:
  %t181 = load i1, ptr %l94, !tbaa !21
  br i1 %t181, label %bb37, label %bb38
bb37:
  call void @__olang_scope_close(ptr %s4)
  br label %bb102
bb38:
  br label %bb39
bb39:
  store { i64, [5 x i64] } zeroinitializer, ptr %t182
  %t183 = getelementptr { i64, [5 x i64] }, ptr %t182, i32 0, i32 0
  store i64 0, ptr %t183
  %t184 = load { i64, [5 x i64] }, ptr %t182
  store { i64, [5 x i64] } %t184, ptr %l12
  store i1 false, ptr %l13, !tbaa !21
  %t186 = getelementptr %"compiler/check:AssertAsk", ptr %l10, i32 0, i32 4
  %t187 = load i64, ptr %t186, !tbaa !24
  %t189 = icmp sge i64 %t187, 0
  br i1 %t189, label %bb40, label %bb41
bb40:
  store %olang.scope zeroinitializer, ptr %s6
  %t191 = getelementptr %"compiler/check:AssertAsk", ptr %l10, i32 0, i32 4
  %t192 = load i64, ptr %t191, !tbaa !24
  %t194 = trunc i64 %t192 to i32
  store { i64, [2 x i64] } zeroinitializer, ptr %t196
  %t197 = getelementptr { i64, [2 x i64] }, ptr %t196, i32 0, i32 0
  store i64 0, ptr %t197
  %t199 = insertvalue { i32 } undef, i32 %t194, 0
  %t200 = getelementptr { i64, [2 x i64] }, ptr %t196, i32 0, i32 1
  store { i32 } %t199, ptr %t200
  %t201 = load { i64, [2 x i64] }, ptr %t196
  store { i64, [2 x i64] } %t201, ptr %l14
  %t203 = load ptr, ptr %l3, !tbaa !29
  %t204 = load { i64, [2 x i64] }, ptr %l14
  call void @compiler_2finterp_2ecompiler_2finterp_3aExec_2eNeed(ptr %v0, ptr %t203, { i64, [2 x i64] } %t204)
  br label %bb42
bb41:
  br label %bb52
bb42:
  %t207 = load ptr, ptr %l3, !tbaa !29
  %t209 = getelementptr %"compiler/interp:Exec", ptr %t207, i32 0, i32 4
  store ptr %t209, ptr %l105, !tbaa !29
  %t210 = load { i64, [2 x i64] }, ptr %l14
  store { i64, [2 x i64] } %t210, ptr %l106
  %t211 = icmp sge i64 0, 0
  br i1 %t211, label %bb43, label %bb44
bb43:
  %t213 = icmp sle i64 0, 1152921504606846975
  br i1 %t213, label %bb45, label %bb46
bb44:
  call void @__olang_check_failed(ptr @olang_loc_7edf3cf7ccf8e57f_276bde685bbe381b)
  unreachable
bb45:
  %t215 = mul i64 0, 8
  %t216 = insertvalue { i64, ptr } undef, i64 0, 0
  %t217 = insertvalue { i64, ptr } %t216, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t218 = load ptr, ptr %l105, !tbaa !29
  %t219 = load { i64, [2 x i64] }, ptr %l106
  %t221 = call { i64, [5 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2eEval(ptr %v0, ptr %s6, ptr %s4, ptr %t218, { i64, [2 x i64] } %t219, { i64, ptr } %t217)
  store { i64, [5 x i64] } %t221, ptr %l110
  br label %bb47
bb46:
  call void @__olang_check_failed(ptr @olang_loc_7edf3cf7ccf8e57f_276bde685bbe381b)
  unreachable
bb47:
  %t222 = load { i64, [5 x i64] }, ptr %l110
  store { i64, [5 x i64] } %t222, ptr %l12
  %t223 = load { i64, [5 x i64] }, ptr %l12
  %t225 = extractvalue { i64, [5 x i64] } %t223, 0
  %t226 = icmp eq i64 %t225, 0
  br i1 %t226, label %bb48, label %bb49
bb48:
  %t228 = load ptr, ptr %l3, !tbaa !29
  %t230 = getelementptr %"compiler/interp:Exec", ptr %t228, i32 0, i32 4
  %t231 = load ptr, ptr %l3, !tbaa !29
  %t233 = getelementptr %"compiler/interp:Exec", ptr %t231, i32 0, i32 4
  %t234 = getelementptr %"compiler/eval:Machine", ptr %t233, i32 0, i32 18
  %t235 = load %"compiler/eval:Ptr", ptr %t234
  %t236 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t240 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eInt(ptr %v0, ptr %t230, %"compiler/eval:Ptr" %t235, i32 %t236)
  store i64 %t240, ptr %l118
  br label %bb50
bb49:
  br label %bb51
bb50:
  %t241 = load i64, ptr %l118, !tbaa !24
  %t242 = icmp ne i64 %t241, 0
  store i1 %t242, ptr %l13, !tbaa !21
  br label %bb51
bb51:
  call void @__olang_scope_close(ptr %s6)
  br label %bb52
bb52:
  %t244 = getelementptr %"compiler/check:AssertAsk", ptr %l10, i32 0, i32 1
  %t245 = load i64, ptr %t244, !tbaa !24
  %t246 = getelementptr %"compiler/check:AssertAsk", ptr %l10, i32 0, i32 3
  %t247 = getelementptr %"compiler/source:Span", ptr %t246, i32 0, i32 0
  %t248 = load i32, ptr %t247, !tbaa !23
  %t250 = sext i32 %t248 to i64
  %t251 = getelementptr %"compiler/check:AssertAsk", ptr %l10, i32 0, i32 3
  %t252 = getelementptr %"compiler/source:Span", ptr %t251, i32 0, i32 1
  %t253 = load i32, ptr %t252, !tbaa !23
  %t255 = sext i32 %t253 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t256
  %t257 = getelementptr { i64, [3 x i64] }, ptr %t256, i32 0, i32 0
  store i64 3, ptr %t257
  %t259 = insertvalue { i64, i64, i64 } undef, i64 %t245, 0
  %t261 = insertvalue { i64, i64, i64 } %t259, i64 %t250, 1
  %t263 = insertvalue { i64, i64, i64 } %t261, i64 %t255, 2
  %t264 = getelementptr { i64, [3 x i64] }, ptr %t256, i32 0, i32 1
  store { i64, i64, i64 } %t263, ptr %t264
  %t265 = load { i64, [3 x i64] }, ptr %t256
  store { i64, [3 x i64] } %t265, ptr %l15
  %t267 = load { i64, [5 x i64] }, ptr %l12
  %t269 = extractvalue { i64, [5 x i64] } %t267, 0
  %t270 = icmp eq i64 %t269, 0
  br i1 %t270, label %bb53, label %bb54
bb53:
  %t272 = load i1, ptr %l13, !tbaa !21
  store i1 %t272, ptr %l128, !tbaa !21
  br label %bb55
bb54:
  store i1 false, ptr %l128, !tbaa !21
  br label %bb55
bb55:
  %t274 = load i1, ptr %l128, !tbaa !21
  br i1 %t274, label %bb56, label %bb57
bb56:
  %t275 = load i64, ptr %l4, !tbaa !24
  %t277 = add i64 %t275, 1
  store i64 %t277, ptr %l4, !tbaa !24
  %t279 = load ptr, ptr %l1, !tbaa !29
  %t280 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l11
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1308596c866d4be061d9da9113abde88(ptr %v1, ptr %t279, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t280, i1 true)
  br label %bb58
bb57:
  br label %bb59
bb58:
  call void @__olang_scope_close(ptr %s4)
  br label %bb102
bb59:
  %t283 = load ptr, ptr %l0, !tbaa !29
  %t285 = getelementptr %"compiler/check:Checker", ptr %t283, i32 0, i32 18
  %t286 = getelementptr %"compiler/check:AssertAsk", ptr %l10, i32 0, i32 0
  %t287 = load i64, ptr %t286, !tbaa !24
  %t290 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t285, i64 %t287)
  store ptr %t290, ptr %l137
  br label %bb60
bb60:
  %t291 = load ptr, ptr %l137, !tbaa !29
  %t293 = getelementptr %"compiler/typed:Body", ptr %t291, i32 0, i32 11
  %t294 = load ptr, ptr %t293, !tbaa !29
  %t295 = getelementptr %"compiler/check:AssertAsk", ptr %l10, i32 0, i32 2
  %t296 = load %"compiler/source:Span", ptr %t295
  %t299 = call i1 @compiler_2ftyped_2eAlwaysReached(ptr %v0, ptr %t294, %"compiler/source:Span" %t296)
  store i1 %t299, ptr %l141
  br label %bb61
bb61:
  %t300 = load i1, ptr %l141, !tbaa !21
  %t301 = xor i1 %t300, true
  br i1 %t301, label %bb62, label %bb63
bb62:
  call void @__olang_scope_close(ptr %s4)
  br label %bb102
bb63:
  br label %bb64
bb64:
  %t303 = load { i64, [5 x i64] }, ptr %l12
  %t305 = extractvalue { i64, [5 x i64] } %t303, 0
  %t306 = icmp eq i64 %t305, 0
  br i1 %t306, label %bb65, label %bb66
bb65:
  br label %bb67
bb66:
  br label %bb79
bb67:
  store %olang.scope zeroinitializer, ptr %s10
  %t308 = load i64, ptr %l4, !tbaa !24
  %t310 = add i64 %t308, 1
  store i64 %t310, ptr %l4, !tbaa !24
  store ptr %l5, ptr %l147, !tbaa !29
  %t312 = getelementptr %"compiler/check:AssertAsk", ptr %l10, i32 0, i32 1
  %t313 = load i64, ptr %t312, !tbaa !24
  %t314 = getelementptr %"compiler/check:AssertAsk", ptr %l10, i32 0, i32 2
  %t315 = getelementptr %"compiler/source:Span", ptr %t314, i32 0, i32 0
  %t316 = load i32, ptr %t315, !tbaa !23
  %t318 = sext i32 %t316 to i64
  %t321 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s10, i64 %t313, i64 %t318)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t321, ptr %l151
  br label %bb68
bb68:
  %t322 = load ptr, ptr %l147, !tbaa !29
  %t323 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l151
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1308596c866d4be061d9da9113abde88(ptr %s0, ptr %t322, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t323, i1 true)
  br label %bb69
bb69:
  %t324 = load ptr, ptr %l2, !tbaa !29
  store ptr %t324, ptr %l152, !tbaa !29
  store ptr %l10, ptr %l153, !tbaa !29
  %t325 = load { i64, [3 x i64] }, ptr %l15
  store { i64, [3 x i64] } %t325, ptr %l154
  %t326 = load ptr, ptr %l3, !tbaa !29
  %t329 = call %"compiler/diagmsg:Msg" @compiler_2finterp_2efalseMessage(ptr %v0, ptr %s4, ptr %v0, ptr %t326, ptr %l10)
  store %"compiler/diagmsg:Msg" %t329, ptr %l157
  br label %bb70
bb70:
  %t330 = load ptr, ptr %l152, !tbaa !29
  %t331 = load ptr, ptr %l153, !tbaa !29
  %t332 = load { i64, [3 x i64] }, ptr %l154
  %t333 = load %"compiler/diagmsg:Msg", ptr %l157
  %t334 = call i64 @compiler_2finterp_2esayAt(ptr %v0, ptr %s4, ptr %v0, ptr %t330, ptr %t331, { i64, [3 x i64] } %t332, %"compiler/diagmsg:Msg" %t333)
  store i64 %t334, ptr %l158
  br label %bb71
bb71:
  %t335 = load i64, ptr %l158, !tbaa !24
  store i64 %t335, ptr %l16, !tbaa !24
  %t336 = getelementptr %"compiler/check:AssertAsk", ptr %l10, i32 0, i32 12
  %t337 = load { i64, ptr }, ptr %t336, !tbaa !27
  %t339 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s10, { i64, ptr } %t337, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d20, i32 0, i32 1) })
  store i1 %t339, ptr %l160
  br label %bb72
bb72:
  %t340 = load i1, ptr %l160, !tbaa !21
  %t341 = xor i1 %t340, true
  br i1 %t341, label %bb73, label %bb74
bb73:
  store %olang.scope zeroinitializer, ptr %s11
  %t343 = load ptr, ptr %l2, !tbaa !29
  store ptr %t343, ptr %l162, !tbaa !29
  %t344 = load i64, ptr %l16, !tbaa !24
  store i64 %t344, ptr %l163, !tbaa !24
  %t345 = getelementptr %"compiler/check:AssertAsk", ptr %l10, i32 0, i32 11
  %t346 = load { i64, [3 x i64] }, ptr %t345
  store { i64, [3 x i64] } %t346, ptr %l164
  %t347 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteHere(ptr %s11)
  store %"compiler/diagmsg:Msg" %t347, ptr %l165
  br label %bb75
bb74:
  br label %bb78
bb75:
  %t348 = getelementptr %"compiler/diagmsg:Msg", ptr %l165, i32 0, i32 0
  %t349 = load i32, ptr %t348, !range !{i32 0, i32 906}
  %t350 = getelementptr %"compiler/check:AssertAsk", ptr %l10, i32 0, i32 12
  %t351 = load { i64, ptr }, ptr %t350, !tbaa !27
  %t354 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, i32 %t349, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d21, i32 0, i32 1) }, { i64, ptr } %t351, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d22, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d23, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t354, ptr %l168
  br label %bb76
bb76:
  %t355 = load ptr, ptr %l162, !tbaa !29
  %t356 = load i64, ptr %l163, !tbaa !24
  %t357 = load { i64, [3 x i64] }, ptr %l164
  %t358 = load %"compiler/diagmsg:Msg", ptr %l168
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %v0, ptr %t355, i64 %t356, { i64, [3 x i64] } %t357, %"compiler/diagmsg:Msg" %t358)
  br label %bb77
bb77:
  call void @__olang_scope_close(ptr %s11)
  br label %bb78
bb78:
  call void @__olang_scope_close(ptr %s10)
  br label %bb101
bb79:
  %t359 = load { i64, [5 x i64] }, ptr %l12
  %t361 = extractvalue { i64, [5 x i64] } %t359, 0
  %t362 = icmp eq i64 %t361, 2
  br i1 %t362, label %bb80, label %bb81
bb80:
  %t364 = getelementptr { i64, [5 x i64] }, ptr %l12, i32 0, i32 1
  %t365 = getelementptr { i32, i64, %"compiler/source:Span", { i64, ptr } }, ptr %t364, i32 0, i32 0
  %t366 = load i32, ptr %t365, !range !{i32 0, i32 20}
  store i32 %t366, ptr %l17
  %t368 = getelementptr { i64, [5 x i64] }, ptr %l12, i32 0, i32 1
  %t369 = getelementptr { i32, i64, %"compiler/source:Span", { i64, ptr } }, ptr %t368, i32 0, i32 1
  %t370 = load i64, ptr %t369
  store i64 %t370, ptr %l18, !tbaa !24
  %t372 = getelementptr { i64, [5 x i64] }, ptr %l12, i32 0, i32 1
  %t373 = getelementptr { i32, i64, %"compiler/source:Span", { i64, ptr } }, ptr %t372, i32 0, i32 2
  %t374 = load %"compiler/source:Span", ptr %t373
  store %"compiler/source:Span" %t374, ptr %l19
  br label %bb82
bb81:
  br label %bb85
bb82:
  store %olang.scope zeroinitializer, ptr %s12
  %t376 = load i64, ptr %l4, !tbaa !24
  %t378 = add i64 %t376, 1
  store i64 %t378, ptr %l4, !tbaa !24
  store ptr %l6, ptr %l176, !tbaa !29
  %t380 = load i64, ptr %l9, !tbaa !24
  %t381 = load i32, ptr %l17, !range !{i32 0, i32 20}
  %t382 = load i64, ptr %l18, !tbaa !24
  %t383 = load %"compiler/source:Span", ptr %l19
  %t384 = load ptr, ptr %l3, !tbaa !29
  %t386 = getelementptr %"compiler/interp:Exec", ptr %t384, i32 0, i32 4
  %t387 = getelementptr %"compiler/eval:Machine", ptr %t386, i32 0, i32 21
  %t388 = load i64, ptr %t387, !tbaa !24
  %t394 = call %"compiler/interp:abortedAsk" @compiler_2finterp_3aabortedAsk_2ector(ptr %s12, i64 %t380, i32 %t381, i64 %t382, %"compiler/source:Span" %t383, i64 %t388)
  store %"compiler/interp:abortedAsk" %t394, ptr %l183
  br label %bb83
bb83:
  %t395 = load ptr, ptr %l176, !tbaa !29
  %t396 = load %"compiler/interp:abortedAsk", ptr %l183
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2finterp_3aabortedAsk_3e_2ePu_H62bc00b7824fd8cdf5686f596056a5cf(ptr %s0, ptr %t395, %"compiler/interp:abortedAsk" %t396)
  br label %bb84
bb84:
  call void @__olang_scope_close(ptr %s12)
  br label %bb101
bb85:
  %t397 = load { i64, [5 x i64] }, ptr %l12
  %t399 = extractvalue { i64, [5 x i64] } %t397, 0
  %t400 = icmp eq i64 %t399, 3
  br i1 %t400, label %bb86, label %bb87
bb86:
  %t402 = getelementptr { i64, [5 x i64] }, ptr %l12, i32 0, i32 1
  %t403 = getelementptr { { i64, ptr }, i64, %"compiler/source:Span" }, ptr %t402, i32 0, i32 0
  %t404 = load { i64, ptr }, ptr %t403
  store { i64, ptr } %t404, ptr %l20, !tbaa !27
  %t406 = getelementptr { i64, [5 x i64] }, ptr %l12, i32 0, i32 1
  %t407 = getelementptr { { i64, ptr }, i64, %"compiler/source:Span" }, ptr %t406, i32 0, i32 1
  %t408 = load i64, ptr %t407
  store i64 %t408, ptr %l21, !tbaa !24
  %t410 = getelementptr { i64, [5 x i64] }, ptr %l12, i32 0, i32 1
  %t411 = getelementptr { { i64, ptr }, i64, %"compiler/source:Span" }, ptr %t410, i32 0, i32 2
  %t412 = load %"compiler/source:Span", ptr %t411
  store %"compiler/source:Span" %t412, ptr %l22
  br label %bb88
bb87:
  br label %bb96
bb88:
  %t414 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t415 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyStale, !tbaa !27
  %t416 = load ptr, ptr @__olang_prog_scope
  %t419 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s4, ptr %t416, { i64, ptr } %t414, { i64, ptr } %t415)
  store i1 %t419, ptr %l191
  br label %bb89
bb89:
  %t420 = load i1, ptr %l191, !tbaa !21
  %t421 = xor i1 %t420, true
  br i1 %t421, label %bb90, label %bb91
bb90:
  call void @__olang_scope_close(ptr %s4)
  br label %bb102
bb91:
  br label %bb92
bb92:
  %t423 = load i64, ptr %l4, !tbaa !24
  %t425 = add i64 %t423, 1
  store i64 %t425, ptr %l4, !tbaa !24
  %t427 = load ptr, ptr %l2, !tbaa !29
  store ptr %t427, ptr %l195, !tbaa !29
  store ptr %l10, ptr %l196, !tbaa !29
  %t428 = load { i64, [3 x i64] }, ptr %l15
  store { i64, [3 x i64] } %t428, ptr %l197
  %t429 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t431 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAssertStale(ptr %s4, ptr %v0, { i64, ptr } %t429)
  store %"compiler/diagmsg:Msg" %t431, ptr %l199
  br label %bb93
bb93:
  %t432 = load ptr, ptr %l195, !tbaa !29
  %t433 = load ptr, ptr %l196, !tbaa !29
  %t434 = load { i64, [3 x i64] }, ptr %l197
  %t435 = load %"compiler/diagmsg:Msg", ptr %l199
  %t436 = call i64 @compiler_2finterp_2esayAt(ptr %v0, ptr %s4, ptr %v0, ptr %t432, ptr %t433, { i64, [3 x i64] } %t434, %"compiler/diagmsg:Msg" %t435)
  store i64 %t436, ptr %l200
  br label %bb94
bb94:
  %t437 = load i64, ptr %l200, !tbaa !24
  %t438 = load ptr, ptr %l3, !tbaa !29
  %t439 = load ptr, ptr %l2, !tbaa !29
  %t441 = load i64, ptr %l21, !tbaa !24
  %t442 = load %"compiler/source:Span", ptr %l22
  call void @compiler_2finterp_2estaleNotes(ptr %v0, ptr %v0, ptr %t438, ptr %t439, i64 %t437, i64 %t441, %"compiler/source:Span" %t442)
  br label %bb95
bb95:
  br label %bb101
bb96:
  br i1 true, label %bb97, label %bb98
bb97:
  br label %bb99
bb98:
  br label %bb100
bb99:
  br label %bb101
bb100:
  call void @__olang_check_failed(ptr @olang_loc_d8df33bf7c2af1a9_d617709f0680343d)
  unreachable
bb101:
  call void @__olang_scope_close(ptr %s4)
  br label %bb102
bb102:
  %t448 = load i64, ptr %l8, !tbaa !24
  %t450 = add i64 %t448, 1
  store i64 %t450, ptr %l8, !tbaa !24
  br label %bb29
bb103:
  store ptr %l6, ptr %l24, !tbaa !29
  store i64 0, ptr %l25, !tbaa !24
  br label %bb104
bb104:
  store %olang.scope zeroinitializer, ptr %s18
  %t453 = load i64, ptr %l25, !tbaa !24
  store i64 %t453, ptr %l209, !tbaa !24
  %t454 = load ptr, ptr %l24, !tbaa !29
  %t456 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2finterp_3aabortedAsk_3e_2eLe_H5a66fb9a3db37c186716c1dbb29c1120(ptr %s0, ptr %t454)
  store i64 %t456, ptr %l211
  br label %bb105
bb105:
  %t457 = load i64, ptr %l209, !tbaa !24
  %t458 = load i64, ptr %l211, !tbaa !24
  %t459 = icmp slt i64 %t457, %t458
  %t461 = xor i1 %t459, true
  br i1 %t461, label %bb106, label %bb107
bb106:
  call void @__olang_scope_close(ptr %s18)
  br label %bb126
bb107:
  br label %bb108
bb108:
  %t463 = load ptr, ptr %l24, !tbaa !29
  %t464 = load i64, ptr %l25, !tbaa !24
  %t467 = call %"compiler/interp:abortedAsk" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2finterp_3aabortedAsk_3e_2eAt_Hb6fdd0b60302bbbc29e9a063b33ba4bc(ptr %s0, ptr %t463, i64 %t464)
  store %"compiler/interp:abortedAsk" %t467, ptr %l216
  br label %bb109
bb109:
  %t468 = load %"compiler/interp:abortedAsk", ptr %l216
  store %"compiler/interp:abortedAsk" %t468, ptr %l26
  store ptr %l5, ptr %l217, !tbaa !29
  %t469 = getelementptr %"compiler/interp:abortedAsk", ptr %l26, i32 0, i32 2
  %t470 = load i64, ptr %t469, !tbaa !24
  %t471 = getelementptr %"compiler/interp:abortedAsk", ptr %l26, i32 0, i32 3
  %t472 = getelementptr %"compiler/source:Span", ptr %t471, i32 0, i32 0
  %t473 = load i32, ptr %t472, !tbaa !23
  %t475 = sext i32 %t473 to i64
  %t478 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s18, i64 %t470, i64 %t475)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t478, ptr %l221
  br label %bb110
bb110:
  %t479 = load ptr, ptr %l217, !tbaa !29
  %t480 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l221
  %t481 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2ed2e5427629ba63a7110fc86d969058(ptr %s0, ptr %t479, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t480)
  store i1 %t481, ptr %l222
  br label %bb111
bb111:
  %t482 = load i1, ptr %l222, !tbaa !21
  br i1 %t482, label %bb112, label %bb113
bb112:
  call void @__olang_scope_close(ptr %s18)
  br label %bb125
bb113:
  br label %bb114
bb114:
  %t483 = getelementptr %"compiler/interp:abortedAsk", ptr %l26, i32 0, i32 4
  %t484 = load i64, ptr %t483, !tbaa !24
  %t486 = icmp sge i64 %t484, 0
  br i1 %t486, label %bb115, label %bb116
bb115:
  %t488 = load ptr, ptr %l3, !tbaa !29
  %t489 = load ptr, ptr %l2, !tbaa !29
  %t490 = getelementptr %"compiler/interp:abortedAsk", ptr %l26, i32 0, i32 4
  %t491 = load i64, ptr %t490, !tbaa !24
  %t492 = getelementptr %"compiler/interp:abortedAsk", ptr %l26, i32 0, i32 1
  %t493 = load i32, ptr %t492, !range !{i32 0, i32 20}
  %t494 = getelementptr %"compiler/interp:abortedAsk", ptr %l26, i32 0, i32 2
  %t495 = load i64, ptr %t494, !tbaa !24
  %t496 = getelementptr %"compiler/interp:abortedAsk", ptr %l26, i32 0, i32 3
  %t497 = load %"compiler/source:Span", ptr %t496
  call void @compiler_2finterp_2eglobalAborts(ptr %v0, ptr %v0, ptr %t488, ptr %t489, i64 %t491, i32 %t493, i64 %t495, %"compiler/source:Span" %t497)
  br label %bb117
bb116:
  br label %bb118
bb117:
  call void @__olang_scope_close(ptr %s18)
  br label %bb125
bb118:
  %t504 = load ptr, ptr %l0, !tbaa !29
  %t506 = getelementptr %"compiler/check:Checker", ptr %t504, i32 0, i32 115
  %t507 = getelementptr %"compiler/interp:abortedAsk", ptr %l26, i32 0, i32 0
  %t508 = load i64, ptr %t507, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aAssertAsk_3e_2eAt_3ccompiler_2fcheck_3aAssertAsk_3e(ptr %t509, ptr %v0, ptr %v0, ptr %t506, i64 %t508)
  call void @llvm.memmove.p0.p0.i64(ptr %l234, ptr %t509, i64 184, i1 false)
  br label %bb119
bb119:
  call void @llvm.memmove.p0.p0.i64(ptr %l27, ptr %l234, i64 184, i1 false)
  %t512 = load ptr, ptr %l2, !tbaa !29
  store ptr %t512, ptr %l235, !tbaa !29
  store ptr %l27, ptr %l236, !tbaa !29
  %t513 = getelementptr %"compiler/check:AssertAsk", ptr %l27, i32 0, i32 1
  %t514 = load i64, ptr %t513, !tbaa !24
  %t515 = getelementptr %"compiler/check:AssertAsk", ptr %l27, i32 0, i32 3
  %t516 = getelementptr %"compiler/source:Span", ptr %t515, i32 0, i32 0
  %t517 = load i32, ptr %t516, !tbaa !23
  %t519 = sext i32 %t517 to i64
  %t520 = getelementptr %"compiler/check:AssertAsk", ptr %l27, i32 0, i32 3
  %t521 = getelementptr %"compiler/source:Span", ptr %t520, i32 0, i32 1
  %t522 = load i32, ptr %t521, !tbaa !23
  %t524 = sext i32 %t522 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t525
  %t526 = getelementptr { i64, [3 x i64] }, ptr %t525, i32 0, i32 0
  store i64 3, ptr %t526
  %t528 = insertvalue { i64, i64, i64 } undef, i64 %t514, 0
  %t530 = insertvalue { i64, i64, i64 } %t528, i64 %t519, 1
  %t532 = insertvalue { i64, i64, i64 } %t530, i64 %t524, 2
  %t533 = getelementptr { i64, [3 x i64] }, ptr %t525, i32 0, i32 1
  store { i64, i64, i64 } %t532, ptr %t533
  %t534 = load { i64, [3 x i64] }, ptr %t525
  store { i64, [3 x i64] } %t534, ptr %l242
  %t535 = getelementptr %"compiler/interp:abortedAsk", ptr %l26, i32 0, i32 1
  %t536 = load i32, ptr %t535, !range !{i32 0, i32 20}
  %t538 = call { i64, ptr } @compiler_2finterp_2eAbortWhy(ptr %s18, i32 %t536)
  store { i64, ptr } %t538, ptr %l244
  br label %bb120
bb120:
  %t539 = load { i64, ptr }, ptr %l244, !tbaa !27
  %t540 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAssertAborts(ptr %s18, ptr %v0, { i64, ptr } %t539)
  store %"compiler/diagmsg:Msg" %t540, ptr %l245
  br label %bb121
bb121:
  %t541 = load ptr, ptr %l235, !tbaa !29
  %t542 = load ptr, ptr %l236, !tbaa !29
  %t543 = load { i64, [3 x i64] }, ptr %l242
  %t544 = load %"compiler/diagmsg:Msg", ptr %l245
  %t545 = call i64 @compiler_2finterp_2esayAt(ptr %v0, ptr %v0, ptr %v0, ptr %t541, ptr %t542, { i64, [3 x i64] } %t543, %"compiler/diagmsg:Msg" %t544)
  store i64 %t545, ptr %l246
  br label %bb122
bb122:
  %t546 = load i64, ptr %l246, !tbaa !24
  %t547 = load ptr, ptr %l2, !tbaa !29
  store ptr %t547, ptr %l247, !tbaa !29
  store i64 %t546, ptr %l248, !tbaa !24
  %t549 = getelementptr %"compiler/interp:abortedAsk", ptr %l26, i32 0, i32 2
  %t550 = load i64, ptr %t549, !tbaa !24
  %t551 = getelementptr %"compiler/interp:abortedAsk", ptr %l26, i32 0, i32 3
  %t552 = getelementptr %"compiler/source:Span", ptr %t551, i32 0, i32 0
  %t553 = load i32, ptr %t552, !tbaa !23
  %t555 = sext i32 %t553 to i64
  %t556 = getelementptr %"compiler/interp:abortedAsk", ptr %l26, i32 0, i32 3
  %t557 = getelementptr %"compiler/source:Span", ptr %t556, i32 0, i32 1
  %t558 = load i32, ptr %t557, !tbaa !23
  %t560 = sext i32 %t558 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t561
  %t562 = getelementptr { i64, [3 x i64] }, ptr %t561, i32 0, i32 0
  store i64 3, ptr %t562
  %t564 = insertvalue { i64, i64, i64 } undef, i64 %t550, 0
  %t566 = insertvalue { i64, i64, i64 } %t564, i64 %t555, 1
  %t568 = insertvalue { i64, i64, i64 } %t566, i64 %t560, 2
  %t569 = getelementptr { i64, [3 x i64] }, ptr %t561, i32 0, i32 1
  store { i64, i64, i64 } %t568, ptr %t569
  %t570 = load { i64, [3 x i64] }, ptr %t561
  store { i64, [3 x i64] } %t570, ptr %l254
  %t571 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteHere(ptr %v0)
  store %"compiler/diagmsg:Msg" %t571, ptr %l255
  br label %bb123
bb123:
  %t572 = load ptr, ptr %l247, !tbaa !29
  %t573 = load i64, ptr %l248, !tbaa !24
  %t574 = load { i64, [3 x i64] }, ptr %l254
  %t575 = load %"compiler/diagmsg:Msg", ptr %l255
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %v0, ptr %t572, i64 %t573, { i64, [3 x i64] } %t574, %"compiler/diagmsg:Msg" %t575)
  br label %bb124
bb124:
  call void @__olang_scope_close(ptr %s18)
  br label %bb125
bb125:
  %t576 = load i64, ptr %l25, !tbaa !24
  %t578 = add i64 %t576, 1
  store i64 %t578, ptr %l25, !tbaa !24
  br label %bb104
bb126:
  %t580 = load i64, ptr %l4, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t580, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2finterp_2eDecideValues(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca %"compiler/check:ValueAsk"
  %l8 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l9 = alloca { i64, [2 x i64] }
  %l11 = alloca { i64, [3 x i64] }
  %l12 = alloca { { i64, ptr }, i64, %"compiler/source:Span" }
  %l13 = alloca { i64, ptr }
  %l14 = alloca i64
  %l15 = alloca %"compiler/source:Span"
  %l17 = alloca i1
  %l18 = alloca { i64, [3 x i64] }
  %l19 = alloca { i64, ptr }
  %l20 = alloca { { i64, [3 x i64] }, { i64, ptr } }
  %l21 = alloca i64
  %l24 = alloca i64
  %l36 = alloca %"compiler/interp:Exec"
  %l38 = alloca ptr
  %l39 = alloca i64
  %l42 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l44 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l46 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l48 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l51 = alloca i64
  %l53 = alloca i64
  %l58 = alloca %"compiler/check:ValueAsk"
  %l63 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l66 = alloca i1
  %l74 = alloca ptr
  %l75 = alloca { i64, [2 x i64] }
  %l79 = alloca { i64, [5 x i64] }
  %l88 = alloca { { i64, ptr }, i64, %"compiler/source:Span" }
  %l93 = alloca i1
  %l98 = alloca i1
  %l101 = alloca i1
  %l104 = alloca ptr
  %l105 = alloca { i64, [3 x i64] }
  %l108 = alloca { i64, ptr }
  %l110 = alloca %"compiler/diagmsg:Msg"
  %l111 = alloca i64
  %l116 = alloca ptr
  %l117 = alloca { i64, [3 x i64] }
  %l120 = alloca { i64, ptr }
  %l123 = alloca %"compiler/diagmsg:Msg"
  %l124 = alloca i64
  %l131 = alloca { i64, [3 x i64] }
  %l133 = alloca { i64, [3 x i64] }
  %l135 = alloca i1
  %l138 = alloca { i64, ptr }
  %l141 = alloca ptr
  %l142 = alloca { i64, [3 x i64] }
  %l145 = alloca { i64, ptr }
  %l147 = alloca { { i64, [3 x i64] }, { i64, ptr } }
  %l149 = alloca { i64, ptr }
  %l150 = alloca { i64, ptr }
  %l151 = alloca i64
  %l152 = alloca { i64, ptr }
  %l154 = alloca ptr
  %l155 = alloca { i64, [3 x i64] }
  %l158 = alloca { i64, ptr }
  %l161 = alloca %"compiler/diagmsg:Msg"
  %l162 = alloca i64
  %l164 = alloca ptr
  %l165 = alloca i64
  %l166 = alloca { i64, [3 x i64] }
  %l167 = alloca %"compiler/diagmsg:Msg"
  %l171 = alloca ptr
  %l172 = alloca i64
  %l173 = alloca { i64, [3 x i64] }
  %l174 = alloca %"compiler/diagmsg:Msg"
  %l182 = alloca i1
  %l184 = alloca ptr
  %l185 = alloca i64
  %l186 = alloca { i64, [3 x i64] }
  %l188 = alloca %"compiler/diagmsg:Msg"
  %l190 = alloca ptr
  %l191 = alloca i64
  %l192 = alloca { i64, [3 x i64] }
  %l195 = alloca { i64, ptr }
  %l196 = alloca { i64, ptr }
  %l199 = alloca { i64, ptr }
  %l201 = alloca %"compiler/diagmsg:Msg"
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %rv = alloca i64
  %t28 = alloca %"compiler/interp:Exec", align 8
  %t149 = alloca { i64, [2 x i64] }, align 8
  %t188 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 118
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aValueAsk_3e_2eLen_3ccompiler_2fcheck_3aValueAsk_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l24
  br label %bb1
bb1:
  %t6 = load i64, ptr %l24, !tbaa !24
  %t7 = icmp eq i64 %t6, 0
  br i1 %t7, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  store i64 0, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/check:Checker", ptr %t10, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t15 = getelementptr %"compiler/generic:Program", ptr %t13, i32 0, i32 0
  %t16 = load ptr, ptr %t15, !tbaa !29
  %t18 = getelementptr %"compiler/load:Loader", ptr %t16, i32 0, i32 4
  %t19 = load ptr, ptr %t18, !tbaa !29
  store ptr %t19, ptr %l1, !tbaa !29
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/check:Checker", ptr %t21, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !29
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/check:Checker", ptr %t25, i32 0, i32 18
  call void @compiler_2finterp_3aExec_2ector(ptr %t28, ptr %v0, ptr %v0, ptr %v0, ptr %t24, ptr %t27, i32 0)
  call void @llvm.memmove.p0.p0.i64(ptr %l36, ptr %t28, i64 6136, i1 false)
  br label %bb5
bb5:
  %t32 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 6136, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t32, ptr %l36, i64 6136, i1 false)
  store ptr %t32, ptr %l2, !tbaa !29
  %t34 = load ptr, ptr %l2, !tbaa !29
  store ptr %t34, ptr %l38, !tbaa !29
  %t35 = ptrtoint ptr %v0 to i64
  store i64 %t35, ptr %l39, !tbaa !24
  %t36 = load i1, ptr @olang_2esole_2ecompiler_2finterp_3aExec_2e10
  br i1 %t36, label %bb6, label %bb7
bb6:
  %t38 = call ptr @__olang_region_make(ptr %v0)
  %t39 = ptrtoint ptr %t38 to i64
  store i64 %t39, ptr %l39, !tbaa !24
  br label %bb7
bb7:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/check:Checker", ptr %t40, i32 0, i32 151
  %t43 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t42
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t43, ptr %l42
  %t44 = load i64, ptr %l39
  %t45 = inttoptr i64 %t44 to ptr
  %t47 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %t45, ptr %l42)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t47, ptr %l44
  br label %bb8
bb8:
  %t48 = load i1, ptr @olang_2esole_2ecompiler_2finterp_3aExec_2e10
  br i1 %t48, label %bb9, label %bb10
bb9:
  %t50 = load i64, ptr %l39
  %t51 = inttoptr i64 %t50 to ptr
  %t52 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l44, i32 0, i32 2
  %t53 = load { i64, ptr }, ptr %t52
  %t54 = extractvalue { i64, ptr } %t53, 1
  %t55 = call ptr @__olang_region_or(ptr %t54, ptr null)
  %t56 = call ptr @__olang_region_home(ptr %t55)
  %t57 = icmp ne ptr %t56, null
  %t58 = select i1 %t57, ptr %t56, ptr null
  %t59 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l44, i32 0, i32 1
  %t60 = load { i64, ptr }, ptr %t59
  %t61 = extractvalue { i64, ptr } %t60, 1
  %t62 = call ptr @__olang_region_or(ptr %t61, ptr null)
  %t63 = call ptr @__olang_region_home(ptr %t62)
  %t64 = icmp ne ptr %t63, null
  %t65 = select i1 %t64, ptr %t63, ptr %t58
  %t66 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l44, i32 0, i32 0
  %t67 = load { i64, ptr }, ptr %t66
  %t68 = extractvalue { i64, ptr } %t67, 1
  %t69 = call ptr @__olang_region_or(ptr %t68, ptr null)
  %t70 = call ptr @__olang_region_home(ptr %t69)
  %t71 = icmp ne ptr %t70, null
  %t72 = select i1 %t71, ptr %t70, ptr %t65
  %t73 = icmp eq ptr %t72, %t51
  call void @__olang_region_settle(ptr %t51, i1 %t73)
  br label %bb10
bb10:
  %t74 = load ptr, ptr %l38, !tbaa !29
  %t75 = getelementptr %"compiler/interp:Exec", ptr %t74, i32 0, i32 10
  %t76 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t75
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t76, ptr %l46
  %t77 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l44
  %t78 = load ptr, ptr %l38, !tbaa !29
  %t79 = getelementptr %"compiler/interp:Exec", ptr %t78, i32 0, i32 10
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t77, ptr %t79
  %t80 = load i1, ptr @olang_2esole_2ecompiler_2finterp_3aExec_2e10
  br i1 %t80, label %bb11, label %bb12
bb11:
  %t82 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l46, i32 0, i32 2
  %t83 = load { i64, ptr }, ptr %t82
  %t84 = extractvalue { i64, ptr } %t83, 1
  %t85 = call ptr @__olang_region_or(ptr %t84, ptr null)
  %t86 = call ptr @__olang_region_home(ptr %t85)
  %t87 = icmp ne ptr %t86, null
  %t88 = select i1 %t87, ptr %t86, ptr null
  %t89 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l46, i32 0, i32 1
  %t90 = load { i64, ptr }, ptr %t89
  %t91 = extractvalue { i64, ptr } %t90, 1
  %t92 = call ptr @__olang_region_or(ptr %t91, ptr null)
  %t93 = call ptr @__olang_region_home(ptr %t92)
  %t94 = icmp ne ptr %t93, null
  %t95 = select i1 %t94, ptr %t93, ptr %t88
  %t96 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l46, i32 0, i32 0
  %t97 = load { i64, ptr }, ptr %t96
  %t98 = extractvalue { i64, ptr } %t97, 1
  %t99 = call ptr @__olang_region_or(ptr %t98, ptr null)
  %t100 = call ptr @__olang_region_home(ptr %t99)
  %t101 = icmp ne ptr %t100, null
  %t102 = select i1 %t101, ptr %t100, ptr %t95
  call void @__olang_region_drop(ptr %t102)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" zeroinitializer, ptr %l46
  br label %bb12
bb12:
  %t103 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t103, ptr %l48
  br label %bb13
bb13:
  %t104 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l48
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t104, ptr %l3
  store i64 0, ptr %l4, !tbaa !24
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t107 = getelementptr %"compiler/check:Checker", ptr %t105, i32 0, i32 118
  store ptr %t107, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb14
bb14:
  store %olang.scope zeroinitializer, ptr %s3
  %t109 = load i64, ptr %l6, !tbaa !24
  store i64 %t109, ptr %l51, !tbaa !24
  %t110 = load ptr, ptr %l5, !tbaa !29
  %t112 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aValueAsk_3e_2eLen_3ccompiler_2fcheck_3aValueAsk_3e(ptr %v0, ptr %t110)
  store i64 %t112, ptr %l53
  br label %bb15
bb15:
  %t113 = load i64, ptr %l51, !tbaa !24
  %t114 = load i64, ptr %l53, !tbaa !24
  %t115 = icmp slt i64 %t113, %t114
  %t117 = xor i1 %t115, true
  br i1 %t117, label %bb16, label %bb17
bb16:
  call void @__olang_scope_close(ptr %s3)
  br label %bb94
bb17:
  br label %bb18
bb18:
  %t119 = load ptr, ptr %l5, !tbaa !29
  %t120 = load i64, ptr %l6, !tbaa !24
  %t123 = call %"compiler/check:ValueAsk" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aValueAsk_3e_2eAt_3ccompiler_2fcheck_3aValueAsk_3e(ptr %v0, ptr %t119, i64 %t120)
  store %"compiler/check:ValueAsk" %t123, ptr %l58
  br label %bb19
bb19:
  %t124 = load %"compiler/check:ValueAsk", ptr %l58
  store %"compiler/check:ValueAsk" %t124, ptr %l7
  %t125 = getelementptr %"compiler/check:ValueAsk", ptr %l7, i32 0, i32 6
  %t126 = load i1, ptr %t125, !tbaa !21
  br i1 %t126, label %bb20, label %bb21
bb20:
  call void @__olang_scope_close(ptr %s3)
  br label %bb93
bb21:
  br label %bb22
bb22:
  %t128 = getelementptr %"compiler/check:ValueAsk", ptr %l7, i32 0, i32 1
  %t129 = load i64, ptr %t128, !tbaa !24
  %t130 = getelementptr %"compiler/check:ValueAsk", ptr %l7, i32 0, i32 2
  %t131 = getelementptr %"compiler/source:Span", ptr %t130, i32 0, i32 0
  %t132 = load i32, ptr %t131, !tbaa !23
  %t134 = sext i32 %t132 to i64
  %t137 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s3, i64 %t129, i64 %t134)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t137, ptr %l63
  br label %bb23
bb23:
  %t138 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l63
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t138, ptr %l8
  %t139 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l8
  %t142 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2ed2e5427629ba63a7110fc86d969058(ptr %s0, ptr %l3, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t139)
  store i1 %t142, ptr %l66
  br label %bb24
bb24:
  %t143 = load i1, ptr %l66, !tbaa !21
  br i1 %t143, label %bb25, label %bb26
bb25:
  call void @__olang_scope_close(ptr %s3)
  br label %bb93
bb26:
  br label %bb27
bb27:
  %t144 = getelementptr %"compiler/check:ValueAsk", ptr %l7, i32 0, i32 4
  %t145 = load i64, ptr %t144, !tbaa !24
  %t147 = trunc i64 %t145 to i32
  store { i64, [2 x i64] } zeroinitializer, ptr %t149
  %t150 = getelementptr { i64, [2 x i64] }, ptr %t149, i32 0, i32 0
  store i64 0, ptr %t150
  %t152 = insertvalue { i32 } undef, i32 %t147, 0
  %t153 = getelementptr { i64, [2 x i64] }, ptr %t149, i32 0, i32 1
  store { i32 } %t152, ptr %t153
  %t154 = load { i64, [2 x i64] }, ptr %t149
  store { i64, [2 x i64] } %t154, ptr %l9
  %t156 = load ptr, ptr %l2, !tbaa !29
  %t157 = load { i64, [2 x i64] }, ptr %l9
  call void @compiler_2finterp_2ecompiler_2finterp_3aExec_2eNeed(ptr %v0, ptr %t156, { i64, [2 x i64] } %t157)
  br label %bb28
bb28:
  %t160 = load ptr, ptr %l2, !tbaa !29
  %t162 = getelementptr %"compiler/interp:Exec", ptr %t160, i32 0, i32 4
  store ptr %t162, ptr %l74, !tbaa !29
  %t163 = load { i64, [2 x i64] }, ptr %l9
  store { i64, [2 x i64] } %t163, ptr %l75
  %t164 = icmp sge i64 0, 0
  br i1 %t164, label %bb29, label %bb30
bb29:
  %t166 = icmp sle i64 0, 1152921504606846975
  br i1 %t166, label %bb31, label %bb32
bb30:
  call void @__olang_check_failed(ptr @olang_loc_e1183b54591591ba_6784d54d52bb291e)
  unreachable
bb31:
  %t168 = mul i64 0, 8
  %t169 = insertvalue { i64, ptr } undef, i64 0, 0
  %t170 = insertvalue { i64, ptr } %t169, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t171 = load ptr, ptr %l74, !tbaa !29
  %t172 = load { i64, [2 x i64] }, ptr %l75
  %t174 = call { i64, [5 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2eEval(ptr %v0, ptr %s3, ptr %v0, ptr %t171, { i64, [2 x i64] } %t172, { i64, ptr } %t170)
  store { i64, [5 x i64] } %t174, ptr %l79
  br label %bb33
bb32:
  call void @__olang_check_failed(ptr @olang_loc_e1183b54591591ba_6784d54d52bb291e)
  unreachable
bb33:
  %t175 = load { i64, [5 x i64] }, ptr %l79
  %t176 = getelementptr %"compiler/check:ValueAsk", ptr %l7, i32 0, i32 1
  %t177 = load i64, ptr %t176, !tbaa !24
  %t178 = getelementptr %"compiler/check:ValueAsk", ptr %l7, i32 0, i32 2
  %t179 = getelementptr %"compiler/source:Span", ptr %t178, i32 0, i32 0
  %t180 = load i32, ptr %t179, !tbaa !23
  %t182 = sext i32 %t180 to i64
  %t183 = getelementptr %"compiler/check:ValueAsk", ptr %l7, i32 0, i32 2
  %t184 = getelementptr %"compiler/source:Span", ptr %t183, i32 0, i32 1
  %t185 = load i32, ptr %t184, !tbaa !23
  %t187 = sext i32 %t185 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t188
  %t189 = getelementptr { i64, [3 x i64] }, ptr %t188, i32 0, i32 0
  store i64 3, ptr %t189
  %t191 = insertvalue { i64, i64, i64 } undef, i64 %t177, 0
  %t193 = insertvalue { i64, i64, i64 } %t191, i64 %t182, 1
  %t195 = insertvalue { i64, i64, i64 } %t193, i64 %t187, 2
  %t196 = getelementptr { i64, [3 x i64] }, ptr %t188, i32 0, i32 1
  store { i64, i64, i64 } %t195, ptr %t196
  %t197 = load { i64, [3 x i64] }, ptr %t188
  store { i64, [3 x i64] } %t197, ptr %l11
  %t200 = getelementptr %"compiler/check:ValueAsk", ptr %l7, i32 0, i32 2
  %t201 = load %"compiler/source:Span", ptr %t200
  %t204 = call { { i64, ptr }, i64, %"compiler/source:Span" } @compiler_2finterp_2evalueWhy(ptr %v0, ptr %s3, { i64, [5 x i64] } %t175, %"compiler/source:Span" %t201)
  store { { i64, ptr }, i64, %"compiler/source:Span" } %t204, ptr %l88
  br label %bb34
bb34:
  %t205 = load { { i64, ptr }, i64, %"compiler/source:Span" }, ptr %l88
  store { { i64, ptr }, i64, %"compiler/source:Span" } %t205, ptr %l12
  %t206 = getelementptr { { i64, ptr }, i64, %"compiler/source:Span" }, ptr %l12, i32 0, i32 0
  %t207 = load { i64, ptr }, ptr %t206, !tbaa !27
  store { i64, ptr } %t207, ptr %l13, !tbaa !27
  %t209 = getelementptr { { i64, ptr }, i64, %"compiler/source:Span" }, ptr %l12, i32 0, i32 1
  %t210 = load i64, ptr %t209, !tbaa !24
  store i64 %t210, ptr %l14, !tbaa !24
  %t212 = getelementptr { { i64, ptr }, i64, %"compiler/source:Span" }, ptr %l12, i32 0, i32 2
  %t213 = load %"compiler/source:Span", ptr %t212
  store %"compiler/source:Span" %t213, ptr %l15
  %t215 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t217 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s3, ptr %s3, { i64, ptr } %t215, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d24, i32 0, i32 1) })
  store i1 %t217, ptr %l93
  br label %bb35
bb35:
  %t218 = load i1, ptr %l93, !tbaa !21
  br i1 %t218, label %bb36, label %bb37
bb36:
  %t219 = load i64, ptr %l4, !tbaa !24
  %t221 = add i64 %t219, 1
  store i64 %t221, ptr %l4, !tbaa !24
  %t223 = getelementptr %"compiler/check:ValueAsk", ptr %l7, i32 0, i32 0
  %t224 = load i32, ptr %t223, !range !{i32 0, i32 3}
  %t226 = trunc i64 2 to i32
  %t227 = icmp eq i32 %t224, %t226
  br i1 %t227, label %bb38, label %bb39
bb37:
  br label %bb49
bb38:
  %t229 = load ptr, ptr %l2, !tbaa !29
  %t231 = getelementptr %"compiler/interp:Exec", ptr %t229, i32 0, i32 4
  %t233 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2eResultHoldsAddress(ptr %v0, ptr %t231)
  store i1 %t233, ptr %l101
  br label %bb40
bb39:
  store i1 false, ptr %l98, !tbaa !21
  br label %bb41
bb40:
  %t234 = load i1, ptr %l101, !tbaa !21
  store i1 %t234, ptr %l98, !tbaa !21
  br label %bb41
bb41:
  %t235 = load i1, ptr %l98, !tbaa !21
  br i1 %t235, label %bb42, label %bb43
bb42:
  store %olang.scope zeroinitializer, ptr %s7
  %t236 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l8
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1308596c866d4be061d9da9113abde88(ptr %s0, ptr %l3, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t236, i1 true)
  br label %bb44
bb43:
  br label %bb48
bb44:
  %t239 = load ptr, ptr %l1, !tbaa !29
  store ptr %t239, ptr %l104, !tbaa !29
  %t240 = load { i64, [3 x i64] }, ptr %l11
  store { i64, [3 x i64] } %t240, ptr %l105
  %t241 = load ptr, ptr %l0, !tbaa !29
  %t242 = getelementptr %"compiler/check:ValueAsk", ptr %l7, i32 0, i32 3
  %t243 = load i32, ptr %t242, !tbaa !23
  %t246 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eTy(ptr %v0, ptr %s7, ptr %t241, i32 %t243)
  store { i64, ptr } %t246, ptr %l108
  br label %bb45
bb45:
  %t247 = load { i64, ptr }, ptr %l108, !tbaa !27
  %t248 = extractvalue { i64, ptr } %t247, 0
  %t249 = extractvalue { i64, ptr } %t247, 1
  %t250 = mul i64 %t248, 1
  %t251 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t250)
  call void @llvm.memcpy.p0.p0.i64(ptr %t251, ptr %t249, i64 %t250, i1 false)
  %t252 = insertvalue { i64, ptr } undef, i64 %t248, 0
  %t253 = insertvalue { i64, ptr } %t252, ptr %t251, 1
  %t255 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eZeroValueShared(ptr %s7, ptr %v0, { i64, ptr } %t253)
  store %"compiler/diagmsg:Msg" %t255, ptr %l110
  br label %bb46
bb46:
  %t256 = load ptr, ptr %l104, !tbaa !29
  %t257 = load { i64, [3 x i64] }, ptr %l105
  %t258 = load %"compiler/diagmsg:Msg", ptr %l110
  %t259 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t256, { i64, [3 x i64] } %t257, %"compiler/diagmsg:Msg" %t258)
  store i64 %t259, ptr %l111
  br label %bb47
bb47:
  call void @__olang_scope_close(ptr %s7)
  br label %bb48
bb48:
  call void @__olang_scope_close(ptr %s3)
  br label %bb93
bb49:
  %t260 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l8
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1308596c866d4be061d9da9113abde88(ptr %s0, ptr %l3, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t260, i1 true)
  br label %bb50
bb50:
  %t263 = getelementptr %"compiler/check:ValueAsk", ptr %l7, i32 0, i32 0
  %t264 = load i32, ptr %t263, !range !{i32 0, i32 3}
  %t266 = trunc i64 0 to i32
  %t267 = icmp eq i32 %t264, %t266
  br i1 %t267, label %bb51, label %bb52
bb51:
  store %olang.scope zeroinitializer, ptr %s8
  %t269 = load ptr, ptr %l1, !tbaa !29
  store ptr %t269, ptr %l116, !tbaa !29
  %t270 = load { i64, [3 x i64] }, ptr %l11
  store { i64, [3 x i64] } %t270, ptr %l117
  %t271 = load ptr, ptr %l0, !tbaa !29
  %t272 = getelementptr %"compiler/check:ValueAsk", ptr %l7, i32 0, i32 3
  %t273 = load i32, ptr %t272, !tbaa !23
  %t276 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eTy(ptr %v0, ptr %s8, ptr %t271, i32 %t273)
  store { i64, ptr } %t276, ptr %l120
  br label %bb53
bb52:
  br label %bb57
bb53:
  %t277 = load { i64, ptr }, ptr %l120, !tbaa !27
  %t278 = extractvalue { i64, ptr } %t277, 0
  %t279 = extractvalue { i64, ptr } %t277, 1
  %t280 = mul i64 %t278, 1
  %t281 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t280)
  call void @llvm.memcpy.p0.p0.i64(ptr %t281, ptr %t279, i64 %t280, i1 false)
  %t282 = insertvalue { i64, ptr } undef, i64 %t278, 0
  %t283 = insertvalue { i64, ptr } %t282, ptr %t281, 1
  %t284 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t287 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLiteralCtorFails(ptr %s8, ptr %s3, ptr %v0, { i64, ptr } %t283, { i64, ptr } %t284)
  store %"compiler/diagmsg:Msg" %t287, ptr %l123
  br label %bb54
bb54:
  %t288 = load ptr, ptr %l116, !tbaa !29
  %t289 = load { i64, [3 x i64] }, ptr %l117
  %t290 = load %"compiler/diagmsg:Msg", ptr %l123
  %t291 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t288, { i64, [3 x i64] } %t289, %"compiler/diagmsg:Msg" %t290)
  store i64 %t291, ptr %l124
  br label %bb55
bb55:
  %t292 = load i64, ptr %l124, !tbaa !24
  %t293 = load ptr, ptr %l1, !tbaa !29
  %t295 = getelementptr %"compiler/check:ValueAsk", ptr %l7, i32 0, i32 1
  %t296 = load i64, ptr %t295, !tbaa !24
  %t297 = getelementptr %"compiler/check:ValueAsk", ptr %l7, i32 0, i32 2
  %t298 = load %"compiler/source:Span", ptr %t297
  %t299 = load i64, ptr %l14, !tbaa !24
  %t300 = load %"compiler/source:Span", ptr %l15
  call void @compiler_2finterp_2enoteWhy(ptr %v0, ptr %t293, i64 %t292, i64 %t296, %"compiler/source:Span" %t298, i64 %t299, %"compiler/source:Span" %t300)
  br label %bb56
bb56:
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s3)
  br label %bb93
bb57:
  %t307 = getelementptr %"compiler/check:ValueAsk", ptr %l7, i32 0, i32 5
  %t308 = load { i64, [3 x i64] }, ptr %t307
  store { i64, [3 x i64] } %t308, ptr %l131
  %t309 = load { i64, [3 x i64] }, ptr %l11
  store { i64, [3 x i64] } %t309, ptr %l133
  %t312 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fdiag_3aWhere(ptr %l131, ptr %l133)
  store i1 %t312, ptr %l135
  br label %bb58
bb58:
  %t313 = load i1, ptr %l135, !tbaa !21
  %t314 = xor i1 %t313, true
  store i1 %t314, ptr %l17, !tbaa !21
  %t316 = getelementptr %"compiler/check:ValueAsk", ptr %l7, i32 0, i32 5
  %t317 = load { i64, [3 x i64] }, ptr %t316
  store { i64, [3 x i64] } %t317, ptr %l18
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d25, i32 0, i32 1) }, ptr %l138, !tbaa !27
  %t319 = load { i64, ptr }, ptr %l138, !tbaa !27
  store { i64, ptr } %t319, ptr %l19, !tbaa !27
  %t321 = load i1, ptr %l17, !tbaa !21
  br i1 %t321, label %bb59, label %bb60
bb59:
  store %olang.scope zeroinitializer, ptr %s9
  %t323 = load ptr, ptr %l1, !tbaa !29
  store ptr %t323, ptr %l141, !tbaa !29
  %t324 = getelementptr %"compiler/check:ValueAsk", ptr %l7, i32 0, i32 5
  %t325 = load { i64, [3 x i64] }, ptr %t324
  store { i64, [3 x i64] } %t325, ptr %l142
  %t326 = load ptr, ptr %l0, !tbaa !29
  %t327 = getelementptr %"compiler/check:ValueAsk", ptr %l7, i32 0, i32 3
  %t328 = load i32, ptr %t327, !tbaa !23
  %t331 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eTy(ptr %v0, ptr %s9, ptr %t326, i32 %t328)
  store { i64, ptr } %t331, ptr %l145
  br label %bb61
bb60:
  br label %bb65
bb61:
  %t332 = load { i64, ptr }, ptr %l145, !tbaa !27
  %t333 = extractvalue { i64, ptr } %t332, 0
  %t334 = extractvalue { i64, ptr } %t332, 1
  %t335 = mul i64 %t333, 1
  %t336 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t335)
  call void @llvm.memcpy.p0.p0.i64(ptr %t336, ptr %t334, i64 %t335, i1 false)
  %t337 = insertvalue { i64, ptr } undef, i64 %t333, 0
  %t338 = insertvalue { i64, ptr } %t337, ptr %t336, 1
  %t339 = load ptr, ptr %l141, !tbaa !29
  %t340 = load { i64, [3 x i64] }, ptr %l142
  %t342 = call { { i64, [3 x i64] }, { i64, ptr } } @compiler_2finterp_2ezeroUseArg(ptr %v0, ptr %s9, ptr %s9, ptr %t339, { i64, [3 x i64] } %t340, { i64, ptr } %t338)
  store { { i64, [3 x i64] }, { i64, ptr } } %t342, ptr %l147
  br label %bb62
bb62:
  %t343 = load { { i64, [3 x i64] }, { i64, ptr } }, ptr %l147
  store { { i64, [3 x i64] }, { i64, ptr } } %t343, ptr %l20
  %t344 = getelementptr { { i64, [3 x i64] }, { i64, ptr } }, ptr %l20, i32 0, i32 0
  %t345 = load { i64, [3 x i64] }, ptr %t344
  store { i64, [3 x i64] } %t345, ptr %l18
  %t347 = getelementptr { { i64, [3 x i64] }, { i64, ptr } }, ptr %l20, i32 0, i32 1
  %t348 = load { i64, ptr }, ptr %t347, !tbaa !27
  store { i64, ptr } %t348, ptr %l149, !tbaa !27
  %t349 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t349, ptr %l150, !tbaa !27
  %t350 = load { i64, ptr }, ptr %l149, !tbaa !27
  %t351 = extractvalue { i64, ptr } %t350, 0
  store i64 %t351, ptr %l151, !tbaa !24
  %t352 = load i64, ptr %l151, !tbaa !24
  %t353 = mul i64 %t352, 1
  %t354 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t353)
  %t355 = insertvalue { i64, ptr } undef, i64 %t352, 0
  %t356 = insertvalue { i64, ptr } %t355, ptr %t354, 1
  store { i64, ptr } %t356, ptr %l152, !tbaa !27
  %t357 = getelementptr { i64, ptr }, ptr %l152, i32 0, i32 1
  %t358 = load ptr, ptr %t357, !tbaa !27
  %t359 = getelementptr { i64, ptr }, ptr %l149, i32 0, i32 1
  %t360 = load ptr, ptr %t359, !tbaa !27
  %t361 = load i64, ptr %l151, !tbaa !24
  %t362 = mul i64 %t361, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t358, ptr %t360, i64 %t362, i1 false)
  %t363 = load { i64, ptr }, ptr %l152, !tbaa !27
  store { i64, ptr } %t363, ptr %l19, !tbaa !27
  %t364 = load i1, ptr @olang_2esole_2ecompiler__2finterp__2eDecideValues_2elocal_2e19
  br i1 %t364, label %bb63, label %bb64
bb63:
  %t366 = load { i64, ptr }, ptr %l150
  %t367 = extractvalue { i64, ptr } %t366, 1
  call void @__olang_region_release(ptr %t367)
  store { i64, ptr } zeroinitializer, ptr %l150
  br label %bb64
bb64:
  call void @__olang_scope_close(ptr %s9)
  br label %bb65
bb65:
  %t368 = load ptr, ptr %l1, !tbaa !29
  store ptr %t368, ptr %l154, !tbaa !29
  %t369 = load { i64, [3 x i64] }, ptr %l18
  store { i64, [3 x i64] } %t369, ptr %l155
  %t370 = load ptr, ptr %l0, !tbaa !29
  %t371 = getelementptr %"compiler/check:ValueAsk", ptr %l7, i32 0, i32 3
  %t372 = load i32, ptr %t371, !tbaa !23
  %t375 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eTy(ptr %v0, ptr %s3, ptr %t370, i32 %t372)
  store { i64, ptr } %t375, ptr %l158
  br label %bb66
bb66:
  %t376 = load { i64, ptr }, ptr %l158, !tbaa !27
  %t377 = extractvalue { i64, ptr } %t376, 0
  %t378 = extractvalue { i64, ptr } %t376, 1
  %t379 = mul i64 %t377, 1
  %t380 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t379)
  call void @llvm.memcpy.p0.p0.i64(ptr %t380, ptr %t378, i64 %t379, i1 false)
  %t381 = insertvalue { i64, ptr } undef, i64 %t377, 0
  %t382 = insertvalue { i64, ptr } %t381, ptr %t380, 1
  %t383 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t386 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoZeroValue(ptr %s3, ptr %s3, ptr %v0, { i64, ptr } %t382, { i64, ptr } %t383)
  store %"compiler/diagmsg:Msg" %t386, ptr %l161
  br label %bb67
bb67:
  %t387 = load ptr, ptr %l154, !tbaa !29
  %t388 = load { i64, [3 x i64] }, ptr %l155
  %t389 = load %"compiler/diagmsg:Msg", ptr %l161
  %t390 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t387, { i64, [3 x i64] } %t388, %"compiler/diagmsg:Msg" %t389)
  store i64 %t390, ptr %l162
  br label %bb68
bb68:
  %t391 = load i64, ptr %l162, !tbaa !24
  store i64 %t391, ptr %l21, !tbaa !24
  %t392 = load i1, ptr %l17, !tbaa !21
  br i1 %t392, label %bb69, label %bb70
bb69:
  %t394 = load ptr, ptr %l1, !tbaa !29
  store ptr %t394, ptr %l164, !tbaa !29
  %t395 = load i64, ptr %l21, !tbaa !24
  store i64 %t395, ptr %l165, !tbaa !24
  %t396 = load { i64, [3 x i64] }, ptr %l11
  store { i64, [3 x i64] } %t396, ptr %l166
  %t397 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteInLibrary(ptr %v0)
  store %"compiler/diagmsg:Msg" %t397, ptr %l167
  br label %bb71
bb70:
  br label %bb73
bb71:
  %t398 = load ptr, ptr %l164, !tbaa !29
  %t399 = load i64, ptr %l165, !tbaa !24
  %t400 = load { i64, [3 x i64] }, ptr %l166
  %t401 = load %"compiler/diagmsg:Msg", ptr %l167
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %v0, ptr %t398, i64 %t399, { i64, [3 x i64] } %t400, %"compiler/diagmsg:Msg" %t401)
  br label %bb72
bb72:
  br label %bb73
bb73:
  %t402 = getelementptr %"compiler/check:ValueAsk", ptr %l7, i32 0, i32 7
  %t403 = load { i64, [3 x i64] }, ptr %t402
  %t405 = extractvalue { i64, [3 x i64] } %t403, 0
  %t406 = icmp eq i64 %t405, 0
  %t408 = xor i1 %t406, true
  br i1 %t408, label %bb74, label %bb75
bb74:
  %t410 = load ptr, ptr %l1, !tbaa !29
  store ptr %t410, ptr %l171, !tbaa !29
  %t411 = load i64, ptr %l21, !tbaa !24
  store i64 %t411, ptr %l172, !tbaa !24
  %t412 = getelementptr %"compiler/check:ValueAsk", ptr %l7, i32 0, i32 7
  %t413 = load { i64, [3 x i64] }, ptr %t412
  store { i64, [3 x i64] } %t413, ptr %l173
  %t414 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteReadUnassigned(ptr %v0)
  store %"compiler/diagmsg:Msg" %t414, ptr %l174
  br label %bb76
bb75:
  br label %bb78
bb76:
  %t415 = load ptr, ptr %l171, !tbaa !29
  %t416 = load i64, ptr %l172, !tbaa !24
  %t417 = load { i64, [3 x i64] }, ptr %l173
  %t418 = load %"compiler/diagmsg:Msg", ptr %l174
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %v0, ptr %t415, i64 %t416, { i64, [3 x i64] } %t417, %"compiler/diagmsg:Msg" %t418)
  br label %bb77
bb77:
  br label %bb78
bb78:
  %t419 = load ptr, ptr %l1, !tbaa !29
  %t420 = load i64, ptr %l21, !tbaa !24
  %t421 = getelementptr %"compiler/check:ValueAsk", ptr %l7, i32 0, i32 1
  %t422 = load i64, ptr %t421, !tbaa !24
  %t423 = getelementptr %"compiler/check:ValueAsk", ptr %l7, i32 0, i32 2
  %t424 = load %"compiler/source:Span", ptr %t423
  %t425 = load i64, ptr %l14, !tbaa !24
  %t426 = load %"compiler/source:Span", ptr %l15
  call void @compiler_2finterp_2enoteWhy(ptr %v0, ptr %t419, i64 %t420, i64 %t422, %"compiler/source:Span" %t424, i64 %t425, %"compiler/source:Span" %t426)
  br label %bb79
bb79:
  %t433 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t435 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s3, ptr %s3, { i64, ptr } %t433, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d26, i32 0, i32 1) })
  store i1 %t435, ptr %l182
  br label %bb80
bb80:
  %t436 = load i1, ptr %l182, !tbaa !21
  %t437 = xor i1 %t436, true
  br i1 %t437, label %bb81, label %bb82
bb81:
  %t439 = load ptr, ptr %l1, !tbaa !29
  store ptr %t439, ptr %l184, !tbaa !29
  %t440 = load i64, ptr %l21, !tbaa !24
  store i64 %t440, ptr %l185, !tbaa !24
  %t441 = load { i64, [3 x i64] }, ptr %l18
  store { i64, [3 x i64] } %t441, ptr %l186
  %t442 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t444 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteZeroByReference(ptr %s3, ptr %v0, { i64, ptr } %t442)
  store %"compiler/diagmsg:Msg" %t444, ptr %l188
  br label %bb83
bb82:
  %t445 = load i1, ptr %l17, !tbaa !21
  br i1 %t445, label %bb85, label %bb86
bb83:
  %t447 = load ptr, ptr %l184, !tbaa !29
  %t448 = load i64, ptr %l185, !tbaa !24
  %t449 = load { i64, [3 x i64] }, ptr %l186
  %t450 = load %"compiler/diagmsg:Msg", ptr %l188
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %v0, ptr %t447, i64 %t448, { i64, [3 x i64] } %t449, %"compiler/diagmsg:Msg" %t450)
  br label %bb84
bb84:
  br label %bb92
bb85:
  store %olang.scope zeroinitializer, ptr %s14
  %t451 = load ptr, ptr %l1, !tbaa !29
  store ptr %t451, ptr %l190, !tbaa !29
  %t452 = load i64, ptr %l21, !tbaa !24
  store i64 %t452, ptr %l191, !tbaa !24
  %t453 = load { i64, [3 x i64] }, ptr %l18
  store { i64, [3 x i64] } %t453, ptr %l192
  %t454 = load ptr, ptr %l0, !tbaa !29
  %t455 = getelementptr %"compiler/check:ValueAsk", ptr %l7, i32 0, i32 3
  %t456 = load i32, ptr %t455, !tbaa !23
  %t459 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eTy(ptr %v0, ptr %s14, ptr %t454, i32 %t456)
  store { i64, ptr } %t459, ptr %l195
  br label %bb87
bb86:
  br label %bb91
bb87:
  %t460 = load { i64, ptr }, ptr %l195, !tbaa !27
  %t461 = extractvalue { i64, ptr } %t460, 0
  %t462 = extractvalue { i64, ptr } %t460, 1
  %t463 = mul i64 %t461, 1
  %t464 = call ptr @__olang_scope_alloc(ptr %s14, i64 %t463)
  call void @llvm.memcpy.p0.p0.i64(ptr %t464, ptr %t462, i64 %t463, i1 false)
  %t465 = insertvalue { i64, ptr } undef, i64 %t461, 0
  %t466 = insertvalue { i64, ptr } %t465, ptr %t464, 1
  store { i64, ptr } %t466, ptr %l196, !tbaa !27
  %t467 = load ptr, ptr %l0, !tbaa !29
  %t468 = getelementptr %"compiler/check:ValueAsk", ptr %l7, i32 0, i32 3
  %t469 = load i32, ptr %t468, !tbaa !23
  %t472 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eTy(ptr %v0, ptr %s14, ptr %t467, i32 %t469)
  store { i64, ptr } %t472, ptr %l199
  br label %bb88
bb88:
  %t473 = load { i64, ptr }, ptr %l199, !tbaa !27
  %t474 = extractvalue { i64, ptr } %t473, 0
  %t475 = extractvalue { i64, ptr } %t473, 1
  %t476 = mul i64 %t474, 1
  %t477 = call ptr @__olang_scope_alloc(ptr %s14, i64 %t476)
  call void @llvm.memcpy.p0.p0.i64(ptr %t477, ptr %t475, i64 %t476, i1 false)
  %t478 = insertvalue { i64, ptr } undef, i64 %t474, 0
  %t479 = insertvalue { i64, ptr } %t478, ptr %t477, 1
  %t480 = load { i64, ptr }, ptr %l196, !tbaa !27
  %t482 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteZeroReferenceHasOne(ptr %s14, ptr %s14, ptr %v0, { i64, ptr } %t480, { i64, ptr } %t479)
  store %"compiler/diagmsg:Msg" %t482, ptr %l201
  br label %bb89
bb89:
  %t483 = load ptr, ptr %l190, !tbaa !29
  %t484 = load i64, ptr %l191, !tbaa !24
  %t485 = load { i64, [3 x i64] }, ptr %l192
  %t486 = load %"compiler/diagmsg:Msg", ptr %l201
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %v0, ptr %t483, i64 %t484, { i64, [3 x i64] } %t485, %"compiler/diagmsg:Msg" %t486)
  br label %bb90
bb90:
  call void @__olang_scope_close(ptr %s14)
  br label %bb91
bb91:
  br label %bb92
bb92:
  call void @__olang_scope_close(ptr %s3)
  br label %bb93
bb93:
  %t487 = load i64, ptr %l6, !tbaa !24
  %t489 = add i64 %t487, 1
  store i64 %t489, ptr %l6, !tbaa !24
  br label %bb14
bb94:
  %t491 = load i64, ptr %l4, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t491, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2finterp_2eJudgeViews(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  br label %start
start:
  br label %bb0
bb0:
  call void @compiler_2finterp_2ejudgeViews(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
  br label %bb1
bb1:
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2finterp_2eLoadLibrary(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l8 = alloca i1
  %l9 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca i64
  %l24 = alloca i1
  %l25 = alloca i1
  %l27 = alloca i1
  %l28 = alloca { i64, ptr }
  %l29 = alloca { i64, ptr }
  %l30 = alloca i64
  %l31 = alloca { i64, ptr }
  %l33 = alloca { i64, ptr }
  %l34 = alloca ptr
  %l37 = alloca { i64, ptr }
  %l38 = alloca { i64, ptr }
  %l39 = alloca i64
  %l40 = alloca { i64, ptr }
  %l41 = alloca ptr
  %l45 = alloca { i64, ptr }
  %l47 = alloca { i64, ptr }
  %l49 = alloca i64
  %l51 = alloca i64
  %l52 = alloca i32
  %l54 = alloca { i64, ptr }
  %l55 = alloca i64
  %l56 = alloca { i64, ptr }
  %l57 = alloca { i64, ptr }
  %l58 = alloca { i64, ptr }
  %l59 = alloca i64
  %l60 = alloca i64
  %l65 = alloca { i64, ptr }
  %l66 = alloca i32
  %l68 = alloca i1
  %l72 = alloca { i64, ptr }
  %l73 = alloca i64
  %l74 = alloca { i64, ptr }
  %l76 = alloca { i64, ptr }
  %l78 = alloca i1
  %l80 = alloca { i64, ptr }
  %l81 = alloca i64
  %l82 = alloca { i64, ptr }
  %l84 = alloca { i64, ptr }
  %l85 = alloca ptr
  %l88 = alloca { i64, ptr }
  %l89 = alloca { i64, ptr }
  %l90 = alloca i64
  %l91 = alloca { i64, ptr }
  %l93 = alloca { i64, ptr }
  %l94 = alloca i64
  %l95 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d27, i32 0, i32 1) })
  store i1 %t3, ptr %l8
  br label %bb1
bb1:
  %t4 = load i1, ptr %l8, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  %t5 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t5, ptr %l10, !tbaa !27
  %t6 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t6, 0
  store i64 %t9, ptr %l13, !tbaa !24
  %t10 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t10, 0
  store i64 %t11, ptr %l14, !tbaa !24
  %t12 = icmp sge i64 2, 0
  br i1 %t12, label %bb4, label %bb5
bb3:
  %t14 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t16 = extractvalue { i64, ptr } %t14, 1
  %t17 = extractvalue { i64, ptr } %t14, 0
  %t18 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t17)
  call void @olang_textcopy(ptr %t18, ptr %t16, i64 %t17)
  %t19 = insertvalue { i64, ptr } undef, i64 %t17, 0
  %t20 = insertvalue { i64, ptr } %t19, ptr %t18, 1
  store { i64, ptr } %t20, ptr %l9, !tbaa !27
  br label %bb10
bb4:
  %t22 = load i64, ptr %l13, !tbaa !24
  %t23 = icmp sle i64 2, %t22
  br i1 %t23, label %bb6, label %bb7
bb5:
  call void @__olang_check_failed(ptr @olang_loc_31552f310cf75527_9d9c34da119f96fb)
  unreachable
bb6:
  %t25 = load i64, ptr %l13, !tbaa !24
  %t26 = load i64, ptr %l14, !tbaa !24
  %t27 = icmp sle i64 %t25, %t26
  br i1 %t27, label %bb8, label %bb9
bb7:
  call void @__olang_check_failed(ptr @olang_loc_31552f310cf75527_9d9c34da119f96fb)
  unreachable
bb8:
  %t29 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !27
  %t31 = load i64, ptr %l13, !tbaa !24
  %t32 = getelementptr i8, ptr %t30, i64 2
  %t33 = sub i64 %t31, 2
  %t34 = insertvalue { i64, ptr } undef, i64 %t33, 0
  %t35 = insertvalue { i64, ptr } %t34, ptr %t32, 1
  %t36 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d28, i32 0, i32 1) }, 1
  %t37 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d28, i32 0, i32 1) }, 0
  %t39 = extractvalue { i64, ptr } %t35, 1
  %t40 = extractvalue { i64, ptr } %t35, 0
  %t41 = add i64 %t37, %t40
  %t42 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d29, i32 0, i32 1) }, 1
  %t43 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d29, i32 0, i32 1) }, 0
  %t44 = add i64 %t41, %t43
  %t45 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t44)
  call void @olang_textcopy(ptr %t45, ptr %t36, i64 %t37)
  %t46 = getelementptr i8, ptr %t45, i64 %t37
  call void @olang_textcopy(ptr %t46, ptr %t39, i64 %t40)
  %t47 = getelementptr i8, ptr %t46, i64 %t40
  call void @olang_textcopy(ptr %t47, ptr %t42, i64 %t43)
  %t48 = insertvalue { i64, ptr } undef, i64 %t44, 0
  %t49 = insertvalue { i64, ptr } %t48, ptr %t45, 1
  %t51 = extractvalue { i64, ptr } %t49, 1
  %t52 = extractvalue { i64, ptr } %t49, 0
  %t53 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t52)
  call void @olang_textcopy(ptr %t53, ptr %t51, i64 %t52)
  %t54 = insertvalue { i64, ptr } undef, i64 %t52, 0
  %t55 = insertvalue { i64, ptr } %t54, ptr %t53, 1
  store { i64, ptr } %t55, ptr %l9, !tbaa !27
  br label %bb10
bb9:
  call void @__olang_check_failed(ptr @olang_loc_31552f310cf75527_9d9c34da119f96fb)
  unreachable
bb10:
  %t57 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t57, ptr %l1, !tbaa !27
  %t58 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t60 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %s0, ptr %s0, { i64, ptr } %t58, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d30, i32 0, i32 1) })
  store i1 %t60, ptr %l24
  br label %bb11
bb11:
  %t61 = load i1, ptr %l24, !tbaa !21
  br i1 %t61, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l25, !tbaa !21
  br label %bb15
bb13:
  %t62 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t64 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %s0, ptr %s0, { i64, ptr } %t62, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d31, i32 0, i32 1) })
  store i1 %t64, ptr %l27
  br label %bb14
bb14:
  %t65 = load i1, ptr %l27, !tbaa !21
  store i1 %t65, ptr %l25, !tbaa !21
  br label %bb15
bb15:
  %t66 = load i1, ptr %l25, !tbaa !21
  br i1 %t66, label %bb16, label %bb17
bb16:
  store { i64, ptr } { i64 54, ptr getelementptr inbounds (<{ i64, [54 x i8] }>, ptr @.d32, i32 0, i32 1) }, ptr %l28, !tbaa !27
  %t67 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t67, ptr %l29, !tbaa !27
  %t68 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t69 = extractvalue { i64, ptr } %t68, 0
  store i64 %t69, ptr %l30, !tbaa !24
  %t70 = load i64, ptr %l30, !tbaa !24
  %t71 = mul i64 %t70, 1
  %t72 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t71)
  %t73 = insertvalue { i64, ptr } undef, i64 %t70, 0
  %t74 = insertvalue { i64, ptr } %t73, ptr %t72, 1
  store { i64, ptr } %t74, ptr %l31, !tbaa !27
  %t75 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !27
  %t77 = getelementptr { i64, ptr }, ptr %l29, i32 0, i32 1
  %t78 = load ptr, ptr %t77, !tbaa !27
  %t79 = load i64, ptr %l30, !tbaa !24
  %t80 = mul i64 %t79, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t76, ptr %t78, i64 %t80, i1 false)
  %t81 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t81, ptr %l29, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t82 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t82, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  %t83 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t85 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eToC(ptr %s0, ptr %s0, { i64, ptr } %t83)
  store { i64, ptr } %t85, ptr %l33
  br label %bb19
bb19:
  %t86 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t87 = extractvalue { i64, ptr } %t86, 1
  %t88 = extractvalue { i64, ptr } %t86, 0
  %t89 = call ptr @dlopen(ptr %t87, i32 258)
  store ptr %t89, ptr %l34
  br label %bb20
bb20:
  %t90 = load ptr, ptr %l34, !tbaa !29
  %t91 = icmp eq ptr %t90, null
  %t93 = xor i1 %t91, true
  br i1 %t93, label %bb21, label %bb22
bb21:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d33, i32 0, i32 1) }, ptr %l37, !tbaa !27
  %t95 = load { i64, ptr }, ptr %l37, !tbaa !27
  store { i64, ptr } %t95, ptr %l38, !tbaa !27
  %t96 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t97 = extractvalue { i64, ptr } %t96, 0
  store i64 %t97, ptr %l39, !tbaa !24
  %t98 = load i64, ptr %l39, !tbaa !24
  %t99 = mul i64 %t98, 1
  %t100 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t99)
  %t101 = insertvalue { i64, ptr } undef, i64 %t98, 0
  %t102 = insertvalue { i64, ptr } %t101, ptr %t100, 1
  store { i64, ptr } %t102, ptr %l40, !tbaa !27
  %t103 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t104 = load ptr, ptr %t103, !tbaa !27
  %t105 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t106 = load ptr, ptr %t105, !tbaa !27
  %t107 = load i64, ptr %l39, !tbaa !24
  %t108 = mul i64 %t107, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t104, ptr %t106, i64 %t108, i1 false)
  %t109 = load { i64, ptr }, ptr %l40, !tbaa !27
  store { i64, ptr } %t109, ptr %l38, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t110 = load { i64, ptr }, ptr %l38, !tbaa !27
  store { i64, ptr } %t110, ptr %rv
  br label %ret
bb22:
  br label %bb23
bb23:
  %t111 = call ptr @dlerror()
  store ptr %t111, ptr %l41
  br label %bb24
bb24:
  %t112 = load ptr, ptr %l41, !tbaa !29
  store ptr %t112, ptr %l2, !tbaa !29
  %t113 = load ptr, ptr %l2, !tbaa !29
  %t115 = icmp eq ptr %t113, null
  %t117 = xor i1 %t115, true
  br i1 %t117, label %bb25, label %bb26
bb25:
  %t119 = load ptr, ptr %l2, !tbaa !29
  %t121 = call { i64, ptr } @std_2fprelude_2ftext_2eString_2eFromC(ptr %s0, ptr %t119, i64 400)
  store { i64, ptr } %t121, ptr %l47
  br label %bb27
bb26:
  store { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d34, i32 0, i32 1) }, ptr %l45, !tbaa !27
  br label %bb28
bb27:
  %t122 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t123 = extractvalue { i64, ptr } %t122, 0
  %t124 = extractvalue { i64, ptr } %t122, 1
  %t125 = mul i64 %t123, 1
  %t126 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t125)
  call void @llvm.memcpy.p0.p0.i64(ptr %t126, ptr %t124, i64 %t125, i1 false)
  %t127 = insertvalue { i64, ptr } undef, i64 %t123, 0
  %t128 = insertvalue { i64, ptr } %t127, ptr %t126, 1
  store { i64, ptr } %t128, ptr %l45, !tbaa !27
  br label %bb28
bb28:
  %t130 = load { i64, ptr }, ptr %l45, !tbaa !27
  store { i64, ptr } %t130, ptr %l3, !tbaa !27
  %t131 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t133 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %s0, ptr %s0, { i64, ptr } %t131, { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d35, i32 0, i32 1) })
  %t134 = extractvalue { i32, i64 } %t133, 1
  %t135 = extractvalue { i32, i64 } %t133, 0
  store i32 %t135, ptr %l52
  %t136 = icmp ne i32 %t135, 0
  br i1 %t136, label %bb30, label %ok.137, !prof !99
ok.137:
  store i64 %t134, ptr %l51
  br label %bb29
bb29:
  %t138 = load i64, ptr %l51, !tbaa !24
  store i64 %t138, ptr %l49, !tbaa !24
  br label %bb32
bb30:
  br label %bb31
bb31:
  %t139 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t139, ptr %l54, !tbaa !27
  %t141 = load { i64, ptr }, ptr %l54, !tbaa !27
  %t142 = extractvalue { i64, ptr } %t141, 0
  store i64 %t142, ptr %l55, !tbaa !24
  %t143 = load i64, ptr %l55, !tbaa !24
  %t144 = mul i64 %t143, 1
  %t145 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t144)
  %t146 = insertvalue { i64, ptr } undef, i64 %t143, 0
  %t147 = insertvalue { i64, ptr } %t146, ptr %t145, 1
  store { i64, ptr } %t147, ptr %l56, !tbaa !27
  %t148 = getelementptr { i64, ptr }, ptr %l56, i32 0, i32 1
  %t149 = load ptr, ptr %t148, !tbaa !27
  %t150 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t151 = load ptr, ptr %t150, !tbaa !27
  %t152 = load i64, ptr %l55, !tbaa !24
  %t153 = mul i64 %t152, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t149, ptr %t151, i64 %t153, i1 false)
  %t154 = load { i64, ptr }, ptr %l56, !tbaa !27
  store { i64, ptr } %t154, ptr %l54, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t155 = load { i64, ptr }, ptr %l54, !tbaa !27
  store { i64, ptr } %t155, ptr %rv
  br label %ret
bb32:
  %t156 = load i64, ptr %l49, !tbaa !24
  %t157 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t157, ptr %l58, !tbaa !27
  store i64 %t156, ptr %l59, !tbaa !24
  %t159 = load { i64, ptr }, ptr %l58, !tbaa !27
  %t160 = extractvalue { i64, ptr } %t159, 0
  store i64 %t160, ptr %l60, !tbaa !24
  %t161 = icmp sge i64 0, 0
  br i1 %t161, label %bb33, label %bb34
bb33:
  %t163 = load i64, ptr %l59, !tbaa !24
  %t164 = icmp sle i64 0, %t163
  br i1 %t164, label %bb35, label %bb36
bb34:
  call void @__olang_check_failed(ptr @olang_loc_80c555340270d24a_f87cde9b6389147e)
  unreachable
bb35:
  %t166 = load i64, ptr %l59, !tbaa !24
  %t167 = load i64, ptr %l60, !tbaa !24
  %t168 = icmp sle i64 %t166, %t167
  br i1 %t168, label %bb37, label %bb38
bb36:
  call void @__olang_check_failed(ptr @olang_loc_80c555340270d24a_f87cde9b6389147e)
  unreachable
bb37:
  %t170 = getelementptr { i64, ptr }, ptr %l58, i32 0, i32 1
  %t171 = load ptr, ptr %t170, !tbaa !27
  %t172 = load i64, ptr %l59, !tbaa !24
  %t173 = getelementptr i8, ptr %t171, i64 0
  %t174 = sub i64 %t172, 0
  %t175 = insertvalue { i64, ptr } undef, i64 %t174, 0
  %t176 = insertvalue { i64, ptr } %t175, ptr %t173, 1
  %t178 = call { i32, { i64, ptr } } @std_2fos_2eReadFile(ptr %s0, ptr %s0, { i64, ptr } %t176)
  %t179 = extractvalue { i32, { i64, ptr } } %t178, 1
  %t180 = extractvalue { i32, { i64, ptr } } %t178, 0
  store i32 %t180, ptr %l66
  %t181 = icmp ne i32 %t180, 0
  br i1 %t181, label %bb40, label %ok.182, !prof !99
ok.182:
  store { i64, ptr } %t179, ptr %l65
  br label %bb39
bb38:
  call void @__olang_check_failed(ptr @olang_loc_80c555340270d24a_f87cde9b6389147e)
  unreachable
bb39:
  %t183 = load { i64, ptr }, ptr %l65, !tbaa !27
  store { i64, ptr } %t183, ptr %l57, !tbaa !27
  br label %bb44
bb40:
  %t184 = load i32, ptr %l66, !tbaa !23
  %t185 = ashr i32 %t184, 16
  %t187 = icmp eq i32 %t185, 1
  store i1 %t187, ptr %l68, !tbaa !21
  %t188 = load i32, ptr %l66, !tbaa !23
  %t189 = ashr i32 %t188, 16
  %t191 = icmp eq i32 %t189, 1
  br i1 %t191, label %bb41, label %bb42
bb41:
  call void @__olang_errpay_pop()
  br label %bb42
bb42:
  br label %bb43
bb43:
  %t193 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t193, ptr %l72, !tbaa !27
  %t195 = load { i64, ptr }, ptr %l72, !tbaa !27
  %t196 = extractvalue { i64, ptr } %t195, 0
  store i64 %t196, ptr %l73, !tbaa !24
  %t197 = load i64, ptr %l73, !tbaa !24
  %t198 = mul i64 %t197, 1
  %t199 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t198)
  %t200 = insertvalue { i64, ptr } undef, i64 %t197, 0
  %t201 = insertvalue { i64, ptr } %t200, ptr %t199, 1
  store { i64, ptr } %t201, ptr %l74, !tbaa !27
  %t202 = getelementptr { i64, ptr }, ptr %l74, i32 0, i32 1
  %t203 = load ptr, ptr %t202, !tbaa !27
  %t204 = getelementptr { i64, ptr }, ptr %l72, i32 0, i32 1
  %t205 = load ptr, ptr %t204, !tbaa !27
  %t206 = load i64, ptr %l73, !tbaa !24
  %t207 = mul i64 %t206, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t203, ptr %t205, i64 %t207, i1 false)
  %t208 = load { i64, ptr }, ptr %l74, !tbaa !27
  store { i64, ptr } %t208, ptr %l72, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t209 = load { i64, ptr }, ptr %l72, !tbaa !27
  store { i64, ptr } %t209, ptr %rv
  br label %ret
bb44:
  %t210 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t213 = call { i64, ptr } @compiler_2finterp_2escriptLibrary(ptr %s0, ptr %s0, { i64, ptr } %t210)
  store { i64, ptr } %t213, ptr %l76
  br label %bb45
bb45:
  %t214 = load { i64, ptr }, ptr %l76, !tbaa !27
  store { i64, ptr } %t214, ptr %l6, !tbaa !27
  %t215 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t217 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t215, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d36, i32 0, i32 1) })
  store i1 %t217, ptr %l78
  br label %bb46
bb46:
  %t218 = load i1, ptr %l78, !tbaa !21
  br i1 %t218, label %bb47, label %bb48
bb47:
  %t219 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t219, ptr %l80, !tbaa !27
  %t221 = load { i64, ptr }, ptr %l80, !tbaa !27
  %t222 = extractvalue { i64, ptr } %t221, 0
  store i64 %t222, ptr %l81, !tbaa !24
  %t223 = load i64, ptr %l81, !tbaa !24
  %t224 = mul i64 %t223, 1
  %t225 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t224)
  %t226 = insertvalue { i64, ptr } undef, i64 %t223, 0
  %t227 = insertvalue { i64, ptr } %t226, ptr %t225, 1
  store { i64, ptr } %t227, ptr %l82, !tbaa !27
  %t228 = getelementptr { i64, ptr }, ptr %l82, i32 0, i32 1
  %t229 = load ptr, ptr %t228, !tbaa !27
  %t230 = getelementptr { i64, ptr }, ptr %l80, i32 0, i32 1
  %t231 = load ptr, ptr %t230, !tbaa !27
  %t232 = load i64, ptr %l81, !tbaa !24
  %t233 = mul i64 %t232, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t229, ptr %t231, i64 %t233, i1 false)
  %t234 = load { i64, ptr }, ptr %l82, !tbaa !27
  store { i64, ptr } %t234, ptr %l80, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t235 = load { i64, ptr }, ptr %l80, !tbaa !27
  store { i64, ptr } %t235, ptr %rv
  br label %ret
bb48:
  br label %bb49
bb49:
  %t236 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t238 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eToC(ptr %s0, ptr %s0, { i64, ptr } %t236)
  store { i64, ptr } %t238, ptr %l84
  br label %bb50
bb50:
  %t239 = load { i64, ptr }, ptr %l84, !tbaa !27
  %t240 = extractvalue { i64, ptr } %t239, 1
  %t241 = extractvalue { i64, ptr } %t239, 0
  %t242 = call ptr @dlopen(ptr %t240, i32 258)
  store ptr %t242, ptr %l85
  br label %bb51
bb51:
  %t243 = load ptr, ptr %l85, !tbaa !29
  %t244 = icmp eq ptr %t243, null
  %t246 = xor i1 %t244, true
  br i1 %t246, label %bb52, label %bb53
bb52:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d37, i32 0, i32 1) }, ptr %l88, !tbaa !27
  %t248 = load { i64, ptr }, ptr %l88, !tbaa !27
  store { i64, ptr } %t248, ptr %l89, !tbaa !27
  %t249 = load { i64, ptr }, ptr %l89, !tbaa !27
  %t250 = extractvalue { i64, ptr } %t249, 0
  store i64 %t250, ptr %l90, !tbaa !24
  %t251 = load i64, ptr %l90, !tbaa !24
  %t252 = mul i64 %t251, 1
  %t253 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t252)
  %t254 = insertvalue { i64, ptr } undef, i64 %t251, 0
  %t255 = insertvalue { i64, ptr } %t254, ptr %t253, 1
  store { i64, ptr } %t255, ptr %l91, !tbaa !27
  %t256 = getelementptr { i64, ptr }, ptr %l91, i32 0, i32 1
  %t257 = load ptr, ptr %t256, !tbaa !27
  %t258 = getelementptr { i64, ptr }, ptr %l89, i32 0, i32 1
  %t259 = load ptr, ptr %t258, !tbaa !27
  %t260 = load i64, ptr %l90, !tbaa !24
  %t261 = mul i64 %t260, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t257, ptr %t259, i64 %t261, i1 false)
  %t262 = load { i64, ptr }, ptr %l91, !tbaa !27
  store { i64, ptr } %t262, ptr %l89, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t263 = load { i64, ptr }, ptr %l89, !tbaa !27
  store { i64, ptr } %t263, ptr %rv
  br label %ret
bb53:
  br label %bb54
bb54:
  %t264 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t264, ptr %l93, !tbaa !27
  %t266 = load { i64, ptr }, ptr %l93, !tbaa !27
  %t267 = extractvalue { i64, ptr } %t266, 0
  store i64 %t267, ptr %l94, !tbaa !24
  %t268 = load i64, ptr %l94, !tbaa !24
  %t269 = mul i64 %t268, 1
  %t270 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t269)
  %t271 = insertvalue { i64, ptr } undef, i64 %t268, 0
  %t272 = insertvalue { i64, ptr } %t271, ptr %t270, 1
  store { i64, ptr } %t272, ptr %l95, !tbaa !27
  %t273 = getelementptr { i64, ptr }, ptr %l95, i32 0, i32 1
  %t274 = load ptr, ptr %t273, !tbaa !27
  %t275 = getelementptr { i64, ptr }, ptr %l93, i32 0, i32 1
  %t276 = load ptr, ptr %t275, !tbaa !27
  %t277 = load i64, ptr %l94, !tbaa !24
  %t278 = mul i64 %t277, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t274, ptr %t276, i64 %t278, i1 false)
  %t279 = load { i64, ptr }, ptr %l95, !tbaa !27
  store { i64, ptr } %t279, ptr %l93, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t280 = load { i64, ptr }, ptr %l93, !tbaa !27
  store { i64, ptr } %t280, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2finterp_2eStopText(ptr %v0, ptr %v1, ptr %v2, { i64, [5 x i64] } %a0, ptr %a1) #0 {
entry:
  %l0 = alloca { i64, [5 x i64] }
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca %"compiler/source:Span"
  %l13 = alloca { i64, ptr }
  %l14 = alloca { i64, ptr }
  %l15 = alloca i64
  %l16 = alloca { i64, ptr }
  %l29 = alloca { i64, ptr }
  %l35 = alloca { i64, ptr }
  %l43 = alloca i1
  %l47 = alloca i1
  %l52 = alloca { i64, ptr }
  %l56 = alloca i1
  %l60 = alloca { i64, ptr }
  %l66 = alloca { i64, ptr }
  %l78 = alloca { i64, ptr }
  %s4 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %s16 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, [5 x i64] } %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [5 x i64] }, ptr %l0
  %t3 = extractvalue { i64, [5 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 0
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %bb3
bb2:
  br label %bb4
bb3:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d38, i32 0, i32 1) }, ptr %l13, !tbaa !27
  %t6 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t6, ptr %l14, !tbaa !27
  %t7 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t7, 0
  store i64 %t8, ptr %l15, !tbaa !24
  %t9 = load i64, ptr %l15, !tbaa !24
  %t10 = mul i64 %t9, 1
  %t11 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t10)
  %t12 = insertvalue { i64, ptr } undef, i64 %t9, 0
  %t13 = insertvalue { i64, ptr } %t12, ptr %t11, 1
  store { i64, ptr } %t13, ptr %l16, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !27
  %t18 = load i64, ptr %l15, !tbaa !24
  %t19 = mul i64 %t18, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t15, ptr %t17, i64 %t19, i1 false)
  %t20 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t20, ptr %l14, !tbaa !27
  %t21 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t21, ptr %rv
  br label %ret
bb4:
  %t22 = load { i64, [5 x i64] }, ptr %l0
  %t24 = extractvalue { i64, [5 x i64] } %t22, 0
  %t25 = icmp eq i64 %t24, 1
  br i1 %t25, label %bb5, label %bb6
bb5:
  %t27 = getelementptr { i64, [5 x i64] }, ptr %l0, i32 0, i32 1
  %t28 = getelementptr { i64 }, ptr %t27, i32 0, i32 0
  %t29 = load i64, ptr %t28
  store i64 %t29, ptr %l2, !tbaa !24
  br label %bb7
bb6:
  br label %bb8
bb7:
  %t31 = load i64, ptr %l2, !tbaa !24
  %t32 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d39, i32 0, i32 1) }, 1
  %t33 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d39, i32 0, i32 1) }, 0
  %t35 = call i64 @__olang_fmt_i64(ptr null, i64 %t31)
  %t36 = add i64 %t33, %t35
  %t37 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t36)
  call void @olang_textcopy(ptr %t37, ptr %t32, i64 %t33)
  %t38 = getelementptr i8, ptr %t37, i64 %t33
  %t39 = call i64 @__olang_fmt_i64(ptr %t38, i64 %t31)
  %t40 = insertvalue { i64, ptr } undef, i64 %t36, 0
  %t41 = insertvalue { i64, ptr } %t40, ptr %t37, 1
  store { i64, ptr } %t41, ptr %rv
  br label %ret
bb8:
  %t43 = load { i64, [5 x i64] }, ptr %l0
  %t45 = extractvalue { i64, [5 x i64] } %t43, 0
  %t46 = icmp eq i64 %t45, 2
  br i1 %t46, label %bb9, label %bb10
bb9:
  %t48 = getelementptr { i64, [5 x i64] }, ptr %l0, i32 0, i32 1
  %t49 = getelementptr { i32, i64, %"compiler/source:Span", { i64, ptr } }, ptr %t48, i32 0, i32 0
  %t50 = load i32, ptr %t49, !range !{i32 0, i32 20}
  store i32 %t50, ptr %l3
  %t52 = getelementptr { i64, [5 x i64] }, ptr %l0, i32 0, i32 1
  %t53 = getelementptr { i32, i64, %"compiler/source:Span", { i64, ptr } }, ptr %t52, i32 0, i32 1
  %t54 = load i64, ptr %t53
  store i64 %t54, ptr %l4, !tbaa !24
  %t56 = getelementptr { i64, [5 x i64] }, ptr %l0, i32 0, i32 1
  %t57 = getelementptr { i32, i64, %"compiler/source:Span", { i64, ptr } }, ptr %t56, i32 0, i32 2
  %t58 = load %"compiler/source:Span", ptr %t57
  store %"compiler/source:Span" %t58, ptr %l5
  %t60 = getelementptr { i64, [5 x i64] }, ptr %l0, i32 0, i32 1
  %t61 = getelementptr { i32, i64, %"compiler/source:Span", { i64, ptr } }, ptr %t60, i32 0, i32 3
  %t62 = load { i64, ptr }, ptr %t61
  store { i64, ptr } %t62, ptr %l6, !tbaa !27
  br label %bb11
bb10:
  br label %bb35
bb11:
  store %olang.scope zeroinitializer, ptr %s4
  %t64 = load i32, ptr %l3, !range !{i32 0, i32 20}
  %t66 = call { i64, ptr } @compiler_2fmir_2eExitText(ptr %s4, i32 %t64)
  store { i64, ptr } %t66, ptr %l29
  br label %bb12
bb12:
  %t67 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t67, ptr %l7, !tbaa !27
  %t68 = load i32, ptr %l3, !range !{i32 0, i32 20}
  %t70 = trunc i64 14 to i32
  %t71 = icmp eq i32 %t68, %t70
  br i1 %t71, label %bb13, label %bb14
bb13:
  store %olang.scope zeroinitializer, ptr %s5
  %t73 = load ptr, ptr %l1, !tbaa !29
  %t74 = load i64, ptr %l4, !tbaa !24
  %t75 = load %"compiler/source:Span", ptr %l5
  %t79 = call { i64, ptr } @compiler_2finterp_2eline(ptr %v1, ptr %s5, ptr %t73, i64 %t74, %"compiler/source:Span" %t75)
  store { i64, ptr } %t79, ptr %l35
  br label %bb15
bb14:
  br label %bb16
bb15:
  %t80 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t81 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t82 = extractvalue { i64, ptr } %t81, 1
  %t83 = extractvalue { i64, ptr } %t81, 0
  %t84 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d40, i32 0, i32 1) }, 1
  %t85 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d40, i32 0, i32 1) }, 0
  %t86 = add i64 %t83, %t85
  %t88 = extractvalue { i64, ptr } %t80, 1
  %t89 = extractvalue { i64, ptr } %t80, 0
  %t90 = add i64 %t86, %t89
  %t91 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t90)
  call void @olang_textcopy(ptr %t91, ptr %t82, i64 %t83)
  %t92 = getelementptr i8, ptr %t91, i64 %t83
  call void @olang_textcopy(ptr %t92, ptr %t84, i64 %t85)
  %t93 = getelementptr i8, ptr %t92, i64 %t85
  call void @olang_textcopy(ptr %t93, ptr %t88, i64 %t89)
  %t94 = insertvalue { i64, ptr } undef, i64 %t90, 0
  %t95 = insertvalue { i64, ptr } %t94, ptr %t91, 1
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s4)
  store { i64, ptr } %t95, ptr %rv
  br label %ret
bb16:
  %t97 = load i32, ptr %l3, !range !{i32 0, i32 20}
  %t99 = trunc i64 6 to i32
  %t100 = icmp eq i32 %t97, %t99
  br i1 %t100, label %bb17, label %bb18
bb17:
  %t102 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t103 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d41, i32 0, i32 1) }, 1
  %t104 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d41, i32 0, i32 1) }, 0
  %t106 = extractvalue { i64, ptr } %t102, 1
  %t107 = extractvalue { i64, ptr } %t102, 0
  %t108 = add i64 %t104, %t107
  %t109 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t108)
  call void @olang_textcopy(ptr %t109, ptr %t103, i64 %t104)
  %t110 = getelementptr i8, ptr %t109, i64 %t104
  call void @olang_textcopy(ptr %t110, ptr %t106, i64 %t107)
  %t111 = insertvalue { i64, ptr } undef, i64 %t108, 0
  %t112 = insertvalue { i64, ptr } %t111, ptr %t109, 1
  call void @__olang_scope_close(ptr %s4)
  store { i64, ptr } %t112, ptr %rv
  br label %ret
bb18:
  br label %bb19
bb19:
  %t114 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t116 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s4, ptr %s4, { i64, ptr } %t114, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d42, i32 0, i32 1) })
  store i1 %t116, ptr %l43
  br label %bb20
bb20:
  %t117 = load i1, ptr %l43, !tbaa !21
  br i1 %t117, label %bb21, label %bb22
bb21:
  %t118 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t120 = extractvalue { i64, ptr } %t118, 1
  %t121 = extractvalue { i64, ptr } %t118, 0
  %t122 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t121)
  call void @olang_textcopy(ptr %t122, ptr %t120, i64 %t121)
  %t123 = insertvalue { i64, ptr } undef, i64 %t121, 0
  %t124 = insertvalue { i64, ptr } %t123, ptr %t122, 1
  call void @__olang_scope_close(ptr %s4)
  store { i64, ptr } %t124, ptr %rv
  br label %ret
bb22:
  br label %bb23
bb23:
  %t126 = load i32, ptr %l3, !range !{i32 0, i32 20}
  %t128 = call i1 @compiler_2fmir_2eColumned(i32 %t126)
  store i1 %t128, ptr %l47
  br label %bb24
bb24:
  %t129 = load i1, ptr %l47, !tbaa !21
  br i1 %t129, label %bb25, label %bb26
bb25:
  store %olang.scope zeroinitializer, ptr %s11
  %t130 = load ptr, ptr %l1, !tbaa !29
  %t131 = load i64, ptr %l4, !tbaa !24
  %t132 = getelementptr %"compiler/source:Span", ptr %l5, i32 0, i32 0
  %t133 = load i32, ptr %t132, !tbaa !23
  %t135 = sext i32 %t133 to i64
  %t139 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eLocate(ptr %v1, ptr %s11, ptr %t130, i64 %t131, i64 %t135)
  store { i64, ptr } %t139, ptr %l52
  br label %bb27
bb26:
  br label %bb28
bb27:
  %t140 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t141 = load { i64, ptr }, ptr %l52, !tbaa !27
  %t142 = extractvalue { i64, ptr } %t141, 1
  %t143 = extractvalue { i64, ptr } %t141, 0
  %t144 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d43, i32 0, i32 1) }, 1
  %t145 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d43, i32 0, i32 1) }, 0
  %t146 = add i64 %t143, %t145
  %t148 = extractvalue { i64, ptr } %t140, 1
  %t149 = extractvalue { i64, ptr } %t140, 0
  %t150 = add i64 %t146, %t149
  %t151 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t150)
  call void @olang_textcopy(ptr %t151, ptr %t142, i64 %t143)
  %t152 = getelementptr i8, ptr %t151, i64 %t143
  call void @olang_textcopy(ptr %t152, ptr %t144, i64 %t145)
  %t153 = getelementptr i8, ptr %t152, i64 %t145
  call void @olang_textcopy(ptr %t153, ptr %t148, i64 %t149)
  %t154 = insertvalue { i64, ptr } undef, i64 %t150, 0
  %t155 = insertvalue { i64, ptr } %t154, ptr %t151, 1
  call void @__olang_scope_close(ptr %s11)
  call void @__olang_scope_close(ptr %s4)
  store { i64, ptr } %t155, ptr %rv
  br label %ret
bb28:
  %t157 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t159 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s4, { i64, ptr } %t157, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d44, i32 0, i32 1) })
  store i1 %t159, ptr %l56
  br label %bb29
bb29:
  %t160 = load i1, ptr %l56, !tbaa !21
  br i1 %t160, label %bb30, label %bb31
bb30:
  store %olang.scope zeroinitializer, ptr %s13
  %t161 = load ptr, ptr %l1, !tbaa !29
  %t162 = load i64, ptr %l4, !tbaa !24
  %t163 = load %"compiler/source:Span", ptr %l5
  %t167 = call { i64, ptr } @compiler_2finterp_2eline(ptr %v1, ptr %s13, ptr %t161, i64 %t162, %"compiler/source:Span" %t163)
  store { i64, ptr } %t167, ptr %l60
  br label %bb32
bb31:
  br label %bb33
bb32:
  %t168 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t169 = load { i64, ptr }, ptr %l60, !tbaa !27
  %t170 = extractvalue { i64, ptr } %t169, 1
  %t171 = extractvalue { i64, ptr } %t169, 0
  %t172 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d45, i32 0, i32 1) }, 1
  %t173 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d45, i32 0, i32 1) }, 0
  %t174 = add i64 %t171, %t173
  %t176 = extractvalue { i64, ptr } %t168, 1
  %t177 = extractvalue { i64, ptr } %t168, 0
  %t178 = add i64 %t174, %t177
  %t179 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t178)
  call void @olang_textcopy(ptr %t179, ptr %t170, i64 %t171)
  %t180 = getelementptr i8, ptr %t179, i64 %t171
  call void @olang_textcopy(ptr %t180, ptr %t172, i64 %t173)
  %t181 = getelementptr i8, ptr %t180, i64 %t173
  call void @olang_textcopy(ptr %t181, ptr %t176, i64 %t177)
  %t182 = insertvalue { i64, ptr } undef, i64 %t178, 0
  %t183 = insertvalue { i64, ptr } %t182, ptr %t179, 1
  call void @__olang_scope_close(ptr %s13)
  call void @__olang_scope_close(ptr %s4)
  store { i64, ptr } %t183, ptr %rv
  br label %ret
bb33:
  %t185 = load ptr, ptr %l1, !tbaa !29
  %t186 = load i64, ptr %l4, !tbaa !24
  %t187 = load %"compiler/source:Span", ptr %l5
  %t191 = call { i64, ptr } @compiler_2finterp_2eline(ptr %v1, ptr %s4, ptr %t185, i64 %t186, %"compiler/source:Span" %t187)
  store { i64, ptr } %t191, ptr %l66
  br label %bb34
bb34:
  %t192 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t193 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t194 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t195 = extractvalue { i64, ptr } %t194, 1
  %t196 = extractvalue { i64, ptr } %t194, 0
  %t197 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d46, i32 0, i32 1) }, 1
  %t198 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d46, i32 0, i32 1) }, 0
  %t199 = add i64 %t196, %t198
  %t201 = extractvalue { i64, ptr } %t192, 1
  %t202 = extractvalue { i64, ptr } %t192, 0
  %t203 = add i64 %t199, %t202
  %t204 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d46, i32 0, i32 1) }, 1
  %t205 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d46, i32 0, i32 1) }, 0
  %t206 = add i64 %t203, %t205
  %t208 = extractvalue { i64, ptr } %t193, 1
  %t209 = extractvalue { i64, ptr } %t193, 0
  %t210 = add i64 %t206, %t209
  %t211 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t210)
  call void @olang_textcopy(ptr %t211, ptr %t195, i64 %t196)
  %t212 = getelementptr i8, ptr %t211, i64 %t196
  call void @olang_textcopy(ptr %t212, ptr %t197, i64 %t198)
  %t213 = getelementptr i8, ptr %t212, i64 %t198
  call void @olang_textcopy(ptr %t213, ptr %t201, i64 %t202)
  %t214 = getelementptr i8, ptr %t213, i64 %t202
  call void @olang_textcopy(ptr %t214, ptr %t204, i64 %t205)
  %t215 = getelementptr i8, ptr %t214, i64 %t205
  call void @olang_textcopy(ptr %t215, ptr %t208, i64 %t209)
  %t216 = insertvalue { i64, ptr } undef, i64 %t210, 0
  %t217 = insertvalue { i64, ptr } %t216, ptr %t211, 1
  call void @__olang_scope_close(ptr %s4)
  store { i64, ptr } %t217, ptr %rv
  br label %ret
bb35:
  %t219 = load { i64, [5 x i64] }, ptr %l0
  %t221 = extractvalue { i64, [5 x i64] } %t219, 0
  %t222 = icmp eq i64 %t221, 3
  br i1 %t222, label %bb36, label %bb37
bb36:
  %t224 = getelementptr { i64, [5 x i64] }, ptr %l0, i32 0, i32 1
  %t225 = getelementptr { { i64, ptr }, i64, %"compiler/source:Span" }, ptr %t224, i32 0, i32 0
  %t226 = load { i64, ptr }, ptr %t225
  store { i64, ptr } %t226, ptr %l8, !tbaa !27
  %t228 = getelementptr { i64, [5 x i64] }, ptr %l0, i32 0, i32 1
  %t229 = getelementptr { { i64, ptr }, i64, %"compiler/source:Span" }, ptr %t228, i32 0, i32 1
  %t230 = load i64, ptr %t229
  store i64 %t230, ptr %l9, !tbaa !24
  %t232 = getelementptr { i64, [5 x i64] }, ptr %l0, i32 0, i32 1
  %t233 = getelementptr { { i64, ptr }, i64, %"compiler/source:Span" }, ptr %t232, i32 0, i32 2
  %t234 = load %"compiler/source:Span", ptr %t233
  store %"compiler/source:Span" %t234, ptr %l10
  br label %bb38
bb37:
  br label %bb40
bb38:
  store %olang.scope zeroinitializer, ptr %s16
  %t236 = load ptr, ptr %l1, !tbaa !29
  %t237 = load i64, ptr %l9, !tbaa !24
  %t238 = load %"compiler/source:Span", ptr %l10
  %t242 = call { i64, ptr } @compiler_2finterp_2eline(ptr %v1, ptr %s16, ptr %t236, i64 %t237, %"compiler/source:Span" %t238)
  store { i64, ptr } %t242, ptr %l78
  br label %bb39
bb39:
  %t243 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t244 = load { i64, ptr }, ptr %l78, !tbaa !27
  %t245 = extractvalue { i64, ptr } %t244, 1
  %t246 = extractvalue { i64, ptr } %t244, 0
  %t247 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d47, i32 0, i32 1) }, 1
  %t248 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d47, i32 0, i32 1) }, 0
  %t249 = add i64 %t246, %t248
  %t251 = extractvalue { i64, ptr } %t243, 1
  %t252 = extractvalue { i64, ptr } %t243, 0
  %t253 = add i64 %t249, %t252
  %t254 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t253)
  call void @olang_textcopy(ptr %t254, ptr %t245, i64 %t246)
  %t255 = getelementptr i8, ptr %t254, i64 %t246
  call void @olang_textcopy(ptr %t255, ptr %t247, i64 %t248)
  %t256 = getelementptr i8, ptr %t255, i64 %t248
  call void @olang_textcopy(ptr %t256, ptr %t251, i64 %t252)
  %t257 = insertvalue { i64, ptr } undef, i64 %t253, 0
  %t258 = insertvalue { i64, ptr } %t257, ptr %t254, 1
  call void @__olang_scope_close(ptr %s16)
  store { i64, ptr } %t258, ptr %rv
  br label %ret
bb40:
  call void @__olang_check_failed(ptr @olang_loc_5ef8759083cc657e_8312724bf589cc02)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local %"compiler/interp:chained" @compiler_2finterp_2echained_2echain(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, i64 %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca %"compiler/source:Span"
  %l9 = alloca { i64, [3 x i64] }
  %l10 = alloca i64
  %l11 = alloca { i64, [5 x i64] }
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca %"compiler/source:Span"
  %l15 = alloca i32
  %l16 = alloca i64
  %l17 = alloca %"compiler/source:Span"
  %l27 = alloca ptr
  %l41 = alloca %"compiler/source:Span"
  %l48 = alloca ptr
  %l49 = alloca i64
  %l55 = alloca i64
  %l59 = alloca %"compiler/interp:chained"
  %l62 = alloca { i64, [5 x i64] }
  %l70 = alloca i64
  %l72 = alloca { i64, ptr }
  %l76 = alloca { i64, ptr }
  %l80 = alloca %"compiler/interp:chained"
  %l86 = alloca i64
  %l89 = alloca { i64, ptr }
  %l93 = alloca { i64, ptr }
  %l97 = alloca %"compiler/interp:chained"
  %l101 = alloca %"compiler/interp:chained"
  %l103 = alloca i1
  %l106 = alloca %"compiler/interp:chained"
  %l116 = alloca i64
  %l120 = alloca %"compiler/interp:chained"
  %l127 = alloca %"compiler/interp:chained"
  %s4 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %rv = alloca %"compiler/interp:chained"
  %t64 = alloca { i64, [3 x i64] }, align 8
  %t300 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 0
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t9 = getelementptr %"compiler/load:Loader", ptr %t7, i32 0, i32 4
  %t10 = load ptr, ptr %t9, !tbaa !29
  store ptr %t10, ptr %l4, !tbaa !29
  %t12 = load ptr, ptr %l1, !tbaa !29
  %t14 = getelementptr %"compiler/check:Checker", ptr %t12, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t17 = getelementptr %"compiler/generic:Program", ptr %t15, i32 0, i32 0
  %t18 = load ptr, ptr %t17, !tbaa !29
  %t20 = getelementptr %"compiler/load:Loader", ptr %t18, i32 0, i32 10
  %t21 = load i64, ptr %l2, !tbaa !24
  %t24 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v1, ptr %v1, ptr %t20, i64 %t21)
  store ptr %t24, ptr %l27
  br label %bb1
bb1:
  %t25 = load ptr, ptr %l27, !tbaa !29
  %t27 = getelementptr %"compiler/load:Module", ptr %t25, i32 0, i32 4
  %t28 = load i64, ptr %t27, !tbaa !24
  store i64 %t28, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  store ptr %a3, ptr %l7, !tbaa !29
  br label %bb2
bb2:
  %t33 = load ptr, ptr %l7, !tbaa !29
  %t35 = icmp eq ptr %t33, null
  %t37 = xor i1 %t35, true
  %t39 = xor i1 %t37, true
  br i1 %t39, label %bb3, label %bb4
bb3:
  br label %bb59
bb4:
  br label %bb5
bb5:
  %t41 = load ptr, ptr %l7, !tbaa !29
  %t43 = getelementptr %"compiler/ast:TopIf", ptr %t41, i32 0, i32 0
  %t44 = load ptr, ptr %t43, !tbaa !29
  %t46 = icmp eq ptr %t44, null
  br i1 %t46, label %bb6, label %bb7
bb6:
  call void @__olang_check_failed(ptr @olang_loc_ba0352a17aee8a03_24304d216386b767)
  unreachable
bb7:
  br label %bb8
bb8:
  %t48 = load ptr, ptr %l7, !tbaa !29
  %t50 = getelementptr %"compiler/ast:TopIf", ptr %t48, i32 0, i32 0
  %t51 = load ptr, ptr %t50, !tbaa !29
  %t53 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %t51)
  store %"compiler/source:Span" %t53, ptr %l41
  br label %bb9
bb9:
  %t54 = load %"compiler/source:Span", ptr %l41
  store %"compiler/source:Span" %t54, ptr %l8
  %t55 = load i64, ptr %l5, !tbaa !24
  %t56 = getelementptr %"compiler/source:Span", ptr %l8, i32 0, i32 0
  %t57 = load i32, ptr %t56, !tbaa !23
  %t59 = sext i32 %t57 to i64
  %t60 = getelementptr %"compiler/source:Span", ptr %l8, i32 0, i32 1
  %t61 = load i32, ptr %t60, !tbaa !23
  %t63 = sext i32 %t61 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t64
  %t65 = getelementptr { i64, [3 x i64] }, ptr %t64, i32 0, i32 0
  store i64 3, ptr %t65
  %t67 = insertvalue { i64, i64, i64 } undef, i64 %t55, 0
  %t69 = insertvalue { i64, i64, i64 } %t67, i64 %t59, 1
  %t71 = insertvalue { i64, i64, i64 } %t69, i64 %t63, 2
  %t72 = getelementptr { i64, [3 x i64] }, ptr %t64, i32 0, i32 1
  store { i64, i64, i64 } %t71, ptr %t72
  %t73 = load { i64, [3 x i64] }, ptr %t64
  store { i64, [3 x i64] } %t73, ptr %l9
  %t75 = load ptr, ptr %l1, !tbaa !29
  store ptr %t75, ptr %l48, !tbaa !29
  %t76 = load i64, ptr %l2, !tbaa !24
  store i64 %t76, ptr %l49, !tbaa !24
  %t77 = load ptr, ptr %l7, !tbaa !29
  %t79 = getelementptr %"compiler/ast:TopIf", ptr %t77, i32 0, i32 0
  %t80 = load ptr, ptr %t79, !tbaa !29
  %t82 = icmp eq ptr %t80, null
  br i1 %t82, label %bb10, label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_aa3cb25751d43a74_c6dcfb500e269348)
  unreachable
bb11:
  br label %bb12
bb12:
  %t84 = load ptr, ptr %l7, !tbaa !29
  %t86 = getelementptr %"compiler/ast:TopIf", ptr %t84, i32 0, i32 0
  %t87 = load ptr, ptr %t86, !tbaa !29
  %t88 = load ptr, ptr %l48, !tbaa !29
  %t89 = load i64, ptr %l49, !tbaa !24
  %t91 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eCondBody(ptr %v1, ptr %v2, ptr %t88, i64 %t89, ptr %t87)
  store i64 %t91, ptr %l55
  br label %bb13
bb13:
  %t92 = load i64, ptr %l55, !tbaa !24
  store i64 %t92, ptr %l10, !tbaa !24
  %t93 = load i64, ptr %l10, !tbaa !24
  %t95 = icmp slt i64 %t93, 0
  br i1 %t95, label %bb14, label %bb15
bb14:
  %t97 = load { i64, [3 x i64] }, ptr %l9
  %t99 = call %"compiler/interp:chained" @compiler_2finterp_3achained_2ector(ptr %v3, ptr %v3, i64 0, i1 false, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d48, i32 0, i32 1) }, { i64, [3 x i64] } %t97)
  store %"compiler/interp:chained" %t99, ptr %l59
  br label %bb16
bb15:
  br label %bb17
bb16:
  %t100 = load %"compiler/interp:chained", ptr %l59
  store %"compiler/interp:chained" %t100, ptr %rv
  br label %ret
bb17:
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t102 = load i64, ptr %l10, !tbaa !24
  %t105 = call { i64, [5 x i64] } @compiler_2finterp_2ecompiler_2finterp_3aExec_2eCondStop(ptr %v0, ptr %v0, ptr %t101, i64 %t102)
  store { i64, [5 x i64] } %t105, ptr %l62
  br label %bb18
bb18:
  %t106 = load { i64, [5 x i64] }, ptr %l62
  store { i64, [5 x i64] } %t106, ptr %l11
  %t107 = load { i64, [5 x i64] }, ptr %l11
  %t109 = extractvalue { i64, [5 x i64] } %t107, 0
  %t110 = icmp eq i64 %t109, 0
  br i1 %t110, label %bb19, label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb22
bb21:
  br label %bb45
bb22:
  %t112 = load { i64, [5 x i64] }, ptr %l11
  %t114 = extractvalue { i64, [5 x i64] } %t112, 0
  %t115 = icmp eq i64 %t114, 3
  br i1 %t115, label %bb23, label %bb24
bb23:
  %t117 = getelementptr { i64, [5 x i64] }, ptr %l11, i32 0, i32 1
  %t118 = getelementptr { { i64, ptr }, i64, %"compiler/source:Span" }, ptr %t117, i32 0, i32 0
  %t119 = load { i64, ptr }, ptr %t118
  store { i64, ptr } %t119, ptr %l12, !tbaa !27
  %t121 = getelementptr { i64, [5 x i64] }, ptr %l11, i32 0, i32 1
  %t122 = getelementptr { { i64, ptr }, i64, %"compiler/source:Span" }, ptr %t121, i32 0, i32 1
  %t123 = load i64, ptr %t122
  store i64 %t123, ptr %l13, !tbaa !24
  %t125 = getelementptr { i64, [5 x i64] }, ptr %l11, i32 0, i32 1
  %t126 = getelementptr { { i64, ptr }, i64, %"compiler/source:Span" }, ptr %t125, i32 0, i32 2
  %t127 = load %"compiler/source:Span", ptr %t126
  store %"compiler/source:Span" %t127, ptr %l14
  br label %bb25
bb24:
  br label %bb30
bb25:
  store %olang.scope zeroinitializer, ptr %s4
  %t129 = ptrtoint ptr %v3 to i64
  store i64 %t129, ptr %l70, !tbaa !24
  %t130 = load i1, ptr @olang_2esole_2ecompiler_2finterp_3achained_2e2
  br i1 %t130, label %bb26, label %bb27
bb26:
  %t132 = call ptr @__olang_region_make(ptr %v3)
  %t133 = ptrtoint ptr %t132 to i64
  store i64 %t133, ptr %l70, !tbaa !24
  br label %bb27
bb27:
  %t134 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t134, ptr %l72, !tbaa !27
  %t135 = load ptr, ptr %l4, !tbaa !29
  %t136 = load i64, ptr %l13, !tbaa !24
  %t137 = load %"compiler/source:Span", ptr %l14
  %t141 = call { i64, ptr } @compiler_2finterp_2eline(ptr %v1, ptr %s4, ptr %t135, i64 %t136, %"compiler/source:Span" %t137)
  store { i64, ptr } %t141, ptr %l76
  br label %bb28
bb28:
  %t142 = load { i64, ptr }, ptr %l72, !tbaa !27
  %t143 = extractvalue { i64, ptr } %t142, 1
  %t144 = extractvalue { i64, ptr } %t142, 0
  %t145 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d49, i32 0, i32 1) }, 1
  %t146 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d49, i32 0, i32 1) }, 0
  %t147 = add i64 %t144, %t146
  %t148 = load { i64, ptr }, ptr %l76, !tbaa !27
  %t149 = extractvalue { i64, ptr } %t148, 1
  %t150 = extractvalue { i64, ptr } %t148, 0
  %t151 = add i64 %t147, %t150
  %t152 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d50, i32 0, i32 1) }, 1
  %t153 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d50, i32 0, i32 1) }, 0
  %t154 = add i64 %t151, %t153
  %t155 = load i64, ptr %l70
  %t156 = inttoptr i64 %t155 to ptr
  %t157 = call ptr @__olang_scope_alloc(ptr %t156, i64 %t154)
  call void @olang_textcopy(ptr %t157, ptr %t143, i64 %t144)
  %t158 = getelementptr i8, ptr %t157, i64 %t144
  call void @olang_textcopy(ptr %t158, ptr %t145, i64 %t146)
  %t159 = getelementptr i8, ptr %t158, i64 %t146
  call void @olang_textcopy(ptr %t159, ptr %t149, i64 %t150)
  %t160 = getelementptr i8, ptr %t159, i64 %t150
  call void @olang_textcopy(ptr %t160, ptr %t152, i64 %t153)
  %t161 = insertvalue { i64, ptr } undef, i64 %t154, 0
  %t162 = insertvalue { i64, ptr } %t161, ptr %t157, 1
  %t164 = load i64, ptr %l70
  %t165 = inttoptr i64 %t164 to ptr
  %t166 = extractvalue { i64, ptr } %t162, 0
  %t167 = extractvalue { i64, ptr } %t162, 1
  %t168 = mul i64 %t166, 1
  %t169 = call ptr @__olang_scope_alloc(ptr %t165, i64 %t168)
  call void @llvm.memcpy.p0.p0.i64(ptr %t169, ptr %t167, i64 %t168, i1 false)
  %t170 = insertvalue { i64, ptr } undef, i64 %t166, 0
  %t171 = insertvalue { i64, ptr } %t170, ptr %t169, 1
  %t172 = load { i64, [3 x i64] }, ptr %l9
  %t175 = call %"compiler/interp:chained" @compiler_2finterp_3achained_2ector(ptr %v3, ptr %v3, i64 0, i1 false, { i64, ptr } %t171, { i64, [3 x i64] } %t172)
  store %"compiler/interp:chained" %t175, ptr %l80
  br label %bb29
bb29:
  call void @__olang_scope_close(ptr %s4)
  %t176 = load %"compiler/interp:chained", ptr %l80
  store %"compiler/interp:chained" %t176, ptr %rv
  br label %ret
bb30:
  %t177 = load { i64, [5 x i64] }, ptr %l11
  %t179 = extractvalue { i64, [5 x i64] } %t177, 0
  %t180 = icmp eq i64 %t179, 2
  br i1 %t180, label %bb31, label %bb32
bb31:
  %t182 = getelementptr { i64, [5 x i64] }, ptr %l11, i32 0, i32 1
  %t183 = getelementptr { i32, i64, %"compiler/source:Span", { i64, ptr } }, ptr %t182, i32 0, i32 0
  %t184 = load i32, ptr %t183, !range !{i32 0, i32 20}
  store i32 %t184, ptr %l15
  %t186 = getelementptr { i64, [5 x i64] }, ptr %l11, i32 0, i32 1
  %t187 = getelementptr { i32, i64, %"compiler/source:Span", { i64, ptr } }, ptr %t186, i32 0, i32 1
  %t188 = load i64, ptr %t187
  store i64 %t188, ptr %l16, !tbaa !24
  %t190 = getelementptr { i64, [5 x i64] }, ptr %l11, i32 0, i32 1
  %t191 = getelementptr { i32, i64, %"compiler/source:Span", { i64, ptr } }, ptr %t190, i32 0, i32 2
  %t192 = load %"compiler/source:Span", ptr %t191
  store %"compiler/source:Span" %t192, ptr %l17
  br label %bb33
bb32:
  br label %bb39
bb33:
  store %olang.scope zeroinitializer, ptr %s6
  %t194 = ptrtoint ptr %v3 to i64
  store i64 %t194, ptr %l86, !tbaa !24
  %t195 = load i1, ptr @olang_2esole_2ecompiler_2finterp_3achained_2e2
  br i1 %t195, label %bb34, label %bb35
bb34:
  %t197 = call ptr @__olang_region_make(ptr %v3)
  %t198 = ptrtoint ptr %t197 to i64
  store i64 %t198, ptr %l86, !tbaa !24
  br label %bb35
bb35:
  %t199 = load i32, ptr %l15, !range !{i32 0, i32 20}
  %t201 = call { i64, ptr } @compiler_2finterp_2eAbortWhy(ptr %s6, i32 %t199)
  store { i64, ptr } %t201, ptr %l89
  br label %bb36
bb36:
  %t202 = load ptr, ptr %l4, !tbaa !29
  %t203 = load i64, ptr %l16, !tbaa !24
  %t204 = load %"compiler/source:Span", ptr %l17
  %t208 = call { i64, ptr } @compiler_2finterp_2eline(ptr %v1, ptr %s6, ptr %t202, i64 %t203, %"compiler/source:Span" %t204)
  store { i64, ptr } %t208, ptr %l93
  br label %bb37
bb37:
  %t209 = load { i64, ptr }, ptr %l89, !tbaa !27
  %t210 = extractvalue { i64, ptr } %t209, 1
  %t211 = extractvalue { i64, ptr } %t209, 0
  %t212 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d51, i32 0, i32 1) }, 1
  %t213 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d51, i32 0, i32 1) }, 0
  %t214 = add i64 %t211, %t213
  %t215 = load { i64, ptr }, ptr %l93, !tbaa !27
  %t216 = extractvalue { i64, ptr } %t215, 1
  %t217 = extractvalue { i64, ptr } %t215, 0
  %t218 = add i64 %t214, %t217
  %t219 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d52, i32 0, i32 1) }, 1
  %t220 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d52, i32 0, i32 1) }, 0
  %t221 = add i64 %t218, %t220
  %t222 = load i64, ptr %l86
  %t223 = inttoptr i64 %t222 to ptr
  %t224 = call ptr @__olang_scope_alloc(ptr %t223, i64 %t221)
  call void @olang_textcopy(ptr %t224, ptr %t210, i64 %t211)
  %t225 = getelementptr i8, ptr %t224, i64 %t211
  call void @olang_textcopy(ptr %t225, ptr %t212, i64 %t213)
  %t226 = getelementptr i8, ptr %t225, i64 %t213
  call void @olang_textcopy(ptr %t226, ptr %t216, i64 %t217)
  %t227 = getelementptr i8, ptr %t226, i64 %t217
  call void @olang_textcopy(ptr %t227, ptr %t219, i64 %t220)
  %t228 = insertvalue { i64, ptr } undef, i64 %t221, 0
  %t229 = insertvalue { i64, ptr } %t228, ptr %t224, 1
  %t231 = load i64, ptr %l86
  %t232 = inttoptr i64 %t231 to ptr
  %t233 = extractvalue { i64, ptr } %t229, 0
  %t234 = extractvalue { i64, ptr } %t229, 1
  %t235 = mul i64 %t233, 1
  %t236 = call ptr @__olang_scope_alloc(ptr %t232, i64 %t235)
  call void @llvm.memcpy.p0.p0.i64(ptr %t236, ptr %t234, i64 %t235, i1 false)
  %t237 = insertvalue { i64, ptr } undef, i64 %t233, 0
  %t238 = insertvalue { i64, ptr } %t237, ptr %t236, 1
  %t239 = load { i64, [3 x i64] }, ptr %l9
  %t242 = call %"compiler/interp:chained" @compiler_2finterp_3achained_2ector(ptr %v3, ptr %v3, i64 0, i1 false, { i64, ptr } %t238, { i64, [3 x i64] } %t239)
  store %"compiler/interp:chained" %t242, ptr %l97
  br label %bb38
bb38:
  call void @__olang_scope_close(ptr %s6)
  %t243 = load %"compiler/interp:chained", ptr %l97
  store %"compiler/interp:chained" %t243, ptr %rv
  br label %ret
bb39:
  %t244 = load { i64, [5 x i64] }, ptr %l11
  %t246 = extractvalue { i64, [5 x i64] } %t244, 0
  %t247 = icmp eq i64 %t246, 1
  br i1 %t247, label %bb40, label %bb41
bb40:
  br label %bb42
bb41:
  br label %bb44
bb42:
  %t249 = load { i64, [3 x i64] }, ptr %l9
  %t251 = call %"compiler/interp:chained" @compiler_2finterp_3achained_2ector(ptr %v3, ptr %v3, i64 0, i1 false, { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d53, i32 0, i32 1) }, { i64, [3 x i64] } %t249)
  store %"compiler/interp:chained" %t251, ptr %l101
  br label %bb43
bb43:
  %t252 = load %"compiler/interp:chained", ptr %l101
  store %"compiler/interp:chained" %t252, ptr %rv
  br label %ret
bb44:
  call void @__olang_check_failed(ptr @olang_loc_ea77dd63fedcf2a0_9e0f4ee5a7bf3444)
  unreachable
bb45:
  %t253 = load ptr, ptr %l0, !tbaa !29
  %t255 = call i1 @compiler_2finterp_2ecompiler_2finterp_3aExec_2eHeld(ptr %v0, ptr %t253)
  store i1 %t255, ptr %l103
  br label %bb46
bb46:
  %t256 = load i1, ptr %l103, !tbaa !21
  br i1 %t256, label %bb47, label %bb48
bb47:
  %t257 = load i64, ptr %l6, !tbaa !24
  %t258 = load { i64, [3 x i64] }, ptr %l9
  %t261 = call %"compiler/interp:chained" @compiler_2finterp_3achained_2ector(ptr %v3, ptr %v3, i64 %t257, i1 true, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d54, i32 0, i32 1) }, { i64, [3 x i64] } %t258)
  store %"compiler/interp:chained" %t261, ptr %l106
  br label %bb49
bb48:
  br label %bb50
bb49:
  %t262 = load %"compiler/interp:chained", ptr %l106
  store %"compiler/interp:chained" %t262, ptr %rv
  br label %ret
bb50:
  %t263 = load i64, ptr %l6, !tbaa !24
  %t265 = add i64 %t263, 1
  store i64 %t265, ptr %l6, !tbaa !24
  %t267 = load ptr, ptr %l7, !tbaa !29
  %t269 = getelementptr %"compiler/ast:TopIf", ptr %t267, i32 0, i32 2
  %t270 = load ptr, ptr %t269, !tbaa !29
  %t272 = icmp eq ptr %t270, null
  br i1 %t272, label %bb51, label %bb52
bb51:
  %t274 = load ptr, ptr %l7, !tbaa !29
  %t276 = getelementptr %"compiler/ast:TopIf", ptr %t274, i32 0, i32 3
  %t277 = load ptr, ptr %t276, !tbaa !29
  %t279 = icmp eq ptr %t277, null
  %t281 = xor i1 %t279, true
  br i1 %t281, label %bb53, label %bb54
bb52:
  br label %bb57
bb53:
  %t283 = load i64, ptr %l6, !tbaa !24
  store i64 %t283, ptr %l116, !tbaa !24
  br label %bb55
bb54:
  %t285 = load i64, ptr @G_2ecompiler_2fload_2eNoBranch, !tbaa !24
  store i64 %t285, ptr %l116, !tbaa !24
  br label %bb55
bb55:
  %t287 = load { i64, [3 x i64] }, ptr %l9
  %t288 = load i64, ptr %l116, !tbaa !24
  %t290 = call %"compiler/interp:chained" @compiler_2finterp_3achained_2ector(ptr %v3, ptr %v3, i64 %t288, i1 true, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d55, i32 0, i32 1) }, { i64, [3 x i64] } %t287)
  store %"compiler/interp:chained" %t290, ptr %l120
  br label %bb56
bb56:
  %t291 = load %"compiler/interp:chained", ptr %l120
  store %"compiler/interp:chained" %t291, ptr %rv
  br label %ret
bb57:
  %t292 = load ptr, ptr %l7, !tbaa !29
  %t294 = getelementptr %"compiler/ast:TopIf", ptr %t292, i32 0, i32 2
  %t295 = load ptr, ptr %t294, !tbaa !29
  store ptr %t295, ptr %l7, !tbaa !29
  br label %bb58
bb58:
  br label %bb2
bb59:
  %t298 = load i64, ptr @G_2ecompiler_2fload_2eNoBranch, !tbaa !24
  %t299 = load i64, ptr %l5, !tbaa !24
  store { i64, [3 x i64] } zeroinitializer, ptr %t300
  %t301 = getelementptr { i64, [3 x i64] }, ptr %t300, i32 0, i32 0
  store i64 3, ptr %t301
  %t303 = insertvalue { i64, i64, i64 } undef, i64 %t299, 0
  %t304 = insertvalue { i64, i64, i64 } %t303, i64 0, 1
  %t305 = insertvalue { i64, i64, i64 } %t304, i64 0, 2
  %t306 = getelementptr { i64, [3 x i64] }, ptr %t300, i32 0, i32 1
  store { i64, i64, i64 } %t305, ptr %t306
  %t307 = load { i64, [3 x i64] }, ptr %t300
  %t310 = call %"compiler/interp:chained" @compiler_2finterp_3achained_2ector(ptr %v3, ptr %v3, i64 %t298, i1 true, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d56, i32 0, i32 1) }, { i64, [3 x i64] } %t307)
  store %"compiler/interp:chained" %t310, ptr %l127
  br label %bb60
bb60:
  %t311 = load %"compiler/interp:chained", ptr %l127
  store %"compiler/interp:chained" %t311, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/interp:chained", ptr %rv
  ret %"compiler/interp:chained" %rr
}

define dso_local { i32, i1 } @compiler_2finterp_2ecompiler_2finterp_3aExec_2eCond(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca { i64, [5 x i64] }
  %l14 = alloca i64
  %rv = alloca { i32, i1 }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call { i64, [5 x i64] } @compiler_2finterp_2ecompiler_2finterp_3aExec_2erun(ptr %v0, ptr %v0, ptr %t1, i64 %a1)
  store { i64, [5 x i64] } %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load { i64, [5 x i64] }, ptr %l4
  %t8 = extractvalue { i64, [5 x i64] } %t6, 0
  %t9 = icmp eq i64 %t8, 0
  %t11 = xor i1 %t9, true
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t14 = insertvalue { i32, i1 } zeroinitializer, i32 65536, 0
  store { i32, i1 } %t14, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/interp:Exec", ptr %t15, i32 0, i32 4
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/interp:Exec", ptr %t18, i32 0, i32 4
  %t21 = getelementptr %"compiler/eval:Machine", ptr %t20, i32 0, i32 18
  %t22 = load %"compiler/eval:Ptr", ptr %t21
  %t23 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t27 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eInt(ptr %v0, ptr %t17, %"compiler/eval:Ptr" %t22, i32 %t23)
  store i64 %t27, ptr %l14
  br label %bb5
bb5:
  %t28 = load i64, ptr %l14, !tbaa !24
  %t29 = icmp ne i64 %t28, 0
  %t31 = insertvalue { i32, i1 } zeroinitializer, i1 %t29, 1
  store { i32, i1 } %t31, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i1 }, ptr %rv
  ret { i32, i1 } %rr
}

define dso_local { i64, [5 x i64] } @compiler_2finterp_2ecompiler_2finterp_3aExec_2eCondStop(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l4 = alloca { i64, [5 x i64] }
  %rv = alloca { i64, [5 x i64] }
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call { i64, [5 x i64] } @compiler_2finterp_2ecompiler_2finterp_3aExec_2erun(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
  store { i64, [5 x i64] } %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load { i64, [5 x i64] }, ptr %l4
  store { i64, [5 x i64] } %t6, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [5 x i64] }, ptr %rv
  ret { i64, [5 x i64] } %rr
}

define dso_local %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @compiler_2finterp_2ecompiler_2finterp_3aExec_2eDropTypes(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %lp2 = alloca ptr
  %l3 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l14 = alloca i32
  %lp15 = alloca ptr
  %l18 = alloca { i64, [2 x i64] }
  %l19 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l24 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l32 = alloca { i64, ptr }
  %l42 = alloca i64
  %l46 = alloca i64
  %l49 = alloca i64
  %l75 = alloca { i64, ptr }
  %l76 = alloca { i64, ptr }
  %l77 = alloca i64
  %l78 = alloca { i64, ptr }
  %l81 = alloca i1
  %l83 = alloca i1
  %l84 = alloca { i64, ptr }
  %l85 = alloca i64
  %l86 = alloca { i64, ptr }
  %l89 = alloca i1
  %l90 = alloca { i64, [2 x i64] }
  %l93 = alloca ptr
  %l94 = alloca i32
  %l95 = alloca i64
  %l99 = alloca i64
  %l100 = alloca i32
  %l101 = alloca { i64, [2 x i64] }
  %l102 = alloca i32
  %s0 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aStr_Haf7c0f13dc6108e0fb33136e3d251799(ptr %v2)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1, ptr %l19
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 72, i64 8)
  store ptr %t2, ptr %lp2
  %t3 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l19
  %t4 = load ptr, ptr %lp2
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t3, ptr %t4
  %t5 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t5, 0
  %t9 = icmp eq i64 %t7, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load ptr, ptr %lp2
  %t12 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t11
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t12, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t14 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20Bool_3e(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t14, ptr %l24
  br label %bb5
bb5:
  %t15 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l24
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t15, ptr %l3
  %t16 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t16, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t18 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t20 = extractvalue { i64, ptr } %t18, 0
  store i64 %t20, ptr %l6, !tbaa !24
  br label %bb6
bb6:
  %t22 = load i64, ptr %l5, !tbaa !24
  %t23 = load i64, ptr %l6, !tbaa !24
  %t26 = icmp slt i64 %t22, %t23
  %t28 = xor i1 %t26, true
  br i1 %t28, label %bb7, label %bb8
bb7:
  br label %bb12
bb8:
  br label %bb9
bb9:
  %t30 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t30, ptr %l32, !tbaa !27
  %t31 = load i64, ptr %l5, !tbaa !24
  %t33 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !27
  %t35 = getelementptr { i64, ptr }, ptr %t34, i64 %t31
  %t36 = load { i64, ptr }, ptr %t35, !tbaa !37
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H2b85ceff512af6e6ca26c554a1c16247(ptr %s0, ptr %v1, ptr %l3, { i64, ptr } %t36, i1 true)
  br label %bb10
bb10:
  br label %bb11
bb11:
  %t41 = load i64, ptr %l5, !tbaa !24
  %t43 = add i64 %t41, 1
  store i64 %t43, ptr %l5, !tbaa !24
  br label %bb6
bb12:
  store i64 0, ptr %l8, !tbaa !24
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/interp:Exec", ptr %t45, i32 0, i32 0
  %t48 = load ptr, ptr %t47, !tbaa !29
  %t50 = getelementptr %"compiler/generic:Program", ptr %t48, i32 0, i32 2
  %t52 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCount(ptr %v0, ptr %t50)
  store i64 %t52, ptr %l42
  br label %bb13
bb13:
  %t53 = load i64, ptr %l42, !tbaa !24
  store i64 %t53, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t54 = load i64, ptr %l9, !tbaa !24
  %t55 = load i64, ptr %l8, !tbaa !24
  %t58 = icmp sgt i64 %t54, %t55
  br i1 %t58, label %bb14, label %bb15
bb14:
  %t60 = load i64, ptr %l10, !tbaa !24
  %t62 = icmp sgt i64 %t60, 0
  br i1 %t62, label %bb16, label %bb17
bb15:
  store i64 0, ptr %l46, !tbaa !24
  br label %bb19
bb16:
  %t64 = load i64, ptr %l9, !tbaa !24
  %t65 = load i64, ptr %l8, !tbaa !24
  %t68 = sub i64 %t64, %t65
  %t69 = load i64, ptr %l10, !tbaa !24
  %t72 = add i64 %t68, %t69
  %t74 = sub i64 %t72, 1
  %t75 = load i64, ptr %l10, !tbaa !24
  %t78 = sdiv i64 %t74, %t75
  store i64 %t78, ptr %l49, !tbaa !24
  br label %bb18
bb17:
  store i64 0, ptr %l49, !tbaa !24
  br label %bb18
bb18:
  %t80 = load i64, ptr %l49, !tbaa !24
  store i64 %t80, ptr %l46, !tbaa !24
  br label %bb19
bb19:
  %t81 = load i64, ptr %l46, !tbaa !24
  store i64 %t81, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  br label %bb20
bb20:
  store %olang.scope zeroinitializer, ptr %s6
  %t82 = load i64, ptr %l12, !tbaa !24
  %t83 = load i64, ptr %l11, !tbaa !24
  %t86 = icmp slt i64 %t82, %t83
  %t88 = xor i1 %t86, true
  br i1 %t88, label %bb21, label %bb22
bb21:
  call void @__olang_scope_close(ptr %s6)
  br label %bb45
bb22:
  br label %bb23
bb23:
  %t90 = load i64, ptr %l8, !tbaa !24
  %t91 = load i64, ptr %l12, !tbaa !24
  %t92 = load i64, ptr %l10, !tbaa !24
  %t95 = mul i64 %t91, %t92
  %t98 = add i64 %t90, %t95
  %t102 = trunc i64 %t98 to i32
  store i32 %t102, ptr %l14, !tbaa !23
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t107 = getelementptr %"compiler/interp:Exec", ptr %t105, i32 0, i32 0
  %t108 = load ptr, ptr %t107, !tbaa !29
  %t110 = getelementptr %"compiler/generic:Program", ptr %t108, i32 0, i32 2
  %t111 = load i32, ptr %l14, !tbaa !23
  %t113 = inttoptr i64 0 to ptr
  %t116 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %v0, ptr %v2, ptr %t113, ptr %t110, i32 %t111)
  store { i64, ptr } %t116, ptr %l75
  br label %bb24
bb24:
  %t117 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t117, ptr %lp15
  %t118 = load { i64, ptr }, ptr %l75, !tbaa !27
  %t119 = load ptr, ptr %lp15
  store { i64, ptr } %t118, ptr %t119, !tbaa !27
  %t120 = load ptr, ptr %lp15
  %t121 = load { i64, ptr }, ptr %t120, !tbaa !27
  store { i64, ptr } %t121, ptr %l76, !tbaa !27
  %t122 = load { i64, ptr }, ptr %l76, !tbaa !27
  %t123 = extractvalue { i64, ptr } %t122, 0
  store i64 %t123, ptr %l77, !tbaa !24
  %t124 = load i64, ptr %l77, !tbaa !24
  %t125 = mul i64 %t124, 1
  %t126 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t125)
  %t127 = insertvalue { i64, ptr } undef, i64 %t124, 0
  %t128 = insertvalue { i64, ptr } %t127, ptr %t126, 1
  store { i64, ptr } %t128, ptr %l78, !tbaa !27
  %t129 = getelementptr { i64, ptr }, ptr %l78, i32 0, i32 1
  %t130 = load ptr, ptr %t129, !tbaa !27
  %t131 = getelementptr { i64, ptr }, ptr %l76, i32 0, i32 1
  %t132 = load ptr, ptr %t131, !tbaa !27
  %t133 = load i64, ptr %l77, !tbaa !24
  %t134 = mul i64 %t133, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t130, ptr %t132, i64 %t134, i1 false)
  %t135 = load { i64, ptr }, ptr %l78, !tbaa !27
  %t139 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6b5ccacad8db807339a3579aa8c82ff8(ptr %s0, ptr %s6, ptr %l3, { i64, ptr } %t135)
  store i1 %t139, ptr %l81
  br label %bb25
bb25:
  %t140 = load i1, ptr %l81, !tbaa !21
  %t141 = xor i1 %t140, true
  br i1 %t141, label %bb26, label %bb27
bb26:
  store i1 true, ptr %l83, !tbaa !21
  br label %bb29
bb27:
  %t143 = load ptr, ptr %lp15
  %t144 = load { i64, ptr }, ptr %t143, !tbaa !27
  store { i64, ptr } %t144, ptr %l84, !tbaa !27
  %t145 = load { i64, ptr }, ptr %l84, !tbaa !27
  %t146 = extractvalue { i64, ptr } %t145, 0
  store i64 %t146, ptr %l85, !tbaa !24
  %t147 = load i64, ptr %l85, !tbaa !24
  %t148 = mul i64 %t147, 1
  %t149 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t148)
  %t150 = insertvalue { i64, ptr } undef, i64 %t147, 0
  %t151 = insertvalue { i64, ptr } %t150, ptr %t149, 1
  store { i64, ptr } %t151, ptr %l86, !tbaa !27
  %t152 = getelementptr { i64, ptr }, ptr %l86, i32 0, i32 1
  %t153 = load ptr, ptr %t152, !tbaa !27
  %t154 = getelementptr { i64, ptr }, ptr %l84, i32 0, i32 1
  %t155 = load ptr, ptr %t154, !tbaa !27
  %t156 = load i64, ptr %l85, !tbaa !24
  %t157 = mul i64 %t156, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t153, ptr %t155, i64 %t157, i1 false)
  %t158 = load { i64, ptr }, ptr %l86, !tbaa !27
  %t159 = load ptr, ptr %lp2
  %t163 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha7fbdf5914790493309c1066f38afbab(ptr %v2, ptr %s6, ptr %t159, { i64, ptr } %t158)
  store i1 %t163, ptr %l89
  br label %bb28
bb28:
  %t164 = load i1, ptr %l89, !tbaa !21
  store i1 %t164, ptr %l83, !tbaa !21
  br label %bb29
bb29:
  %t165 = load i1, ptr %l83, !tbaa !21
  br i1 %t165, label %bb30, label %bb31
bb30:
  call void @__olang_scope_close(ptr %s6)
  br label %bb44
bb31:
  br label %bb32
bb32:
  %t166 = load ptr, ptr %l0, !tbaa !29
  %t168 = getelementptr %"compiler/interp:Exec", ptr %t166, i32 0, i32 0
  %t169 = load ptr, ptr %t168, !tbaa !29
  %t171 = getelementptr %"compiler/generic:Program", ptr %t169, i32 0, i32 2
  store ptr %t171, ptr %l93, !tbaa !29
  %t172 = load i32, ptr %l14, !tbaa !23
  store i32 %t172, ptr %l94, !tbaa !23
  %t173 = load ptr, ptr %l0, !tbaa !29
  %t175 = getelementptr %"compiler/interp:Exec", ptr %t173, i32 0, i32 7
  %t176 = load i32, ptr %l14, !tbaa !23
  %t179 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e__H165e1ff795edcbb725e28dde18fd1dc2(ptr %v0, ptr %t175, i32 %t176)
  %t180 = extractvalue { i32, i64 } %t179, 1
  %t181 = extractvalue { i32, i64 } %t179, 0
  store i32 %t181, ptr %l100
  %t182 = icmp ne i32 %t181, 0
  br i1 %t182, label %bb34, label %ok.183, !prof !99
ok.183:
  store i64 %t180, ptr %l99
  br label %bb33
bb33:
  %t184 = load i64, ptr %l99, !tbaa !24
  store i64 %t184, ptr %l95, !tbaa !24
  br label %bb36
bb34:
  br label %bb35
bb35:
  store i64 -1, ptr %l95, !tbaa !24
  br label %bb36
bb36:
  %t185 = load ptr, ptr %l93, !tbaa !29
  %t186 = load i32, ptr %l94, !tbaa !23
  %t187 = load i64, ptr %l95, !tbaa !24
  %t188 = call { i32, { i64, [2 x i64] } } @compiler_2fmir_2eFnKey_2eDropFn(ptr %v0, ptr %t185, i32 %t186, i64 %t187)
  %t189 = extractvalue { i32, { i64, [2 x i64] } } %t188, 1
  %t190 = extractvalue { i32, { i64, [2 x i64] } } %t188, 0
  store i32 %t190, ptr %l102
  %t191 = icmp ne i32 %t190, 0
  br i1 %t191, label %bb38, label %ok.192, !prof !99
ok.192:
  store { i64, [2 x i64] } %t189, ptr %l101
  br label %bb37
bb37:
  %t193 = load { i64, [2 x i64] }, ptr %l101
  store { i64, [2 x i64] } %t193, ptr %l90
  br label %bb40
bb38:
  br label %bb39
bb39:
  call void @__olang_scope_close(ptr %s6)
  br label %bb44
bb40:
  %t194 = load { i64, [2 x i64] }, ptr %l90
  store { i64, [2 x i64] } %t194, ptr %l18
  %t195 = load ptr, ptr %l0, !tbaa !29
  %t197 = getelementptr %"compiler/interp:Exec", ptr %t195, i32 0, i32 4
  %t198 = load i32, ptr %l14, !tbaa !23
  %t199 = load { i64, [2 x i64] }, ptr %l18
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eDefineDestructor(ptr %v0, ptr %t197, i32 %t198, { i64, [2 x i64] } %t199)
  br label %bb41
bb41:
  %t203 = load ptr, ptr %l0, !tbaa !29
  %t204 = load { i64, [2 x i64] }, ptr %l18
  call void @compiler_2finterp_2ecompiler_2finterp_3aExec_2eNeed(ptr %v0, ptr %t203, { i64, [2 x i64] } %t204)
  br label %bb42
bb42:
  %t207 = load ptr, ptr %lp2
  %t208 = load ptr, ptr %lp15
  %t209 = load { i64, ptr }, ptr %t208, !tbaa !27
  %t210 = load i32, ptr %l14, !tbaa !23
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H2a2651dabff39bd48ba375b4d844fc5d(ptr %v2, ptr %v2, ptr %t207, { i64, ptr } %t209, i32 %t210)
  br label %bb43
bb43:
  call void @__olang_scope_close(ptr %s6)
  br label %bb44
bb44:
  %t214 = load i64, ptr %l12, !tbaa !24
  %t216 = add i64 %t214, 1
  store i64 %t216, ptr %l12, !tbaa !24
  br label %bb20
bb45:
  %t218 = load ptr, ptr %lp2
  %t219 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t218
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t219, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %rv
  ret %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %rr
}

define dso_local { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64 } @compiler_2finterp_2ecompiler_2finterp_3aExec_2eEntries(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %lp1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca { i64, [2 x i64] }
  %l11 = alloca i64
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l18 = alloca i64
  %l22 = alloca i64
  %l25 = alloca i64
  %l47 = alloca ptr
  %l56 = alloca ptr
  %l68 = alloca i64
  %l71 = alloca i1
  %rv = alloca { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64 }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l13
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store ptr %t2, ptr %lp1
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13
  %t4 = load ptr, ptr %lp1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  store i64 -1, ptr %l2, !tbaa !24
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/interp:Exec", ptr %t5, i32 0, i32 0
  %t8 = load ptr, ptr %t7, !tbaa !29
  store ptr %t8, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/interp:Exec", ptr %t10, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t15 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t13)
  store i64 %t15, ptr %l18
  br label %bb2
bb2:
  %t16 = load i64, ptr %l18, !tbaa !24
  store i64 %t16, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t17 = load i64, ptr %l5, !tbaa !24
  %t18 = load i64, ptr %l4, !tbaa !24
  %t21 = icmp sgt i64 %t17, %t18
  br i1 %t21, label %bb3, label %bb4
bb3:
  %t23 = load i64, ptr %l6, !tbaa !24
  %t25 = icmp sgt i64 %t23, 0
  br i1 %t25, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l22, !tbaa !24
  br label %bb8
bb5:
  %t27 = load i64, ptr %l5, !tbaa !24
  %t28 = load i64, ptr %l4, !tbaa !24
  %t31 = sub i64 %t27, %t28
  %t32 = load i64, ptr %l6, !tbaa !24
  %t35 = add i64 %t31, %t32
  %t37 = sub i64 %t35, 1
  %t38 = load i64, ptr %l6, !tbaa !24
  %t41 = sdiv i64 %t37, %t38
  store i64 %t41, ptr %l25, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l25, !tbaa !24
  br label %bb7
bb7:
  %t43 = load i64, ptr %l25, !tbaa !24
  store i64 %t43, ptr %l22, !tbaa !24
  br label %bb8
bb8:
  %t44 = load i64, ptr %l22, !tbaa !24
  store i64 %t44, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb9
bb9:
  %t45 = load i64, ptr %l8, !tbaa !24
  %t46 = load i64, ptr %l7, !tbaa !24
  %t49 = icmp slt i64 %t45, %t46
  %t51 = xor i1 %t49, true
  br i1 %t51, label %bb10, label %bb11
bb10:
  br label %bb38
bb11:
  br label %bb12
bb12:
  %t53 = load i64, ptr %l4, !tbaa !24
  %t54 = load i64, ptr %l8, !tbaa !24
  %t55 = load i64, ptr %l6, !tbaa !24
  %t58 = mul i64 %t54, %t55
  %t61 = add i64 %t53, %t58
  store i64 %t61, ptr %l9, !tbaa !24
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/interp:Exec", ptr %t63, i32 0, i32 1
  %t66 = load ptr, ptr %t65, !tbaa !29
  %t68 = load i64, ptr %l9, !tbaa !24
  %t71 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t66, i64 %t68)
  store ptr %t71, ptr %l47
  br label %bb13
bb13:
  %t72 = load ptr, ptr %l47, !tbaa !29
  %t74 = getelementptr %"compiler/typed:Body", ptr %t72, i32 0, i32 1
  %t75 = load { i64, [2 x i64] }, ptr %t74
  store { i64, [2 x i64] } %t75, ptr %l10
  %t77 = load { i64, [2 x i64] }, ptr %l10
  %t79 = extractvalue { i64, [2 x i64] } %t77, 0
  %t80 = icmp eq i64 %t79, 5
  br i1 %t80, label %bb14, label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb22
bb16:
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t84 = getelementptr %"compiler/interp:Exec", ptr %t82, i32 0, i32 1
  %t85 = load ptr, ptr %t84, !tbaa !29
  %t87 = load i64, ptr %l9, !tbaa !24
  %t90 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t85, i64 %t87)
  store ptr %t90, ptr %l56
  br label %bb17
bb17:
  %t91 = load ptr, ptr %l56, !tbaa !29
  %t93 = getelementptr %"compiler/typed:Body", ptr %t91, i32 0, i32 11
  %t94 = load ptr, ptr %t93, !tbaa !29
  %t96 = icmp eq ptr %t94, null
  %t98 = xor i1 %t96, true
  br i1 %t98, label %bb18, label %bb19
bb18:
  %t100 = load ptr, ptr %lp1
  %t101 = load i64, ptr %l9, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t100, i64 %t101)
  br label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb21
bb21:
  br label %bb36
bb22:
  %t104 = load { i64, [2 x i64] }, ptr %l10
  %t106 = extractvalue { i64, [2 x i64] } %t104, 0
  %t107 = icmp eq i64 %t106, 0
  br i1 %t107, label %bb23, label %bb24
bb23:
  %t109 = getelementptr { i64, [2 x i64] }, ptr %l10, i32 0, i32 1
  %t110 = getelementptr { i64 }, ptr %t109, i32 0, i32 0
  %t111 = load i64, ptr %t110
  store i64 %t111, ptr %l11, !tbaa !24
  br label %bb25
bb24:
  br label %bb31
bb25:
  %t113 = load ptr, ptr %l3, !tbaa !29
  %t114 = load i64, ptr %l11, !tbaa !24
  %t117 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %t113, i64 %t114)
  store i64 %t117, ptr %l68
  br label %bb26
bb26:
  %t118 = load i64, ptr %l68, !tbaa !24
  %t119 = load ptr, ptr %l3, !tbaa !29
  %t123 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsEntry(ptr %v0, ptr %t119, i64 %t118)
  store i1 %t123, ptr %l71
  br label %bb27
bb27:
  %t124 = load i1, ptr %l71, !tbaa !21
  br i1 %t124, label %bb28, label %bb29
bb28:
  %t125 = load i64, ptr %l9, !tbaa !24
  store i64 %t125, ptr %l2, !tbaa !24
  br label %bb30
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
  call void @__olang_check_failed(ptr @olang_loc_5b75817b97c7703f_a9caa4d803bddbab)
  unreachable
bb36:
  br label %bb37
bb37:
  %t127 = load i64, ptr %l8, !tbaa !24
  %t129 = add i64 %t127, 1
  store i64 %t129, ptr %l8, !tbaa !24
  br label %bb9
bb38:
  %t131 = load ptr, ptr %lp1
  %t132 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t131
  %t133 = load i64, ptr %l2, !tbaa !24
  %t135 = insertvalue { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64 } undef, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t132, 0
  %t137 = insertvalue { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64 } %t135, i64 %t133, 1
  store { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64 } %t137, ptr %rv
  br label %ret
ret:
  %rr = load { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64 }, ptr %rv
  ret { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64 } %rr
}

define dso_local i1 @compiler_2finterp_2ecompiler_2finterp_3aExec_2eHeld(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l6 = alloca i64
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/interp:Exec", ptr %t1, i32 0, i32 4
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/interp:Exec", ptr %t4, i32 0, i32 4
  %t7 = getelementptr %"compiler/eval:Machine", ptr %t6, i32 0, i32 18
  %t8 = load %"compiler/eval:Ptr", ptr %t7
  %t9 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t13 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eInt(ptr %v0, ptr %t3, %"compiler/eval:Ptr" %t8, i32 %t9)
  store i64 %t13, ptr %l6
  br label %bb1
bb1:
  %t14 = load i64, ptr %l6, !tbaa !24
  %t15 = icmp ne i64 %t14, 0
  store i1 %t15, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, [5 x i64] } @compiler_2finterp_2ecompiler_2finterp_3aExec_2eInitGlobals(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [5 x i64] }
  %l2 = alloca ptr
  %l3 = alloca i64
  %l5 = alloca { i64, [2 x i64] }
  %l6 = alloca i64
  %l7 = alloca i32
  %l8 = alloca { i64, [5 x i64] }
  %l13 = alloca i64
  %l15 = alloca i64
  %l20 = alloca i64
  %l25 = alloca ptr
  %l36 = alloca { i64, [5 x i64] }
  %l40 = alloca i1
  %rv = alloca { i64, [5 x i64] }
  %t3 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2finterp_2ecompiler_2finterp_3aExec_2estart(ptr %v0, ptr %t1)
  br label %bb1
bb1:
  store { i64, [5 x i64] } zeroinitializer, ptr %t3
  %t4 = getelementptr { i64, [5 x i64] }, ptr %t3, i32 0, i32 0
  store i64 0, ptr %t4
  %t5 = load { i64, [5 x i64] }, ptr %t3
  store { i64, [5 x i64] } %t5, ptr %l1
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/interp:Exec", ptr %t7, i32 0, i32 9
  store ptr %t9, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  %t11 = load i64, ptr %l3, !tbaa !24
  store i64 %t11, ptr %l13, !tbaa !24
  %t12 = load ptr, ptr %l2, !tbaa !29
  %t14 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t12)
  store i64 %t14, ptr %l15
  br label %bb3
bb3:
  %t15 = load i64, ptr %l13, !tbaa !24
  %t16 = load i64, ptr %l15, !tbaa !24
  %t17 = icmp slt i64 %t15, %t16
  %t19 = xor i1 %t17, true
  br i1 %t19, label %bb4, label %bb5
bb4:
  br label %bb26
bb5:
  br label %bb6
bb6:
  %t21 = load ptr, ptr %l2, !tbaa !29
  %t22 = load i64, ptr %l3, !tbaa !24
  %t25 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t21, i64 %t22)
  store i64 %t25, ptr %l20
  br label %bb7
bb7:
  %t26 = load i64, ptr %l20, !tbaa !24
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/interp:Exec", ptr %t27, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !29
  %t35 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t30, i64 %t26)
  store ptr %t35, ptr %l25
  br label %bb8
bb8:
  %t36 = load ptr, ptr %l25, !tbaa !29
  %t38 = getelementptr %"compiler/typed:Body", ptr %t36, i32 0, i32 1
  %t39 = load { i64, [2 x i64] }, ptr %t38
  store { i64, [2 x i64] } %t39, ptr %l5
  %t41 = load { i64, [2 x i64] }, ptr %l5
  %t43 = extractvalue { i64, [2 x i64] } %t41, 0
  %t44 = icmp eq i64 %t43, 6
  br i1 %t44, label %bb9, label %bb10
bb9:
  %t46 = getelementptr { i64, [2 x i64] }, ptr %l5, i32 0, i32 1
  %t47 = getelementptr { i64, i32 }, ptr %t46, i32 0, i32 0
  %t48 = load i64, ptr %t47
  store i64 %t48, ptr %l6, !tbaa !24
  %t50 = getelementptr { i64, [2 x i64] }, ptr %l5, i32 0, i32 1
  %t51 = getelementptr { i64, i32 }, ptr %t50, i32 0, i32 1
  %t52 = load i32, ptr %t51
  store i32 %t52, ptr %l7, !tbaa !23
  br label %bb11
bb10:
  br label %bb19
bb11:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/interp:Exec", ptr %t54, i32 0, i32 4
  %t57 = load i64, ptr %l6, !tbaa !24
  %t58 = load i32, ptr %l7, !tbaa !23
  %t62 = call { i64, [5 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2eInitGlobal(ptr %v0, ptr %v0, ptr %t56, i64 %t57, i32 %t58)
  store { i64, [5 x i64] } %t62, ptr %l36
  br label %bb12
bb12:
  %t63 = load { i64, [5 x i64] }, ptr %l36
  store { i64, [5 x i64] } %t63, ptr %l8
  %t64 = load { i64, [5 x i64] }, ptr %l8
  %t66 = extractvalue { i64, [5 x i64] } %t64, 0
  %t67 = icmp eq i64 %t66, 0
  %t69 = xor i1 %t67, true
  br i1 %t69, label %bb13, label %bb14
bb13:
  %t71 = load { i64, [5 x i64] }, ptr %l1
  %t73 = extractvalue { i64, [5 x i64] } %t71, 0
  %t74 = icmp eq i64 %t73, 0
  store i1 %t74, ptr %l40, !tbaa !21
  br label %bb15
bb14:
  store i1 false, ptr %l40, !tbaa !21
  br label %bb15
bb15:
  %t76 = load i1, ptr %l40, !tbaa !21
  br i1 %t76, label %bb16, label %bb17
bb16:
  %t77 = load { i64, [5 x i64] }, ptr %l8
  store { i64, [5 x i64] } %t77, ptr %l1
  br label %bb18
bb17:
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
  call void @__olang_check_failed(ptr @olang_loc_fce8d31b7e62f371_71870e12b086bddd)
  unreachable
bb24:
  br label %bb25
bb25:
  %t79 = load i64, ptr %l3, !tbaa !24
  %t81 = add i64 %t79, 1
  store i64 %t81, ptr %l3, !tbaa !24
  br label %bb2
bb26:
  %t83 = load { i64, [5 x i64] }, ptr %l1
  store { i64, [5 x i64] } %t83, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [5 x i64] }, ptr %rv
  ret { i64, [5 x i64] } %rr
}

define dso_local { i32, i64 } @compiler_2finterp_2ecompiler_2finterp_3aExec_2eInt(ptr %v0, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l5 = alloca { i64, [5 x i64] }
  %l15 = alloca i64
  %rv = alloca { i32, i64 }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call { i64, [5 x i64] } @compiler_2finterp_2ecompiler_2finterp_3aExec_2erun(ptr %v0, ptr %v0, ptr %t1, i64 %a1)
  store { i64, [5 x i64] } %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load { i64, [5 x i64] }, ptr %l5
  %t8 = extractvalue { i64, [5 x i64] } %t6, 0
  %t9 = icmp eq i64 %t8, 0
  %t11 = xor i1 %t9, true
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t14 = insertvalue { i32, i64 } zeroinitializer, i32 65536, 0
  store { i32, i64 } %t14, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/interp:Exec", ptr %t15, i32 0, i32 4
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/interp:Exec", ptr %t18, i32 0, i32 4
  %t21 = getelementptr %"compiler/eval:Machine", ptr %t20, i32 0, i32 18
  %t22 = load %"compiler/eval:Ptr", ptr %t21
  %t27 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eInt(ptr %v0, ptr %t17, %"compiler/eval:Ptr" %t22, i32 %a2)
  store i64 %t27, ptr %l15
  br label %bb5
bb5:
  %t28 = load i64, ptr %l15, !tbaa !24
  %t29 = insertvalue { i32, i64 } zeroinitializer, i64 %t28, 1
  store { i32, i64 } %t29, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i64 }, ptr %rv
  ret { i32, i64 } %rr
}

define dso_local void @compiler_2finterp_2ecompiler_2finterp_3aExec_2eNeed(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca { i64, [2 x i64] }
  %l5 = alloca i32
  %l6 = alloca ptr
  %l8 = alloca i32
  %l10 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l14 = alloca i64
  %l17 = alloca { i64, [2 x i64] }
  %l19 = alloca { i64, [2 x i64] }
  %l20 = alloca i32
  %l24 = alloca i1
  %l31 = alloca i1
  %l34 = alloca i1
  %l40 = alloca i1
  %l48 = alloca ptr
  %l56 = alloca i1
  %l62 = alloca i1
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2finterp_2ecompiler_2finterp_3aExec_2estart(ptr %v0, ptr %t1)
  br label %bb1
bb1:
  %t3 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %l10
  br label %bb2
bb2:
  %t4 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l10
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t4, ptr %l2
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2ePush_3ccompiler_2fmir_3aFnKey_3e(ptr %s0, ptr %l2, { i64, [2 x i64] } %a1)
  br label %bb3
bb3:
  br label %bb4
bb4:
  %t9 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2eLen_3ccompiler_2fmir_3aFnKey_3e(ptr %s0, ptr %l2)
  store i64 %t9, ptr %l14
  br label %bb5
bb5:
  %t10 = load i64, ptr %l14, !tbaa !24
  %t11 = icmp sgt i64 %t10, 0
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb6, label %bb7
bb6:
  br label %bb45
bb7:
  br label %bb8
bb8:
  %t16 = call { i32, { i64, [2 x i64] } } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2ePop_3ccompiler_2fmir_3aFnKey_3e(ptr %s0, ptr %l2)
  %t17 = extractvalue { i32, { i64, [2 x i64] } } %t16, 1
  %t18 = extractvalue { i32, { i64, [2 x i64] } } %t16, 0
  store i32 %t18, ptr %l20
  %t19 = icmp ne i32 %t18, 0
  br i1 %t19, label %bb10, label %ok.20, !prof !99
ok.20:
  store { i64, [2 x i64] } %t17, ptr %l19
  br label %bb9
bb9:
  %t21 = load { i64, [2 x i64] }, ptr %l19
  store { i64, [2 x i64] } %t21, ptr %l17
  br label %bb12
bb10:
  br label %bb11
bb11:
  br label %bb45
bb12:
  %t22 = load { i64, [2 x i64] }, ptr %l17
  store { i64, [2 x i64] } %t22, ptr %l3
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/interp:Exec", ptr %t23, i32 0, i32 6
  %t26 = load { i64, [2 x i64] }, ptr %l3
  %t29 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20Bool_3e_2e_Hf0a5beca6f8aee4731a76bd327ae0a99(ptr %v0, ptr %t25, { i64, [2 x i64] } %t26)
  store i1 %t29, ptr %l24
  br label %bb13
bb13:
  %t30 = load i1, ptr %l24, !tbaa !21
  br i1 %t30, label %bb14, label %bb15
bb14:
  br label %bb44
bb15:
  br label %bb16
bb16:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/interp:Exec", ptr %t31, i32 0, i32 6
  %t34 = load { i64, [2 x i64] }, ptr %l3
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20Bool_3e_2e_He6968003b8dd5762fa82ec44b4ee1fc9(ptr %v0, ptr %t33, { i64, [2 x i64] } %t34, i1 true)
  br label %bb17
bb17:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/interp:Exec", ptr %t37, i32 0, i32 2
  %t40 = load i32, ptr %t39, !range !{i32 0, i32 2}
  %t42 = trunc i64 0 to i32
  %t43 = icmp eq i32 %t40, %t42
  br i1 %t43, label %bb18, label %bb19
bb18:
  %t45 = load { i64, [2 x i64] }, ptr %l3
  %t47 = extractvalue { i64, [2 x i64] } %t45, 0
  %t48 = icmp eq i64 %t47, 0
  store i1 %t48, ptr %l31, !tbaa !21
  br label %bb20
bb19:
  store i1 false, ptr %l31, !tbaa !21
  br label %bb20
bb20:
  %t50 = load i1, ptr %l31, !tbaa !21
  br i1 %t50, label %bb21, label %bb22
bb21:
  %t51 = getelementptr { i64, [2 x i64] }, ptr %l3, i32 0, i32 1
  %t52 = getelementptr { i32 }, ptr %t51, i32 0, i32 0
  %t53 = load i32, ptr %t52
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/interp:Exec", ptr %t55, i32 0, i32 10
  %t60 = sext i32 %t53 to i64
  %t63 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t57, i64 %t60)
  store i1 %t63, ptr %l40
  br label %bb23
bb22:
  store i1 false, ptr %l34, !tbaa !21
  br label %bb24
bb23:
  %t64 = load i1, ptr %l40, !tbaa !21
  store i1 %t64, ptr %l34, !tbaa !21
  br label %bb24
bb24:
  %t65 = load i1, ptr %l34, !tbaa !21
  br i1 %t65, label %bb25, label %bb26
bb25:
  %t66 = getelementptr { i64, [2 x i64] }, ptr %l3, i32 0, i32 1
  %t67 = getelementptr { i32 }, ptr %t66, i32 0, i32 0
  %t68 = load i32, ptr %t67
  store i32 %t68, ptr %l5, !tbaa !23
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/interp:Exec", ptr %t70, i32 0, i32 5
  %t73 = load { i64, [2 x i64] }, ptr %l3
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2ePush_3ccompiler_2fmir_3aFnKey_3e(ptr %v0, ptr %t72, { i64, [2 x i64] } %t73)
  br label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb44
bb28:
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = getelementptr %"compiler/interp:Exec", ptr %t76, i32 0, i32 3
  %t79 = load { i64, [2 x i64] }, ptr %l3
  %t82 = call ptr @compiler_2flower_2ecompiler_2flower_3aLowerer_2eLowerKey(ptr %v0, ptr %v0, ptr %t78, { i64, [2 x i64] } %t79)
  store ptr %t82, ptr %l48
  br label %bb29
bb29:
  %t83 = load ptr, ptr %l48, !tbaa !29
  store ptr %t83, ptr %l6, !tbaa !29
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t86 = getelementptr %"compiler/interp:Exec", ptr %t84, i32 0, i32 3
  %t87 = getelementptr %"compiler/lower:Lowerer", ptr %t86, i32 0, i32 11
  %t88 = load i1, ptr %t87, !tbaa !21
  br i1 %t88, label %bb30, label %bb31
bb30:
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t92 = getelementptr %"compiler/interp:Exec", ptr %t90, i32 0, i32 5
  %t93 = load { i64, [2 x i64] }, ptr %l3
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2ePush_3ccompiler_2fmir_3aFnKey_3e(ptr %v0, ptr %t92, { i64, [2 x i64] } %t93)
  br label %bb32
bb31:
  br label %bb33
bb32:
  br label %bb44
bb33:
  %t96 = load { i64, [2 x i64] }, ptr %l3
  %t98 = extractvalue { i64, [2 x i64] } %t96, 0
  %t99 = icmp eq i64 %t98, 0
  br i1 %t99, label %bb34, label %bb35
bb34:
  %t101 = getelementptr { i64, [2 x i64] }, ptr %l3, i32 0, i32 1
  %t102 = getelementptr { i32 }, ptr %t101, i32 0, i32 0
  %t103 = load i32, ptr %t102
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t107 = getelementptr %"compiler/interp:Exec", ptr %t105, i32 0, i32 11
  %t110 = sext i32 %t103 to i64
  %t113 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t107, i64 %t110)
  store i1 %t113, ptr %l62
  br label %bb36
bb35:
  store i1 false, ptr %l56, !tbaa !21
  br label %bb37
bb36:
  %t114 = load i1, ptr %l62, !tbaa !21
  store i1 %t114, ptr %l56, !tbaa !21
  br label %bb37
bb37:
  %t115 = load i1, ptr %l56, !tbaa !21
  br i1 %t115, label %bb38, label %bb39
bb38:
  %t116 = getelementptr { i64, [2 x i64] }, ptr %l3, i32 0, i32 1
  %t117 = getelementptr { i32 }, ptr %t116, i32 0, i32 0
  %t118 = load i32, ptr %t117
  store i32 %t118, ptr %l8, !tbaa !23
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t122 = getelementptr %"compiler/interp:Exec", ptr %t120, i32 0, i32 4
  %t123 = getelementptr %"compiler/eval:Machine", ptr %t122, i32 0, i32 24
  %t124 = load { i64, [2 x i64] }, ptr %l3
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20Bool_3e_2e_He6968003b8dd5762fa82ec44b4ee1fc9(ptr %v0, ptr %t123, { i64, [2 x i64] } %t124, i1 true)
  br label %bb40
bb39:
  br label %bb41
bb40:
  br label %bb41
bb41:
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t128 = load ptr, ptr %l6, !tbaa !29
  call void @compiler_2finterp_2ecompiler_2finterp_3aExec_2ereach(ptr %v0, ptr %v0, ptr %s0, ptr %t127, ptr %t128, ptr %l2)
  br label %bb42
bb42:
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t134 = getelementptr %"compiler/interp:Exec", ptr %t132, i32 0, i32 4
  %t135 = load ptr, ptr %l6, !tbaa !29
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eDefine(ptr %v0, ptr %v0, ptr %t134, ptr %t135)
  br label %bb43
bb43:
  br label %bb44
bb44:
  br label %bb4
bb45:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2finterp_2ecompiler_2finterp_3aExec_2eRunMain(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64 }
  %l3 = alloca i64
  %l4 = alloca { i64, [2 x i64] }
  %l5 = alloca { i64, [5 x i64] }
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, %"compiler/source:Span" }
  %l8 = alloca i64
  %l9 = alloca %"compiler/source:Span"
  %l10 = alloca i32
  %l12 = alloca { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64 }
  %l24 = alloca { i64, [5 x i64] }
  %l28 = alloca ptr
  %l29 = alloca { i64, [2 x i64] }
  %l33 = alloca { i64, [5 x i64] }
  %l39 = alloca { i64, [5 x i64] }
  %l49 = alloca { i64, ptr }
  %l54 = alloca { i64, ptr }
  %l59 = alloca { i64, [5 x i64] }
  %l68 = alloca { i64, ptr }
  %l73 = alloca i1
  %l76 = alloca { i64, %"compiler/source:Span" }
  %l84 = alloca { i64, ptr }
  %l95 = alloca { i64, ptr }
  %l100 = alloca i1
  %l105 = alloca { i64, ptr }
  %l109 = alloca i32
  %l114 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %rv = alloca i32
  %t17 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64 } @compiler_2finterp_2ecompiler_2finterp_3aExec_2eEntries(ptr %v0, ptr %s0, ptr %t1)
  store { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64 } %t3, ptr %l12
  br label %bb1
bb1:
  %t4 = load { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64 }, ptr %l12
  store { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64 } %t4, ptr %l2
  %t5 = getelementptr { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64 }, ptr %l2, i32 0, i32 1
  %t6 = load i64, ptr %t5, !tbaa !24
  store i64 %t6, ptr %l3, !tbaa !24
  %t8 = load i64, ptr %l3, !tbaa !24
  %t10 = icmp slt i64 %t8, 0
  br i1 %t10, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  call void @compiler_2finterp_2esayErr(ptr %s1, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d57, i32 0, i32 1) })
  br label %bb4
bb3:
  br label %bb5
bb4:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  store i32 1, ptr %rv
  br label %ret
bb5:
  %t13 = load i64, ptr %l3, !tbaa !24
  %t15 = trunc i64 %t13 to i32
  store { i64, [2 x i64] } zeroinitializer, ptr %t17
  %t18 = getelementptr { i64, [2 x i64] }, ptr %t17, i32 0, i32 0
  store i64 0, ptr %t18
  %t20 = insertvalue { i32 } undef, i32 %t15, 0
  %t21 = getelementptr { i64, [2 x i64] }, ptr %t17, i32 0, i32 1
  store { i32 } %t20, ptr %t21
  %t22 = load { i64, [2 x i64] }, ptr %t17
  store { i64, [2 x i64] } %t22, ptr %l4
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t25 = load { i64, [2 x i64] }, ptr %l4
  call void @compiler_2finterp_2ecompiler_2finterp_3aExec_2eNeed(ptr %v0, ptr %t24, { i64, [2 x i64] } %t25)
  br label %bb6
bb6:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = call { i64, [5 x i64] } @compiler_2finterp_2ecompiler_2finterp_3aExec_2eInitGlobals(ptr %v0, ptr %s0, ptr %t28)
  store { i64, [5 x i64] } %t30, ptr %l24
  br label %bb7
bb7:
  %t31 = load { i64, [5 x i64] }, ptr %l24
  store { i64, [5 x i64] } %t31, ptr %l5
  %t32 = load { i64, [5 x i64] }, ptr %l5
  %t34 = extractvalue { i64, [5 x i64] } %t32, 0
  %t35 = icmp eq i64 %t34, 0
  br i1 %t35, label %bb8, label %bb9
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/interp:Exec", ptr %t37, i32 0, i32 4
  store ptr %t39, ptr %l28, !tbaa !29
  %t40 = load { i64, [2 x i64] }, ptr %l4
  store { i64, [2 x i64] } %t40, ptr %l29
  %t41 = icmp sge i64 0, 0
  br i1 %t41, label %bb10, label %bb11
bb9:
  br label %bb15
bb10:
  %t43 = icmp sle i64 0, 1152921504606846975
  br i1 %t43, label %bb12, label %bb13
bb11:
  call void @__olang_check_failed(ptr @olang_loc_c21b7649f9083df0_c859438e5e055394)
  unreachable
bb12:
  %t45 = mul i64 0, 8
  %t46 = insertvalue { i64, ptr } undef, i64 0, 0
  %t47 = insertvalue { i64, ptr } %t46, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t48 = load ptr, ptr %l28, !tbaa !29
  %t49 = load { i64, [2 x i64] }, ptr %l29
  %t51 = call { i64, [5 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2eEval(ptr %v0, ptr %s2, ptr %s0, ptr %t48, { i64, [2 x i64] } %t49, { i64, ptr } %t47)
  store { i64, [5 x i64] } %t51, ptr %l33
  br label %bb14
bb13:
  call void @__olang_check_failed(ptr @olang_loc_c21b7649f9083df0_c859438e5e055394)
  unreachable
bb14:
  %t52 = load { i64, [5 x i64] }, ptr %l33
  store { i64, [5 x i64] } %t52, ptr %l5
  call void @__olang_scope_close(ptr %s2)
  br label %bb15
bb15:
  %t53 = load { i64, [5 x i64] }, ptr %l5
  %t55 = extractvalue { i64, [5 x i64] } %t53, 0
  %t56 = icmp eq i64 %t55, 0
  br i1 %t56, label %bb16, label %bb17
bb16:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/interp:Exec", ptr %t58, i32 0, i32 4
  %t61 = load { i64, [2 x i64] }, ptr %l4
  %t64 = call { i64, [5 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2eEndProgram(ptr %v0, ptr %s0, ptr %t60, { i64, [2 x i64] } %t61)
  store { i64, [5 x i64] } %t64, ptr %l39
  br label %bb18
bb17:
  br label %bb19
bb18:
  %t65 = load { i64, [5 x i64] }, ptr %l39
  store { i64, [5 x i64] } %t65, ptr %l5
  br label %bb19
bb19:
  %t66 = load { i64, [5 x i64] }, ptr %l5
  %t68 = extractvalue { i64, [5 x i64] } %t66, 0
  %t69 = icmp eq i64 %t68, 0
  br i1 %t69, label %bb20, label %bb21
bb20:
  br label %bb22
bb21:
  br label %bb23
bb22:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
bb23:
  %t72 = load { i64, [5 x i64] }, ptr %l5
  %t74 = extractvalue { i64, [5 x i64] } %t72, 0
  %t75 = icmp eq i64 %t74, 1
  br i1 %t75, label %bb24, label %bb25
bb24:
  br label %bb26
bb25:
  br label %bb32
bb26:
  store %olang.scope zeroinitializer, ptr %s5
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t78 = load { i64, [5 x i64] }, ptr %l5
  %t79 = load i64, ptr %l3, !tbaa !24
  %t80 = load ptr, ptr %l1, !tbaa !29
  %t85 = call { i64, ptr } @compiler_2finterp_2ecompiler_2finterp_3aExec_2eStopText(ptr %v0, ptr %s0, ptr %v1, ptr %s5, ptr %t77, { i64, [5 x i64] } %t78, i64 %t79, ptr %t80)
  store { i64, ptr } %t85, ptr %l49
  br label %bb27
bb27:
  %t86 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t87 = extractvalue { i64, ptr } %t86, 1
  %t88 = extractvalue { i64, ptr } %t86, 0
  %t89 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d58, i32 0, i32 1) }, 1
  %t90 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d58, i32 0, i32 1) }, 0
  %t91 = add i64 %t88, %t90
  %t92 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t91)
  call void @olang_textcopy(ptr %t92, ptr %t87, i64 %t88)
  %t93 = getelementptr i8, ptr %t92, i64 %t88
  call void @olang_textcopy(ptr %t93, ptr %t89, i64 %t90)
  %t94 = insertvalue { i64, ptr } undef, i64 %t91, 0
  %t95 = insertvalue { i64, ptr } %t94, ptr %t92, 1
  %t97 = extractvalue { i64, ptr } %t95, 0
  %t98 = extractvalue { i64, ptr } %t95, 1
  %t99 = mul i64 %t97, 1
  %t100 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t99)
  call void @llvm.memcpy.p0.p0.i64(ptr %t100, ptr %t98, i64 %t99, i1 false)
  %t101 = insertvalue { i64, ptr } undef, i64 %t97, 0
  %t102 = insertvalue { i64, ptr } %t101, ptr %t100, 1
  call void @compiler_2finterp_2esayErr(ptr %s5, { i64, ptr } %t102)
  br label %bb28
bb28:
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t105 = load ptr, ptr %l1, !tbaa !29
  %t108 = call { i64, ptr } @compiler_2finterp_2ecompiler_2finterp_3aExec_2eTraceText(ptr %v0, ptr %v1, ptr %s5, ptr %t104, ptr %t105)
  store { i64, ptr } %t108, ptr %l54
  br label %bb29
bb29:
  %t109 = load { i64, ptr }, ptr %l54, !tbaa !27
  %t110 = extractvalue { i64, ptr } %t109, 0
  %t111 = extractvalue { i64, ptr } %t109, 1
  %t112 = mul i64 %t110, 1
  %t113 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t112)
  call void @llvm.memcpy.p0.p0.i64(ptr %t113, ptr %t111, i64 %t112, i1 false)
  %t114 = insertvalue { i64, ptr } undef, i64 %t110, 0
  %t115 = insertvalue { i64, ptr } %t114, ptr %t113, 1
  call void @compiler_2finterp_2esayErr(ptr %s5, { i64, ptr } %t115)
  br label %bb30
bb30:
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t119 = getelementptr %"compiler/interp:Exec", ptr %t117, i32 0, i32 4
  %t120 = load { i64, [2 x i64] }, ptr %l4
  %t123 = call { i64, [5 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2eEndProgram(ptr %v0, ptr %s5, ptr %t119, { i64, [2 x i64] } %t120)
  store { i64, [5 x i64] } %t123, ptr %l59
  br label %bb31
bb31:
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  store i32 1, ptr %rv
  br label %ret
bb32:
  %t125 = load { i64, [5 x i64] }, ptr %l5
  %t127 = extractvalue { i64, [5 x i64] } %t125, 0
  %t128 = icmp eq i64 %t127, 3
  br i1 %t128, label %bb33, label %bb34
bb33:
  %t130 = getelementptr { i64, [5 x i64] }, ptr %l5, i32 0, i32 1
  %t131 = getelementptr { { i64, ptr }, i64, %"compiler/source:Span" }, ptr %t130, i32 0, i32 0
  %t132 = load { i64, ptr }, ptr %t131
  store { i64, ptr } %t132, ptr %l6, !tbaa !27
  br label %bb35
bb34:
  br label %bb48
bb35:
  store %olang.scope zeroinitializer, ptr %s7
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t135 = load { i64, [5 x i64] }, ptr %l5
  %t136 = load i64, ptr %l3, !tbaa !24
  %t137 = load ptr, ptr %l1, !tbaa !29
  %t142 = call { i64, ptr } @compiler_2finterp_2ecompiler_2finterp_3aExec_2eStopText(ptr %v0, ptr %s0, ptr %v1, ptr %s7, ptr %t134, { i64, [5 x i64] } %t135, i64 %t136, ptr %t137)
  store { i64, ptr } %t142, ptr %l68
  br label %bb36
bb36:
  %t143 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d59, i32 0, i32 1) }, 1
  %t144 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d59, i32 0, i32 1) }, 0
  %t145 = load { i64, ptr }, ptr %l68, !tbaa !27
  %t146 = extractvalue { i64, ptr } %t145, 1
  %t147 = extractvalue { i64, ptr } %t145, 0
  %t148 = add i64 %t144, %t147
  %t149 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d60, i32 0, i32 1) }, 1
  %t150 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d60, i32 0, i32 1) }, 0
  %t151 = add i64 %t148, %t150
  %t152 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t151)
  call void @olang_textcopy(ptr %t152, ptr %t143, i64 %t144)
  %t153 = getelementptr i8, ptr %t152, i64 %t144
  call void @olang_textcopy(ptr %t153, ptr %t146, i64 %t147)
  %t154 = getelementptr i8, ptr %t153, i64 %t147
  call void @olang_textcopy(ptr %t154, ptr %t149, i64 %t150)
  %t155 = insertvalue { i64, ptr } undef, i64 %t151, 0
  %t156 = insertvalue { i64, ptr } %t155, ptr %t152, 1
  %t158 = extractvalue { i64, ptr } %t156, 0
  %t159 = extractvalue { i64, ptr } %t156, 1
  %t160 = mul i64 %t158, 1
  %t161 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t160)
  call void @llvm.memcpy.p0.p0.i64(ptr %t161, ptr %t159, i64 %t160, i1 false)
  %t162 = insertvalue { i64, ptr } undef, i64 %t158, 0
  %t163 = insertvalue { i64, ptr } %t162, ptr %t161, 1
  call void @compiler_2finterp_2esayErr(ptr %s7, { i64, ptr } %t163)
  br label %bb37
bb37:
  %t165 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t166 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyStale, !tbaa !27
  %t167 = load ptr, ptr @__olang_prog_scope
  %t170 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %t167, { i64, ptr } %t165, { i64, ptr } %t166)
  store i1 %t170, ptr %l73
  br label %bb38
bb38:
  %t171 = load i1, ptr %l73, !tbaa !21
  br i1 %t171, label %bb39, label %bb40
bb39:
  %t172 = load ptr, ptr %l0, !tbaa !29
  %t174 = getelementptr %"compiler/interp:Exec", ptr %t172, i32 0, i32 4
  %t176 = call { i64, %"compiler/source:Span" } @compiler_2feval_2ecompiler_2feval_3aMachine_2eStaleGrewAt(ptr %v0, ptr %t174)
  store { i64, %"compiler/source:Span" } %t176, ptr %l76
  br label %bb41
bb40:
  br label %bb47
bb41:
  %t177 = load { i64, %"compiler/source:Span" }, ptr %l76
  store { i64, %"compiler/source:Span" } %t177, ptr %l7
  %t178 = getelementptr { i64, %"compiler/source:Span" }, ptr %l7, i32 0, i32 0
  %t179 = load i64, ptr %t178, !tbaa !24
  store i64 %t179, ptr %l8, !tbaa !24
  %t181 = getelementptr { i64, %"compiler/source:Span" }, ptr %l7, i32 0, i32 1
  %t182 = load %"compiler/source:Span", ptr %t181
  store %"compiler/source:Span" %t182, ptr %l9
  %t184 = load i64, ptr %l8, !tbaa !24
  %t186 = icmp sge i64 %t184, 0
  br i1 %t186, label %bb42, label %bb43
bb42:
  store %olang.scope zeroinitializer, ptr %s10
  %t188 = load ptr, ptr %l1, !tbaa !29
  %t189 = load i64, ptr %l8, !tbaa !24
  %t190 = load %"compiler/source:Span", ptr %l9
  %t194 = call { i64, ptr } @compiler_2finterp_2eline(ptr %v1, ptr %s10, ptr %t188, i64 %t189, %"compiler/source:Span" %t190)
  store { i64, ptr } %t194, ptr %l84
  br label %bb44
bb43:
  br label %bb46
bb44:
  %t195 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d61, i32 0, i32 1) }, 1
  %t196 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d61, i32 0, i32 1) }, 0
  %t197 = load { i64, ptr }, ptr %l84, !tbaa !27
  %t198 = extractvalue { i64, ptr } %t197, 1
  %t199 = extractvalue { i64, ptr } %t197, 0
  %t200 = add i64 %t196, %t199
  %t201 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d62, i32 0, i32 1) }, 1
  %t202 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d62, i32 0, i32 1) }, 0
  %t203 = add i64 %t200, %t202
  %t204 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t203)
  call void @olang_textcopy(ptr %t204, ptr %t195, i64 %t196)
  %t205 = getelementptr i8, ptr %t204, i64 %t196
  call void @olang_textcopy(ptr %t205, ptr %t198, i64 %t199)
  %t206 = getelementptr i8, ptr %t205, i64 %t199
  call void @olang_textcopy(ptr %t206, ptr %t201, i64 %t202)
  %t207 = insertvalue { i64, ptr } undef, i64 %t203, 0
  %t208 = insertvalue { i64, ptr } %t207, ptr %t204, 1
  %t210 = extractvalue { i64, ptr } %t208, 0
  %t211 = extractvalue { i64, ptr } %t208, 1
  %t212 = mul i64 %t210, 1
  %t213 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t212)
  call void @llvm.memcpy.p0.p0.i64(ptr %t213, ptr %t211, i64 %t212, i1 false)
  %t214 = insertvalue { i64, ptr } undef, i64 %t210, 0
  %t215 = insertvalue { i64, ptr } %t214, ptr %t213, 1
  call void @compiler_2finterp_2esayErr(ptr %s10, { i64, ptr } %t215)
  br label %bb45
bb45:
  call void @__olang_scope_close(ptr %s10)
  br label %bb46
bb46:
  br label %bb47
bb47:
  call void @__olang_scope_close(ptr %s7)
  call void @__olang_scope_close(ptr %s0)
  store i32 1, ptr %rv
  br label %ret
bb48:
  %t218 = load { i64, [5 x i64] }, ptr %l5
  %t220 = extractvalue { i64, [5 x i64] } %t218, 0
  %t221 = icmp eq i64 %t220, 2
  br i1 %t221, label %bb49, label %bb50
bb49:
  %t223 = getelementptr { i64, [5 x i64] }, ptr %l5, i32 0, i32 1
  %t224 = getelementptr { i32, i64, %"compiler/source:Span", { i64, ptr } }, ptr %t223, i32 0, i32 0
  %t225 = load i32, ptr %t224, !range !{i32 0, i32 20}
  store i32 %t225, ptr %l10
  br label %bb51
bb50:
  br label %bb65
bb51:
  store %olang.scope zeroinitializer, ptr %s12
  %t227 = load ptr, ptr %l0, !tbaa !29
  %t228 = load { i64, [5 x i64] }, ptr %l5
  %t229 = load i64, ptr %l3, !tbaa !24
  %t230 = load ptr, ptr %l1, !tbaa !29
  %t235 = call { i64, ptr } @compiler_2finterp_2ecompiler_2finterp_3aExec_2eStopText(ptr %v0, ptr %s0, ptr %v1, ptr %s12, ptr %t227, { i64, [5 x i64] } %t228, i64 %t229, ptr %t230)
  store { i64, ptr } %t235, ptr %l95
  br label %bb52
bb52:
  %t236 = load { i64, ptr }, ptr %l95, !tbaa !27
  %t237 = extractvalue { i64, ptr } %t236, 1
  %t238 = extractvalue { i64, ptr } %t236, 0
  %t239 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d63, i32 0, i32 1) }, 1
  %t240 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d63, i32 0, i32 1) }, 0
  %t241 = add i64 %t238, %t240
  %t242 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t241)
  call void @olang_textcopy(ptr %t242, ptr %t237, i64 %t238)
  %t243 = getelementptr i8, ptr %t242, i64 %t238
  call void @olang_textcopy(ptr %t243, ptr %t239, i64 %t240)
  %t244 = insertvalue { i64, ptr } undef, i64 %t241, 0
  %t245 = insertvalue { i64, ptr } %t244, ptr %t242, 1
  %t247 = extractvalue { i64, ptr } %t245, 0
  %t248 = extractvalue { i64, ptr } %t245, 1
  %t249 = mul i64 %t247, 1
  %t250 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t249)
  call void @llvm.memcpy.p0.p0.i64(ptr %t250, ptr %t248, i64 %t249, i1 false)
  %t251 = insertvalue { i64, ptr } undef, i64 %t247, 0
  %t252 = insertvalue { i64, ptr } %t251, ptr %t250, 1
  call void @compiler_2finterp_2esayErr(ptr %s12, { i64, ptr } %t252)
  br label %bb53
bb53:
  %t254 = load i32, ptr %l10, !range !{i32 0, i32 20}
  %t256 = trunc i64 14 to i32
  %t257 = icmp eq i32 %t254, %t256
  br i1 %t257, label %bb54, label %bb55
bb54:
  store i1 true, ptr %l100, !tbaa !21
  br label %bb56
bb55:
  %t259 = load i32, ptr %l10, !range !{i32 0, i32 20}
  %t261 = trunc i64 6 to i32
  %t262 = icmp eq i32 %t259, %t261
  store i1 %t262, ptr %l100, !tbaa !21
  br label %bb56
bb56:
  %t264 = load i1, ptr %l100, !tbaa !21
  br i1 %t264, label %bb57, label %bb58
bb57:
  store %olang.scope zeroinitializer, ptr %s14
  %t265 = load ptr, ptr %l0, !tbaa !29
  %t266 = load ptr, ptr %l1, !tbaa !29
  %t269 = call { i64, ptr } @compiler_2finterp_2ecompiler_2finterp_3aExec_2eTraceText(ptr %v0, ptr %v1, ptr %s14, ptr %t265, ptr %t266)
  store { i64, ptr } %t269, ptr %l105
  br label %bb59
bb58:
  br label %bb61
bb59:
  %t270 = load { i64, ptr }, ptr %l105, !tbaa !27
  %t271 = extractvalue { i64, ptr } %t270, 0
  %t272 = extractvalue { i64, ptr } %t270, 1
  %t273 = mul i64 %t271, 1
  %t274 = call ptr @__olang_scope_alloc(ptr %s14, i64 %t273)
  call void @llvm.memcpy.p0.p0.i64(ptr %t274, ptr %t272, i64 %t273, i1 false)
  %t275 = insertvalue { i64, ptr } undef, i64 %t271, 0
  %t276 = insertvalue { i64, ptr } %t275, ptr %t274, 1
  call void @compiler_2finterp_2esayErr(ptr %s14, { i64, ptr } %t276)
  br label %bb60
bb60:
  call void @__olang_scope_close(ptr %s14)
  br label %bb61
bb61:
  %t278 = load i32, ptr %l10, !range !{i32 0, i32 20}
  %t280 = trunc i64 6 to i32
  %t281 = icmp eq i32 %t278, %t280
  br i1 %t281, label %bb62, label %bb63
bb62:
  store i32 1, ptr %l109, !tbaa !23
  br label %bb64
bb63:
  store i32 134, ptr %l109, !tbaa !23
  br label %bb64
bb64:
  call void @__olang_scope_close(ptr %s12)
  call void @__olang_scope_close(ptr %s0)
  %t283 = load i32, ptr %l109, !tbaa !23
  store i32 %t283, ptr %rv
  br label %ret
bb65:
  br i1 true, label %bb66, label %bb67
bb66:
  br label %bb68
bb67:
  br label %bb71
bb68:
  store %olang.scope zeroinitializer, ptr %s15
  %t284 = load ptr, ptr %l0, !tbaa !29
  %t285 = load { i64, [5 x i64] }, ptr %l5
  %t286 = load i64, ptr %l3, !tbaa !24
  %t287 = load ptr, ptr %l1, !tbaa !29
  %t292 = call { i64, ptr } @compiler_2finterp_2ecompiler_2finterp_3aExec_2eStopText(ptr %v0, ptr %s0, ptr %v1, ptr %s15, ptr %t284, { i64, [5 x i64] } %t285, i64 %t286, ptr %t287)
  store { i64, ptr } %t292, ptr %l114
  br label %bb69
bb69:
  %t293 = load { i64, ptr }, ptr %l114, !tbaa !27
  %t294 = extractvalue { i64, ptr } %t293, 1
  %t295 = extractvalue { i64, ptr } %t293, 0
  %t296 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d64, i32 0, i32 1) }, 1
  %t297 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d64, i32 0, i32 1) }, 0
  %t298 = add i64 %t295, %t297
  %t299 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t298)
  call void @olang_textcopy(ptr %t299, ptr %t294, i64 %t295)
  %t300 = getelementptr i8, ptr %t299, i64 %t295
  call void @olang_textcopy(ptr %t300, ptr %t296, i64 %t297)
  %t301 = insertvalue { i64, ptr } undef, i64 %t298, 0
  %t302 = insertvalue { i64, ptr } %t301, ptr %t299, 1
  %t304 = extractvalue { i64, ptr } %t302, 0
  %t305 = extractvalue { i64, ptr } %t302, 1
  %t306 = mul i64 %t304, 1
  %t307 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t306)
  call void @llvm.memcpy.p0.p0.i64(ptr %t307, ptr %t305, i64 %t306, i1 false)
  %t308 = insertvalue { i64, ptr } undef, i64 %t304, 0
  %t309 = insertvalue { i64, ptr } %t308, ptr %t307, 1
  call void @compiler_2finterp_2esayErr(ptr %s15, { i64, ptr } %t309)
  br label %bb70
bb70:
  call void @__olang_scope_close(ptr %s15)
  call void @__olang_scope_close(ptr %s0)
  store i32 134, ptr %rv
  br label %ret
bb71:
  call void @__olang_check_failed(ptr @olang_loc_736b533d144489ee_c645810c81b1a7fa)
  unreachable
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2finterp_2ecompiler_2finterp_3aExec_2eRunTests(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64 }
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca i64
  %l13 = alloca ptr
  %lp14 = alloca ptr
  %l15 = alloca ptr
  %l16 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca [0 x i64]
  %l21 = alloca ptr
  %l22 = alloca i64
  %l23 = alloca i64
  %lp24 = alloca ptr
  %l25 = alloca { i64, [5 x i64] }
  %l26 = alloca i32
  %l27 = alloca i64
  %l28 = alloca %"compiler/source:Span"
  %l31 = alloca { i64, ptr }
  %l32 = alloca i32
  %l33 = alloca i64
  %l34 = alloca %"compiler/source:Span"
  %l35 = alloca { i64, ptr }
  %l37 = alloca { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64 }
  %l39 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l41 = alloca i64
  %l43 = alloca i64
  %l48 = alloca i64
  %l52 = alloca i1
  %l58 = alloca i64
  %l60 = alloca i1
  %l72 = alloca ptr
  %l74 = alloca i64
  %l76 = alloca i64
  %l81 = alloca i64
  %l83 = alloca { i64, ptr }
  %l88 = alloca ptr
  %l91 = alloca ptr
  %l99 = alloca { i64, ptr }
  %l101 = alloca i1
  %l107 = alloca ptr
  %l108 = alloca i64
  %l110 = alloca ptr
  %l118 = alloca { i64, ptr }
  %l124 = alloca i64
  %l126 = alloca i64
  %l131 = alloca i64
  %l140 = alloca { i64, [5 x i64] }
  %l143 = alloca ptr
  %l144 = alloca i64
  %l154 = alloca ptr
  %l159 = alloca { i64, ptr }
  %l162 = alloca i64
  %l164 = alloca i64
  %l169 = alloca i64
  %l172 = alloca { i64, ptr }
  %l173 = alloca ptr
  %l175 = alloca { i64, ptr }
  %l185 = alloca { i64, [5 x i64] }
  %l189 = alloca i1
  %l196 = alloca { i64, ptr }
  %l209 = alloca i1
  %l216 = alloca { i64, ptr }
  %l217 = alloca { i64, ptr }
  %l220 = alloca { i64, ptr }
  %l224 = alloca { i64, ptr }
  %l230 = alloca { i64, ptr }
  %l231 = alloca ptr
  %l232 = alloca i64
  %l237 = alloca ptr
  %l240 = alloca { i64, ptr }
  %l243 = alloca { i64, ptr }
  %l250 = alloca { i64, ptr }
  %l252 = alloca i1
  %l259 = alloca i1
  %l268 = alloca { i64, ptr }
  %l281 = alloca i32
  %s0 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s16 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %s20 = alloca %olang.scope
  %s22 = alloca %olang.scope
  %s24 = alloca %olang.scope
  %s26 = alloca %olang.scope
  %rv = alloca i32
  %t217 = alloca { i64, [2 x i64] }, align 8
  %t345 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64 } @compiler_2finterp_2ecompiler_2finterp_3aExec_2eEntries(ptr %v0, ptr %s0, ptr %t1)
  store { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64 } %t3, ptr %l37
  br label %bb1
bb1:
  %t4 = load { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64 }, ptr %l37
  store { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64 } %t4, ptr %l3
  %t5 = getelementptr { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64 }, ptr %l3, i32 0, i32 0
  %t6 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %l4
  %t8 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t8, ptr %l39
  br label %bb2
bb2:
  %t9 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l39
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t9, ptr %l5
  store ptr %l4, ptr %l6, !tbaa !29
  store i64 0, ptr %l7, !tbaa !24
  br label %bb3
bb3:
  %t11 = load i64, ptr %l7, !tbaa !24
  store i64 %t11, ptr %l41, !tbaa !24
  %t12 = load ptr, ptr %l6, !tbaa !29
  %t14 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t12)
  store i64 %t14, ptr %l43
  br label %bb4
bb4:
  %t15 = load i64, ptr %l41, !tbaa !24
  %t16 = load i64, ptr %l43, !tbaa !24
  %t17 = icmp slt i64 %t15, %t16
  %t19 = xor i1 %t17, true
  br i1 %t19, label %bb5, label %bb6
bb5:
  br label %bb15
bb6:
  br label %bb7
bb7:
  %t21 = load ptr, ptr %l6, !tbaa !29
  %t22 = load i64, ptr %l7, !tbaa !24
  %t25 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t21, i64 %t22)
  store i64 %t25, ptr %l48
  br label %bb8
bb8:
  %t26 = load i64, ptr %l48, !tbaa !24
  store i64 %t26, ptr %l8, !tbaa !24
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = load i64, ptr %l8, !tbaa !24
  %t29 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t33 = call i1 @compiler_2finterp_2ecompiler_2finterp_3aExec_2eselected(ptr %v0, ptr %v2, ptr %t27, i64 %t28, { i64, ptr } %t29)
  store i1 %t33, ptr %l52
  br label %bb9
bb9:
  %t34 = load i1, ptr %l52, !tbaa !21
  br i1 %t34, label %bb10, label %bb11
bb10:
  %t35 = load i64, ptr %l8, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l5, i64 %t35)
  br label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb13
bb13:
  br label %bb14
bb14:
  %t38 = load i64, ptr %l7, !tbaa !24
  %t40 = add i64 %t38, 1
  store i64 %t40, ptr %l7, !tbaa !24
  br label %bb3
bb15:
  %t43 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l5)
  store i64 %t43, ptr %l58
  br label %bb16
bb16:
  %t44 = load i64, ptr %l58, !tbaa !24
  %t45 = icmp eq i64 %t44, 0
  br i1 %t45, label %bb17, label %bb18
bb17:
  %t47 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t49 = extractvalue { i64, ptr } %t47, 0
  %t51 = icmp sgt i64 %t49, 0
  store i1 %t51, ptr %l60, !tbaa !21
  br label %bb19
bb18:
  store i1 false, ptr %l60, !tbaa !21
  br label %bb19
bb19:
  %t53 = load i1, ptr %l60, !tbaa !21
  br i1 %t53, label %bb20, label %bb21
bb20:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/interp:Exec", ptr %t54, i32 0, i32 0
  %t57 = load ptr, ptr %t56, !tbaa !29
  %t59 = getelementptr %"compiler/generic:Program", ptr %t57, i32 0, i32 0
  %t60 = load ptr, ptr %t59, !tbaa !29
  %t62 = getelementptr %"compiler/load:Loader", ptr %t60, i32 0, i32 10
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/interp:Exec", ptr %t63, i32 0, i32 0
  %t66 = load ptr, ptr %t65, !tbaa !29
  %t68 = getelementptr %"compiler/generic:Program", ptr %t66, i32 0, i32 0
  %t69 = load ptr, ptr %t68, !tbaa !29
  %t71 = getelementptr %"compiler/load:Loader", ptr %t69, i32 0, i32 12
  %t72 = load i64, ptr %t71, !tbaa !24
  %t75 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t62, i64 %t72)
  store ptr %t75, ptr %l72
  br label %bb22
bb21:
  br label %bb49
bb22:
  %t76 = load ptr, ptr %l72, !tbaa !29
  store ptr %t76, ptr %l9, !tbaa !29
  store ptr %l4, ptr %l10, !tbaa !29
  store i64 0, ptr %l11, !tbaa !24
  br label %bb23
bb23:
  store %olang.scope zeroinitializer, ptr %s7
  %t78 = load i64, ptr %l11, !tbaa !24
  store i64 %t78, ptr %l74, !tbaa !24
  %t79 = load ptr, ptr %l10, !tbaa !29
  %t81 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t79)
  store i64 %t81, ptr %l76
  br label %bb24
bb24:
  %t82 = load i64, ptr %l74, !tbaa !24
  %t83 = load i64, ptr %l76, !tbaa !24
  %t84 = icmp slt i64 %t82, %t83
  %t86 = xor i1 %t84, true
  br i1 %t86, label %bb25, label %bb26
bb25:
  call void @__olang_scope_close(ptr %s7)
  br label %bb48
bb26:
  br label %bb27
bb27:
  %t88 = load ptr, ptr %l10, !tbaa !29
  %t89 = load i64, ptr %l11, !tbaa !24
  %t92 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t88, i64 %t89)
  store i64 %t92, ptr %l81
  br label %bb28
bb28:
  %t93 = load i64, ptr %l81, !tbaa !24
  %t94 = load ptr, ptr %l9, !tbaa !29
  %t96 = getelementptr %"compiler/load:Module", ptr %t94, i32 0, i32 8
  %t97 = load { i64, ptr }, ptr %t96, !tbaa !27
  store { i64, ptr } %t97, ptr %l83, !tbaa !27
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t100 = getelementptr %"compiler/interp:Exec", ptr %t98, i32 0, i32 1
  %t101 = load ptr, ptr %t100, !tbaa !29
  %t106 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t101, i64 %t93)
  store ptr %t106, ptr %l88
  br label %bb29
bb29:
  %t107 = load ptr, ptr %l88, !tbaa !29
  %t109 = getelementptr %"compiler/typed:Body", ptr %t107, i32 0, i32 4
  %t110 = load %"compiler/source:Span", ptr %t109
  %t111 = load { i64, ptr }, ptr %l83, !tbaa !27
  %t113 = call ptr @compiler_2fast_2eFindTest(ptr %v0, ptr %v0, { i64, ptr } %t111, %"compiler/source:Span" %t110)
  store ptr %t113, ptr %l91
  br label %bb30
bb30:
  %t114 = load ptr, ptr %l91, !tbaa !29
  store ptr %t114, ptr %l13, !tbaa !29
  %t115 = load ptr, ptr %l13, !tbaa !29
  %t117 = icmp eq ptr %t115, null
  br i1 %t117, label %bb31, label %bb32
bb31:
  call void @__olang_scope_close(ptr %s7)
  br label %bb47
bb32:
  br label %bb33
bb33:
  %t119 = load ptr, ptr %l13, !tbaa !29
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t122 = getelementptr %"compiler/interp:Exec", ptr %t120, i32 0, i32 0
  %t123 = load ptr, ptr %t122, !tbaa !29
  %t125 = getelementptr %"compiler/generic:Program", ptr %t123, i32 0, i32 0
  %t126 = load ptr, ptr %t125, !tbaa !29
  %t128 = getelementptr %"compiler/load:Loader", ptr %t126, i32 0, i32 3
  %t129 = load ptr, ptr %t128, !tbaa !29
  %t132 = call { i64, ptr } @compiler_2fast_2eTestTarget(ptr %v0, ptr %v0, ptr %v0, ptr %t119, ptr %t129)
  store { i64, ptr } %t132, ptr %l99
  br label %bb34
bb34:
  %t133 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 16, i64 8)
  store ptr %t133, ptr %lp14
  %t134 = load { i64, ptr }, ptr %l99, !tbaa !27
  %t135 = load ptr, ptr %lp14
  store { i64, ptr } %t134, ptr %t135, !tbaa !27
  %t136 = load ptr, ptr %lp14
  %t137 = load { i64, ptr }, ptr %t136, !tbaa !27
  %t139 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s7, { i64, ptr } %t137, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d65, i32 0, i32 1) })
  store i1 %t139, ptr %l101
  br label %bb35
bb35:
  %t140 = load i1, ptr %l101, !tbaa !21
  %t141 = xor i1 %t140, true
  br i1 %t141, label %bb36, label %bb37
bb36:
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t145 = getelementptr %"compiler/interp:Exec", ptr %t143, i32 0, i32 12
  %t146 = load ptr, ptr %lp14
  %t147 = load { i64, ptr }, ptr %t146, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t145, { i64, ptr } %t147)
  br label %bb38
bb37:
  br label %bb39
bb38:
  br label %bb39
bb39:
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t152 = getelementptr %"compiler/interp:Exec", ptr %t150, i32 0, i32 12
  store ptr %t152, ptr %l107, !tbaa !29
  %t153 = ptrtoint ptr %v0 to i64
  store i64 %t153, ptr %l108, !tbaa !24
  %t154 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t154, label %bb40, label %bb41
bb40:
  %t156 = call ptr @__olang_region_make(ptr %v0)
  %t157 = ptrtoint ptr %t156 to i64
  store i64 %t157, ptr %l108, !tbaa !24
  br label %bb41
bb41:
  %t158 = load ptr, ptr %l13, !tbaa !29
  store ptr %t158, ptr %l110, !tbaa !29
  %t159 = load ptr, ptr %l9, !tbaa !29
  %t161 = getelementptr %"compiler/load:Module", ptr %t159, i32 0, i32 6
  %t162 = load ptr, ptr %t161, !tbaa !29
  %t164 = icmp eq ptr %t162, null
  br i1 %t164, label %bb42, label %bb43
bb42:
  call void @__olang_check_failed(ptr @olang_loc_edfb88544329c1e0_5f50a381ae60fbc)
  unreachable
bb43:
  br label %bb44
bb44:
  %t166 = load ptr, ptr %l9, !tbaa !29
  %t168 = getelementptr %"compiler/load:Module", ptr %t166, i32 0, i32 6
  %t169 = load ptr, ptr %t168, !tbaa !29
  %t172 = getelementptr %"compiler/source:Source", ptr %t169, i32 0, i32 1
  %t173 = load { i64, ptr }, ptr %t172, !tbaa !27
  %t174 = load i64, ptr %l108
  %t175 = inttoptr i64 %t174 to ptr
  %t176 = load ptr, ptr %l110, !tbaa !29
  %t178 = call { i64, ptr } @compiler_2fast_2eTestDesc(ptr %v0, ptr %v0, ptr %t175, ptr %t176, { i64, ptr } %t173)
  store { i64, ptr } %t178, ptr %l118
  br label %bb45
bb45:
  %t179 = load { i64, ptr }, ptr %l118, !tbaa !27
  %t180 = load i64, ptr %l108
  %t181 = inttoptr i64 %t180 to ptr
  %t182 = extractvalue { i64, ptr } %t179, 0
  %t183 = extractvalue { i64, ptr } %t179, 1
  %t184 = mul i64 %t182, 1
  %t185 = call ptr @__olang_scope_alloc(ptr %t181, i64 %t184)
  call void @llvm.memcpy.p0.p0.i64(ptr %t185, ptr %t183, i64 %t184, i1 false)
  %t186 = insertvalue { i64, ptr } undef, i64 %t182, 0
  %t187 = insertvalue { i64, ptr } %t186, ptr %t185, 1
  %t188 = load ptr, ptr %l107, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t188, { i64, ptr } %t187)
  br label %bb46
bb46:
  call void @__olang_scope_close(ptr %s7)
  br label %bb47
bb47:
  %t190 = load i64, ptr %l11, !tbaa !24
  %t192 = add i64 %t190, 1
  store i64 %t192, ptr %l11, !tbaa !24
  br label %bb23
bb48:
  call void @__olang_scope_close(ptr %s0)
  store i32 3, ptr %rv
  br label %ret
bb49:
  store ptr %l5, ptr %l15, !tbaa !29
  store i64 0, ptr %l16, !tbaa !24
  br label %bb50
bb50:
  %t196 = load i64, ptr %l16, !tbaa !24
  store i64 %t196, ptr %l124, !tbaa !24
  %t197 = load ptr, ptr %l15, !tbaa !29
  %t199 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t197)
  store i64 %t199, ptr %l126
  br label %bb51
bb51:
  %t200 = load i64, ptr %l124, !tbaa !24
  %t201 = load i64, ptr %l126, !tbaa !24
  %t202 = icmp slt i64 %t200, %t201
  %t204 = xor i1 %t202, true
  br i1 %t204, label %bb52, label %bb53
bb52:
  br label %bb58
bb53:
  br label %bb54
bb54:
  %t206 = load ptr, ptr %l15, !tbaa !29
  %t207 = load i64, ptr %l16, !tbaa !24
  %t210 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t206, i64 %t207)
  store i64 %t210, ptr %l131
  br label %bb55
bb55:
  %t211 = load i64, ptr %l131, !tbaa !24
  %t212 = load ptr, ptr %l0, !tbaa !29
  %t215 = trunc i64 %t211 to i32
  store { i64, [2 x i64] } zeroinitializer, ptr %t217
  %t218 = getelementptr { i64, [2 x i64] }, ptr %t217, i32 0, i32 0
  store i64 0, ptr %t218
  %t220 = insertvalue { i32 } undef, i32 %t215, 0
  %t221 = getelementptr { i64, [2 x i64] }, ptr %t217, i32 0, i32 1
  store { i32 } %t220, ptr %t221
  %t222 = load { i64, [2 x i64] }, ptr %t217
  call void @compiler_2finterp_2ecompiler_2finterp_3aExec_2eNeed(ptr %v0, ptr %t212, { i64, [2 x i64] } %t222)
  br label %bb56
bb56:
  br label %bb57
bb57:
  %t225 = load i64, ptr %l16, !tbaa !24
  %t227 = add i64 %t225, 1
  store i64 %t227, ptr %l16, !tbaa !24
  br label %bb50
bb58:
  %t229 = load ptr, ptr %l0, !tbaa !29
  %t231 = call { i64, [5 x i64] } @compiler_2finterp_2ecompiler_2finterp_3aExec_2eInitGlobals(ptr %v0, ptr %s0, ptr %t229)
  store { i64, [5 x i64] } %t231, ptr %l140
  br label %bb59
bb59:
  %t232 = load ptr, ptr %l0, !tbaa !29
  %t234 = getelementptr %"compiler/interp:Exec", ptr %t232, i32 0, i32 4
  %t235 = getelementptr %"compiler/eval:Machine", ptr %t234, i32 0, i32 86
  store i1 true, ptr %t235, !tbaa !21
  store i64 0, ptr %l18, !tbaa !24
  store i64 0, ptr %l19, !tbaa !24
  store [0 x i64] zeroinitializer, ptr %l20
  %t237 = load ptr, ptr %l0, !tbaa !29
  store ptr %t237, ptr %l143, !tbaa !29
  %t238 = ptrtoint ptr %v0 to i64
  store i64 %t238, ptr %l144, !tbaa !24
  %t239 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e83
  br i1 %t239, label %bb60, label %bb61
bb60:
  %t241 = call ptr @__olang_region_make(ptr %v0)
  %t242 = ptrtoint ptr %t241 to i64
  store i64 %t242, ptr %l144, !tbaa !24
  br label %bb61
bb61:
  %t243 = load ptr, ptr %l0, !tbaa !29
  %t245 = getelementptr %"compiler/interp:Exec", ptr %t243, i32 0, i32 0
  %t246 = load ptr, ptr %t245, !tbaa !29
  %t248 = getelementptr %"compiler/generic:Program", ptr %t246, i32 0, i32 0
  %t249 = load ptr, ptr %t248, !tbaa !29
  %t251 = getelementptr %"compiler/load:Loader", ptr %t249, i32 0, i32 10
  %t252 = load ptr, ptr %l0, !tbaa !29
  %t254 = getelementptr %"compiler/interp:Exec", ptr %t252, i32 0, i32 0
  %t255 = load ptr, ptr %t254, !tbaa !29
  %t257 = getelementptr %"compiler/generic:Program", ptr %t255, i32 0, i32 0
  %t258 = load ptr, ptr %t257, !tbaa !29
  %t260 = getelementptr %"compiler/load:Loader", ptr %t258, i32 0, i32 12
  %t261 = load i64, ptr %t260, !tbaa !24
  %t264 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t251, i64 %t261)
  store ptr %t264, ptr %l154
  br label %bb62
bb62:
  %t265 = load ptr, ptr %l154, !tbaa !29
  %t267 = getelementptr %"compiler/load:Module", ptr %t265, i32 0, i32 0
  %t268 = load { i64, ptr }, ptr %t267, !tbaa !27
  %t270 = extractvalue { i64, ptr } %t268, 1
  %t271 = extractvalue { i64, ptr } %t268, 0
  %t272 = load i64, ptr %l144
  %t273 = inttoptr i64 %t272 to ptr
  %t274 = call ptr @__olang_scope_alloc(ptr %t273, i64 %t271)
  call void @olang_textcopy(ptr %t274, ptr %t270, i64 %t271)
  %t275 = insertvalue { i64, ptr } undef, i64 %t271, 0
  %t276 = insertvalue { i64, ptr } %t275, ptr %t274, 1
  %t278 = load i64, ptr %l144
  %t279 = inttoptr i64 %t278 to ptr
  %t280 = extractvalue { i64, ptr } %t276, 0
  %t281 = extractvalue { i64, ptr } %t276, 1
  %t282 = mul i64 %t280, 1
  %t283 = call ptr @__olang_scope_alloc(ptr %t279, i64 %t282)
  call void @llvm.memcpy.p0.p0.i64(ptr %t283, ptr %t281, i64 %t282, i1 false)
  %t284 = insertvalue { i64, ptr } undef, i64 %t280, 0
  %t285 = insertvalue { i64, ptr } %t284, ptr %t283, 1
  %t286 = load ptr, ptr %l143, !tbaa !29
  %t287 = getelementptr %"compiler/interp:Exec", ptr %t286, i32 0, i32 4
  %t288 = getelementptr %"compiler/eval:Machine", ptr %t287, i32 0, i32 83
  %t289 = load { i64, ptr }, ptr %t288, !tbaa !27
  store { i64, ptr } %t289, ptr %l159, !tbaa !27
  %t291 = load ptr, ptr %l143, !tbaa !29
  %t292 = getelementptr %"compiler/interp:Exec", ptr %t291, i32 0, i32 4
  %t293 = getelementptr %"compiler/eval:Machine", ptr %t292, i32 0, i32 83
  store { i64, ptr } %t285, ptr %t293, !tbaa !27
  %t294 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e83
  br i1 %t294, label %bb63, label %bb64
bb63:
  %t296 = load { i64, ptr }, ptr %l159
  %t297 = extractvalue { i64, ptr } %t296, 1
  call void @__olang_region_release(ptr %t297)
  store { i64, ptr } zeroinitializer, ptr %l159
  br label %bb64
bb64:
  store ptr %l5, ptr %l21, !tbaa !29
  store i64 0, ptr %l22, !tbaa !24
  br label %bb65
bb65:
  store %olang.scope zeroinitializer, ptr %s16
  %t299 = load i64, ptr %l22, !tbaa !24
  store i64 %t299, ptr %l162, !tbaa !24
  %t300 = load ptr, ptr %l21, !tbaa !29
  %t302 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t300)
  store i64 %t302, ptr %l164
  br label %bb66
bb66:
  %t303 = load i64, ptr %l162, !tbaa !24
  %t304 = load i64, ptr %l164, !tbaa !24
  %t305 = icmp slt i64 %t303, %t304
  %t307 = xor i1 %t305, true
  br i1 %t307, label %bb67, label %bb68
bb67:
  call void @__olang_scope_close(ptr %s16)
  br label %bb119
bb68:
  br label %bb69
bb69:
  %t309 = load ptr, ptr %l21, !tbaa !29
  %t310 = load i64, ptr %l22, !tbaa !24
  %t313 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t309, i64 %t310)
  store i64 %t313, ptr %l169
  br label %bb70
bb70:
  %t314 = load i64, ptr %l169, !tbaa !24
  store i64 %t314, ptr %l23, !tbaa !24
  %t315 = load ptr, ptr %l0, !tbaa !29
  %t316 = load i64, ptr %l23, !tbaa !24
  %t319 = call { i64, ptr } @compiler_2finterp_2ecompiler_2finterp_3aExec_2eTestName(ptr %v0, ptr %v0, ptr %t315, i64 %t316)
  store { i64, ptr } %t319, ptr %l172
  br label %bb71
bb71:
  %t320 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 16, i64 8)
  store ptr %t320, ptr %lp24
  %t321 = load { i64, ptr }, ptr %l172, !tbaa !27
  %t322 = load ptr, ptr %lp24
  store { i64, ptr } %t321, ptr %t322, !tbaa !27
  %t323 = load ptr, ptr %l0, !tbaa !29
  store ptr %t323, ptr %l173, !tbaa !29
  %t324 = load ptr, ptr %lp24
  %t325 = load { i64, ptr }, ptr %t324, !tbaa !27
  %t326 = load ptr, ptr %l173, !tbaa !29
  %t327 = getelementptr %"compiler/interp:Exec", ptr %t326, i32 0, i32 4
  %t328 = getelementptr %"compiler/eval:Machine", ptr %t327, i32 0, i32 84
  %t329 = load { i64, ptr }, ptr %t328, !tbaa !27
  store { i64, ptr } %t329, ptr %l175, !tbaa !27
  %t331 = load ptr, ptr %l173, !tbaa !29
  %t332 = getelementptr %"compiler/interp:Exec", ptr %t331, i32 0, i32 4
  %t333 = getelementptr %"compiler/eval:Machine", ptr %t332, i32 0, i32 84
  store { i64, ptr } %t325, ptr %t333, !tbaa !27
  %t334 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e84
  br i1 %t334, label %bb72, label %bb73
bb72:
  %t336 = load { i64, ptr }, ptr %l175
  %t337 = extractvalue { i64, ptr } %t336, 1
  call void @__olang_region_release(ptr %t337)
  store { i64, ptr } zeroinitializer, ptr %l175
  br label %bb73
bb73:
  %t338 = load ptr, ptr %l0, !tbaa !29
  %t340 = getelementptr %"compiler/interp:Exec", ptr %t338, i32 0, i32 4
  %t341 = load i64, ptr %l23, !tbaa !24
  %t343 = trunc i64 %t341 to i32
  store { i64, [2 x i64] } zeroinitializer, ptr %t345
  %t346 = getelementptr { i64, [2 x i64] }, ptr %t345, i32 0, i32 0
  store i64 0, ptr %t346
  %t348 = insertvalue { i32 } undef, i32 %t343, 0
  %t349 = getelementptr { i64, [2 x i64] }, ptr %t345, i32 0, i32 1
  store { i32 } %t348, ptr %t349
  %t350 = load { i64, [2 x i64] }, ptr %t345
  %t352 = insertvalue { i64, ptr } undef, i64 0, 0
  %t353 = insertvalue { i64, ptr } %t352, ptr %l20, 1
  %t357 = call { i64, [5 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2eEval(ptr %v0, ptr %s0, ptr %v0, ptr %t340, { i64, [2 x i64] } %t350, { i64, ptr } %t353)
  store { i64, [5 x i64] } %t357, ptr %l185
  br label %bb74
bb74:
  %t358 = load { i64, [5 x i64] }, ptr %l185
  store { i64, [5 x i64] } %t358, ptr %l25
  %t359 = load { i64, [5 x i64] }, ptr %l25
  %t361 = extractvalue { i64, [5 x i64] } %t359, 0
  %t362 = icmp eq i64 %t361, 0
  %t364 = xor i1 %t362, true
  br i1 %t364, label %bb75, label %bb76
bb75:
  %t366 = load ptr, ptr %l0, !tbaa !29
  %t368 = getelementptr %"compiler/interp:Exec", ptr %t366, i32 0, i32 4
  %t369 = getelementptr %"compiler/eval:Machine", ptr %t368, i32 0, i32 85
  %t370 = load i1, ptr %t369, !tbaa !21
  store i1 %t370, ptr %l189, !tbaa !21
  br label %bb77
bb76:
  store i1 false, ptr %l189, !tbaa !21
  br label %bb77
bb77:
  %t372 = load i1, ptr %l189, !tbaa !21
  br i1 %t372, label %bb78, label %bb79
bb78:
  store %olang.scope zeroinitializer, ptr %s17
  %t373 = load ptr, ptr %l0, !tbaa !29
  %t374 = load { i64, [5 x i64] }, ptr %l25
  %t375 = load i64, ptr %l23, !tbaa !24
  %t376 = load ptr, ptr %l1, !tbaa !29
  %t381 = call { i64, ptr } @compiler_2finterp_2ecompiler_2finterp_3aExec_2eStopText(ptr %v0, ptr %v0, ptr %v1, ptr %s17, ptr %t373, { i64, [5 x i64] } %t374, i64 %t375, ptr %t376)
  store { i64, ptr } %t381, ptr %l196
  br label %bb80
bb79:
  br label %bb82
bb80:
  %t382 = load { i64, ptr }, ptr %l196, !tbaa !27
  %t383 = extractvalue { i64, ptr } %t382, 0
  %t384 = extractvalue { i64, ptr } %t382, 1
  %t385 = mul i64 %t383, 1
  %t386 = call ptr @__olang_scope_alloc(ptr %s17, i64 %t385)
  call void @llvm.memcpy.p0.p0.i64(ptr %t386, ptr %t384, i64 %t385, i1 false)
  %t387 = insertvalue { i64, ptr } undef, i64 %t383, 0
  %t388 = insertvalue { i64, ptr } %t387, ptr %t386, 1
  call void @compiler_2finterp_2edetachedEnd(ptr %s17, { i64, ptr } %t388)
  unreachable
bb81:
  call void @__olang_check_failed(ptr @olang_loc_a4fccf70f04f1e46_a9480d1c36ec4c52)
  unreachable
bb82:
  %t390 = load { i64, [5 x i64] }, ptr %l25
  %t392 = extractvalue { i64, [5 x i64] } %t390, 0
  %t393 = icmp eq i64 %t392, 0
  br i1 %t393, label %bb83, label %bb84
bb83:
  store %olang.scope zeroinitializer, ptr %s18
  %t395 = load i64, ptr %l18, !tbaa !24
  %t397 = add i64 %t395, 1
  store i64 %t397, ptr %l18, !tbaa !24
  %t399 = load ptr, ptr %lp24
  %t400 = load { i64, ptr }, ptr %t399, !tbaa !27
  %t401 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d66, i32 0, i32 1) }, 1
  %t402 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d66, i32 0, i32 1) }, 0
  %t404 = extractvalue { i64, ptr } %t400, 1
  %t405 = extractvalue { i64, ptr } %t400, 0
  %t406 = add i64 %t402, %t405
  %t407 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d67, i32 0, i32 1) }, 1
  %t408 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d67, i32 0, i32 1) }, 0
  %t409 = add i64 %t406, %t408
  %t410 = call ptr @__olang_scope_alloc(ptr %s18, i64 %t409)
  call void @olang_textcopy(ptr %t410, ptr %t401, i64 %t402)
  %t411 = getelementptr i8, ptr %t410, i64 %t402
  call void @olang_textcopy(ptr %t411, ptr %t404, i64 %t405)
  %t412 = getelementptr i8, ptr %t411, i64 %t405
  call void @olang_textcopy(ptr %t412, ptr %t407, i64 %t408)
  %t413 = insertvalue { i64, ptr } undef, i64 %t409, 0
  %t414 = insertvalue { i64, ptr } %t413, ptr %t410, 1
  %t416 = extractvalue { i64, ptr } %t414, 0
  %t417 = extractvalue { i64, ptr } %t414, 1
  %t418 = mul i64 %t416, 1
  %t419 = call ptr @__olang_scope_alloc(ptr %s18, i64 %t418)
  call void @llvm.memcpy.p0.p0.i64(ptr %t419, ptr %t417, i64 %t418, i1 false)
  %t420 = insertvalue { i64, ptr } undef, i64 %t416, 0
  %t421 = insertvalue { i64, ptr } %t420, ptr %t419, 1
  call void @compiler_2finterp_2esay(ptr %s18, { i64, ptr } %t421)
  br label %bb85
bb84:
  br label %bb86
bb85:
  call void @__olang_scope_close(ptr %s18)
  call void @__olang_scope_close(ptr %s16)
  br label %bb118
bb86:
  %t423 = load i64, ptr %l19, !tbaa !24
  %t425 = add i64 %t423, 1
  store i64 %t425, ptr %l19, !tbaa !24
  %t427 = load { i64, [5 x i64] }, ptr %l25
  %t429 = extractvalue { i64, [5 x i64] } %t427, 0
  %t430 = icmp eq i64 %t429, 2
  br i1 %t430, label %bb87, label %bb88
bb87:
  %t432 = getelementptr { i64, [5 x i64] }, ptr %l25, i32 0, i32 1
  %t433 = getelementptr { i32, i64, %"compiler/source:Span", { i64, ptr } }, ptr %t432, i32 0, i32 0
  %t434 = load i32, ptr %t433, !range !{i32 0, i32 20}
  %t436 = trunc i64 15 to i32
  %t437 = icmp eq i32 %t434, %t436
  store i1 %t437, ptr %l209, !tbaa !21
  br label %bb89
bb88:
  store i1 false, ptr %l209, !tbaa !21
  br label %bb89
bb89:
  %t439 = load i1, ptr %l209, !tbaa !21
  br i1 %t439, label %bb90, label %bb91
bb90:
  store %olang.scope zeroinitializer, ptr %s20
  %t440 = getelementptr { i64, [5 x i64] }, ptr %l25, i32 0, i32 1
  %t441 = getelementptr { i32, i64, %"compiler/source:Span", { i64, ptr } }, ptr %t440, i32 0, i32 0
  %t442 = load i32, ptr %t441, !range !{i32 0, i32 20}
  store i32 %t442, ptr %l26
  %t444 = getelementptr { i64, [5 x i64] }, ptr %l25, i32 0, i32 1
  %t445 = getelementptr { i32, i64, %"compiler/source:Span", { i64, ptr } }, ptr %t444, i32 0, i32 1
  %t446 = load i64, ptr %t445
  store i64 %t446, ptr %l27, !tbaa !24
  %t448 = getelementptr { i64, [5 x i64] }, ptr %l25, i32 0, i32 1
  %t449 = getelementptr { i32, i64, %"compiler/source:Span", { i64, ptr } }, ptr %t448, i32 0, i32 2
  %t450 = load %"compiler/source:Span", ptr %t449
  store %"compiler/source:Span" %t450, ptr %l28
  %t452 = getelementptr { i64, [5 x i64] }, ptr %l25, i32 0, i32 1
  %t453 = getelementptr { i32, i64, %"compiler/source:Span", { i64, ptr } }, ptr %t452, i32 0, i32 3
  %t454 = load { i64, ptr }, ptr %t453
  %t456 = load ptr, ptr %lp24
  %t457 = load { i64, ptr }, ptr %t456, !tbaa !27
  store { i64, ptr } %t457, ptr %l216, !tbaa !27
  store { i64, ptr } %t454, ptr %l217, !tbaa !27
  %t459 = load ptr, ptr %l0, !tbaa !29
  %t460 = load ptr, ptr %l1, !tbaa !29
  %t463 = call { i64, ptr } @compiler_2finterp_2ecompiler_2finterp_3aExec_2eTraceText(ptr %v0, ptr %v1, ptr %s20, ptr %t459, ptr %t460)
  store { i64, ptr } %t463, ptr %l220
  br label %bb92
bb91:
  br label %bb95
bb92:
  %t464 = load ptr, ptr %l1, !tbaa !29
  %t465 = load i64, ptr %l27, !tbaa !24
  %t466 = load %"compiler/source:Span", ptr %l28
  %t470 = call { i64, ptr } @compiler_2finterp_2eline(ptr %v1, ptr %s20, ptr %t464, i64 %t465, %"compiler/source:Span" %t466)
  store { i64, ptr } %t470, ptr %l224
  br label %bb93
bb93:
  %t471 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d68, i32 0, i32 1) }, 1
  %t472 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d68, i32 0, i32 1) }, 0
  %t473 = load { i64, ptr }, ptr %l216, !tbaa !27
  %t474 = extractvalue { i64, ptr } %t473, 1
  %t475 = extractvalue { i64, ptr } %t473, 0
  %t476 = add i64 %t472, %t475
  %t477 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d69, i32 0, i32 1) }, 1
  %t478 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d69, i32 0, i32 1) }, 0
  %t479 = add i64 %t476, %t478
  %t480 = load { i64, ptr }, ptr %l217, !tbaa !27
  %t481 = extractvalue { i64, ptr } %t480, 1
  %t482 = extractvalue { i64, ptr } %t480, 0
  %t483 = add i64 %t479, %t482
  %t484 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d70, i32 0, i32 1) }, 1
  %t485 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d70, i32 0, i32 1) }, 0
  %t486 = add i64 %t483, %t485
  %t487 = load { i64, ptr }, ptr %l220, !tbaa !27
  %t488 = extractvalue { i64, ptr } %t487, 1
  %t489 = extractvalue { i64, ptr } %t487, 0
  %t490 = add i64 %t486, %t489
  %t491 = load { i64, ptr }, ptr %l224, !tbaa !27
  %t492 = extractvalue { i64, ptr } %t491, 1
  %t493 = extractvalue { i64, ptr } %t491, 0
  %t494 = add i64 %t490, %t493
  %t495 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d71, i32 0, i32 1) }, 1
  %t496 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d71, i32 0, i32 1) }, 0
  %t497 = add i64 %t494, %t496
  %t498 = call ptr @__olang_scope_alloc(ptr %s20, i64 %t497)
  call void @olang_textcopy(ptr %t498, ptr %t471, i64 %t472)
  %t499 = getelementptr i8, ptr %t498, i64 %t472
  call void @olang_textcopy(ptr %t499, ptr %t474, i64 %t475)
  %t500 = getelementptr i8, ptr %t499, i64 %t475
  call void @olang_textcopy(ptr %t500, ptr %t477, i64 %t478)
  %t501 = getelementptr i8, ptr %t500, i64 %t478
  call void @olang_textcopy(ptr %t501, ptr %t481, i64 %t482)
  %t502 = getelementptr i8, ptr %t501, i64 %t482
  call void @olang_textcopy(ptr %t502, ptr %t484, i64 %t485)
  %t503 = getelementptr i8, ptr %t502, i64 %t485
  call void @olang_textcopy(ptr %t503, ptr %t488, i64 %t489)
  %t504 = getelementptr i8, ptr %t503, i64 %t489
  call void @olang_textcopy(ptr %t504, ptr %t492, i64 %t493)
  %t505 = getelementptr i8, ptr %t504, i64 %t493
  call void @olang_textcopy(ptr %t505, ptr %t495, i64 %t496)
  %t506 = insertvalue { i64, ptr } undef, i64 %t497, 0
  %t507 = insertvalue { i64, ptr } %t506, ptr %t498, 1
  %t509 = extractvalue { i64, ptr } %t507, 0
  %t510 = extractvalue { i64, ptr } %t507, 1
  %t511 = mul i64 %t509, 1
  %t512 = call ptr @__olang_scope_alloc(ptr %s20, i64 %t511)
  call void @llvm.memcpy.p0.p0.i64(ptr %t512, ptr %t510, i64 %t511, i1 false)
  %t513 = insertvalue { i64, ptr } undef, i64 %t509, 0
  %t514 = insertvalue { i64, ptr } %t513, ptr %t512, 1
  call void @compiler_2finterp_2esay(ptr %s20, { i64, ptr } %t514)
  br label %bb94
bb94:
  call void @__olang_scope_close(ptr %s20)
  call void @__olang_scope_close(ptr %s16)
  br label %bb118
bb95:
  %t516 = load { i64, [5 x i64] }, ptr %l25
  %t518 = extractvalue { i64, [5 x i64] } %t516, 0
  %t519 = icmp eq i64 %t518, 1
  br i1 %t519, label %bb96, label %bb97
bb96:
  store %olang.scope zeroinitializer, ptr %s22
  %t521 = getelementptr { i64, [5 x i64] }, ptr %l25, i32 0, i32 1
  %t522 = getelementptr { i64 }, ptr %t521, i32 0, i32 0
  %t523 = load i64, ptr %t522
  %t525 = load ptr, ptr %lp24
  %t526 = load { i64, ptr }, ptr %t525, !tbaa !27
  store { i64, ptr } %t526, ptr %l230, !tbaa !27
  %t527 = load ptr, ptr %l0, !tbaa !29
  store ptr %t527, ptr %l231, !tbaa !29
  store i64 %t523, ptr %l232, !tbaa !24
  %t529 = load ptr, ptr %l0, !tbaa !29
  %t531 = getelementptr %"compiler/interp:Exec", ptr %t529, i32 0, i32 1
  %t532 = load ptr, ptr %t531, !tbaa !29
  %t534 = load i64, ptr %l23, !tbaa !24
  %t537 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t532, i64 %t534)
  store ptr %t537, ptr %l237
  br label %bb98
bb97:
  br label %bb102
bb98:
  %t538 = load ptr, ptr %l237, !tbaa !29
  %t540 = getelementptr %"compiler/typed:Body", ptr %t538, i32 0, i32 2
  %t541 = load i32, ptr %t540, !tbaa !23
  %t542 = load ptr, ptr %l231, !tbaa !29
  %t543 = load i64, ptr %l232, !tbaa !24
  %t545 = call { i64, ptr } @compiler_2finterp_2ecompiler_2finterp_3aExec_2eerrorName(ptr %v0, ptr %s22, ptr %t542, i64 %t543, i32 %t541)
  store { i64, ptr } %t545, ptr %l240
  br label %bb99
bb99:
  %t546 = load ptr, ptr %l0, !tbaa !29
  %t547 = load ptr, ptr %l1, !tbaa !29
  %t550 = call { i64, ptr } @compiler_2finterp_2ecompiler_2finterp_3aExec_2eTraceText(ptr %v0, ptr %v1, ptr %s22, ptr %t546, ptr %t547)
  store { i64, ptr } %t550, ptr %l243
  br label %bb100
bb100:
  %t551 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d72, i32 0, i32 1) }, 1
  %t552 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d72, i32 0, i32 1) }, 0
  %t553 = load { i64, ptr }, ptr %l230, !tbaa !27
  %t554 = extractvalue { i64, ptr } %t553, 1
  %t555 = extractvalue { i64, ptr } %t553, 0
  %t556 = add i64 %t552, %t555
  %t557 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d73, i32 0, i32 1) }, 1
  %t558 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d73, i32 0, i32 1) }, 0
  %t559 = add i64 %t556, %t558
  %t560 = load { i64, ptr }, ptr %l240, !tbaa !27
  %t561 = extractvalue { i64, ptr } %t560, 1
  %t562 = extractvalue { i64, ptr } %t560, 0
  %t563 = add i64 %t559, %t562
  %t564 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d74, i32 0, i32 1) }, 1
  %t565 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d74, i32 0, i32 1) }, 0
  %t566 = add i64 %t563, %t565
  %t567 = load { i64, ptr }, ptr %l243, !tbaa !27
  %t568 = extractvalue { i64, ptr } %t567, 1
  %t569 = extractvalue { i64, ptr } %t567, 0
  %t570 = add i64 %t566, %t569
  %t571 = call ptr @__olang_scope_alloc(ptr %s22, i64 %t570)
  call void @olang_textcopy(ptr %t571, ptr %t551, i64 %t552)
  %t572 = getelementptr i8, ptr %t571, i64 %t552
  call void @olang_textcopy(ptr %t572, ptr %t554, i64 %t555)
  %t573 = getelementptr i8, ptr %t572, i64 %t555
  call void @olang_textcopy(ptr %t573, ptr %t557, i64 %t558)
  %t574 = getelementptr i8, ptr %t573, i64 %t558
  call void @olang_textcopy(ptr %t574, ptr %t561, i64 %t562)
  %t575 = getelementptr i8, ptr %t574, i64 %t562
  call void @olang_textcopy(ptr %t575, ptr %t564, i64 %t565)
  %t576 = getelementptr i8, ptr %t575, i64 %t565
  call void @olang_textcopy(ptr %t576, ptr %t568, i64 %t569)
  %t577 = insertvalue { i64, ptr } undef, i64 %t570, 0
  %t578 = insertvalue { i64, ptr } %t577, ptr %t571, 1
  %t580 = extractvalue { i64, ptr } %t578, 0
  %t581 = extractvalue { i64, ptr } %t578, 1
  %t582 = mul i64 %t580, 1
  %t583 = call ptr @__olang_scope_alloc(ptr %s22, i64 %t582)
  call void @llvm.memcpy.p0.p0.i64(ptr %t583, ptr %t581, i64 %t582, i1 false)
  %t584 = insertvalue { i64, ptr } undef, i64 %t580, 0
  %t585 = insertvalue { i64, ptr } %t584, ptr %t583, 1
  call void @compiler_2finterp_2esay(ptr %s22, { i64, ptr } %t585)
  br label %bb101
bb101:
  call void @__olang_scope_close(ptr %s22)
  call void @__olang_scope_close(ptr %s16)
  br label %bb118
bb102:
  %t587 = load ptr, ptr %l0, !tbaa !29
  %t588 = load { i64, [5 x i64] }, ptr %l25
  %t589 = load i64, ptr %l23, !tbaa !24
  %t590 = load ptr, ptr %l1, !tbaa !29
  %t595 = call { i64, ptr } @compiler_2finterp_2ecompiler_2finterp_3aExec_2eStopText(ptr %v0, ptr %v0, ptr %v1, ptr %s16, ptr %t587, { i64, [5 x i64] } %t588, i64 %t589, ptr %t590)
  store { i64, ptr } %t595, ptr %l250
  br label %bb103
bb103:
  %t596 = load { i64, ptr }, ptr %l250, !tbaa !27
  store { i64, ptr } %t596, ptr %l31, !tbaa !27
  %t597 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t599 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s16, ptr %s16, { i64, ptr } %t597, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d75, i32 0, i32 1) })
  store i1 %t599, ptr %l252
  br label %bb104
bb104:
  %t600 = load i1, ptr %l252, !tbaa !21
  %t601 = xor i1 %t600, true
  br i1 %t601, label %bb105, label %bb106
bb105:
  store %olang.scope zeroinitializer, ptr %s24
  %t603 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t605 = extractvalue { i64, ptr } %t603, 1
  %t606 = extractvalue { i64, ptr } %t603, 0
  %t607 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d76, i32 0, i32 1) }, 1
  %t608 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d76, i32 0, i32 1) }, 0
  %t609 = add i64 %t606, %t608
  %t610 = call ptr @__olang_scope_alloc(ptr %s24, i64 %t609)
  call void @olang_textcopy(ptr %t610, ptr %t605, i64 %t606)
  %t611 = getelementptr i8, ptr %t610, i64 %t606
  call void @olang_textcopy(ptr %t611, ptr %t607, i64 %t608)
  %t612 = insertvalue { i64, ptr } undef, i64 %t609, 0
  %t613 = insertvalue { i64, ptr } %t612, ptr %t610, 1
  %t615 = extractvalue { i64, ptr } %t613, 0
  %t616 = extractvalue { i64, ptr } %t613, 1
  %t617 = mul i64 %t615, 1
  %t618 = call ptr @__olang_scope_alloc(ptr %s24, i64 %t617)
  call void @llvm.memcpy.p0.p0.i64(ptr %t618, ptr %t616, i64 %t617, i1 false)
  %t619 = insertvalue { i64, ptr } undef, i64 %t615, 0
  %t620 = insertvalue { i64, ptr } %t619, ptr %t618, 1
  call void @compiler_2finterp_2esay(ptr %s24, { i64, ptr } %t620)
  br label %bb107
bb106:
  br label %bb108
bb107:
  call void @__olang_scope_close(ptr %s24)
  br label %bb108
bb108:
  %t622 = load { i64, [5 x i64] }, ptr %l25
  %t624 = extractvalue { i64, [5 x i64] } %t622, 0
  %t625 = icmp eq i64 %t624, 2
  br i1 %t625, label %bb109, label %bb110
bb109:
  %t627 = getelementptr { i64, [5 x i64] }, ptr %l25, i32 0, i32 1
  %t628 = getelementptr { i32, i64, %"compiler/source:Span", { i64, ptr } }, ptr %t627, i32 0, i32 0
  %t629 = load i32, ptr %t628, !range !{i32 0, i32 20}
  %t631 = trunc i64 14 to i32
  %t632 = icmp eq i32 %t629, %t631
  store i1 %t632, ptr %l259, !tbaa !21
  br label %bb111
bb110:
  store i1 false, ptr %l259, !tbaa !21
  br label %bb111
bb111:
  %t634 = load i1, ptr %l259, !tbaa !21
  br i1 %t634, label %bb112, label %bb113
bb112:
  store %olang.scope zeroinitializer, ptr %s26
  %t635 = getelementptr { i64, [5 x i64] }, ptr %l25, i32 0, i32 1
  %t636 = getelementptr { i32, i64, %"compiler/source:Span", { i64, ptr } }, ptr %t635, i32 0, i32 0
  %t637 = load i32, ptr %t636, !range !{i32 0, i32 20}
  store i32 %t637, ptr %l32
  %t639 = getelementptr { i64, [5 x i64] }, ptr %l25, i32 0, i32 1
  %t640 = getelementptr { i32, i64, %"compiler/source:Span", { i64, ptr } }, ptr %t639, i32 0, i32 1
  %t641 = load i64, ptr %t640
  store i64 %t641, ptr %l33, !tbaa !24
  %t643 = getelementptr { i64, [5 x i64] }, ptr %l25, i32 0, i32 1
  %t644 = getelementptr { i32, i64, %"compiler/source:Span", { i64, ptr } }, ptr %t643, i32 0, i32 2
  %t645 = load %"compiler/source:Span", ptr %t644
  store %"compiler/source:Span" %t645, ptr %l34
  %t647 = getelementptr { i64, [5 x i64] }, ptr %l25, i32 0, i32 1
  %t648 = getelementptr { i32, i64, %"compiler/source:Span", { i64, ptr } }, ptr %t647, i32 0, i32 3
  %t649 = load { i64, ptr }, ptr %t648
  store { i64, ptr } %t649, ptr %l35, !tbaa !27
  %t651 = load ptr, ptr %l0, !tbaa !29
  %t652 = load ptr, ptr %l1, !tbaa !29
  %t655 = call { i64, ptr } @compiler_2finterp_2ecompiler_2finterp_3aExec_2eTraceText(ptr %v0, ptr %v1, ptr %s26, ptr %t651, ptr %t652)
  store { i64, ptr } %t655, ptr %l268
  br label %bb114
bb113:
  br label %bb116
bb114:
  %t656 = load { i64, ptr }, ptr %l268, !tbaa !27
  %t657 = extractvalue { i64, ptr } %t656, 0
  %t658 = extractvalue { i64, ptr } %t656, 1
  %t659 = mul i64 %t657, 1
  %t660 = call ptr @__olang_scope_alloc(ptr %s26, i64 %t659)
  call void @llvm.memcpy.p0.p0.i64(ptr %t660, ptr %t658, i64 %t659, i1 false)
  %t661 = insertvalue { i64, ptr } undef, i64 %t657, 0
  %t662 = insertvalue { i64, ptr } %t661, ptr %t660, 1
  call void @compiler_2finterp_2esay(ptr %s26, { i64, ptr } %t662)
  br label %bb115
bb115:
  call void @__olang_scope_close(ptr %s26)
  br label %bb116
bb116:
  %t664 = load ptr, ptr %lp24
  %t665 = load { i64, ptr }, ptr %t664, !tbaa !27
  %t666 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d77, i32 0, i32 1) }, 1
  %t667 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d77, i32 0, i32 1) }, 0
  %t669 = extractvalue { i64, ptr } %t665, 1
  %t670 = extractvalue { i64, ptr } %t665, 0
  %t671 = add i64 %t667, %t670
  %t672 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d78, i32 0, i32 1) }, 1
  %t673 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d78, i32 0, i32 1) }, 0
  %t674 = add i64 %t671, %t673
  %t675 = call ptr @__olang_scope_alloc(ptr %s16, i64 %t674)
  call void @olang_textcopy(ptr %t675, ptr %t666, i64 %t667)
  %t676 = getelementptr i8, ptr %t675, i64 %t667
  call void @olang_textcopy(ptr %t676, ptr %t669, i64 %t670)
  %t677 = getelementptr i8, ptr %t676, i64 %t670
  call void @olang_textcopy(ptr %t677, ptr %t672, i64 %t673)
  %t678 = insertvalue { i64, ptr } undef, i64 %t674, 0
  %t679 = insertvalue { i64, ptr } %t678, ptr %t675, 1
  %t681 = extractvalue { i64, ptr } %t679, 0
  %t682 = extractvalue { i64, ptr } %t679, 1
  %t683 = mul i64 %t681, 1
  %t684 = call ptr @__olang_scope_alloc(ptr %s16, i64 %t683)
  call void @llvm.memcpy.p0.p0.i64(ptr %t684, ptr %t682, i64 %t683, i1 false)
  %t685 = insertvalue { i64, ptr } undef, i64 %t681, 0
  %t686 = insertvalue { i64, ptr } %t685, ptr %t684, 1
  call void @compiler_2finterp_2esay(ptr %s16, { i64, ptr } %t686)
  br label %bb117
bb117:
  call void @__olang_scope_close(ptr %s16)
  br label %bb118
bb118:
  %t688 = load i64, ptr %l22, !tbaa !24
  %t690 = add i64 %t688, 1
  store i64 %t690, ptr %l22, !tbaa !24
  br label %bb65
bb119:
  %t692 = load i64, ptr %l18, !tbaa !24
  %t693 = load i64, ptr %l19, !tbaa !24
  %t695 = call i64 @__olang_fmt_i64(ptr null, i64 %t692)
  %t696 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d79, i32 0, i32 1) }, 1
  %t697 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d79, i32 0, i32 1) }, 0
  %t698 = add i64 %t695, %t697
  %t700 = call i64 @__olang_fmt_i64(ptr null, i64 %t693)
  %t701 = add i64 %t698, %t700
  %t702 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d80, i32 0, i32 1) }, 1
  %t703 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d80, i32 0, i32 1) }, 0
  %t704 = add i64 %t701, %t703
  %t705 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t704)
  %t706 = call i64 @__olang_fmt_i64(ptr %t705, i64 %t692)
  %t707 = getelementptr i8, ptr %t705, i64 %t695
  call void @olang_textcopy(ptr %t707, ptr %t696, i64 %t697)
  %t708 = getelementptr i8, ptr %t707, i64 %t697
  %t709 = call i64 @__olang_fmt_i64(ptr %t708, i64 %t693)
  %t710 = getelementptr i8, ptr %t708, i64 %t700
  call void @olang_textcopy(ptr %t710, ptr %t702, i64 %t703)
  %t711 = insertvalue { i64, ptr } undef, i64 %t704, 0
  %t712 = insertvalue { i64, ptr } %t711, ptr %t705, 1
  %t714 = extractvalue { i64, ptr } %t712, 0
  %t715 = extractvalue { i64, ptr } %t712, 1
  %t716 = mul i64 %t714, 1
  %t717 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t716)
  call void @llvm.memcpy.p0.p0.i64(ptr %t717, ptr %t715, i64 %t716, i1 false)
  %t718 = insertvalue { i64, ptr } undef, i64 %t714, 0
  %t719 = insertvalue { i64, ptr } %t718, ptr %t717, 1
  call void @compiler_2finterp_2esay(ptr %s0, { i64, ptr } %t719)
  br label %bb120
bb120:
  %t721 = load i64, ptr %l19, !tbaa !24
  %t723 = icmp sgt i64 %t721, 0
  br i1 %t723, label %bb121, label %bb122
bb121:
  store i32 1, ptr %l281, !tbaa !23
  br label %bb123
bb122:
  store i32 0, ptr %l281, !tbaa !23
  br label %bb123
bb123:
  call void @__olang_scope_close(ptr %s0)
  %t725 = load i32, ptr %l281, !tbaa !23
  store i32 %t725, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i64, ptr } @compiler_2finterp_2ecompiler_2finterp_3aExec_2eStopText(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, [5 x i64] } %a1, i64 %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [5 x i64] }
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l9 = alloca ptr
  %l10 = alloca i64
  %l15 = alloca ptr
  %l18 = alloca { i64, ptr }
  %l25 = alloca i1
  %l26 = alloca i1
  %l32 = alloca { i64, ptr }
  %l38 = alloca { i64, ptr }
  %l42 = alloca { i64, ptr }
  %l45 = alloca { i64, ptr }
  %s1 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, [5 x i64] } %a1, ptr %l1
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [5 x i64] }, ptr %l1
  %t3 = extractvalue { i64, [5 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 1
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = getelementptr { i64, [5 x i64] }, ptr %l1, i32 0, i32 1
  %t7 = getelementptr { i64 }, ptr %t6, i32 0, i32 0
  %t8 = load i64, ptr %t7
  store i64 %t8, ptr %l4, !tbaa !24
  br label %bb3
bb2:
  br label %bb6
bb3:
  store %olang.scope zeroinitializer, ptr %s1
  %t10 = load ptr, ptr %l0, !tbaa !29
  store ptr %t10, ptr %l9, !tbaa !29
  %t11 = load i64, ptr %l4, !tbaa !24
  store i64 %t11, ptr %l10, !tbaa !24
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/interp:Exec", ptr %t12, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t20 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t15, i64 %a2)
  store ptr %t20, ptr %l15
  br label %bb4
bb4:
  %t21 = load ptr, ptr %l15, !tbaa !29
  %t23 = getelementptr %"compiler/typed:Body", ptr %t21, i32 0, i32 2
  %t24 = load i32, ptr %t23, !tbaa !23
  %t25 = load ptr, ptr %l9, !tbaa !29
  %t26 = load i64, ptr %l10, !tbaa !24
  %t28 = call { i64, ptr } @compiler_2finterp_2ecompiler_2finterp_3aExec_2eerrorName(ptr %v0, ptr %s1, ptr %t25, i64 %t26, i32 %t24)
  store { i64, ptr } %t28, ptr %l18
  br label %bb5
bb5:
  %t29 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d81, i32 0, i32 1) }, 1
  %t30 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d81, i32 0, i32 1) }, 0
  %t31 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t32 = extractvalue { i64, ptr } %t31, 1
  %t33 = extractvalue { i64, ptr } %t31, 0
  %t34 = add i64 %t30, %t33
  %t35 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t34)
  call void @olang_textcopy(ptr %t35, ptr %t29, i64 %t30)
  %t36 = getelementptr i8, ptr %t35, i64 %t30
  call void @olang_textcopy(ptr %t36, ptr %t32, i64 %t33)
  %t37 = insertvalue { i64, ptr } undef, i64 %t34, 0
  %t38 = insertvalue { i64, ptr } %t37, ptr %t35, 1
  call void @__olang_scope_close(ptr %s1)
  store { i64, ptr } %t38, ptr %rv
  br label %ret
bb6:
  %t40 = load { i64, [5 x i64] }, ptr %l1
  %t42 = extractvalue { i64, [5 x i64] } %t40, 0
  %t43 = icmp eq i64 %t42, 3
  br i1 %t43, label %bb7, label %bb8
bb7:
  %t45 = getelementptr { i64, [5 x i64] }, ptr %l1, i32 0, i32 1
  %t46 = getelementptr { { i64, ptr }, i64, %"compiler/source:Span" }, ptr %t45, i32 0, i32 0
  %t47 = load { i64, ptr }, ptr %t46
  store { i64, ptr } %t47, ptr %l5, !tbaa !27
  br label %bb9
bb8:
  br label %bb20
bb9:
  %t49 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t50 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyWaits, !tbaa !27
  %t51 = load ptr, ptr @__olang_prog_scope
  %t54 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %t51, { i64, ptr } %t49, { i64, ptr } %t50)
  store i1 %t54, ptr %l25
  br label %bb10
bb10:
  %t55 = load i1, ptr %l25, !tbaa !21
  br i1 %t55, label %bb11, label %bb12
bb11:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/interp:Exec", ptr %t56, i32 0, i32 4
  %t59 = getelementptr %"compiler/eval:Machine", ptr %t58, i32 0, i32 92
  %t60 = load i64, ptr %t59, !tbaa !24
  %t62 = icmp sge i64 %t60, 0
  store i1 %t62, ptr %l26, !tbaa !21
  br label %bb13
bb12:
  store i1 false, ptr %l26, !tbaa !21
  br label %bb13
bb13:
  %t64 = load i1, ptr %l26, !tbaa !21
  br i1 %t64, label %bb14, label %bb15
bb14:
  store %olang.scope zeroinitializer, ptr %s4
  %t65 = load { i64, [5 x i64] }, ptr %l1
  %t66 = load ptr, ptr %l3, !tbaa !29
  %t69 = call { i64, ptr } @compiler_2finterp_2eStopText(ptr %v1, ptr %v2, ptr %s4, { i64, [5 x i64] } %t65, ptr %t66)
  store { i64, ptr } %t69, ptr %l32
  br label %bb16
bb15:
  br label %bb18
bb16:
  %t70 = load ptr, ptr %l3, !tbaa !29
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"compiler/interp:Exec", ptr %t71, i32 0, i32 4
  %t74 = getelementptr %"compiler/eval:Machine", ptr %t73, i32 0, i32 92
  %t75 = load i64, ptr %t74, !tbaa !24
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = getelementptr %"compiler/interp:Exec", ptr %t76, i32 0, i32 4
  %t79 = getelementptr %"compiler/eval:Machine", ptr %t78, i32 0, i32 93
  %t80 = load %"compiler/source:Span", ptr %t79
  %t84 = call { i64, ptr } @compiler_2finterp_2eline(ptr %v2, ptr %s4, ptr %t70, i64 %t75, %"compiler/source:Span" %t80)
  store { i64, ptr } %t84, ptr %l38
  br label %bb17
bb17:
  %t85 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t86 = extractvalue { i64, ptr } %t85, 1
  %t87 = extractvalue { i64, ptr } %t85, 0
  %t88 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d82, i32 0, i32 1) }, 1
  %t89 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d82, i32 0, i32 1) }, 0
  %t90 = add i64 %t87, %t89
  %t91 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t92 = extractvalue { i64, ptr } %t91, 1
  %t93 = extractvalue { i64, ptr } %t91, 0
  %t94 = add i64 %t90, %t93
  %t95 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t94)
  call void @olang_textcopy(ptr %t95, ptr %t86, i64 %t87)
  %t96 = getelementptr i8, ptr %t95, i64 %t87
  call void @olang_textcopy(ptr %t96, ptr %t88, i64 %t89)
  %t97 = getelementptr i8, ptr %t96, i64 %t89
  call void @olang_textcopy(ptr %t97, ptr %t92, i64 %t93)
  %t98 = insertvalue { i64, ptr } undef, i64 %t94, 0
  %t99 = insertvalue { i64, ptr } %t98, ptr %t95, 1
  call void @__olang_scope_close(ptr %s4)
  store { i64, ptr } %t99, ptr %rv
  br label %ret
bb18:
  %t101 = load { i64, [5 x i64] }, ptr %l1
  %t102 = load ptr, ptr %l3, !tbaa !29
  %t105 = call { i64, ptr } @compiler_2finterp_2eStopText(ptr %v1, ptr %v2, ptr %v3, { i64, [5 x i64] } %t101, ptr %t102)
  store { i64, ptr } %t105, ptr %l42
  br label %bb19
bb19:
  %t106 = load { i64, ptr }, ptr %l42, !tbaa !27
  store { i64, ptr } %t106, ptr %rv
  br label %ret
bb20:
  br i1 true, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb25
bb23:
  %t107 = load { i64, [5 x i64] }, ptr %l1
  %t108 = load ptr, ptr %l3, !tbaa !29
  %t111 = call { i64, ptr } @compiler_2finterp_2eStopText(ptr %v1, ptr %v2, ptr %v3, { i64, [5 x i64] } %t107, ptr %t108)
  store { i64, ptr } %t111, ptr %l45
  br label %bb24
bb24:
  %t112 = load { i64, ptr }, ptr %l45, !tbaa !27
  store { i64, ptr } %t112, ptr %rv
  br label %ret
bb25:
  call void @__olang_check_failed(ptr @olang_loc_177aae49e1a91f38_175ec48f508568b4)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2finterp_2ecompiler_2finterp_3aExec_2eTestName(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l12 = alloca ptr
  %l14 = alloca { i64, ptr }
  %l19 = alloca ptr
  %l22 = alloca ptr
  %l25 = alloca { i64, ptr }
  %l26 = alloca { i64, ptr }
  %l27 = alloca i64
  %l28 = alloca { i64, ptr }
  %l29 = alloca ptr
  %l41 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/interp:Exec", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 0
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t9 = getelementptr %"compiler/load:Loader", ptr %t7, i32 0, i32 10
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/interp:Exec", ptr %t10, i32 0, i32 0
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
  %t30 = getelementptr %"compiler/interp:Exec", ptr %t28, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t36 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t31, i64 %a1)
  store ptr %t36, ptr %l19
  br label %bb2
bb2:
  %t37 = load ptr, ptr %l19, !tbaa !29
  %t39 = getelementptr %"compiler/typed:Body", ptr %t37, i32 0, i32 4
  %t40 = load %"compiler/source:Span", ptr %t39
  %t41 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t43 = call ptr @compiler_2fast_2eFindTest(ptr %v0, ptr %v0, { i64, ptr } %t41, %"compiler/source:Span" %t40)
  store ptr %t43, ptr %l22
  br label %bb3
bb3:
  %t44 = load ptr, ptr %l22, !tbaa !29
  store ptr %t44, ptr %l3, !tbaa !29
  %t45 = load ptr, ptr %l3, !tbaa !29
  %t47 = icmp eq ptr %t45, null
  br i1 %t47, label %bb4, label %bb5
bb4:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d83, i32 0, i32 1) }, ptr %l25, !tbaa !27
  %t49 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t49, ptr %l26, !tbaa !27
  %t50 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t51 = extractvalue { i64, ptr } %t50, 0
  store i64 %t51, ptr %l27, !tbaa !24
  %t52 = load i64, ptr %l27, !tbaa !24
  %t53 = mul i64 %t52, 1
  %t54 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t53)
  %t55 = insertvalue { i64, ptr } undef, i64 %t52, 0
  %t56 = insertvalue { i64, ptr } %t55, ptr %t54, 1
  store { i64, ptr } %t56, ptr %l28, !tbaa !27
  %t57 = getelementptr { i64, ptr }, ptr %l28, i32 0, i32 1
  %t58 = load ptr, ptr %t57, !tbaa !27
  %t59 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t60 = load ptr, ptr %t59, !tbaa !27
  %t61 = load i64, ptr %l27, !tbaa !24
  %t62 = mul i64 %t61, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t58, ptr %t60, i64 %t62, i1 false)
  %t63 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t63, ptr %l26, !tbaa !27
  %t64 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t64, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t65 = load ptr, ptr %l3, !tbaa !29
  store ptr %t65, ptr %l29, !tbaa !29
  %t66 = load ptr, ptr %l2, !tbaa !29
  %t68 = getelementptr %"compiler/load:Module", ptr %t66, i32 0, i32 6
  %t69 = load ptr, ptr %t68, !tbaa !29
  %t71 = icmp eq ptr %t69, null
  br i1 %t71, label %bb7, label %bb8
bb7:
  call void @__olang_check_failed(ptr @olang_loc_eb59e3d17e209b69_67e25fc5a7a9951d)
  unreachable
bb8:
  br label %bb9
bb9:
  %t73 = load ptr, ptr %l2, !tbaa !29
  %t75 = getelementptr %"compiler/load:Module", ptr %t73, i32 0, i32 6
  %t76 = load ptr, ptr %t75, !tbaa !29
  %t79 = getelementptr %"compiler/source:Source", ptr %t76, i32 0, i32 1
  %t80 = load { i64, ptr }, ptr %t79, !tbaa !27
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t83 = getelementptr %"compiler/interp:Exec", ptr %t81, i32 0, i32 0
  %t84 = load ptr, ptr %t83, !tbaa !29
  %t86 = getelementptr %"compiler/generic:Program", ptr %t84, i32 0, i32 0
  %t87 = load ptr, ptr %t86, !tbaa !29
  %t89 = getelementptr %"compiler/load:Loader", ptr %t87, i32 0, i32 3
  %t90 = load ptr, ptr %t89, !tbaa !29
  %t91 = load ptr, ptr %l29, !tbaa !29
  %t94 = call { i64, ptr } @compiler_2fast_2eTestLabel(ptr %v0, ptr %v0, ptr %v0, ptr %v1, ptr %t91, { i64, ptr } %t80, ptr %t90)
  store { i64, ptr } %t94, ptr %l41
  br label %bb10
bb10:
  %t95 = load { i64, ptr }, ptr %l41, !tbaa !27
  store { i64, ptr } %t95, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i32, { i64, ptr } } @compiler_2finterp_2ecompiler_2finterp_3aExec_2eText(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l7 = alloca { i64, [5 x i64] }
  %l18 = alloca { i64, ptr }
  %rv = alloca { i32, { i64, ptr } }
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
  %t6 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65536, 0
  store { i32, { i64, ptr } } %t6, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load i64, ptr %l1, !tbaa !24
  %t11 = call { i64, [5 x i64] } @compiler_2finterp_2ecompiler_2finterp_3aExec_2erun(ptr %v0, ptr %v0, ptr %t7, i64 %t8)
  store { i64, [5 x i64] } %t11, ptr %l7
  br label %bb4
bb4:
  %t12 = load { i64, [5 x i64] }, ptr %l7
  %t14 = extractvalue { i64, [5 x i64] } %t12, 0
  %t15 = icmp eq i64 %t14, 0
  %t17 = xor i1 %t15, true
  br i1 %t17, label %bb5, label %bb6
bb5:
  %t20 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65536, 0
  store { i32, { i64, ptr } } %t20, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/interp:Exec", ptr %t21, i32 0, i32 4
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/interp:Exec", ptr %t24, i32 0, i32 4
  %t27 = getelementptr %"compiler/eval:Machine", ptr %t26, i32 0, i32 18
  %t28 = load %"compiler/eval:Ptr", ptr %t27
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/interp:Exec", ptr %t29, i32 0, i32 4
  %t32 = getelementptr %"compiler/eval:Machine", ptr %t31, i32 0, i32 19
  %t33 = load i32, ptr %t32, !tbaa !23
  %t37 = call { i64, ptr } @compiler_2feval_2ecompiler_2feval_3aMachine_2eText(ptr %v0, ptr %v1, ptr %t23, %"compiler/eval:Ptr" %t28, i32 %t33)
  store { i64, ptr } %t37, ptr %l18
  br label %bb8
bb8:
  %t38 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t39 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t38, 1
  store { i32, { i64, ptr } } %t39, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local { i64, ptr } @compiler_2finterp_2ecompiler_2finterp_3aExec_2eTraceText(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"std/prelude/text:StringBuilder"
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca { i64, i64, i64 }
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca { i64, ptr }
  %l14 = alloca %"std/prelude/text:StringBuilder"
  %l25 = alloca i64
  %l29 = alloca i64
  %l32 = alloca i64
  %l53 = alloca { i64, i64, i64 }
  %l59 = alloca { i64, ptr }
  %l62 = alloca { i64, ptr }
  %l66 = alloca { i64, ptr }
  %l72 = alloca { i64, ptr }
  %l75 = alloca ptr
  %l76 = alloca ptr
  %l77 = alloca i64
  %l82 = alloca %"compiler/source:Span"
  %l83 = alloca { i64, ptr }
  %l90 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t1, ptr %l14
  br label %bb1
bb1:
  %t2 = load %"std/prelude/text:StringBuilder", ptr %l14
  store %"std/prelude/text:StringBuilder" %t2, ptr %l2
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/interp:Exec", ptr %t3, i32 0, i32 4
  %t6 = getelementptr %"compiler/eval:Machine", ptr %t5, i32 0, i32 90
  %t7 = load i64, ptr %t6, !tbaa !24
  %t9 = icmp sgt i64 %t7, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/interp:Exec", ptr %t11, i32 0, i32 4
  %t14 = getelementptr %"compiler/eval:Machine", ptr %t13, i32 0, i32 90
  %t15 = load i64, ptr %t14, !tbaa !24
  %t16 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d84, i32 0, i32 1) }, 1
  %t17 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d84, i32 0, i32 1) }, 0
  %t19 = call i64 @__olang_fmt_i64(ptr null, i64 %t15)
  %t20 = add i64 %t17, %t19
  %t21 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d85, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d85, i32 0, i32 1) }, 0
  %t23 = add i64 %t20, %t22
  %t24 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t23)
  call void @olang_textcopy(ptr %t24, ptr %t16, i64 %t17)
  %t25 = getelementptr i8, ptr %t24, i64 %t17
  %t26 = call i64 @__olang_fmt_i64(ptr %t25, i64 %t15)
  %t27 = getelementptr i8, ptr %t25, i64 %t19
  call void @olang_textcopy(ptr %t27, ptr %t21, i64 %t22)
  %t28 = insertvalue { i64, ptr } undef, i64 %t23, 0
  %t29 = insertvalue { i64, ptr } %t28, ptr %t24, 1
  %t31 = extractvalue { i64, ptr } %t29, 0
  %t32 = extractvalue { i64, ptr } %t29, 1
  %t33 = mul i64 %t31, 1
  %t34 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t33)
  call void @llvm.memcpy.p0.p0.i64(ptr %t34, ptr %t32, i64 %t33, i1 false)
  %t35 = insertvalue { i64, ptr } undef, i64 %t31, 0
  %t36 = insertvalue { i64, ptr } %t35, ptr %t34, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s1, ptr %l2, { i64, ptr } %t36)
  br label %bb4
bb3:
  br label %bb5
bb4:
  call void @__olang_scope_close(ptr %s1)
  br label %bb5
bb5:
  store i64 0, ptr %l3, !tbaa !24
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/interp:Exec", ptr %t39, i32 0, i32 4
  %t43 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eTraceLen(ptr %v0, ptr %t41)
  store i64 %t43, ptr %l25
  br label %bb6
bb6:
  %t44 = load i64, ptr %l25, !tbaa !24
  store i64 %t44, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t45 = load i64, ptr %l4, !tbaa !24
  %t46 = load i64, ptr %l3, !tbaa !24
  %t49 = icmp sgt i64 %t45, %t46
  br i1 %t49, label %bb7, label %bb8
bb7:
  %t51 = load i64, ptr %l5, !tbaa !24
  %t53 = icmp sgt i64 %t51, 0
  br i1 %t53, label %bb9, label %bb10
bb8:
  store i64 0, ptr %l29, !tbaa !24
  br label %bb12
bb9:
  %t55 = load i64, ptr %l4, !tbaa !24
  %t56 = load i64, ptr %l3, !tbaa !24
  %t59 = sub i64 %t55, %t56
  %t60 = load i64, ptr %l5, !tbaa !24
  %t63 = add i64 %t59, %t60
  %t65 = sub i64 %t63, 1
  %t66 = load i64, ptr %l5, !tbaa !24
  %t69 = sdiv i64 %t65, %t66
  store i64 %t69, ptr %l32, !tbaa !24
  br label %bb11
bb10:
  store i64 0, ptr %l32, !tbaa !24
  br label %bb11
bb11:
  %t71 = load i64, ptr %l32, !tbaa !24
  store i64 %t71, ptr %l29, !tbaa !24
  br label %bb12
bb12:
  %t72 = load i64, ptr %l29, !tbaa !24
  store i64 %t72, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb13
bb13:
  store %olang.scope zeroinitializer, ptr %s4
  %t73 = load i64, ptr %l7, !tbaa !24
  %t74 = load i64, ptr %l6, !tbaa !24
  %t77 = icmp slt i64 %t73, %t74
  %t79 = xor i1 %t77, true
  br i1 %t79, label %bb14, label %bb15
bb14:
  call void @__olang_scope_close(ptr %s4)
  br label %bb33
bb15:
  br label %bb16
bb16:
  %t81 = load i64, ptr %l3, !tbaa !24
  %t82 = load i64, ptr %l7, !tbaa !24
  %t83 = load i64, ptr %l5, !tbaa !24
  %t86 = mul i64 %t82, %t83
  %t89 = add i64 %t81, %t86
  store i64 %t89, ptr %l8, !tbaa !24
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t93 = getelementptr %"compiler/interp:Exec", ptr %t91, i32 0, i32 4
  %t94 = load i64, ptr %l8, !tbaa !24
  %t97 = call { i64, i64, i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2eTraceAt(ptr %v0, ptr %t93, i64 %t94)
  store { i64, i64, i64 } %t97, ptr %l53
  br label %bb17
bb17:
  %t98 = load { i64, i64, i64 }, ptr %l53
  store { i64, i64, i64 } %t98, ptr %l9
  %t99 = getelementptr { i64, i64, i64 }, ptr %l9, i32 0, i32 0
  %t100 = load i64, ptr %t99, !tbaa !24
  store i64 %t100, ptr %l10, !tbaa !24
  %t102 = getelementptr { i64, i64, i64 }, ptr %l9, i32 0, i32 1
  %t103 = load i64, ptr %t102, !tbaa !24
  store i64 %t103, ptr %l11, !tbaa !24
  %t105 = getelementptr { i64, i64, i64 }, ptr %l9, i32 0, i32 2
  %t106 = load i64, ptr %t105, !tbaa !24
  store i64 %t106, ptr %l12, !tbaa !24
  %t108 = load i64, ptr %l12, !tbaa !24
  %t110 = icmp eq i64 %t108, 0
  br i1 %t110, label %bb18, label %bb19
bb18:
  store { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d86, i32 0, i32 1) }, ptr %l59, !tbaa !27
  br label %bb23
bb19:
  %t112 = load i64, ptr %l12, !tbaa !24
  %t114 = icmp eq i64 %t112, 1
  br i1 %t114, label %bb20, label %bb21
bb20:
  store { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d87, i32 0, i32 1) }, ptr %l62, !tbaa !27
  br label %bb22
bb21:
  store { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d88, i32 0, i32 1) }, ptr %l62, !tbaa !27
  br label %bb22
bb22:
  %t116 = load { i64, ptr }, ptr %l62, !tbaa !27
  store { i64, ptr } %t116, ptr %l59, !tbaa !27
  br label %bb23
bb23:
  %t117 = load { i64, ptr }, ptr %l59, !tbaa !27
  store { i64, ptr } %t117, ptr %l13, !tbaa !27
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t120 = getelementptr %"compiler/interp:Exec", ptr %t118, i32 0, i32 4
  %t121 = load i64, ptr %l8, !tbaa !24
  %t124 = call { i64, ptr } @compiler_2feval_2ecompiler_2feval_3aMachine_2eTraceWhat(ptr %v0, ptr %s4, ptr %t120, i64 %t121)
  store { i64, ptr } %t124, ptr %l66
  br label %bb24
bb24:
  %t125 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t126 = extractvalue { i64, ptr } %t125, 0
  %t128 = icmp sgt i64 %t126, 0
  br i1 %t128, label %bb25, label %bb26
bb25:
  store %olang.scope zeroinitializer, ptr %s5
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t132 = getelementptr %"compiler/interp:Exec", ptr %t130, i32 0, i32 4
  %t133 = load i64, ptr %l8, !tbaa !24
  %t136 = call { i64, ptr } @compiler_2feval_2ecompiler_2feval_3aMachine_2eTraceWhat(ptr %v0, ptr %s5, ptr %t132, i64 %t133)
  store { i64, ptr } %t136, ptr %l72
  br label %bb27
bb26:
  br label %bb28
bb27:
  %t137 = load { i64, ptr }, ptr %l72, !tbaa !27
  %t138 = extractvalue { i64, ptr } %t137, 1
  %t139 = extractvalue { i64, ptr } %t137, 0
  %t140 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t139)
  call void @olang_textcopy(ptr %t140, ptr %t138, i64 %t139)
  %t141 = insertvalue { i64, ptr } undef, i64 %t139, 0
  %t142 = insertvalue { i64, ptr } %t141, ptr %t140, 1
  %t144 = extractvalue { i64, ptr } %t142, 0
  %t145 = extractvalue { i64, ptr } %t142, 1
  %t146 = mul i64 %t144, 1
  %t147 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t146)
  call void @llvm.memcpy.p0.p0.i64(ptr %t147, ptr %t145, i64 %t146, i1 false)
  %t148 = insertvalue { i64, ptr } undef, i64 %t144, 0
  %t149 = insertvalue { i64, ptr } %t148, ptr %t147, 1
  store { i64, ptr } %t149, ptr %l13, !tbaa !27
  call void @__olang_scope_close(ptr %s5)
  br label %bb28
bb28:
  store ptr %l2, ptr %l75, !tbaa !29
  store ptr %a1, ptr %l76, !tbaa !29
  %t152 = load i64, ptr %l10, !tbaa !24
  store i64 %t152, ptr %l77, !tbaa !24
  %t153 = load i64, ptr %l11, !tbaa !24
  %t155 = trunc i64 %t153 to i32
  %t156 = load i64, ptr %l11, !tbaa !24
  %t158 = trunc i64 %t156 to i32
  %t161 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s4, i32 %t155, i32 %t158)
  store %"compiler/source:Span" %t161, ptr %l82
  br label %bb29
bb29:
  %t162 = load ptr, ptr %l76, !tbaa !29
  %t163 = load i64, ptr %l77, !tbaa !24
  %t164 = load %"compiler/source:Span", ptr %l82
  %t165 = call { i64, ptr } @compiler_2finterp_2eline(ptr %v1, ptr %s4, ptr %t162, i64 %t163, %"compiler/source:Span" %t164)
  store { i64, ptr } %t165, ptr %l83
  br label %bb30
bb30:
  %t166 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t167 = load { i64, ptr }, ptr %l83, !tbaa !27
  %t168 = extractvalue { i64, ptr } %t167, 1
  %t169 = extractvalue { i64, ptr } %t167, 0
  %t170 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d89, i32 0, i32 1) }, 1
  %t171 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d89, i32 0, i32 1) }, 0
  %t172 = add i64 %t169, %t171
  %t174 = extractvalue { i64, ptr } %t166, 1
  %t175 = extractvalue { i64, ptr } %t166, 0
  %t176 = add i64 %t172, %t175
  %t177 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d90, i32 0, i32 1) }, 1
  %t178 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d90, i32 0, i32 1) }, 0
  %t179 = add i64 %t176, %t178
  %t180 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t179)
  call void @olang_textcopy(ptr %t180, ptr %t168, i64 %t169)
  %t181 = getelementptr i8, ptr %t180, i64 %t169
  call void @olang_textcopy(ptr %t181, ptr %t170, i64 %t171)
  %t182 = getelementptr i8, ptr %t181, i64 %t171
  call void @olang_textcopy(ptr %t182, ptr %t174, i64 %t175)
  %t183 = getelementptr i8, ptr %t182, i64 %t175
  call void @olang_textcopy(ptr %t183, ptr %t177, i64 %t178)
  %t184 = insertvalue { i64, ptr } undef, i64 %t179, 0
  %t185 = insertvalue { i64, ptr } %t184, ptr %t180, 1
  %t187 = extractvalue { i64, ptr } %t185, 0
  %t188 = extractvalue { i64, ptr } %t185, 1
  %t189 = mul i64 %t187, 1
  %t190 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t189)
  call void @llvm.memcpy.p0.p0.i64(ptr %t190, ptr %t188, i64 %t189, i1 false)
  %t191 = insertvalue { i64, ptr } undef, i64 %t187, 0
  %t192 = insertvalue { i64, ptr } %t191, ptr %t190, 1
  %t193 = load ptr, ptr %l75, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s4, ptr %t193, { i64, ptr } %t192)
  br label %bb31
bb31:
  call void @__olang_scope_close(ptr %s4)
  br label %bb32
bb32:
  %t195 = load i64, ptr %l7, !tbaa !24
  %t197 = add i64 %t195, 1
  store i64 %t197, ptr %l7, !tbaa !24
  br label %bb13
bb33:
  %t200 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v2, ptr %l2)
  store { i64, ptr } %t200, ptr %l90
  br label %bb34
bb34:
  call void @__olang_scope_close(ptr %s0)
  %t201 = load { i64, ptr }, ptr %l90, !tbaa !27
  store { i64, ptr } %t201, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i32, %"compiler/eval:Image" } @compiler_2finterp_2ecompiler_2finterp_3aExec_2ebakeMutable(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l3 = alloca %"compiler/eval:Image"
  %l4 = alloca %"compiler/eval:Image"
  %l9 = alloca %"compiler/eval:Image"
  %l10 = alloca i32
  %l13 = alloca i64
  %l15 = alloca i1
  %l17 = alloca %"compiler/eval:Blob"
  %l19 = alloca %"compiler/eval:Blob"
  %l21 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca { i32, %"compiler/eval:Image" }
  %t34 = alloca %"compiler/eval:Blob", align 8
  %t36 = alloca %"compiler/eval:Blob", align 8
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = getelementptr %"compiler/interp:Exec", ptr %a0, i32 0, i32 4
  %t9 = call { i32, %"compiler/eval:Image" } @compiler_2feval_2ecompiler_2feval_3aMachine_2eImage(ptr %v0, ptr %v1, ptr %t3, i64 %a1, i32 %a2, i1 true)
  %t10 = extractvalue { i32, %"compiler/eval:Image" } %t9, 1
  %t11 = extractvalue { i32, %"compiler/eval:Image" } %t9, 0
  store i32 %t11, ptr %l10
  %t12 = icmp ne i32 %t11, 0
  br i1 %t12, label %bb2, label %ok.13, !prof !99
ok.13:
  store %"compiler/eval:Image" %t10, ptr %l9
  br label %bb1
bb1:
  %t14 = load %"compiler/eval:Image", ptr %l9
  store %"compiler/eval:Image" %t14, ptr %l4
  br label %bb3
bb2:
  %t15 = load i32, ptr %l10, !tbaa !23
  %t16 = lshr i32 %t15, 16
  %t17 = and i32 %t15, 65535
  %t18 = icmp eq i32 %t16, 1
  %t19 = select i1 %t18, i32 1, i32 0
  %t20 = icmp eq i32 %t15, 0
  %t21 = shl i32 %t19, 16
  %t22 = or i32 %t21, %t17
  %t23 = select i1 %t20, i32 0, i32 %t22
  call void @__olang_scope_close(ptr %s0)
  %t25 = insertvalue { i32, %"compiler/eval:Image" } zeroinitializer, i32 %t23, 0
  store { i32, %"compiler/eval:Image" } %t25, ptr %rv
  br label %ret
bb3:
  %t26 = load %"compiler/eval:Image", ptr %l4
  store %"compiler/eval:Image" %t26, ptr %l3
  %t27 = getelementptr %"compiler/eval:Image", ptr %l3, i32 0, i32 0
  %t29 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aBlob_3e_2eLen_3ccompiler_2feval_3aBlob_3e(ptr %v1, ptr %t27)
  store i64 %t29, ptr %l13
  br label %bb4
bb4:
  %t30 = load i64, ptr %l13, !tbaa !24
  %t31 = icmp ne i64 %t30, 1
  br i1 %t31, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l15, !tbaa !21
  br label %bb10
bb6:
  %t33 = getelementptr %"compiler/eval:Image", ptr %l3, i32 0, i32 0
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aBlob_3e_2eAt_3ccompiler_2feval_3aBlob_3e(ptr %t34, ptr %v1, ptr %v1, ptr %t33, i64 0)
  call void @llvm.memmove.p0.p0.i64(ptr %l17, ptr %t34, i64 272, i1 false)
  br label %bb7
bb7:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2feval_3aBlob(ptr %t36, ptr %s0, ptr %l17)
  call void @llvm.memmove.p0.p0.i64(ptr %l19, ptr %t36, i64 272, i1 false)
  br label %bb8
bb8:
  %t38 = getelementptr %"compiler/eval:Blob", ptr %l19, i32 0, i32 3
  %t40 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v1, ptr %t38)
  store i64 %t40, ptr %l21
  br label %bb9
bb9:
  %t41 = load i64, ptr %l21, !tbaa !24
  %t42 = icmp ne i64 %t41, 0
  store i1 %t42, ptr %l15, !tbaa !21
  br label %bb10
bb10:
  %t44 = load i1, ptr %l15, !tbaa !21
  br i1 %t44, label %bb11, label %bb12
bb11:
  call void @__olang_scope_close(ptr %s0)
  %t46 = insertvalue { i32, %"compiler/eval:Image" } zeroinitializer, i32 65536, 0
  store { i32, %"compiler/eval:Image" } %t46, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  %t47 = getelementptr %"compiler/eval:Image", ptr %l3, i32 0, i32 2
  store i1 true, ptr %t47, !tbaa !21
  %t48 = load %"compiler/eval:Image", ptr %l3
  call void @__olang_scope_close(ptr %s0)
  %t50 = insertvalue { i32, %"compiler/eval:Image" } zeroinitializer, %"compiler/eval:Image" %t48, 1
  store { i32, %"compiler/eval:Image" } %t50, ptr %rv
  br label %ret
ret:
  %rr = load { i32, %"compiler/eval:Image" }, ptr %rv
  ret { i32, %"compiler/eval:Image" } %rr
}

define dso_local i1 @compiler_2finterp_2ecompiler_2finterp_3aExec_2ebuildDefault(ptr %v0, ptr %a0, i64 %a1, i32 %a2, i1 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca i64
  %l16 = alloca ptr
  %l19 = alloca i1
  %l22 = alloca i1
  %l35 = alloca i32
  %l40 = alloca i32
  %l45 = alloca i32
  %l48 = alloca i32
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  br i1 %a3, label %bb1, label %bb2
bb1:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/interp:Exec", ptr %t4, i32 0, i32 0
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t9 = getelementptr %"compiler/generic:Program", ptr %t7, i32 0, i32 0
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = getelementptr %"compiler/load:Loader", ptr %t10, i32 0, i32 10
  %t16 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t12, i64 %a1)
  store ptr %t16, ptr %l16
  br label %bb4
bb4:
  %t17 = load ptr, ptr %l16, !tbaa !29
  store ptr %t17, ptr %l4, !tbaa !29
  %t18 = load ptr, ptr %l4, !tbaa !29
  %t20 = getelementptr %"compiler/load:Module", ptr %t18, i32 0, i32 3
  %t21 = load i1, ptr %t20, !tbaa !21
  br i1 %t21, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l19, !tbaa !21
  br label %bb8
bb6:
  %t23 = load ptr, ptr %l4, !tbaa !29
  %t25 = getelementptr %"compiler/load:Module", ptr %t23, i32 0, i32 2
  %t26 = load { i64, ptr }, ptr %t25, !tbaa !27
  %t28 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t26, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d91, i32 0, i32 1) })
  store i1 %t28, ptr %l22
  br label %bb7
bb7:
  %t29 = load i1, ptr %l22, !tbaa !21
  store i1 %t29, ptr %l19, !tbaa !21
  br label %bb8
bb8:
  %t30 = load i1, ptr %l19, !tbaa !21
  br i1 %t30, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  store %olang.scope zeroinitializer, ptr %s3
  %t32 = insertvalue [5 x { i64, ptr }] undef, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d92, i32 0, i32 1) }, 0
  %t33 = insertvalue [5 x { i64, ptr }] %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d93, i32 0, i32 1) }, 1
  %t34 = insertvalue [5 x { i64, ptr }] %t33, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d94, i32 0, i32 1) }, 2
  %t35 = insertvalue [5 x { i64, ptr }] %t34, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d95, i32 0, i32 1) }, 3
  %t36 = insertvalue [5 x { i64, ptr }] %t35, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d96, i32 0, i32 1) }, 4
  %t38 = call ptr @__olang_scope_alloc_a(ptr %s3, i64 80, i64 8)
  store [5 x { i64, ptr }] %t36, ptr %t38
  store ptr %t38, ptr %l5
  store i64 0, ptr %l6, !tbaa !24
  %t40 = load ptr, ptr %l5
  store i64 5, ptr %l7, !tbaa !24
  br label %bb12
bb12:
  %t43 = load i64, ptr %l6, !tbaa !24
  %t44 = load i64, ptr %l7, !tbaa !24
  %t47 = icmp slt i64 %t43, %t44
  %t49 = xor i1 %t47, true
  br i1 %t49, label %bb13, label %bb14
bb13:
  br label %bb21
bb14:
  br label %bb15
bb15:
  %t51 = load ptr, ptr %l5
  %t52 = load i64, ptr %l6, !tbaa !24
  %t55 = getelementptr [5 x { i64, ptr }], ptr %t51, i64 0, i64 %t52
  %t56 = load { i64, ptr }, ptr %t55, !tbaa !37
  %t58 = load i32, ptr %l2, !tbaa !23
  store i32 %t58, ptr %l35, !tbaa !23
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/interp:Exec", ptr %t59, i32 0, i32 0
  %t62 = load ptr, ptr %t61, !tbaa !29
  %t64 = getelementptr %"compiler/generic:Program", ptr %t62, i32 0, i32 2
  %t66 = load ptr, ptr @__olang_prog_scope
  %t69 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %t66, ptr %t64, { i64, ptr } %t56)
  store i32 %t69, ptr %l40
  br label %bb16
bb16:
  %t70 = load i32, ptr %l35, !tbaa !23
  %t71 = load i32, ptr %l40, !tbaa !23
  %t72 = icmp eq i32 %t70, %t71
  br i1 %t72, label %bb17, label %bb18
bb17:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb18:
  br label %bb19
bb19:
  br label %bb20
bb20:
  %t75 = load i64, ptr %l6, !tbaa !24
  %t77 = add i64 %t75, 1
  store i64 %t77, ptr %l6, !tbaa !24
  br label %bb12
bb21:
  call void @__olang_scope_close(ptr %s3)
  %t79 = load i32, ptr %l2, !tbaa !23
  store i32 %t79, ptr %l45, !tbaa !23
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"compiler/interp:Exec", ptr %t80, i32 0, i32 0
  %t83 = load ptr, ptr %t82, !tbaa !29
  %t85 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePreludeType(ptr %v0, ptr %s0, ptr %s0, ptr %t83, { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d97, i32 0, i32 1) }, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d98, i32 0, i32 1) })
  store i32 %t85, ptr %l48
  br label %bb22
bb22:
  %t86 = load i32, ptr %l45, !tbaa !23
  %t87 = load i32, ptr %l48, !tbaa !23
  %t88 = icmp eq i32 %t86, %t87
  call void @__olang_scope_close(ptr %s0)
  store i1 %t88, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2finterp_2ecompiler_2finterp_3aExec_2ecallee(ptr %v0, ptr %v1, ptr %a0, { i64, [7 x i64] } %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [7 x i64] }
  %l3 = alloca { i64, [2 x i64] }
  %l4 = alloca i64
  %l5 = alloca ptr
  %l17 = alloca i1
  %l25 = alloca ptr
  %l27 = alloca ptr
  %l28 = alloca i64
  %l29 = alloca i64
  %l34 = alloca { i64, ptr }
  %l35 = alloca { i64, ptr }
  %l39 = alloca i64
  store ptr %a0, ptr %l0
  store { i64, [7 x i64] } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [7 x i64] }, ptr %l1
  %t3 = extractvalue { i64, [7 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 0
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = getelementptr { i64, [7 x i64] }, ptr %l1, i32 0, i32 1
  %t7 = getelementptr { { i64, [2 x i64] }, i32 }, ptr %t6, i32 0, i32 0
  %t8 = load { i64, [2 x i64] }, ptr %t7
  store { i64, [2 x i64] } %t8, ptr %l3
  br label %bb3
bb2:
  br label %bb5
bb3:
  %t11 = load { i64, [2 x i64] }, ptr %l3
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2ePush_3ccompiler_2fmir_3aFnKey_3e(ptr %v1, ptr %a2, { i64, [2 x i64] } %t11)
  br label %bb4
bb4:
  br label %bb29
bb5:
  %t14 = load { i64, [7 x i64] }, ptr %l1
  %t16 = extractvalue { i64, [7 x i64] } %t14, 0
  %t17 = icmp eq i64 %t16, 1
  br i1 %t17, label %bb6, label %bb7
bb6:
  %t19 = getelementptr { i64, [7 x i64] }, ptr %l1, i32 0, i32 1
  %t20 = getelementptr { i64, i32 }, ptr %t19, i32 0, i32 0
  %t21 = load i64, ptr %t20
  store i64 %t21, ptr %l4, !tbaa !24
  br label %bb8
bb7:
  br label %bb22
bb8:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/interp:Exec", ptr %t23, i32 0, i32 8
  %t26 = load i64, ptr %l4, !tbaa !24
  %t29 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t25, i64 %t26)
  store i1 %t29, ptr %l17
  br label %bb9
bb9:
  %t30 = load i1, ptr %l17, !tbaa !21
  %t31 = xor i1 %t30, true
  br i1 %t31, label %bb10, label %bb11
bb10:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/interp:Exec", ptr %t33, i32 0, i32 8
  %t36 = load i64, ptr %l4, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t35, i64 %t36, i1 true)
  br label %bb12
bb11:
  br label %bb21
bb12:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/interp:Exec", ptr %t39, i32 0, i32 0
  %t42 = load ptr, ptr %t41, !tbaa !29
  %t43 = load i64, ptr %l4, !tbaa !24
  %t46 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t42, i64 %t43)
  store ptr %t46, ptr %l25
  br label %bb13
bb13:
  %t47 = load ptr, ptr %l25, !tbaa !29
  store ptr %t47, ptr %l5, !tbaa !29
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/interp:Exec", ptr %t48, i32 0, i32 4
  store ptr %t50, ptr %l27, !tbaa !29
  %t51 = load i64, ptr %l4, !tbaa !24
  store i64 %t51, ptr %l28, !tbaa !24
  %t52 = ptrtoint ptr %v0 to i64
  store i64 %t52, ptr %l29, !tbaa !24
  %t53 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std_2fprelude_2ftext_3aString_26_3e_2e1
  br i1 %t53, label %bb14, label %bb15
bb14:
  %t55 = call ptr @__olang_region_make(ptr %v0)
  %t56 = ptrtoint ptr %t55 to i64
  store i64 %t56, ptr %l29, !tbaa !24
  br label %bb15
bb15:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/interp:Exec", ptr %t57, i32 0, i32 0
  %t60 = load ptr, ptr %t59, !tbaa !29
  %t61 = load i64, ptr %l4, !tbaa !24
  %t62 = load i64, ptr %l29
  %t63 = inttoptr i64 %t62 to ptr
  %t66 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eExternSymbol(ptr %v0, ptr %t63, ptr %t60, i64 %t61)
  store { i64, ptr } %t66, ptr %l34
  br label %bb16
bb16:
  %t67 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t68 = load i64, ptr %l29
  %t69 = inttoptr i64 %t68 to ptr
  %t70 = extractvalue { i64, ptr } %t67, 0
  %t71 = extractvalue { i64, ptr } %t67, 1
  %t72 = mul i64 %t70, 1
  %t73 = call ptr @__olang_scope_alloc(ptr %t69, i64 %t72)
  call void @llvm.memcpy.p0.p0.i64(ptr %t73, ptr %t71, i64 %t72, i1 false)
  %t74 = insertvalue { i64, ptr } undef, i64 %t70, 0
  %t75 = insertvalue { i64, ptr } %t74, ptr %t73, 1
  store { i64, ptr } %t75, ptr %l35, !tbaa !27
  %t76 = load ptr, ptr %l5, !tbaa !29
  %t78 = getelementptr %"compiler/ast:Func", ptr %t76, i32 0, i32 3
  %t79 = load ptr, ptr %t78, !tbaa !29
  %t81 = getelementptr %"compiler/ast:Sig", ptr %t79, i32 0, i32 6
  %t82 = load i1, ptr %t81, !tbaa !21
  br i1 %t82, label %bb17, label %bb18
bb17:
  %t84 = load ptr, ptr %l5, !tbaa !29
  %t86 = getelementptr %"compiler/ast:Func", ptr %t84, i32 0, i32 3
  %t87 = load ptr, ptr %t86, !tbaa !29
  %t89 = getelementptr %"compiler/ast:Sig", ptr %t87, i32 0, i32 0
  %t90 = load { i64, ptr }, ptr %t89, !tbaa !27
  %t92 = extractvalue { i64, ptr } %t90, 0
  store i64 %t92, ptr %l39, !tbaa !24
  br label %bb19
bb18:
  store i64 -1, ptr %l39, !tbaa !24
  br label %bb19
bb19:
  %t94 = load ptr, ptr %l27, !tbaa !29
  %t95 = load i64, ptr %l28, !tbaa !24
  %t96 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t97 = load i64, ptr %l39, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eDefineExtern(ptr %v0, ptr %v0, ptr %t94, i64 %t95, { i64, ptr } %t96, i64 %t97)
  br label %bb20
bb20:
  br label %bb21
bb21:
  br label %bb29
bb22:
  %t98 = load { i64, [7 x i64] }, ptr %l1
  %t100 = extractvalue { i64, [7 x i64] } %t98, 0
  %t101 = icmp eq i64 %t100, 2
  br i1 %t101, label %bb23, label %bb24
bb23:
  br label %bb27
bb24:
  %t103 = load { i64, [7 x i64] }, ptr %l1
  %t105 = extractvalue { i64, [7 x i64] } %t103, 0
  %t106 = icmp eq i64 %t105, 3
  br i1 %t106, label %bb25, label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb29
bb28:
  call void @__olang_check_failed(ptr @olang_loc_6b327bc23f54125b_df118949941dcc1f)
  unreachable
bb29:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2finterp_2ecompiler_2finterp_3aExec_2edtor(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l3 = alloca { i64, [2 x i64] }
  %l4 = alloca { i64, [2 x i64] }
  %l7 = alloca ptr
  %l8 = alloca i32
  %l9 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i32
  %l15 = alloca { i64, [2 x i64] }
  %l16 = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/interp:Exec", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  store ptr %t6, ptr %l7, !tbaa !29
  %t7 = load i32, ptr %l1, !tbaa !23
  store i32 %t7, ptr %l8, !tbaa !23
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/interp:Exec", ptr %t8, i32 0, i32 7
  %t11 = load i32, ptr %l1, !tbaa !23
  %t14 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e__H165e1ff795edcbb725e28dde18fd1dc2(ptr %v0, ptr %t10, i32 %t11)
  %t15 = extractvalue { i32, i64 } %t14, 1
  %t16 = extractvalue { i32, i64 } %t14, 0
  store i32 %t16, ptr %l14
  %t17 = icmp ne i32 %t16, 0
  br i1 %t17, label %bb2, label %ok.18, !prof !99
ok.18:
  store i64 %t15, ptr %l13
  br label %bb1
bb1:
  %t19 = load i64, ptr %l13, !tbaa !24
  store i64 %t19, ptr %l9, !tbaa !24
  br label %bb4
bb2:
  br label %bb3
bb3:
  store i64 -1, ptr %l9, !tbaa !24
  br label %bb4
bb4:
  %t20 = load ptr, ptr %l7, !tbaa !29
  %t21 = load i32, ptr %l8, !tbaa !23
  %t22 = load i64, ptr %l9, !tbaa !24
  %t23 = call { i32, { i64, [2 x i64] } } @compiler_2fmir_2eFnKey_2eDropFn(ptr %v0, ptr %t20, i32 %t21, i64 %t22)
  %t24 = extractvalue { i32, { i64, [2 x i64] } } %t23, 1
  %t25 = extractvalue { i32, { i64, [2 x i64] } } %t23, 0
  store i32 %t25, ptr %l16
  %t26 = icmp ne i32 %t25, 0
  br i1 %t26, label %bb6, label %ok.27, !prof !99
ok.27:
  store { i64, [2 x i64] } %t24, ptr %l15
  br label %bb5
bb5:
  %t28 = load { i64, [2 x i64] }, ptr %l15
  store { i64, [2 x i64] } %t28, ptr %l4
  br label %bb8
bb6:
  br label %bb7
bb7:
  br label %ret
bb8:
  %t29 = load { i64, [2 x i64] }, ptr %l4
  store { i64, [2 x i64] } %t29, ptr %l3
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/interp:Exec", ptr %t30, i32 0, i32 4
  %t33 = load i32, ptr %l1, !tbaa !23
  %t34 = load { i64, [2 x i64] }, ptr %l3
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eDefineDestructor(ptr %v0, ptr %t32, i32 %t33, { i64, [2 x i64] } %t34)
  br label %bb9
bb9:
  %t39 = load { i64, [2 x i64] }, ptr %l3
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2ePush_3ccompiler_2fmir_3aFnKey_3e(ptr %v1, ptr %a2, { i64, [2 x i64] } %t39)
  br label %bb10
bb10:
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2finterp_2ecompiler_2finterp_3aExec_2eerrorName(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l6 = alloca i32
  %l7 = alloca i64
  %l10 = alloca ptr
  %l15 = alloca i32
  %l16 = alloca { i64, ptr }
  %l22 = alloca i1
  %l32 = alloca { i64, ptr }
  %l35 = alloca i32
  %l40 = alloca i32
  %l45 = alloca i64
  %l51 = alloca ptr
  %l60 = alloca { i64, ptr }
  %l66 = alloca { i64, ptr }
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
  %t3 = getelementptr %"compiler/interp:Exec", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  store ptr %t6, ptr %l10, !tbaa !29
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/interp:Exec", ptr %t7, i32 0, i32 0
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = getelementptr %"compiler/generic:Program", ptr %t10, i32 0, i32 2
  %t16 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t12, i32 %a2)
  store i32 %t16, ptr %l15
  br label %bb1
bb1:
  %t17 = load ptr, ptr %l10, !tbaa !29
  %t18 = load i32, ptr %l15, !tbaa !23
  %t19 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t17, i32 %t18)
  store { i64, ptr } %t19, ptr %l16
  br label %bb2
bb2:
  %t20 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t20, ptr %l3, !tbaa !27
  %t21 = load i64, ptr %l1, !tbaa !24
  %t23 = ashr i64 %t21, 16
  %t25 = sub i64 %t23, 1
  store i64 %t25, ptr %l4, !tbaa !24
  %t27 = load i64, ptr %l4, !tbaa !24
  %t29 = icmp slt i64 %t27, 0
  br i1 %t29, label %bb3, label %bb4
bb3:
  store i1 true, ptr %l22, !tbaa !21
  br label %bb5
bb4:
  %t31 = load i64, ptr %l4, !tbaa !24
  %t32 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t34 = extractvalue { i64, ptr } %t32, 0
  %t37 = icmp sge i64 %t31, %t34
  store i1 %t37, ptr %l22, !tbaa !21
  br label %bb5
bb5:
  %t39 = load i1, ptr %l22, !tbaa !21
  br i1 %t39, label %bb6, label %bb7
bb6:
  %t40 = load i64, ptr %l1, !tbaa !24
  %t41 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d99, i32 0, i32 1) }, 1
  %t42 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d99, i32 0, i32 1) }, 0
  %t44 = call i64 @__olang_fmt_i64(ptr null, i64 %t40)
  %t45 = add i64 %t42, %t44
  %t46 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t45)
  call void @olang_textcopy(ptr %t46, ptr %t41, i64 %t42)
  %t47 = getelementptr i8, ptr %t46, i64 %t42
  %t48 = call i64 @__olang_fmt_i64(ptr %t47, i64 %t40)
  %t49 = insertvalue { i64, ptr } undef, i64 %t45, 0
  %t50 = insertvalue { i64, ptr } %t49, ptr %t46, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t50, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/interp:Exec", ptr %t52, i32 0, i32 0
  %t55 = load ptr, ptr %t54, !tbaa !29
  %t57 = getelementptr %"compiler/generic:Program", ptr %t55, i32 0, i32 2
  %t58 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t58, ptr %l32, !tbaa !27
  %t59 = load i64, ptr %l4, !tbaa !24
  %t61 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !27
  %t63 = getelementptr i32, ptr %t62, i64 %t59
  %t64 = load i32, ptr %t63, !tbaa !33
  %t67 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t57, i32 %t64)
  store i32 %t67, ptr %l35
  br label %bb9
bb9:
  %t68 = load i32, ptr %l35, !tbaa !23
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr %"compiler/interp:Exec", ptr %t69, i32 0, i32 0
  %t72 = load ptr, ptr %t71, !tbaa !29
  %t74 = getelementptr %"compiler/generic:Program", ptr %t72, i32 0, i32 2
  %t78 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t74, i32 %t68)
  store i32 %t78, ptr %l40
  br label %bb10
bb10:
  %t79 = load i32, ptr %l40, !tbaa !23
  store i32 %t79, ptr %l6, !tbaa !23
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"compiler/interp:Exec", ptr %t80, i32 0, i32 0
  %t83 = load ptr, ptr %t82, !tbaa !29
  %t85 = getelementptr %"compiler/generic:Program", ptr %t83, i32 0, i32 2
  %t86 = load i32, ptr %l6, !tbaa !23
  %t89 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %t85, i32 %t86)
  store i64 %t89, ptr %l45
  br label %bb11
bb11:
  %t90 = load i64, ptr %l45, !tbaa !24
  store i64 %t90, ptr %l7, !tbaa !24
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t93 = getelementptr %"compiler/interp:Exec", ptr %t91, i32 0, i32 0
  %t94 = load ptr, ptr %t93, !tbaa !29
  %t96 = getelementptr %"compiler/generic:Program", ptr %t94, i32 0, i32 0
  %t97 = load ptr, ptr %t96, !tbaa !29
  %t99 = getelementptr %"compiler/load:Loader", ptr %t97, i32 0, i32 10
  %t100 = load i64, ptr %l7, !tbaa !24
  %t103 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t99, i64 %t100)
  store ptr %t103, ptr %l51
  br label %bb12
bb12:
  %t104 = load ptr, ptr %l51, !tbaa !29
  %t106 = getelementptr %"compiler/load:Module", ptr %t104, i32 0, i32 2
  %t107 = load { i64, ptr }, ptr %t106, !tbaa !27
  %t108 = load i64, ptr %l7, !tbaa !24
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t111 = getelementptr %"compiler/interp:Exec", ptr %t109, i32 0, i32 0
  %t112 = load ptr, ptr %t111, !tbaa !29
  %t114 = getelementptr %"compiler/generic:Program", ptr %t112, i32 0, i32 0
  %t115 = load ptr, ptr %t114, !tbaa !29
  %t117 = getelementptr %"compiler/load:Loader", ptr %t115, i32 0, i32 12
  %t118 = load i64, ptr %t117, !tbaa !24
  %t121 = icmp eq i64 %t108, %t118
  %t124 = call { i64, ptr } @compiler_2fload_2eErrQualifier(ptr %v0, ptr %s0, { i64, ptr } %t107, i1 %t121)
  store { i64, ptr } %t124, ptr %l60
  br label %bb13
bb13:
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t127 = getelementptr %"compiler/interp:Exec", ptr %t125, i32 0, i32 0
  %t128 = load ptr, ptr %t127, !tbaa !29
  %t129 = load i32, ptr %l6, !tbaa !23
  %t130 = load i64, ptr %l1, !tbaa !24
  %t132 = and i64 %t130, 65535
  %t136 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorWordName(ptr %v0, ptr %s0, ptr %t128, i32 %t129, i64 %t132)
  store { i64, ptr } %t136, ptr %l66
  br label %bb14
bb14:
  %t137 = load { i64, ptr }, ptr %l60, !tbaa !27
  %t138 = extractvalue { i64, ptr } %t137, 1
  %t139 = extractvalue { i64, ptr } %t137, 0
  %t140 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t141 = extractvalue { i64, ptr } %t140, 1
  %t142 = extractvalue { i64, ptr } %t140, 0
  %t143 = add i64 %t139, %t142
  %t144 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t143)
  call void @olang_textcopy(ptr %t144, ptr %t138, i64 %t139)
  %t145 = getelementptr i8, ptr %t144, i64 %t139
  call void @olang_textcopy(ptr %t145, ptr %t141, i64 %t142)
  %t146 = insertvalue { i64, ptr } undef, i64 %t143, 0
  %t147 = insertvalue { i64, ptr } %t146, ptr %t144, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t147, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i32, i64 } @compiler_2finterp_2ecompiler_2finterp_3aExec_2eintOf(ptr %v0, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca { i64, [2 x i64] }
  %l11 = alloca ptr
  %l12 = alloca { i64, [2 x i64] }
  %l16 = alloca { i64, [5 x i64] }
  %l26 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca { i32, i64 }
  %t5 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = trunc i64 %a1 to i32
  store { i64, [2 x i64] } zeroinitializer, ptr %t5
  %t6 = getelementptr { i64, [2 x i64] }, ptr %t5, i32 0, i32 0
  store i64 0, ptr %t6
  %t8 = insertvalue { i32 } undef, i32 %t3, 0
  %t9 = getelementptr { i64, [2 x i64] }, ptr %t5, i32 0, i32 1
  store { i32 } %t8, ptr %t9
  %t10 = load { i64, [2 x i64] }, ptr %t5
  store { i64, [2 x i64] } %t10, ptr %l3
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t13 = load { i64, [2 x i64] }, ptr %l3
  call void @compiler_2finterp_2ecompiler_2finterp_3aExec_2eNeed(ptr %v0, ptr %t12, { i64, [2 x i64] } %t13)
  br label %bb1
bb1:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/interp:Exec", ptr %t16, i32 0, i32 4
  store ptr %t18, ptr %l11, !tbaa !29
  %t19 = load { i64, [2 x i64] }, ptr %l3
  store { i64, [2 x i64] } %t19, ptr %l12
  %t20 = icmp sge i64 0, 0
  br i1 %t20, label %bb2, label %bb3
bb2:
  %t22 = icmp sle i64 0, 1152921504606846975
  br i1 %t22, label %bb4, label %bb5
bb3:
  call void @__olang_check_failed(ptr @olang_loc_4dbbfc1aefa6e21c_e99ccf60d5e11690)
  unreachable
bb4:
  %t24 = mul i64 0, 8
  %t25 = insertvalue { i64, ptr } undef, i64 0, 0
  %t26 = insertvalue { i64, ptr } %t25, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t27 = load ptr, ptr %l11, !tbaa !29
  %t28 = load { i64, [2 x i64] }, ptr %l12
  %t30 = call { i64, [5 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2eEval(ptr %v0, ptr %s0, ptr %v0, ptr %t27, { i64, [2 x i64] } %t28, { i64, ptr } %t26)
  store { i64, [5 x i64] } %t30, ptr %l16
  br label %bb6
bb5:
  call void @__olang_check_failed(ptr @olang_loc_4dbbfc1aefa6e21c_e99ccf60d5e11690)
  unreachable
bb6:
  %t31 = load { i64, [5 x i64] }, ptr %l16
  %t33 = extractvalue { i64, [5 x i64] } %t31, 0
  %t34 = icmp eq i64 %t33, 0
  %t36 = xor i1 %t34, true
  br i1 %t36, label %bb7, label %bb8
bb7:
  call void @__olang_scope_close(ptr %s0)
  %t39 = insertvalue { i32, i64 } zeroinitializer, i32 65536, 0
  store { i32, i64 } %t39, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/interp:Exec", ptr %t40, i32 0, i32 4
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/interp:Exec", ptr %t43, i32 0, i32 4
  %t46 = getelementptr %"compiler/eval:Machine", ptr %t45, i32 0, i32 18
  %t47 = load %"compiler/eval:Ptr", ptr %t46
  %t52 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eInt(ptr %v0, ptr %t42, %"compiler/eval:Ptr" %t47, i32 %a2)
  store i64 %t52, ptr %l26
  br label %bb10
bb10:
  call void @__olang_scope_close(ptr %s0)
  %t53 = load i64, ptr %l26, !tbaa !24
  %t54 = insertvalue { i32, i64 } zeroinitializer, i64 %t53, 1
  store { i32, i64 } %t54, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i64 }, ptr %rv
  ret { i32, i64 } %rr
}

define dso_local void @compiler_2finterp_2ecompiler_2finterp_3aExec_2ereach(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca %"compiler/mir:Call"
  %l6 = alloca ptr
  %l7 = alloca i64
  %l9 = alloca i32
  %l10 = alloca ptr
  %l11 = alloca i64
  %l12 = alloca %"compiler/mir:Task"
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l20 = alloca ptr
  %l21 = alloca i64
  %l22 = alloca { i64, [21 x i64] }
  %l25 = alloca i64
  %l27 = alloca i64
  %l32 = alloca %"compiler/mir:Call"
  %l42 = alloca i64
  %l44 = alloca i64
  %l49 = alloca i32
  %l54 = alloca %"compiler/mir:Local"
  %l60 = alloca i1
  %l62 = alloca i1
  %l67 = alloca i1
  %l75 = alloca i64
  %l77 = alloca i64
  %l82 = alloca %"compiler/mir:Task"
  %l90 = alloca i64
  %l94 = alloca i64
  %l97 = alloca i64
  %l118 = alloca ptr
  %l121 = alloca i64
  %l123 = alloca i64
  %l128 = alloca { i64, [21 x i64] }
  %l131 = alloca { i64, [21 x i64] }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/mir:Fn", ptr %t1, i32 0, i32 14
  store ptr %t3, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb1
bb1:
  %t5 = load i64, ptr %l4, !tbaa !24
  store i64 %t5, ptr %l25, !tbaa !24
  %t6 = load ptr, ptr %l3, !tbaa !29
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCall_3e_2eLen_3ccompiler_2fmir_3aCall_3e(ptr %v1, ptr %t6)
  store i64 %t8, ptr %l27
  br label %bb2
bb2:
  %t9 = load i64, ptr %l25, !tbaa !24
  %t10 = load i64, ptr %l27, !tbaa !24
  %t11 = icmp slt i64 %t9, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb3, label %bb4
bb3:
  br label %bb9
bb4:
  br label %bb5
bb5:
  %t15 = load ptr, ptr %l3, !tbaa !29
  %t16 = load i64, ptr %l4, !tbaa !24
  %t19 = call %"compiler/mir:Call" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCall_3e_2eAt_3ccompiler_2fmir_3aCall_3e(ptr %v1, ptr %t15, i64 %t16)
  store %"compiler/mir:Call" %t19, ptr %l32
  br label %bb6
bb6:
  %t20 = load %"compiler/mir:Call", ptr %l32
  store %"compiler/mir:Call" %t20, ptr %l5
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/mir:Call", ptr %l5, i32 0, i32 0
  %t23 = load { i64, [7 x i64] }, ptr %t22
  %t24 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2finterp_2ecompiler_2finterp_3aExec_2ecallee(ptr %v0, ptr %v2, ptr %t21, { i64, [7 x i64] } %t23, ptr %t24)
  br label %bb7
bb7:
  br label %bb8
bb8:
  %t28 = load i64, ptr %l4, !tbaa !24
  %t30 = add i64 %t28, 1
  store i64 %t30, ptr %l4, !tbaa !24
  br label %bb1
bb9:
  %t32 = load ptr, ptr %l1, !tbaa !29
  %t34 = getelementptr %"compiler/mir:Fn", ptr %t32, i32 0, i32 25
  %t35 = load i1, ptr %t34, !tbaa !21
  br i1 %t35, label %bb10, label %bb11
bb10:
  %t37 = load ptr, ptr %l1, !tbaa !29
  %t39 = getelementptr %"compiler/mir:Fn", ptr %t37, i32 0, i32 5
  store ptr %t39, ptr %l6, !tbaa !29
  store i64 0, ptr %l7, !tbaa !24
  br label %bb12
bb11:
  br label %bb30
bb12:
  %t41 = load i64, ptr %l7, !tbaa !24
  store i64 %t41, ptr %l42, !tbaa !24
  %t42 = load ptr, ptr %l6, !tbaa !29
  %t44 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eLen_3ccompiler_2fmir_3aLocalId_3e(ptr %v1, ptr %t42)
  store i64 %t44, ptr %l44
  br label %bb13
bb13:
  %t45 = load i64, ptr %l42, !tbaa !24
  %t46 = load i64, ptr %l44, !tbaa !24
  %t47 = icmp slt i64 %t45, %t46
  %t49 = xor i1 %t47, true
  br i1 %t49, label %bb14, label %bb15
bb14:
  br label %bb29
bb15:
  br label %bb16
bb16:
  %t51 = load ptr, ptr %l6, !tbaa !29
  %t52 = load i64, ptr %l7, !tbaa !24
  %t55 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eAt_3ccompiler_2fmir_3aLocalId_3e(ptr %v1, ptr %t51, i64 %t52)
  store i32 %t55, ptr %l49
  br label %bb17
bb17:
  %t56 = load i32, ptr %l49, !tbaa !23
  %t57 = load ptr, ptr %l1, !tbaa !29
  %t59 = getelementptr %"compiler/mir:Fn", ptr %t57, i32 0, i32 7
  %t62 = sext i32 %t56 to i64
  %t65 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v1, ptr %t59, i64 %t62)
  store %"compiler/mir:Local" %t65, ptr %l54
  br label %bb18
bb18:
  %t66 = getelementptr %"compiler/mir:Local", ptr %l54, i32 0, i32 2
  %t67 = load i32, ptr %t66, !tbaa !23
  store i32 %t67, ptr %l9, !tbaa !23
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr %"compiler/interp:Exec", ptr %t69, i32 0, i32 0
  %t72 = load ptr, ptr %t71, !tbaa !29
  %t74 = getelementptr %"compiler/generic:Program", ptr %t72, i32 0, i32 2
  %t75 = load i32, ptr %l9, !tbaa !23
  %t78 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t74, i32 %t75)
  store i1 %t78, ptr %l60
  br label %bb19
bb19:
  %t79 = load i1, ptr %l60, !tbaa !21
  %t80 = xor i1 %t79, true
  br i1 %t80, label %bb20, label %bb21
bb20:
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t84 = getelementptr %"compiler/interp:Exec", ptr %t82, i32 0, i32 0
  %t85 = load ptr, ptr %t84, !tbaa !29
  %t87 = getelementptr %"compiler/generic:Program", ptr %t85, i32 0, i32 2
  %t88 = load i32, ptr %l9, !tbaa !23
  %t91 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNeedsDrop(ptr %v0, ptr %t87, i32 %t88)
  store i1 %t91, ptr %l67
  br label %bb22
bb21:
  store i1 false, ptr %l62, !tbaa !21
  br label %bb23
bb22:
  %t92 = load i1, ptr %l67, !tbaa !21
  store i1 %t92, ptr %l62, !tbaa !21
  br label %bb23
bb23:
  %t93 = load i1, ptr %l62, !tbaa !21
  br i1 %t93, label %bb24, label %bb25
bb24:
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t95 = load i32, ptr %l9, !tbaa !23
  %t96 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2finterp_2ecompiler_2finterp_3aExec_2edtor(ptr %v0, ptr %v2, ptr %t94, i32 %t95, ptr %t96)
  br label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb27
bb27:
  br label %bb28
bb28:
  %t100 = load i64, ptr %l7, !tbaa !24
  %t102 = add i64 %t100, 1
  store i64 %t102, ptr %l7, !tbaa !24
  br label %bb12
bb29:
  br label %bb30
bb30:
  %t104 = load ptr, ptr %l1, !tbaa !29
  %t106 = getelementptr %"compiler/mir:Fn", ptr %t104, i32 0, i32 16
  store ptr %t106, ptr %l10, !tbaa !29
  store i64 0, ptr %l11, !tbaa !24
  br label %bb31
bb31:
  %t108 = load i64, ptr %l11, !tbaa !24
  store i64 %t108, ptr %l75, !tbaa !24
  %t109 = load ptr, ptr %l10, !tbaa !29
  %t111 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aTask_3e_2eLen_3ccompiler_2fmir_3aTask_3e(ptr %v1, ptr %t109)
  store i64 %t111, ptr %l77
  br label %bb32
bb32:
  %t112 = load i64, ptr %l75, !tbaa !24
  %t113 = load i64, ptr %l77, !tbaa !24
  %t114 = icmp slt i64 %t112, %t113
  %t116 = xor i1 %t114, true
  br i1 %t116, label %bb33, label %bb34
bb33:
  br label %bb39
bb34:
  br label %bb35
bb35:
  %t118 = load ptr, ptr %l10, !tbaa !29
  %t119 = load i64, ptr %l11, !tbaa !24
  %t122 = call %"compiler/mir:Task" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aTask_3e_2eAt_3ccompiler_2fmir_3aTask_3e(ptr %v1, ptr %t118, i64 %t119)
  store %"compiler/mir:Task" %t122, ptr %l82
  br label %bb36
bb36:
  %t123 = load %"compiler/mir:Task", ptr %l82
  store %"compiler/mir:Task" %t123, ptr %l12
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t125 = getelementptr %"compiler/mir:Task", ptr %l12, i32 0, i32 0
  %t126 = load { i64, [7 x i64] }, ptr %t125
  %t127 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2finterp_2ecompiler_2finterp_3aExec_2ecallee(ptr %v0, ptr %v2, ptr %t124, { i64, [7 x i64] } %t126, ptr %t127)
  br label %bb37
bb37:
  br label %bb38
bb38:
  %t131 = load i64, ptr %l11, !tbaa !24
  %t133 = add i64 %t131, 1
  store i64 %t133, ptr %l11, !tbaa !24
  br label %bb31
bb39:
  store i64 0, ptr %l13, !tbaa !24
  %t135 = load ptr, ptr %l1, !tbaa !29
  %t137 = getelementptr %"compiler/mir:Fn", ptr %t135, i32 0, i32 9
  %t139 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eLen_3ccompiler_2fmir_3aBasicBlock_3e(ptr %v1, ptr %t137)
  store i64 %t139, ptr %l90
  br label %bb40
bb40:
  %t140 = load i64, ptr %l90, !tbaa !24
  store i64 %t140, ptr %l14, !tbaa !24
  store i64 1, ptr %l15, !tbaa !24
  %t141 = load i64, ptr %l14, !tbaa !24
  %t142 = load i64, ptr %l13, !tbaa !24
  %t145 = icmp sgt i64 %t141, %t142
  br i1 %t145, label %bb41, label %bb42
bb41:
  %t147 = load i64, ptr %l15, !tbaa !24
  %t149 = icmp sgt i64 %t147, 0
  br i1 %t149, label %bb43, label %bb44
bb42:
  store i64 0, ptr %l94, !tbaa !24
  br label %bb46
bb43:
  %t151 = load i64, ptr %l14, !tbaa !24
  %t152 = load i64, ptr %l13, !tbaa !24
  %t155 = sub i64 %t151, %t152
  %t156 = load i64, ptr %l15, !tbaa !24
  %t159 = add i64 %t155, %t156
  %t161 = sub i64 %t159, 1
  %t162 = load i64, ptr %l15, !tbaa !24
  %t165 = sdiv i64 %t161, %t162
  store i64 %t165, ptr %l97, !tbaa !24
  br label %bb45
bb44:
  store i64 0, ptr %l97, !tbaa !24
  br label %bb45
bb45:
  %t167 = load i64, ptr %l97, !tbaa !24
  store i64 %t167, ptr %l94, !tbaa !24
  br label %bb46
bb46:
  %t168 = load i64, ptr %l94, !tbaa !24
  store i64 %t168, ptr %l16, !tbaa !24
  store i64 0, ptr %l17, !tbaa !24
  br label %bb47
bb47:
  %t169 = load i64, ptr %l17, !tbaa !24
  %t170 = load i64, ptr %l16, !tbaa !24
  %t173 = icmp slt i64 %t169, %t170
  %t175 = xor i1 %t173, true
  br i1 %t175, label %bb48, label %bb49
bb48:
  br label %bb62
bb49:
  br label %bb50
bb50:
  %t177 = load i64, ptr %l13, !tbaa !24
  %t178 = load i64, ptr %l17, !tbaa !24
  %t179 = load i64, ptr %l15, !tbaa !24
  %t182 = mul i64 %t178, %t179
  %t185 = add i64 %t177, %t182
  %t187 = load ptr, ptr %l1, !tbaa !29
  %t189 = getelementptr %"compiler/mir:Fn", ptr %t187, i32 0, i32 9
  %t193 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eRef_3ccompiler_2fmir_3aBasicBlock_3e(ptr %v1, ptr %v1, ptr %t189, i64 %t185)
  store ptr %t193, ptr %l118
  br label %bb51
bb51:
  %t194 = load ptr, ptr %l118, !tbaa !29
  %t197 = getelementptr %"compiler/mir:BasicBlock", ptr %t194, i32 0, i32 0
  store ptr %t197, ptr %l20, !tbaa !29
  store i64 0, ptr %l21, !tbaa !24
  br label %bb52
bb52:
  %t199 = load i64, ptr %l21, !tbaa !24
  store i64 %t199, ptr %l121, !tbaa !24
  %t200 = load ptr, ptr %l20, !tbaa !29
  %t202 = call i64 @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eLen(ptr %v1, ptr %t200)
  store i64 %t202, ptr %l123
  br label %bb53
bb53:
  %t203 = load i64, ptr %l121, !tbaa !24
  %t204 = load i64, ptr %l123, !tbaa !24
  %t205 = icmp slt i64 %t203, %t204
  %t207 = xor i1 %t205, true
  br i1 %t207, label %bb54, label %bb55
bb54:
  br label %bb60
bb55:
  br label %bb56
bb56:
  %t209 = load ptr, ptr %l20, !tbaa !29
  %t210 = load i64, ptr %l21, !tbaa !24
  %t213 = call { i64, [21 x i64] } @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eAt(ptr %v1, ptr %t209, i64 %t210)
  store { i64, [21 x i64] } %t213, ptr %l128
  br label %bb57
bb57:
  call void @llvm.memmove.p0.p0.i64(ptr %l22, ptr %l128, i64 176, i1 false)
  %t214 = load ptr, ptr %l0, !tbaa !29
  %t215 = load ptr, ptr %l1, !tbaa !29
  call void @llvm.memmove.p0.p0.i64(ptr %l131, ptr %l22, i64 176, i1 false)
  %t216 = load ptr, ptr %l2, !tbaa !29
  %t219 = load { i64, [21 x i64] }, ptr %l131
  call void @compiler_2finterp_2ecompiler_2finterp_3aExec_2ereachStmt(ptr %v0, ptr %v1, ptr %v2, ptr %t214, ptr %t215, { i64, [21 x i64] } %t219, ptr %t216)
  br label %bb58
bb58:
  br label %bb59
bb59:
  %t221 = load i64, ptr %l21, !tbaa !24
  %t223 = add i64 %t221, 1
  store i64 %t223, ptr %l21, !tbaa !24
  br label %bb52
bb60:
  br label %bb61
bb61:
  %t225 = load i64, ptr %l17, !tbaa !24
  %t227 = add i64 %t225, 1
  store i64 %t227, ptr %l17, !tbaa !24
  br label %bb47
bb62:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2finterp_2ecompiler_2finterp_3aExec_2ereachStmt(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, { i64, [21 x i64] } %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, [21 x i64] }
  %l3 = alloca ptr
  %l4 = alloca { i64, [2 x i64] }
  %l5 = alloca %"compiler/mir:Range"
  %l6 = alloca { i64, [4 x i64] }
  %l7 = alloca i64
  %l8 = alloca i32
  %l9 = alloca { i64, [21 x i64] }
  %l11 = alloca i1
  %l17 = alloca { i64, [21 x i64] }
  %l19 = alloca i1
  %l22 = alloca i1
  %l31 = alloca { i64, [4 x i64] }
  %l38 = alloca { i64, [21 x i64] }
  store ptr %a0, ptr %l0
  store { i64, [21 x i64] } %a2, ptr %l2
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  call void @llvm.memmove.p0.p0.i64(ptr %l9, ptr %l2, i64 176, i1 false)
  %t1 = load { i64, [21 x i64] }, ptr %l9
  %t2 = extractvalue { i64, [21 x i64] } %t1, 0
  %t3 = icmp eq i64 %t2, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = getelementptr { i64, [21 x i64] }, ptr %l2, i32 0, i32 1
  %t6 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } }, ptr %t5, i32 0, i32 2
  %t7 = load { i64, [15 x i64] }, ptr %t6
  %t9 = extractvalue { i64, [15 x i64] } %t7, 0
  %t10 = icmp eq i64 %t9, 10
  store i1 %t10, ptr %l11, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l11, !tbaa !21
  br label %bb3
bb3:
  %t12 = load i1, ptr %l11, !tbaa !21
  br i1 %t12, label %bb4, label %bb5
bb4:
  %t13 = getelementptr { i64, [21 x i64] }, ptr %l2, i32 0, i32 1
  %t14 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } }, ptr %t13, i32 0, i32 2
  %t15 = getelementptr { i64, [15 x i64] }, ptr %t14, i32 0, i32 1
  %t16 = getelementptr { { i64, [2 x i64] }, i32, { i64, [1 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range" }, ptr %t15, i32 0, i32 0
  %t17 = load { i64, [2 x i64] }, ptr %t16
  store { i64, [2 x i64] } %t17, ptr %l4
  br label %bb6
bb5:
  br label %bb8
bb6:
  %t19 = load ptr, ptr %l3, !tbaa !29
  %t20 = load { i64, [2 x i64] }, ptr %l4
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2ePush_3ccompiler_2fmir_3aFnKey_3e(ptr %v2, ptr %t19, { i64, [2 x i64] } %t20)
  br label %bb7
bb7:
  br label %bb39
bb8:
  call void @llvm.memmove.p0.p0.i64(ptr %l17, ptr %l2, i64 176, i1 false)
  %t23 = load { i64, [21 x i64] }, ptr %l17
  %t24 = extractvalue { i64, [21 x i64] } %t23, 0
  %t25 = icmp eq i64 %t24, 0
  br i1 %t25, label %bb9, label %bb10
bb9:
  %t27 = getelementptr { i64, [21 x i64] }, ptr %l2, i32 0, i32 1
  %t28 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } }, ptr %t27, i32 0, i32 2
  %t29 = load { i64, [15 x i64] }, ptr %t28
  %t31 = extractvalue { i64, [15 x i64] } %t29, 0
  %t32 = icmp eq i64 %t31, 3
  br i1 %t32, label %bb11, label %bb12
bb10:
  store i1 false, ptr %l19, !tbaa !21
  br label %bb14
bb11:
  %t34 = getelementptr { i64, [21 x i64] }, ptr %l2, i32 0, i32 1
  %t35 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } }, ptr %t34, i32 0, i32 2
  %t36 = getelementptr { i64, [15 x i64] }, ptr %t35, i32 0, i32 1
  %t37 = getelementptr { i32, i32, %"compiler/mir:Range" }, ptr %t36, i32 0, i32 0
  %t38 = load i32, ptr %t37, !range !{i32 0, i32 51}
  %t40 = trunc i64 41 to i32
  %t41 = icmp eq i32 %t38, %t40
  store i1 %t41, ptr %l22, !tbaa !21
  br label %bb13
bb12:
  store i1 false, ptr %l22, !tbaa !21
  br label %bb13
bb13:
  %t43 = load i1, ptr %l22, !tbaa !21
  store i1 %t43, ptr %l19, !tbaa !21
  br label %bb14
bb14:
  %t44 = load i1, ptr %l19, !tbaa !21
  br i1 %t44, label %bb15, label %bb16
bb15:
  %t45 = getelementptr { i64, [21 x i64] }, ptr %l2, i32 0, i32 1
  %t46 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } }, ptr %t45, i32 0, i32 2
  %t47 = getelementptr { i64, [15 x i64] }, ptr %t46, i32 0, i32 1
  %t48 = getelementptr { i32, i32, %"compiler/mir:Range" }, ptr %t47, i32 0, i32 2
  %t49 = load %"compiler/mir:Range", ptr %t48
  store %"compiler/mir:Range" %t49, ptr %l5
  br label %bb17
bb16:
  br label %bb29
bb17:
  %t53 = getelementptr %"compiler/mir:Fn", ptr %a1, i32 0, i32 11
  %t54 = getelementptr %"compiler/mir:Range", ptr %l5, i32 0, i32 0
  %t55 = load i32, ptr %t54, !tbaa !23
  %t57 = sext i32 %t55 to i64
  %t59 = add i64 %t57, 1
  %t62 = call { i64, [4 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2eAt_3ccompiler_2fmir_3aOperand_3e(ptr %v1, ptr %t53, i64 %t59)
  store { i64, [4 x i64] } %t62, ptr %l31
  br label %bb18
bb18:
  %t63 = load { i64, [4 x i64] }, ptr %l31
  store { i64, [4 x i64] } %t63, ptr %l6
  %t64 = load { i64, [4 x i64] }, ptr %l6
  %t66 = extractvalue { i64, [4 x i64] } %t64, 0
  %t67 = icmp eq i64 %t66, 2
  br i1 %t67, label %bb19, label %bb20
bb19:
  %t69 = getelementptr { i64, [4 x i64] }, ptr %l6, i32 0, i32 1
  %t70 = getelementptr { i32, i64 }, ptr %t69, i32 0, i32 1
  %t71 = load i64, ptr %t70
  store i64 %t71, ptr %l7, !tbaa !24
  br label %bb21
bb20:
  br label %bb23
bb21:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t74 = load i64, ptr %l7, !tbaa !24
  %t75 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2finterp_2ecompiler_2finterp_3aExec_2etable(ptr %v0, ptr %v2, ptr %t73, i64 %t74, ptr %t75)
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
  call void @__olang_check_failed(ptr @olang_loc_8a681f26571ed620_44a452bec848fe5c)
  unreachable
bb28:
  br label %bb39
bb29:
  call void @llvm.memmove.p0.p0.i64(ptr %l38, ptr %l2, i64 176, i1 false)
  %t79 = load { i64, [21 x i64] }, ptr %l38
  %t80 = extractvalue { i64, [21 x i64] } %t79, 0
  %t81 = icmp eq i64 %t80, 5
  br i1 %t81, label %bb30, label %bb31
bb30:
  %t83 = getelementptr { i64, [21 x i64] }, ptr %l2, i32 0, i32 1
  %t84 = getelementptr { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } }, ptr %t83, i32 0, i32 2
  %t85 = load i32, ptr %t84
  store i32 %t85, ptr %l8, !tbaa !23
  br label %bb32
bb31:
  br label %bb34
bb32:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t88 = load i32, ptr %l8, !tbaa !23
  %t89 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2finterp_2ecompiler_2finterp_3aExec_2edtor(ptr %v0, ptr %v2, ptr %t87, i32 %t88, ptr %t89)
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
  call void @__olang_check_failed(ptr @olang_loc_2bb6346af5de5a31_dbc53e9ffd61978d)
  unreachable
bb39:
  br label %ret
ret:
  ret void
}

define dso_local { i64, [5 x i64] } @compiler_2finterp_2ecompiler_2finterp_3aExec_2erun(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, [2 x i64] }
  %l10 = alloca ptr
  %l11 = alloca { i64, [2 x i64] }
  %l15 = alloca { i64, [5 x i64] }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, [5 x i64] }
  %t5 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = trunc i64 %a1 to i32
  store { i64, [2 x i64] } zeroinitializer, ptr %t5
  %t6 = getelementptr { i64, [2 x i64] }, ptr %t5, i32 0, i32 0
  store i64 0, ptr %t6
  %t8 = insertvalue { i32 } undef, i32 %t3, 0
  %t9 = getelementptr { i64, [2 x i64] }, ptr %t5, i32 0, i32 1
  store { i32 } %t8, ptr %t9
  %t10 = load { i64, [2 x i64] }, ptr %t5
  store { i64, [2 x i64] } %t10, ptr %l2
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t13 = load { i64, [2 x i64] }, ptr %l2
  call void @compiler_2finterp_2ecompiler_2finterp_3aExec_2eNeed(ptr %v0, ptr %t12, { i64, [2 x i64] } %t13)
  br label %bb1
bb1:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/interp:Exec", ptr %t16, i32 0, i32 4
  store ptr %t18, ptr %l10, !tbaa !29
  %t19 = load { i64, [2 x i64] }, ptr %l2
  store { i64, [2 x i64] } %t19, ptr %l11
  %t20 = icmp sge i64 0, 0
  br i1 %t20, label %bb2, label %bb3
bb2:
  %t22 = icmp sle i64 0, 1152921504606846975
  br i1 %t22, label %bb4, label %bb5
bb3:
  call void @__olang_check_failed(ptr @olang_loc_8c9ae6434c5565e7_656708b088a82c0b)
  unreachable
bb4:
  %t24 = mul i64 0, 8
  %t25 = insertvalue { i64, ptr } undef, i64 0, 0
  %t26 = insertvalue { i64, ptr } %t25, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t27 = load ptr, ptr %l10, !tbaa !29
  %t28 = load { i64, [2 x i64] }, ptr %l11
  %t30 = call { i64, [5 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2eEval(ptr %v0, ptr %s0, ptr %v1, ptr %t27, { i64, [2 x i64] } %t28, { i64, ptr } %t26)
  store { i64, [5 x i64] } %t30, ptr %l15
  br label %bb6
bb5:
  call void @__olang_check_failed(ptr @olang_loc_8c9ae6434c5565e7_656708b088a82c0b)
  unreachable
bb6:
  call void @__olang_scope_close(ptr %s0)
  %t31 = load { i64, [5 x i64] }, ptr %l15
  store { i64, [5 x i64] } %t31, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [5 x i64] }, ptr %rv
  ret { i64, [5 x i64] } %rr
}

define dso_local i1 @compiler_2finterp_2ecompiler_2finterp_3aExec_2eselected(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
  %l23 = alloca ptr
  %l25 = alloca { i64, ptr }
  %l30 = alloca ptr
  %l33 = alloca ptr
  %l42 = alloca { i64, ptr }
  %l43 = alloca ptr
  %l51 = alloca { i64, ptr }
  %l59 = alloca { i64, ptr }
  %l64 = alloca i1
  %l65 = alloca i1
  %l68 = alloca i1
  %l69 = alloca i1
  %l75 = alloca i1
  %l80 = alloca i1
  %l84 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp eq i64 %t3, 0
  br i1 %t5, label %bb1, label %bb2
bb1:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/interp:Exec", ptr %t8, i32 0, i32 0
  %t11 = load ptr, ptr %t10, !tbaa !29
  %t13 = getelementptr %"compiler/generic:Program", ptr %t11, i32 0, i32 0
  %t14 = load ptr, ptr %t13, !tbaa !29
  %t16 = getelementptr %"compiler/load:Loader", ptr %t14, i32 0, i32 10
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/interp:Exec", ptr %t17, i32 0, i32 0
  %t20 = load ptr, ptr %t19, !tbaa !29
  %t22 = getelementptr %"compiler/generic:Program", ptr %t20, i32 0, i32 0
  %t23 = load ptr, ptr %t22, !tbaa !29
  %t25 = getelementptr %"compiler/load:Loader", ptr %t23, i32 0, i32 12
  %t26 = load i64, ptr %t25, !tbaa !24
  %t29 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t16, i64 %t26)
  store ptr %t29, ptr %l23
  br label %bb4
bb4:
  %t30 = load ptr, ptr %l23, !tbaa !29
  store ptr %t30, ptr %l3, !tbaa !29
  %t31 = load ptr, ptr %l3, !tbaa !29
  %t33 = getelementptr %"compiler/load:Module", ptr %t31, i32 0, i32 8
  %t34 = load { i64, ptr }, ptr %t33, !tbaa !27
  store { i64, ptr } %t34, ptr %l25, !tbaa !27
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/interp:Exec", ptr %t35, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !29
  %t43 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t38, i64 %a1)
  store ptr %t43, ptr %l30
  br label %bb5
bb5:
  %t44 = load ptr, ptr %l30, !tbaa !29
  %t46 = getelementptr %"compiler/typed:Body", ptr %t44, i32 0, i32 4
  %t47 = load %"compiler/source:Span", ptr %t46
  %t48 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t50 = call ptr @compiler_2fast_2eFindTest(ptr %v0, ptr %v0, { i64, ptr } %t48, %"compiler/source:Span" %t47)
  store ptr %t50, ptr %l33
  br label %bb6
bb6:
  %t51 = load ptr, ptr %l33, !tbaa !29
  store ptr %t51, ptr %l4, !tbaa !29
  %t52 = load ptr, ptr %l4, !tbaa !29
  %t54 = icmp eq ptr %t52, null
  br i1 %t54, label %bb7, label %bb8
bb7:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t57 = load ptr, ptr %l4, !tbaa !29
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/interp:Exec", ptr %t58, i32 0, i32 0
  %t61 = load ptr, ptr %t60, !tbaa !29
  %t63 = getelementptr %"compiler/generic:Program", ptr %t61, i32 0, i32 0
  %t64 = load ptr, ptr %t63, !tbaa !29
  %t66 = getelementptr %"compiler/load:Loader", ptr %t64, i32 0, i32 3
  %t67 = load ptr, ptr %t66, !tbaa !29
  %t70 = call { i64, ptr } @compiler_2fast_2eTestTarget(ptr %v0, ptr %v0, ptr %s0, ptr %t57, ptr %t67)
  store { i64, ptr } %t70, ptr %l42
  br label %bb10
bb10:
  %t71 = load { i64, ptr }, ptr %l42, !tbaa !27
  store { i64, ptr } %t71, ptr %l5, !tbaa !27
  %t72 = load ptr, ptr %l4, !tbaa !29
  store ptr %t72, ptr %l43, !tbaa !29
  %t73 = load ptr, ptr %l3, !tbaa !29
  %t75 = getelementptr %"compiler/load:Module", ptr %t73, i32 0, i32 6
  %t76 = load ptr, ptr %t75, !tbaa !29
  %t78 = icmp eq ptr %t76, null
  br i1 %t78, label %bb11, label %bb12
bb11:
  call void @__olang_check_failed(ptr @olang_loc_db23ec69d1a71a13_128a48d6c2b2bdb7)
  unreachable
bb12:
  br label %bb13
bb13:
  %t80 = load ptr, ptr %l3, !tbaa !29
  %t82 = getelementptr %"compiler/load:Module", ptr %t80, i32 0, i32 6
  %t83 = load ptr, ptr %t82, !tbaa !29
  %t86 = getelementptr %"compiler/source:Source", ptr %t83, i32 0, i32 1
  %t87 = load { i64, ptr }, ptr %t86, !tbaa !27
  %t88 = load ptr, ptr %l43, !tbaa !29
  %t90 = call { i64, ptr } @compiler_2fast_2eTestDesc(ptr %v0, ptr %v0, ptr %s0, ptr %t88, { i64, ptr } %t87)
  store { i64, ptr } %t90, ptr %l51
  br label %bb14
bb14:
  %t91 = load { i64, ptr }, ptr %l51, !tbaa !27
  store { i64, ptr } %t91, ptr %l6, !tbaa !27
  %t92 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t92, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t94 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t96 = extractvalue { i64, ptr } %t94, 0
  store i64 %t96, ptr %l9, !tbaa !24
  br label %bb15
bb15:
  %t98 = load i64, ptr %l8, !tbaa !24
  %t99 = load i64, ptr %l9, !tbaa !24
  %t102 = icmp slt i64 %t98, %t99
  %t104 = xor i1 %t102, true
  br i1 %t104, label %bb16, label %bb17
bb16:
  br label %bb38
bb17:
  br label %bb18
bb18:
  %t106 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t106, ptr %l59, !tbaa !27
  %t107 = load i64, ptr %l8, !tbaa !24
  %t109 = getelementptr { i64, ptr }, ptr %l59, i32 0, i32 1
  %t110 = load ptr, ptr %t109, !tbaa !27
  %t111 = getelementptr { i64, ptr }, ptr %t110, i64 %t107
  %t112 = load { i64, ptr }, ptr %t111, !tbaa !37
  store { i64, ptr } %t112, ptr %l10, !tbaa !27
  %t114 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t115 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t118 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %v1, { i64, ptr } %t114, { i64, ptr } %t115)
  store i1 %t118, ptr %l64
  br label %bb19
bb19:
  %t119 = load i1, ptr %l64, !tbaa !21
  br i1 %t119, label %bb20, label %bb21
bb20:
  store i1 true, ptr %l65, !tbaa !21
  br label %bb29
bb21:
  %t120 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t121 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t124 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s0, ptr %v1, { i64, ptr } %t120, { i64, ptr } %t121)
  store i1 %t124, ptr %l68
  br label %bb22
bb22:
  %t125 = load i1, ptr %l68, !tbaa !21
  br i1 %t125, label %bb23, label %bb24
bb23:
  %t126 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t128 = extractvalue { i64, ptr } %t126, 0
  %t129 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t131 = extractvalue { i64, ptr } %t129, 0
  %t134 = icmp sgt i64 %t128, %t131
  store i1 %t134, ptr %l69, !tbaa !21
  br label %bb25
bb24:
  store i1 false, ptr %l69, !tbaa !21
  br label %bb25
bb25:
  %t136 = load i1, ptr %l69, !tbaa !21
  br i1 %t136, label %bb26, label %bb27
bb26:
  %t137 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t139 = extractvalue { i64, ptr } %t137, 0
  %t141 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t142 = load ptr, ptr %t141, !tbaa !27
  %t143 = getelementptr i8, ptr %t142, i64 %t139
  %t144 = load i8, ptr %t143, !tbaa !32
  %t146 = icmp eq i8 %t144, 46
  store i1 %t146, ptr %l75, !tbaa !21
  br label %bb28
bb27:
  store i1 false, ptr %l75, !tbaa !21
  br label %bb28
bb28:
  %t148 = load i1, ptr %l75, !tbaa !21
  store i1 %t148, ptr %l65, !tbaa !21
  br label %bb29
bb29:
  %t149 = load i1, ptr %l65, !tbaa !21
  br i1 %t149, label %bb30, label %bb31
bb30:
  store i1 true, ptr %l80, !tbaa !21
  br label %bb33
bb31:
  %t150 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t151 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t155 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %s0, ptr %v1, { i64, ptr } %t150, { i64, ptr } %t151)
  store i1 %t155, ptr %l84
  br label %bb32
bb32:
  %t156 = load i1, ptr %l84, !tbaa !21
  store i1 %t156, ptr %l80, !tbaa !21
  br label %bb33
bb33:
  %t157 = load i1, ptr %l80, !tbaa !21
  br i1 %t157, label %bb34, label %bb35
bb34:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb35:
  br label %bb36
bb36:
  br label %bb37
bb37:
  %t159 = load i64, ptr %l8, !tbaa !24
  %t161 = add i64 %t159, 1
  store i64 %t161, ptr %l8, !tbaa !24
  br label %bb15
bb38:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2finterp_2ecompiler_2finterp_3aExec_2estart(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca ptr
  %l11 = alloca { i64, [2 x i64] }
  %l12 = alloca i32
  %l13 = alloca i64
  %l14 = alloca i32
  %l15 = alloca i32
  %l16 = alloca { i64, [2 x i64] }
  %l17 = alloca ptr
  %l18 = alloca i1
  %l19 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l20 = alloca ptr
  %l21 = alloca i64
  %l22 = alloca i64
  %l24 = alloca ptr
  %l25 = alloca i64
  %l26 = alloca i64
  %l28 = alloca ptr
  %l29 = alloca i64
  %l31 = alloca ptr
  %l32 = alloca i64
  %l37 = alloca ptr
  %l38 = alloca i64
  %l42 = alloca ptr
  %l43 = alloca %"compiler/mir:GenInfo"
  %l45 = alloca %"compiler/mir:GenInfo"
  %l47 = alloca %"compiler/mir:GenInfo"
  %l53 = alloca i64
  %l55 = alloca i64
  %l60 = alloca ptr
  %l63 = alloca i1
  %l72 = alloca i64
  %l76 = alloca i64
  %l79 = alloca i64
  %l100 = alloca ptr
  %l120 = alloca i32
  %l132 = alloca ptr
  %l136 = alloca i1
  %l139 = alloca i1
  %l151 = alloca i1
  %l161 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l165 = alloca i64
  %l167 = alloca i64
  %l172 = alloca i64
  %l177 = alloca i1
  %l184 = alloca i64
  %l186 = alloca i64
  %l191 = alloca i64
  %l195 = alloca i1
  %l204 = alloca i64
  %l206 = alloca i64
  %l211 = alloca i64
  %l219 = alloca i64
  %l221 = alloca i64
  %l226 = alloca i64
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %t21 = alloca %"compiler/mir:GenInfo", align 8
  %t607 = alloca { i64, [2 x i64] }, align 8
  %t815 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/interp:Exec", ptr %t1, i32 0, i32 13
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/interp:Exec", ptr %t6, i32 0, i32 13
  store i1 true, ptr %t8, !tbaa !21
  %t9 = load ptr, ptr %l0, !tbaa !29
  store ptr %t9, ptr %l37, !tbaa !29
  %t10 = ptrtoint ptr %v0 to i64
  store i64 %t10, ptr %l38, !tbaa !24
  %t11 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e5
  br i1 %t11, label %bb4, label %bb5
bb4:
  %t13 = call ptr @__olang_region_make(ptr %v0)
  %t14 = ptrtoint ptr %t13 to i64
  store i64 %t14, ptr %l38, !tbaa !24
  br label %bb5
bb5:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/interp:Exec", ptr %t15, i32 0, i32 3
  %t19 = call ptr @compiler_2flower_2ecompiler_2flower_3aLowerer_2eGen(ptr %v0, ptr %v0, ptr %t17)
  store ptr %t19, ptr %l42
  br label %bb6
bb6:
  %t20 = load ptr, ptr %l42, !tbaa !29
  call void @llvm.memmove.p0.p0.i64(ptr %l43, ptr %t20, i64 632, i1 false)
  %t22 = load i64, ptr %l38
  %t23 = inttoptr i64 %t22 to ptr
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fmir_3aGenInfo(ptr %t21, ptr %t23, ptr %l43)
  call void @llvm.memmove.p0.p0.i64(ptr %l45, ptr %t21, i64 632, i1 false)
  br label %bb7
bb7:
  %t25 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e5
  br i1 %t25, label %bb8, label %bb9
bb8:
  %t27 = load i64, ptr %l38
  %t28 = inttoptr i64 %t27 to ptr
  %t29 = getelementptr %"compiler/mir:GenInfo", ptr %l45, i32 0, i32 11
  %t30 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t29, i32 0, i32 2
  %t31 = load { i64, ptr }, ptr %t30
  %t32 = extractvalue { i64, ptr } %t31, 1
  %t33 = call ptr @__olang_region_or(ptr %t32, ptr null)
  %t34 = call ptr @__olang_region_home(ptr %t33)
  %t35 = icmp ne ptr %t34, null
  %t36 = select i1 %t35, ptr %t34, ptr null
  %t37 = getelementptr %"compiler/mir:GenInfo", ptr %l45, i32 0, i32 11
  %t38 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t37, i32 0, i32 1
  %t39 = load { i64, ptr }, ptr %t38
  %t40 = extractvalue { i64, ptr } %t39, 1
  %t41 = call ptr @__olang_region_or(ptr %t40, ptr null)
  %t42 = call ptr @__olang_region_home(ptr %t41)
  %t43 = icmp ne ptr %t42, null
  %t44 = select i1 %t43, ptr %t42, ptr %t36
  %t45 = getelementptr %"compiler/mir:GenInfo", ptr %l45, i32 0, i32 11
  %t46 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t45, i32 0, i32 0
  %t47 = load { i64, ptr }, ptr %t46
  %t48 = extractvalue { i64, ptr } %t47, 1
  %t49 = call ptr @__olang_region_or(ptr %t48, ptr null)
  %t50 = call ptr @__olang_region_home(ptr %t49)
  %t51 = icmp ne ptr %t50, null
  %t52 = select i1 %t51, ptr %t50, ptr %t44
  %t53 = getelementptr %"compiler/mir:GenInfo", ptr %l45, i32 0, i32 9
  %t54 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t53, i32 0, i32 2
  %t55 = load { i64, ptr }, ptr %t54
  %t56 = extractvalue { i64, ptr } %t55, 1
  %t57 = call ptr @__olang_region_or(ptr %t56, ptr null)
  %t58 = call ptr @__olang_region_home(ptr %t57)
  %t59 = icmp ne ptr %t58, null
  %t60 = select i1 %t59, ptr %t58, ptr %t52
  %t61 = getelementptr %"compiler/mir:GenInfo", ptr %l45, i32 0, i32 9
  %t62 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t61, i32 0, i32 1
  %t63 = load { i64, ptr }, ptr %t62
  %t64 = extractvalue { i64, ptr } %t63, 1
  %t65 = call ptr @__olang_region_or(ptr %t64, ptr null)
  %t66 = call ptr @__olang_region_home(ptr %t65)
  %t67 = icmp ne ptr %t66, null
  %t68 = select i1 %t67, ptr %t66, ptr %t60
  %t69 = getelementptr %"compiler/mir:GenInfo", ptr %l45, i32 0, i32 9
  %t70 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t69, i32 0, i32 0
  %t71 = load { i64, ptr }, ptr %t70
  %t72 = extractvalue { i64, ptr } %t71, 1
  %t73 = call ptr @__olang_region_or(ptr %t72, ptr null)
  %t74 = call ptr @__olang_region_home(ptr %t73)
  %t75 = icmp ne ptr %t74, null
  %t76 = select i1 %t75, ptr %t74, ptr %t68
  %t77 = getelementptr %"compiler/mir:GenInfo", ptr %l45, i32 0, i32 7
  %t78 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t77, i32 0, i32 2
  %t79 = load { i64, ptr }, ptr %t78
  %t80 = extractvalue { i64, ptr } %t79, 1
  %t81 = call ptr @__olang_region_or(ptr %t80, ptr null)
  %t82 = call ptr @__olang_region_home(ptr %t81)
  %t83 = icmp ne ptr %t82, null
  %t84 = select i1 %t83, ptr %t82, ptr %t76
  %t85 = getelementptr %"compiler/mir:GenInfo", ptr %l45, i32 0, i32 7
  %t86 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t85, i32 0, i32 1
  %t87 = load { i64, ptr }, ptr %t86
  %t88 = extractvalue { i64, ptr } %t87, 1
  %t89 = call ptr @__olang_region_or(ptr %t88, ptr null)
  %t90 = call ptr @__olang_region_home(ptr %t89)
  %t91 = icmp ne ptr %t90, null
  %t92 = select i1 %t91, ptr %t90, ptr %t84
  %t93 = getelementptr %"compiler/mir:GenInfo", ptr %l45, i32 0, i32 7
  %t94 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t93, i32 0, i32 0
  %t95 = load { i64, ptr }, ptr %t94
  %t96 = extractvalue { i64, ptr } %t95, 1
  %t97 = call ptr @__olang_region_or(ptr %t96, ptr null)
  %t98 = call ptr @__olang_region_home(ptr %t97)
  %t99 = icmp ne ptr %t98, null
  %t100 = select i1 %t99, ptr %t98, ptr %t92
  %t101 = getelementptr %"compiler/mir:GenInfo", ptr %l45, i32 0, i32 5
  %t102 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t101, i32 0, i32 0
  %t103 = load { i64, ptr }, ptr %t102
  %t104 = extractvalue { i64, ptr } %t103, 1
  %t105 = call ptr @__olang_region_or(ptr %t104, ptr null)
  %t106 = call ptr @__olang_region_home(ptr %t105)
  %t107 = icmp ne ptr %t106, null
  %t108 = select i1 %t107, ptr %t106, ptr %t100
  %t109 = getelementptr %"compiler/mir:GenInfo", ptr %l45, i32 0, i32 4
  %t110 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t109, i32 0, i32 2
  %t111 = load { i64, ptr }, ptr %t110
  %t112 = extractvalue { i64, ptr } %t111, 1
  %t113 = call ptr @__olang_region_or(ptr %t112, ptr null)
  %t114 = call ptr @__olang_region_home(ptr %t113)
  %t115 = icmp ne ptr %t114, null
  %t116 = select i1 %t115, ptr %t114, ptr %t108
  %t117 = getelementptr %"compiler/mir:GenInfo", ptr %l45, i32 0, i32 4
  %t118 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t117, i32 0, i32 1
  %t119 = load { i64, ptr }, ptr %t118
  %t120 = extractvalue { i64, ptr } %t119, 1
  %t121 = call ptr @__olang_region_or(ptr %t120, ptr null)
  %t122 = call ptr @__olang_region_home(ptr %t121)
  %t123 = icmp ne ptr %t122, null
  %t124 = select i1 %t123, ptr %t122, ptr %t116
  %t125 = getelementptr %"compiler/mir:GenInfo", ptr %l45, i32 0, i32 4
  %t126 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t125, i32 0, i32 0
  %t127 = load { i64, ptr }, ptr %t126
  %t128 = extractvalue { i64, ptr } %t127, 1
  %t129 = call ptr @__olang_region_or(ptr %t128, ptr null)
  %t130 = call ptr @__olang_region_home(ptr %t129)
  %t131 = icmp ne ptr %t130, null
  %t132 = select i1 %t131, ptr %t130, ptr %t124
  %t133 = getelementptr %"compiler/mir:GenInfo", ptr %l45, i32 0, i32 3
  %t134 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t133, i32 0, i32 2
  %t135 = load { i64, ptr }, ptr %t134
  %t136 = extractvalue { i64, ptr } %t135, 1
  %t137 = call ptr @__olang_region_or(ptr %t136, ptr null)
  %t138 = call ptr @__olang_region_home(ptr %t137)
  %t139 = icmp ne ptr %t138, null
  %t140 = select i1 %t139, ptr %t138, ptr %t132
  %t141 = getelementptr %"compiler/mir:GenInfo", ptr %l45, i32 0, i32 3
  %t142 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t141, i32 0, i32 1
  %t143 = load { i64, ptr }, ptr %t142
  %t144 = extractvalue { i64, ptr } %t143, 1
  %t145 = call ptr @__olang_region_or(ptr %t144, ptr null)
  %t146 = call ptr @__olang_region_home(ptr %t145)
  %t147 = icmp ne ptr %t146, null
  %t148 = select i1 %t147, ptr %t146, ptr %t140
  %t149 = getelementptr %"compiler/mir:GenInfo", ptr %l45, i32 0, i32 3
  %t150 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t149, i32 0, i32 0
  %t151 = load { i64, ptr }, ptr %t150
  %t152 = extractvalue { i64, ptr } %t151, 1
  %t153 = call ptr @__olang_region_or(ptr %t152, ptr null)
  %t154 = call ptr @__olang_region_home(ptr %t153)
  %t155 = icmp ne ptr %t154, null
  %t156 = select i1 %t155, ptr %t154, ptr %t148
  %t157 = getelementptr %"compiler/mir:GenInfo", ptr %l45, i32 0, i32 2
  %t158 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t157, i32 0, i32 2
  %t159 = load { i64, ptr }, ptr %t158
  %t160 = extractvalue { i64, ptr } %t159, 1
  %t161 = call ptr @__olang_region_or(ptr %t160, ptr null)
  %t162 = call ptr @__olang_region_home(ptr %t161)
  %t163 = icmp ne ptr %t162, null
  %t164 = select i1 %t163, ptr %t162, ptr %t156
  %t165 = getelementptr %"compiler/mir:GenInfo", ptr %l45, i32 0, i32 2
  %t166 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t165, i32 0, i32 1
  %t167 = load { i64, ptr }, ptr %t166
  %t168 = extractvalue { i64, ptr } %t167, 1
  %t169 = call ptr @__olang_region_or(ptr %t168, ptr null)
  %t170 = call ptr @__olang_region_home(ptr %t169)
  %t171 = icmp ne ptr %t170, null
  %t172 = select i1 %t171, ptr %t170, ptr %t164
  %t173 = getelementptr %"compiler/mir:GenInfo", ptr %l45, i32 0, i32 2
  %t174 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t173, i32 0, i32 0
  %t175 = load { i64, ptr }, ptr %t174
  %t176 = extractvalue { i64, ptr } %t175, 1
  %t177 = call ptr @__olang_region_or(ptr %t176, ptr null)
  %t178 = call ptr @__olang_region_home(ptr %t177)
  %t179 = icmp ne ptr %t178, null
  %t180 = select i1 %t179, ptr %t178, ptr %t172
  %t181 = getelementptr %"compiler/mir:GenInfo", ptr %l45, i32 0, i32 1
  %t182 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t181, i32 0, i32 2
  %t183 = load { i64, ptr }, ptr %t182
  %t184 = extractvalue { i64, ptr } %t183, 1
  %t185 = call ptr @__olang_region_or(ptr %t184, ptr null)
  %t186 = call ptr @__olang_region_home(ptr %t185)
  %t187 = icmp ne ptr %t186, null
  %t188 = select i1 %t187, ptr %t186, ptr %t180
  %t189 = getelementptr %"compiler/mir:GenInfo", ptr %l45, i32 0, i32 1
  %t190 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t189, i32 0, i32 1
  %t191 = load { i64, ptr }, ptr %t190
  %t192 = extractvalue { i64, ptr } %t191, 1
  %t193 = call ptr @__olang_region_or(ptr %t192, ptr null)
  %t194 = call ptr @__olang_region_home(ptr %t193)
  %t195 = icmp ne ptr %t194, null
  %t196 = select i1 %t195, ptr %t194, ptr %t188
  %t197 = getelementptr %"compiler/mir:GenInfo", ptr %l45, i32 0, i32 1
  %t198 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t197, i32 0, i32 0
  %t199 = load { i64, ptr }, ptr %t198
  %t200 = extractvalue { i64, ptr } %t199, 1
  %t201 = call ptr @__olang_region_or(ptr %t200, ptr null)
  %t202 = call ptr @__olang_region_home(ptr %t201)
  %t203 = icmp ne ptr %t202, null
  %t204 = select i1 %t203, ptr %t202, ptr %t196
  %t205 = getelementptr %"compiler/mir:GenInfo", ptr %l45, i32 0, i32 0
  %t206 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t205, i32 0, i32 2
  %t207 = load { i64, ptr }, ptr %t206
  %t208 = extractvalue { i64, ptr } %t207, 1
  %t209 = call ptr @__olang_region_or(ptr %t208, ptr null)
  %t210 = call ptr @__olang_region_home(ptr %t209)
  %t211 = icmp ne ptr %t210, null
  %t212 = select i1 %t211, ptr %t210, ptr %t204
  %t213 = getelementptr %"compiler/mir:GenInfo", ptr %l45, i32 0, i32 0
  %t214 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t213, i32 0, i32 1
  %t215 = load { i64, ptr }, ptr %t214
  %t216 = extractvalue { i64, ptr } %t215, 1
  %t217 = call ptr @__olang_region_or(ptr %t216, ptr null)
  %t218 = call ptr @__olang_region_home(ptr %t217)
  %t219 = icmp ne ptr %t218, null
  %t220 = select i1 %t219, ptr %t218, ptr %t212
  %t221 = getelementptr %"compiler/mir:GenInfo", ptr %l45, i32 0, i32 0
  %t222 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t221, i32 0, i32 0
  %t223 = load { i64, ptr }, ptr %t222
  %t224 = extractvalue { i64, ptr } %t223, 1
  %t225 = call ptr @__olang_region_or(ptr %t224, ptr null)
  %t226 = call ptr @__olang_region_home(ptr %t225)
  %t227 = icmp ne ptr %t226, null
  %t228 = select i1 %t227, ptr %t226, ptr %t220
  %t229 = icmp eq ptr %t228, %t28
  call void @__olang_region_settle(ptr %t28, i1 %t229)
  br label %bb9
bb9:
  %t230 = load ptr, ptr %l37, !tbaa !29
  %t231 = getelementptr %"compiler/interp:Exec", ptr %t230, i32 0, i32 4
  %t232 = getelementptr %"compiler/eval:Machine", ptr %t231, i32 0, i32 5
  call void @llvm.memmove.p0.p0.i64(ptr %l47, ptr %t232, i64 632, i1 false)
  %t233 = load ptr, ptr %l37, !tbaa !29
  %t234 = getelementptr %"compiler/interp:Exec", ptr %t233, i32 0, i32 4
  %t235 = getelementptr %"compiler/eval:Machine", ptr %t234, i32 0, i32 5
  call void @llvm.memmove.p0.p0.i64(ptr %t235, ptr %l45, i64 632, i1 false)
  %t236 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e5
  br i1 %t236, label %bb10, label %bb11
bb10:
  %t238 = getelementptr %"compiler/mir:GenInfo", ptr %l47, i32 0, i32 11
  %t239 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t238, i32 0, i32 2
  %t240 = load { i64, ptr }, ptr %t239
  %t241 = extractvalue { i64, ptr } %t240, 1
  %t242 = call ptr @__olang_region_or(ptr %t241, ptr null)
  %t243 = call ptr @__olang_region_home(ptr %t242)
  %t244 = icmp ne ptr %t243, null
  %t245 = select i1 %t244, ptr %t243, ptr null
  %t246 = getelementptr %"compiler/mir:GenInfo", ptr %l47, i32 0, i32 11
  %t247 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t246, i32 0, i32 1
  %t248 = load { i64, ptr }, ptr %t247
  %t249 = extractvalue { i64, ptr } %t248, 1
  %t250 = call ptr @__olang_region_or(ptr %t249, ptr null)
  %t251 = call ptr @__olang_region_home(ptr %t250)
  %t252 = icmp ne ptr %t251, null
  %t253 = select i1 %t252, ptr %t251, ptr %t245
  %t254 = getelementptr %"compiler/mir:GenInfo", ptr %l47, i32 0, i32 11
  %t255 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t254, i32 0, i32 0
  %t256 = load { i64, ptr }, ptr %t255
  %t257 = extractvalue { i64, ptr } %t256, 1
  %t258 = call ptr @__olang_region_or(ptr %t257, ptr null)
  %t259 = call ptr @__olang_region_home(ptr %t258)
  %t260 = icmp ne ptr %t259, null
  %t261 = select i1 %t260, ptr %t259, ptr %t253
  %t262 = getelementptr %"compiler/mir:GenInfo", ptr %l47, i32 0, i32 9
  %t263 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t262, i32 0, i32 2
  %t264 = load { i64, ptr }, ptr %t263
  %t265 = extractvalue { i64, ptr } %t264, 1
  %t266 = call ptr @__olang_region_or(ptr %t265, ptr null)
  %t267 = call ptr @__olang_region_home(ptr %t266)
  %t268 = icmp ne ptr %t267, null
  %t269 = select i1 %t268, ptr %t267, ptr %t261
  %t270 = getelementptr %"compiler/mir:GenInfo", ptr %l47, i32 0, i32 9
  %t271 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t270, i32 0, i32 1
  %t272 = load { i64, ptr }, ptr %t271
  %t273 = extractvalue { i64, ptr } %t272, 1
  %t274 = call ptr @__olang_region_or(ptr %t273, ptr null)
  %t275 = call ptr @__olang_region_home(ptr %t274)
  %t276 = icmp ne ptr %t275, null
  %t277 = select i1 %t276, ptr %t275, ptr %t269
  %t278 = getelementptr %"compiler/mir:GenInfo", ptr %l47, i32 0, i32 9
  %t279 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t278, i32 0, i32 0
  %t280 = load { i64, ptr }, ptr %t279
  %t281 = extractvalue { i64, ptr } %t280, 1
  %t282 = call ptr @__olang_region_or(ptr %t281, ptr null)
  %t283 = call ptr @__olang_region_home(ptr %t282)
  %t284 = icmp ne ptr %t283, null
  %t285 = select i1 %t284, ptr %t283, ptr %t277
  %t286 = getelementptr %"compiler/mir:GenInfo", ptr %l47, i32 0, i32 7
  %t287 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t286, i32 0, i32 2
  %t288 = load { i64, ptr }, ptr %t287
  %t289 = extractvalue { i64, ptr } %t288, 1
  %t290 = call ptr @__olang_region_or(ptr %t289, ptr null)
  %t291 = call ptr @__olang_region_home(ptr %t290)
  %t292 = icmp ne ptr %t291, null
  %t293 = select i1 %t292, ptr %t291, ptr %t285
  %t294 = getelementptr %"compiler/mir:GenInfo", ptr %l47, i32 0, i32 7
  %t295 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t294, i32 0, i32 1
  %t296 = load { i64, ptr }, ptr %t295
  %t297 = extractvalue { i64, ptr } %t296, 1
  %t298 = call ptr @__olang_region_or(ptr %t297, ptr null)
  %t299 = call ptr @__olang_region_home(ptr %t298)
  %t300 = icmp ne ptr %t299, null
  %t301 = select i1 %t300, ptr %t299, ptr %t293
  %t302 = getelementptr %"compiler/mir:GenInfo", ptr %l47, i32 0, i32 7
  %t303 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t302, i32 0, i32 0
  %t304 = load { i64, ptr }, ptr %t303
  %t305 = extractvalue { i64, ptr } %t304, 1
  %t306 = call ptr @__olang_region_or(ptr %t305, ptr null)
  %t307 = call ptr @__olang_region_home(ptr %t306)
  %t308 = icmp ne ptr %t307, null
  %t309 = select i1 %t308, ptr %t307, ptr %t301
  %t310 = getelementptr %"compiler/mir:GenInfo", ptr %l47, i32 0, i32 5
  %t311 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t310, i32 0, i32 0
  %t312 = load { i64, ptr }, ptr %t311
  %t313 = extractvalue { i64, ptr } %t312, 1
  %t314 = call ptr @__olang_region_or(ptr %t313, ptr null)
  %t315 = call ptr @__olang_region_home(ptr %t314)
  %t316 = icmp ne ptr %t315, null
  %t317 = select i1 %t316, ptr %t315, ptr %t309
  %t318 = getelementptr %"compiler/mir:GenInfo", ptr %l47, i32 0, i32 4
  %t319 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t318, i32 0, i32 2
  %t320 = load { i64, ptr }, ptr %t319
  %t321 = extractvalue { i64, ptr } %t320, 1
  %t322 = call ptr @__olang_region_or(ptr %t321, ptr null)
  %t323 = call ptr @__olang_region_home(ptr %t322)
  %t324 = icmp ne ptr %t323, null
  %t325 = select i1 %t324, ptr %t323, ptr %t317
  %t326 = getelementptr %"compiler/mir:GenInfo", ptr %l47, i32 0, i32 4
  %t327 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t326, i32 0, i32 1
  %t328 = load { i64, ptr }, ptr %t327
  %t329 = extractvalue { i64, ptr } %t328, 1
  %t330 = call ptr @__olang_region_or(ptr %t329, ptr null)
  %t331 = call ptr @__olang_region_home(ptr %t330)
  %t332 = icmp ne ptr %t331, null
  %t333 = select i1 %t332, ptr %t331, ptr %t325
  %t334 = getelementptr %"compiler/mir:GenInfo", ptr %l47, i32 0, i32 4
  %t335 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t334, i32 0, i32 0
  %t336 = load { i64, ptr }, ptr %t335
  %t337 = extractvalue { i64, ptr } %t336, 1
  %t338 = call ptr @__olang_region_or(ptr %t337, ptr null)
  %t339 = call ptr @__olang_region_home(ptr %t338)
  %t340 = icmp ne ptr %t339, null
  %t341 = select i1 %t340, ptr %t339, ptr %t333
  %t342 = getelementptr %"compiler/mir:GenInfo", ptr %l47, i32 0, i32 3
  %t343 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t342, i32 0, i32 2
  %t344 = load { i64, ptr }, ptr %t343
  %t345 = extractvalue { i64, ptr } %t344, 1
  %t346 = call ptr @__olang_region_or(ptr %t345, ptr null)
  %t347 = call ptr @__olang_region_home(ptr %t346)
  %t348 = icmp ne ptr %t347, null
  %t349 = select i1 %t348, ptr %t347, ptr %t341
  %t350 = getelementptr %"compiler/mir:GenInfo", ptr %l47, i32 0, i32 3
  %t351 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t350, i32 0, i32 1
  %t352 = load { i64, ptr }, ptr %t351
  %t353 = extractvalue { i64, ptr } %t352, 1
  %t354 = call ptr @__olang_region_or(ptr %t353, ptr null)
  %t355 = call ptr @__olang_region_home(ptr %t354)
  %t356 = icmp ne ptr %t355, null
  %t357 = select i1 %t356, ptr %t355, ptr %t349
  %t358 = getelementptr %"compiler/mir:GenInfo", ptr %l47, i32 0, i32 3
  %t359 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t358, i32 0, i32 0
  %t360 = load { i64, ptr }, ptr %t359
  %t361 = extractvalue { i64, ptr } %t360, 1
  %t362 = call ptr @__olang_region_or(ptr %t361, ptr null)
  %t363 = call ptr @__olang_region_home(ptr %t362)
  %t364 = icmp ne ptr %t363, null
  %t365 = select i1 %t364, ptr %t363, ptr %t357
  %t366 = getelementptr %"compiler/mir:GenInfo", ptr %l47, i32 0, i32 2
  %t367 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t366, i32 0, i32 2
  %t368 = load { i64, ptr }, ptr %t367
  %t369 = extractvalue { i64, ptr } %t368, 1
  %t370 = call ptr @__olang_region_or(ptr %t369, ptr null)
  %t371 = call ptr @__olang_region_home(ptr %t370)
  %t372 = icmp ne ptr %t371, null
  %t373 = select i1 %t372, ptr %t371, ptr %t365
  %t374 = getelementptr %"compiler/mir:GenInfo", ptr %l47, i32 0, i32 2
  %t375 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t374, i32 0, i32 1
  %t376 = load { i64, ptr }, ptr %t375
  %t377 = extractvalue { i64, ptr } %t376, 1
  %t378 = call ptr @__olang_region_or(ptr %t377, ptr null)
  %t379 = call ptr @__olang_region_home(ptr %t378)
  %t380 = icmp ne ptr %t379, null
  %t381 = select i1 %t380, ptr %t379, ptr %t373
  %t382 = getelementptr %"compiler/mir:GenInfo", ptr %l47, i32 0, i32 2
  %t383 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t382, i32 0, i32 0
  %t384 = load { i64, ptr }, ptr %t383
  %t385 = extractvalue { i64, ptr } %t384, 1
  %t386 = call ptr @__olang_region_or(ptr %t385, ptr null)
  %t387 = call ptr @__olang_region_home(ptr %t386)
  %t388 = icmp ne ptr %t387, null
  %t389 = select i1 %t388, ptr %t387, ptr %t381
  %t390 = getelementptr %"compiler/mir:GenInfo", ptr %l47, i32 0, i32 1
  %t391 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t390, i32 0, i32 2
  %t392 = load { i64, ptr }, ptr %t391
  %t393 = extractvalue { i64, ptr } %t392, 1
  %t394 = call ptr @__olang_region_or(ptr %t393, ptr null)
  %t395 = call ptr @__olang_region_home(ptr %t394)
  %t396 = icmp ne ptr %t395, null
  %t397 = select i1 %t396, ptr %t395, ptr %t389
  %t398 = getelementptr %"compiler/mir:GenInfo", ptr %l47, i32 0, i32 1
  %t399 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t398, i32 0, i32 1
  %t400 = load { i64, ptr }, ptr %t399
  %t401 = extractvalue { i64, ptr } %t400, 1
  %t402 = call ptr @__olang_region_or(ptr %t401, ptr null)
  %t403 = call ptr @__olang_region_home(ptr %t402)
  %t404 = icmp ne ptr %t403, null
  %t405 = select i1 %t404, ptr %t403, ptr %t397
  %t406 = getelementptr %"compiler/mir:GenInfo", ptr %l47, i32 0, i32 1
  %t407 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t406, i32 0, i32 0
  %t408 = load { i64, ptr }, ptr %t407
  %t409 = extractvalue { i64, ptr } %t408, 1
  %t410 = call ptr @__olang_region_or(ptr %t409, ptr null)
  %t411 = call ptr @__olang_region_home(ptr %t410)
  %t412 = icmp ne ptr %t411, null
  %t413 = select i1 %t412, ptr %t411, ptr %t405
  %t414 = getelementptr %"compiler/mir:GenInfo", ptr %l47, i32 0, i32 0
  %t415 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t414, i32 0, i32 2
  %t416 = load { i64, ptr }, ptr %t415
  %t417 = extractvalue { i64, ptr } %t416, 1
  %t418 = call ptr @__olang_region_or(ptr %t417, ptr null)
  %t419 = call ptr @__olang_region_home(ptr %t418)
  %t420 = icmp ne ptr %t419, null
  %t421 = select i1 %t420, ptr %t419, ptr %t413
  %t422 = getelementptr %"compiler/mir:GenInfo", ptr %l47, i32 0, i32 0
  %t423 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t422, i32 0, i32 1
  %t424 = load { i64, ptr }, ptr %t423
  %t425 = extractvalue { i64, ptr } %t424, 1
  %t426 = call ptr @__olang_region_or(ptr %t425, ptr null)
  %t427 = call ptr @__olang_region_home(ptr %t426)
  %t428 = icmp ne ptr %t427, null
  %t429 = select i1 %t428, ptr %t427, ptr %t421
  %t430 = getelementptr %"compiler/mir:GenInfo", ptr %l47, i32 0, i32 0
  %t431 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t430, i32 0, i32 0
  %t432 = load { i64, ptr }, ptr %t431
  %t433 = extractvalue { i64, ptr } %t432, 1
  %t434 = call ptr @__olang_region_or(ptr %t433, ptr null)
  %t435 = call ptr @__olang_region_home(ptr %t434)
  %t436 = icmp ne ptr %t435, null
  %t437 = select i1 %t436, ptr %t435, ptr %t429
  call void @__olang_region_drop(ptr %t437)
  store %"compiler/mir:GenInfo" zeroinitializer, ptr %l47
  br label %bb11
bb11:
  %t438 = load ptr, ptr %l0, !tbaa !29
  %t440 = getelementptr %"compiler/interp:Exec", ptr %t438, i32 0, i32 0
  %t441 = load ptr, ptr %t440, !tbaa !29
  %t443 = getelementptr %"compiler/generic:Program", ptr %t441, i32 0, i32 0
  %t444 = load ptr, ptr %t443, !tbaa !29
  %t446 = getelementptr %"compiler/load:Loader", ptr %t444, i32 0, i32 10
  store ptr %t446, ptr %l1, !tbaa !29
  store i64 0, ptr %l2, !tbaa !24
  br label %bb12
bb12:
  store %olang.scope zeroinitializer, ptr %s3
  %t448 = load i64, ptr %l2, !tbaa !24
  store i64 %t448, ptr %l53, !tbaa !24
  %t449 = load ptr, ptr %l1, !tbaa !29
  %t451 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t449)
  store i64 %t451, ptr %l55
  br label %bb13
bb13:
  %t452 = load i64, ptr %l53, !tbaa !24
  %t453 = load i64, ptr %l55, !tbaa !24
  %t454 = icmp slt i64 %t452, %t453
  %t456 = xor i1 %t454, true
  br i1 %t456, label %bb14, label %bb15
bb14:
  call void @__olang_scope_close(ptr %s3)
  br label %bb24
bb15:
  br label %bb16
bb16:
  %t458 = load ptr, ptr %l1, !tbaa !29
  %t459 = load i64, ptr %l2, !tbaa !24
  %t462 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t458, i64 %t459)
  store ptr %t462, ptr %l60
  br label %bb17
bb17:
  %t463 = load ptr, ptr %l60, !tbaa !29
  store ptr %t463, ptr %l3, !tbaa !29
  %t464 = load ptr, ptr %l3, !tbaa !29
  %t466 = getelementptr %"compiler/load:Module", ptr %t464, i32 0, i32 2
  %t467 = load { i64, ptr }, ptr %t466, !tbaa !27
  %t469 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s3, { i64, ptr } %t467, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d100, i32 0, i32 1) })
  store i1 %t469, ptr %l63
  br label %bb18
bb18:
  %t470 = load i1, ptr %l63, !tbaa !21
  br i1 %t470, label %bb19, label %bb20
bb19:
  %t471 = load ptr, ptr %l0, !tbaa !29
  %t473 = getelementptr %"compiler/interp:Exec", ptr %t471, i32 0, i32 4
  %t474 = getelementptr %"compiler/eval:Machine", ptr %t473, i32 0, i32 81
  %t475 = load ptr, ptr %l3, !tbaa !29
  %t477 = getelementptr %"compiler/load:Module", ptr %t475, i32 0, i32 4
  %t478 = load i64, ptr %t477, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t474, i64 %t478, i1 true)
  br label %bb21
bb20:
  br label %bb22
bb21:
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s3)
  br label %bb23
bb23:
  %t481 = load i64, ptr %l2, !tbaa !24
  %t483 = add i64 %t481, 1
  store i64 %t483, ptr %l2, !tbaa !24
  br label %bb12
bb24:
  store i64 0, ptr %l4, !tbaa !24
  %t485 = load ptr, ptr %l0, !tbaa !29
  %t487 = getelementptr %"compiler/interp:Exec", ptr %t485, i32 0, i32 1
  %t488 = load ptr, ptr %t487, !tbaa !29
  %t490 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t488)
  store i64 %t490, ptr %l72
  br label %bb25
bb25:
  %t491 = load i64, ptr %l72, !tbaa !24
  store i64 %t491, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t492 = load i64, ptr %l5, !tbaa !24
  %t493 = load i64, ptr %l4, !tbaa !24
  %t496 = icmp sgt i64 %t492, %t493
  br i1 %t496, label %bb26, label %bb27
bb26:
  %t498 = load i64, ptr %l6, !tbaa !24
  %t500 = icmp sgt i64 %t498, 0
  br i1 %t500, label %bb28, label %bb29
bb27:
  store i64 0, ptr %l76, !tbaa !24
  br label %bb31
bb28:
  %t502 = load i64, ptr %l5, !tbaa !24
  %t503 = load i64, ptr %l4, !tbaa !24
  %t506 = sub i64 %t502, %t503
  %t507 = load i64, ptr %l6, !tbaa !24
  %t510 = add i64 %t506, %t507
  %t512 = sub i64 %t510, 1
  %t513 = load i64, ptr %l6, !tbaa !24
  %t516 = sdiv i64 %t512, %t513
  store i64 %t516, ptr %l79, !tbaa !24
  br label %bb30
bb29:
  store i64 0, ptr %l79, !tbaa !24
  br label %bb30
bb30:
  %t518 = load i64, ptr %l79, !tbaa !24
  store i64 %t518, ptr %l76, !tbaa !24
  br label %bb31
bb31:
  %t519 = load i64, ptr %l76, !tbaa !24
  store i64 %t519, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb32
bb32:
  %t520 = load i64, ptr %l8, !tbaa !24
  %t521 = load i64, ptr %l7, !tbaa !24
  %t524 = icmp slt i64 %t520, %t521
  %t526 = xor i1 %t524, true
  br i1 %t526, label %bb33, label %bb34
bb33:
  br label %bb71
bb34:
  br label %bb35
bb35:
  %t528 = load i64, ptr %l4, !tbaa !24
  %t529 = load i64, ptr %l8, !tbaa !24
  %t530 = load i64, ptr %l6, !tbaa !24
  %t533 = mul i64 %t529, %t530
  %t536 = add i64 %t528, %t533
  store i64 %t536, ptr %l9, !tbaa !24
  %t538 = load ptr, ptr %l0, !tbaa !29
  %t540 = getelementptr %"compiler/interp:Exec", ptr %t538, i32 0, i32 1
  %t541 = load ptr, ptr %t540, !tbaa !29
  %t542 = load i64, ptr %l9, !tbaa !24
  %t545 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t541, i64 %t542)
  store ptr %t545, ptr %l100
  br label %bb36
bb36:
  %t546 = load ptr, ptr %l100, !tbaa !29
  store ptr %t546, ptr %l10, !tbaa !29
  %t547 = load ptr, ptr %l10, !tbaa !29
  %t549 = getelementptr %"compiler/typed:Body", ptr %t547, i32 0, i32 1
  %t550 = load { i64, [2 x i64] }, ptr %t549
  store { i64, [2 x i64] } %t550, ptr %l11
  %t552 = load { i64, [2 x i64] }, ptr %l11
  %t554 = extractvalue { i64, [2 x i64] } %t552, 0
  %t555 = icmp eq i64 %t554, 3
  br i1 %t555, label %bb37, label %bb38
bb37:
  %t557 = getelementptr { i64, [2 x i64] }, ptr %l11, i32 0, i32 1
  %t558 = getelementptr { i32 }, ptr %t557, i32 0, i32 0
  %t559 = load i32, ptr %t558
  store i32 %t559, ptr %l12, !tbaa !23
  br label %bb39
bb38:
  br label %bb41
bb39:
  %t561 = load ptr, ptr %l0, !tbaa !29
  %t563 = getelementptr %"compiler/interp:Exec", ptr %t561, i32 0, i32 7
  %t564 = load i32, ptr %l12, !tbaa !23
  %t565 = load i64, ptr %l9, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e__Hccd9659a44f570da1fa06b019882a84d(ptr %v0, ptr %t563, i32 %t564, i64 %t565)
  br label %bb40
bb40:
  br label %bb69
bb41:
  %t569 = load { i64, [2 x i64] }, ptr %l11
  %t571 = extractvalue { i64, [2 x i64] } %t569, 0
  %t572 = icmp eq i64 %t571, 6
  br i1 %t572, label %bb42, label %bb43
bb42:
  %t574 = getelementptr { i64, [2 x i64] }, ptr %l11, i32 0, i32 1
  %t575 = getelementptr { i64, i32 }, ptr %t574, i32 0, i32 0
  %t576 = load i64, ptr %t575
  store i64 %t576, ptr %l13, !tbaa !24
  %t578 = getelementptr { i64, [2 x i64] }, ptr %l11, i32 0, i32 1
  %t579 = getelementptr { i64, i32 }, ptr %t578, i32 0, i32 1
  %t580 = load i32, ptr %t579
  store i32 %t580, ptr %l14, !tbaa !23
  br label %bb44
bb43:
  br label %bb64
bb44:
  %t582 = load ptr, ptr %l10, !tbaa !29
  %t584 = getelementptr %"compiler/typed:Body", ptr %t582, i32 0, i32 11
  %t585 = load ptr, ptr %t584, !tbaa !29
  %t587 = icmp eq ptr %t585, null
  br i1 %t587, label %bb45, label %bb46
bb45:
  br label %bb70
bb46:
  br label %bb47
bb47:
  %t589 = load ptr, ptr %l10, !tbaa !29
  %t590 = load i64, ptr %l13, !tbaa !24
  %t591 = load i32, ptr %l14, !tbaa !23
  %t595 = call i32 @compiler_2finterp_2eglobalType(ptr %v0, ptr %t589, i64 %t590, i32 %t591)
  store i32 %t595, ptr %l120
  br label %bb48
bb48:
  %t596 = load i32, ptr %l120, !tbaa !23
  store i32 %t596, ptr %l15, !tbaa !23
  %t597 = load i32, ptr %l15, !tbaa !23
  %t598 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t601 = icmp eq i32 %t597, %t598
  br i1 %t601, label %bb49, label %bb50
bb49:
  br label %bb70
bb50:
  br label %bb51
bb51:
  %t603 = load i64, ptr %l9, !tbaa !24
  %t605 = trunc i64 %t603 to i32
  store { i64, [2 x i64] } zeroinitializer, ptr %t607
  %t608 = getelementptr { i64, [2 x i64] }, ptr %t607, i32 0, i32 0
  store i64 0, ptr %t608
  %t610 = insertvalue { i32 } undef, i32 %t605, 0
  %t611 = getelementptr { i64, [2 x i64] }, ptr %t607, i32 0, i32 1
  store { i32 } %t610, ptr %t611
  %t612 = load { i64, [2 x i64] }, ptr %t607
  store { i64, [2 x i64] } %t612, ptr %l16
  %t614 = load ptr, ptr %l0, !tbaa !29
  %t616 = getelementptr %"compiler/interp:Exec", ptr %t614, i32 0, i32 0
  %t617 = load ptr, ptr %t616, !tbaa !29
  %t618 = load i64, ptr %l13, !tbaa !24
  %t619 = load i32, ptr %l14, !tbaa !23
  %t623 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eGlobalDecl(ptr %v0, ptr %v0, ptr %t617, i64 %t618, i32 %t619)
  store ptr %t623, ptr %l132
  br label %bb52
bb52:
  %t624 = load ptr, ptr %l132, !tbaa !29
  store ptr %t624, ptr %l17, !tbaa !29
  %t625 = load ptr, ptr %l17, !tbaa !29
  %t627 = icmp eq ptr %t625, null
  %t629 = xor i1 %t627, true
  br i1 %t629, label %bb53, label %bb54
bb53:
  %t631 = load ptr, ptr %l17, !tbaa !29
  %t633 = getelementptr %"compiler/ast:VarDecl", ptr %t631, i32 0, i32 2
  %t634 = load ptr, ptr %t633, !tbaa !29
  %t636 = call i1 @compiler_2fgeneric_2eWrittenMut(ptr %v0, ptr %t634)
  store i1 %t636, ptr %l139
  br label %bb55
bb54:
  store i1 false, ptr %l136, !tbaa !21
  br label %bb56
bb55:
  %t637 = load i1, ptr %l139, !tbaa !21
  store i1 %t637, ptr %l136, !tbaa !21
  br label %bb56
bb56:
  %t638 = load i1, ptr %l136, !tbaa !21
  store i1 %t638, ptr %l18, !tbaa !21
  %t639 = load ptr, ptr %l0, !tbaa !29
  %t641 = getelementptr %"compiler/interp:Exec", ptr %t639, i32 0, i32 4
  %t642 = load i64, ptr %l13, !tbaa !24
  %t643 = load i32, ptr %l14, !tbaa !23
  %t644 = load i32, ptr %l15, !tbaa !23
  %t645 = load i1, ptr %l18, !tbaa !21
  %t646 = load { i64, [2 x i64] }, ptr %l16
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eDefineGlobal(ptr %v0, ptr %t641, i64 %t642, i32 %t643, i32 %t644, i1 %t645, { i64, [2 x i64] } %t646)
  br label %bb57
bb57:
  %t653 = load ptr, ptr %l0, !tbaa !29
  %t654 = load i64, ptr %l13, !tbaa !24
  %t655 = load i32, ptr %l15, !tbaa !23
  %t656 = load i1, ptr %l18, !tbaa !21
  %t661 = call i1 @compiler_2finterp_2ecompiler_2finterp_3aExec_2ebuildDefault(ptr %v0, ptr %t653, i64 %t654, i32 %t655, i1 %t656)
  store i1 %t661, ptr %l151
  br label %bb58
bb58:
  %t662 = load i1, ptr %l151, !tbaa !21
  br i1 %t662, label %bb59, label %bb60
bb59:
  %t663 = load ptr, ptr %l0, !tbaa !29
  %t665 = getelementptr %"compiler/interp:Exec", ptr %t663, i32 0, i32 4
  %t666 = load i64, ptr %l13, !tbaa !24
  %t667 = load i32, ptr %l14, !tbaa !23
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eBuildGlobal(ptr %v0, ptr %t665, i64 %t666, i32 %t667)
  br label %bb61
bb60:
  br label %bb62
bb61:
  br label %bb62
bb62:
  %t671 = load ptr, ptr %l0, !tbaa !29
  %t673 = getelementptr %"compiler/interp:Exec", ptr %t671, i32 0, i32 9
  %t674 = load i64, ptr %l9, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t673, i64 %t674)
  br label %bb63
bb63:
  br label %bb69
bb64:
  br i1 true, label %bb65, label %bb66
bb65:
  br label %bb67
bb66:
  br label %bb68
bb67:
  br label %bb69
bb68:
  call void @__olang_check_failed(ptr @olang_loc_5218513f7b2d35ff_8134a4fdf2d394bb)
  unreachable
bb69:
  br label %bb70
bb70:
  %t677 = load i64, ptr %l8, !tbaa !24
  %t679 = add i64 %t677, 1
  store i64 %t679, ptr %l8, !tbaa !24
  br label %bb32
bb71:
  %t681 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t681, ptr %l161
  br label %bb72
bb72:
  %t682 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l161
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t682, ptr %l19
  %t683 = load ptr, ptr %l0, !tbaa !29
  %t685 = getelementptr %"compiler/interp:Exec", ptr %t683, i32 0, i32 0
  %t686 = load ptr, ptr %t685, !tbaa !29
  %t688 = getelementptr %"compiler/generic:Program", ptr %t686, i32 0, i32 60
  store ptr %t688, ptr %l20, !tbaa !29
  store i64 0, ptr %l21, !tbaa !24
  br label %bb73
bb73:
  %t690 = load i64, ptr %l21, !tbaa !24
  store i64 %t690, ptr %l165, !tbaa !24
  %t691 = load ptr, ptr %l20, !tbaa !29
  %t693 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t691)
  store i64 %t693, ptr %l167
  br label %bb74
bb74:
  %t694 = load i64, ptr %l165, !tbaa !24
  %t695 = load i64, ptr %l167, !tbaa !24
  %t696 = icmp slt i64 %t694, %t695
  %t698 = xor i1 %t696, true
  br i1 %t698, label %bb75, label %bb76
bb75:
  br label %bb85
bb76:
  br label %bb77
bb77:
  %t700 = load ptr, ptr %l20, !tbaa !29
  %t701 = load i64, ptr %l21, !tbaa !24
  %t704 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t700, i64 %t701)
  store i64 %t704, ptr %l172
  br label %bb78
bb78:
  %t705 = load i64, ptr %l172, !tbaa !24
  store i64 %t705, ptr %l22, !tbaa !24
  %t706 = load i64, ptr %l22, !tbaa !24
  %t708 = load ptr, ptr %l0, !tbaa !29
  %t710 = getelementptr %"compiler/interp:Exec", ptr %t708, i32 0, i32 9
  %t714 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %v0, ptr %t710, i64 %t706)
  store i1 %t714, ptr %l177
  br label %bb79
bb79:
  %t715 = load i1, ptr %l177, !tbaa !21
  br i1 %t715, label %bb80, label %bb81
bb80:
  %t716 = load i64, ptr %l22, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l19, i64 %t716)
  br label %bb82
bb81:
  br label %bb83
bb82:
  br label %bb83
bb83:
  br label %bb84
bb84:
  %t719 = load i64, ptr %l21, !tbaa !24
  %t721 = add i64 %t719, 1
  store i64 %t721, ptr %l21, !tbaa !24
  br label %bb73
bb85:
  %t723 = load ptr, ptr %l0, !tbaa !29
  %t725 = getelementptr %"compiler/interp:Exec", ptr %t723, i32 0, i32 9
  store ptr %t725, ptr %l24, !tbaa !29
  store i64 0, ptr %l25, !tbaa !24
  br label %bb86
bb86:
  %t727 = load i64, ptr %l25, !tbaa !24
  store i64 %t727, ptr %l184, !tbaa !24
  %t728 = load ptr, ptr %l24, !tbaa !29
  %t730 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t728)
  store i64 %t730, ptr %l186
  br label %bb87
bb87:
  %t731 = load i64, ptr %l184, !tbaa !24
  %t732 = load i64, ptr %l186, !tbaa !24
  %t733 = icmp slt i64 %t731, %t732
  %t735 = xor i1 %t733, true
  br i1 %t735, label %bb88, label %bb89
bb88:
  br label %bb98
bb89:
  br label %bb90
bb90:
  %t737 = load ptr, ptr %l24, !tbaa !29
  %t738 = load i64, ptr %l25, !tbaa !24
  %t741 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t737, i64 %t738)
  store i64 %t741, ptr %l191
  br label %bb91
bb91:
  %t742 = load i64, ptr %l191, !tbaa !24
  store i64 %t742, ptr %l26, !tbaa !24
  %t743 = load i64, ptr %l26, !tbaa !24
  %t748 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %s0, ptr %l19, i64 %t743)
  store i1 %t748, ptr %l195
  br label %bb92
bb92:
  %t749 = load i1, ptr %l195, !tbaa !21
  %t750 = xor i1 %t749, true
  br i1 %t750, label %bb93, label %bb94
bb93:
  %t752 = load i64, ptr %l26, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l19, i64 %t752)
  br label %bb95
bb94:
  br label %bb96
bb95:
  br label %bb96
bb96:
  br label %bb97
bb97:
  %t755 = load i64, ptr %l25, !tbaa !24
  %t757 = add i64 %t755, 1
  store i64 %t757, ptr %l25, !tbaa !24
  br label %bb86
bb98:
  %t759 = load ptr, ptr %l0, !tbaa !29
  %t761 = getelementptr %"compiler/interp:Exec", ptr %t759, i32 0, i32 9
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t761)
  br label %bb99
bb99:
  store ptr %l19, ptr %l28, !tbaa !29
  store i64 0, ptr %l29, !tbaa !24
  br label %bb100
bb100:
  %t764 = load i64, ptr %l29, !tbaa !24
  store i64 %t764, ptr %l204, !tbaa !24
  %t765 = load ptr, ptr %l28, !tbaa !29
  %t767 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t765)
  store i64 %t767, ptr %l206
  br label %bb101
bb101:
  %t768 = load i64, ptr %l204, !tbaa !24
  %t769 = load i64, ptr %l206, !tbaa !24
  %t770 = icmp slt i64 %t768, %t769
  %t772 = xor i1 %t770, true
  br i1 %t772, label %bb102, label %bb103
bb102:
  br label %bb108
bb103:
  br label %bb104
bb104:
  %t774 = load ptr, ptr %l28, !tbaa !29
  %t775 = load i64, ptr %l29, !tbaa !24
  %t778 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t774, i64 %t775)
  store i64 %t778, ptr %l211
  br label %bb105
bb105:
  %t779 = load i64, ptr %l211, !tbaa !24
  %t780 = load ptr, ptr %l0, !tbaa !29
  %t782 = getelementptr %"compiler/interp:Exec", ptr %t780, i32 0, i32 9
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t782, i64 %t779)
  br label %bb106
bb106:
  br label %bb107
bb107:
  %t786 = load i64, ptr %l29, !tbaa !24
  %t788 = add i64 %t786, 1
  store i64 %t788, ptr %l29, !tbaa !24
  br label %bb100
bb108:
  %t790 = load ptr, ptr %l0, !tbaa !29
  %t792 = getelementptr %"compiler/interp:Exec", ptr %t790, i32 0, i32 9
  store ptr %t792, ptr %l31, !tbaa !29
  store i64 0, ptr %l32, !tbaa !24
  br label %bb109
bb109:
  %t794 = load i64, ptr %l32, !tbaa !24
  store i64 %t794, ptr %l219, !tbaa !24
  %t795 = load ptr, ptr %l31, !tbaa !29
  %t797 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t795)
  store i64 %t797, ptr %l221
  br label %bb110
bb110:
  %t798 = load i64, ptr %l219, !tbaa !24
  %t799 = load i64, ptr %l221, !tbaa !24
  %t800 = icmp slt i64 %t798, %t799
  %t802 = xor i1 %t800, true
  br i1 %t802, label %bb111, label %bb112
bb111:
  br label %bb117
bb112:
  br label %bb113
bb113:
  %t804 = load ptr, ptr %l31, !tbaa !29
  %t805 = load i64, ptr %l32, !tbaa !24
  %t808 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t804, i64 %t805)
  store i64 %t808, ptr %l226
  br label %bb114
bb114:
  %t809 = load i64, ptr %l226, !tbaa !24
  %t810 = load ptr, ptr %l0, !tbaa !29
  %t813 = trunc i64 %t809 to i32
  store { i64, [2 x i64] } zeroinitializer, ptr %t815
  %t816 = getelementptr { i64, [2 x i64] }, ptr %t815, i32 0, i32 0
  store i64 0, ptr %t816
  %t818 = insertvalue { i32 } undef, i32 %t813, 0
  %t819 = getelementptr { i64, [2 x i64] }, ptr %t815, i32 0, i32 1
  store { i32 } %t818, ptr %t819
  %t820 = load { i64, [2 x i64] }, ptr %t815
  call void @compiler_2finterp_2ecompiler_2finterp_3aExec_2eNeed(ptr %v0, ptr %t810, { i64, [2 x i64] } %t820)
  br label %bb115
bb115:
  br label %bb116
bb116:
  %t823 = load i64, ptr %l32, !tbaa !24
  %t825 = add i64 %t823, 1
  store i64 %t825, ptr %l32, !tbaa !24
  br label %bb109
bb117:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2finterp_2ecompiler_2finterp_3aExec_2etable(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca i64
  %l19 = alloca ptr
  %l22 = alloca i64
  %l25 = alloca i64
  %l29 = alloca { i64, ptr }
  %l32 = alloca { i64, ptr }
  %l37 = alloca i64
  %l41 = alloca i64
  %l44 = alloca i64
  %l62 = alloca { i64, ptr }
  %l64 = alloca i64
  %l66 = alloca ptr
  %l70 = alloca i64
  %l73 = alloca { i64, [2 x i64] }
  %l83 = alloca { i64, ptr }
  %t37 = alloca { i64, [2 x i64] }, align 8
  %t50 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/interp:Exec", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 61
  %t7 = load i64, ptr %l1, !tbaa !24
  %t10 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3aAnyTable_3e_2eRef_H53de96b937c1888202b72d022fb4696d(ptr %v0, ptr %v0, ptr %t6, i64 %t7)
  store ptr %t10, ptr %l19
  br label %bb1
bb1:
  %t11 = load ptr, ptr %l19, !tbaa !29
  store ptr %t11, ptr %l3, !tbaa !29
  %t12 = load ptr, ptr %l3, !tbaa !29
  %t14 = getelementptr %"compiler/generic:AnyTable", ptr %t12, i32 0, i32 5
  %t16 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t14)
  store i64 %t16, ptr %l22
  br label %bb2
bb2:
  %t17 = load i64, ptr @G_2ecompiler_2ftypes_2eAnySlotBase, !tbaa !24
  %t18 = load i64, ptr %l22, !tbaa !24
  %t20 = add i64 %t18, %t17
  %t22 = sub i64 %t20, 1
  store i64 %t22, ptr %l25, !tbaa !24
  %t23 = load i64, ptr %l25, !tbaa !24
  %t24 = icmp sge i64 %t23, 0
  br i1 %t24, label %bb3, label %bb4
bb3:
  %t26 = load i64, ptr %l25, !tbaa !24
  %t27 = icmp sle i64 %t26, 384307168202282325
  br i1 %t27, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_6661ff5fcd5a0e74_cadc672e97162150)
  unreachable
bb5:
  %t29 = load i64, ptr %l25, !tbaa !24
  %t30 = mul i64 %t29, 24
  %t31 = call ptr @__olang_scope_alloc_zeroed(ptr %v0, i64 %t30)
  %t32 = insertvalue { i64, ptr } undef, i64 %t29, 0
  %t33 = insertvalue { i64, ptr } %t32, ptr %t31, 1
  store { i64, ptr } %t33, ptr %l4, !tbaa !27
  %t35 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t35, ptr %l29, !tbaa !27
  %t36 = load i64, ptr %l1, !tbaa !24
  store { i64, [2 x i64] } zeroinitializer, ptr %t37
  %t38 = getelementptr { i64, [2 x i64] }, ptr %t37, i32 0, i32 0
  store i64 5, ptr %t38
  %t40 = insertvalue { i64, i1 } undef, i64 %t36, 0
  %t41 = insertvalue { i64, i1 } %t40, i1 false, 1
  %t42 = getelementptr { i64, [2 x i64] }, ptr %t37, i32 0, i32 1
  store { i64, i1 } %t41, ptr %t42
  %t43 = load { i64, [2 x i64] }, ptr %t37
  %t45 = getelementptr { i64, ptr }, ptr %l29, i32 0, i32 1
  %t46 = load ptr, ptr %t45, !tbaa !27
  %t47 = getelementptr { i64, [2 x i64] }, ptr %t46, i64 0
  store { i64, [2 x i64] } %t43, ptr %t47
  %t48 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t48, ptr %l32, !tbaa !27
  %t49 = load i64, ptr %l1, !tbaa !24
  store { i64, [2 x i64] } zeroinitializer, ptr %t50
  %t51 = getelementptr { i64, [2 x i64] }, ptr %t50, i32 0, i32 0
  store i64 5, ptr %t51
  %t53 = insertvalue { i64, i1 } undef, i64 %t49, 0
  %t54 = insertvalue { i64, i1 } %t53, i1 true, 1
  %t55 = getelementptr { i64, [2 x i64] }, ptr %t50, i32 0, i32 1
  store { i64, i1 } %t54, ptr %t55
  %t56 = load { i64, [2 x i64] }, ptr %t50
  %t58 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !27
  %t60 = getelementptr { i64, [2 x i64] }, ptr %t59, i64 1
  store { i64, [2 x i64] } %t56, ptr %t60
  store i64 0, ptr %l5, !tbaa !24
  %t61 = load ptr, ptr %l3, !tbaa !29
  %t63 = getelementptr %"compiler/generic:AnyTable", ptr %t61, i32 0, i32 5
  %t65 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t63)
  store i64 %t65, ptr %l37
  br label %bb7
bb6:
  call void @__olang_check_failed(ptr @olang_loc_6661ff5fcd5a0e74_cadc672e97162150)
  unreachable
bb7:
  %t66 = load i64, ptr %l37, !tbaa !24
  store i64 %t66, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t67 = load i64, ptr %l6, !tbaa !24
  %t68 = load i64, ptr %l5, !tbaa !24
  %t71 = icmp sgt i64 %t67, %t68
  br i1 %t71, label %bb8, label %bb9
bb8:
  %t73 = load i64, ptr %l7, !tbaa !24
  %t75 = icmp sgt i64 %t73, 0
  br i1 %t75, label %bb10, label %bb11
bb9:
  store i64 0, ptr %l41, !tbaa !24
  br label %bb13
bb10:
  %t77 = load i64, ptr %l6, !tbaa !24
  %t78 = load i64, ptr %l5, !tbaa !24
  %t81 = sub i64 %t77, %t78
  %t82 = load i64, ptr %l7, !tbaa !24
  %t85 = add i64 %t81, %t82
  %t87 = sub i64 %t85, 1
  %t88 = load i64, ptr %l7, !tbaa !24
  %t91 = sdiv i64 %t87, %t88
  store i64 %t91, ptr %l44, !tbaa !24
  br label %bb12
bb11:
  store i64 0, ptr %l44, !tbaa !24
  br label %bb12
bb12:
  %t93 = load i64, ptr %l44, !tbaa !24
  store i64 %t93, ptr %l41, !tbaa !24
  br label %bb13
bb13:
  %t94 = load i64, ptr %l41, !tbaa !24
  store i64 %t94, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb14
bb14:
  %t95 = load i64, ptr %l9, !tbaa !24
  %t96 = load i64, ptr %l8, !tbaa !24
  %t99 = icmp slt i64 %t95, %t96
  %t101 = xor i1 %t99, true
  br i1 %t101, label %bb15, label %bb16
bb15:
  br label %bb21
bb16:
  br label %bb17
bb17:
  %t103 = load i64, ptr %l5, !tbaa !24
  %t104 = load i64, ptr %l9, !tbaa !24
  %t105 = load i64, ptr %l7, !tbaa !24
  %t108 = mul i64 %t104, %t105
  %t111 = add i64 %t103, %t108
  store i64 %t111, ptr %l10, !tbaa !24
  %t113 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t113, ptr %l62, !tbaa !27
  %t114 = load i64, ptr %l10, !tbaa !24
  %t116 = add i64 %t114, 2
  store i64 %t116, ptr %l64, !tbaa !24
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t119 = getelementptr %"compiler/interp:Exec", ptr %t117, i32 0, i32 3
  store ptr %t119, ptr %l66, !tbaa !29
  %t120 = load ptr, ptr %l3, !tbaa !29
  %t122 = getelementptr %"compiler/generic:AnyTable", ptr %t120, i32 0, i32 5
  %t123 = load i64, ptr %l10, !tbaa !24
  %t126 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t122, i64 %t123)
  store i64 %t126, ptr %l70
  br label %bb18
bb18:
  %t127 = load i64, ptr %l70, !tbaa !24
  %t128 = trunc i64 %t127 to i32
  %t130 = load ptr, ptr %l66, !tbaa !29
  %t132 = call { i64, [2 x i64] } @compiler_2flower_2ecompiler_2flower_3aLowerer_2eCodeOf(ptr %v0, ptr %t130, i32 %t128)
  store { i64, [2 x i64] } %t132, ptr %l73
  br label %bb19
bb19:
  %t133 = load { i64, [2 x i64] }, ptr %l73
  %t134 = load i64, ptr %l64, !tbaa !24
  %t135 = getelementptr { i64, ptr }, ptr %l62, i32 0, i32 1
  %t136 = load ptr, ptr %t135, !tbaa !27
  %t137 = getelementptr { i64, [2 x i64] }, ptr %t136, i64 %t134
  store { i64, [2 x i64] } %t133, ptr %t137
  br label %bb20
bb20:
  %t138 = load i64, ptr %l9, !tbaa !24
  %t140 = add i64 %t138, 1
  store i64 %t140, ptr %l9, !tbaa !24
  br label %bb14
bb21:
  %t142 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t142, ptr %l11, !tbaa !27
  store i64 0, ptr %l12, !tbaa !24
  %t144 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t146 = extractvalue { i64, ptr } %t144, 0
  store i64 %t146, ptr %l13, !tbaa !24
  br label %bb22
bb22:
  %t148 = load i64, ptr %l12, !tbaa !24
  %t149 = load i64, ptr %l13, !tbaa !24
  %t152 = icmp slt i64 %t148, %t149
  %t154 = xor i1 %t152, true
  br i1 %t154, label %bb23, label %bb24
bb23:
  br label %bb28
bb24:
  br label %bb25
bb25:
  %t156 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t156, ptr %l83, !tbaa !27
  %t157 = load i64, ptr %l12, !tbaa !24
  %t159 = getelementptr { i64, ptr }, ptr %l83, i32 0, i32 1
  %t160 = load ptr, ptr %t159, !tbaa !27
  %t161 = getelementptr { i64, [2 x i64] }, ptr %t160, i64 %t157
  %t162 = load { i64, [2 x i64] }, ptr %t161
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2ePush_3ccompiler_2fmir_3aFnKey_3e(ptr %v1, ptr %a2, { i64, [2 x i64] } %t162)
  br label %bb26
bb26:
  br label %bb27
bb27:
  %t168 = load i64, ptr %l12, !tbaa !24
  %t170 = add i64 %t168, 1
  store i64 %t170, ptr %l12, !tbaa !24
  br label %bb22
bb28:
  %t172 = load ptr, ptr %l0, !tbaa !29
  %t174 = getelementptr %"compiler/interp:Exec", ptr %t172, i32 0, i32 4
  %t175 = load i64, ptr %l1, !tbaa !24
  %t176 = load ptr, ptr %l3, !tbaa !29
  %t178 = getelementptr %"compiler/generic:AnyTable", ptr %t176, i32 0, i32 0
  %t179 = load i32, ptr %t178, !tbaa !23
  %t180 = load { i64, ptr }, ptr %l4, !tbaa !27
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eDefineTable(ptr %v0, ptr %v0, ptr %t174, i64 %t175, i32 %t179, { i64, ptr } %t180)
  br label %bb29
bb29:
  br label %ret
ret:
  ret void
}

define dso_local { i64, [2 x i64] } @compiler_2finterp_2ecompiler_2finterp_3aExec_2eunrolled(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca [3 x i64]
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l17 = alloca { i64, [2 x i64] }
  %l18 = alloca { i64, [5 x i64] }
  %l22 = alloca i32
  %l36 = alloca { i64, ptr }
  %l39 = alloca i64
  %l43 = alloca i64
  %l44 = alloca i32
  %l46 = alloca i1
  %l49 = alloca { i64, ptr }
  %l67 = alloca i64
  %l86 = alloca i64
  %l89 = alloca i64
  %l99 = alloca { i64, ptr }
  %l100 = alloca i64
  %l126 = alloca ptr
  %l127 = alloca { i64, [2 x i64] }
  %l131 = alloca { i64, [5 x i64] }
  %l136 = alloca { i64, ptr }
  %l147 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, [2 x i64] }
  %t79 = alloca { i64, [2 x i64] }, align 8
  %t113 = alloca { i64, [2 x i64] }, align 8
  %t174 = alloca { i64, [2 x i64] }, align 8
  %t257 = alloca { i64, [2 x i64] }, align 8
  %t271 = alloca { i64, [2 x i64] }, align 8
  %t315 = alloca { i64, [2 x i64] }, align 8
  %t351 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/interp:Exec", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  %t8 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s0, ptr %t6, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d101, i32 0, i32 1) })
  store i32 %t8, ptr %l22
  br label %bb1
bb1:
  %t9 = load i32, ptr %l22, !tbaa !23
  store i32 %t9, ptr %l2, !tbaa !23
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr %"compiler/check:UnrollAsk", ptr %t10, i32 0, i32 2
  %t13 = load i64, ptr %t12, !tbaa !24
  %t15 = icmp slt i64 %t13, 0
  br i1 %t15, label %bb2, label %bb3
bb2:
  %t17 = insertvalue [3 x i64] undef, i64 0, 0
  %t18 = insertvalue [3 x i64] %t17, i64 0, 1
  %t19 = insertvalue [3 x i64] %t18, i64 0, 2
  store [3 x i64] %t19, ptr %l3
  %t21 = getelementptr [3 x i64], ptr %l3, i64 0, i64 2
  store i64 1, ptr %t21, !tbaa !34
  %t22 = load ptr, ptr %l1, !tbaa !29
  %t24 = getelementptr %"compiler/check:UnrollAsk", ptr %t22, i32 0, i32 1
  %t25 = load { i64, ptr }, ptr %t24, !tbaa !27
  store { i64, ptr } %t25, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t27 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t29 = extractvalue { i64, ptr } %t27, 0
  store i64 %t29, ptr %l6, !tbaa !24
  br label %bb4
bb3:
  br label %bb39
bb4:
  %t31 = load i64, ptr %l5, !tbaa !24
  %t32 = load i64, ptr %l6, !tbaa !24
  %t35 = icmp slt i64 %t31, %t32
  %t37 = xor i1 %t35, true
  br i1 %t37, label %bb5, label %bb6
bb5:
  br label %bb17
bb6:
  br label %bb7
bb7:
  %t39 = load i64, ptr %l5, !tbaa !24
  store i64 %t39, ptr %l7, !tbaa !24
  %t41 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t41, ptr %l36, !tbaa !27
  %t42 = load i64, ptr %l5, !tbaa !24
  %t44 = getelementptr { i64, ptr }, ptr %l36, i32 0, i32 1
  %t45 = load ptr, ptr %t44, !tbaa !27
  %t46 = getelementptr i64, ptr %t45, i64 %t42
  %t47 = load i64, ptr %t46, !tbaa !34
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = load i32, ptr %l2, !tbaa !23
  %t55 = call { i32, i64 } @compiler_2finterp_2ecompiler_2finterp_3aExec_2eintOf(ptr %v0, ptr %t49, i64 %t47, i32 %t51)
  %t56 = extractvalue { i32, i64 } %t55, 1
  %t57 = extractvalue { i32, i64 } %t55, 0
  store i32 %t57, ptr %l44
  %t58 = icmp ne i32 %t57, 0
  br i1 %t58, label %bb9, label %ok.59, !prof !99
ok.59:
  store i64 %t56, ptr %l43
  br label %bb8
bb8:
  %t60 = load i64, ptr %l43, !tbaa !24
  store i64 %t60, ptr %l39, !tbaa !24
  br label %bb12
bb9:
  %t61 = load i32, ptr %l44, !tbaa !23
  %t62 = ashr i32 %t61, 16
  %t64 = icmp eq i32 %t62, 1
  store i1 %t64, ptr %l46, !tbaa !21
  br label %bb10
bb10:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/interp:Exec", ptr %t65, i32 0, i32 4
  %t68 = getelementptr %"compiler/eval:Machine", ptr %t67, i32 0, i32 20
  %t69 = load { i64, [5 x i64] }, ptr %t68
  %t71 = call { i64, ptr } @compiler_2finterp_2estopWhy(ptr %v0, ptr %v2, { i64, [5 x i64] } %t69)
  store { i64, ptr } %t71, ptr %l49
  br label %bb11
bb11:
  %t72 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t73 = extractvalue { i64, ptr } %t72, 0
  %t74 = extractvalue { i64, ptr } %t72, 1
  %t75 = mul i64 %t73, 1
  %t76 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t75)
  call void @llvm.memcpy.p0.p0.i64(ptr %t76, ptr %t74, i64 %t75, i1 false)
  %t77 = insertvalue { i64, ptr } undef, i64 %t73, 0
  %t78 = insertvalue { i64, ptr } %t77, ptr %t76, 1
  store { i64, [2 x i64] } zeroinitializer, ptr %t79
  %t80 = getelementptr { i64, [2 x i64] }, ptr %t79, i32 0, i32 0
  store i64 1, ptr %t80
  %t82 = insertvalue { { i64, ptr } } undef, { i64, ptr } %t78, 0
  %t83 = getelementptr { i64, [2 x i64] }, ptr %t79, i32 0, i32 1
  store { { i64, ptr } } %t82, ptr %t83
  %t84 = load { i64, [2 x i64] }, ptr %t79
  call void @__olang_scope_close(ptr %s0)
  store { i64, [2 x i64] } %t84, ptr %rv
  br label %ret
bb12:
  %t86 = load i64, ptr %l39, !tbaa !24
  store i64 %t86, ptr %l9, !tbaa !24
  %t87 = load ptr, ptr %l1, !tbaa !29
  %t89 = getelementptr %"compiler/check:UnrollAsk", ptr %t87, i32 0, i32 1
  %t90 = load { i64, ptr }, ptr %t89, !tbaa !27
  %t92 = extractvalue { i64, ptr } %t90, 0
  %t94 = icmp eq i64 %t92, 1
  br i1 %t94, label %bb13, label %bb14
bb13:
  %t96 = load i64, ptr %l9, !tbaa !24
  %t98 = getelementptr [3 x i64], ptr %l3, i64 0, i64 1
  store i64 %t96, ptr %t98, !tbaa !34
  br label %bb15
bb14:
  %t99 = load i64, ptr %l7, !tbaa !24
  %t100 = load i64, ptr %l9, !tbaa !24
  %t103 = getelementptr [3 x i64], ptr %l3, i64 0, i64 %t99
  store i64 %t100, ptr %t103, !tbaa !34
  br label %bb15
bb15:
  br label %bb16
bb16:
  %t104 = load i64, ptr %l5, !tbaa !24
  %t106 = add i64 %t104, 1
  store i64 %t106, ptr %l5, !tbaa !24
  br label %bb4
bb17:
  %t108 = getelementptr [3 x i64], ptr %l3, i64 0, i64 2
  %t109 = load i64, ptr %t108, !tbaa !34
  %t111 = icmp sle i64 %t109, 0
  br i1 %t111, label %bb18, label %bb19
bb18:
  store { i64, [2 x i64] } zeroinitializer, ptr %t113
  %t114 = getelementptr { i64, [2 x i64] }, ptr %t113, i32 0, i32 0
  store i64 1, ptr %t114
  %t115 = insertvalue { { i64, ptr } } undef, { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d102, i32 0, i32 1) }, 0
  %t116 = getelementptr { i64, [2 x i64] }, ptr %t113, i32 0, i32 1
  store { { i64, ptr } } %t115, ptr %t116
  %t117 = load { i64, [2 x i64] }, ptr %t113
  call void @__olang_scope_close(ptr %s0)
  store { i64, [2 x i64] } %t117, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  %t119 = getelementptr [3 x i64], ptr %l3, i64 0, i64 1
  %t120 = load i64, ptr %t119, !tbaa !34
  %t121 = getelementptr [3 x i64], ptr %l3, i64 0, i64 0
  %t122 = load i64, ptr %t121, !tbaa !34
  %t125 = icmp sgt i64 %t120, %t122
  br i1 %t125, label %bb21, label %bb22
bb21:
  %t127 = getelementptr [3 x i64], ptr %l3, i64 0, i64 1
  %t128 = load i64, ptr %t127, !tbaa !34
  %t129 = getelementptr [3 x i64], ptr %l3, i64 0, i64 0
  %t130 = load i64, ptr %t129, !tbaa !34
  %t133 = sub i64 %t128, %t130
  %t134 = getelementptr [3 x i64], ptr %l3, i64 0, i64 2
  %t135 = load i64, ptr %t134, !tbaa !34
  %t138 = add i64 %t133, %t135
  %t140 = sub i64 %t138, 1
  %t141 = getelementptr [3 x i64], ptr %l3, i64 0, i64 2
  %t142 = load i64, ptr %t141, !tbaa !34
  %t145 = sdiv i64 %t140, %t142
  store i64 %t145, ptr %l67, !tbaa !24
  br label %bb23
bb22:
  store i64 0, ptr %l67, !tbaa !24
  br label %bb23
bb23:
  %t147 = load i64, ptr %l67, !tbaa !24
  store i64 %t147, ptr %l10, !tbaa !24
  %t148 = load i64, ptr %l10, !tbaa !24
  %t150 = icmp sgt i64 %t148, 1048576
  br i1 %t150, label %bb24, label %bb25
bb24:
  %t152 = load i64, ptr %l10, !tbaa !24
  %t153 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d103, i32 0, i32 1) }, 1
  %t154 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d103, i32 0, i32 1) }, 0
  %t156 = call i64 @__olang_fmt_i64(ptr null, i64 %t152)
  %t157 = add i64 %t154, %t156
  %t158 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d104, i32 0, i32 1) }, 1
  %t159 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d104, i32 0, i32 1) }, 0
  %t160 = add i64 %t157, %t159
  %t161 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t160)
  call void @olang_textcopy(ptr %t161, ptr %t153, i64 %t154)
  %t162 = getelementptr i8, ptr %t161, i64 %t154
  %t163 = call i64 @__olang_fmt_i64(ptr %t162, i64 %t152)
  %t164 = getelementptr i8, ptr %t162, i64 %t156
  call void @olang_textcopy(ptr %t164, ptr %t158, i64 %t159)
  %t165 = insertvalue { i64, ptr } undef, i64 %t160, 0
  %t166 = insertvalue { i64, ptr } %t165, ptr %t161, 1
  %t168 = extractvalue { i64, ptr } %t166, 0
  %t169 = extractvalue { i64, ptr } %t166, 1
  %t170 = mul i64 %t168, 1
  %t171 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t170)
  call void @llvm.memcpy.p0.p0.i64(ptr %t171, ptr %t169, i64 %t170, i1 false)
  %t172 = insertvalue { i64, ptr } undef, i64 %t168, 0
  %t173 = insertvalue { i64, ptr } %t172, ptr %t171, 1
  store { i64, [2 x i64] } zeroinitializer, ptr %t174
  %t175 = getelementptr { i64, [2 x i64] }, ptr %t174, i32 0, i32 0
  store i64 1, ptr %t175
  %t177 = insertvalue { { i64, ptr } } undef, { i64, ptr } %t173, 0
  %t178 = getelementptr { i64, [2 x i64] }, ptr %t174, i32 0, i32 1
  store { { i64, ptr } } %t177, ptr %t178
  %t179 = load { i64, [2 x i64] }, ptr %t174
  call void @__olang_scope_close(ptr %s0)
  store { i64, [2 x i64] } %t179, ptr %rv
  br label %ret
bb25:
  br label %bb26
bb26:
  store i64 0, ptr %l11, !tbaa !24
  %t181 = load i64, ptr %l10, !tbaa !24
  store i64 %t181, ptr %l12, !tbaa !24
  store i64 1, ptr %l13, !tbaa !24
  %t183 = load i64, ptr %l12, !tbaa !24
  %t184 = load i64, ptr %l11, !tbaa !24
  %t187 = icmp sgt i64 %t183, %t184
  br i1 %t187, label %bb27, label %bb28
bb27:
  %t189 = load i64, ptr %l13, !tbaa !24
  %t191 = icmp sgt i64 %t189, 0
  br i1 %t191, label %bb29, label %bb30
bb28:
  store i64 0, ptr %l86, !tbaa !24
  br label %bb32
bb29:
  %t193 = load i64, ptr %l12, !tbaa !24
  %t194 = load i64, ptr %l11, !tbaa !24
  %t197 = sub i64 %t193, %t194
  %t198 = load i64, ptr %l13, !tbaa !24
  %t201 = add i64 %t197, %t198
  %t203 = sub i64 %t201, 1
  %t204 = load i64, ptr %l13, !tbaa !24
  %t207 = sdiv i64 %t203, %t204
  store i64 %t207, ptr %l89, !tbaa !24
  br label %bb31
bb30:
  store i64 0, ptr %l89, !tbaa !24
  br label %bb31
bb31:
  %t209 = load i64, ptr %l89, !tbaa !24
  store i64 %t209, ptr %l86, !tbaa !24
  br label %bb32
bb32:
  %t210 = load i64, ptr %l86, !tbaa !24
  store i64 %t210, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  %t211 = load i64, ptr %l14, !tbaa !24
  %t213 = mul i64 %t211, 8
  %t214 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t213)
  %t215 = insertvalue { i64, ptr } undef, i64 %t211, 0
  %t216 = insertvalue { i64, ptr } %t215, ptr %t214, 1
  store { i64, ptr } %t216, ptr %l99, !tbaa !27
  store i64 0, ptr %l100, !tbaa !24
  br label %bb33
bb33:
  %t217 = load i64, ptr %l15, !tbaa !24
  %t218 = load i64, ptr %l14, !tbaa !24
  %t221 = icmp slt i64 %t217, %t218
  %t223 = xor i1 %t221, true
  br i1 %t223, label %bb34, label %bb35
bb34:
  br label %bb38
bb35:
  br label %bb36
bb36:
  %t225 = load i64, ptr %l11, !tbaa !24
  %t226 = load i64, ptr %l15, !tbaa !24
  %t227 = load i64, ptr %l13, !tbaa !24
  %t230 = mul i64 %t226, %t227
  %t233 = add i64 %t225, %t230
  %t235 = getelementptr [3 x i64], ptr %l3, i64 0, i64 0
  %t236 = load i64, ptr %t235, !tbaa !34
  %t238 = getelementptr [3 x i64], ptr %l3, i64 0, i64 2
  %t239 = load i64, ptr %t238, !tbaa !34
  %t242 = mul i64 %t233, %t239
  %t245 = add i64 %t236, %t242
  %t247 = load i64, ptr %l100, !tbaa !24
  %t248 = getelementptr { i64, ptr }, ptr %l99, i32 0, i32 1
  %t249 = load ptr, ptr %t248, !tbaa !27
  %t250 = getelementptr i64, ptr %t249, i64 %t247
  store i64 %t245, ptr %t250, !tbaa !34
  %t251 = load i64, ptr %l100, !tbaa !24
  %t252 = add i64 %t251, 1
  store i64 %t252, ptr %l100, !tbaa !24
  br label %bb37
bb37:
  %t253 = load i64, ptr %l15, !tbaa !24
  %t255 = add i64 %t253, 1
  store i64 %t255, ptr %l15, !tbaa !24
  br label %bb33
bb38:
  store { i64, [2 x i64] } zeroinitializer, ptr %t257
  %t258 = getelementptr { i64, [2 x i64] }, ptr %t257, i32 0, i32 0
  store i64 0, ptr %t258
  %t259 = load { i64, ptr }, ptr %l99, !tbaa !27
  %t260 = insertvalue { { i64, ptr } } undef, { i64, ptr } %t259, 0
  %t261 = getelementptr { i64, [2 x i64] }, ptr %t257, i32 0, i32 1
  store { { i64, ptr } } %t260, ptr %t261
  %t262 = load { i64, [2 x i64] }, ptr %t257
  call void @__olang_scope_close(ptr %s0)
  store { i64, [2 x i64] } %t262, ptr %rv
  br label %ret
bb39:
  %t264 = load ptr, ptr %l1, !tbaa !29
  %t266 = getelementptr %"compiler/check:UnrollAsk", ptr %t264, i32 0, i32 2
  %t267 = load i64, ptr %t266, !tbaa !24
  %t269 = trunc i64 %t267 to i32
  store { i64, [2 x i64] } zeroinitializer, ptr %t271
  %t272 = getelementptr { i64, [2 x i64] }, ptr %t271, i32 0, i32 0
  store i64 0, ptr %t272
  %t274 = insertvalue { i32 } undef, i32 %t269, 0
  %t275 = getelementptr { i64, [2 x i64] }, ptr %t271, i32 0, i32 1
  store { i32 } %t274, ptr %t275
  %t276 = load { i64, [2 x i64] }, ptr %t271
  store { i64, [2 x i64] } %t276, ptr %l17
  %t278 = load ptr, ptr %l0, !tbaa !29
  %t279 = load { i64, [2 x i64] }, ptr %l17
  call void @compiler_2finterp_2ecompiler_2finterp_3aExec_2eNeed(ptr %v0, ptr %t278, { i64, [2 x i64] } %t279)
  br label %bb40
bb40:
  %t282 = load ptr, ptr %l0, !tbaa !29
  %t284 = getelementptr %"compiler/interp:Exec", ptr %t282, i32 0, i32 4
  store ptr %t284, ptr %l126, !tbaa !29
  %t285 = load { i64, [2 x i64] }, ptr %l17
  store { i64, [2 x i64] } %t285, ptr %l127
  %t286 = icmp sge i64 0, 0
  br i1 %t286, label %bb41, label %bb42
bb41:
  %t288 = icmp sle i64 0, 1152921504606846975
  br i1 %t288, label %bb43, label %bb44
bb42:
  call void @__olang_check_failed(ptr @olang_loc_8aa385fac4707635_8a0feffc81f8cb59)
  unreachable
bb43:
  %t290 = mul i64 0, 8
  %t291 = insertvalue { i64, ptr } undef, i64 0, 0
  %t292 = insertvalue { i64, ptr } %t291, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t293 = load ptr, ptr %l126, !tbaa !29
  %t294 = load { i64, [2 x i64] }, ptr %l127
  %t296 = call { i64, [5 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2eEval(ptr %v0, ptr %s0, ptr %v0, ptr %t293, { i64, [2 x i64] } %t294, { i64, ptr } %t292)
  store { i64, [5 x i64] } %t296, ptr %l131
  br label %bb45
bb44:
  call void @__olang_check_failed(ptr @olang_loc_8aa385fac4707635_8a0feffc81f8cb59)
  unreachable
bb45:
  %t297 = load { i64, [5 x i64] }, ptr %l131
  store { i64, [5 x i64] } %t297, ptr %l18
  %t298 = load { i64, [5 x i64] }, ptr %l18
  %t300 = extractvalue { i64, [5 x i64] } %t298, 0
  %t301 = icmp eq i64 %t300, 0
  %t303 = xor i1 %t301, true
  br i1 %t303, label %bb46, label %bb47
bb46:
  %t305 = load { i64, [5 x i64] }, ptr %l18
  %t307 = call { i64, ptr } @compiler_2finterp_2estopWhy(ptr %v0, ptr %v2, { i64, [5 x i64] } %t305)
  store { i64, ptr } %t307, ptr %l136
  br label %bb48
bb47:
  br label %bb49
bb48:
  %t308 = load { i64, ptr }, ptr %l136, !tbaa !27
  %t309 = extractvalue { i64, ptr } %t308, 0
  %t310 = extractvalue { i64, ptr } %t308, 1
  %t311 = mul i64 %t309, 1
  %t312 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t311)
  call void @llvm.memcpy.p0.p0.i64(ptr %t312, ptr %t310, i64 %t311, i1 false)
  %t313 = insertvalue { i64, ptr } undef, i64 %t309, 0
  %t314 = insertvalue { i64, ptr } %t313, ptr %t312, 1
  store { i64, [2 x i64] } zeroinitializer, ptr %t315
  %t316 = getelementptr { i64, [2 x i64] }, ptr %t315, i32 0, i32 0
  store i64 1, ptr %t316
  %t318 = insertvalue { { i64, ptr } } undef, { i64, ptr } %t314, 0
  %t319 = getelementptr { i64, [2 x i64] }, ptr %t315, i32 0, i32 1
  store { { i64, ptr } } %t318, ptr %t319
  %t320 = load { i64, [2 x i64] }, ptr %t315
  call void @__olang_scope_close(ptr %s0)
  store { i64, [2 x i64] } %t320, ptr %rv
  br label %ret
bb49:
  %t322 = load ptr, ptr %l0, !tbaa !29
  %t324 = getelementptr %"compiler/interp:Exec", ptr %t322, i32 0, i32 4
  %t325 = load ptr, ptr %l0, !tbaa !29
  %t327 = getelementptr %"compiler/interp:Exec", ptr %t325, i32 0, i32 4
  %t328 = getelementptr %"compiler/eval:Machine", ptr %t327, i32 0, i32 18
  %t329 = load %"compiler/eval:Ptr", ptr %t328
  %t330 = load ptr, ptr %l0, !tbaa !29
  %t332 = getelementptr %"compiler/interp:Exec", ptr %t330, i32 0, i32 4
  %t333 = getelementptr %"compiler/eval:Machine", ptr %t332, i32 0, i32 19
  %t334 = load i32, ptr %t333, !tbaa !23
  %t335 = load ptr, ptr %l1, !tbaa !29
  %t337 = getelementptr %"compiler/check:UnrollAsk", ptr %t335, i32 0, i32 3
  %t338 = load i32, ptr %t337, !tbaa !23
  %t343 = call { i64, ptr } @compiler_2feval_2ecompiler_2feval_3aMachine_2eElems(ptr %v0, ptr %v2, ptr %t324, %"compiler/eval:Ptr" %t329, i32 %t334, i32 %t338)
  store { i64, ptr } %t343, ptr %l147
  br label %bb50
bb50:
  %t344 = load { i64, ptr }, ptr %l147, !tbaa !27
  %t345 = extractvalue { i64, ptr } %t344, 0
  %t346 = extractvalue { i64, ptr } %t344, 1
  %t347 = mul i64 %t345, 8
  %t348 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t347)
  call void @llvm.memcpy.p0.p0.i64(ptr %t348, ptr %t346, i64 %t347, i1 false)
  %t349 = insertvalue { i64, ptr } undef, i64 %t345, 0
  %t350 = insertvalue { i64, ptr } %t349, ptr %t348, 1
  store { i64, [2 x i64] } zeroinitializer, ptr %t351
  %t352 = getelementptr { i64, [2 x i64] }, ptr %t351, i32 0, i32 0
  store i64 0, ptr %t352
  %t354 = insertvalue { { i64, ptr } } undef, { i64, ptr } %t350, 0
  %t355 = getelementptr { i64, [2 x i64] }, ptr %t351, i32 0, i32 1
  store { { i64, ptr } } %t354, ptr %t355
  %t356 = load { i64, [2 x i64] }, ptr %t351
  call void @__olang_scope_close(ptr %s0)
  store { i64, [2 x i64] } %t356, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [2 x i64] }, ptr %rv
  ret { i64, [2 x i64] } %rr
}

define dso_local i1 @compiler_2finterp_2econdSaid(ptr %v0, ptr %a0, { i64, [3 x i64] } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [3 x i64] }
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l10 = alloca ptr
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store { i64, [3 x i64] } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [3 x i64] }, ptr %l1
  %t3 = extractvalue { i64, [3 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 3
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = getelementptr { i64, [3 x i64] }, ptr %l1, i32 0, i32 1
  %t7 = getelementptr { i64, i64, i64 }, ptr %t6, i32 0, i32 0
  %t8 = load i64, ptr %t7
  store i64 %t8, ptr %l2, !tbaa !24
  %t10 = getelementptr { i64, [3 x i64] }, ptr %l1, i32 0, i32 1
  %t11 = getelementptr { i64, i64, i64 }, ptr %t10, i32 0, i32 1
  %t12 = load i64, ptr %t11
  store i64 %t12, ptr %l3, !tbaa !24
  %t14 = getelementptr { i64, [3 x i64] }, ptr %l1, i32 0, i32 1
  %t15 = getelementptr { i64, i64, i64 }, ptr %t14, i32 0, i32 2
  %t16 = load i64, ptr %t15
  store i64 %t16, ptr %l4, !tbaa !24
  br label %bb3
bb2:
  br label %bb6
bb3:
  %t18 = load ptr, ptr %l0, !tbaa !29
  store ptr %t18, ptr %l10, !tbaa !29
  %t19 = load i64, ptr %l2, !tbaa !24
  store i64 %t19, ptr %l11, !tbaa !24
  %t20 = load i64, ptr %l3, !tbaa !24
  store i64 %t20, ptr %l12, !tbaa !24
  %t21 = load i64, ptr %l4, !tbaa !24
  store i64 %t21, ptr %l13, !tbaa !24
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eCount(ptr %v0, ptr %t22)
  store i64 %t24, ptr %l15
  br label %bb4
bb4:
  %t25 = load ptr, ptr %l10, !tbaa !29
  %t26 = load i64, ptr %l11, !tbaa !24
  %t27 = load i64, ptr %l12, !tbaa !24
  %t28 = load i64, ptr %l13, !tbaa !24
  %t29 = load i64, ptr %l15, !tbaa !24
  %t30 = call i1 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrorWithin(ptr %v0, ptr %t25, i64 %t26, i64 %t27, i64 %t28, i64 %t29)
  store i1 %t30, ptr %l16
  br label %bb5
bb5:
  %t31 = load i1, ptr %l16, !tbaa !21
  store i1 %t31, ptr %rv
  br label %ret
bb6:
  br i1 true, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  store i1 false, ptr %rv
  br label %ret
bb10:
  call void @__olang_check_failed(ptr @olang_loc_6556c5b27a8f2520_6c50e0cecbbb5fdc)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2finterp_2edecide(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %v6, ptr %v7, ptr %v8, ptr %a0, ptr %a1, ptr %a2, ptr %a3, ptr %a4, ptr %a5, ptr %a6, ptr %a7, ptr %a8) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l10 = alloca ptr
  %l11 = alloca i64
  %l12 = alloca ptr
  %l13 = alloca i64
  %l14 = alloca %"compiler/check:EmbedAsk"
  %l15 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %lp16 = alloca ptr
  %l17 = alloca ptr
  %l18 = alloca i64
  %l19 = alloca %"compiler/check:UnrollAsk"
  %l20 = alloca { i64, [2 x i64] }
  %l21 = alloca { i64, ptr }
  %l22 = alloca { i64, ptr }
  %l23 = alloca i64
  %l24 = alloca i64
  %l26 = alloca { i64, ptr }
  %l27 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l28 = alloca ptr
  %l29 = alloca i64
  %l30 = alloca %"compiler/check:Ask"
  %l31 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l32 = alloca i1
  %l33 = alloca ptr
  %l34 = alloca i64
  %l35 = alloca %"compiler/generic:ConstAsk"
  %l36 = alloca { i64, ptr }
  %l37 = alloca i64
  %l38 = alloca { i64, [2 x i64] }
  %l40 = alloca ptr
  %l41 = alloca i64
  %l42 = alloca %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20"
  %l43 = alloca ptr
  %l44 = alloca %"compiler/interp:chained"
  %l45 = alloca i64
  %l46 = alloca i1
  %l47 = alloca { i64, ptr }
  %l48 = alloca { i64, [3 x i64] }
  %l49 = alloca ptr
  %l50 = alloca i64
  %l53 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l55 = alloca i64
  %l57 = alloca i1
  %l60 = alloca i64
  %l62 = alloca i1
  %l66 = alloca i64
  %l68 = alloca i1
  %l71 = alloca i64
  %l73 = alloca i1
  %l76 = alloca i64
  %l84 = alloca %"compiler/interp:Exec"
  %l86 = alloca ptr
  %l87 = alloca i64
  %l90 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l92 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l94 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l96 = alloca ptr
  %l97 = alloca i64
  %l100 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l102 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l104 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l108 = alloca i64
  %l110 = alloca i64
  %l115 = alloca %"compiler/check:EmbedAsk"
  %l119 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l122 = alloca i1
  %l125 = alloca { i64, ptr }
  %l128 = alloca { i64, ptr }
  %l129 = alloca i32
  %l130 = alloca { i64, ptr }
  %l132 = alloca i64
  %l133 = alloca { i64, ptr }
  %l144 = alloca i64
  %l146 = alloca i64
  %l151 = alloca %"compiler/check:UnrollAsk"
  %l154 = alloca i1
  %l155 = alloca i1
  %l158 = alloca i1
  %l163 = alloca { i64, [2 x i64] }
  %l167 = alloca ptr
  %l168 = alloca { i64, ptr }
  %l169 = alloca i64
  %l175 = alloca { i64, ptr }
  %l176 = alloca i64
  %l181 = alloca { i64, ptr }
  %l195 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l198 = alloca i64
  %l200 = alloca i64
  %l205 = alloca %"compiler/check:Ask"
  %l209 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l212 = alloca i1
  %l213 = alloca i1
  %l216 = alloca i1
  %l217 = alloca i1
  %l220 = alloca i1
  %l221 = alloca i32
  %l239 = alloca i64
  %l241 = alloca i64
  %l246 = alloca %"compiler/generic:ConstAsk"
  %l250 = alloca i1
  %l260 = alloca i64
  %l273 = alloca ptr
  %l274 = alloca { i64, [2 x i64] }
  %l278 = alloca { i64, [5 x i64] }
  %l281 = alloca ptr
  %l282 = alloca { i64, ptr }
  %l288 = alloca i64
  %l295 = alloca i64
  %l297 = alloca i64
  %l302 = alloca %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20"
  %l306 = alloca ptr
  %l310 = alloca ptr
  %l317 = alloca %"compiler/interp:chained"
  %l324 = alloca i1
  %l326 = alloca i1
  %l327 = alloca i1
  %l331 = alloca i1
  %l334 = alloca i1
  %l336 = alloca i1
  %l337 = alloca i1
  %l342 = alloca ptr
  %l343 = alloca { i64, [3 x i64] }
  %l345 = alloca i1
  %l346 = alloca %"compiler/diagmsg:Msg"
  %l347 = alloca %"compiler/diagmsg:Msg"
  %l349 = alloca %"compiler/diagmsg:Msg"
  %l350 = alloca %"compiler/interp:CondErr"
  %l363 = alloca i64
  %l365 = alloca i64
  %l370 = alloca ptr
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %s24 = alloca %olang.scope
  %s31 = alloca %olang.scope
  %s35 = alloca %olang.scope
  %rv = alloca i64
  %t57 = alloca %"compiler/interp:Exec", align 8
  %t572 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  store ptr %a3, ptr %l3
  store ptr %a4, ptr %l4
  store ptr %a5, ptr %l5
  store ptr %a6, ptr %l6
  store ptr %a7, ptr %l7
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fload_2ecompiler_2fload_3aLoader_2ePendingIfs(ptr %v0, ptr %s0, ptr %t1)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %l53
  br label %bb1
bb1:
  %t4 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l53
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t4, ptr %l9
  %t6 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I32_3e_3e_H8bd9ddbe6d7efc10dd35c4d42ad9dacf(ptr %s0, ptr %l9)
  store i64 %t6, ptr %l55
  br label %bb2
bb2:
  %t7 = load i64, ptr %l55, !tbaa !24
  %t8 = icmp eq i64 %t7, 0
  br i1 %t8, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr %"compiler/check:Checker", ptr %t10, i32 0, i32 113
  %t14 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aAsk_3e_2eLen_3ccompiler_2fcheck_3aAsk_3e(ptr %v1, ptr %t12)
  store i64 %t14, ptr %l60
  br label %bb5
bb4:
  store i1 false, ptr %l57, !tbaa !21
  br label %bb6
bb5:
  %t15 = load i64, ptr %l60, !tbaa !24
  %t16 = icmp eq i64 %t15, 0
  store i1 %t16, ptr %l57, !tbaa !21
  br label %bb6
bb6:
  %t18 = load i1, ptr %l57, !tbaa !21
  br i1 %t18, label %bb7, label %bb8
bb7:
  %t19 = load ptr, ptr %l1, !tbaa !29
  %t21 = getelementptr %"compiler/check:Checker", ptr %t19, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !29
  %t24 = getelementptr %"compiler/generic:Program", ptr %t22, i32 0, i32 55
  %t26 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3aConstAsk_3e_2eLen_H192b02349624a37821a23e7def80c714(ptr %v1, ptr %t24)
  store i64 %t26, ptr %l66
  br label %bb9
bb8:
  store i1 false, ptr %l62, !tbaa !21
  br label %bb10
bb9:
  %t27 = load i64, ptr %l66, !tbaa !24
  %t28 = icmp eq i64 %t27, 0
  store i1 %t28, ptr %l62, !tbaa !21
  br label %bb10
bb10:
  %t30 = load i1, ptr %l62, !tbaa !21
  br i1 %t30, label %bb11, label %bb12
bb11:
  %t31 = load ptr, ptr %l1, !tbaa !29
  %t33 = getelementptr %"compiler/check:Checker", ptr %t31, i32 0, i32 114
  %t35 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aEmbedAsk_3e_2eLen_3ccompiler_2fcheck_3aEmbedAsk_3e(ptr %v1, ptr %t33)
  store i64 %t35, ptr %l71
  br label %bb13
bb12:
  store i1 false, ptr %l68, !tbaa !21
  br label %bb14
bb13:
  %t36 = load i64, ptr %l71, !tbaa !24
  %t37 = icmp eq i64 %t36, 0
  store i1 %t37, ptr %l68, !tbaa !21
  br label %bb14
bb14:
  %t39 = load i1, ptr %l68, !tbaa !21
  br i1 %t39, label %bb15, label %bb16
bb15:
  %t40 = load ptr, ptr %l1, !tbaa !29
  %t42 = getelementptr %"compiler/check:Checker", ptr %t40, i32 0, i32 148
  %t44 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aUnrollAsk_3e_2eLen__H3e1caeca23cca4e886f5085abf2ba261(ptr %v1, ptr %t42)
  store i64 %t44, ptr %l76
  br label %bb17
bb16:
  store i1 false, ptr %l73, !tbaa !21
  br label %bb18
bb17:
  %t45 = load i64, ptr %l76, !tbaa !24
  %t46 = icmp eq i64 %t45, 0
  store i1 %t46, ptr %l73, !tbaa !21
  br label %bb18
bb18:
  %t48 = load i1, ptr %l73, !tbaa !21
  br i1 %t48, label %bb19, label %bb20
bb19:
  call void @__olang_scope_close(ptr %s0)
  store i64 0, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  %t50 = load ptr, ptr %l1, !tbaa !29
  %t52 = getelementptr %"compiler/check:Checker", ptr %t50, i32 0, i32 1
  %t53 = load ptr, ptr %t52, !tbaa !29
  %t54 = load ptr, ptr %l1, !tbaa !29
  %t56 = getelementptr %"compiler/check:Checker", ptr %t54, i32 0, i32 18
  call void @compiler_2finterp_3aExec_2ector(ptr %t57, ptr %v1, ptr %v1, ptr %v1, ptr %t53, ptr %t56, i32 0)
  call void @llvm.memmove.p0.p0.i64(ptr %l84, ptr %t57, i64 6136, i1 false)
  br label %bb22
bb22:
  %t61 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 6136, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t61, ptr %l84, i64 6136, i1 false)
  store ptr %t61, ptr %l10, !tbaa !29
  %t63 = load ptr, ptr %l10, !tbaa !29
  store ptr %t63, ptr %l86, !tbaa !29
  %t64 = ptrtoint ptr %v1 to i64
  store i64 %t64, ptr %l87, !tbaa !24
  %t65 = load i1, ptr @olang_2esole_2ecompiler_2finterp_3aExec_2e10
  br i1 %t65, label %bb23, label %bb24
bb23:
  %t67 = call ptr @__olang_region_make(ptr %v1)
  %t68 = ptrtoint ptr %t67 to i64
  store i64 %t68, ptr %l87, !tbaa !24
  br label %bb24
bb24:
  %t69 = load ptr, ptr %l1, !tbaa !29
  %t71 = getelementptr %"compiler/check:Checker", ptr %t69, i32 0, i32 151
  %t72 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t71
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t72, ptr %l90
  %t73 = load i64, ptr %l87
  %t74 = inttoptr i64 %t73 to ptr
  %t76 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %t74, ptr %l90)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t76, ptr %l92
  br label %bb25
bb25:
  %t77 = load i1, ptr @olang_2esole_2ecompiler_2finterp_3aExec_2e10
  br i1 %t77, label %bb26, label %bb27
bb26:
  %t79 = load i64, ptr %l87
  %t80 = inttoptr i64 %t79 to ptr
  %t81 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l92, i32 0, i32 2
  %t82 = load { i64, ptr }, ptr %t81
  %t83 = extractvalue { i64, ptr } %t82, 1
  %t84 = call ptr @__olang_region_or(ptr %t83, ptr null)
  %t85 = call ptr @__olang_region_home(ptr %t84)
  %t86 = icmp ne ptr %t85, null
  %t87 = select i1 %t86, ptr %t85, ptr null
  %t88 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l92, i32 0, i32 1
  %t89 = load { i64, ptr }, ptr %t88
  %t90 = extractvalue { i64, ptr } %t89, 1
  %t91 = call ptr @__olang_region_or(ptr %t90, ptr null)
  %t92 = call ptr @__olang_region_home(ptr %t91)
  %t93 = icmp ne ptr %t92, null
  %t94 = select i1 %t93, ptr %t92, ptr %t87
  %t95 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l92, i32 0, i32 0
  %t96 = load { i64, ptr }, ptr %t95
  %t97 = extractvalue { i64, ptr } %t96, 1
  %t98 = call ptr @__olang_region_or(ptr %t97, ptr null)
  %t99 = call ptr @__olang_region_home(ptr %t98)
  %t100 = icmp ne ptr %t99, null
  %t101 = select i1 %t100, ptr %t99, ptr %t94
  %t102 = icmp eq ptr %t101, %t80
  call void @__olang_region_settle(ptr %t80, i1 %t102)
  br label %bb27
bb27:
  %t103 = load ptr, ptr %l86, !tbaa !29
  %t104 = getelementptr %"compiler/interp:Exec", ptr %t103, i32 0, i32 10
  %t105 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t104
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t105, ptr %l94
  %t106 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l92
  %t107 = load ptr, ptr %l86, !tbaa !29
  %t108 = getelementptr %"compiler/interp:Exec", ptr %t107, i32 0, i32 10
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t106, ptr %t108
  %t109 = load i1, ptr @olang_2esole_2ecompiler_2finterp_3aExec_2e10
  br i1 %t109, label %bb28, label %bb29
bb28:
  %t111 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l94, i32 0, i32 2
  %t112 = load { i64, ptr }, ptr %t111
  %t113 = extractvalue { i64, ptr } %t112, 1
  %t114 = call ptr @__olang_region_or(ptr %t113, ptr null)
  %t115 = call ptr @__olang_region_home(ptr %t114)
  %t116 = icmp ne ptr %t115, null
  %t117 = select i1 %t116, ptr %t115, ptr null
  %t118 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l94, i32 0, i32 1
  %t119 = load { i64, ptr }, ptr %t118
  %t120 = extractvalue { i64, ptr } %t119, 1
  %t121 = call ptr @__olang_region_or(ptr %t120, ptr null)
  %t122 = call ptr @__olang_region_home(ptr %t121)
  %t123 = icmp ne ptr %t122, null
  %t124 = select i1 %t123, ptr %t122, ptr %t117
  %t125 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l94, i32 0, i32 0
  %t126 = load { i64, ptr }, ptr %t125
  %t127 = extractvalue { i64, ptr } %t126, 1
  %t128 = call ptr @__olang_region_or(ptr %t127, ptr null)
  %t129 = call ptr @__olang_region_home(ptr %t128)
  %t130 = icmp ne ptr %t129, null
  %t131 = select i1 %t130, ptr %t129, ptr %t124
  call void @__olang_region_drop(ptr %t131)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" zeroinitializer, ptr %l94
  br label %bb29
bb29:
  %t132 = load ptr, ptr %l10, !tbaa !29
  store ptr %t132, ptr %l96, !tbaa !29
  %t133 = ptrtoint ptr %v1 to i64
  store i64 %t133, ptr %l97, !tbaa !24
  %t134 = load i1, ptr @olang_2esole_2ecompiler_2finterp_3aExec_2e11
  br i1 %t134, label %bb30, label %bb31
bb30:
  %t136 = call ptr @__olang_region_make(ptr %v1)
  %t137 = ptrtoint ptr %t136 to i64
  store i64 %t137, ptr %l97, !tbaa !24
  br label %bb31
bb31:
  %t138 = load ptr, ptr %l1, !tbaa !29
  %t140 = getelementptr %"compiler/check:Checker", ptr %t138, i32 0, i32 155
  %t141 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t140
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t141, ptr %l100
  %t142 = load i64, ptr %l97
  %t143 = inttoptr i64 %t142 to ptr
  %t145 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %t143, ptr %l100)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t145, ptr %l102
  br label %bb32
bb32:
  %t146 = load i1, ptr @olang_2esole_2ecompiler_2finterp_3aExec_2e11
  br i1 %t146, label %bb33, label %bb34
bb33:
  %t148 = load i64, ptr %l97
  %t149 = inttoptr i64 %t148 to ptr
  %t150 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l102, i32 0, i32 2
  %t151 = load { i64, ptr }, ptr %t150
  %t152 = extractvalue { i64, ptr } %t151, 1
  %t153 = call ptr @__olang_region_or(ptr %t152, ptr null)
  %t154 = call ptr @__olang_region_home(ptr %t153)
  %t155 = icmp ne ptr %t154, null
  %t156 = select i1 %t155, ptr %t154, ptr null
  %t157 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l102, i32 0, i32 1
  %t158 = load { i64, ptr }, ptr %t157
  %t159 = extractvalue { i64, ptr } %t158, 1
  %t160 = call ptr @__olang_region_or(ptr %t159, ptr null)
  %t161 = call ptr @__olang_region_home(ptr %t160)
  %t162 = icmp ne ptr %t161, null
  %t163 = select i1 %t162, ptr %t161, ptr %t156
  %t164 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l102, i32 0, i32 0
  %t165 = load { i64, ptr }, ptr %t164
  %t166 = extractvalue { i64, ptr } %t165, 1
  %t167 = call ptr @__olang_region_or(ptr %t166, ptr null)
  %t168 = call ptr @__olang_region_home(ptr %t167)
  %t169 = icmp ne ptr %t168, null
  %t170 = select i1 %t169, ptr %t168, ptr %t163
  %t171 = icmp eq ptr %t170, %t149
  call void @__olang_region_settle(ptr %t149, i1 %t171)
  br label %bb34
bb34:
  %t172 = load ptr, ptr %l96, !tbaa !29
  %t173 = getelementptr %"compiler/interp:Exec", ptr %t172, i32 0, i32 11
  %t174 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t173
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t174, ptr %l104
  %t175 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l102
  %t176 = load ptr, ptr %l96, !tbaa !29
  %t177 = getelementptr %"compiler/interp:Exec", ptr %t176, i32 0, i32 11
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t175, ptr %t177
  %t178 = load i1, ptr @olang_2esole_2ecompiler_2finterp_3aExec_2e11
  br i1 %t178, label %bb35, label %bb36
bb35:
  %t180 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l104, i32 0, i32 2
  %t181 = load { i64, ptr }, ptr %t180
  %t182 = extractvalue { i64, ptr } %t181, 1
  %t183 = call ptr @__olang_region_or(ptr %t182, ptr null)
  %t184 = call ptr @__olang_region_home(ptr %t183)
  %t185 = icmp ne ptr %t184, null
  %t186 = select i1 %t185, ptr %t184, ptr null
  %t187 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l104, i32 0, i32 1
  %t188 = load { i64, ptr }, ptr %t187
  %t189 = extractvalue { i64, ptr } %t188, 1
  %t190 = call ptr @__olang_region_or(ptr %t189, ptr null)
  %t191 = call ptr @__olang_region_home(ptr %t190)
  %t192 = icmp ne ptr %t191, null
  %t193 = select i1 %t192, ptr %t191, ptr %t186
  %t194 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l104, i32 0, i32 0
  %t195 = load { i64, ptr }, ptr %t194
  %t196 = extractvalue { i64, ptr } %t195, 1
  %t197 = call ptr @__olang_region_or(ptr %t196, ptr null)
  %t198 = call ptr @__olang_region_home(ptr %t197)
  %t199 = icmp ne ptr %t198, null
  %t200 = select i1 %t199, ptr %t198, ptr %t193
  call void @__olang_region_drop(ptr %t200)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" zeroinitializer, ptr %l104
  br label %bb36
bb36:
  store i64 0, ptr %l11, !tbaa !24
  %t201 = load ptr, ptr %l1, !tbaa !29
  %t203 = getelementptr %"compiler/check:Checker", ptr %t201, i32 0, i32 114
  store ptr %t203, ptr %l12, !tbaa !29
  store i64 0, ptr %l13, !tbaa !24
  br label %bb37
bb37:
  store %olang.scope zeroinitializer, ptr %s3
  %t205 = load i64, ptr %l13, !tbaa !24
  store i64 %t205, ptr %l108, !tbaa !24
  %t206 = load ptr, ptr %l12, !tbaa !29
  %t208 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aEmbedAsk_3e_2eLen_3ccompiler_2fcheck_3aEmbedAsk_3e(ptr %v1, ptr %t206)
  store i64 %t208, ptr %l110
  br label %bb38
bb38:
  %t209 = load i64, ptr %l108, !tbaa !24
  %t210 = load i64, ptr %l110, !tbaa !24
  %t211 = icmp slt i64 %t209, %t210
  %t213 = xor i1 %t211, true
  br i1 %t213, label %bb39, label %bb40
bb39:
  call void @__olang_scope_close(ptr %s3)
  br label %bb54
bb40:
  br label %bb41
bb41:
  %t215 = load ptr, ptr %l12, !tbaa !29
  %t216 = load i64, ptr %l13, !tbaa !24
  %t219 = call %"compiler/check:EmbedAsk" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aEmbedAsk_3e_2eAt_3ccompiler_2fcheck_3aEmbedAsk_3e(ptr %v1, ptr %t215, i64 %t216)
  store %"compiler/check:EmbedAsk" %t219, ptr %l115
  br label %bb42
bb42:
  %t220 = load %"compiler/check:EmbedAsk", ptr %l115
  store %"compiler/check:EmbedAsk" %t220, ptr %l14
  %t221 = getelementptr %"compiler/check:EmbedAsk", ptr %l14, i32 0, i32 1
  %t222 = load i64, ptr %t221, !tbaa !24
  %t223 = getelementptr %"compiler/check:EmbedAsk", ptr %l14, i32 0, i32 2
  %t224 = load i32, ptr %t223, !tbaa !23
  %t226 = sext i32 %t224 to i64
  %t229 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s3, i64 %t222, i64 %t226)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t229, ptr %l119
  br label %bb43
bb43:
  %t230 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l119
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t230, ptr %l15
  %t231 = load ptr, ptr %l5, !tbaa !29
  %t232 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l15
  %t235 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H4b90e82c7a9c5937397e46eef988cfe3(ptr %v5, ptr %t231, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t232)
  store i1 %t235, ptr %l122
  br label %bb44
bb44:
  %t236 = load i1, ptr %l122, !tbaa !21
  br i1 %t236, label %bb45, label %bb46
bb45:
  call void @__olang_scope_close(ptr %s3)
  br label %bb53
bb46:
  br label %bb47
bb47:
  %t237 = load i64, ptr %l11, !tbaa !24
  %t239 = add i64 %t237, 1
  store i64 %t239, ptr %l11, !tbaa !24
  %t241 = load ptr, ptr %l10, !tbaa !29
  %t242 = getelementptr %"compiler/check:EmbedAsk", ptr %l14, i32 0, i32 0
  %t243 = load i64, ptr %t242, !tbaa !24
  %t246 = call { i32, { i64, ptr } } @compiler_2finterp_2ecompiler_2finterp_3aExec_2eText(ptr %v1, ptr %v5, ptr %t241, i64 %t243)
  %t247 = extractvalue { i32, { i64, ptr } } %t246, 1
  %t248 = extractvalue { i32, { i64, ptr } } %t246, 0
  store i32 %t248, ptr %l129
  %t249 = icmp ne i32 %t248, 0
  br i1 %t249, label %bb49, label %ok.250, !prof !99
ok.250:
  store { i64, ptr } %t247, ptr %l128
  br label %bb48
bb48:
  %t251 = load { i64, ptr }, ptr %l128, !tbaa !27
  store { i64, ptr } %t251, ptr %l125, !tbaa !27
  br label %bb51
bb49:
  br label %bb50
bb50:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d105, i32 0, i32 1) }, ptr %l130, !tbaa !27
  %t252 = load { i64, ptr }, ptr %l130, !tbaa !27
  store { i64, ptr } %t252, ptr %l125, !tbaa !27
  br label %bb51
bb51:
  %t254 = load { i64, ptr }, ptr %l125, !tbaa !27
  %t255 = extractvalue { i64, ptr } %t254, 0
  store i64 %t255, ptr %l132, !tbaa !24
  %t256 = load i64, ptr %l132, !tbaa !24
  %t257 = mul i64 %t256, 1
  %t258 = call ptr @__olang_scope_alloc(ptr %v5, i64 %t257)
  %t259 = insertvalue { i64, ptr } undef, i64 %t256, 0
  %t260 = insertvalue { i64, ptr } %t259, ptr %t258, 1
  store { i64, ptr } %t260, ptr %l133, !tbaa !27
  %t261 = getelementptr { i64, ptr }, ptr %l133, i32 0, i32 1
  %t262 = load ptr, ptr %t261, !tbaa !27
  %t263 = getelementptr { i64, ptr }, ptr %l125, i32 0, i32 1
  %t264 = load ptr, ptr %t263, !tbaa !27
  %t265 = load i64, ptr %l132, !tbaa !24
  %t266 = mul i64 %t265, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t262, ptr %t264, i64 %t266, i1 false)
  %t267 = call ptr @__olang_scope_alloc_a(ptr %v5, i64 16, i64 8)
  store ptr %t267, ptr %lp16
  %t268 = load { i64, ptr }, ptr %l133, !tbaa !27
  %t269 = load ptr, ptr %lp16
  store { i64, ptr } %t268, ptr %t269, !tbaa !27
  %t270 = load ptr, ptr %l5, !tbaa !29
  %t271 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l15
  %t272 = load ptr, ptr %lp16
  %t273 = load { i64, ptr }, ptr %t272, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H94076cc109da9d789864820ff05c3ac1(ptr %v5, ptr %v5, ptr %t270, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t271, { i64, ptr } %t273)
  br label %bb52
bb52:
  call void @__olang_scope_close(ptr %s3)
  br label %bb53
bb53:
  %t277 = load i64, ptr %l13, !tbaa !24
  %t279 = add i64 %t277, 1
  store i64 %t279, ptr %l13, !tbaa !24
  br label %bb37
bb54:
  %t281 = load i64, ptr %l11, !tbaa !24
  %t283 = icmp sgt i64 %t281, 0
  br i1 %t283, label %bb55, label %bb56
bb55:
  %t285 = load i64, ptr %l11, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t285, ptr %rv
  br label %ret
bb56:
  br label %bb57
bb57:
  %t287 = load ptr, ptr %l1, !tbaa !29
  %t289 = getelementptr %"compiler/check:Checker", ptr %t287, i32 0, i32 148
  store ptr %t289, ptr %l17, !tbaa !29
  store i64 0, ptr %l18, !tbaa !24
  br label %bb58
bb58:
  store %olang.scope zeroinitializer, ptr %s8
  %t291 = load i64, ptr %l18, !tbaa !24
  store i64 %t291, ptr %l144, !tbaa !24
  %t292 = load ptr, ptr %l17, !tbaa !29
  %t294 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aUnrollAsk_3e_2eLen__H3e1caeca23cca4e886f5085abf2ba261(ptr %v1, ptr %t292)
  store i64 %t294, ptr %l146
  br label %bb59
bb59:
  %t295 = load i64, ptr %l144, !tbaa !24
  %t296 = load i64, ptr %l146, !tbaa !24
  %t297 = icmp slt i64 %t295, %t296
  %t299 = xor i1 %t297, true
  br i1 %t299, label %bb60, label %bb61
bb60:
  call void @__olang_scope_close(ptr %s8)
  br label %bb93
bb61:
  br label %bb62
bb62:
  %t301 = load ptr, ptr %l17, !tbaa !29
  %t302 = load i64, ptr %l18, !tbaa !24
  %t305 = call %"compiler/check:UnrollAsk" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aUnrollAsk_3e_2eAt_3ccompiler_2fcheck_3aUnrollAsk_3e(ptr %v1, ptr %v1, ptr %t301, i64 %t302)
  store %"compiler/check:UnrollAsk" %t305, ptr %l151
  br label %bb63
bb63:
  %t306 = load %"compiler/check:UnrollAsk", ptr %l151
  store %"compiler/check:UnrollAsk" %t306, ptr %l19
  %t307 = load ptr, ptr %l6, !tbaa !29
  %t308 = getelementptr %"compiler/check:UnrollAsk", ptr %l19, i32 0, i32 0
  %t309 = load { i64, ptr }, ptr %t308, !tbaa !27
  %t312 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H227dc11a6a27d53bbdf34efa35d45ee3(ptr %v6, ptr %v1, ptr %t307, { i64, ptr } %t309)
  store i1 %t312, ptr %l154
  br label %bb64
bb64:
  %t313 = load i1, ptr %l154, !tbaa !21
  br i1 %t313, label %bb65, label %bb66
bb65:
  store i1 true, ptr %l155, !tbaa !21
  br label %bb68
bb66:
  %t314 = load ptr, ptr %l7, !tbaa !29
  %t315 = getelementptr %"compiler/check:UnrollAsk", ptr %l19, i32 0, i32 0
  %t316 = load { i64, ptr }, ptr %t315, !tbaa !27
  %t319 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_He27db0a1785588531472bfd2db42574f(ptr %v7, ptr %v1, ptr %t314, { i64, ptr } %t316)
  store i1 %t319, ptr %l158
  br label %bb67
bb67:
  %t320 = load i1, ptr %l158, !tbaa !21
  store i1 %t320, ptr %l155, !tbaa !21
  br label %bb68
bb68:
  %t321 = load i1, ptr %l155, !tbaa !21
  br i1 %t321, label %bb69, label %bb70
bb69:
  call void @__olang_scope_close(ptr %s8)
  br label %bb92
bb70:
  br label %bb71
bb71:
  %t322 = load i64, ptr %l11, !tbaa !24
  %t324 = add i64 %t322, 1
  store i64 %t324, ptr %l11, !tbaa !24
  %t326 = load ptr, ptr %l10, !tbaa !29
  %t329 = call { i64, [2 x i64] } @compiler_2finterp_2ecompiler_2finterp_3aExec_2eunrolled(ptr %v1, ptr %s8, ptr %v7, ptr %t326, ptr %l19)
  store { i64, [2 x i64] } %t329, ptr %l163
  br label %bb72
bb72:
  %t330 = load { i64, [2 x i64] }, ptr %l163
  store { i64, [2 x i64] } %t330, ptr %l20
  %t331 = load { i64, [2 x i64] }, ptr %l20
  %t333 = extractvalue { i64, [2 x i64] } %t331, 0
  %t334 = icmp eq i64 %t333, 0
  br i1 %t334, label %bb73, label %bb74
bb73:
  %t336 = getelementptr { i64, [2 x i64] }, ptr %l20, i32 0, i32 1
  %t337 = getelementptr { { i64, ptr } }, ptr %t336, i32 0, i32 0
  %t338 = load { i64, ptr }, ptr %t337
  store { i64, ptr } %t338, ptr %l21, !tbaa !27
  br label %bb75
bb74:
  br label %bb85
bb75:
  %t340 = load ptr, ptr %l6, !tbaa !29
  store ptr %t340, ptr %l167, !tbaa !29
  %t341 = getelementptr %"compiler/check:UnrollAsk", ptr %l19, i32 0, i32 0
  %t342 = load { i64, ptr }, ptr %t341, !tbaa !27
  store { i64, ptr } %t342, ptr %l168, !tbaa !27
  %t343 = ptrtoint ptr %v6 to i64
  store i64 %t343, ptr %l169, !tbaa !24
  %t344 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20Array_3cI64_3e_26_3e_2e1
  br i1 %t344, label %bb76, label %bb77
bb76:
  %t346 = call ptr @__olang_region_make(ptr %v6)
  %t347 = ptrtoint ptr %t346 to i64
  store i64 %t347, ptr %l169, !tbaa !24
  br label %bb77
bb77:
  %t348 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t348, ptr %l22, !tbaa !27
  store i64 0, ptr %l23, !tbaa !24
  %t350 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t352 = extractvalue { i64, ptr } %t350, 0
  store i64 %t352, ptr %l24, !tbaa !24
  %t354 = load i64, ptr %l24, !tbaa !24
  %t356 = mul i64 %t354, 8
  %t357 = load i64, ptr %l169
  %t358 = inttoptr i64 %t357 to ptr
  %t359 = call ptr @__olang_scope_alloc(ptr %t358, i64 %t356)
  %t360 = insertvalue { i64, ptr } undef, i64 %t354, 0
  %t361 = insertvalue { i64, ptr } %t360, ptr %t359, 1
  store { i64, ptr } %t361, ptr %l175, !tbaa !27
  store i64 0, ptr %l176, !tbaa !24
  br label %bb78
bb78:
  %t362 = load i64, ptr %l23, !tbaa !24
  %t363 = load i64, ptr %l24, !tbaa !24
  %t366 = icmp slt i64 %t362, %t363
  %t368 = xor i1 %t366, true
  br i1 %t368, label %bb79, label %bb80
bb79:
  br label %bb83
bb80:
  br label %bb81
bb81:
  %t370 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t370, ptr %l181, !tbaa !27
  %t371 = load i64, ptr %l23, !tbaa !24
  %t373 = getelementptr { i64, ptr }, ptr %l181, i32 0, i32 1
  %t374 = load ptr, ptr %t373, !tbaa !27
  %t375 = getelementptr i64, ptr %t374, i64 %t371
  %t376 = load i64, ptr %t375, !tbaa !34
  %t380 = load i64, ptr %l176, !tbaa !24
  %t381 = getelementptr { i64, ptr }, ptr %l175, i32 0, i32 1
  %t382 = load ptr, ptr %t381, !tbaa !27
  %t383 = getelementptr i64, ptr %t382, i64 %t380
  store i64 %t376, ptr %t383, !tbaa !34
  %t384 = load i64, ptr %l176, !tbaa !24
  %t385 = add i64 %t384, 1
  store i64 %t385, ptr %l176, !tbaa !24
  br label %bb82
bb82:
  %t386 = load i64, ptr %l23, !tbaa !24
  %t388 = add i64 %t386, 1
  store i64 %t388, ptr %l23, !tbaa !24
  br label %bb78
bb83:
  %t390 = load ptr, ptr %l167, !tbaa !29
  %t391 = load { i64, ptr }, ptr %l168, !tbaa !27
  %t392 = load { i64, ptr }, ptr %l175, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H0a119a96f6a24054f8ced6f159e533e6(ptr %v6, ptr %v1, ptr %v6, ptr %t390, { i64, ptr } %t391, { i64, ptr } %t392)
  br label %bb84
bb84:
  br label %bb91
bb85:
  %t393 = load { i64, [2 x i64] }, ptr %l20
  %t395 = extractvalue { i64, [2 x i64] } %t393, 0
  %t396 = icmp eq i64 %t395, 1
  br i1 %t396, label %bb86, label %bb87
bb86:
  %t398 = getelementptr { i64, [2 x i64] }, ptr %l20, i32 0, i32 1
  %t399 = getelementptr { { i64, ptr } }, ptr %t398, i32 0, i32 0
  %t400 = load { i64, ptr }, ptr %t399
  store { i64, ptr } %t400, ptr %l26, !tbaa !27
  br label %bb88
bb87:
  br label %bb90
bb88:
  %t402 = load ptr, ptr %l7, !tbaa !29
  %t403 = getelementptr %"compiler/check:UnrollAsk", ptr %l19, i32 0, i32 0
  %t404 = load { i64, ptr }, ptr %t403, !tbaa !27
  %t405 = load { i64, ptr }, ptr %l26, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6f7a2f8d839c49b6e7a19c287d4b190c(ptr %v7, ptr %v1, ptr %v7, ptr %t402, { i64, ptr } %t404, { i64, ptr } %t405)
  br label %bb89
bb89:
  br label %bb91
bb90:
  call void @__olang_check_failed(ptr @olang_loc_b2316244e9af307f_bcf0fdc57d0f0f9b)
  unreachable
bb91:
  call void @__olang_scope_close(ptr %s8)
  br label %bb92
bb92:
  %t409 = load i64, ptr %l18, !tbaa !24
  %t411 = add i64 %t409, 1
  store i64 %t411, ptr %l18, !tbaa !24
  br label %bb58
bb93:
  %t413 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aIf_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t413, ptr %l195
  br label %bb94
bb94:
  %t414 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l195
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t414, ptr %l27
  %t415 = load ptr, ptr %l1, !tbaa !29
  %t417 = getelementptr %"compiler/check:Checker", ptr %t415, i32 0, i32 113
  store ptr %t417, ptr %l28, !tbaa !29
  store i64 0, ptr %l29, !tbaa !24
  br label %bb95
bb95:
  store %olang.scope zeroinitializer, ptr %s17
  %t419 = load i64, ptr %l29, !tbaa !24
  store i64 %t419, ptr %l198, !tbaa !24
  %t420 = load ptr, ptr %l28, !tbaa !29
  %t422 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aAsk_3e_2eLen_3ccompiler_2fcheck_3aAsk_3e(ptr %v1, ptr %t420)
  store i64 %t422, ptr %l200
  br label %bb96
bb96:
  %t423 = load i64, ptr %l198, !tbaa !24
  %t424 = load i64, ptr %l200, !tbaa !24
  %t425 = icmp slt i64 %t423, %t424
  %t427 = xor i1 %t425, true
  br i1 %t427, label %bb97, label %bb98
bb97:
  call void @__olang_scope_close(ptr %s17)
  br label %bb121
bb98:
  br label %bb99
bb99:
  %t429 = load ptr, ptr %l28, !tbaa !29
  %t430 = load i64, ptr %l29, !tbaa !24
  %t433 = call %"compiler/check:Ask" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aAsk_3e_2eAt_3ccompiler_2fcheck_3aAsk_3e(ptr %v1, ptr %v1, ptr %t429, i64 %t430)
  store %"compiler/check:Ask" %t433, ptr %l205
  br label %bb100
bb100:
  %t434 = load %"compiler/check:Ask", ptr %l205
  store %"compiler/check:Ask" %t434, ptr %l30
  %t435 = getelementptr %"compiler/check:Ask", ptr %l30, i32 0, i32 1
  %t436 = load i64, ptr %t435, !tbaa !24
  %t437 = getelementptr %"compiler/check:Ask", ptr %l30, i32 0, i32 2
  %t438 = load i32, ptr %t437, !tbaa !23
  %t440 = sext i32 %t438 to i64
  %t443 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s17, i64 %t436, i64 %t440)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t443, ptr %l209
  br label %bb101
bb101:
  %t444 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l209
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t444, ptr %l31
  %t445 = load ptr, ptr %l2, !tbaa !29
  %t446 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l31
  %t449 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2ed2e5427629ba63a7110fc86d969058(ptr %v2, ptr %t445, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t446)
  store i1 %t449, ptr %l212
  br label %bb102
bb102:
  %t450 = load i1, ptr %l212, !tbaa !21
  br i1 %t450, label %bb103, label %bb104
bb103:
  store i1 true, ptr %l213, !tbaa !21
  br label %bb106
bb104:
  %t451 = load ptr, ptr %l3, !tbaa !29
  %t452 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l31
  %t455 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2ed2e5427629ba63a7110fc86d969058(ptr %v3, ptr %t451, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t452)
  store i1 %t455, ptr %l216
  br label %bb105
bb105:
  %t456 = load i1, ptr %l216, !tbaa !21
  store i1 %t456, ptr %l213, !tbaa !21
  br label %bb106
bb106:
  %t457 = load i1, ptr %l213, !tbaa !21
  br i1 %t457, label %bb107, label %bb108
bb107:
  call void @__olang_scope_close(ptr %s17)
  br label %bb120
bb108:
  br label %bb109
bb109:
  %t458 = load ptr, ptr %l10, !tbaa !29
  %t459 = getelementptr %"compiler/check:Ask", ptr %l30, i32 0, i32 0
  %t460 = load i64, ptr %t459, !tbaa !24
  %t463 = call { i32, i1 } @compiler_2finterp_2ecompiler_2finterp_3aExec_2eCond(ptr %v1, ptr %t458, i64 %t460)
  %t464 = extractvalue { i32, i1 } %t463, 1
  %t465 = extractvalue { i32, i1 } %t463, 0
  store i32 %t465, ptr %l221
  %t466 = icmp ne i32 %t465, 0
  br i1 %t466, label %bb111, label %ok.467, !prof !99
ok.467:
  store i1 %t464, ptr %l220
  br label %bb110
bb110:
  %t468 = load i1, ptr %l220, !tbaa !21
  store i1 %t468, ptr %l217, !tbaa !21
  br label %bb114
bb111:
  br label %bb112
bb112:
  %t469 = getelementptr %"compiler/check:Ask", ptr %l30, i32 0, i32 3
  %t470 = load ptr, ptr %t469, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aIf_26_3e_2ePush_3ccompiler_2fast_3aIf_26_3e(ptr %s0, ptr %v1, ptr %l27, ptr %t470)
  br label %bb113
bb113:
  call void @__olang_scope_close(ptr %s17)
  br label %bb120
bb114:
  %t473 = load i1, ptr %l217, !tbaa !21
  store i1 %t473, ptr %l32, !tbaa !21
  %t474 = load i64, ptr %l11, !tbaa !24
  %t476 = add i64 %t474, 1
  store i64 %t476, ptr %l11, !tbaa !24
  %t478 = load ptr, ptr %l10, !tbaa !29
  %t480 = getelementptr %"compiler/interp:Exec", ptr %t478, i32 0, i32 4
  %t481 = getelementptr %"compiler/eval:Machine", ptr %t480, i32 0, i32 23
  %t482 = load i1, ptr %t481, !tbaa !21
  %t484 = xor i1 %t482, true
  br i1 %t484, label %bb115, label %bb116
bb115:
  %t486 = load ptr, ptr %l3, !tbaa !29
  %t487 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l31
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1308596c866d4be061d9da9113abde88(ptr %v3, ptr %t486, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t487, i1 true)
  br label %bb117
bb116:
  %t490 = load ptr, ptr %l2, !tbaa !29
  %t491 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l31
  %t492 = load i1, ptr %l32, !tbaa !21
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1308596c866d4be061d9da9113abde88(ptr %v2, ptr %t490, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t491, i1 %t492)
  br label %bb118
bb117:
  br label %bb119
bb118:
  br label %bb119
bb119:
  call void @__olang_scope_close(ptr %s17)
  br label %bb120
bb120:
  %t496 = load i64, ptr %l29, !tbaa !24
  %t498 = add i64 %t496, 1
  store i64 %t498, ptr %l29, !tbaa !24
  br label %bb95
bb121:
  %t500 = load ptr, ptr %l1, !tbaa !29
  %t502 = getelementptr %"compiler/check:Checker", ptr %t500, i32 0, i32 1
  %t503 = load ptr, ptr %t502, !tbaa !29
  %t505 = getelementptr %"compiler/generic:Program", ptr %t503, i32 0, i32 55
  store ptr %t505, ptr %l33, !tbaa !29
  store i64 0, ptr %l34, !tbaa !24
  br label %bb122
bb122:
  store %olang.scope zeroinitializer, ptr %s24
  %t507 = load i64, ptr %l34, !tbaa !24
  store i64 %t507, ptr %l239, !tbaa !24
  %t508 = load ptr, ptr %l33, !tbaa !29
  %t510 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3aConstAsk_3e_2eLen_H192b02349624a37821a23e7def80c714(ptr %v1, ptr %t508)
  store i64 %t510, ptr %l241
  br label %bb123
bb123:
  %t511 = load i64, ptr %l239, !tbaa !24
  %t512 = load i64, ptr %l241, !tbaa !24
  %t513 = icmp slt i64 %t511, %t512
  %t515 = xor i1 %t513, true
  br i1 %t515, label %bb124, label %bb125
bb124:
  call void @__olang_scope_close(ptr %s24)
  br label %bb156
bb125:
  br label %bb126
bb126:
  %t517 = load ptr, ptr %l33, !tbaa !29
  %t518 = load i64, ptr %l34, !tbaa !24
  %t521 = call %"compiler/generic:ConstAsk" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3aConstAsk_3e_2eAt__H3f4459851a287fa27378a94ef8fff763(ptr %v1, ptr %v1, ptr %t517, i64 %t518)
  store %"compiler/generic:ConstAsk" %t521, ptr %l246
  br label %bb127
bb127:
  %t522 = load %"compiler/generic:ConstAsk", ptr %l246
  store %"compiler/generic:ConstAsk" %t522, ptr %l35
  %t523 = getelementptr %"compiler/generic:ConstAsk", ptr %l35, i32 0, i32 6
  %t524 = load { i64, ptr }, ptr %t523, !tbaa !27
  store { i64, ptr } %t524, ptr %l36, !tbaa !27
  %t526 = load ptr, ptr %l4, !tbaa !29
  %t527 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t530 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9b83f66eba65594537030636cb0b52b7(ptr %v4, ptr %v1, ptr %t526, { i64, ptr } %t527)
  store i1 %t530, ptr %l250
  br label %bb128
bb128:
  %t531 = load i1, ptr %l250, !tbaa !21
  br i1 %t531, label %bb129, label %bb130
bb129:
  call void @__olang_scope_close(ptr %s24)
  br label %bb155
bb130:
  br label %bb131
bb131:
  %t532 = load i64, ptr %l11, !tbaa !24
  %t534 = add i64 %t532, 1
  store i64 %t534, ptr %l11, !tbaa !24
  %t536 = load ptr, ptr %l1, !tbaa !29
  %t537 = getelementptr %"compiler/generic:ConstAsk", ptr %l35, i32 0, i32 0
  %t538 = load i64, ptr %t537, !tbaa !24
  %t539 = getelementptr %"compiler/generic:ConstAsk", ptr %l35, i32 0, i32 3
  %t540 = load i64, ptr %t539, !tbaa !24
  %t541 = getelementptr %"compiler/generic:ConstAsk", ptr %l35, i32 0, i32 4
  %t542 = load { i64, ptr }, ptr %t541, !tbaa !27
  %t543 = getelementptr %"compiler/generic:ConstAsk", ptr %l35, i32 0, i32 5
  %t544 = load { i64, ptr }, ptr %t543, !tbaa !27
  %t545 = getelementptr %"compiler/generic:ConstAsk", ptr %l35, i32 0, i32 1
  %t546 = load ptr, ptr %t545, !tbaa !29
  %t547 = getelementptr %"compiler/generic:ConstAsk", ptr %l35, i32 0, i32 2
  %t548 = load i32, ptr %t547, !tbaa !23
  %t556 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eExprBodyIn(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %t536, i64 %t538, i64 %t540, { i64, ptr } %t542, { i64, ptr } %t544, ptr %t546, i32 %t548)
  store i64 %t556, ptr %l260
  br label %bb132
bb132:
  %t557 = load i64, ptr %l260, !tbaa !24
  store i64 %t557, ptr %l37, !tbaa !24
  %t558 = load i64, ptr %l37, !tbaa !24
  %t560 = icmp slt i64 %t558, 0
  br i1 %t560, label %bb133, label %bb134
bb133:
  %t562 = load ptr, ptr %l4, !tbaa !29
  %t563 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t564 = load i64, ptr @G_2ecompiler_2fgeneric_2eRunTimeLength, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha091d021a90ce6aa48813730c00df6d2(ptr %v4, ptr %v1, ptr %t562, { i64, ptr } %t563, i64 %t564)
  br label %bb135
bb134:
  br label %bb136
bb135:
  call void @__olang_scope_close(ptr %s24)
  br label %bb155
bb136:
  %t568 = load i64, ptr %l37, !tbaa !24
  %t570 = trunc i64 %t568 to i32
  store { i64, [2 x i64] } zeroinitializer, ptr %t572
  %t573 = getelementptr { i64, [2 x i64] }, ptr %t572, i32 0, i32 0
  store i64 0, ptr %t573
  %t575 = insertvalue { i32 } undef, i32 %t570, 0
  %t576 = getelementptr { i64, [2 x i64] }, ptr %t572, i32 0, i32 1
  store { i32 } %t575, ptr %t576
  %t577 = load { i64, [2 x i64] }, ptr %t572
  store { i64, [2 x i64] } %t577, ptr %l38
  %t579 = load ptr, ptr %l10, !tbaa !29
  %t580 = load { i64, [2 x i64] }, ptr %l38
  call void @compiler_2finterp_2ecompiler_2finterp_3aExec_2eNeed(ptr %v1, ptr %t579, { i64, [2 x i64] } %t580)
  br label %bb137
bb137:
  %t583 = load ptr, ptr %l10, !tbaa !29
  %t585 = getelementptr %"compiler/interp:Exec", ptr %t583, i32 0, i32 4
  store ptr %t585, ptr %l273, !tbaa !29
  %t586 = load { i64, [2 x i64] }, ptr %l38
  store { i64, [2 x i64] } %t586, ptr %l274
  %t587 = icmp sge i64 0, 0
  br i1 %t587, label %bb138, label %bb139
bb138:
  %t589 = icmp sle i64 0, 1152921504606846975
  br i1 %t589, label %bb140, label %bb141
bb139:
  call void @__olang_check_failed(ptr @olang_loc_b43ed542b52bdb2d_e8039c8a87e26b41)
  unreachable
bb140:
  %t591 = mul i64 0, 8
  %t592 = insertvalue { i64, ptr } undef, i64 0, 0
  %t593 = insertvalue { i64, ptr } %t592, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t594 = load ptr, ptr %l273, !tbaa !29
  %t595 = load { i64, [2 x i64] }, ptr %l274
  %t597 = call { i64, [5 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2eEval(ptr %v1, ptr %s24, ptr %s24, ptr %t594, { i64, [2 x i64] } %t595, { i64, ptr } %t593)
  store { i64, [5 x i64] } %t597, ptr %l278
  br label %bb142
bb141:
  call void @__olang_check_failed(ptr @olang_loc_b43ed542b52bdb2d_e8039c8a87e26b41)
  unreachable
bb142:
  %t598 = load { i64, [5 x i64] }, ptr %l278
  %t601 = extractvalue { i64, [5 x i64] } %t598, 0
  %t602 = icmp eq i64 %t601, 0
  br i1 %t602, label %bb143, label %bb144
bb143:
  br label %bb145
bb144:
  br label %bb148
bb145:
  %t604 = load ptr, ptr %l4, !tbaa !29
  store ptr %t604, ptr %l281, !tbaa !29
  %t605 = load { i64, ptr }, ptr %l36, !tbaa !27
  store { i64, ptr } %t605, ptr %l282, !tbaa !27
  %t606 = load ptr, ptr %l10, !tbaa !29
  %t608 = getelementptr %"compiler/interp:Exec", ptr %t606, i32 0, i32 4
  %t609 = load ptr, ptr %l10, !tbaa !29
  %t611 = getelementptr %"compiler/interp:Exec", ptr %t609, i32 0, i32 4
  %t612 = getelementptr %"compiler/eval:Machine", ptr %t611, i32 0, i32 18
  %t613 = load %"compiler/eval:Ptr", ptr %t612
  %t614 = getelementptr %"compiler/generic:ConstAsk", ptr %l35, i32 0, i32 2
  %t615 = load i32, ptr %t614, !tbaa !23
  %t619 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eInt(ptr %v1, ptr %t608, %"compiler/eval:Ptr" %t613, i32 %t615)
  store i64 %t619, ptr %l288
  br label %bb146
bb146:
  %t620 = load ptr, ptr %l281, !tbaa !29
  %t621 = load { i64, ptr }, ptr %l282, !tbaa !27
  %t622 = load i64, ptr %l288, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha091d021a90ce6aa48813730c00df6d2(ptr %v4, ptr %v1, ptr %t620, { i64, ptr } %t621, i64 %t622)
  br label %bb147
bb147:
  br label %bb154
bb148:
  br i1 true, label %bb149, label %bb150
bb149:
  br label %bb151
bb150:
  br label %bb153
bb151:
  %t623 = load ptr, ptr %l4, !tbaa !29
  %t624 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t625 = load i64, ptr @G_2ecompiler_2fgeneric_2eRunTimeLength, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha091d021a90ce6aa48813730c00df6d2(ptr %v4, ptr %v1, ptr %t623, { i64, ptr } %t624, i64 %t625)
  br label %bb152
bb152:
  br label %bb154
bb153:
  call void @__olang_check_failed(ptr @olang_loc_f84cb7d5463d9835_35d9cf4f803d5b1)
  unreachable
bb154:
  call void @__olang_scope_close(ptr %s24)
  br label %bb155
bb155:
  %t629 = load i64, ptr %l34, !tbaa !24
  %t631 = add i64 %t629, 1
  store i64 %t631, ptr %l34, !tbaa !24
  br label %bb122
bb156:
  store ptr %l9, ptr %l40, !tbaa !29
  store i64 0, ptr %l41, !tbaa !24
  br label %bb157
bb157:
  store %olang.scope zeroinitializer, ptr %s31
  %t634 = load i64, ptr %l41, !tbaa !24
  store i64 %t634, ptr %l295, !tbaa !24
  %t635 = load ptr, ptr %l40, !tbaa !29
  %t637 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I32_3e_3e_H8bd9ddbe6d7efc10dd35c4d42ad9dacf(ptr %s0, ptr %t635)
  store i64 %t637, ptr %l297
  br label %bb158
bb158:
  %t638 = load i64, ptr %l295, !tbaa !24
  %t639 = load i64, ptr %l297, !tbaa !24
  %t640 = icmp slt i64 %t638, %t639
  %t642 = xor i1 %t640, true
  br i1 %t642, label %bb159, label %bb160
bb159:
  call void @__olang_scope_close(ptr %s31)
  br label %bb203
bb160:
  br label %bb161
bb161:
  %t644 = load ptr, ptr %l40, !tbaa !29
  %t645 = load i64, ptr %l41, !tbaa !24
  %t648 = call %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I32_3e_3e_H7486c711b8ab0d124cd9b327dc5d14f9(ptr %s0, ptr %t644, i64 %t645)
  store %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20" %t648, ptr %l302
  br label %bb162
bb162:
  %t649 = load %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20", ptr %l302
  store %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20" %t649, ptr %l42
  %t650 = load ptr, ptr %l0, !tbaa !29
  %t652 = getelementptr %"compiler/load:Loader", ptr %t650, i32 0, i32 10
  %t653 = getelementptr %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20", ptr %l42, i32 0, i32 0
  %t654 = load i64, ptr %t653, !tbaa !24
  %t657 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t652, i64 %t654)
  store ptr %t657, ptr %l306
  br label %bb163
bb163:
  %t658 = load ptr, ptr %l306, !tbaa !29
  %t660 = getelementptr %"compiler/load:Module", ptr %t658, i32 0, i32 8
  %t661 = load { i64, ptr }, ptr %t660, !tbaa !27
  %t662 = getelementptr %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20", ptr %l42, i32 0, i32 1
  %t663 = load i32, ptr %t662, !tbaa !23
  %t666 = call ptr @compiler_2finterp_2efindIf(ptr %v0, ptr %v0, { i64, ptr } %t661, i32 %t663)
  store ptr %t666, ptr %l310
  br label %bb164
bb164:
  %t667 = load ptr, ptr %l310, !tbaa !29
  store ptr %t667, ptr %l43, !tbaa !29
  %t668 = load ptr, ptr %l43, !tbaa !29
  %t670 = icmp eq ptr %t668, null
  br i1 %t670, label %bb165, label %bb166
bb165:
  call void @__olang_scope_close(ptr %s31)
  br label %bb202
bb166:
  br label %bb167
bb167:
  %t672 = load ptr, ptr %l10, !tbaa !29
  %t673 = load ptr, ptr %l1, !tbaa !29
  %t674 = getelementptr %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20", ptr %l42, i32 0, i32 0
  %t675 = load i64, ptr %t674, !tbaa !24
  %t676 = load ptr, ptr %l43, !tbaa !29
  %t681 = call %"compiler/interp:chained" @compiler_2finterp_2echained_2echain(ptr %v1, ptr %v1, ptr %v0, ptr %s31, ptr %t672, ptr %t673, i64 %t675, ptr %t676)
  store %"compiler/interp:chained" %t681, ptr %l317
  br label %bb168
bb168:
  %t682 = load %"compiler/interp:chained", ptr %l317
  store %"compiler/interp:chained" %t682, ptr %l44
  %t683 = getelementptr %"compiler/interp:chained", ptr %l44, i32 0, i32 0
  %t684 = load i64, ptr %t683, !tbaa !24
  store i64 %t684, ptr %l45, !tbaa !24
  %t686 = getelementptr %"compiler/interp:chained", ptr %l44, i32 0, i32 1
  %t687 = load i1, ptr %t686, !tbaa !21
  store i1 %t687, ptr %l46, !tbaa !21
  %t689 = getelementptr %"compiler/interp:chained", ptr %l44, i32 0, i32 2
  %t690 = load { i64, ptr }, ptr %t689, !tbaa !27
  store { i64, ptr } %t690, ptr %l47, !tbaa !27
  %t692 = getelementptr %"compiler/interp:chained", ptr %l44, i32 0, i32 3
  %t693 = load { i64, [3 x i64] }, ptr %t692
  store { i64, [3 x i64] } %t693, ptr %l48
  %t695 = load i1, ptr %l46, !tbaa !21
  %t697 = xor i1 %t695, true
  br i1 %t697, label %bb169, label %bb170
bb169:
  %t699 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t701 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s31, ptr %s31, { i64, ptr } %t699, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d106, i32 0, i32 1) })
  store i1 %t701, ptr %l326
  br label %bb171
bb170:
  store i1 false, ptr %l324, !tbaa !21
  br label %bb172
bb171:
  %t702 = load i1, ptr %l326, !tbaa !21
  store i1 %t702, ptr %l324, !tbaa !21
  br label %bb172
bb172:
  %t703 = load i1, ptr %l324, !tbaa !21
  br i1 %t703, label %bb173, label %bb174
bb173:
  %t704 = load ptr, ptr %l0, !tbaa !29
  %t706 = getelementptr %"compiler/load:Loader", ptr %t704, i32 0, i32 4
  %t707 = load ptr, ptr %t706, !tbaa !29
  %t708 = load { i64, [3 x i64] }, ptr %l48
  %t711 = call i1 @compiler_2finterp_2econdSaid(ptr %v0, ptr %t707, { i64, [3 x i64] } %t708)
  store i1 %t711, ptr %l331
  br label %bb175
bb174:
  store i1 false, ptr %l327, !tbaa !21
  br label %bb176
bb175:
  %t712 = load i1, ptr %l331, !tbaa !21
  store i1 %t712, ptr %l327, !tbaa !21
  br label %bb176
bb176:
  %t713 = load i1, ptr %l327, !tbaa !21
  br i1 %t713, label %bb177, label %bb178
bb177:
  call void @__olang_scope_close(ptr %s31)
  br label %bb202
bb178:
  br label %bb179
bb179:
  %t714 = load i1, ptr %l46, !tbaa !21
  %t716 = xor i1 %t714, true
  br i1 %t716, label %bb180, label %bb181
bb180:
  %t718 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t720 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s31, ptr %s31, { i64, ptr } %t718, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d107, i32 0, i32 1) })
  store i1 %t720, ptr %l336
  br label %bb182
bb181:
  store i1 false, ptr %l334, !tbaa !21
  br label %bb183
bb182:
  %t721 = load i1, ptr %l336, !tbaa !21
  store i1 %t721, ptr %l334, !tbaa !21
  br label %bb183
bb183:
  %t722 = load i1, ptr %l334, !tbaa !21
  br i1 %t722, label %bb184, label %bb185
bb184:
  %t723 = load ptr, ptr %l1, !tbaa !29
  %t725 = getelementptr %"compiler/check:Checker", ptr %t723, i32 0, i32 150
  %t726 = load i1, ptr %t725, !tbaa !21
  store i1 %t726, ptr %l337, !tbaa !21
  br label %bb186
bb185:
  store i1 false, ptr %l337, !tbaa !21
  br label %bb186
bb186:
  %t728 = load i1, ptr %l337, !tbaa !21
  br i1 %t728, label %bb187, label %bb188
bb187:
  call void @__olang_scope_close(ptr %s31)
  br label %bb202
bb188:
  br label %bb189
bb189:
  %t729 = load i1, ptr %l46, !tbaa !21
  %t731 = xor i1 %t729, true
  br i1 %t731, label %bb190, label %bb191
bb190:
  store %olang.scope zeroinitializer, ptr %s35
  store ptr %a8, ptr %l342, !tbaa !29
  %t734 = load { i64, [3 x i64] }, ptr %l48
  store { i64, [3 x i64] } %t734, ptr %l343
  %t735 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t737 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s31, ptr %s35, { i64, ptr } %t735, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d108, i32 0, i32 1) })
  store i1 %t737, ptr %l345
  br label %bb192
bb191:
  br label %bb200
bb192:
  %t738 = load i1, ptr %l345, !tbaa !21
  br i1 %t738, label %bb193, label %bb194
bb193:
  %t739 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCondUnseen(ptr %v8)
  store %"compiler/diagmsg:Msg" %t739, ptr %l347
  br label %bb195
bb194:
  %t740 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t742 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCondUndecidable(ptr %s31, ptr %v8, { i64, ptr } %t740)
  store %"compiler/diagmsg:Msg" %t742, ptr %l349
  br label %bb196
bb195:
  %t743 = load %"compiler/diagmsg:Msg", ptr %l347
  store %"compiler/diagmsg:Msg" %t743, ptr %l346
  br label %bb197
bb196:
  %t744 = load %"compiler/diagmsg:Msg", ptr %l349
  store %"compiler/diagmsg:Msg" %t744, ptr %l346
  br label %bb197
bb197:
  %t745 = load { i64, [3 x i64] }, ptr %l343
  %t746 = load %"compiler/diagmsg:Msg", ptr %l346
  %t747 = call %"compiler/interp:CondErr" @compiler_2finterp_3aCondErr_2ector(ptr %v8, ptr %v8, { i64, [3 x i64] } %t745, %"compiler/diagmsg:Msg" %t746)
  store %"compiler/interp:CondErr" %t747, ptr %l350
  br label %bb198
bb198:
  %t748 = load ptr, ptr %l342, !tbaa !29
  %t749 = load %"compiler/interp:CondErr", ptr %l350
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2finterp_3aCondErr_3e_2ePush_3ccompiler_2finterp_3aCondErr_3e(ptr %v8, ptr %v8, ptr %t748, %"compiler/interp:CondErr" %t749)
  br label %bb199
bb199:
  %t750 = load i64, ptr @G_2ecompiler_2fload_2eNoBranch, !tbaa !24
  store i64 %t750, ptr %l45, !tbaa !24
  call void @__olang_scope_close(ptr %s35)
  br label %bb200
bb200:
  %t752 = load ptr, ptr %l0, !tbaa !29
  %t753 = getelementptr %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20", ptr %l42, i32 0, i32 0
  %t754 = load i64, ptr %t753, !tbaa !24
  %t755 = getelementptr %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20", ptr %l42, i32 0, i32 1
  %t756 = load i32, ptr %t755, !tbaa !23
  %t757 = load i64, ptr %l45, !tbaa !24
  call void @compiler_2fload_2ecompiler_2fload_3aLoader_2eDecide(ptr %v0, ptr %t752, i64 %t754, i32 %t756, i64 %t757)
  br label %bb201
bb201:
  %t762 = load i64, ptr %l11, !tbaa !24
  %t764 = add i64 %t762, 1
  store i64 %t764, ptr %l11, !tbaa !24
  call void @__olang_scope_close(ptr %s31)
  br label %bb202
bb202:
  %t766 = load i64, ptr %l41, !tbaa !24
  %t768 = add i64 %t766, 1
  store i64 %t768, ptr %l41, !tbaa !24
  br label %bb157
bb203:
  %t770 = load i64, ptr %l11, !tbaa !24
  %t772 = icmp eq i64 %t770, 0
  br i1 %t772, label %bb204, label %bb205
bb204:
  store ptr %l27, ptr %l49, !tbaa !29
  store i64 0, ptr %l50, !tbaa !24
  br label %bb206
bb205:
  br label %bb215
bb206:
  %t775 = load i64, ptr %l50, !tbaa !24
  store i64 %t775, ptr %l363, !tbaa !24
  %t776 = load ptr, ptr %l49, !tbaa !29
  %t778 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aIf_26_3e_2eLen_3ccompiler_2fast_3aIf_26_3e(ptr %s0, ptr %t776)
  store i64 %t778, ptr %l365
  br label %bb207
bb207:
  %t779 = load i64, ptr %l363, !tbaa !24
  %t780 = load i64, ptr %l365, !tbaa !24
  %t781 = icmp slt i64 %t779, %t780
  %t783 = xor i1 %t781, true
  br i1 %t783, label %bb208, label %bb209
bb208:
  br label %bb214
bb209:
  br label %bb210
bb210:
  %t785 = load ptr, ptr %l49, !tbaa !29
  %t786 = load i64, ptr %l50, !tbaa !24
  %t789 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aIf_26_3e_2eAt_3ccompiler_2fast_3aIf_26_3e(ptr %s0, ptr %s0, ptr %t785, i64 %t786)
  store ptr %t789, ptr %l370
  br label %bb211
bb211:
  %t790 = load ptr, ptr %l370, !tbaa !29
  %t791 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eRunning(ptr %v1, ptr %s0, ptr %t791, ptr %t790)
  br label %bb212
bb212:
  br label %bb213
bb213:
  %t795 = load i64, ptr %l50, !tbaa !24
  %t797 = add i64 %t795, 1
  store i64 %t797, ptr %l50, !tbaa !24
  br label %bb206
bb214:
  br label %bb215
bb215:
  %t799 = load i64, ptr %l11, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t799, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2finterp_2edecideContracts(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca %"compiler/check:ContractAsk"
  %l12 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l13 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l14 = alloca { i64, [2 x i64] }
  %l16 = alloca { i64, [3 x i64] }
  %l17 = alloca i64
  %l22 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l25 = alloca i64
  %l29 = alloca i64
  %l32 = alloca i64
  %l53 = alloca %"compiler/check:ContractAsk"
  %l57 = alloca i1
  %l65 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l70 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l73 = alloca i1
  %l74 = alloca i1
  %l76 = alloca i1
  %l78 = alloca i1
  %l81 = alloca i1
  %l82 = alloca i1
  %l85 = alloca i1
  %l86 = alloca i1
  %l90 = alloca i1
  %l98 = alloca ptr
  %l99 = alloca { i64, [2 x i64] }
  %l103 = alloca { i64, [5 x i64] }
  %l113 = alloca i64
  %l124 = alloca i1
  %l125 = alloca ptr
  %l126 = alloca { i64, [3 x i64] }
  %l129 = alloca %"compiler/diagmsg:Msg"
  %l130 = alloca i64
  %l133 = alloca ptr
  %l134 = alloca { i64, [3 x i64] }
  %l137 = alloca %"compiler/diagmsg:Msg"
  %l138 = alloca i64
  %l139 = alloca ptr
  %l140 = alloca i64
  %l146 = alloca { i64, [3 x i64] }
  %l147 = alloca %"compiler/diagmsg:Msg"
  %l149 = alloca i1
  %l151 = alloca ptr
  %l152 = alloca i64
  %l153 = alloca { i64, [3 x i64] }
  %l154 = alloca %"compiler/diagmsg:Msg"
  %l157 = alloca %"compiler/diagmsg:Msg"
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %rv = alloca i64
  %t70 = alloca %"compiler/check:ContractAsk", align 8
  %t155 = alloca { i64, [2 x i64] }, align 8
  %t222 = alloca { i64, [3 x i64] }, align 8
  %t282 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 0
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t9 = getelementptr %"compiler/load:Loader", ptr %t7, i32 0, i32 4
  %t10 = load ptr, ptr %t9, !tbaa !29
  store ptr %t10, ptr %l2, !tbaa !29
  %t12 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t12, ptr %l22
  br label %bb1
bb1:
  %t13 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l22
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t13, ptr %l3
  store i64 0, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/check:Checker", ptr %t14, i32 0, i32 141
  %t18 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aContractAsk_3e_2eLe_H3dc16594b41531049b330439cbeee191(ptr %v0, ptr %t16)
  store i64 %t18, ptr %l25
  br label %bb2
bb2:
  %t19 = load i64, ptr %l25, !tbaa !24
  store i64 %t19, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t20 = load i64, ptr %l6, !tbaa !24
  %t21 = load i64, ptr %l5, !tbaa !24
  %t24 = icmp sgt i64 %t20, %t21
  br i1 %t24, label %bb3, label %bb4
bb3:
  %t26 = load i64, ptr %l7, !tbaa !24
  %t28 = icmp sgt i64 %t26, 0
  br i1 %t28, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l29, !tbaa !24
  br label %bb8
bb5:
  %t30 = load i64, ptr %l6, !tbaa !24
  %t31 = load i64, ptr %l5, !tbaa !24
  %t34 = sub i64 %t30, %t31
  %t35 = load i64, ptr %l7, !tbaa !24
  %t38 = add i64 %t34, %t35
  %t40 = sub i64 %t38, 1
  %t41 = load i64, ptr %l7, !tbaa !24
  %t44 = sdiv i64 %t40, %t41
  store i64 %t44, ptr %l32, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l32, !tbaa !24
  br label %bb7
bb7:
  %t46 = load i64, ptr %l32, !tbaa !24
  store i64 %t46, ptr %l29, !tbaa !24
  br label %bb8
bb8:
  %t47 = load i64, ptr %l29, !tbaa !24
  store i64 %t47, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb9
bb9:
  store %olang.scope zeroinitializer, ptr %s2
  %t48 = load i64, ptr %l9, !tbaa !24
  %t49 = load i64, ptr %l8, !tbaa !24
  %t52 = icmp slt i64 %t48, %t49
  %t54 = xor i1 %t52, true
  br i1 %t54, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s2)
  br label %bb79
bb11:
  br label %bb12
bb12:
  %t56 = load i64, ptr %l5, !tbaa !24
  %t57 = load i64, ptr %l9, !tbaa !24
  %t58 = load i64, ptr %l7, !tbaa !24
  %t61 = mul i64 %t57, %t58
  %t64 = add i64 %t56, %t61
  store i64 %t64, ptr %l10, !tbaa !24
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/check:Checker", ptr %t66, i32 0, i32 141
  %t69 = load i64, ptr %l10, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aContractAsk_3e_2eAt_H56c1cddaee4bc4aa5c09605de1331e44(ptr %t70, ptr %v0, ptr %v0, ptr %t68, i64 %t69)
  call void @llvm.memmove.p0.p0.i64(ptr %l53, ptr %t70, i64 160, i1 false)
  br label %bb13
bb13:
  call void @llvm.memmove.p0.p0.i64(ptr %l11, ptr %l53, i64 160, i1 false)
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/check:Checker", ptr %t73, i32 0, i32 143
  %t76 = load i64, ptr %l10, !tbaa !24
  %t79 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t75, i64 %t76)
  store i1 %t79, ptr %l57
  br label %bb14
bb14:
  %t80 = load i1, ptr %l57, !tbaa !21
  br i1 %t80, label %bb15, label %bb16
bb15:
  call void @__olang_scope_close(ptr %s2)
  br label %bb78
bb16:
  br label %bb17
bb17:
  %t81 = getelementptr %"compiler/check:ContractAsk", ptr %l11, i32 0, i32 1
  %t82 = load i64, ptr %t81, !tbaa !24
  %t83 = getelementptr %"compiler/check:ContractAsk", ptr %l11, i32 0, i32 2
  %t84 = getelementptr %"compiler/source:Span", ptr %t83, i32 0, i32 0
  %t85 = load i32, ptr %t84, !tbaa !23
  %t87 = sext i32 %t85 to i64
  %t89 = shl i64 %t87, 32
  %t90 = getelementptr %"compiler/check:ContractAsk", ptr %l11, i32 0, i32 4
  %t91 = getelementptr %"compiler/source:Span", ptr %t90, i32 0, i32 0
  %t92 = load i32, ptr %t91, !tbaa !23
  %t94 = sext i32 %t92 to i64
  %t97 = or i64 %t89, %t94
  %t100 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s2, i64 %t82, i64 %t97)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t100, ptr %l65
  br label %bb18
bb18:
  %t101 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l65
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t101, ptr %l12
  %t102 = getelementptr %"compiler/check:ContractAsk", ptr %l11, i32 0, i32 1
  %t103 = load i64, ptr %t102, !tbaa !24
  %t104 = getelementptr %"compiler/check:ContractAsk", ptr %l11, i32 0, i32 2
  %t105 = getelementptr %"compiler/source:Span", ptr %t104, i32 0, i32 0
  %t106 = load i32, ptr %t105, !tbaa !23
  %t108 = sext i32 %t106 to i64
  %t110 = shl i64 %t108, 32
  %t113 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s2, i64 %t103, i64 %t110)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t113, ptr %l70
  br label %bb19
bb19:
  %t114 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l70
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t114, ptr %l13
  %t115 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l12
  %t118 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2ed2e5427629ba63a7110fc86d969058(ptr %s0, ptr %l3, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t115)
  store i1 %t118, ptr %l73
  br label %bb20
bb20:
  %t119 = load i1, ptr %l73, !tbaa !21
  br i1 %t119, label %bb21, label %bb22
bb21:
  store i1 true, ptr %l74, !tbaa !21
  br label %bb28
bb22:
  %t120 = getelementptr %"compiler/check:ContractAsk", ptr %l11, i32 0, i32 5
  %t121 = load { i64, ptr }, ptr %t120, !tbaa !27
  %t123 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s2, { i64, ptr } %t121, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d109, i32 0, i32 1) })
  store i1 %t123, ptr %l76
  br label %bb23
bb23:
  %t124 = load i1, ptr %l76, !tbaa !21
  %t125 = xor i1 %t124, true
  br i1 %t125, label %bb24, label %bb25
bb24:
  %t127 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l13
  %t130 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2ed2e5427629ba63a7110fc86d969058(ptr %s0, ptr %l3, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t127)
  store i1 %t130, ptr %l81
  br label %bb26
bb25:
  store i1 false, ptr %l78, !tbaa !21
  br label %bb27
bb26:
  %t131 = load i1, ptr %l81, !tbaa !21
  store i1 %t131, ptr %l78, !tbaa !21
  br label %bb27
bb27:
  %t132 = load i1, ptr %l78, !tbaa !21
  store i1 %t132, ptr %l74, !tbaa !21
  br label %bb28
bb28:
  %t133 = load i1, ptr %l74, !tbaa !21
  br i1 %t133, label %bb29, label %bb30
bb29:
  store i1 true, ptr %l82, !tbaa !21
  br label %bb32
bb30:
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t137 = call i1 @compiler_2finterp_2eevaluatedWhole(ptr %v0, ptr %v0, ptr %t134, ptr %l11)
  store i1 %t137, ptr %l85
  br label %bb31
bb31:
  %t138 = load i1, ptr %l85, !tbaa !21
  store i1 %t138, ptr %l82, !tbaa !21
  br label %bb32
bb32:
  %t139 = load i1, ptr %l82, !tbaa !21
  br i1 %t139, label %bb33, label %bb34
bb33:
  store i1 true, ptr %l86, !tbaa !21
  br label %bb36
bb34:
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t142 = getelementptr %"compiler/check:Checker", ptr %t140, i32 0, i32 151
  %t143 = getelementptr %"compiler/check:ContractAsk", ptr %l11, i32 0, i32 12
  %t144 = load i64, ptr %t143, !tbaa !24
  %t147 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t142, i64 %t144)
  store i1 %t147, ptr %l90
  br label %bb35
bb35:
  %t148 = load i1, ptr %l90, !tbaa !21
  store i1 %t148, ptr %l86, !tbaa !21
  br label %bb36
bb36:
  %t149 = load i1, ptr %l86, !tbaa !21
  br i1 %t149, label %bb37, label %bb38
bb37:
  call void @__olang_scope_close(ptr %s2)
  br label %bb78
bb38:
  br label %bb39
bb39:
  %t150 = getelementptr %"compiler/check:ContractAsk", ptr %l11, i32 0, i32 0
  %t151 = load i64, ptr %t150, !tbaa !24
  %t153 = trunc i64 %t151 to i32
  store { i64, [2 x i64] } zeroinitializer, ptr %t155
  %t156 = getelementptr { i64, [2 x i64] }, ptr %t155, i32 0, i32 0
  store i64 0, ptr %t156
  %t158 = insertvalue { i32 } undef, i32 %t153, 0
  %t159 = getelementptr { i64, [2 x i64] }, ptr %t155, i32 0, i32 1
  store { i32 } %t158, ptr %t159
  %t160 = load { i64, [2 x i64] }, ptr %t155
  store { i64, [2 x i64] } %t160, ptr %l14
  %t162 = load ptr, ptr %l1, !tbaa !29
  %t163 = load { i64, [2 x i64] }, ptr %l14
  call void @compiler_2finterp_2ecompiler_2finterp_3aExec_2eNeed(ptr %v1, ptr %t162, { i64, [2 x i64] } %t163)
  br label %bb40
bb40:
  %t166 = load ptr, ptr %l1, !tbaa !29
  %t168 = getelementptr %"compiler/interp:Exec", ptr %t166, i32 0, i32 4
  store ptr %t168, ptr %l98, !tbaa !29
  %t169 = load { i64, [2 x i64] }, ptr %l14
  store { i64, [2 x i64] } %t169, ptr %l99
  %t170 = icmp sge i64 0, 0
  br i1 %t170, label %bb41, label %bb42
bb41:
  %t172 = icmp sle i64 0, 1152921504606846975
  br i1 %t172, label %bb43, label %bb44
bb42:
  call void @__olang_check_failed(ptr @olang_loc_d213ae2acd73c837_819e6544d8b9fb33)
  unreachable
bb43:
  %t174 = mul i64 0, 8
  %t175 = insertvalue { i64, ptr } undef, i64 0, 0
  %t176 = insertvalue { i64, ptr } %t175, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t177 = load ptr, ptr %l98, !tbaa !29
  %t178 = load { i64, [2 x i64] }, ptr %l99
  %t180 = call { i64, [5 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2eEval(ptr %v1, ptr %s2, ptr %v1, ptr %t177, { i64, [2 x i64] } %t178, { i64, ptr } %t176)
  store { i64, [5 x i64] } %t180, ptr %l103
  br label %bb45
bb44:
  call void @__olang_check_failed(ptr @olang_loc_d213ae2acd73c837_819e6544d8b9fb33)
  unreachable
bb45:
  %t181 = load { i64, [5 x i64] }, ptr %l103
  %t184 = extractvalue { i64, [5 x i64] } %t181, 0
  %t185 = icmp eq i64 %t184, 0
  br i1 %t185, label %bb46, label %bb47
bb46:
  br label %bb48
bb47:
  br label %bb72
bb48:
  store %olang.scope zeroinitializer, ptr %s5
  %t187 = load i64, ptr %l4, !tbaa !24
  %t189 = add i64 %t187, 1
  store i64 %t189, ptr %l4, !tbaa !24
  %t191 = load ptr, ptr %l1, !tbaa !29
  %t193 = getelementptr %"compiler/interp:Exec", ptr %t191, i32 0, i32 4
  %t194 = load ptr, ptr %l1, !tbaa !29
  %t196 = getelementptr %"compiler/interp:Exec", ptr %t194, i32 0, i32 4
  %t197 = getelementptr %"compiler/eval:Machine", ptr %t196, i32 0, i32 18
  %t198 = load %"compiler/eval:Ptr", ptr %t197
  %t199 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t203 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eInt(ptr %v1, ptr %t193, %"compiler/eval:Ptr" %t198, i32 %t199)
  store i64 %t203, ptr %l113
  br label %bb49
bb49:
  %t204 = load i64, ptr %l113, !tbaa !24
  %t205 = icmp ne i64 %t204, 0
  br i1 %t205, label %bb50, label %bb51
bb50:
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s2)
  br label %bb78
bb51:
  br label %bb52
bb52:
  %t207 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l12
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1308596c866d4be061d9da9113abde88(ptr %s0, ptr %l3, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t207, i1 true)
  br label %bb53
bb53:
  %t210 = getelementptr %"compiler/check:ContractAsk", ptr %l11, i32 0, i32 1
  %t211 = load i64, ptr %t210, !tbaa !24
  %t212 = getelementptr %"compiler/check:ContractAsk", ptr %l11, i32 0, i32 2
  %t213 = getelementptr %"compiler/source:Span", ptr %t212, i32 0, i32 0
  %t214 = load i32, ptr %t213, !tbaa !23
  %t216 = sext i32 %t214 to i64
  %t217 = getelementptr %"compiler/check:ContractAsk", ptr %l11, i32 0, i32 2
  %t218 = getelementptr %"compiler/source:Span", ptr %t217, i32 0, i32 1
  %t219 = load i32, ptr %t218, !tbaa !23
  %t221 = sext i32 %t219 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t222
  %t223 = getelementptr { i64, [3 x i64] }, ptr %t222, i32 0, i32 0
  store i64 3, ptr %t223
  %t225 = insertvalue { i64, i64, i64 } undef, i64 %t211, 0
  %t227 = insertvalue { i64, i64, i64 } %t225, i64 %t216, 1
  %t229 = insertvalue { i64, i64, i64 } %t227, i64 %t221, 2
  %t230 = getelementptr { i64, [3 x i64] }, ptr %t222, i32 0, i32 1
  store { i64, i64, i64 } %t229, ptr %t230
  %t231 = load { i64, [3 x i64] }, ptr %t222
  store { i64, [3 x i64] } %t231, ptr %l16
  %t233 = getelementptr %"compiler/check:ContractAsk", ptr %l11, i32 0, i32 5
  %t234 = load { i64, ptr }, ptr %t233, !tbaa !27
  %t236 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s5, { i64, ptr } %t234, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d110, i32 0, i32 1) })
  store i1 %t236, ptr %l124
  br label %bb54
bb54:
  %t237 = load i1, ptr %l124, !tbaa !21
  br i1 %t237, label %bb55, label %bb56
bb55:
  %t238 = load ptr, ptr %l2, !tbaa !29
  store ptr %t238, ptr %l125, !tbaa !29
  %t239 = load { i64, [3 x i64] }, ptr %l16
  store { i64, [3 x i64] } %t239, ptr %l126
  %t240 = getelementptr %"compiler/check:ContractAsk", ptr %l11, i32 0, i32 6
  %t241 = load { i64, ptr }, ptr %t240, !tbaa !27
  %t242 = getelementptr %"compiler/check:ContractAsk", ptr %l11, i32 0, i32 9
  %t243 = load { i64, ptr }, ptr %t242, !tbaa !27
  %t246 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eConversionDoesNotFit(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t241, { i64, ptr } %t243)
  store %"compiler/diagmsg:Msg" %t246, ptr %l129
  br label %bb57
bb56:
  br label %bb59
bb57:
  %t247 = load ptr, ptr %l125, !tbaa !29
  %t248 = load { i64, [3 x i64] }, ptr %l126
  %t249 = load %"compiler/diagmsg:Msg", ptr %l129
  %t250 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t247, { i64, [3 x i64] } %t248, %"compiler/diagmsg:Msg" %t249)
  store i64 %t250, ptr %l130
  br label %bb58
bb58:
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s2)
  br label %bb78
bb59:
  %t251 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l13
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1308596c866d4be061d9da9113abde88(ptr %s0, ptr %l3, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t251, i1 true)
  br label %bb60
bb60:
  %t254 = load ptr, ptr %l2, !tbaa !29
  store ptr %t254, ptr %l133, !tbaa !29
  %t255 = load { i64, [3 x i64] }, ptr %l16
  store { i64, [3 x i64] } %t255, ptr %l134
  %t256 = getelementptr %"compiler/check:ContractAsk", ptr %l11, i32 0, i32 6
  %t257 = load { i64, ptr }, ptr %t256, !tbaa !27
  %t258 = getelementptr %"compiler/check:ContractAsk", ptr %l11, i32 0, i32 5
  %t259 = load { i64, ptr }, ptr %t258, !tbaa !27
  %t262 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eContractFalse(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t257, { i64, ptr } %t259)
  store %"compiler/diagmsg:Msg" %t262, ptr %l137
  br label %bb61
bb61:
  %t263 = load ptr, ptr %l133, !tbaa !29
  %t264 = load { i64, [3 x i64] }, ptr %l134
  %t265 = load %"compiler/diagmsg:Msg", ptr %l137
  %t266 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t263, { i64, [3 x i64] } %t264, %"compiler/diagmsg:Msg" %t265)
  store i64 %t266, ptr %l138
  br label %bb62
bb62:
  %t267 = load i64, ptr %l138, !tbaa !24
  store i64 %t267, ptr %l17, !tbaa !24
  %t268 = load ptr, ptr %l2, !tbaa !29
  store ptr %t268, ptr %l139, !tbaa !29
  %t269 = load i64, ptr %l17, !tbaa !24
  store i64 %t269, ptr %l140, !tbaa !24
  %t270 = getelementptr %"compiler/check:ContractAsk", ptr %l11, i32 0, i32 3
  %t271 = load i64, ptr %t270, !tbaa !24
  %t272 = getelementptr %"compiler/check:ContractAsk", ptr %l11, i32 0, i32 4
  %t273 = getelementptr %"compiler/source:Span", ptr %t272, i32 0, i32 0
  %t274 = load i32, ptr %t273, !tbaa !23
  %t276 = sext i32 %t274 to i64
  %t277 = getelementptr %"compiler/check:ContractAsk", ptr %l11, i32 0, i32 4
  %t278 = getelementptr %"compiler/source:Span", ptr %t277, i32 0, i32 1
  %t279 = load i32, ptr %t278, !tbaa !23
  %t281 = sext i32 %t279 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t282
  %t283 = getelementptr { i64, [3 x i64] }, ptr %t282, i32 0, i32 0
  store i64 3, ptr %t283
  %t285 = insertvalue { i64, i64, i64 } undef, i64 %t271, 0
  %t287 = insertvalue { i64, i64, i64 } %t285, i64 %t276, 1
  %t289 = insertvalue { i64, i64, i64 } %t287, i64 %t281, 2
  %t290 = getelementptr { i64, [3 x i64] }, ptr %t282, i32 0, i32 1
  store { i64, i64, i64 } %t289, ptr %t290
  %t291 = load { i64, [3 x i64] }, ptr %t282
  store { i64, [3 x i64] } %t291, ptr %l146
  %t292 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteContractCondition(ptr %v0)
  store %"compiler/diagmsg:Msg" %t292, ptr %l147
  br label %bb63
bb63:
  %t293 = load ptr, ptr %l139, !tbaa !29
  %t294 = load i64, ptr %l140, !tbaa !24
  %t295 = load { i64, [3 x i64] }, ptr %l146
  %t296 = load %"compiler/diagmsg:Msg", ptr %l147
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %v0, ptr %t293, i64 %t294, { i64, [3 x i64] } %t295, %"compiler/diagmsg:Msg" %t296)
  br label %bb64
bb64:
  %t297 = getelementptr %"compiler/check:ContractAsk", ptr %l11, i32 0, i32 8
  %t298 = load { i64, ptr }, ptr %t297, !tbaa !27
  %t300 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s5, { i64, ptr } %t298, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d111, i32 0, i32 1) })
  store i1 %t300, ptr %l149
  br label %bb65
bb65:
  %t301 = load i1, ptr %l149, !tbaa !21
  %t302 = xor i1 %t301, true
  br i1 %t302, label %bb66, label %bb67
bb66:
  store %olang.scope zeroinitializer, ptr %s8
  %t304 = load ptr, ptr %l2, !tbaa !29
  store ptr %t304, ptr %l151, !tbaa !29
  %t305 = load i64, ptr %l17, !tbaa !24
  store i64 %t305, ptr %l152, !tbaa !24
  %t306 = getelementptr %"compiler/check:ContractAsk", ptr %l11, i32 0, i32 7
  %t307 = load { i64, [3 x i64] }, ptr %t306
  store { i64, [3 x i64] } %t307, ptr %l153
  %t308 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteHere(ptr %s8)
  store %"compiler/diagmsg:Msg" %t308, ptr %l154
  br label %bb68
bb67:
  br label %bb71
bb68:
  %t309 = getelementptr %"compiler/diagmsg:Msg", ptr %l154, i32 0, i32 0
  %t310 = load i32, ptr %t309, !range !{i32 0, i32 906}
  %t311 = getelementptr %"compiler/check:ContractAsk", ptr %l11, i32 0, i32 8
  %t312 = load { i64, ptr }, ptr %t311, !tbaa !27
  %t315 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, i32 %t310, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d112, i32 0, i32 1) }, { i64, ptr } %t312, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d22, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d23, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t315, ptr %l157
  br label %bb69
bb69:
  %t316 = load ptr, ptr %l151, !tbaa !29
  %t317 = load i64, ptr %l152, !tbaa !24
  %t318 = load { i64, [3 x i64] }, ptr %l153
  %t319 = load %"compiler/diagmsg:Msg", ptr %l157
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %v0, ptr %t316, i64 %t317, { i64, [3 x i64] } %t318, %"compiler/diagmsg:Msg" %t319)
  br label %bb70
bb70:
  call void @__olang_scope_close(ptr %s8)
  br label %bb71
bb71:
  call void @__olang_scope_close(ptr %s5)
  br label %bb77
bb72:
  br i1 true, label %bb73, label %bb74
bb73:
  br label %bb75
bb74:
  br label %bb76
bb75:
  br label %bb77
bb76:
  call void @__olang_check_failed(ptr @olang_loc_3238838aabc16991_ed85858096edfcc5)
  unreachable
bb77:
  call void @__olang_scope_close(ptr %s2)
  br label %bb78
bb78:
  %t320 = load i64, ptr %l9, !tbaa !24
  %t322 = add i64 %t320, 1
  store i64 %t322, ptr %l9, !tbaa !24
  br label %bb9
bb79:
  %t324 = load i64, ptr %l4, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t324, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2finterp_2edecideTopAsserts(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca %"compiler/check:TopAssertAsk"
  %l7 = alloca { i64, [2 x i64] }
  %l8 = alloca { i64, [5 x i64] }
  %l9 = alloca { i64, [3 x i64] }
  %l11 = alloca i32
  %l12 = alloca i64
  %l13 = alloca %"compiler/source:Span"
  %l15 = alloca { i64, ptr }
  %l16 = alloca i64
  %l17 = alloca %"compiler/source:Span"
  %l25 = alloca i64
  %l27 = alloca i64
  %l32 = alloca %"compiler/check:TopAssertAsk"
  %l40 = alloca ptr
  %l41 = alloca { i64, [2 x i64] }
  %l45 = alloca { i64, [5 x i64] }
  %l61 = alloca i64
  %l63 = alloca { i64, ptr }
  %l66 = alloca { i64, ptr }
  %l67 = alloca i32
  %l69 = alloca i1
  %l70 = alloca ptr
  %l71 = alloca { i64, [3 x i64] }
  %l72 = alloca %"compiler/diagmsg:Msg"
  %l73 = alloca i64
  %l74 = alloca ptr
  %l75 = alloca { i64, [3 x i64] }
  %l77 = alloca %"compiler/diagmsg:Msg"
  %l78 = alloca i64
  %l94 = alloca ptr
  %l95 = alloca { i64, [3 x i64] }
  %l97 = alloca { i64, ptr }
  %l98 = alloca %"compiler/diagmsg:Msg"
  %l99 = alloca i64
  %l100 = alloca ptr
  %l101 = alloca i64
  %l107 = alloca { i64, [3 x i64] }
  %l108 = alloca %"compiler/diagmsg:Msg"
  %l116 = alloca i1
  %l117 = alloca ptr
  %l118 = alloca { i64, [3 x i64] }
  %l120 = alloca %"compiler/diagmsg:Msg"
  %l121 = alloca i64
  %l127 = alloca ptr
  %l128 = alloca { i64, [3 x i64] }
  %l129 = alloca { i64, ptr }
  %l133 = alloca { i64, ptr }
  %l136 = alloca %"compiler/diagmsg:Msg"
  %l137 = alloca i64
  %l140 = alloca ptr
  %l141 = alloca { i64, [3 x i64] }
  %l142 = alloca %"compiler/diagmsg:Msg"
  %l143 = alloca i64
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %rv = alloca i64
  %t37 = alloca { i64, [2 x i64] }, align 8
  %t76 = alloca { i64, [3 x i64] }, align 8
  %t208 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 0
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t9 = getelementptr %"compiler/load:Loader", ptr %t7, i32 0, i32 4
  %t10 = load ptr, ptr %t9, !tbaa !29
  store ptr %t10, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/check:Checker", ptr %t12, i32 0, i32 116
  store ptr %t14, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb1
bb1:
  store %olang.scope zeroinitializer, ptr %s2
  %t16 = load i64, ptr %l5, !tbaa !24
  store i64 %t16, ptr %l25, !tbaa !24
  %t17 = load ptr, ptr %l4, !tbaa !29
  %t19 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aTopAssertAsk_3e_2eL_H34364174f15757c2d142d60c88ce0944(ptr %v0, ptr %t17)
  store i64 %t19, ptr %l27
  br label %bb2
bb2:
  %t20 = load i64, ptr %l25, !tbaa !24
  %t21 = load i64, ptr %l27, !tbaa !24
  %t22 = icmp slt i64 %t20, %t21
  %t24 = xor i1 %t22, true
  br i1 %t24, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s2)
  br label %bb64
bb4:
  br label %bb5
bb5:
  %t26 = load ptr, ptr %l4, !tbaa !29
  %t27 = load i64, ptr %l5, !tbaa !24
  %t30 = call %"compiler/check:TopAssertAsk" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aTopAssertAsk_3e_2eA_H4ee666e103d2e1a6dd21794f4936298a(ptr %v0, ptr %t26, i64 %t27)
  store %"compiler/check:TopAssertAsk" %t30, ptr %l32
  br label %bb6
bb6:
  %t31 = load %"compiler/check:TopAssertAsk", ptr %l32
  store %"compiler/check:TopAssertAsk" %t31, ptr %l6
  %t32 = getelementptr %"compiler/check:TopAssertAsk", ptr %l6, i32 0, i32 3
  %t33 = load i64, ptr %t32, !tbaa !24
  %t35 = trunc i64 %t33 to i32
  store { i64, [2 x i64] } zeroinitializer, ptr %t37
  %t38 = getelementptr { i64, [2 x i64] }, ptr %t37, i32 0, i32 0
  store i64 0, ptr %t38
  %t40 = insertvalue { i32 } undef, i32 %t35, 0
  %t41 = getelementptr { i64, [2 x i64] }, ptr %t37, i32 0, i32 1
  store { i32 } %t40, ptr %t41
  %t42 = load { i64, [2 x i64] }, ptr %t37
  store { i64, [2 x i64] } %t42, ptr %l7
  %t44 = load ptr, ptr %l1, !tbaa !29
  %t45 = load { i64, [2 x i64] }, ptr %l7
  call void @compiler_2finterp_2ecompiler_2finterp_3aExec_2eNeed(ptr %v1, ptr %t44, { i64, [2 x i64] } %t45)
  br label %bb7
bb7:
  %t48 = load ptr, ptr %l1, !tbaa !29
  %t50 = getelementptr %"compiler/interp:Exec", ptr %t48, i32 0, i32 4
  store ptr %t50, ptr %l40, !tbaa !29
  %t51 = load { i64, [2 x i64] }, ptr %l7
  store { i64, [2 x i64] } %t51, ptr %l41
  %t52 = icmp sge i64 0, 0
  br i1 %t52, label %bb8, label %bb9
bb8:
  %t54 = icmp sle i64 0, 1152921504606846975
  br i1 %t54, label %bb10, label %bb11
bb9:
  call void @__olang_check_failed(ptr @olang_loc_c1dbe1436b3e45a6_af45377485db5b6a)
  unreachable
bb10:
  %t56 = mul i64 0, 8
  %t57 = insertvalue { i64, ptr } undef, i64 0, 0
  %t58 = insertvalue { i64, ptr } %t57, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t59 = load ptr, ptr %l40, !tbaa !29
  %t60 = load { i64, [2 x i64] }, ptr %l41
  %t62 = call { i64, [5 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2eEval(ptr %v1, ptr %s2, ptr %v1, ptr %t59, { i64, [2 x i64] } %t60, { i64, ptr } %t58)
  store { i64, [5 x i64] } %t62, ptr %l45
  br label %bb12
bb11:
  call void @__olang_check_failed(ptr @olang_loc_c1dbe1436b3e45a6_af45377485db5b6a)
  unreachable
bb12:
  %t63 = load { i64, [5 x i64] }, ptr %l45
  store { i64, [5 x i64] } %t63, ptr %l8
  %t64 = getelementptr %"compiler/check:TopAssertAsk", ptr %l6, i32 0, i32 0
  %t65 = load i64, ptr %t64, !tbaa !24
  %t66 = getelementptr %"compiler/check:TopAssertAsk", ptr %l6, i32 0, i32 2
  %t67 = getelementptr %"compiler/source:Span", ptr %t66, i32 0, i32 0
  %t68 = load i32, ptr %t67, !tbaa !23
  %t70 = sext i32 %t68 to i64
  %t71 = getelementptr %"compiler/check:TopAssertAsk", ptr %l6, i32 0, i32 2
  %t72 = getelementptr %"compiler/source:Span", ptr %t71, i32 0, i32 1
  %t73 = load i32, ptr %t72, !tbaa !23
  %t75 = sext i32 %t73 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t76
  %t77 = getelementptr { i64, [3 x i64] }, ptr %t76, i32 0, i32 0
  store i64 3, ptr %t77
  %t79 = insertvalue { i64, i64, i64 } undef, i64 %t65, 0
  %t81 = insertvalue { i64, i64, i64 } %t79, i64 %t70, 1
  %t83 = insertvalue { i64, i64, i64 } %t81, i64 %t75, 2
  %t84 = getelementptr { i64, [3 x i64] }, ptr %t76, i32 0, i32 1
  store { i64, i64, i64 } %t83, ptr %t84
  %t85 = load { i64, [3 x i64] }, ptr %t76
  store { i64, [3 x i64] } %t85, ptr %l9
  %t87 = load i64, ptr %l3, !tbaa !24
  %t89 = add i64 %t87, 1
  store i64 %t89, ptr %l3, !tbaa !24
  %t91 = load { i64, [5 x i64] }, ptr %l8
  %t93 = extractvalue { i64, [5 x i64] } %t91, 0
  %t94 = icmp eq i64 %t93, 0
  br i1 %t94, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb28
bb15:
  store %olang.scope zeroinitializer, ptr %s3
  %t96 = load ptr, ptr %l1, !tbaa !29
  %t98 = getelementptr %"compiler/interp:Exec", ptr %t96, i32 0, i32 4
  %t99 = load ptr, ptr %l1, !tbaa !29
  %t101 = getelementptr %"compiler/interp:Exec", ptr %t99, i32 0, i32 4
  %t102 = getelementptr %"compiler/eval:Machine", ptr %t101, i32 0, i32 18
  %t103 = load %"compiler/eval:Ptr", ptr %t102
  %t104 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t108 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eInt(ptr %v1, ptr %t98, %"compiler/eval:Ptr" %t103, i32 %t104)
  store i64 %t108, ptr %l61
  br label %bb16
bb16:
  %t109 = load i64, ptr %l61, !tbaa !24
  %t110 = icmp ne i64 %t109, 0
  br i1 %t110, label %bb17, label %bb18
bb17:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s2)
  br label %bb63
bb18:
  br label %bb19
bb19:
  %t112 = load ptr, ptr %l1, !tbaa !29
  %t113 = getelementptr %"compiler/check:TopAssertAsk", ptr %l6, i32 0, i32 4
  %t114 = load i64, ptr %t113, !tbaa !24
  %t117 = call { i32, { i64, ptr } } @compiler_2finterp_2ecompiler_2finterp_3aExec_2eText(ptr %v1, ptr %s3, ptr %t112, i64 %t114)
  %t118 = extractvalue { i32, { i64, ptr } } %t117, 1
  %t119 = extractvalue { i32, { i64, ptr } } %t117, 0
  store i32 %t119, ptr %l67
  %t120 = icmp ne i32 %t119, 0
  br i1 %t120, label %bb21, label %ok.121, !prof !99
ok.121:
  store { i64, ptr } %t118, ptr %l66
  br label %bb20
bb20:
  %t122 = load { i64, ptr }, ptr %l66, !tbaa !27
  store { i64, ptr } %t122, ptr %l63, !tbaa !27
  br label %bb25
bb21:
  %t123 = load i32, ptr %l67, !tbaa !23
  %t124 = ashr i32 %t123, 16
  %t126 = icmp eq i32 %t124, 1
  store i1 %t126, ptr %l69, !tbaa !21
  br label %bb22
bb22:
  %t127 = load ptr, ptr %l2, !tbaa !29
  store ptr %t127, ptr %l70, !tbaa !29
  %t128 = load { i64, [3 x i64] }, ptr %l9
  store { i64, [3 x i64] } %t128, ptr %l71
  %t129 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTopAssertFalse(ptr %v0)
  store %"compiler/diagmsg:Msg" %t129, ptr %l72
  br label %bb23
bb23:
  %t130 = load ptr, ptr %l70, !tbaa !29
  %t131 = load { i64, [3 x i64] }, ptr %l71
  %t132 = load %"compiler/diagmsg:Msg", ptr %l72
  %t133 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t130, { i64, [3 x i64] } %t131, %"compiler/diagmsg:Msg" %t132)
  store i64 %t133, ptr %l73
  br label %bb24
bb24:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s2)
  br label %bb63
bb25:
  %t134 = load { i64, ptr }, ptr %l63, !tbaa !27
  %t135 = load ptr, ptr %l2, !tbaa !29
  store ptr %t135, ptr %l74, !tbaa !29
  %t136 = load { i64, [3 x i64] }, ptr %l9
  store { i64, [3 x i64] } %t136, ptr %l75
  %t139 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTopAssertFalseMessage(ptr %s3, ptr %v0, { i64, ptr } %t134)
  store %"compiler/diagmsg:Msg" %t139, ptr %l77
  br label %bb26
bb26:
  %t140 = load ptr, ptr %l74, !tbaa !29
  %t141 = load { i64, [3 x i64] }, ptr %l75
  %t142 = load %"compiler/diagmsg:Msg", ptr %l77
  %t143 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t140, { i64, [3 x i64] } %t141, %"compiler/diagmsg:Msg" %t142)
  store i64 %t143, ptr %l78
  br label %bb27
bb27:
  call void @__olang_scope_close(ptr %s3)
  br label %bb62
bb28:
  %t144 = load { i64, [5 x i64] }, ptr %l8
  %t146 = extractvalue { i64, [5 x i64] } %t144, 0
  %t147 = icmp eq i64 %t146, 2
  br i1 %t147, label %bb29, label %bb30
bb29:
  %t149 = getelementptr { i64, [5 x i64] }, ptr %l8, i32 0, i32 1
  %t150 = getelementptr { i32, i64, %"compiler/source:Span", { i64, ptr } }, ptr %t149, i32 0, i32 0
  %t151 = load i32, ptr %t150, !range !{i32 0, i32 20}
  store i32 %t151, ptr %l11
  %t153 = getelementptr { i64, [5 x i64] }, ptr %l8, i32 0, i32 1
  %t154 = getelementptr { i32, i64, %"compiler/source:Span", { i64, ptr } }, ptr %t153, i32 0, i32 1
  %t155 = load i64, ptr %t154
  store i64 %t155, ptr %l12, !tbaa !24
  %t157 = getelementptr { i64, [5 x i64] }, ptr %l8, i32 0, i32 1
  %t158 = getelementptr { i32, i64, %"compiler/source:Span", { i64, ptr } }, ptr %t157, i32 0, i32 2
  %t159 = load %"compiler/source:Span", ptr %t158
  store %"compiler/source:Span" %t159, ptr %l13
  br label %bb31
bb30:
  br label %bb41
bb31:
  store %olang.scope zeroinitializer, ptr %s6
  %t161 = load ptr, ptr %l1, !tbaa !29
  %t163 = getelementptr %"compiler/interp:Exec", ptr %t161, i32 0, i32 4
  %t164 = getelementptr %"compiler/eval:Machine", ptr %t163, i32 0, i32 21
  %t165 = load i64, ptr %t164, !tbaa !24
  %t167 = icmp sge i64 %t165, 0
  br i1 %t167, label %bb32, label %bb33
bb32:
  %t169 = load ptr, ptr %l1, !tbaa !29
  %t170 = load ptr, ptr %l2, !tbaa !29
  %t171 = load ptr, ptr %l1, !tbaa !29
  %t173 = getelementptr %"compiler/interp:Exec", ptr %t171, i32 0, i32 4
  %t174 = getelementptr %"compiler/eval:Machine", ptr %t173, i32 0, i32 21
  %t175 = load i64, ptr %t174, !tbaa !24
  %t176 = load i32, ptr %l11, !range !{i32 0, i32 20}
  %t177 = load i64, ptr %l12, !tbaa !24
  %t178 = load %"compiler/source:Span", ptr %l13
  call void @compiler_2finterp_2eglobalAborts(ptr %v1, ptr %v0, ptr %t169, ptr %t170, i64 %t175, i32 %t176, i64 %t177, %"compiler/source:Span" %t178)
  br label %bb34
bb33:
  br label %bb35
bb34:
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s2)
  br label %bb63
bb35:
  %t185 = load ptr, ptr %l2, !tbaa !29
  store ptr %t185, ptr %l94, !tbaa !29
  %t186 = load { i64, [3 x i64] }, ptr %l9
  store { i64, [3 x i64] } %t186, ptr %l95
  %t187 = load i32, ptr %l11, !range !{i32 0, i32 20}
  %t189 = call { i64, ptr } @compiler_2finterp_2eAbortWhy(ptr %s6, i32 %t187)
  store { i64, ptr } %t189, ptr %l97
  br label %bb36
bb36:
  %t190 = load { i64, ptr }, ptr %l97, !tbaa !27
  %t191 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAssertAborts(ptr %s6, ptr %v0, { i64, ptr } %t190)
  store %"compiler/diagmsg:Msg" %t191, ptr %l98
  br label %bb37
bb37:
  %t192 = load ptr, ptr %l94, !tbaa !29
  %t193 = load { i64, [3 x i64] }, ptr %l95
  %t194 = load %"compiler/diagmsg:Msg", ptr %l98
  %t195 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t192, { i64, [3 x i64] } %t193, %"compiler/diagmsg:Msg" %t194)
  store i64 %t195, ptr %l99
  br label %bb38
bb38:
  %t196 = load i64, ptr %l99, !tbaa !24
  %t197 = load ptr, ptr %l2, !tbaa !29
  store ptr %t197, ptr %l100, !tbaa !29
  store i64 %t196, ptr %l101, !tbaa !24
  %t199 = load i64, ptr %l12, !tbaa !24
  %t200 = getelementptr %"compiler/source:Span", ptr %l13, i32 0, i32 0
  %t201 = load i32, ptr %t200, !tbaa !23
  %t203 = sext i32 %t201 to i64
  %t204 = getelementptr %"compiler/source:Span", ptr %l13, i32 0, i32 1
  %t205 = load i32, ptr %t204, !tbaa !23
  %t207 = sext i32 %t205 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t208
  %t209 = getelementptr { i64, [3 x i64] }, ptr %t208, i32 0, i32 0
  store i64 3, ptr %t209
  %t211 = insertvalue { i64, i64, i64 } undef, i64 %t199, 0
  %t213 = insertvalue { i64, i64, i64 } %t211, i64 %t203, 1
  %t215 = insertvalue { i64, i64, i64 } %t213, i64 %t207, 2
  %t216 = getelementptr { i64, [3 x i64] }, ptr %t208, i32 0, i32 1
  store { i64, i64, i64 } %t215, ptr %t216
  %t217 = load { i64, [3 x i64] }, ptr %t208
  store { i64, [3 x i64] } %t217, ptr %l107
  %t218 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteHere(ptr %v0)
  store %"compiler/diagmsg:Msg" %t218, ptr %l108
  br label %bb39
bb39:
  %t219 = load ptr, ptr %l100, !tbaa !29
  %t220 = load i64, ptr %l101, !tbaa !24
  %t221 = load { i64, [3 x i64] }, ptr %l107
  %t222 = load %"compiler/diagmsg:Msg", ptr %l108
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %v0, ptr %t219, i64 %t220, { i64, [3 x i64] } %t221, %"compiler/diagmsg:Msg" %t222)
  br label %bb40
bb40:
  call void @__olang_scope_close(ptr %s6)
  br label %bb62
bb41:
  %t223 = load { i64, [5 x i64] }, ptr %l8
  %t225 = extractvalue { i64, [5 x i64] } %t223, 0
  %t226 = icmp eq i64 %t225, 3
  br i1 %t226, label %bb42, label %bb43
bb42:
  %t228 = getelementptr { i64, [5 x i64] }, ptr %l8, i32 0, i32 1
  %t229 = getelementptr { { i64, ptr }, i64, %"compiler/source:Span" }, ptr %t228, i32 0, i32 0
  %t230 = load { i64, ptr }, ptr %t229
  store { i64, ptr } %t230, ptr %l15, !tbaa !27
  %t232 = getelementptr { i64, [5 x i64] }, ptr %l8, i32 0, i32 1
  %t233 = getelementptr { { i64, ptr }, i64, %"compiler/source:Span" }, ptr %t232, i32 0, i32 1
  %t234 = load i64, ptr %t233
  store i64 %t234, ptr %l16, !tbaa !24
  %t236 = getelementptr { i64, [5 x i64] }, ptr %l8, i32 0, i32 1
  %t237 = getelementptr { { i64, ptr }, i64, %"compiler/source:Span" }, ptr %t236, i32 0, i32 2
  %t238 = load %"compiler/source:Span", ptr %t237
  store %"compiler/source:Span" %t238, ptr %l17
  br label %bb44
bb43:
  br label %bb55
bb44:
  %t240 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t241 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyStale, !tbaa !27
  %t242 = load ptr, ptr @__olang_prog_scope
  %t245 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %t242, { i64, ptr } %t240, { i64, ptr } %t241)
  store i1 %t245, ptr %l116
  br label %bb45
bb45:
  %t246 = load i1, ptr %l116, !tbaa !21
  br i1 %t246, label %bb46, label %bb47
bb46:
  %t247 = load ptr, ptr %l2, !tbaa !29
  store ptr %t247, ptr %l117, !tbaa !29
  %t248 = load { i64, [3 x i64] }, ptr %l9
  store { i64, [3 x i64] } %t248, ptr %l118
  %t249 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t251 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAssertStale(ptr %v1, ptr %v0, { i64, ptr } %t249)
  store %"compiler/diagmsg:Msg" %t251, ptr %l120
  br label %bb48
bb47:
  store %olang.scope zeroinitializer, ptr %s10
  %t252 = load ptr, ptr %l2, !tbaa !29
  store ptr %t252, ptr %l127, !tbaa !29
  %t253 = load { i64, [3 x i64] }, ptr %l9
  store { i64, [3 x i64] } %t253, ptr %l128
  %t254 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t254, ptr %l129, !tbaa !27
  %t255 = load ptr, ptr %l2, !tbaa !29
  %t256 = load i64, ptr %l16, !tbaa !24
  %t257 = load %"compiler/source:Span", ptr %l17
  %t261 = call { i64, ptr } @compiler_2finterp_2eline(ptr %v0, ptr %s10, ptr %t255, i64 %t256, %"compiler/source:Span" %t257)
  store { i64, ptr } %t261, ptr %l133
  br label %bb51
bb48:
  %t262 = load ptr, ptr %l117, !tbaa !29
  %t263 = load { i64, [3 x i64] }, ptr %l118
  %t264 = load %"compiler/diagmsg:Msg", ptr %l120
  %t265 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t262, { i64, [3 x i64] } %t263, %"compiler/diagmsg:Msg" %t264)
  store i64 %t265, ptr %l121
  br label %bb49
bb49:
  %t266 = load i64, ptr %l121, !tbaa !24
  %t267 = load ptr, ptr %l1, !tbaa !29
  %t268 = load ptr, ptr %l2, !tbaa !29
  %t270 = load i64, ptr %l16, !tbaa !24
  %t271 = load %"compiler/source:Span", ptr %l17
  call void @compiler_2finterp_2estaleNotes(ptr %v1, ptr %v0, ptr %t267, ptr %t268, i64 %t266, i64 %t270, %"compiler/source:Span" %t271)
  br label %bb50
bb50:
  br label %bb54
bb51:
  %t277 = load { i64, ptr }, ptr %l129, !tbaa !27
  %t278 = extractvalue { i64, ptr } %t277, 1
  %t279 = extractvalue { i64, ptr } %t277, 0
  %t280 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d113, i32 0, i32 1) }, 1
  %t281 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d113, i32 0, i32 1) }, 0
  %t282 = add i64 %t279, %t281
  %t283 = load { i64, ptr }, ptr %l133, !tbaa !27
  %t284 = extractvalue { i64, ptr } %t283, 1
  %t285 = extractvalue { i64, ptr } %t283, 0
  %t286 = add i64 %t282, %t285
  %t287 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d114, i32 0, i32 1) }, 1
  %t288 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d114, i32 0, i32 1) }, 0
  %t289 = add i64 %t286, %t288
  %t290 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t289)
  call void @olang_textcopy(ptr %t290, ptr %t278, i64 %t279)
  %t291 = getelementptr i8, ptr %t290, i64 %t279
  call void @olang_textcopy(ptr %t291, ptr %t280, i64 %t281)
  %t292 = getelementptr i8, ptr %t291, i64 %t281
  call void @olang_textcopy(ptr %t292, ptr %t284, i64 %t285)
  %t293 = getelementptr i8, ptr %t292, i64 %t285
  call void @olang_textcopy(ptr %t293, ptr %t287, i64 %t288)
  %t294 = insertvalue { i64, ptr } undef, i64 %t289, 0
  %t295 = insertvalue { i64, ptr } %t294, ptr %t290, 1
  %t297 = extractvalue { i64, ptr } %t295, 0
  %t298 = extractvalue { i64, ptr } %t295, 1
  %t299 = mul i64 %t297, 1
  %t300 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t299)
  call void @llvm.memcpy.p0.p0.i64(ptr %t300, ptr %t298, i64 %t299, i1 false)
  %t301 = insertvalue { i64, ptr } undef, i64 %t297, 0
  %t302 = insertvalue { i64, ptr } %t301, ptr %t300, 1
  %t304 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTopAssertUndecidable(ptr %s10, ptr %v0, { i64, ptr } %t302)
  store %"compiler/diagmsg:Msg" %t304, ptr %l136
  br label %bb52
bb52:
  %t305 = load ptr, ptr %l127, !tbaa !29
  %t306 = load { i64, [3 x i64] }, ptr %l128
  %t307 = load %"compiler/diagmsg:Msg", ptr %l136
  %t308 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t305, { i64, [3 x i64] } %t306, %"compiler/diagmsg:Msg" %t307)
  store i64 %t308, ptr %l137
  br label %bb53
bb53:
  call void @__olang_scope_close(ptr %s10)
  br label %bb54
bb54:
  br label %bb62
bb55:
  %t309 = load { i64, [5 x i64] }, ptr %l8
  %t311 = extractvalue { i64, [5 x i64] } %t309, 0
  %t312 = icmp eq i64 %t311, 1
  br i1 %t312, label %bb56, label %bb57
bb56:
  br label %bb58
bb57:
  br label %bb61
bb58:
  store %olang.scope zeroinitializer, ptr %s12
  %t314 = load ptr, ptr %l2, !tbaa !29
  store ptr %t314, ptr %l140, !tbaa !29
  %t315 = load { i64, [3 x i64] }, ptr %l9
  store { i64, [3 x i64] } %t315, ptr %l141
  %t316 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTopAssertUndecidable(ptr %s12, ptr %v0, { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d115, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t316, ptr %l142
  br label %bb59
bb59:
  %t317 = load ptr, ptr %l140, !tbaa !29
  %t318 = load { i64, [3 x i64] }, ptr %l141
  %t319 = load %"compiler/diagmsg:Msg", ptr %l142
  %t320 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t317, { i64, [3 x i64] } %t318, %"compiler/diagmsg:Msg" %t319)
  store i64 %t320, ptr %l143
  br label %bb60
bb60:
  call void @__olang_scope_close(ptr %s12)
  br label %bb62
bb61:
  call void @__olang_check_failed(ptr @olang_loc_5ce1b8d60352552c_3e5898832c479718)
  unreachable
bb62:
  call void @__olang_scope_close(ptr %s2)
  br label %bb63
bb63:
  %t321 = load i64, ptr %l5, !tbaa !24
  %t323 = add i64 %t321, 1
  store i64 %t323, ptr %l5, !tbaa !24
  br label %bb1
bb64:
  %t325 = load i64, ptr %l3, !tbaa !24
  store i64 %t325, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2finterp_2edetachedEnd(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca i1
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d116, i32 0, i32 1) })
  store i1 %t3, ptr %l2
  br label %bb1
bb1:
  %t4 = load i1, ptr %l2, !tbaa !21
  %t5 = xor i1 %t4, true
  br i1 %t5, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t7 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t7, 1
  %t10 = extractvalue { i64, ptr } %t7, 0
  %t11 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d117, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d117, i32 0, i32 1) }, 0
  %t13 = add i64 %t10, %t12
  %t14 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t13)
  call void @olang_textcopy(ptr %t14, ptr %t9, i64 %t10)
  %t15 = getelementptr i8, ptr %t14, i64 %t10
  call void @olang_textcopy(ptr %t15, ptr %t11, i64 %t12)
  %t16 = insertvalue { i64, ptr } undef, i64 %t13, 0
  %t17 = insertvalue { i64, ptr } %t16, ptr %t14, 1
  %t19 = extractvalue { i64, ptr } %t17, 0
  %t20 = extractvalue { i64, ptr } %t17, 1
  %t21 = mul i64 %t19, 1
  %t22 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t21)
  call void @llvm.memcpy.p0.p0.i64(ptr %t22, ptr %t20, i64 %t21, i1 false)
  %t23 = insertvalue { i64, ptr } undef, i64 %t19, 0
  %t24 = insertvalue { i64, ptr } %t23, ptr %t22, 1
  call void @compiler_2finterp_2esayErr(ptr %s1, { i64, ptr } %t24)
  br label %bb4
bb3:
  br label %bb5
bb4:
  call void @__olang_scope_close(ptr %s1)
  br label %bb5
bb5:
  call void @std_2fos_2eExit(i32 134)
  unreachable
bb6:
  call void @__olang_check_failed(ptr @olang_loc_684d00a1d063a664_9e7a8340f5ecf8d8)
  unreachable
ret:
  ret void
}

define dso_local i1 @compiler_2finterp_2eevaluatedWhole(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca %"compiler/check:AssertAsk"
  %l8 = alloca i1
  %l17 = alloca ptr
  %l24 = alloca i64
  %l26 = alloca i64
  %l31 = alloca %"compiler/check:AssertAsk"
  %l36 = alloca i1
  %l41 = alloca i1
  %rv = alloca i1
  %t52 = alloca %"compiler/check:AssertAsk", align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/check:ContractAsk", ptr %t1, i32 0, i32 10
  %t4 = load i1, ptr %t3, !tbaa !21
  %t6 = xor i1 %t4, true
  br i1 %t6, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l8, !tbaa !21
  br label %bb3
bb2:
  %t8 = load ptr, ptr %l1, !tbaa !29
  %t10 = getelementptr %"compiler/check:ContractAsk", ptr %t8, i32 0, i32 11
  %t11 = load i64, ptr %t10, !tbaa !24
  %t13 = icmp slt i64 %t11, 0
  store i1 %t13, ptr %l8, !tbaa !21
  br label %bb3
bb3:
  %t15 = load i1, ptr %l8, !tbaa !21
  br i1 %t15, label %bb4, label %bb5
bb4:
  store i1 false, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/check:Checker", ptr %t17, i32 0, i32 18
  %t20 = load ptr, ptr %l1, !tbaa !29
  %t22 = getelementptr %"compiler/check:ContractAsk", ptr %t20, i32 0, i32 11
  %t23 = load i64, ptr %t22, !tbaa !24
  %t26 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t19, i64 %t23)
  store ptr %t26, ptr %l17
  br label %bb7
bb7:
  %t27 = load ptr, ptr %l17, !tbaa !29
  %t29 = getelementptr %"compiler/typed:Body", ptr %t27, i32 0, i32 1
  %t30 = load { i64, [2 x i64] }, ptr %t29
  %t32 = extractvalue { i64, [2 x i64] } %t30, 0
  %t33 = icmp eq i64 %t32, 6
  br i1 %t33, label %bb8, label %bb9
bb8:
  store i1 true, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/check:Checker", ptr %t36, i32 0, i32 115
  store ptr %t38, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb11
bb11:
  %t40 = load i64, ptr %l3, !tbaa !24
  store i64 %t40, ptr %l24, !tbaa !24
  %t41 = load ptr, ptr %l2, !tbaa !29
  %t43 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aAssertAsk_3e_2eLen__Hcf51b196874cac8430175c74f3bdddd4(ptr %v0, ptr %t41)
  store i64 %t43, ptr %l26
  br label %bb12
bb12:
  %t44 = load i64, ptr %l24, !tbaa !24
  %t45 = load i64, ptr %l26, !tbaa !24
  %t46 = icmp slt i64 %t44, %t45
  %t48 = xor i1 %t46, true
  br i1 %t48, label %bb13, label %bb14
bb13:
  br label %bb27
bb14:
  br label %bb15
bb15:
  %t50 = load ptr, ptr %l2, !tbaa !29
  %t51 = load i64, ptr %l3, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aAssertAsk_3e_2eAt_3ccompiler_2fcheck_3aAssertAsk_3e(ptr %t52, ptr %v0, ptr %v0, ptr %t50, i64 %t51)
  call void @llvm.memmove.p0.p0.i64(ptr %l31, ptr %t52, i64 184, i1 false)
  br label %bb16
bb16:
  call void @llvm.memmove.p0.p0.i64(ptr %l4, ptr %l31, i64 184, i1 false)
  %t55 = getelementptr %"compiler/check:AssertAsk", ptr %l4, i32 0, i32 0
  %t56 = load i64, ptr %t55, !tbaa !24
  %t57 = load ptr, ptr %l1, !tbaa !29
  %t59 = getelementptr %"compiler/check:ContractAsk", ptr %t57, i32 0, i32 11
  %t60 = load i64, ptr %t59, !tbaa !24
  %t63 = icmp eq i64 %t56, %t60
  br i1 %t63, label %bb17, label %bb18
bb17:
  %t65 = getelementptr %"compiler/check:AssertAsk", ptr %l4, i32 0, i32 2
  %t66 = getelementptr %"compiler/source:Span", ptr %t65, i32 0, i32 0
  %t67 = load i32, ptr %t66, !tbaa !23
  %t68 = load ptr, ptr %l1, !tbaa !29
  %t70 = getelementptr %"compiler/check:ContractAsk", ptr %t68, i32 0, i32 2
  %t71 = getelementptr %"compiler/source:Span", ptr %t70, i32 0, i32 0
  %t72 = load i32, ptr %t71, !tbaa !23
  %t75 = icmp sle i32 %t67, %t72
  store i1 %t75, ptr %l36, !tbaa !21
  br label %bb19
bb18:
  store i1 false, ptr %l36, !tbaa !21
  br label %bb19
bb19:
  %t77 = load i1, ptr %l36, !tbaa !21
  br i1 %t77, label %bb20, label %bb21
bb20:
  %t78 = load ptr, ptr %l1, !tbaa !29
  %t80 = getelementptr %"compiler/check:ContractAsk", ptr %t78, i32 0, i32 2
  %t81 = getelementptr %"compiler/source:Span", ptr %t80, i32 0, i32 1
  %t82 = load i32, ptr %t81, !tbaa !23
  %t83 = getelementptr %"compiler/check:AssertAsk", ptr %l4, i32 0, i32 2
  %t84 = getelementptr %"compiler/source:Span", ptr %t83, i32 0, i32 1
  %t85 = load i32, ptr %t84, !tbaa !23
  %t88 = icmp sle i32 %t82, %t85
  store i1 %t88, ptr %l41, !tbaa !21
  br label %bb22
bb21:
  store i1 false, ptr %l41, !tbaa !21
  br label %bb22
bb22:
  %t90 = load i1, ptr %l41, !tbaa !21
  br i1 %t90, label %bb23, label %bb24
bb23:
  store i1 true, ptr %rv
  br label %ret
bb24:
  br label %bb25
bb25:
  br label %bb26
bb26:
  %t92 = load i64, ptr %l3, !tbaa !24
  %t94 = add i64 %t92, 1
  store i64 %t94, ptr %l3, !tbaa !24
  br label %bb11
bb27:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2finterp_2efalseMessage(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l1 = alloca ptr
  %l7 = alloca %"compiler/diagmsg:Msg"
  %l11 = alloca { i64, ptr }
  %l15 = alloca { i64, ptr }
  %l16 = alloca i32
  %l18 = alloca i1
  %l20 = alloca %"compiler/diagmsg:Msg"
  %l22 = alloca %"compiler/diagmsg:Msg"
  %l24 = alloca %"compiler/diagmsg:Msg"
  %s2 = alloca %olang.scope
  %rv = alloca %"compiler/diagmsg:Msg"
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/check:AssertAsk", ptr %t1, i32 0, i32 6
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = load ptr, ptr %l1, !tbaa !29
  %t8 = getelementptr %"compiler/check:AssertAsk", ptr %t6, i32 0, i32 7
  %t9 = load { i64, ptr }, ptr %t8, !tbaa !27
  %t11 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAssertFalseMessage(ptr %v1, ptr %v2, { i64, ptr } %t9)
  store %"compiler/diagmsg:Msg" %t11, ptr %l7
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t12 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t12, ptr %rv
  br label %ret
bb4:
  %t13 = load ptr, ptr %l1, !tbaa !29
  %t15 = getelementptr %"compiler/check:AssertAsk", ptr %t13, i32 0, i32 5
  %t16 = load i64, ptr %t15, !tbaa !24
  %t18 = icmp sge i64 %t16, 0
  br i1 %t18, label %bb5, label %bb6
bb5:
  store %olang.scope zeroinitializer, ptr %s2
  %t21 = load ptr, ptr %l1, !tbaa !29
  %t23 = getelementptr %"compiler/check:AssertAsk", ptr %t21, i32 0, i32 5
  %t24 = load i64, ptr %t23, !tbaa !24
  %t27 = call { i32, { i64, ptr } } @compiler_2finterp_2ecompiler_2finterp_3aExec_2eText(ptr %v0, ptr %s2, ptr %a0, i64 %t24)
  %t28 = extractvalue { i32, { i64, ptr } } %t27, 1
  %t29 = extractvalue { i32, { i64, ptr } } %t27, 0
  store i32 %t29, ptr %l16
  %t30 = icmp ne i32 %t29, 0
  br i1 %t30, label %bb8, label %ok.31, !prof !99
ok.31:
  store { i64, ptr } %t28, ptr %l15
  br label %bb7
bb6:
  br label %bb13
bb7:
  %t32 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t32, ptr %l11, !tbaa !27
  br label %bb11
bb8:
  %t33 = load i32, ptr %l16, !tbaa !23
  %t34 = ashr i32 %t33, 16
  %t36 = icmp eq i32 %t34, 1
  store i1 %t36, ptr %l18, !tbaa !21
  br label %bb9
bb9:
  %t37 = load ptr, ptr %l1, !tbaa !29
  %t39 = call %"compiler/diagmsg:Msg" @compiler_2finterp_2ewrittenMessage(ptr %v1, ptr %v2, ptr %t37)
  store %"compiler/diagmsg:Msg" %t39, ptr %l20
  br label %bb10
bb10:
  call void @__olang_scope_close(ptr %s2)
  %t40 = load %"compiler/diagmsg:Msg", ptr %l20
  store %"compiler/diagmsg:Msg" %t40, ptr %rv
  br label %ret
bb11:
  %t41 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAssertFalseMessage(ptr %s2, ptr %v2, { i64, ptr } %t41)
  store %"compiler/diagmsg:Msg" %t44, ptr %l22
  br label %bb12
bb12:
  call void @__olang_scope_close(ptr %s2)
  %t45 = load %"compiler/diagmsg:Msg", ptr %l22
  store %"compiler/diagmsg:Msg" %t45, ptr %rv
  br label %ret
bb13:
  %t46 = load ptr, ptr %l1, !tbaa !29
  %t48 = call %"compiler/diagmsg:Msg" @compiler_2finterp_2ewrittenMessage(ptr %v1, ptr %v2, ptr %t46)
  store %"compiler/diagmsg:Msg" %t48, ptr %l24
  br label %bb14
bb14:
  %t49 = load %"compiler/diagmsg:Msg", ptr %l24
  store %"compiler/diagmsg:Msg" %t49, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local ptr @compiler_2finterp_2efindIf(ptr %v0, ptr %v1, { i64, ptr } %a0, i32 %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i32
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l19 = alloca { i64, ptr }
  %l22 = alloca ptr
  %l23 = alloca i1
  %l32 = alloca i1
  %l38 = alloca %"compiler/source:Span"
  %l47 = alloca ptr
  %rv = alloca ptr
  store { i64, ptr } %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp eq i64 %t3, 0
  br i1 %t5, label %bb1, label %bb2
bb1:
  store ptr null, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t8 = load { i64, ptr }, ptr %l0, !tbaa !27
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
  br label %bb34
bb6:
  br label %bb7
bb7:
  %t22 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t22, ptr %l19, !tbaa !27
  %t23 = load i64, ptr %l3, !tbaa !24
  %t25 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !27
  %t27 = getelementptr ptr, ptr %t26, i64 %t23
  %t28 = load ptr, ptr %t27, !tbaa !39
  store ptr %t28, ptr %l5, !tbaa !29
  %t30 = load ptr, ptr %l5, !tbaa !29
  store ptr %t30, ptr %l22, !tbaa !29
  store i1 false, ptr %l23, !tbaa !21
  %t31 = load ptr, ptr %l22, !tbaa !29
  %t32 = icmp ne ptr %t31, null
  br i1 %t32, label %bb8, label %bb9
bb8:
  %t34 = load ptr, ptr %l22, !tbaa !29
  %t35 = load i64, ptr %t34, !range !{i64 0, i64 11}
  %t37 = icmp eq i64 %t35, 7
  store i1 %t37, ptr %l23, !tbaa !21
  br label %bb9
bb9:
  %t38 = load i1, ptr %l23, !tbaa !21
  br i1 %t38, label %bb10, label %bb11
bb10:
  %t39 = load ptr, ptr %l5, !tbaa !29
  %t41 = getelementptr { i64, [8 x i64] }, ptr %t39, i32 0, i32 1
  %t42 = getelementptr { %"compiler/source:Span", ptr }, ptr %t41, i32 0, i32 1
  %t43 = load ptr, ptr %t42
  store ptr %t43, ptr %l6, !tbaa !29
  br label %bb12
bb11:
  br label %bb27
bb12:
  %t45 = load ptr, ptr %l6, !tbaa !29
  %t47 = getelementptr %"compiler/ast:TopIf", ptr %t45, i32 0, i32 0
  %t48 = load ptr, ptr %t47, !tbaa !29
  %t50 = icmp eq ptr %t48, null
  %t52 = xor i1 %t50, true
  br i1 %t52, label %bb13, label %bb14
bb13:
  %t54 = load ptr, ptr %l6, !tbaa !29
  %t56 = getelementptr %"compiler/ast:TopIf", ptr %t54, i32 0, i32 0
  %t57 = load ptr, ptr %t56, !tbaa !29
  %t59 = icmp eq ptr %t57, null
  br i1 %t59, label %bb15, label %bb16
bb14:
  store i1 false, ptr %l32, !tbaa !21
  br label %bb19
bb15:
  call void @__olang_check_failed(ptr @olang_loc_ef1298413c90a2dc_ba44d1693e670768)
  unreachable
bb16:
  br label %bb17
bb17:
  %t61 = load ptr, ptr %l6, !tbaa !29
  %t63 = getelementptr %"compiler/ast:TopIf", ptr %t61, i32 0, i32 0
  %t64 = load ptr, ptr %t63, !tbaa !29
  %t66 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v0, ptr %t64)
  store %"compiler/source:Span" %t66, ptr %l38
  br label %bb18
bb18:
  %t67 = getelementptr %"compiler/source:Span", ptr %l38, i32 0, i32 0
  %t68 = load i32, ptr %t67, !tbaa !23
  %t69 = load i32, ptr %l1, !tbaa !23
  %t72 = icmp eq i32 %t68, %t69
  store i1 %t72, ptr %l32, !tbaa !21
  br label %bb19
bb19:
  %t74 = load i1, ptr %l32, !tbaa !21
  br i1 %t74, label %bb20, label %bb21
bb20:
  %t75 = load ptr, ptr %l6, !tbaa !29
  store ptr %t75, ptr %rv
  br label %ret
bb21:
  br label %bb22
bb22:
  %t78 = load ptr, ptr %l6, !tbaa !29
  %t80 = load i32, ptr %l1, !tbaa !23
  %t83 = call ptr @compiler_2finterp_2efindInIf(ptr %v0, ptr %v1, ptr %t78, i32 %t80)
  store ptr %t83, ptr %l47
  br label %bb23
bb23:
  %t84 = load ptr, ptr %l47, !tbaa !29
  store ptr %t84, ptr %l7, !tbaa !29
  %t85 = load ptr, ptr %l7, !tbaa !29
  %t87 = icmp eq ptr %t85, null
  %t89 = xor i1 %t87, true
  br i1 %t89, label %bb24, label %bb25
bb24:
  %t91 = load ptr, ptr %l7, !tbaa !29
  store ptr %t91, ptr %rv
  br label %ret
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
  call void @__olang_check_failed(ptr @olang_loc_2f4ce1a9e181e1f2_bd4ae6421df971e)
  unreachable
bb32:
  br label %bb33
bb33:
  %t94 = load i64, ptr %l3, !tbaa !24
  %t96 = add i64 %t94, 1
  store i64 %t96, ptr %l3, !tbaa !24
  br label %bb4
bb34:
  store ptr null, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local ptr @compiler_2finterp_2efindInIf(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l19 = alloca ptr
  %l37 = alloca ptr
  %l46 = alloca ptr
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
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
  %t8 = getelementptr %"compiler/ast:TopIf", ptr %t6, i32 0, i32 1
  %t9 = load ptr, ptr %t8, !tbaa !29
  %t11 = icmp eq ptr %t9, null
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb4, label %bb5
bb4:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/ast:TopIf", ptr %t15, i32 0, i32 1
  %t18 = load ptr, ptr %t17, !tbaa !29
  %t20 = icmp eq ptr %t18, null
  br i1 %t20, label %bb6, label %bb7
bb5:
  br label %bb13
bb6:
  call void @__olang_check_failed(ptr @olang_loc_6beaad51a5cbbd4f_ba25a08250cd8123)
  unreachable
bb7:
  br label %bb8
bb8:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/ast:TopIf", ptr %t22, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t28 = getelementptr %"compiler/ast:TopBranch", ptr %t25, i32 0, i32 1
  %t29 = load { i64, ptr }, ptr %t28, !tbaa !27
  %t30 = load i32, ptr %l1, !tbaa !23
  %t33 = call ptr @compiler_2finterp_2efindIf(ptr %v0, ptr %v1, { i64, ptr } %t29, i32 %t30)
  store ptr %t33, ptr %l19
  br label %bb9
bb9:
  %t34 = load ptr, ptr %l19, !tbaa !29
  store ptr %t34, ptr %l2, !tbaa !29
  %t35 = load ptr, ptr %l2, !tbaa !29
  %t37 = icmp eq ptr %t35, null
  %t39 = xor i1 %t37, true
  br i1 %t39, label %bb10, label %bb11
bb10:
  %t41 = load ptr, ptr %l2, !tbaa !29
  store ptr %t41, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  br label %bb13
bb13:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/ast:TopIf", ptr %t44, i32 0, i32 3
  %t47 = load ptr, ptr %t46, !tbaa !29
  %t49 = icmp eq ptr %t47, null
  %t51 = xor i1 %t49, true
  br i1 %t51, label %bb14, label %bb15
bb14:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/ast:TopIf", ptr %t53, i32 0, i32 3
  %t56 = load ptr, ptr %t55, !tbaa !29
  %t58 = icmp eq ptr %t56, null
  br i1 %t58, label %bb16, label %bb17
bb15:
  br label %bb23
bb16:
  call void @__olang_check_failed(ptr @olang_loc_337e2febbb969070_fe2fc98a6d253614)
  unreachable
bb17:
  br label %bb18
bb18:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/ast:TopIf", ptr %t60, i32 0, i32 3
  %t63 = load ptr, ptr %t62, !tbaa !29
  %t66 = getelementptr %"compiler/ast:TopBranch", ptr %t63, i32 0, i32 1
  %t67 = load { i64, ptr }, ptr %t66, !tbaa !27
  %t68 = load i32, ptr %l1, !tbaa !23
  %t71 = call ptr @compiler_2finterp_2efindIf(ptr %v0, ptr %v1, { i64, ptr } %t67, i32 %t68)
  store ptr %t71, ptr %l37
  br label %bb19
bb19:
  %t72 = load ptr, ptr %l37, !tbaa !29
  store ptr %t72, ptr %l3, !tbaa !29
  %t73 = load ptr, ptr %l3, !tbaa !29
  %t75 = icmp eq ptr %t73, null
  %t77 = xor i1 %t75, true
  br i1 %t77, label %bb20, label %bb21
bb20:
  %t79 = load ptr, ptr %l3, !tbaa !29
  store ptr %t79, ptr %rv
  br label %ret
bb21:
  br label %bb22
bb22:
  br label %bb23
bb23:
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t84 = getelementptr %"compiler/ast:TopIf", ptr %t82, i32 0, i32 2
  %t85 = load ptr, ptr %t84, !tbaa !29
  %t86 = load i32, ptr %l1, !tbaa !23
  %t89 = call ptr @compiler_2finterp_2efindInIf(ptr %v0, ptr %v1, ptr %t85, i32 %t86)
  store ptr %t89, ptr %l46
  br label %bb24
bb24:
  %t90 = load ptr, ptr %l46, !tbaa !29
  store ptr %t90, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i32 @compiler_2finterp_2efirstAt(ptr %v0, ptr %a0, i64 %a1, %"compiler/source:Span" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l7 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l10 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t2 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t3 = load i32, ptr %t2, !tbaa !23
  %t5 = sext i32 %t3 to i64
  %t8 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s0, i64 %a1, i64 %t5)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t8, ptr %l7
  br label %bb1
bb1:
  %t9 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l7
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t9, ptr %l3
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l3
  %t14 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2ed2e5427629ba63a7110fc86d969058(ptr %v0, ptr %t10, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t11)
  store i1 %t14, ptr %l10
  br label %bb2
bb2:
  %t15 = load i1, ptr %l10, !tbaa !21
  br i1 %t15, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s0)
  store i32 65536, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t18 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l3
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1308596c866d4be061d9da9113abde88(ptr %v0, ptr %t17, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t18, i1 true)
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2finterp_2eglobalAborts(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2, i32 %a3, i64 %a4, %"compiler/source:Span" %a5) #0 {
entry:
  %l1 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca ptr
  %l7 = alloca i64
  %l11 = alloca ptr
  %l12 = alloca ptr
  %l21 = alloca { i64, [3 x i64] }
  %l23 = alloca { i64, ptr }
  %l24 = alloca %"compiler/diagmsg:Msg"
  %l25 = alloca i64
  %l30 = alloca i1
  %l35 = alloca i64
  %l42 = alloca i64
  %l44 = alloca ptr
  %l45 = alloca i64
  %l51 = alloca { i64, [3 x i64] }
  %l52 = alloca %"compiler/diagmsg:Msg"
  %s0 = alloca %olang.scope
  %t29 = alloca { i64, [3 x i64] }, align 8
  %t100 = alloca { i64, [3 x i64] }, align 8
  store ptr %a1, ptr %l1
  store i64 %a4, ptr %l4
  store %"compiler/source:Span" %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = getelementptr %"compiler/interp:Exec", ptr %a0, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t8 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t4, i64 %a2)
  store ptr %t8, ptr %l11
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l11, !tbaa !29
  store ptr %t9, ptr %l6, !tbaa !29
  %t10 = load ptr, ptr %l1, !tbaa !29
  store ptr %t10, ptr %l12, !tbaa !29
  %t11 = load ptr, ptr %l6, !tbaa !29
  %t13 = getelementptr %"compiler/typed:Body", ptr %t11, i32 0, i32 3
  %t14 = load i64, ptr %t13, !tbaa !24
  %t15 = load ptr, ptr %l6, !tbaa !29
  %t17 = getelementptr %"compiler/typed:Body", ptr %t15, i32 0, i32 4
  %t18 = getelementptr %"compiler/source:Span", ptr %t17, i32 0, i32 0
  %t19 = load i32, ptr %t18, !tbaa !23
  %t21 = sext i32 %t19 to i64
  %t22 = load ptr, ptr %l6, !tbaa !29
  %t24 = getelementptr %"compiler/typed:Body", ptr %t22, i32 0, i32 4
  %t25 = getelementptr %"compiler/source:Span", ptr %t24, i32 0, i32 1
  %t26 = load i32, ptr %t25, !tbaa !23
  %t28 = sext i32 %t26 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t29
  %t30 = getelementptr { i64, [3 x i64] }, ptr %t29, i32 0, i32 0
  store i64 3, ptr %t30
  %t32 = insertvalue { i64, i64, i64 } undef, i64 %t14, 0
  %t34 = insertvalue { i64, i64, i64 } %t32, i64 %t21, 1
  %t36 = insertvalue { i64, i64, i64 } %t34, i64 %t28, 2
  %t37 = getelementptr { i64, [3 x i64] }, ptr %t29, i32 0, i32 1
  store { i64, i64, i64 } %t36, ptr %t37
  %t38 = load { i64, [3 x i64] }, ptr %t29
  store { i64, [3 x i64] } %t38, ptr %l21
  %t41 = call { i64, ptr } @compiler_2finterp_2eAbortWhy(ptr %s0, i32 %a3)
  store { i64, ptr } %t41, ptr %l23
  br label %bb2
bb2:
  %t42 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t43 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eGlobalAborts(ptr %s0, ptr %v1, { i64, ptr } %t42)
  store %"compiler/diagmsg:Msg" %t43, ptr %l24
  br label %bb3
bb3:
  %t44 = load ptr, ptr %l12, !tbaa !29
  %t45 = load { i64, [3 x i64] }, ptr %l21
  %t46 = load %"compiler/diagmsg:Msg", ptr %l24
  %t47 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v1, ptr %v1, ptr %t44, { i64, [3 x i64] } %t45, %"compiler/diagmsg:Msg" %t46)
  store i64 %t47, ptr %l25
  br label %bb4
bb4:
  %t48 = load i64, ptr %l25, !tbaa !24
  store i64 %t48, ptr %l7, !tbaa !24
  %t49 = load i64, ptr %l4, !tbaa !24
  %t50 = load ptr, ptr %l6, !tbaa !29
  %t52 = getelementptr %"compiler/typed:Body", ptr %t50, i32 0, i32 3
  %t53 = load i64, ptr %t52, !tbaa !24
  %t56 = icmp ne i64 %t49, %t53
  br i1 %t56, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l30, !tbaa !21
  br label %bb9
bb6:
  %t58 = load ptr, ptr %l1, !tbaa !29
  %t59 = load i64, ptr %l4, !tbaa !24
  %t60 = getelementptr %"compiler/source:Span", ptr %l5, i32 0, i32 0
  %t61 = load i32, ptr %t60, !tbaa !23
  %t63 = sext i32 %t61 to i64
  %t67 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eLineAt(ptr %v1, ptr %t58, i64 %t59, i64 %t63)
  store i64 %t67, ptr %l35
  br label %bb7
bb7:
  %t68 = load ptr, ptr %l1, !tbaa !29
  %t69 = load ptr, ptr %l6, !tbaa !29
  %t71 = getelementptr %"compiler/typed:Body", ptr %t69, i32 0, i32 3
  %t72 = load i64, ptr %t71, !tbaa !24
  %t73 = load ptr, ptr %l6, !tbaa !29
  %t75 = getelementptr %"compiler/typed:Body", ptr %t73, i32 0, i32 4
  %t76 = getelementptr %"compiler/source:Span", ptr %t75, i32 0, i32 0
  %t77 = load i32, ptr %t76, !tbaa !23
  %t79 = sext i32 %t77 to i64
  %t83 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eLineAt(ptr %v1, ptr %t68, i64 %t72, i64 %t79)
  store i64 %t83, ptr %l42
  br label %bb8
bb8:
  %t84 = load i64, ptr %l35, !tbaa !24
  %t85 = load i64, ptr %l42, !tbaa !24
  %t86 = icmp ne i64 %t84, %t85
  store i1 %t86, ptr %l30, !tbaa !21
  br label %bb9
bb9:
  %t88 = load i1, ptr %l30, !tbaa !21
  br i1 %t88, label %bb10, label %bb11
bb10:
  %t89 = load ptr, ptr %l1, !tbaa !29
  store ptr %t89, ptr %l44, !tbaa !29
  %t90 = load i64, ptr %l7, !tbaa !24
  store i64 %t90, ptr %l45, !tbaa !24
  %t91 = load i64, ptr %l4, !tbaa !24
  %t92 = getelementptr %"compiler/source:Span", ptr %l5, i32 0, i32 0
  %t93 = load i32, ptr %t92, !tbaa !23
  %t95 = sext i32 %t93 to i64
  %t96 = getelementptr %"compiler/source:Span", ptr %l5, i32 0, i32 1
  %t97 = load i32, ptr %t96, !tbaa !23
  %t99 = sext i32 %t97 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t100
  %t101 = getelementptr { i64, [3 x i64] }, ptr %t100, i32 0, i32 0
  store i64 3, ptr %t101
  %t103 = insertvalue { i64, i64, i64 } undef, i64 %t91, 0
  %t105 = insertvalue { i64, i64, i64 } %t103, i64 %t95, 1
  %t107 = insertvalue { i64, i64, i64 } %t105, i64 %t99, 2
  %t108 = getelementptr { i64, [3 x i64] }, ptr %t100, i32 0, i32 1
  store { i64, i64, i64 } %t107, ptr %t108
  %t109 = load { i64, [3 x i64] }, ptr %t100
  store { i64, [3 x i64] } %t109, ptr %l51
  %t110 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteHere(ptr %v1)
  store %"compiler/diagmsg:Msg" %t110, ptr %l52
  br label %bb12
bb11:
  br label %bb14
bb12:
  %t111 = load ptr, ptr %l44, !tbaa !29
  %t112 = load i64, ptr %l45, !tbaa !24
  %t113 = load { i64, [3 x i64] }, ptr %l51
  %t114 = load %"compiler/diagmsg:Msg", ptr %l52
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v1, ptr %v1, ptr %t111, i64 %t112, { i64, [3 x i64] } %t113, %"compiler/diagmsg:Msg" %t114)
  br label %bb13
bb13:
  br label %bb14
bb14:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2finterp_2eglobalModule(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca { i64, i32 }
  %l4 = alloca { i64, i32 }
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call { i64, i32 } @compiler_2finterp_2eglobalName(ptr %v0, ptr %a0)
  store { i64, i32 } %t3, ptr %l4
  br label %bb1
bb1:
  %t4 = load { i64, i32 }, ptr %l4
  store { i64, i32 } %t4, ptr %l1
  %t5 = getelementptr { i64, i32 }, ptr %l1, i32 0, i32 0
  %t6 = load i64, ptr %t5, !tbaa !24
  store i64 %t6, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, i32 } @compiler_2finterp_2eglobalName(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca { i64, [2 x i64] }
  %l2 = alloca i64
  %l3 = alloca i32
  %rv = alloca { i64, i32 }
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/typed:Body", ptr %a0, i32 0, i32 1
  %t4 = load { i64, [2 x i64] }, ptr %t3
  store { i64, [2 x i64] } %t4, ptr %l1
  %t6 = load { i64, [2 x i64] }, ptr %l1
  %t8 = extractvalue { i64, [2 x i64] } %t6, 0
  %t9 = icmp eq i64 %t8, 6
  br i1 %t9, label %bb1, label %bb2
bb1:
  %t11 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t12 = getelementptr { i64, i32 }, ptr %t11, i32 0, i32 0
  %t13 = load i64, ptr %t12
  store i64 %t13, ptr %l2, !tbaa !24
  %t15 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t16 = getelementptr { i64, i32 }, ptr %t15, i32 0, i32 1
  %t17 = load i32, ptr %t16
  store i32 %t17, ptr %l3, !tbaa !23
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t19 = load i64, ptr %l2, !tbaa !24
  %t20 = load i32, ptr %l3, !tbaa !23
  %t22 = insertvalue { i64, i32 } undef, i64 %t19, 0
  %t24 = insertvalue { i64, i32 } %t22, i32 %t20, 1
  store { i64, i32 } %t24, ptr %rv
  br label %ret
bb4:
  br i1 true, label %bb5, label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb8
bb7:
  %t26 = insertvalue { i64, i32 } undef, i64 -1, 0
  %t27 = insertvalue { i64, i32 } %t26, i32 0, 1
  store { i64, i32 } %t27, ptr %rv
  br label %ret
bb8:
  call void @__olang_check_failed(ptr @olang_loc_c5607a0551bceea3_a83aa459e58f2847)
  unreachable
ret:
  %rr = load { i64, i32 }, ptr %rv
  ret { i64, i32 } %rr
}

define dso_local i32 @compiler_2finterp_2eglobalType(ptr %v0, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca i32
  %l8 = alloca i64
  %l9 = alloca i32
  %l23 = alloca { i64, ptr }
  %l26 = alloca ptr
  %l27 = alloca i1
  %l30 = alloca i1
  %l32 = alloca ptr
  %l33 = alloca i1
  %l48 = alloca i1
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Body", ptr %t1, i32 0, i32 11
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = icmp eq ptr %t4, null
  br i1 %t6, label %bb1, label %bb2
bb1:
  call void @__olang_check_failed(ptr @olang_loc_4efe4c4a78894057_5e75e4c074554d53)
  unreachable
bb2:
  br label %bb3
bb3:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/typed:Body", ptr %t8, i32 0, i32 11
  %t11 = load ptr, ptr %t10, !tbaa !29
  %t14 = getelementptr %"compiler/typed:Block", ptr %t11, i32 0, i32 1
  %t15 = load { i64, ptr }, ptr %t14, !tbaa !27
  store { i64, ptr } %t15, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t17 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t19 = extractvalue { i64, ptr } %t17, 0
  store i64 %t19, ptr %l5, !tbaa !24
  br label %bb4
bb4:
  %t21 = load i64, ptr %l4, !tbaa !24
  %t22 = load i64, ptr %l5, !tbaa !24
  %t25 = icmp slt i64 %t21, %t22
  %t27 = xor i1 %t25, true
  br i1 %t27, label %bb5, label %bb6
bb5:
  br label %bb31
bb6:
  br label %bb7
bb7:
  %t29 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t29, ptr %l23, !tbaa !27
  %t30 = load i64, ptr %l4, !tbaa !24
  %t32 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t33 = load ptr, ptr %t32, !tbaa !27
  %t34 = getelementptr ptr, ptr %t33, i64 %t30
  %t35 = load ptr, ptr %t34, !tbaa !39
  store ptr %t35, ptr %l6, !tbaa !29
  %t37 = load ptr, ptr %l6, !tbaa !29
  store ptr %t37, ptr %l26, !tbaa !29
  store i1 false, ptr %l27, !tbaa !21
  %t38 = load ptr, ptr %l26, !tbaa !29
  %t39 = icmp ne ptr %t38, null
  br i1 %t39, label %bb8, label %bb9
bb8:
  %t41 = load ptr, ptr %l26, !tbaa !29
  %t42 = load i64, ptr %t41, !range !{i64 0, i64 17}
  %t44 = icmp eq i64 %t42, 1
  store i1 %t44, ptr %l27, !tbaa !21
  br label %bb9
bb9:
  %t45 = load i1, ptr %l27, !tbaa !21
  br i1 %t45, label %bb10, label %bb11
bb10:
  %t46 = load ptr, ptr %l6, !tbaa !29
  %t48 = getelementptr { i64, [3 x i64] }, ptr %t46, i32 0, i32 1
  %t49 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t48, i32 0, i32 1
  %t50 = load ptr, ptr %t49
  store ptr %t50, ptr %l32, !tbaa !29
  store i1 false, ptr %l33, !tbaa !21
  %t51 = load ptr, ptr %l32, !tbaa !29
  %t52 = icmp ne ptr %t51, null
  br i1 %t52, label %bb12, label %bb13
bb11:
  store i1 false, ptr %l30, !tbaa !21
  br label %bb14
bb12:
  %t54 = load ptr, ptr %l32, !tbaa !29
  %t55 = load i64, ptr %t54, !range !{i64 0, i64 8}
  %t57 = icmp eq i64 %t55, 1
  store i1 %t57, ptr %l33, !tbaa !21
  br label %bb13
bb13:
  %t58 = load i1, ptr %l33, !tbaa !21
  store i1 %t58, ptr %l30, !tbaa !21
  br label %bb14
bb14:
  %t59 = load i1, ptr %l30, !tbaa !21
  br i1 %t59, label %bb15, label %bb16
bb15:
  %t60 = load ptr, ptr %l6, !tbaa !29
  %t62 = getelementptr { i64, [3 x i64] }, ptr %t60, i32 0, i32 1
  %t63 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t62, i32 0, i32 1
  %t64 = load ptr, ptr %t63
  %t66 = getelementptr { i64, [4 x i64] }, ptr %t64, i32 0, i32 1
  %t67 = getelementptr { %"compiler/source:Span", i32, i64, i32 }, ptr %t66, i32 0, i32 1
  %t68 = load i32, ptr %t67
  store i32 %t68, ptr %l7, !tbaa !23
  %t70 = load ptr, ptr %l6, !tbaa !29
  %t72 = getelementptr { i64, [3 x i64] }, ptr %t70, i32 0, i32 1
  %t73 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t72, i32 0, i32 1
  %t74 = load ptr, ptr %t73
  %t76 = getelementptr { i64, [4 x i64] }, ptr %t74, i32 0, i32 1
  %t77 = getelementptr { %"compiler/source:Span", i32, i64, i32 }, ptr %t76, i32 0, i32 2
  %t78 = load i64, ptr %t77
  store i64 %t78, ptr %l8, !tbaa !24
  %t80 = load ptr, ptr %l6, !tbaa !29
  %t82 = getelementptr { i64, [3 x i64] }, ptr %t80, i32 0, i32 1
  %t83 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t82, i32 0, i32 1
  %t84 = load ptr, ptr %t83
  %t86 = getelementptr { i64, [4 x i64] }, ptr %t84, i32 0, i32 1
  %t87 = getelementptr { %"compiler/source:Span", i32, i64, i32 }, ptr %t86, i32 0, i32 3
  %t88 = load i32, ptr %t87
  store i32 %t88, ptr %l9, !tbaa !23
  br label %bb17
bb16:
  br label %bb24
bb17:
  %t90 = load i64, ptr %l8, !tbaa !24
  %t94 = icmp eq i64 %t90, %a1
  br i1 %t94, label %bb18, label %bb19
bb18:
  %t96 = load i32, ptr %l9, !tbaa !23
  %t100 = icmp eq i32 %t96, %a2
  store i1 %t100, ptr %l48, !tbaa !21
  br label %bb20
bb19:
  store i1 false, ptr %l48, !tbaa !21
  br label %bb20
bb20:
  %t102 = load i1, ptr %l48, !tbaa !21
  br i1 %t102, label %bb21, label %bb22
bb21:
  %t103 = load i32, ptr %l7, !tbaa !23
  store i32 %t103, ptr %rv
  br label %ret
bb22:
  br label %bb23
bb23:
  br label %bb29
bb24:
  br i1 true, label %bb25, label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb29
bb28:
  call void @__olang_check_failed(ptr @olang_loc_1ec4d19c7606c42f_38a78c76cd6682ab)
  unreachable
bb29:
  br label %bb30
bb30:
  %t105 = load i64, ptr %l4, !tbaa !24
  %t107 = add i64 %t105, 1
  store i64 %t107, ptr %l4, !tbaa !24
  br label %bb4
bb31:
  %t109 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t109, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2finterp_2ehomesKnown(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, i64 %a3, { i64, ptr } %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l14 = alloca ptr
  %l15 = alloca i64
  %l16 = alloca %"compiler/eval:Blob"
  %l17 = alloca ptr
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l23 = alloca i64
  %l27 = alloca i64
  %l30 = alloca i64
  %l51 = alloca i64
  %l54 = alloca i1
  %l57 = alloca i1
  %l58 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l61 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l62 = alloca i32
  %l63 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l67 = alloca ptr
  %l68 = alloca i64
  %l72 = alloca { i64, ptr }
  %l81 = alloca i64
  %l83 = alloca i64
  %l88 = alloca %"compiler/eval:Blob"
  %l90 = alloca %"compiler/eval:Blob"
  %l92 = alloca i64
  %l94 = alloca i64
  %l99 = alloca i64
  %l102 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l105 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l106 = alloca i32
  %l107 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l110 = alloca i1
  %l114 = alloca ptr
  %l115 = alloca i64
  %s3 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %rv = alloca i32
  %t134 = alloca %"compiler/eval:Blob", align 8
  %t137 = alloca %"compiler/eval:Blob", align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Image", ptr %t1, i32 0, i32 0
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aBlob_3e_2eLen_3ccompiler_2feval_3aBlob_3e(ptr %v1, ptr %t3)
  store i64 %t5, ptr %l23
  br label %bb1
bb1:
  %t6 = load i64, ptr %l23, !tbaa !24
  store i64 %t6, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t7 = load i64, ptr %l7, !tbaa !24
  %t8 = load i64, ptr %l6, !tbaa !24
  %t11 = icmp sgt i64 %t7, %t8
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load i64, ptr %l8, !tbaa !24
  %t15 = icmp sgt i64 %t13, 0
  br i1 %t15, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l27, !tbaa !24
  br label %bb7
bb4:
  %t17 = load i64, ptr %l7, !tbaa !24
  %t18 = load i64, ptr %l6, !tbaa !24
  %t21 = sub i64 %t17, %t18
  %t22 = load i64, ptr %l8, !tbaa !24
  %t25 = add i64 %t21, %t22
  %t27 = sub i64 %t25, 1
  %t28 = load i64, ptr %l8, !tbaa !24
  %t31 = sdiv i64 %t27, %t28
  store i64 %t31, ptr %l30, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l30, !tbaa !24
  br label %bb6
bb6:
  %t33 = load i64, ptr %l30, !tbaa !24
  store i64 %t33, ptr %l27, !tbaa !24
  br label %bb7
bb7:
  %t34 = load i64, ptr %l27, !tbaa !24
  store i64 %t34, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb8
bb8:
  %t35 = load i64, ptr %l10, !tbaa !24
  %t36 = load i64, ptr %l9, !tbaa !24
  %t39 = icmp slt i64 %t35, %t36
  %t41 = xor i1 %t39, true
  br i1 %t41, label %bb9, label %bb10
bb9:
  br label %bb31
bb10:
  br label %bb11
bb11:
  %t43 = load i64, ptr %l6, !tbaa !24
  %t44 = load i64, ptr %l10, !tbaa !24
  %t45 = load i64, ptr %l8, !tbaa !24
  %t48 = mul i64 %t44, %t45
  %t51 = add i64 %t43, %t48
  store i64 %t51, ptr %l11, !tbaa !24
  %t53 = load ptr, ptr %l1, !tbaa !29
  %t55 = getelementptr %"compiler/eval:Image", ptr %t53, i32 0, i32 1
  %t56 = load i64, ptr %l11, !tbaa !24
  %t59 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t55, i64 %t56)
  store i64 %t59, ptr %l51
  br label %bb12
bb12:
  %t60 = load i64, ptr %l51, !tbaa !24
  store i64 %t60, ptr %l12, !tbaa !24
  %t61 = load i64, ptr %l11, !tbaa !24
  %t63 = icmp sgt i64 %t61, 0
  br i1 %t63, label %bb13, label %bb14
bb13:
  %t65 = load ptr, ptr %l2, !tbaa !29
  %t66 = load i64, ptr %l12, !tbaa !24
  %t69 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fpair_3aPair_3cI64_2c_20_H3ccda5e77fabf86fda89ecfc77eff03d(ptr %v2, ptr %t65, i64 %t66)
  store i1 %t69, ptr %l57
  br label %bb15
bb14:
  store i1 false, ptr %l54, !tbaa !21
  br label %bb16
bb15:
  %t70 = load i1, ptr %l57, !tbaa !21
  store i1 %t70, ptr %l54, !tbaa !21
  br label %bb16
bb16:
  %t71 = load i1, ptr %l54, !tbaa !21
  br i1 %t71, label %bb17, label %bb18
bb17:
  store %olang.scope zeroinitializer, ptr %s3
  %t72 = load ptr, ptr %l2, !tbaa !29
  %t73 = load i64, ptr %l12, !tbaa !24
  %t76 = call { i32, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fpair_3aPair_3cI64_2c_20_H1ffd47e550cf52833705251cc4e5cd8d(ptr %v2, ptr %t72, i64 %t73)
  %t77 = extractvalue { i32, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" } %t76, 1
  %t78 = extractvalue { i32, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" } %t76, 0
  store i32 %t78, ptr %l62
  %t79 = icmp ne i32 %t78, 0
  br i1 %t79, label %bb20, label %ok.80, !prof !99
ok.80:
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t77, ptr %l61
  br label %bb19
bb18:
  br label %bb29
bb19:
  %t81 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l61
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t81, ptr %l58
  br label %bb23
bb20:
  br label %bb21
bb21:
  %t82 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s3, i64 -1, i64 -1)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t82, ptr %l63
  br label %bb22
bb22:
  %t83 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l63
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t83, ptr %l58
  br label %bb23
bb23:
  %t84 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l58
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t84, ptr %l13
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = getelementptr %"compiler/interp:Exec", ptr %t85, i32 0, i32 1
  %t88 = load ptr, ptr %t87, !tbaa !29
  %t89 = getelementptr %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l13, i32 0, i32 0
  %t90 = load i64, ptr %t89, !tbaa !24
  %t93 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t88, i64 %t90)
  store ptr %t93, ptr %l67
  br label %bb24
bb24:
  %t94 = load ptr, ptr %l67, !tbaa !29
  %t95 = call i64 @compiler_2finterp_2eglobalModule(ptr %v0, ptr %t94)
  store i64 %t95, ptr %l68
  br label %bb25
bb25:
  %t96 = load i64, ptr %l3, !tbaa !24
  %t97 = load i64, ptr %l68, !tbaa !24
  %t99 = icmp ne i64 %t97, %t96
  br i1 %t99, label %bb26, label %bb27
bb26:
  call void @__olang_scope_close(ptr %s3)
  store i32 65536, ptr %rv
  br label %ret
bb27:
  br label %bb28
bb28:
  call void @__olang_scope_close(ptr %s3)
  br label %bb30
bb29:
  store { i64, ptr } %a4, ptr %l72, !tbaa !27
  %t103 = load i64, ptr %l11, !tbaa !24
  %t104 = load i64, ptr %l5, !tbaa !24
  %t107 = getelementptr { i64, ptr }, ptr %l72, i32 0, i32 1
  %t108 = load ptr, ptr %t107, !tbaa !27
  %t109 = getelementptr i64, ptr %t108, i64 %t103
  store i64 %t104, ptr %t109, !tbaa !34
  %t110 = load i64, ptr %l5, !tbaa !24
  %t112 = add i64 %t110, 1
  store i64 %t112, ptr %l5, !tbaa !24
  br label %bb30
bb30:
  %t114 = load i64, ptr %l10, !tbaa !24
  %t116 = add i64 %t114, 1
  store i64 %t116, ptr %l10, !tbaa !24
  br label %bb8
bb31:
  %t118 = load ptr, ptr %l1, !tbaa !29
  %t120 = getelementptr %"compiler/eval:Image", ptr %t118, i32 0, i32 0
  store ptr %t120, ptr %l14, !tbaa !29
  store i64 0, ptr %l15, !tbaa !24
  br label %bb32
bb32:
  store %olang.scope zeroinitializer, ptr %s7
  %t122 = load i64, ptr %l15, !tbaa !24
  store i64 %t122, ptr %l81, !tbaa !24
  %t123 = load ptr, ptr %l14, !tbaa !29
  %t125 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aBlob_3e_2eLen_3ccompiler_2feval_3aBlob_3e(ptr %v1, ptr %t123)
  store i64 %t125, ptr %l83
  br label %bb33
bb33:
  %t126 = load i64, ptr %l81, !tbaa !24
  %t127 = load i64, ptr %l83, !tbaa !24
  %t128 = icmp slt i64 %t126, %t127
  %t130 = xor i1 %t128, true
  br i1 %t130, label %bb34, label %bb35
bb34:
  call void @__olang_scope_close(ptr %s7)
  br label %bb64
bb35:
  br label %bb36
bb36:
  %t132 = load ptr, ptr %l14, !tbaa !29
  %t133 = load i64, ptr %l15, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aBlob_3e_2eAt_3ccompiler_2feval_3aBlob_3e(ptr %t134, ptr %v1, ptr %v1, ptr %t132, i64 %t133)
  call void @llvm.memmove.p0.p0.i64(ptr %l88, ptr %t134, i64 272, i1 false)
  br label %bb37
bb37:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2feval_3aBlob(ptr %t137, ptr %s7, ptr %l88)
  call void @llvm.memmove.p0.p0.i64(ptr %l90, ptr %t137, i64 272, i1 false)
  br label %bb38
bb38:
  call void @llvm.memmove.p0.p0.i64(ptr %l16, ptr %l90, i64 272, i1 false)
  %t139 = getelementptr %"compiler/eval:Blob", ptr %l16, i32 0, i32 6
  store ptr %t139, ptr %l17, !tbaa !29
  store i64 0, ptr %l18, !tbaa !24
  br label %bb39
bb39:
  store %olang.scope zeroinitializer, ptr %s9
  %t141 = load i64, ptr %l18, !tbaa !24
  store i64 %t141, ptr %l92, !tbaa !24
  %t142 = load ptr, ptr %l17, !tbaa !29
  %t144 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s7, ptr %t142)
  store i64 %t144, ptr %l94
  br label %bb40
bb40:
  %t145 = load i64, ptr %l92, !tbaa !24
  %t146 = load i64, ptr %l94, !tbaa !24
  %t147 = icmp slt i64 %t145, %t146
  %t149 = xor i1 %t147, true
  br i1 %t149, label %bb41, label %bb42
bb41:
  call void @__olang_scope_close(ptr %s9)
  br label %bb62
bb42:
  br label %bb43
bb43:
  %t151 = load ptr, ptr %l17, !tbaa !29
  %t152 = load i64, ptr %l18, !tbaa !24
  %t155 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s7, ptr %t151, i64 %t152)
  store i64 %t155, ptr %l99
  br label %bb44
bb44:
  %t156 = load i64, ptr %l99, !tbaa !24
  store i64 %t156, ptr %l19, !tbaa !24
  %t157 = load i64, ptr %l19, !tbaa !24
  %t159 = icmp slt i64 %t157, 0
  br i1 %t159, label %bb45, label %bb46
bb45:
  call void @__olang_scope_close(ptr %s9)
  br label %bb61
bb46:
  br label %bb47
bb47:
  %t161 = load ptr, ptr %l2, !tbaa !29
  %t162 = load i64, ptr %l19, !tbaa !24
  %t165 = call { i32, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fpair_3aPair_3cI64_2c_20_H1ffd47e550cf52833705251cc4e5cd8d(ptr %v2, ptr %t161, i64 %t162)
  %t166 = extractvalue { i32, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" } %t165, 1
  %t167 = extractvalue { i32, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" } %t165, 0
  store i32 %t167, ptr %l106
  %t168 = icmp ne i32 %t167, 0
  br i1 %t168, label %bb49, label %ok.169, !prof !99
ok.169:
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t166, ptr %l105
  br label %bb48
bb48:
  %t170 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l105
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t170, ptr %l102
  br label %bb52
bb49:
  br label %bb50
bb50:
  %t171 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s9, i64 -1, i64 -1)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t171, ptr %l107
  br label %bb51
bb51:
  %t172 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l107
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t172, ptr %l102
  br label %bb52
bb52:
  %t173 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l102
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t173, ptr %l20
  %t174 = getelementptr %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l20, i32 0, i32 0
  %t175 = load i64, ptr %t174, !tbaa !24
  %t177 = icmp slt i64 %t175, 0
  br i1 %t177, label %bb53, label %bb54
bb53:
  store i1 true, ptr %l110, !tbaa !21
  br label %bb57
bb54:
  %t179 = load ptr, ptr %l0, !tbaa !29
  %t181 = getelementptr %"compiler/interp:Exec", ptr %t179, i32 0, i32 1
  %t182 = load ptr, ptr %t181, !tbaa !29
  %t183 = getelementptr %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l20, i32 0, i32 0
  %t184 = load i64, ptr %t183, !tbaa !24
  %t187 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t182, i64 %t184)
  store ptr %t187, ptr %l114
  br label %bb55
bb55:
  %t188 = load ptr, ptr %l114, !tbaa !29
  %t189 = call i64 @compiler_2finterp_2eglobalModule(ptr %v0, ptr %t188)
  store i64 %t189, ptr %l115
  br label %bb56
bb56:
  %t190 = load i64, ptr %l3, !tbaa !24
  %t191 = load i64, ptr %l115, !tbaa !24
  %t193 = icmp ne i64 %t191, %t190
  store i1 %t193, ptr %l110, !tbaa !21
  br label %bb57
bb57:
  %t195 = load i1, ptr %l110, !tbaa !21
  br i1 %t195, label %bb58, label %bb59
bb58:
  call void @__olang_scope_close(ptr %s9)
  call void @__olang_scope_close(ptr %s7)
  store i32 65536, ptr %rv
  br label %ret
bb59:
  br label %bb60
bb60:
  call void @__olang_scope_close(ptr %s9)
  br label %bb61
bb61:
  %t197 = load i64, ptr %l18, !tbaa !24
  %t199 = add i64 %t197, 1
  store i64 %t199, ptr %l18, !tbaa !24
  br label %bb39
bb62:
  call void @__olang_scope_close(ptr %s7)
  br label %bb63
bb63:
  %t201 = load i64, ptr %l15, !tbaa !24
  %t203 = add i64 %t201, 1
  store i64 %t203, ptr %l15, !tbaa !24
  br label %bb32
bb64:
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2finterp_2ejudgeViews(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l10 = alloca ptr
  %l12 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l14 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l15 = alloca %"compiler/views:Viewer"
  %l17 = alloca %"compiler/views:Viewer"
  %s0 = alloca %olang.scope
  %t10 = alloca { ptr, ptr }, align 8
  %t30 = alloca %"compiler/views:Viewer", align 8
  %t33 = alloca %"compiler/views:Viewer", align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = load ptr, ptr %l1, !tbaa !29
  %t8 = getelementptr { ptr, ptr }, ptr null, i32 1
  %t9 = ptrtoint ptr %t8 to i64
  %t11 = getelementptr { ptr, ptr }, ptr %t10, i32 0, i32 0
  store ptr %t4, ptr %t11, !tbaa !28
  call void @__olang_scope_escape(ptr %v0)
  %t13 = getelementptr { ptr, ptr }, ptr %t10, i32 0, i32 1
  store ptr %v0, ptr %t13, !tbaa !28
  %t14 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_118, 0
  %t15 = insertvalue { ptr, ptr } %t14, ptr %t10, 1
  %t18 = extractvalue { ptr, ptr } %t15, 0
  %t19 = extractvalue { ptr, ptr } %t15, 1
  call void @compiler_2fviews_2ecompiler_2fviews_3aKept_2eTakeHolding(ptr %v1, ptr %s0, ptr %t6, ptr %t18, ptr %t19)
  br label %bb1
bb1:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/check:Checker", ptr %t20, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !29
  store ptr %t23, ptr %l10, !tbaa !29
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/check:Checker", ptr %t24, i32 0, i32 18
  %t27 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t26
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t27, ptr %l12
  %t29 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e(ptr %v0, ptr %l12)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t29, ptr %l14
  br label %bb2
bb2:
  %t31 = load ptr, ptr %l10, !tbaa !29
  %t32 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l14
  call void @compiler_2fviews_3aViewer_2ector(ptr %t30, ptr %v0, ptr %v0, ptr %v0, ptr %t31, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t32)
  call void @llvm.memmove.p0.p0.i64(ptr %l15, ptr %t30, i64 1144, i1 false)
  br label %bb3
bb3:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fviews_3aViewer(ptr %t33, ptr %v0, ptr %l15)
  call void @llvm.memmove.p0.p0.i64(ptr %l17, ptr %t33, i64 1144, i1 false)
  br label %bb4
bb4:
  %t35 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 1144, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t35, ptr %l17, i64 1144, i1 false)
  %t38 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eRunKept(ptr %v0, ptr %v1, ptr %t35, ptr %t38)
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2finterp_2ekeptBlob(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, ptr %a1, ptr %a2, { i64, ptr } %a3, ptr %a4) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %lp5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l14 = alloca { i64, i32 }
  %l15 = alloca i64
  %l16 = alloca i32
  %l17 = alloca %"compiler/eval:Blob"
  %l18 = alloca i64
  %l21 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l23 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l25 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l33 = alloca i64
  %l37 = alloca i64
  %l40 = alloca i64
  %l58 = alloca ptr
  %l62 = alloca i64
  %l63 = alloca ptr
  %l67 = alloca i64
  %l71 = alloca i64
  %l73 = alloca i64
  %l77 = alloca i64
  %l79 = alloca ptr
  %l83 = alloca i64
  %l84 = alloca i64
  %l88 = alloca i64
  %l90 = alloca i1
  %l91 = alloca { i64, ptr }
  %l95 = alloca i64
  %l98 = alloca ptr
  %l99 = alloca { i64, ptr }
  %l103 = alloca i64
  %l106 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l109 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l110 = alloca i32
  %l111 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l115 = alloca ptr
  %l116 = alloca { i64, i32 }
  %l130 = alloca %"compiler/eval:Blob"
  %s2 = alloca %olang.scope
  %t1 = alloca %"compiler/eval:Blob", align 8
  store ptr %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  call void @compiler_2feval_3aBlob_2ector(ptr %t1, ptr %v5)
  call void @llvm.memmove.p0.p0.i64(ptr %l17, ptr %t1, i64 272, i1 false)
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v5, i64 272, i64 8)
  store ptr %t2, ptr %lp5
  %t3 = load ptr, ptr %lp5
  call void @llvm.memmove.p0.p0.i64(ptr %t3, ptr %l17, i64 272, i1 false)
  %t4 = ptrtoint ptr %v5 to i64
  store i64 %t4, ptr %l18, !tbaa !24
  %t5 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aBlob_2e0
  br i1 %t5, label %bb2, label %bb3
bb2:
  %t7 = call ptr @__olang_region_make(ptr %v5)
  %t8 = ptrtoint ptr %t7 to i64
  store i64 %t8, ptr %l18, !tbaa !24
  br label %bb3
bb3:
  %t9 = load ptr, ptr %l2, !tbaa !29
  %t11 = getelementptr %"compiler/eval:Blob", ptr %t9, i32 0, i32 0
  %t12 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t11
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t12, ptr %l21
  %t13 = load i64, ptr %l18
  %t14 = inttoptr i64 %t13 to ptr
  %t16 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cU8_3e(ptr %t14, ptr %l21)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t16, ptr %l23
  br label %bb4
bb4:
  %t17 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aBlob_2e0
  br i1 %t17, label %bb5, label %bb6
bb5:
  %t19 = load i64, ptr %l18
  %t20 = inttoptr i64 %t19 to ptr
  %t21 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l23, i32 0, i32 0
  %t22 = load { i64, ptr }, ptr %t21
  %t23 = extractvalue { i64, ptr } %t22, 1
  %t24 = call ptr @__olang_region_or(ptr %t23, ptr null)
  %t25 = call ptr @__olang_region_home(ptr %t24)
  %t26 = icmp ne ptr %t25, null
  %t27 = select i1 %t26, ptr %t25, ptr null
  %t28 = icmp eq ptr %t27, %t20
  call void @__olang_region_settle(ptr %t20, i1 %t28)
  br label %bb6
bb6:
  %t29 = load ptr, ptr %lp5
  %t30 = getelementptr %"compiler/eval:Blob", ptr %t29, i32 0, i32 0
  %t31 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t30
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t31, ptr %l25
  %t32 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l23
  %t33 = load ptr, ptr %lp5
  %t34 = getelementptr %"compiler/eval:Blob", ptr %t33, i32 0, i32 0
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t32, ptr %t34
  %t35 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aBlob_2e0
  br i1 %t35, label %bb7, label %bb8
bb7:
  %t37 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l25, i32 0, i32 0
  %t38 = load { i64, ptr }, ptr %t37
  %t39 = extractvalue { i64, ptr } %t38, 1
  %t40 = call ptr @__olang_region_or(ptr %t39, ptr null)
  %t41 = call ptr @__olang_region_home(ptr %t40)
  %t42 = icmp ne ptr %t41, null
  %t43 = select i1 %t42, ptr %t41, ptr null
  call void @__olang_region_drop(ptr %t43)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %l25
  br label %bb8
bb8:
  %t44 = load ptr, ptr %l2, !tbaa !29
  %t46 = getelementptr %"compiler/eval:Blob", ptr %t44, i32 0, i32 1
  %t47 = load i64, ptr %t46, !tbaa !24
  %t49 = load ptr, ptr %lp5
  %t50 = getelementptr %"compiler/eval:Blob", ptr %t49, i32 0, i32 1
  store i64 %t47, ptr %t50, !tbaa !24
  %t51 = load ptr, ptr %l2, !tbaa !29
  %t53 = getelementptr %"compiler/eval:Blob", ptr %t51, i32 0, i32 2
  %t54 = load i1, ptr %t53, !tbaa !21
  %t56 = load ptr, ptr %lp5
  %t57 = getelementptr %"compiler/eval:Blob", ptr %t56, i32 0, i32 2
  store i1 %t54, ptr %t57, !tbaa !21
  store i64 0, ptr %l6, !tbaa !24
  %t58 = load ptr, ptr %l2, !tbaa !29
  %t60 = getelementptr %"compiler/eval:Blob", ptr %t58, i32 0, i32 3
  %t62 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v2, ptr %t60)
  store i64 %t62, ptr %l33
  br label %bb9
bb9:
  %t63 = load i64, ptr %l33, !tbaa !24
  store i64 %t63, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t64 = load i64, ptr %l7, !tbaa !24
  %t65 = load i64, ptr %l6, !tbaa !24
  %t68 = icmp sgt i64 %t64, %t65
  br i1 %t68, label %bb10, label %bb11
bb10:
  %t70 = load i64, ptr %l8, !tbaa !24
  %t72 = icmp sgt i64 %t70, 0
  br i1 %t72, label %bb12, label %bb13
bb11:
  store i64 0, ptr %l37, !tbaa !24
  br label %bb15
bb12:
  %t74 = load i64, ptr %l7, !tbaa !24
  %t75 = load i64, ptr %l6, !tbaa !24
  %t78 = sub i64 %t74, %t75
  %t79 = load i64, ptr %l8, !tbaa !24
  %t82 = add i64 %t78, %t79
  %t84 = sub i64 %t82, 1
  %t85 = load i64, ptr %l8, !tbaa !24
  %t88 = sdiv i64 %t84, %t85
  store i64 %t88, ptr %l40, !tbaa !24
  br label %bb14
bb13:
  store i64 0, ptr %l40, !tbaa !24
  br label %bb14
bb14:
  %t90 = load i64, ptr %l40, !tbaa !24
  store i64 %t90, ptr %l37, !tbaa !24
  br label %bb15
bb15:
  %t91 = load i64, ptr %l37, !tbaa !24
  store i64 %t91, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb16
bb16:
  store %olang.scope zeroinitializer, ptr %s2
  %t92 = load i64, ptr %l10, !tbaa !24
  %t93 = load i64, ptr %l9, !tbaa !24
  %t96 = icmp slt i64 %t92, %t93
  %t98 = xor i1 %t96, true
  br i1 %t98, label %bb17, label %bb18
bb17:
  call void @__olang_scope_close(ptr %s2)
  br label %bb55
bb18:
  br label %bb19
bb19:
  %t100 = load i64, ptr %l6, !tbaa !24
  %t101 = load i64, ptr %l10, !tbaa !24
  %t102 = load i64, ptr %l8, !tbaa !24
  %t105 = mul i64 %t101, %t102
  %t108 = add i64 %t100, %t105
  store i64 %t108, ptr %l11, !tbaa !24
  %t110 = load ptr, ptr %lp5
  %t111 = getelementptr %"compiler/eval:Blob", ptr %t110, i32 0, i32 3
  store ptr %t111, ptr %l58, !tbaa !29
  %t112 = load ptr, ptr %l2, !tbaa !29
  %t114 = getelementptr %"compiler/eval:Blob", ptr %t112, i32 0, i32 3
  %t115 = load i64, ptr %l11, !tbaa !24
  %t118 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v2, ptr %t114, i64 %t115)
  store i64 %t118, ptr %l62
  br label %bb20
bb20:
  %t119 = load ptr, ptr %l58, !tbaa !29
  %t120 = load i64, ptr %l62, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v5, ptr %t119, i64 %t120)
  br label %bb21
bb21:
  %t121 = load ptr, ptr %lp5
  %t122 = getelementptr %"compiler/eval:Blob", ptr %t121, i32 0, i32 5
  store ptr %t122, ptr %l63, !tbaa !29
  %t123 = load ptr, ptr %l2, !tbaa !29
  %t125 = getelementptr %"compiler/eval:Blob", ptr %t123, i32 0, i32 5
  %t126 = load i64, ptr %l11, !tbaa !24
  %t129 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v2, ptr %t125, i64 %t126)
  store i64 %t129, ptr %l67
  br label %bb22
bb22:
  %t130 = load ptr, ptr %l63, !tbaa !29
  %t131 = load i64, ptr %l67, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v5, ptr %t130, i64 %t131)
  br label %bb23
bb23:
  %t132 = load ptr, ptr %l2, !tbaa !29
  %t134 = getelementptr %"compiler/eval:Blob", ptr %t132, i32 0, i32 4
  %t135 = load i64, ptr %l11, !tbaa !24
  %t138 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v2, ptr %t134, i64 %t135)
  store i64 %t138, ptr %l71
  br label %bb24
bb24:
  %t139 = load i64, ptr %l71, !tbaa !24
  %t140 = icmp slt i64 %t139, 0
  br i1 %t140, label %bb25, label %bb26
bb25:
  %t142 = load ptr, ptr %l2, !tbaa !29
  %t144 = getelementptr %"compiler/eval:Blob", ptr %t142, i32 0, i32 6
  %t145 = load i64, ptr %l11, !tbaa !24
  %t148 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v2, ptr %t144, i64 %t145)
  store i64 %t148, ptr %l77
  br label %bb27
bb26:
  %t151 = getelementptr %"compiler/eval:Image", ptr %a1, i32 0, i32 1
  store ptr %t151, ptr %l79, !tbaa !29
  %t152 = load ptr, ptr %l2, !tbaa !29
  %t154 = getelementptr %"compiler/eval:Blob", ptr %t152, i32 0, i32 4
  %t155 = load i64, ptr %l11, !tbaa !24
  %t158 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v2, ptr %t154, i64 %t155)
  store i64 %t158, ptr %l83
  br label %bb28
bb27:
  %t159 = load i64, ptr %l77, !tbaa !24
  store i64 %t159, ptr %l73, !tbaa !24
  br label %bb30
bb28:
  %t160 = load ptr, ptr %l79, !tbaa !29
  %t161 = load i64, ptr %l83, !tbaa !24
  %t162 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t160, i64 %t161)
  store i64 %t162, ptr %l84
  br label %bb29
bb29:
  %t163 = load i64, ptr %l84, !tbaa !24
  store i64 %t163, ptr %l73, !tbaa !24
  br label %bb30
bb30:
  %t164 = load i64, ptr %l73, !tbaa !24
  store i64 %t164, ptr %l12, !tbaa !24
  %t165 = load ptr, ptr %l2, !tbaa !29
  %t167 = getelementptr %"compiler/eval:Blob", ptr %t165, i32 0, i32 4
  %t168 = load i64, ptr %l11, !tbaa !24
  %t171 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v2, ptr %t167, i64 %t168)
  store i64 %t171, ptr %l88
  br label %bb31
bb31:
  %t172 = load i64, ptr %l88, !tbaa !24
  %t173 = icmp sge i64 %t172, 0
  br i1 %t173, label %bb32, label %bb33
bb32:
  %t175 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t175, ptr %l91, !tbaa !27
  %t176 = load ptr, ptr %l2, !tbaa !29
  %t178 = getelementptr %"compiler/eval:Blob", ptr %t176, i32 0, i32 4
  %t179 = load i64, ptr %l11, !tbaa !24
  %t182 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v2, ptr %t178, i64 %t179)
  store i64 %t182, ptr %l95
  br label %bb34
bb33:
  store i1 false, ptr %l90, !tbaa !21
  br label %bb35
bb34:
  %t183 = load i64, ptr %l95, !tbaa !24
  %t184 = getelementptr { i64, ptr }, ptr %l91, i32 0, i32 1
  %t185 = load ptr, ptr %t184, !tbaa !27
  %t186 = getelementptr i64, ptr %t185, i64 %t183
  %t187 = load i64, ptr %t186, !tbaa !34
  %t189 = icmp sge i64 %t187, 0
  store i1 %t189, ptr %l90, !tbaa !21
  br label %bb35
bb35:
  %t191 = load i1, ptr %l90, !tbaa !21
  br i1 %t191, label %bb36, label %bb37
bb36:
  %t192 = load ptr, ptr %lp5
  %t193 = getelementptr %"compiler/eval:Blob", ptr %t192, i32 0, i32 4
  store ptr %t193, ptr %l98, !tbaa !29
  %t194 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t194, ptr %l99, !tbaa !27
  %t195 = load ptr, ptr %l2, !tbaa !29
  %t197 = getelementptr %"compiler/eval:Blob", ptr %t195, i32 0, i32 4
  %t198 = load i64, ptr %l11, !tbaa !24
  %t201 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v2, ptr %t197, i64 %t198)
  store i64 %t201, ptr %l103
  br label %bb38
bb37:
  br label %bb41
bb38:
  %t202 = load i64, ptr %l103, !tbaa !24
  %t203 = getelementptr { i64, ptr }, ptr %l99, i32 0, i32 1
  %t204 = load ptr, ptr %t203, !tbaa !27
  %t205 = getelementptr i64, ptr %t204, i64 %t202
  %t206 = load i64, ptr %t205, !tbaa !34
  %t207 = load ptr, ptr %l98, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v5, ptr %t207, i64 %t206)
  br label %bb39
bb39:
  %t209 = load ptr, ptr %lp5
  %t210 = getelementptr %"compiler/eval:Blob", ptr %t209, i32 0, i32 6
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v5, ptr %t210, i64 -1)
  br label %bb40
bb40:
  call void @__olang_scope_close(ptr %s2)
  br label %bb54
bb41:
  %t213 = load i64, ptr %l12, !tbaa !24
  %t216 = call { i32, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fpair_3aPair_3cI64_2c_20_H1ffd47e550cf52833705251cc4e5cd8d(ptr %v4, ptr %a4, i64 %t213)
  %t217 = extractvalue { i32, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" } %t216, 1
  %t218 = extractvalue { i32, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" } %t216, 0
  store i32 %t218, ptr %l110
  %t219 = icmp ne i32 %t218, 0
  br i1 %t219, label %bb43, label %ok.220, !prof !99
ok.220:
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t217, ptr %l109
  br label %bb42
bb42:
  %t221 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l109
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t221, ptr %l106
  br label %bb46
bb43:
  br label %bb44
bb44:
  %t222 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s2, i64 -1, i64 -1)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t222, ptr %l111
  br label %bb45
bb45:
  %t223 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l111
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t223, ptr %l106
  br label %bb46
bb46:
  %t224 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l106
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t224, ptr %l13
  %t227 = getelementptr %"compiler/interp:Exec", ptr %a0, i32 0, i32 1
  %t228 = load ptr, ptr %t227, !tbaa !29
  %t229 = getelementptr %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l13, i32 0, i32 0
  %t230 = load i64, ptr %t229, !tbaa !24
  %t233 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t228, i64 %t230)
  store ptr %t233, ptr %l115
  br label %bb47
bb47:
  %t234 = load ptr, ptr %l115, !tbaa !29
  %t235 = call { i64, i32 } @compiler_2finterp_2eglobalName(ptr %v0, ptr %t234)
  store { i64, i32 } %t235, ptr %l116
  br label %bb48
bb48:
  %t236 = load { i64, i32 }, ptr %l116
  store { i64, i32 } %t236, ptr %l14
  %t237 = getelementptr { i64, i32 }, ptr %l14, i32 0, i32 0
  %t238 = load i64, ptr %t237, !tbaa !24
  store i64 %t238, ptr %l15, !tbaa !24
  %t240 = getelementptr { i64, i32 }, ptr %l14, i32 0, i32 1
  %t241 = load i32, ptr %t240, !tbaa !23
  store i32 %t241, ptr %l16, !tbaa !23
  %t243 = load ptr, ptr %lp5
  %t244 = getelementptr %"compiler/eval:Blob", ptr %t243, i32 0, i32 4
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v5, ptr %t244, i64 -1)
  br label %bb49
bb49:
  %t246 = load ptr, ptr %lp5
  %t247 = getelementptr %"compiler/eval:Blob", ptr %t246, i32 0, i32 6
  %t248 = load i64, ptr %l12, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v5, ptr %t247, i64 %t248)
  br label %bb50
bb50:
  %t251 = load ptr, ptr %lp5
  %t252 = getelementptr %"compiler/eval:Blob", ptr %t251, i32 0, i32 7
  %t253 = load i64, ptr %l15, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v5, ptr %t252, i64 %t253)
  br label %bb51
bb51:
  %t256 = load ptr, ptr %lp5
  %t257 = getelementptr %"compiler/eval:Blob", ptr %t256, i32 0, i32 8
  %t258 = load i32, ptr %l16, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %v5, ptr %t257, i32 %t258)
  br label %bb52
bb52:
  %t261 = load ptr, ptr %lp5
  %t262 = getelementptr %"compiler/eval:Blob", ptr %t261, i32 0, i32 9
  %t263 = getelementptr %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l13, i32 0, i32 1
  %t264 = load i64, ptr %t263, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v5, ptr %t262, i64 %t264)
  br label %bb53
bb53:
  call void @__olang_scope_close(ptr %s2)
  br label %bb54
bb54:
  %t267 = load i64, ptr %l10, !tbaa !24
  %t269 = add i64 %t267, 1
  store i64 %t269, ptr %l10, !tbaa !24
  br label %bb16
bb55:
  %t271 = load ptr, ptr %lp5
  call void @llvm.memmove.p0.p0.i64(ptr %l130, ptr %t271, i64 272, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l130, i64 272, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2finterp_2eline(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"compiler/source:Span" %a2) #0 {
entry:
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i32
  %l16 = alloca { i64, ptr }
  %l17 = alloca i64
  %l18 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store %"compiler/source:Span" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t4 = load i32, ptr %t3, !tbaa !23
  %t6 = sext i32 %t4 to i64
  %t10 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eLocate(ptr %v0, ptr %s0, ptr %a0, i64 %a1, i64 %t6)
  store { i64, ptr } %t10, ptr %l9
  br label %bb1
bb1:
  %t11 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t11, ptr %l3, !tbaa !27
  %t12 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t14 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindLast(ptr %s0, ptr %s0, { i64, ptr } %t12, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d119, i32 0, i32 1) })
  %t15 = extractvalue { i32, i64 } %t14, 1
  %t16 = extractvalue { i32, i64 } %t14, 0
  store i32 %t16, ptr %l13
  %t17 = icmp ne i32 %t16, 0
  br i1 %t17, label %bb3, label %ok.18, !prof !99
ok.18:
  store i64 %t15, ptr %l12
  br label %bb2
bb2:
  %t19 = load i64, ptr %l12, !tbaa !24
  store i64 %t19, ptr %l10, !tbaa !24
  br label %bb5
bb3:
  br label %bb4
bb4:
  store i64 -1, ptr %l10, !tbaa !24
  br label %bb5
bb5:
  %t20 = load i64, ptr %l10, !tbaa !24
  store i64 %t20, ptr %l4, !tbaa !24
  %t21 = load i64, ptr %l4, !tbaa !24
  %t23 = icmp sge i64 %t21, 0
  br i1 %t23, label %bb6, label %bb7
bb6:
  %t25 = load i64, ptr %l4, !tbaa !24
  store i64 %t25, ptr %l17, !tbaa !24
  %t26 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t27 = extractvalue { i64, ptr } %t26, 0
  store i64 %t27, ptr %l18, !tbaa !24
  %t28 = icmp sge i64 0, 0
  br i1 %t28, label %bb8, label %bb9
bb7:
  %t30 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t32 = extractvalue { i64, ptr } %t30, 1
  %t33 = extractvalue { i64, ptr } %t30, 0
  %t34 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t33)
  call void @olang_textcopy(ptr %t34, ptr %t32, i64 %t33)
  %t35 = insertvalue { i64, ptr } undef, i64 %t33, 0
  %t36 = insertvalue { i64, ptr } %t35, ptr %t34, 1
  store { i64, ptr } %t36, ptr %l16, !tbaa !27
  br label %bb14
bb8:
  %t38 = load i64, ptr %l17, !tbaa !24
  %t39 = icmp sle i64 0, %t38
  br i1 %t39, label %bb10, label %bb11
bb9:
  call void @__olang_check_failed(ptr @olang_loc_33cf42576bc92052_8a57929dd960fbd6)
  unreachable
bb10:
  %t41 = load i64, ptr %l17, !tbaa !24
  %t42 = load i64, ptr %l18, !tbaa !24
  %t43 = icmp sle i64 %t41, %t42
  br i1 %t43, label %bb12, label %bb13
bb11:
  call void @__olang_check_failed(ptr @olang_loc_33cf42576bc92052_8a57929dd960fbd6)
  unreachable
bb12:
  %t45 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t46 = load ptr, ptr %t45, !tbaa !27
  %t47 = load i64, ptr %l17, !tbaa !24
  %t48 = getelementptr i8, ptr %t46, i64 0
  %t49 = sub i64 %t47, 0
  %t50 = insertvalue { i64, ptr } undef, i64 %t49, 0
  %t51 = insertvalue { i64, ptr } %t50, ptr %t48, 1
  %t53 = extractvalue { i64, ptr } %t51, 1
  %t54 = extractvalue { i64, ptr } %t51, 0
  %t55 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t54)
  call void @olang_textcopy(ptr %t55, ptr %t53, i64 %t54)
  %t56 = insertvalue { i64, ptr } undef, i64 %t54, 0
  %t57 = insertvalue { i64, ptr } %t56, ptr %t55, 1
  store { i64, ptr } %t57, ptr %l16, !tbaa !27
  br label %bb14
bb13:
  call void @__olang_check_failed(ptr @olang_loc_33cf42576bc92052_8a57929dd960fbd6)
  unreachable
bb14:
  call void @__olang_scope_close(ptr %s0)
  %t59 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t59, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2finterp_2enoteWhy(ptr %v0, ptr %a0, i64 %a1, i64 %a2, %"compiler/source:Span" %a3, i64 %a4, %"compiler/source:Span" %a5) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca i64
  %l5 = alloca %"compiler/source:Span"
  %l11 = alloca i1
  %l16 = alloca i64
  %l21 = alloca i64
  %l23 = alloca ptr
  %l24 = alloca i64
  %l30 = alloca { i64, [3 x i64] }
  %l31 = alloca %"compiler/diagmsg:Msg"
  %t47 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i64 %a2, ptr %l2
  store %"compiler/source:Span" %a3, ptr %l3
  store i64 %a4, ptr %l4
  store %"compiler/source:Span" %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l4, !tbaa !24
  %t3 = icmp slt i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t5 = load i64, ptr %l4, !tbaa !24
  %t6 = load i64, ptr %l2, !tbaa !24
  %t9 = icmp eq i64 %t5, %t6
  br i1 %t9, label %bb4, label %bb5
bb4:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load i64, ptr %l4, !tbaa !24
  %t13 = getelementptr %"compiler/source:Span", ptr %l5, i32 0, i32 0
  %t14 = load i32, ptr %t13, !tbaa !23
  %t16 = sext i32 %t14 to i64
  %t20 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eLineAt(ptr %v0, ptr %t11, i64 %t12, i64 %t16)
  store i64 %t20, ptr %l16
  br label %bb6
bb5:
  store i1 false, ptr %l11, !tbaa !21
  br label %bb8
bb6:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = load i64, ptr %l2, !tbaa !24
  %t23 = getelementptr %"compiler/source:Span", ptr %l3, i32 0, i32 0
  %t24 = load i32, ptr %t23, !tbaa !23
  %t26 = sext i32 %t24 to i64
  %t30 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eLineAt(ptr %v0, ptr %t21, i64 %t22, i64 %t26)
  store i64 %t30, ptr %l21
  br label %bb7
bb7:
  %t31 = load i64, ptr %l16, !tbaa !24
  %t32 = load i64, ptr %l21, !tbaa !24
  %t33 = icmp eq i64 %t31, %t32
  store i1 %t33, ptr %l11, !tbaa !21
  br label %bb8
bb8:
  %t35 = load i1, ptr %l11, !tbaa !21
  br i1 %t35, label %bb9, label %bb10
bb9:
  br label %ret
bb10:
  br label %bb11
bb11:
  %t36 = load ptr, ptr %l0, !tbaa !29
  store ptr %t36, ptr %l23, !tbaa !29
  store i64 %a1, ptr %l24, !tbaa !24
  %t38 = load i64, ptr %l4, !tbaa !24
  %t39 = getelementptr %"compiler/source:Span", ptr %l5, i32 0, i32 0
  %t40 = load i32, ptr %t39, !tbaa !23
  %t42 = sext i32 %t40 to i64
  %t43 = getelementptr %"compiler/source:Span", ptr %l5, i32 0, i32 1
  %t44 = load i32, ptr %t43, !tbaa !23
  %t46 = sext i32 %t44 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t47
  %t48 = getelementptr { i64, [3 x i64] }, ptr %t47, i32 0, i32 0
  store i64 3, ptr %t48
  %t50 = insertvalue { i64, i64, i64 } undef, i64 %t38, 0
  %t52 = insertvalue { i64, i64, i64 } %t50, i64 %t42, 1
  %t54 = insertvalue { i64, i64, i64 } %t52, i64 %t46, 2
  %t55 = getelementptr { i64, [3 x i64] }, ptr %t47, i32 0, i32 1
  store { i64, i64, i64 } %t54, ptr %t55
  %t56 = load { i64, [3 x i64] }, ptr %t47
  store { i64, [3 x i64] } %t56, ptr %l30
  %t57 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteHere(ptr %v0)
  store %"compiler/diagmsg:Msg" %t57, ptr %l31
  br label %bb12
bb12:
  %t58 = load ptr, ptr %l23, !tbaa !29
  %t59 = load i64, ptr %l24, !tbaa !24
  %t60 = load { i64, [3 x i64] }, ptr %l30
  %t61 = load %"compiler/diagmsg:Msg", ptr %l31
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %v0, ptr %t58, i64 %t59, { i64, [3 x i64] } %t60, %"compiler/diagmsg:Msg" %t61)
  br label %bb13
bb13:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2finterp_2esay(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l2 = alloca i32
  %l4 = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call i32 @std_2fio_2ePut_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, { i64, ptr } %a0)
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

define dso_local i64 @compiler_2finterp_2esayAt(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, { i64, [3 x i64] } %a2, %"compiler/diagmsg:Msg" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, [3 x i64] }
  %l3 = alloca %"compiler/diagmsg:Msg"
  %l4 = alloca i64
  %l11 = alloca i64
  %l16 = alloca i64
  %l17 = alloca ptr
  %l18 = alloca i64
  %l19 = alloca { i64, [3 x i64] }
  %l22 = alloca i1
  %l23 = alloca %"compiler/diagmsg:Msg"
  %l24 = alloca %"compiler/diagmsg:Msg"
  %l25 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store { i64, [3 x i64] } %a2, ptr %l2
  store %"compiler/diagmsg:Msg" %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/check:AssertAsk", ptr %t1, i32 0, i32 9
  %t4 = load { i64, [3 x i64] }, ptr %t3
  %t6 = extractvalue { i64, [3 x i64] } %t4, 0
  %t7 = icmp eq i64 %t6, 0
  br i1 %t7, label %bb1, label %bb2
bb1:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load { i64, [3 x i64] }, ptr %l2
  %t11 = load %"compiler/diagmsg:Msg", ptr %l3
  %t15 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v2, ptr %t9, { i64, [3 x i64] } %t10, %"compiler/diagmsg:Msg" %t11)
  store i64 %t15, ptr %l11
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t16 = load i64, ptr %l11, !tbaa !24
  store i64 %t16, ptr %rv
  br label %ret
bb4:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t18 = load ptr, ptr %l1, !tbaa !29
  %t20 = getelementptr %"compiler/check:AssertAsk", ptr %t18, i32 0, i32 9
  %t21 = load { i64, [3 x i64] }, ptr %t20
  %t22 = load %"compiler/diagmsg:Msg", ptr %l3
  %t26 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v2, ptr %t17, { i64, [3 x i64] } %t21, %"compiler/diagmsg:Msg" %t22)
  store i64 %t26, ptr %l16
  br label %bb5
bb5:
  %t27 = load i64, ptr %l16, !tbaa !24
  store i64 %t27, ptr %l4, !tbaa !24
  %t28 = load ptr, ptr %l0, !tbaa !29
  store ptr %t28, ptr %l17, !tbaa !29
  %t29 = load i64, ptr %l4, !tbaa !24
  store i64 %t29, ptr %l18, !tbaa !24
  %t30 = load { i64, [3 x i64] }, ptr %l2
  store { i64, [3 x i64] } %t30, ptr %l19
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load { i64, [3 x i64] }, ptr %l2
  %t35 = call i1 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eIsLibrary(ptr %v0, ptr %t31, { i64, [3 x i64] } %t32)
  store i1 %t35, ptr %l22
  br label %bb6
bb6:
  %t36 = load i1, ptr %l22, !tbaa !21
  br i1 %t36, label %bb7, label %bb8
bb7:
  %t37 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteInLibrary(ptr %v0)
  store %"compiler/diagmsg:Msg" %t37, ptr %l24
  br label %bb9
bb8:
  %t38 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteHere(ptr %v0)
  store %"compiler/diagmsg:Msg" %t38, ptr %l25
  br label %bb10
bb9:
  %t39 = load %"compiler/diagmsg:Msg", ptr %l24
  store %"compiler/diagmsg:Msg" %t39, ptr %l23
  br label %bb11
bb10:
  %t40 = load %"compiler/diagmsg:Msg", ptr %l25
  store %"compiler/diagmsg:Msg" %t40, ptr %l23
  br label %bb11
bb11:
  %t41 = load ptr, ptr %l17, !tbaa !29
  %t42 = load i64, ptr %l18, !tbaa !24
  %t43 = load { i64, [3 x i64] }, ptr %l19
  %t44 = load %"compiler/diagmsg:Msg", ptr %l23
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %v0, ptr %t41, i64 %t42, { i64, [3 x i64] } %t43, %"compiler/diagmsg:Msg" %t44)
  br label %bb12
bb12:
  %t45 = load i64, ptr %l4, !tbaa !24
  store i64 %t45, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2finterp_2esayErr(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l2 = alloca i32
  %l4 = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call i32 @std_2fio_2ePutErr_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, { i64, ptr } %a0)
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

define dso_local { i64, ptr } @compiler_2finterp_2escriptLibrary(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i32
  %l12 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i32
  %l18 = alloca { i64, ptr }
  %l19 = alloca { i64, ptr }
  %l20 = alloca i64
  %l21 = alloca { i64, ptr }
  %l22 = alloca { i64, ptr }
  %l23 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i64
  %l32 = alloca { i64, ptr }
  %l39 = alloca { i64, ptr }
  %l43 = alloca i1
  %l44 = alloca i1
  %l46 = alloca i1
  %l47 = alloca i1
  %l50 = alloca { i64, ptr }
  %l51 = alloca i1
  %l56 = alloca { i64, ptr }
  %l57 = alloca { i64, ptr }
  %l58 = alloca i64
  %l59 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d120, i32 0, i32 1) })
  %t4 = extractvalue { i32, i64 } %t3, 1
  %t5 = extractvalue { i32, i64 } %t3, 0
  store i32 %t5, ptr %l9
  %t6 = icmp ne i32 %t5, 0
  br i1 %t6, label %bb2, label %ok.7, !prof !99
ok.7:
  store i64 %t4, ptr %l8
  br label %bb1
bb1:
  %t8 = load i64, ptr %l8, !tbaa !24
  store i64 %t8, ptr %l6, !tbaa !24
  br label %bb4
bb2:
  br label %bb3
bb3:
  store i64 -1, ptr %l6, !tbaa !24
  br label %bb4
bb4:
  %t9 = load i64, ptr %l6, !tbaa !24
  store i64 %t9, ptr %l1, !tbaa !24
  %t10 = load i64, ptr %l1, !tbaa !24
  %t12 = icmp slt i64 %t10, 0
  br i1 %t12, label %bb5, label %bb6
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t14 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t16 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %s1, { i64, ptr } %t14, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d121, i32 0, i32 1) })
  %t17 = extractvalue { i32, i64 } %t16, 1
  %t18 = extractvalue { i32, i64 } %t16, 0
  store i32 %t18, ptr %l15
  %t19 = icmp ne i32 %t18, 0
  br i1 %t19, label %bb8, label %ok.20, !prof !99
ok.20:
  store i64 %t17, ptr %l14
  br label %bb7
bb6:
  br label %bb11
bb7:
  %t21 = load i64, ptr %l14, !tbaa !24
  store i64 %t21, ptr %l12, !tbaa !24
  br label %bb10
bb8:
  br label %bb9
bb9:
  store i64 -1, ptr %l12, !tbaa !24
  br label %bb10
bb10:
  %t22 = load i64, ptr %l12, !tbaa !24
  store i64 %t22, ptr %l1, !tbaa !24
  call void @__olang_scope_close(ptr %s1)
  br label %bb11
bb11:
  %t23 = load i64, ptr %l1, !tbaa !24
  %t25 = icmp slt i64 %t23, 0
  br i1 %t25, label %bb12, label %bb13
bb12:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d122, i32 0, i32 1) }, ptr %l18, !tbaa !27
  %t27 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t27, ptr %l19, !tbaa !27
  %t28 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t29 = extractvalue { i64, ptr } %t28, 0
  store i64 %t29, ptr %l20, !tbaa !24
  %t30 = load i64, ptr %l20, !tbaa !24
  %t31 = mul i64 %t30, 1
  %t32 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t31)
  %t33 = insertvalue { i64, ptr } undef, i64 %t30, 0
  %t34 = insertvalue { i64, ptr } %t33, ptr %t32, 1
  store { i64, ptr } %t34, ptr %l21, !tbaa !27
  %t35 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !27
  %t37 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !27
  %t39 = load i64, ptr %l20, !tbaa !24
  %t40 = mul i64 %t39, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t36, ptr %t38, i64 %t40, i1 false)
  %t41 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t41, ptr %l19, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t42 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t42, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  store %olang.scope zeroinitializer, ptr %s3
  %t43 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t43, ptr %l22, !tbaa !27
  %t44 = load i64, ptr %l1, !tbaa !24
  store i64 %t44, ptr %l23, !tbaa !24
  %t45 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t48 = extractvalue { i64, ptr } %t45, 0
  store i64 %t48, ptr %l26, !tbaa !24
  %t49 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t50 = extractvalue { i64, ptr } %t49, 0
  store i64 %t50, ptr %l27, !tbaa !24
  %t51 = load i64, ptr %l23, !tbaa !24
  %t52 = icmp sge i64 %t51, 0
  br i1 %t52, label %bb15, label %bb16
bb15:
  %t54 = load i64, ptr %l23, !tbaa !24
  %t55 = load i64, ptr %l26, !tbaa !24
  %t56 = icmp sle i64 %t54, %t55
  br i1 %t56, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_4a2450c320d71be4_787663299ea3b538)
  unreachable
bb17:
  %t58 = load i64, ptr %l26, !tbaa !24
  %t59 = load i64, ptr %l27, !tbaa !24
  %t60 = icmp sle i64 %t58, %t59
  br i1 %t60, label %bb19, label %bb20
bb18:
  call void @__olang_check_failed(ptr @olang_loc_4a2450c320d71be4_787663299ea3b538)
  unreachable
bb19:
  %t62 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t63 = load ptr, ptr %t62, !tbaa !27
  %t64 = load i64, ptr %l23, !tbaa !24
  %t65 = load i64, ptr %l26, !tbaa !24
  %t66 = getelementptr i8, ptr %t63, i64 %t64
  %t67 = sub i64 %t65, %t64
  %t68 = insertvalue { i64, ptr } undef, i64 %t67, 0
  %t69 = insertvalue { i64, ptr } %t68, ptr %t66, 1
  %t71 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eSplit(ptr %v0, ptr %s3, ptr %s3, { i64, ptr } %t69, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d123, i32 0, i32 1) })
  store { i64, ptr } %t71, ptr %l32
  br label %bb21
bb20:
  call void @__olang_check_failed(ptr @olang_loc_4a2450c320d71be4_787663299ea3b538)
  unreachable
bb21:
  %t72 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t72, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t73 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t75 = extractvalue { i64, ptr } %t73, 0
  store i64 %t75, ptr %l4, !tbaa !24
  br label %bb22
bb22:
  store %olang.scope zeroinitializer, ptr %s4
  %t77 = load i64, ptr %l3, !tbaa !24
  %t78 = load i64, ptr %l4, !tbaa !24
  %t81 = icmp slt i64 %t77, %t78
  %t83 = xor i1 %t81, true
  br i1 %t83, label %bb23, label %bb24
bb23:
  call void @__olang_scope_close(ptr %s4)
  br label %bb39
bb24:
  br label %bb25
bb25:
  %t85 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t85, ptr %l39, !tbaa !27
  %t86 = load i64, ptr %l3, !tbaa !24
  %t88 = getelementptr { i64, ptr }, ptr %l39, i32 0, i32 1
  %t89 = load ptr, ptr %t88, !tbaa !27
  %t90 = getelementptr { i64, ptr }, ptr %t89, i64 %t86
  %t91 = load { i64, ptr }, ptr %t90, !tbaa !37
  store { i64, ptr } %t91, ptr %l5, !tbaa !27
  %t93 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t95 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s3, ptr %s4, { i64, ptr } %t93, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d124, i32 0, i32 1) })
  store i1 %t95, ptr %l43
  br label %bb26
bb26:
  %t96 = load i1, ptr %l43, !tbaa !21
  br i1 %t96, label %bb27, label %bb28
bb27:
  store i1 true, ptr %l44, !tbaa !21
  br label %bb34
bb28:
  %t97 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t99 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s3, ptr %s4, { i64, ptr } %t97, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d125, i32 0, i32 1) })
  store i1 %t99, ptr %l46
  br label %bb29
bb29:
  %t100 = load i1, ptr %l46, !tbaa !21
  br i1 %t100, label %bb30, label %bb31
bb30:
  %t101 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d126, i32 0, i32 1) }, ptr %l50, !tbaa !27
  %t104 = load { i64, ptr }, ptr %l50, !tbaa !27
  %t105 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %s3, ptr %s4, { i64, ptr } %t101, { i64, ptr } %t104)
  store i1 %t105, ptr %l51
  br label %bb32
bb31:
  store i1 false, ptr %l47, !tbaa !21
  br label %bb33
bb32:
  %t106 = load i1, ptr %l51, !tbaa !21
  store i1 %t106, ptr %l47, !tbaa !21
  br label %bb33
bb33:
  %t107 = load i1, ptr %l47, !tbaa !21
  store i1 %t107, ptr %l44, !tbaa !21
  br label %bb34
bb34:
  %t108 = load i1, ptr %l44, !tbaa !21
  br i1 %t108, label %bb35, label %bb36
bb35:
  %t109 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t111 = extractvalue { i64, ptr } %t109, 1
  %t112 = extractvalue { i64, ptr } %t109, 0
  %t113 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t112)
  call void @olang_textcopy(ptr %t113, ptr %t111, i64 %t112)
  %t114 = insertvalue { i64, ptr } undef, i64 %t112, 0
  %t115 = insertvalue { i64, ptr } %t114, ptr %t113, 1
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t115, ptr %rv
  br label %ret
bb36:
  br label %bb37
bb37:
  call void @__olang_scope_close(ptr %s4)
  br label %bb38
bb38:
  %t117 = load i64, ptr %l3, !tbaa !24
  %t119 = add i64 %t117, 1
  store i64 %t119, ptr %l3, !tbaa !24
  br label %bb22
bb39:
  call void @__olang_scope_close(ptr %s3)
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d127, i32 0, i32 1) }, ptr %l56, !tbaa !27
  %t121 = load { i64, ptr }, ptr %l56, !tbaa !27
  store { i64, ptr } %t121, ptr %l57, !tbaa !27
  %t122 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t123 = extractvalue { i64, ptr } %t122, 0
  store i64 %t123, ptr %l58, !tbaa !24
  %t124 = load i64, ptr %l58, !tbaa !24
  %t125 = mul i64 %t124, 1
  %t126 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t125)
  %t127 = insertvalue { i64, ptr } undef, i64 %t124, 0
  %t128 = insertvalue { i64, ptr } %t127, ptr %t126, 1
  store { i64, ptr } %t128, ptr %l59, !tbaa !27
  %t129 = getelementptr { i64, ptr }, ptr %l59, i32 0, i32 1
  %t130 = load ptr, ptr %t129, !tbaa !27
  %t131 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t132 = load ptr, ptr %t131, !tbaa !27
  %t133 = load i64, ptr %l58, !tbaa !24
  %t134 = mul i64 %t133, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t130, ptr %t132, i64 %t134, i1 false)
  %t135 = load { i64, ptr }, ptr %l59, !tbaa !27
  store { i64, ptr } %t135, ptr %l57, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t136 = load { i64, ptr }, ptr %l57, !tbaa !27
  store { i64, ptr } %t136, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2finterp_2eshareStorage(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca { i64, ptr }
  %l8 = alloca %"compiler/eval:Image"
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l18 = alloca i64
  %l20 = alloca i64
  %l25 = alloca i64
  %l26 = alloca ptr
  %l29 = alloca ptr
  %l30 = alloca i32
  %l33 = alloca i64
  %l37 = alloca ptr
  %l38 = alloca ptr
  %l39 = alloca ptr
  %l43 = alloca ptr
  %l44 = alloca i64
  %l46 = alloca i32
  %l48 = alloca i1
  %l51 = alloca i1
  %l52 = alloca %"compiler/eval:Image"
  %l57 = alloca i64
  %l61 = alloca i64
  %l64 = alloca i64
  %l85 = alloca ptr
  %l86 = alloca ptr
  %l87 = alloca ptr
  %l91 = alloca ptr
  %l94 = alloca %"compiler/eval:Blob"
  %l95 = alloca ptr
  %l99 = alloca i64
  %l100 = alloca ptr
  %l104 = alloca i64
  %l108 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l111 = alloca ptr
  %l112 = alloca i64
  %l113 = alloca %"compiler/eval:Image"
  %l115 = alloca %"compiler/eval:Image"
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %t48 = alloca i64
  %t169 = alloca %"compiler/eval:Blob", align 8
  %t176 = alloca %"compiler/eval:Blob", align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fpair_3aPair_3cI64_2c_20I64_3e_3e(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1, ptr %l15
  br label %bb1
bb1:
  %t2 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l15
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2, ptr %l2
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/interp:Exec", ptr %t3, i32 0, i32 9
  store ptr %t5, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  store %olang.scope zeroinitializer, ptr %s2
  %t7 = load i64, ptr %l4, !tbaa !24
  store i64 %t7, ptr %l18, !tbaa !24
  %t8 = load ptr, ptr %l3, !tbaa !29
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t8)
  store i64 %t10, ptr %l20
  br label %bb3
bb3:
  %t11 = load i64, ptr %l18, !tbaa !24
  %t12 = load i64, ptr %l20, !tbaa !24
  %t13 = icmp slt i64 %t11, %t12
  %t15 = xor i1 %t13, true
  br i1 %t15, label %bb4, label %bb5
bb4:
  call void @__olang_scope_close(ptr %s2)
  br label %bb52
bb5:
  br label %bb6
bb6:
  %t17 = load ptr, ptr %l3, !tbaa !29
  %t18 = load i64, ptr %l4, !tbaa !24
  %t21 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t17, i64 %t18)
  store i64 %t21, ptr %l25
  br label %bb7
bb7:
  %t22 = load i64, ptr %l25, !tbaa !24
  store i64 %t22, ptr %l5, !tbaa !24
  %t23 = load ptr, ptr %l1, !tbaa !29
  %t24 = load i64, ptr %l5, !tbaa !24
  %t27 = call { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2feval_3aImage_3e_2e_H95f86c29c688efeac83a664cabcff622(ptr %v1, ptr %v1, ptr %t23, i64 %t24)
  %t28 = extractvalue { i32, ptr } %t27, 1
  %t29 = extractvalue { i32, ptr } %t27, 0
  store i32 %t29, ptr %l30
  %t30 = icmp ne i32 %t29, 0
  br i1 %t30, label %bb9, label %ok.31, !prof !99
ok.31:
  store ptr %t28, ptr %l29
  br label %bb8
bb8:
  %t32 = load ptr, ptr %l29, !tbaa !29
  store ptr %t32, ptr %l26, !tbaa !29
  br label %bb11
bb9:
  br label %bb10
bb10:
  call void @__olang_scope_close(ptr %s2)
  br label %bb51
bb11:
  %t33 = load ptr, ptr %l26, !tbaa !29
  store ptr %t33, ptr %l6, !tbaa !29
  %t34 = load ptr, ptr %l6, !tbaa !29
  %t36 = getelementptr %"compiler/eval:Image", ptr %t34, i32 0, i32 0
  %t38 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aBlob_3e_2eLen_3ccompiler_2feval_3aBlob_3e(ptr %v1, ptr %t36)
  store i64 %t38, ptr %l33
  br label %bb12
bb12:
  %t39 = load i64, ptr %l33, !tbaa !24
  %t40 = icmp sge i64 %t39, 0
  br i1 %t40, label %bb13, label %bb14
bb13:
  %t42 = load i64, ptr %l33, !tbaa !24
  %t43 = icmp sle i64 %t42, 1152921504606846975
  br i1 %t43, label %bb15, label %bb16
bb14:
  call void @__olang_check_failed(ptr @olang_loc_9513d9c663183758_bab169d76cbcad14)
  unreachable
bb15:
  %t45 = load i64, ptr %l33, !tbaa !24
  %t46 = mul i64 %t45, 8
  %t47 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t46)
  store i64 0, ptr %t48
  br label %fill.49
fill.49:
  %t52 = load i64, ptr %t48
  %t53 = icmp slt i64 %t52, %t45
  br i1 %t53, label %fillb.50, label %filld.51
fillb.50:
  %t54 = getelementptr i64, ptr %t47, i64 %t52
  store i64 -1, ptr %t54
  %t55 = add i64 %t52, 1
  store i64 %t55, ptr %t48
  br label %fill.49
filld.51:
  %t56 = insertvalue { i64, ptr } undef, i64 %t45, 0
  %t57 = insertvalue { i64, ptr } %t56, ptr %t47, 1
  store { i64, ptr } %t57, ptr %l7, !tbaa !27
  %t59 = load ptr, ptr %l0, !tbaa !29
  store ptr %t59, ptr %l37, !tbaa !29
  %t60 = load ptr, ptr %l6, !tbaa !29
  store ptr %t60, ptr %l38, !tbaa !29
  store ptr %l2, ptr %l39, !tbaa !29
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t63 = getelementptr %"compiler/interp:Exec", ptr %t61, i32 0, i32 1
  %t64 = load ptr, ptr %t63, !tbaa !29
  %t65 = load i64, ptr %l5, !tbaa !24
  %t68 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t64, i64 %t65)
  store ptr %t68, ptr %l43
  br label %bb17
bb16:
  call void @__olang_check_failed(ptr @olang_loc_9513d9c663183758_bab169d76cbcad14)
  unreachable
bb17:
  %t69 = load ptr, ptr %l43, !tbaa !29
  %t70 = call i64 @compiler_2finterp_2eglobalModule(ptr %v0, ptr %t69)
  store i64 %t70, ptr %l44
  br label %bb18
bb18:
  %t71 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t72 = load ptr, ptr %l37, !tbaa !29
  %t73 = load ptr, ptr %l38, !tbaa !29
  %t74 = load ptr, ptr %l39, !tbaa !29
  %t75 = load i64, ptr %l44, !tbaa !24
  %t77 = call i32 @compiler_2finterp_2ehomesKnown(ptr %v0, ptr %v1, ptr %s0, ptr %s2, ptr %t72, ptr %t73, ptr %t74, i64 %t75, { i64, ptr } %t71)
  store i32 %t77, ptr %l46
  %t78 = icmp ne i32 %t77, 0
  br i1 %t78, label %bb20, label %ok.79, !prof !99
ok.79:
  br label %bb19
bb19:
  br label %bb23
bb20:
  %t80 = load i32, ptr %l46, !tbaa !23
  %t81 = ashr i32 %t80, 16
  %t83 = icmp eq i32 %t81, 1
  store i1 %t83, ptr %l48, !tbaa !21
  br label %bb21
bb21:
  %t84 = load ptr, ptr %l1, !tbaa !29
  %t85 = load i64, ptr %l5, !tbaa !24
  %t88 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2feval_3aImage_3e_2e_H8e3ab02101333f4dae95aad48f2e722e(ptr %v1, ptr %t84, i64 %t85)
  store i1 %t88, ptr %l51
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s2)
  br label %bb51
bb23:
  %t89 = call %"compiler/eval:Image" @compiler_2feval_3aImage_2ector(ptr %s2)
  store %"compiler/eval:Image" %t89, ptr %l52
  br label %bb24
bb24:
  %t90 = load %"compiler/eval:Image", ptr %l52
  store %"compiler/eval:Image" %t90, ptr %l8
  %t91 = load ptr, ptr %l6, !tbaa !29
  %t93 = getelementptr %"compiler/eval:Image", ptr %t91, i32 0, i32 2
  %t94 = load i1, ptr %t93, !tbaa !21
  %t96 = getelementptr %"compiler/eval:Image", ptr %l8, i32 0, i32 2
  store i1 %t94, ptr %t96, !tbaa !21
  store i64 0, ptr %l9, !tbaa !24
  %t97 = load ptr, ptr %l6, !tbaa !29
  %t99 = getelementptr %"compiler/eval:Image", ptr %t97, i32 0, i32 0
  %t101 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aBlob_3e_2eLen_3ccompiler_2feval_3aBlob_3e(ptr %v1, ptr %t99)
  store i64 %t101, ptr %l57
  br label %bb25
bb25:
  %t102 = load i64, ptr %l57, !tbaa !24
  store i64 %t102, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t103 = load i64, ptr %l10, !tbaa !24
  %t104 = load i64, ptr %l9, !tbaa !24
  %t107 = icmp sgt i64 %t103, %t104
  br i1 %t107, label %bb26, label %bb27
bb26:
  %t109 = load i64, ptr %l11, !tbaa !24
  %t111 = icmp sgt i64 %t109, 0
  br i1 %t111, label %bb28, label %bb29
bb27:
  store i64 0, ptr %l61, !tbaa !24
  br label %bb31
bb28:
  %t113 = load i64, ptr %l10, !tbaa !24
  %t114 = load i64, ptr %l9, !tbaa !24
  %t117 = sub i64 %t113, %t114
  %t118 = load i64, ptr %l11, !tbaa !24
  %t121 = add i64 %t117, %t118
  %t123 = sub i64 %t121, 1
  %t124 = load i64, ptr %l11, !tbaa !24
  %t127 = sdiv i64 %t123, %t124
  store i64 %t127, ptr %l64, !tbaa !24
  br label %bb30
bb29:
  store i64 0, ptr %l64, !tbaa !24
  br label %bb30
bb30:
  %t129 = load i64, ptr %l64, !tbaa !24
  store i64 %t129, ptr %l61, !tbaa !24
  br label %bb31
bb31:
  %t130 = load i64, ptr %l61, !tbaa !24
  store i64 %t130, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb32
bb32:
  store %olang.scope zeroinitializer, ptr %s6
  %t131 = load i64, ptr %l13, !tbaa !24
  %t132 = load i64, ptr %l12, !tbaa !24
  %t135 = icmp slt i64 %t131, %t132
  %t137 = xor i1 %t135, true
  br i1 %t137, label %bb33, label %bb34
bb33:
  call void @__olang_scope_close(ptr %s6)
  br label %bb48
bb34:
  br label %bb35
bb35:
  %t139 = load i64, ptr %l9, !tbaa !24
  %t140 = load i64, ptr %l13, !tbaa !24
  %t141 = load i64, ptr %l11, !tbaa !24
  %t144 = mul i64 %t140, %t141
  %t147 = add i64 %t139, %t144
  store i64 %t147, ptr %l14, !tbaa !24
  %t149 = load i64, ptr %l14, !tbaa !24
  %t151 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t152 = load ptr, ptr %t151, !tbaa !27
  %t153 = getelementptr i64, ptr %t152, i64 %t149
  %t154 = load i64, ptr %t153, !tbaa !34
  %t156 = icmp slt i64 %t154, 0
  br i1 %t156, label %bb36, label %bb37
bb36:
  call void @__olang_scope_close(ptr %s6)
  br label %bb47
bb37:
  br label %bb38
bb38:
  %t158 = getelementptr %"compiler/eval:Image", ptr %l8, i32 0, i32 0
  store ptr %t158, ptr %l85, !tbaa !29
  %t159 = load ptr, ptr %l0, !tbaa !29
  store ptr %t159, ptr %l86, !tbaa !29
  %t160 = load ptr, ptr %l6, !tbaa !29
  store ptr %t160, ptr %l87, !tbaa !29
  %t161 = load ptr, ptr %l6, !tbaa !29
  %t163 = getelementptr %"compiler/eval:Image", ptr %t161, i32 0, i32 0
  %t164 = load i64, ptr %l14, !tbaa !24
  %t167 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aBlob_3e_2eRef_3ccompiler_2feval_3aBlob_3e(ptr %v1, ptr %v1, ptr %t163, i64 %t164)
  store ptr %t167, ptr %l91
  br label %bb39
bb39:
  %t168 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t170 = load ptr, ptr %l86, !tbaa !29
  %t171 = load ptr, ptr %l87, !tbaa !29
  %t172 = load ptr, ptr %l91, !tbaa !29
  call void @compiler_2finterp_2ekeptBlob(ptr %t169, ptr %v0, ptr %v1, ptr %v1, ptr %s2, ptr %s0, ptr %s6, ptr %t170, ptr %t171, ptr %t172, { i64, ptr } %t168, ptr %l2)
  call void @llvm.memmove.p0.p0.i64(ptr %l94, ptr %t169, i64 272, i1 false)
  br label %bb40
bb40:
  %t175 = load ptr, ptr %l85, !tbaa !29
  call void @llvm.memmove.p0.p0.i64(ptr %t176, ptr %l94, i64 272, i1 false)
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aBlob_3e_2ePush_3ccompiler_2feval_3aBlob_3e(ptr %s2, ptr %s6, ptr %t175, ptr %t176)
  br label %bb41
bb41:
  %t177 = getelementptr %"compiler/eval:Image", ptr %l8, i32 0, i32 1
  store ptr %t177, ptr %l95, !tbaa !29
  %t178 = load ptr, ptr %l6, !tbaa !29
  %t180 = getelementptr %"compiler/eval:Image", ptr %t178, i32 0, i32 1
  %t181 = load i64, ptr %l14, !tbaa !24
  %t184 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t180, i64 %t181)
  store i64 %t184, ptr %l99
  br label %bb42
bb42:
  %t185 = load ptr, ptr %l95, !tbaa !29
  %t186 = load i64, ptr %l99, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s2, ptr %t185, i64 %t186)
  br label %bb43
bb43:
  store ptr %l2, ptr %l100, !tbaa !29
  %t187 = load ptr, ptr %l6, !tbaa !29
  %t189 = getelementptr %"compiler/eval:Image", ptr %t187, i32 0, i32 1
  %t190 = load i64, ptr %l14, !tbaa !24
  %t193 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t189, i64 %t190)
  store i64 %t193, ptr %l104
  br label %bb44
bb44:
  %t194 = load i64, ptr %l5, !tbaa !24
  %t195 = load i64, ptr %l14, !tbaa !24
  %t197 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t198 = load ptr, ptr %t197, !tbaa !27
  %t199 = getelementptr i64, ptr %t198, i64 %t195
  %t200 = load i64, ptr %t199, !tbaa !34
  %t203 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s6, i64 %t194, i64 %t200)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t203, ptr %l108
  br label %bb45
bb45:
  %t204 = load ptr, ptr %l100, !tbaa !29
  %t205 = load i64, ptr %l104, !tbaa !24
  %t206 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l108
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fpair_3aPair_3cI64_2c_20_Hd47ddefe3838698aaa5711f2f63b01ed(ptr %s0, ptr %t204, i64 %t205, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t206)
  br label %bb46
bb46:
  call void @__olang_scope_close(ptr %s6)
  br label %bb47
bb47:
  %t207 = load i64, ptr %l13, !tbaa !24
  %t209 = add i64 %t207, 1
  store i64 %t209, ptr %l13, !tbaa !24
  br label %bb32
bb48:
  %t211 = load ptr, ptr %l1, !tbaa !29
  store ptr %t211, ptr %l111, !tbaa !29
  %t212 = load i64, ptr %l5, !tbaa !24
  store i64 %t212, ptr %l112, !tbaa !24
  %t213 = load %"compiler/eval:Image", ptr %l8
  store %"compiler/eval:Image" %t213, ptr %l113
  %t215 = call %"compiler/eval:Image" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2feval_3aImage(ptr %s2, ptr %l113)
  store %"compiler/eval:Image" %t215, ptr %l115
  br label %bb49
bb49:
  %t216 = load ptr, ptr %l111, !tbaa !29
  %t217 = load i64, ptr %l112, !tbaa !24
  %t218 = load %"compiler/eval:Image", ptr %l115
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2feval_3aImage_3e_2e_Hb8bfbe57c0e5b70e405cb38b3b12641e(ptr %v1, ptr %s2, ptr %t216, i64 %t217, %"compiler/eval:Image" %t218)
  br label %bb50
bb50:
  call void @__olang_scope_close(ptr %s2)
  br label %bb51
bb51:
  %t219 = load i64, ptr %l4, !tbaa !24
  %t221 = add i64 %t219, 1
  store i64 %t221, ptr %l4, !tbaa !24
  br label %bb2
bb52:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2finterp_2estaleNotes(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2, i64 %a3, %"compiler/source:Span" %a4) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca i64
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca { i64, %"compiler/source:Span" }
  %l6 = alloca i64
  %l7 = alloca %"compiler/source:Span"
  %l8 = alloca ptr
  %l9 = alloca i64
  %l15 = alloca { i64, [3 x i64] }
  %l16 = alloca %"compiler/diagmsg:Msg"
  %l19 = alloca { i64, %"compiler/source:Span" }
  %l24 = alloca ptr
  %l25 = alloca i64
  %l31 = alloca { i64, [3 x i64] }
  %l32 = alloca %"compiler/diagmsg:Msg"
  %t12 = alloca { i64, [3 x i64] }, align 8
  %t54 = alloca { i64, [3 x i64] }, align 8
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
  store %"compiler/source:Span" %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l8, !tbaa !29
  %t2 = load i64, ptr %l2, !tbaa !24
  store i64 %t2, ptr %l9, !tbaa !24
  %t4 = getelementptr %"compiler/source:Span", ptr %l4, i32 0, i32 0
  %t5 = load i32, ptr %t4, !tbaa !23
  %t7 = sext i32 %t5 to i64
  %t8 = getelementptr %"compiler/source:Span", ptr %l4, i32 0, i32 1
  %t9 = load i32, ptr %t8, !tbaa !23
  %t11 = sext i32 %t9 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t12
  %t13 = getelementptr { i64, [3 x i64] }, ptr %t12, i32 0, i32 0
  store i64 3, ptr %t13
  %t15 = insertvalue { i64, i64, i64 } undef, i64 %a3, 0
  %t17 = insertvalue { i64, i64, i64 } %t15, i64 %t7, 1
  %t19 = insertvalue { i64, i64, i64 } %t17, i64 %t11, 2
  %t20 = getelementptr { i64, [3 x i64] }, ptr %t12, i32 0, i32 1
  store { i64, i64, i64 } %t19, ptr %t20
  %t21 = load { i64, [3 x i64] }, ptr %t12
  store { i64, [3 x i64] } %t21, ptr %l15
  %t22 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteHere(ptr %v1)
  store %"compiler/diagmsg:Msg" %t22, ptr %l16
  br label %bb1
bb1:
  %t23 = load ptr, ptr %l8, !tbaa !29
  %t24 = load i64, ptr %l9, !tbaa !24
  %t25 = load { i64, [3 x i64] }, ptr %l15
  %t26 = load %"compiler/diagmsg:Msg", ptr %l16
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v1, ptr %v1, ptr %t23, i64 %t24, { i64, [3 x i64] } %t25, %"compiler/diagmsg:Msg" %t26)
  br label %bb2
bb2:
  %t29 = getelementptr %"compiler/interp:Exec", ptr %a0, i32 0, i32 4
  %t31 = call { i64, %"compiler/source:Span" } @compiler_2feval_2ecompiler_2feval_3aMachine_2eStaleGrewAt(ptr %v0, ptr %t29)
  store { i64, %"compiler/source:Span" } %t31, ptr %l19
  br label %bb3
bb3:
  %t32 = load { i64, %"compiler/source:Span" }, ptr %l19
  store { i64, %"compiler/source:Span" } %t32, ptr %l5
  %t33 = getelementptr { i64, %"compiler/source:Span" }, ptr %l5, i32 0, i32 0
  %t34 = load i64, ptr %t33, !tbaa !24
  store i64 %t34, ptr %l6, !tbaa !24
  %t36 = getelementptr { i64, %"compiler/source:Span" }, ptr %l5, i32 0, i32 1
  %t37 = load %"compiler/source:Span", ptr %t36
  store %"compiler/source:Span" %t37, ptr %l7
  %t39 = load i64, ptr %l6, !tbaa !24
  %t41 = icmp sge i64 %t39, 0
  br i1 %t41, label %bb4, label %bb5
bb4:
  %t43 = load ptr, ptr %l1, !tbaa !29
  store ptr %t43, ptr %l24, !tbaa !29
  %t44 = load i64, ptr %l2, !tbaa !24
  store i64 %t44, ptr %l25, !tbaa !24
  %t45 = load i64, ptr %l6, !tbaa !24
  %t46 = getelementptr %"compiler/source:Span", ptr %l7, i32 0, i32 0
  %t47 = load i32, ptr %t46, !tbaa !23
  %t49 = sext i32 %t47 to i64
  %t50 = getelementptr %"compiler/source:Span", ptr %l7, i32 0, i32 1
  %t51 = load i32, ptr %t50, !tbaa !23
  %t53 = sext i32 %t51 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t54
  %t55 = getelementptr { i64, [3 x i64] }, ptr %t54, i32 0, i32 0
  store i64 3, ptr %t55
  %t57 = insertvalue { i64, i64, i64 } undef, i64 %t45, 0
  %t59 = insertvalue { i64, i64, i64 } %t57, i64 %t49, 1
  %t61 = insertvalue { i64, i64, i64 } %t59, i64 %t53, 2
  %t62 = getelementptr { i64, [3 x i64] }, ptr %t54, i32 0, i32 1
  store { i64, i64, i64 } %t61, ptr %t62
  %t63 = load { i64, [3 x i64] }, ptr %t54
  store { i64, [3 x i64] } %t63, ptr %l31
  %t64 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteVecGrewHere(ptr %v1)
  store %"compiler/diagmsg:Msg" %t64, ptr %l32
  br label %bb6
bb5:
  br label %bb8
bb6:
  %t65 = load ptr, ptr %l24, !tbaa !29
  %t66 = load i64, ptr %l25, !tbaa !24
  %t67 = load { i64, [3 x i64] }, ptr %l31
  %t68 = load %"compiler/diagmsg:Msg", ptr %l32
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v1, ptr %v1, ptr %t65, i64 %t66, { i64, [3 x i64] } %t67, %"compiler/diagmsg:Msg" %t68)
  br label %bb7
bb7:
  br label %bb8
bb8:
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2finterp_2estopWhy(ptr %v0, ptr %v1, { i64, [5 x i64] } %a0) #0 {
entry:
  %l1 = alloca { { i64, ptr }, i64, %"compiler/source:Span" }
  %lp2 = alloca ptr
  %l3 = alloca { i64, [5 x i64] }
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca { { i64, ptr }, i64, %"compiler/source:Span" }
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store { i64, [5 x i64] } %a0, ptr %l3
  %t2 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 -1, i32 -1)
  store %"compiler/source:Span" %t2, ptr %l4
  br label %bb1
bb1:
  %t3 = load { i64, [5 x i64] }, ptr %l3
  %t4 = load %"compiler/source:Span", ptr %l4
  %t5 = call { { i64, ptr }, i64, %"compiler/source:Span" } @compiler_2finterp_2evalueWhy(ptr %v0, ptr %s0, { i64, [5 x i64] } %t3, %"compiler/source:Span" %t4)
  store { { i64, ptr }, i64, %"compiler/source:Span" } %t5, ptr %l5
  br label %bb2
bb2:
  %t6 = load { { i64, ptr }, i64, %"compiler/source:Span" }, ptr %l5
  store { { i64, ptr }, i64, %"compiler/source:Span" } %t6, ptr %l1
  %t7 = getelementptr { { i64, ptr }, i64, %"compiler/source:Span" }, ptr %l1, i32 0, i32 0
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
  store { i64, ptr } %t8, ptr %l6, !tbaa !27
  %t9 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t9, 0
  store i64 %t10, ptr %l7, !tbaa !24
  %t11 = load i64, ptr %l7, !tbaa !24
  %t12 = mul i64 %t11, 1
  %t13 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t12)
  %t14 = insertvalue { i64, ptr } undef, i64 %t11, 0
  %t15 = insertvalue { i64, ptr } %t14, ptr %t13, 1
  store { i64, ptr } %t15, ptr %l8, !tbaa !27
  %t16 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !27
  %t18 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = load i64, ptr %l7, !tbaa !24
  %t21 = mul i64 %t20, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t17, ptr %t19, i64 %t21, i1 false)
  %t22 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t22, ptr %lp2
  %t23 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t24 = load ptr, ptr %lp2
  store { i64, ptr } %t23, ptr %t24, !tbaa !27
  %t25 = load ptr, ptr %lp2
  %t26 = load { i64, ptr }, ptr %t25, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t26, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2finterp_2eunbaked(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, ptr %a1, ptr %a2, i64 %a3, ptr %a4, ptr %a5, ptr %a6) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca { { i64, ptr }, i64, %"compiler/source:Span" }
  %lp9 = alloca ptr
  %l10 = alloca { { i64, ptr }, i64, %"compiler/source:Span" }
  %l11 = alloca { i64, ptr }
  %l12 = alloca { i64, [3 x i64] }
  %l13 = alloca { i64, [5 x i64] }
  %l14 = alloca { i64, ptr }
  %l15 = alloca i64
  %l16 = alloca %"compiler/source:Span"
  %l18 = alloca i32
  %l19 = alloca i64
  %l20 = alloca %"compiler/source:Span"
  %l21 = alloca i64
  %l25 = alloca ptr
  %l29 = alloca i1
  %l34 = alloca { { i64, ptr }, i64, %"compiler/source:Span" }
  %l35 = alloca { i64, ptr }
  %l36 = alloca i64
  %l37 = alloca { i64, ptr }
  %l44 = alloca i1
  %l51 = alloca { { i64, ptr }, i64, %"compiler/source:Span" }
  %l56 = alloca i1
  %l58 = alloca i1
  %l60 = alloca i1
  %l62 = alloca ptr
  %l71 = alloca { i64, [3 x i64] }
  %l73 = alloca %"compiler/diagmsg:Msg"
  %l74 = alloca i64
  %l93 = alloca i1
  %l98 = alloca i32
  %l100 = alloca i1
  %l101 = alloca ptr
  %l102 = alloca { i64, [3 x i64] }
  %l104 = alloca %"compiler/diagmsg:Msg"
  %l105 = alloca i64
  %l118 = alloca i1
  %l124 = alloca i32
  %l126 = alloca i1
  %l127 = alloca ptr
  %l128 = alloca { i64, [3 x i64] }
  %l130 = alloca { i64, ptr }
  %l131 = alloca %"compiler/diagmsg:Msg"
  %l132 = alloca i64
  %l137 = alloca i1
  %l142 = alloca i64
  %l149 = alloca i64
  %l151 = alloca ptr
  %l152 = alloca i64
  %l158 = alloca { i64, [3 x i64] }
  %l159 = alloca %"compiler/diagmsg:Msg"
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %t120 = alloca { i64, [3 x i64] }, align 8
  %t155 = alloca { i64, [3 x i64] }, align 8
  %t335 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a2, ptr %l2
  store i64 %a3, ptr %l3
  store ptr %a4, ptr %l4
  store ptr %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/interp:Exec", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t5 = load i64, ptr %l3, !tbaa !24
  %t8 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t4, i64 %t5)
  store ptr %t8, ptr %l25
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l25, !tbaa !29
  store ptr %t9, ptr %l7, !tbaa !29
  %t12 = getelementptr %"compiler/check:Checker", ptr %a1, i32 0, i32 147
  %t13 = load i64, ptr %l3, !tbaa !24
  %t16 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fsource_3aSpan_3e_2_Hcc4dae5da0ed3c5355f9c78c0e71655b(ptr %v1, ptr %t12, i64 %t13)
  store i1 %t16, ptr %l29
  br label %bb2
bb2:
  %t17 = load i1, ptr %l29, !tbaa !21
  br i1 %t17, label %bb3, label %bb4
bb3:
  store %olang.scope zeroinitializer, ptr %s1
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/interp:Exec", ptr %t18, i32 0, i32 4
  %t21 = getelementptr %"compiler/eval:Machine", ptr %t20, i32 0, i32 20
  %t22 = load { i64, [5 x i64] }, ptr %t21
  %t23 = load ptr, ptr %l7, !tbaa !29
  %t25 = getelementptr %"compiler/typed:Body", ptr %t23, i32 0, i32 4
  %t26 = load %"compiler/source:Span", ptr %t25
  %t29 = call { { i64, ptr }, i64, %"compiler/source:Span" } @compiler_2finterp_2evalueWhy(ptr %v0, ptr %s1, { i64, [5 x i64] } %t22, %"compiler/source:Span" %t26)
  store { { i64, ptr }, i64, %"compiler/source:Span" } %t29, ptr %l34
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t30 = load { { i64, ptr }, i64, %"compiler/source:Span" }, ptr %l34
  store { { i64, ptr }, i64, %"compiler/source:Span" } %t30, ptr %l8
  %t31 = getelementptr { { i64, ptr }, i64, %"compiler/source:Span" }, ptr %l8, i32 0, i32 0
  %t32 = load { i64, ptr }, ptr %t31, !tbaa !27
  store { i64, ptr } %t32, ptr %l35, !tbaa !27
  %t33 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t34 = extractvalue { i64, ptr } %t33, 0
  store i64 %t34, ptr %l36, !tbaa !24
  %t35 = load i64, ptr %l36, !tbaa !24
  %t36 = mul i64 %t35, 1
  %t37 = call ptr @__olang_scope_alloc(ptr %v5, i64 %t36)
  %t38 = insertvalue { i64, ptr } undef, i64 %t35, 0
  %t39 = insertvalue { i64, ptr } %t38, ptr %t37, 1
  store { i64, ptr } %t39, ptr %l37, !tbaa !27
  %t40 = getelementptr { i64, ptr }, ptr %l37, i32 0, i32 1
  %t41 = load ptr, ptr %t40, !tbaa !27
  %t42 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t43 = load ptr, ptr %t42, !tbaa !27
  %t44 = load i64, ptr %l36, !tbaa !24
  %t45 = mul i64 %t44, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t41, ptr %t43, i64 %t45, i1 false)
  %t46 = call ptr @__olang_scope_alloc_a(ptr %v5, i64 16, i64 8)
  store ptr %t46, ptr %lp9
  %t47 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t48 = load ptr, ptr %lp9
  store { i64, ptr } %t47, ptr %t48, !tbaa !27
  %t50 = load i64, ptr %l3, !tbaa !24
  %t51 = load ptr, ptr %lp9
  %t52 = load { i64, ptr }, ptr %t51, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_Hc3dff1927e5c626a9d95abfdf4e9a462(ptr %v5, ptr %v5, ptr %a6, i64 %t50, { i64, ptr } %t52)
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s1)
  br label %ret
bb7:
  %t56 = load ptr, ptr %l4, !tbaa !29
  %t58 = icmp eq ptr %t56, null
  %t60 = xor i1 %t58, true
  br i1 %t60, label %bb8, label %bb9
bb8:
  %t62 = load ptr, ptr %l4, !tbaa !29
  %t64 = getelementptr %"compiler/ast:VarDecl", ptr %t62, i32 0, i32 7
  %t65 = load i1, ptr %t64, !tbaa !21
  store i1 %t65, ptr %l44, !tbaa !21
  br label %bb10
bb9:
  store i1 false, ptr %l44, !tbaa !21
  br label %bb10
bb10:
  %t67 = load i1, ptr %l44, !tbaa !21
  br i1 %t67, label %bb11, label %bb12
bb11:
  store %olang.scope zeroinitializer, ptr %s2
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/interp:Exec", ptr %t68, i32 0, i32 4
  %t71 = getelementptr %"compiler/eval:Machine", ptr %t70, i32 0, i32 20
  %t72 = load { i64, [5 x i64] }, ptr %t71
  %t73 = load ptr, ptr %l7, !tbaa !29
  %t75 = getelementptr %"compiler/typed:Body", ptr %t73, i32 0, i32 4
  %t76 = load %"compiler/source:Span", ptr %t75
  %t79 = call { { i64, ptr }, i64, %"compiler/source:Span" } @compiler_2finterp_2evalueWhy(ptr %v0, ptr %s2, { i64, [5 x i64] } %t72, %"compiler/source:Span" %t76)
  store { { i64, ptr }, i64, %"compiler/source:Span" } %t79, ptr %l51
  br label %bb13
bb12:
  br label %bb24
bb13:
  %t80 = load { { i64, ptr }, i64, %"compiler/source:Span" }, ptr %l51
  store { { i64, ptr }, i64, %"compiler/source:Span" } %t80, ptr %l10
  %t81 = getelementptr { { i64, ptr }, i64, %"compiler/source:Span" }, ptr %l10, i32 0, i32 0
  %t82 = load { i64, ptr }, ptr %t81, !tbaa !27
  store { i64, ptr } %t82, ptr %l11, !tbaa !27
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t86 = getelementptr %"compiler/interp:Exec", ptr %t84, i32 0, i32 10
  %t87 = load i64, ptr %l3, !tbaa !24
  %t90 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t86, i64 %t87)
  store i1 %t90, ptr %l56
  br label %bb14
bb14:
  %t91 = load i1, ptr %l56, !tbaa !21
  %t92 = xor i1 %t91, true
  br i1 %t92, label %bb15, label %bb16
bb15:
  %t94 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t96 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s2, ptr %s2, { i64, ptr } %t94, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d128, i32 0, i32 1) })
  store i1 %t96, ptr %l60
  br label %bb17
bb16:
  store i1 false, ptr %l58, !tbaa !21
  br label %bb18
bb17:
  %t97 = load i1, ptr %l60, !tbaa !21
  %t98 = xor i1 %t97, true
  store i1 %t98, ptr %l58, !tbaa !21
  br label %bb18
bb18:
  %t100 = load i1, ptr %l58, !tbaa !21
  br i1 %t100, label %bb19, label %bb20
bb19:
  %t101 = load ptr, ptr %l2, !tbaa !29
  store ptr %t101, ptr %l62, !tbaa !29
  %t102 = load ptr, ptr %l7, !tbaa !29
  %t104 = getelementptr %"compiler/typed:Body", ptr %t102, i32 0, i32 3
  %t105 = load i64, ptr %t104, !tbaa !24
  %t106 = load ptr, ptr %l7, !tbaa !29
  %t108 = getelementptr %"compiler/typed:Body", ptr %t106, i32 0, i32 4
  %t109 = getelementptr %"compiler/source:Span", ptr %t108, i32 0, i32 0
  %t110 = load i32, ptr %t109, !tbaa !23
  %t112 = sext i32 %t110 to i64
  %t113 = load ptr, ptr %l7, !tbaa !29
  %t115 = getelementptr %"compiler/typed:Body", ptr %t113, i32 0, i32 4
  %t116 = getelementptr %"compiler/source:Span", ptr %t115, i32 0, i32 1
  %t117 = load i32, ptr %t116, !tbaa !23
  %t119 = sext i32 %t117 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t120
  %t121 = getelementptr { i64, [3 x i64] }, ptr %t120, i32 0, i32 0
  store i64 3, ptr %t121
  %t123 = insertvalue { i64, i64, i64 } undef, i64 %t105, 0
  %t125 = insertvalue { i64, i64, i64 } %t123, i64 %t112, 1
  %t127 = insertvalue { i64, i64, i64 } %t125, i64 %t119, 2
  %t128 = getelementptr { i64, [3 x i64] }, ptr %t120, i32 0, i32 1
  store { i64, i64, i64 } %t127, ptr %t128
  %t129 = load { i64, [3 x i64] }, ptr %t120
  store { i64, [3 x i64] } %t129, ptr %l71
  %t130 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t132 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAttrNotBuilt(ptr %s2, ptr %v2, { i64, ptr } %t130)
  store %"compiler/diagmsg:Msg" %t132, ptr %l73
  br label %bb21
bb20:
  br label %bb23
bb21:
  %t133 = load ptr, ptr %l62, !tbaa !29
  %t134 = load { i64, [3 x i64] }, ptr %l71
  %t135 = load %"compiler/diagmsg:Msg", ptr %l73
  %t136 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v2, ptr %v2, ptr %t133, { i64, [3 x i64] } %t134, %"compiler/diagmsg:Msg" %t135)
  store i64 %t136, ptr %l74
  br label %bb22
bb22:
  br label %bb23
bb23:
  call void @__olang_scope_close(ptr %s2)
  br label %ret
bb24:
  %t137 = load ptr, ptr %l7, !tbaa !29
  %t139 = getelementptr %"compiler/typed:Body", ptr %t137, i32 0, i32 3
  %t140 = load i64, ptr %t139, !tbaa !24
  %t141 = load ptr, ptr %l7, !tbaa !29
  %t143 = getelementptr %"compiler/typed:Body", ptr %t141, i32 0, i32 4
  %t144 = getelementptr %"compiler/source:Span", ptr %t143, i32 0, i32 0
  %t145 = load i32, ptr %t144, !tbaa !23
  %t147 = sext i32 %t145 to i64
  %t148 = load ptr, ptr %l7, !tbaa !29
  %t150 = getelementptr %"compiler/typed:Body", ptr %t148, i32 0, i32 4
  %t151 = getelementptr %"compiler/source:Span", ptr %t150, i32 0, i32 1
  %t152 = load i32, ptr %t151, !tbaa !23
  %t154 = sext i32 %t152 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t155
  %t156 = getelementptr { i64, [3 x i64] }, ptr %t155, i32 0, i32 0
  store i64 3, ptr %t156
  %t158 = insertvalue { i64, i64, i64 } undef, i64 %t140, 0
  %t160 = insertvalue { i64, i64, i64 } %t158, i64 %t147, 1
  %t162 = insertvalue { i64, i64, i64 } %t160, i64 %t154, 2
  %t163 = getelementptr { i64, [3 x i64] }, ptr %t155, i32 0, i32 1
  store { i64, i64, i64 } %t162, ptr %t163
  %t164 = load { i64, [3 x i64] }, ptr %t155
  store { i64, [3 x i64] } %t164, ptr %l12
  %t166 = load ptr, ptr %l0, !tbaa !29
  %t168 = getelementptr %"compiler/interp:Exec", ptr %t166, i32 0, i32 4
  %t169 = getelementptr %"compiler/eval:Machine", ptr %t168, i32 0, i32 20
  %t170 = load { i64, [5 x i64] }, ptr %t169
  store { i64, [5 x i64] } %t170, ptr %l13
  %t172 = load { i64, [5 x i64] }, ptr %l13
  %t174 = extractvalue { i64, [5 x i64] } %t172, 0
  %t175 = icmp eq i64 %t174, 3
  br i1 %t175, label %bb25, label %bb26
bb25:
  %t177 = getelementptr { i64, [5 x i64] }, ptr %l13, i32 0, i32 1
  %t178 = getelementptr { { i64, ptr }, i64, %"compiler/source:Span" }, ptr %t177, i32 0, i32 0
  %t179 = load { i64, ptr }, ptr %t178
  store { i64, ptr } %t179, ptr %l14, !tbaa !27
  %t181 = getelementptr { i64, [5 x i64] }, ptr %l13, i32 0, i32 1
  %t182 = getelementptr { { i64, ptr }, i64, %"compiler/source:Span" }, ptr %t181, i32 0, i32 1
  %t183 = load i64, ptr %t182
  store i64 %t183, ptr %l15, !tbaa !24
  %t185 = getelementptr { i64, [5 x i64] }, ptr %l13, i32 0, i32 1
  %t186 = getelementptr { { i64, ptr }, i64, %"compiler/source:Span" }, ptr %t185, i32 0, i32 2
  %t187 = load %"compiler/source:Span", ptr %t186
  store %"compiler/source:Span" %t187, ptr %l16
  br label %bb27
bb26:
  br label %bb39
bb27:
  %t189 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t190 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyStale, !tbaa !27
  %t191 = load ptr, ptr @__olang_prog_scope
  %t194 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %t191, { i64, ptr } %t189, { i64, ptr } %t190)
  store i1 %t194, ptr %l93
  br label %bb28
bb28:
  %t195 = load i1, ptr %l93, !tbaa !21
  %t196 = xor i1 %t195, true
  br i1 %t196, label %bb29, label %bb30
bb29:
  br label %ret
bb30:
  br label %bb31
bb31:
  %t198 = load ptr, ptr %l5, !tbaa !29
  %t199 = load i64, ptr %l15, !tbaa !24
  %t200 = load %"compiler/source:Span", ptr %l16
  %t204 = call i32 @compiler_2finterp_2efirstAt(ptr %v4, ptr %t198, i64 %t199, %"compiler/source:Span" %t200)
  store i32 %t204, ptr %l98
  %t205 = icmp ne i32 %t204, 0
  br i1 %t205, label %bb33, label %ok.206, !prof !99
ok.206:
  br label %bb32
bb32:
  br label %bb35
bb33:
  %t207 = load i32, ptr %l98, !tbaa !23
  %t208 = ashr i32 %t207, 16
  %t210 = icmp eq i32 %t208, 1
  store i1 %t210, ptr %l100, !tbaa !21
  br label %bb34
bb34:
  br label %ret
bb35:
  %t211 = load ptr, ptr %l2, !tbaa !29
  store ptr %t211, ptr %l101, !tbaa !29
  %t212 = load { i64, [3 x i64] }, ptr %l12
  store { i64, [3 x i64] } %t212, ptr %l102
  %t213 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t215 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eGlobalStale(ptr %v0, ptr %v2, { i64, ptr } %t213)
  store %"compiler/diagmsg:Msg" %t215, ptr %l104
  br label %bb36
bb36:
  %t216 = load ptr, ptr %l101, !tbaa !29
  %t217 = load { i64, [3 x i64] }, ptr %l102
  %t218 = load %"compiler/diagmsg:Msg", ptr %l104
  %t219 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v2, ptr %v2, ptr %t216, { i64, [3 x i64] } %t217, %"compiler/diagmsg:Msg" %t218)
  store i64 %t219, ptr %l105
  br label %bb37
bb37:
  %t220 = load i64, ptr %l105, !tbaa !24
  %t221 = load ptr, ptr %l0, !tbaa !29
  %t222 = load ptr, ptr %l2, !tbaa !29
  %t224 = load i64, ptr %l15, !tbaa !24
  %t225 = load %"compiler/source:Span", ptr %l16
  call void @compiler_2finterp_2estaleNotes(ptr %v0, ptr %v2, ptr %t221, ptr %t222, i64 %t220, i64 %t224, %"compiler/source:Span" %t225)
  br label %bb38
bb38:
  br label %bb71
bb39:
  %t231 = load { i64, [5 x i64] }, ptr %l13
  %t233 = extractvalue { i64, [5 x i64] } %t231, 0
  %t234 = icmp eq i64 %t233, 2
  br i1 %t234, label %bb40, label %bb41
bb40:
  %t236 = getelementptr { i64, [5 x i64] }, ptr %l13, i32 0, i32 1
  %t237 = getelementptr { i32, i64, %"compiler/source:Span", { i64, ptr } }, ptr %t236, i32 0, i32 0
  %t238 = load i32, ptr %t237, !range !{i32 0, i32 20}
  store i32 %t238, ptr %l18
  %t240 = getelementptr { i64, [5 x i64] }, ptr %l13, i32 0, i32 1
  %t241 = getelementptr { i32, i64, %"compiler/source:Span", { i64, ptr } }, ptr %t240, i32 0, i32 1
  %t242 = load i64, ptr %t241
  store i64 %t242, ptr %l19, !tbaa !24
  %t244 = getelementptr { i64, [5 x i64] }, ptr %l13, i32 0, i32 1
  %t245 = getelementptr { i32, i64, %"compiler/source:Span", { i64, ptr } }, ptr %t244, i32 0, i32 2
  %t246 = load %"compiler/source:Span", ptr %t245
  store %"compiler/source:Span" %t246, ptr %l20
  br label %bb42
bb41:
  br label %bb66
bb42:
  store %olang.scope zeroinitializer, ptr %s7
  %t248 = load i32, ptr %l18, !range !{i32 0, i32 20}
  %t250 = trunc i64 0 to i32
  %t251 = icmp eq i32 %t248, %t250
  br i1 %t251, label %bb43, label %bb44
bb43:
  store i1 true, ptr %l118, !tbaa !21
  br label %bb45
bb44:
  %t253 = load i32, ptr %l18, !range !{i32 0, i32 20}
  %t255 = trunc i64 1 to i32
  %t256 = icmp eq i32 %t253, %t255
  store i1 %t256, ptr %l118, !tbaa !21
  br label %bb45
bb45:
  %t258 = load i1, ptr %l118, !tbaa !21
  br i1 %t258, label %bb46, label %bb47
bb46:
  call void @__olang_scope_close(ptr %s7)
  br label %ret
bb47:
  br label %bb48
bb48:
  %t259 = load ptr, ptr %l5, !tbaa !29
  %t260 = load i64, ptr %l19, !tbaa !24
  %t261 = load %"compiler/source:Span", ptr %l20
  %t265 = call i32 @compiler_2finterp_2efirstAt(ptr %v4, ptr %t259, i64 %t260, %"compiler/source:Span" %t261)
  store i32 %t265, ptr %l124
  %t266 = icmp ne i32 %t265, 0
  br i1 %t266, label %bb50, label %ok.267, !prof !99
ok.267:
  br label %bb49
bb49:
  br label %bb52
bb50:
  %t268 = load i32, ptr %l124, !tbaa !23
  %t269 = ashr i32 %t268, 16
  %t271 = icmp eq i32 %t269, 1
  store i1 %t271, ptr %l126, !tbaa !21
  br label %bb51
bb51:
  call void @__olang_scope_close(ptr %s7)
  br label %ret
bb52:
  %t272 = load ptr, ptr %l2, !tbaa !29
  store ptr %t272, ptr %l127, !tbaa !29
  %t273 = load { i64, [3 x i64] }, ptr %l12
  store { i64, [3 x i64] } %t273, ptr %l128
  %t274 = load i32, ptr %l18, !range !{i32 0, i32 20}
  %t276 = call { i64, ptr } @compiler_2finterp_2eAbortWhy(ptr %s7, i32 %t274)
  store { i64, ptr } %t276, ptr %l130
  br label %bb53
bb53:
  %t277 = load { i64, ptr }, ptr %l130, !tbaa !27
  %t278 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eGlobalAborts(ptr %s7, ptr %v2, { i64, ptr } %t277)
  store %"compiler/diagmsg:Msg" %t278, ptr %l131
  br label %bb54
bb54:
  %t279 = load ptr, ptr %l127, !tbaa !29
  %t280 = load { i64, [3 x i64] }, ptr %l128
  %t281 = load %"compiler/diagmsg:Msg", ptr %l131
  %t282 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v2, ptr %v2, ptr %t279, { i64, [3 x i64] } %t280, %"compiler/diagmsg:Msg" %t281)
  store i64 %t282, ptr %l132
  br label %bb55
bb55:
  %t283 = load i64, ptr %l132, !tbaa !24
  store i64 %t283, ptr %l21, !tbaa !24
  %t284 = load i64, ptr %l19, !tbaa !24
  %t285 = load ptr, ptr %l7, !tbaa !29
  %t287 = getelementptr %"compiler/typed:Body", ptr %t285, i32 0, i32 3
  %t288 = load i64, ptr %t287, !tbaa !24
  %t291 = icmp ne i64 %t284, %t288
  br i1 %t291, label %bb56, label %bb57
bb56:
  store i1 true, ptr %l137, !tbaa !21
  br label %bb60
bb57:
  %t293 = load ptr, ptr %l2, !tbaa !29
  %t294 = load i64, ptr %l19, !tbaa !24
  %t295 = getelementptr %"compiler/source:Span", ptr %l20, i32 0, i32 0
  %t296 = load i32, ptr %t295, !tbaa !23
  %t298 = sext i32 %t296 to i64
  %t302 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eLineAt(ptr %v2, ptr %t293, i64 %t294, i64 %t298)
  store i64 %t302, ptr %l142
  br label %bb58
bb58:
  %t303 = load ptr, ptr %l2, !tbaa !29
  %t304 = load ptr, ptr %l7, !tbaa !29
  %t306 = getelementptr %"compiler/typed:Body", ptr %t304, i32 0, i32 3
  %t307 = load i64, ptr %t306, !tbaa !24
  %t308 = load ptr, ptr %l7, !tbaa !29
  %t310 = getelementptr %"compiler/typed:Body", ptr %t308, i32 0, i32 4
  %t311 = getelementptr %"compiler/source:Span", ptr %t310, i32 0, i32 0
  %t312 = load i32, ptr %t311, !tbaa !23
  %t314 = sext i32 %t312 to i64
  %t318 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eLineAt(ptr %v2, ptr %t303, i64 %t307, i64 %t314)
  store i64 %t318, ptr %l149
  br label %bb59
bb59:
  %t319 = load i64, ptr %l142, !tbaa !24
  %t320 = load i64, ptr %l149, !tbaa !24
  %t321 = icmp ne i64 %t319, %t320
  store i1 %t321, ptr %l137, !tbaa !21
  br label %bb60
bb60:
  %t323 = load i1, ptr %l137, !tbaa !21
  br i1 %t323, label %bb61, label %bb62
bb61:
  %t324 = load ptr, ptr %l2, !tbaa !29
  store ptr %t324, ptr %l151, !tbaa !29
  %t325 = load i64, ptr %l21, !tbaa !24
  store i64 %t325, ptr %l152, !tbaa !24
  %t326 = load i64, ptr %l19, !tbaa !24
  %t327 = getelementptr %"compiler/source:Span", ptr %l20, i32 0, i32 0
  %t328 = load i32, ptr %t327, !tbaa !23
  %t330 = sext i32 %t328 to i64
  %t331 = getelementptr %"compiler/source:Span", ptr %l20, i32 0, i32 1
  %t332 = load i32, ptr %t331, !tbaa !23
  %t334 = sext i32 %t332 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t335
  %t336 = getelementptr { i64, [3 x i64] }, ptr %t335, i32 0, i32 0
  store i64 3, ptr %t336
  %t338 = insertvalue { i64, i64, i64 } undef, i64 %t326, 0
  %t340 = insertvalue { i64, i64, i64 } %t338, i64 %t330, 1
  %t342 = insertvalue { i64, i64, i64 } %t340, i64 %t334, 2
  %t343 = getelementptr { i64, [3 x i64] }, ptr %t335, i32 0, i32 1
  store { i64, i64, i64 } %t342, ptr %t343
  %t344 = load { i64, [3 x i64] }, ptr %t335
  store { i64, [3 x i64] } %t344, ptr %l158
  %t345 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteHere(ptr %v2)
  store %"compiler/diagmsg:Msg" %t345, ptr %l159
  br label %bb63
bb62:
  br label %bb65
bb63:
  %t346 = load ptr, ptr %l151, !tbaa !29
  %t347 = load i64, ptr %l152, !tbaa !24
  %t348 = load { i64, [3 x i64] }, ptr %l158
  %t349 = load %"compiler/diagmsg:Msg", ptr %l159
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v2, ptr %v2, ptr %t346, i64 %t347, { i64, [3 x i64] } %t348, %"compiler/diagmsg:Msg" %t349)
  br label %bb64
bb64:
  br label %bb65
bb65:
  call void @__olang_scope_close(ptr %s7)
  br label %bb71
bb66:
  br i1 true, label %bb67, label %bb68
bb67:
  br label %bb69
bb68:
  br label %bb70
bb69:
  br label %bb71
bb70:
  call void @__olang_check_failed(ptr @olang_loc_7adf7e442ebbc99f_3e36fcedb7533913)
  unreachable
bb71:
  br label %ret
ret:
  ret void
}

define dso_local { { i64, ptr }, i64, %"compiler/source:Span" } @compiler_2finterp_2evalueWhy(ptr %v0, ptr %v1, { i64, [5 x i64] } %a0, %"compiler/source:Span" %a1) #0 {
entry:
  %l0 = alloca { i64, [5 x i64] }
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca i32
  %l6 = alloca i64
  %l7 = alloca %"compiler/source:Span"
  %l10 = alloca { i64, ptr }
  %l13 = alloca { { i64, ptr }, i64, %"compiler/source:Span" }
  %l14 = alloca { i64, ptr }
  %l15 = alloca i64
  %l16 = alloca { i64, ptr }
  %l26 = alloca { { i64, ptr }, i64, %"compiler/source:Span" }
  %l27 = alloca { i64, ptr }
  %l28 = alloca i64
  %l29 = alloca { i64, ptr }
  %l37 = alloca i1
  %l41 = alloca { i64, ptr }
  %l44 = alloca { { i64, ptr }, i64, %"compiler/source:Span" }
  %l45 = alloca { i64, ptr }
  %l46 = alloca i64
  %l47 = alloca { i64, ptr }
  %l49 = alloca { i64, ptr }
  %l56 = alloca { i64, ptr }
  %l59 = alloca { { i64, ptr }, i64, %"compiler/source:Span" }
  %l60 = alloca { i64, ptr }
  %l61 = alloca i64
  %l62 = alloca { i64, ptr }
  %s3 = alloca %olang.scope
  %rv = alloca { { i64, ptr }, i64, %"compiler/source:Span" }
  store { i64, [5 x i64] } %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [5 x i64] }, ptr %l0
  %t3 = extractvalue { i64, [5 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 0
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %bb3
bb2:
  br label %bb4
bb3:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d129, i32 0, i32 1) }, ptr %l10, !tbaa !27
  %t6 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t7 = load %"compiler/source:Span", ptr %l1
  %t9 = insertvalue { { i64, ptr }, i64, %"compiler/source:Span" } undef, { i64, ptr } %t6, 0
  %t10 = insertvalue { { i64, ptr }, i64, %"compiler/source:Span" } %t9, i64 -1, 1
  %t12 = insertvalue { { i64, ptr }, i64, %"compiler/source:Span" } %t10, %"compiler/source:Span" %t7, 2
  store { { i64, ptr }, i64, %"compiler/source:Span" } %t12, ptr %l13
  %t13 = getelementptr { { i64, ptr }, i64, %"compiler/source:Span" }, ptr %l13, i32 0, i32 0
  %t14 = load { i64, ptr }, ptr %t13, !tbaa !27
  store { i64, ptr } %t14, ptr %l14, !tbaa !27
  %t15 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t16 = extractvalue { i64, ptr } %t15, 0
  store i64 %t16, ptr %l15, !tbaa !24
  %t17 = load i64, ptr %l15, !tbaa !24
  %t18 = mul i64 %t17, 1
  %t19 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t18)
  %t20 = insertvalue { i64, ptr } undef, i64 %t17, 0
  %t21 = insertvalue { i64, ptr } %t20, ptr %t19, 1
  store { i64, ptr } %t21, ptr %l16, !tbaa !27
  %t22 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !27
  %t24 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !27
  %t26 = load i64, ptr %l15, !tbaa !24
  %t27 = mul i64 %t26, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t23, ptr %t25, i64 %t27, i1 false)
  %t28 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t29 = getelementptr { { i64, ptr }, i64, %"compiler/source:Span" }, ptr %l13, i32 0, i32 0
  store { i64, ptr } %t28, ptr %t29, !tbaa !27
  %t30 = load { { i64, ptr }, i64, %"compiler/source:Span" }, ptr %l13
  store { { i64, ptr }, i64, %"compiler/source:Span" } %t30, ptr %rv
  br label %ret
bb4:
  %t31 = load { i64, [5 x i64] }, ptr %l0
  %t33 = extractvalue { i64, [5 x i64] } %t31, 0
  %t34 = icmp eq i64 %t33, 3
  br i1 %t34, label %bb5, label %bb6
bb5:
  %t36 = getelementptr { i64, [5 x i64] }, ptr %l0, i32 0, i32 1
  %t37 = getelementptr { { i64, ptr }, i64, %"compiler/source:Span" }, ptr %t36, i32 0, i32 0
  %t38 = load { i64, ptr }, ptr %t37
  store { i64, ptr } %t38, ptr %l2, !tbaa !27
  %t40 = getelementptr { i64, [5 x i64] }, ptr %l0, i32 0, i32 1
  %t41 = getelementptr { { i64, ptr }, i64, %"compiler/source:Span" }, ptr %t40, i32 0, i32 1
  %t42 = load i64, ptr %t41
  store i64 %t42, ptr %l3, !tbaa !24
  %t44 = getelementptr { i64, [5 x i64] }, ptr %l0, i32 0, i32 1
  %t45 = getelementptr { { i64, ptr }, i64, %"compiler/source:Span" }, ptr %t44, i32 0, i32 2
  %t46 = load %"compiler/source:Span", ptr %t45
  store %"compiler/source:Span" %t46, ptr %l4
  br label %bb7
bb6:
  br label %bb8
bb7:
  %t48 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t50 = load i64, ptr %l3, !tbaa !24
  %t51 = load %"compiler/source:Span", ptr %l4
  %t53 = insertvalue { { i64, ptr }, i64, %"compiler/source:Span" } undef, { i64, ptr } %t48, 0
  %t55 = insertvalue { { i64, ptr }, i64, %"compiler/source:Span" } %t53, i64 %t50, 1
  %t57 = insertvalue { { i64, ptr }, i64, %"compiler/source:Span" } %t55, %"compiler/source:Span" %t51, 2
  store { { i64, ptr }, i64, %"compiler/source:Span" } %t57, ptr %l26
  %t58 = getelementptr { { i64, ptr }, i64, %"compiler/source:Span" }, ptr %l26, i32 0, i32 0
  %t59 = load { i64, ptr }, ptr %t58, !tbaa !27
  store { i64, ptr } %t59, ptr %l27, !tbaa !27
  %t60 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t61 = extractvalue { i64, ptr } %t60, 0
  store i64 %t61, ptr %l28, !tbaa !24
  %t62 = load i64, ptr %l28, !tbaa !24
  %t63 = mul i64 %t62, 1
  %t64 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t63)
  %t65 = insertvalue { i64, ptr } undef, i64 %t62, 0
  %t66 = insertvalue { i64, ptr } %t65, ptr %t64, 1
  store { i64, ptr } %t66, ptr %l29, !tbaa !27
  %t67 = getelementptr { i64, ptr }, ptr %l29, i32 0, i32 1
  %t68 = load ptr, ptr %t67, !tbaa !27
  %t69 = getelementptr { i64, ptr }, ptr %l27, i32 0, i32 1
  %t70 = load ptr, ptr %t69, !tbaa !27
  %t71 = load i64, ptr %l28, !tbaa !24
  %t72 = mul i64 %t71, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t68, ptr %t70, i64 %t72, i1 false)
  %t73 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t74 = getelementptr { { i64, ptr }, i64, %"compiler/source:Span" }, ptr %l26, i32 0, i32 0
  store { i64, ptr } %t73, ptr %t74, !tbaa !27
  %t75 = load { { i64, ptr }, i64, %"compiler/source:Span" }, ptr %l26
  store { { i64, ptr }, i64, %"compiler/source:Span" } %t75, ptr %rv
  br label %ret
bb8:
  %t76 = load { i64, [5 x i64] }, ptr %l0
  %t78 = extractvalue { i64, [5 x i64] } %t76, 0
  %t79 = icmp eq i64 %t78, 2
  br i1 %t79, label %bb9, label %bb10
bb9:
  %t81 = getelementptr { i64, [5 x i64] }, ptr %l0, i32 0, i32 1
  %t82 = getelementptr { i32, i64, %"compiler/source:Span", { i64, ptr } }, ptr %t81, i32 0, i32 0
  %t83 = load i32, ptr %t82, !range !{i32 0, i32 20}
  store i32 %t83, ptr %l5
  %t85 = getelementptr { i64, [5 x i64] }, ptr %l0, i32 0, i32 1
  %t86 = getelementptr { i32, i64, %"compiler/source:Span", { i64, ptr } }, ptr %t85, i32 0, i32 1
  %t87 = load i64, ptr %t86
  store i64 %t87, ptr %l6, !tbaa !24
  %t89 = getelementptr { i64, [5 x i64] }, ptr %l0, i32 0, i32 1
  %t90 = getelementptr { i32, i64, %"compiler/source:Span", { i64, ptr } }, ptr %t89, i32 0, i32 2
  %t91 = load %"compiler/source:Span", ptr %t90
  store %"compiler/source:Span" %t91, ptr %l7
  br label %bb11
bb10:
  br label %bb19
bb11:
  store %olang.scope zeroinitializer, ptr %s3
  %t93 = load i32, ptr %l5, !range !{i32 0, i32 20}
  %t95 = trunc i64 3 to i32
  %t96 = icmp eq i32 %t93, %t95
  br i1 %t96, label %bb12, label %bb13
bb12:
  %t98 = getelementptr %"compiler/source:Span", ptr %l7, i32 0, i32 0
  %t99 = load i32, ptr %t98, !tbaa !23
  %t100 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t101 = load i32, ptr %t100, !tbaa !23
  %t104 = icmp eq i32 %t99, %t101
  store i1 %t104, ptr %l37, !tbaa !21
  br label %bb14
bb13:
  store i1 false, ptr %l37, !tbaa !21
  br label %bb14
bb14:
  %t106 = load i1, ptr %l37, !tbaa !21
  br i1 %t106, label %bb15, label %bb16
bb15:
  store { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d130, i32 0, i32 1) }, ptr %l41, !tbaa !27
  %t107 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t108 = load %"compiler/source:Span", ptr %l1
  %t110 = insertvalue { { i64, ptr }, i64, %"compiler/source:Span" } undef, { i64, ptr } %t107, 0
  %t111 = insertvalue { { i64, ptr }, i64, %"compiler/source:Span" } %t110, i64 -1, 1
  %t113 = insertvalue { { i64, ptr }, i64, %"compiler/source:Span" } %t111, %"compiler/source:Span" %t108, 2
  store { { i64, ptr }, i64, %"compiler/source:Span" } %t113, ptr %l44
  %t114 = getelementptr { { i64, ptr }, i64, %"compiler/source:Span" }, ptr %l44, i32 0, i32 0
  %t115 = load { i64, ptr }, ptr %t114, !tbaa !27
  store { i64, ptr } %t115, ptr %l45, !tbaa !27
  %t116 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t117 = extractvalue { i64, ptr } %t116, 0
  store i64 %t117, ptr %l46, !tbaa !24
  %t118 = load i64, ptr %l46, !tbaa !24
  %t119 = mul i64 %t118, 1
  %t120 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t119)
  %t121 = insertvalue { i64, ptr } undef, i64 %t118, 0
  %t122 = insertvalue { i64, ptr } %t121, ptr %t120, 1
  store { i64, ptr } %t122, ptr %l47, !tbaa !27
  %t123 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t124 = load ptr, ptr %t123, !tbaa !27
  %t125 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t126 = load ptr, ptr %t125, !tbaa !27
  %t127 = load i64, ptr %l46, !tbaa !24
  %t128 = mul i64 %t127, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t124, ptr %t126, i64 %t128, i1 false)
  %t129 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t130 = getelementptr { { i64, ptr }, i64, %"compiler/source:Span" }, ptr %l44, i32 0, i32 0
  store { i64, ptr } %t129, ptr %t130, !tbaa !27
  call void @__olang_scope_close(ptr %s3)
  %t131 = load { { i64, ptr }, i64, %"compiler/source:Span" }, ptr %l44
  store { { i64, ptr }, i64, %"compiler/source:Span" } %t131, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  %t132 = load i32, ptr %l5, !range !{i32 0, i32 20}
  %t134 = call { i64, ptr } @compiler_2finterp_2eAbortWhy(ptr %s3, i32 %t132)
  store { i64, ptr } %t134, ptr %l49
  br label %bb18
bb18:
  %t135 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t136 = extractvalue { i64, ptr } %t135, 1
  %t137 = extractvalue { i64, ptr } %t135, 0
  %t138 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t137)
  call void @olang_textcopy(ptr %t138, ptr %t136, i64 %t137)
  %t139 = insertvalue { i64, ptr } undef, i64 %t137, 0
  %t140 = insertvalue { i64, ptr } %t139, ptr %t138, 1
  %t141 = load i64, ptr %l6, !tbaa !24
  %t142 = load %"compiler/source:Span", ptr %l7
  %t144 = insertvalue { { i64, ptr }, i64, %"compiler/source:Span" } undef, { i64, ptr } %t140, 0
  %t146 = insertvalue { { i64, ptr }, i64, %"compiler/source:Span" } %t144, i64 %t141, 1
  %t148 = insertvalue { { i64, ptr }, i64, %"compiler/source:Span" } %t146, %"compiler/source:Span" %t142, 2
  call void @__olang_scope_close(ptr %s3)
  store { { i64, ptr }, i64, %"compiler/source:Span" } %t148, ptr %rv
  br label %ret
bb19:
  %t150 = load { i64, [5 x i64] }, ptr %l0
  %t152 = extractvalue { i64, [5 x i64] } %t150, 0
  %t153 = icmp eq i64 %t152, 1
  br i1 %t153, label %bb20, label %bb21
bb20:
  br label %bb22
bb21:
  br label %bb23
bb22:
  store { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d131, i32 0, i32 1) }, ptr %l56, !tbaa !27
  %t155 = load { i64, ptr }, ptr %l56, !tbaa !27
  %t156 = load %"compiler/source:Span", ptr %l1
  %t158 = insertvalue { { i64, ptr }, i64, %"compiler/source:Span" } undef, { i64, ptr } %t155, 0
  %t159 = insertvalue { { i64, ptr }, i64, %"compiler/source:Span" } %t158, i64 -1, 1
  %t161 = insertvalue { { i64, ptr }, i64, %"compiler/source:Span" } %t159, %"compiler/source:Span" %t156, 2
  store { { i64, ptr }, i64, %"compiler/source:Span" } %t161, ptr %l59
  %t162 = getelementptr { { i64, ptr }, i64, %"compiler/source:Span" }, ptr %l59, i32 0, i32 0
  %t163 = load { i64, ptr }, ptr %t162, !tbaa !27
  store { i64, ptr } %t163, ptr %l60, !tbaa !27
  %t164 = load { i64, ptr }, ptr %l60, !tbaa !27
  %t165 = extractvalue { i64, ptr } %t164, 0
  store i64 %t165, ptr %l61, !tbaa !24
  %t166 = load i64, ptr %l61, !tbaa !24
  %t167 = mul i64 %t166, 1
  %t168 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t167)
  %t169 = insertvalue { i64, ptr } undef, i64 %t166, 0
  %t170 = insertvalue { i64, ptr } %t169, ptr %t168, 1
  store { i64, ptr } %t170, ptr %l62, !tbaa !27
  %t171 = getelementptr { i64, ptr }, ptr %l62, i32 0, i32 1
  %t172 = load ptr, ptr %t171, !tbaa !27
  %t173 = getelementptr { i64, ptr }, ptr %l60, i32 0, i32 1
  %t174 = load ptr, ptr %t173, !tbaa !27
  %t175 = load i64, ptr %l61, !tbaa !24
  %t176 = mul i64 %t175, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t172, ptr %t174, i64 %t176, i1 false)
  %t177 = load { i64, ptr }, ptr %l62, !tbaa !27
  %t178 = getelementptr { { i64, ptr }, i64, %"compiler/source:Span" }, ptr %l59, i32 0, i32 0
  store { i64, ptr } %t177, ptr %t178, !tbaa !27
  %t179 = load { { i64, ptr }, i64, %"compiler/source:Span" }, ptr %l59
  store { { i64, ptr }, i64, %"compiler/source:Span" } %t179, ptr %rv
  br label %ret
bb23:
  call void @__olang_check_failed(ptr @olang_loc_9aa13344fea3f6d8_5ff568fedc30749c)
  unreachable
ret:
  %rr = load { { i64, ptr }, i64, %"compiler/source:Span" }, ptr %rv
  ret { { i64, ptr }, i64, %"compiler/source:Span" } %rr
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2finterp_2ewrittenMessage(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i1
  %l7 = alloca %"compiler/diagmsg:Msg"
  %l8 = alloca %"compiler/diagmsg:Msg"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/diagmsg:Msg"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:AssertAsk", ptr %t1, i32 0, i32 8
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t4, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d132, i32 0, i32 1) })
  store i1 %t6, ptr %l3
  br label %bb1
bb1:
  %t7 = load i1, ptr %l3, !tbaa !21
  %t8 = xor i1 %t7, true
  br i1 %t8, label %bb2, label %bb3
bb2:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/check:AssertAsk", ptr %t10, i32 0, i32 8
  %t13 = load { i64, ptr }, ptr %t12, !tbaa !27
  %t15 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAssertFalseWritten(ptr %v0, ptr %v1, { i64, ptr } %t13)
  store %"compiler/diagmsg:Msg" %t15, ptr %l7
  br label %bb4
bb3:
  br label %bb5
bb4:
  call void @__olang_scope_close(ptr %s0)
  %t16 = load %"compiler/diagmsg:Msg", ptr %l7
  store %"compiler/diagmsg:Msg" %t16, ptr %rv
  br label %ret
bb5:
  %t17 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAssertFalse(ptr %v1)
  store %"compiler/diagmsg:Msg" %t17, ptr %l8
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s0)
  %t18 = load %"compiler/diagmsg:Msg", ptr %l8
  store %"compiler/diagmsg:Msg" %t18, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local { i64, ptr } @compiler_2finterp_2ezeroFix(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, i64 %a1, { i64, ptr } %a2, i64 %a3, i64 %a4) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l5 = alloca i8
  %l6 = alloca i8
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l22 = alloca i1
  %l24 = alloca i1
  %l27 = alloca i1
  %l35 = alloca { i64, ptr }
  %l36 = alloca { i64, ptr }
  %l37 = alloca i64
  %l38 = alloca { i64, ptr }
  %l39 = alloca { i64, ptr }
  %l43 = alloca { i64, ptr }
  %l51 = alloca i1
  %l54 = alloca i1
  %l57 = alloca i1
  %l60 = alloca i1
  %l63 = alloca { i64, ptr }
  %l64 = alloca { i64, ptr }
  %l65 = alloca i64
  %l66 = alloca { i64, ptr }
  %l72 = alloca i1
  %l73 = alloca { i64, ptr }
  %l84 = alloca i1
  %l85 = alloca { i64, ptr }
  %l89 = alloca i1
  %l90 = alloca i1
  %l91 = alloca { i64, ptr }
  %l95 = alloca i1
  %l96 = alloca i1
  %l97 = alloca { i64, ptr }
  %l112 = alloca i1
  %l113 = alloca { i64, ptr }
  %l120 = alloca { i64, ptr }
  %l124 = alloca i1
  %l129 = alloca { i64, ptr }
  %l130 = alloca { i64, ptr }
  %l131 = alloca i64
  %l132 = alloca { i64, ptr }
  %l133 = alloca { i64, ptr }
  %l134 = alloca i64
  %l138 = alloca i64
  %l139 = alloca i64
  %l143 = alloca { i64, ptr }
  %l144 = alloca { i64, ptr }
  %l148 = alloca i64
  %l150 = alloca i64
  %l151 = alloca i64
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  store i64 %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t1, ptr %l10, !tbaa !27
  %t2 = load i64, ptr %l1, !tbaa !24
  store i64 %t2, ptr %l11, !tbaa !24
  %t3 = load i64, ptr %l1, !tbaa !24
  %t4 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 0
  %t9 = add i64 %t3, %t6
  store i64 %t9, ptr %l15, !tbaa !24
  %t10 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t10, 0
  store i64 %t11, ptr %l16, !tbaa !24
  %t12 = load i64, ptr %l11, !tbaa !24
  %t13 = icmp sge i64 %t12, 0
  br i1 %t13, label %bb1, label %bb2
bb1:
  %t15 = load i64, ptr %l11, !tbaa !24
  %t16 = load i64, ptr %l15, !tbaa !24
  %t17 = icmp sle i64 %t15, %t16
  br i1 %t17, label %bb3, label %bb4
bb2:
  call void @__olang_check_failed(ptr @olang_loc_4d6a1406cb03667d_c559610947931d69)
  unreachable
bb3:
  %t19 = load i64, ptr %l15, !tbaa !24
  %t20 = load i64, ptr %l16, !tbaa !24
  %t21 = icmp sle i64 %t19, %t20
  br i1 %t21, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_4d6a1406cb03667d_c559610947931d69)
  unreachable
bb5:
  %t23 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !27
  %t25 = load i64, ptr %l11, !tbaa !24
  %t26 = load i64, ptr %l15, !tbaa !24
  %t27 = getelementptr i8, ptr %t24, i64 %t25
  %t28 = sub i64 %t26, %t25
  %t29 = insertvalue { i64, ptr } undef, i64 %t28, 0
  %t30 = insertvalue { i64, ptr } %t29, ptr %t27, 1
  %t31 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t34 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %t30, { i64, ptr } %t31)
  store i1 %t34, ptr %l22
  br label %bb7
bb6:
  call void @__olang_check_failed(ptr @olang_loc_4d6a1406cb03667d_c559610947931d69)
  unreachable
bb7:
  %t35 = load i1, ptr %l22, !tbaa !21
  %t36 = xor i1 %t35, true
  br i1 %t36, label %bb8, label %bb9
bb8:
  store i1 true, ptr %l24, !tbaa !21
  br label %bb10
bb9:
  %t38 = load i64, ptr %l1, !tbaa !24
  %t40 = icmp sle i64 %t38, 0
  store i1 %t40, ptr %l24, !tbaa !21
  br label %bb10
bb10:
  %t42 = load i1, ptr %l24, !tbaa !21
  br i1 %t42, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l27, !tbaa !21
  br label %bb13
bb12:
  %t43 = load i64, ptr %l1, !tbaa !24
  %t44 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t46 = extractvalue { i64, ptr } %t44, 0
  %t49 = add i64 %t43, %t46
  %t50 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t52 = extractvalue { i64, ptr } %t50, 0
  %t55 = icmp sge i64 %t49, %t52
  store i1 %t55, ptr %l27, !tbaa !21
  br label %bb13
bb13:
  %t57 = load i1, ptr %l27, !tbaa !21
  br i1 %t57, label %bb14, label %bb15
bb14:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d133, i32 0, i32 1) }, ptr %l35, !tbaa !27
  %t58 = load { i64, ptr }, ptr %l35, !tbaa !27
  store { i64, ptr } %t58, ptr %l36, !tbaa !27
  %t59 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t60 = extractvalue { i64, ptr } %t59, 0
  store i64 %t60, ptr %l37, !tbaa !24
  %t61 = load i64, ptr %l37, !tbaa !24
  %t62 = mul i64 %t61, 1
  %t63 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t62)
  %t64 = insertvalue { i64, ptr } undef, i64 %t61, 0
  %t65 = insertvalue { i64, ptr } %t64, ptr %t63, 1
  store { i64, ptr } %t65, ptr %l38, !tbaa !27
  %t66 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !27
  %t68 = getelementptr { i64, ptr }, ptr %l36, i32 0, i32 1
  %t69 = load ptr, ptr %t68, !tbaa !27
  %t70 = load i64, ptr %l37, !tbaa !24
  %t71 = mul i64 %t70, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t67, ptr %t69, i64 %t71, i1 false)
  %t72 = load { i64, ptr }, ptr %l38, !tbaa !27
  store { i64, ptr } %t72, ptr %l36, !tbaa !27
  %t73 = load { i64, ptr }, ptr %l36, !tbaa !27
  store { i64, ptr } %t73, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  %t74 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t74, ptr %l39, !tbaa !27
  %t75 = load i64, ptr %l1, !tbaa !24
  %t77 = sub i64 %t75, 1
  %t79 = getelementptr { i64, ptr }, ptr %l39, i32 0, i32 1
  %t80 = load ptr, ptr %t79, !tbaa !27
  %t81 = getelementptr i8, ptr %t80, i64 %t77
  %t82 = load i8, ptr %t81, !tbaa !32
  store i8 %t82, ptr %l5, !tbaa !22
  %t84 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t84, ptr %l43, !tbaa !27
  %t85 = load i64, ptr %l1, !tbaa !24
  %t86 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t88 = extractvalue { i64, ptr } %t86, 0
  %t91 = add i64 %t85, %t88
  %t93 = getelementptr { i64, ptr }, ptr %l43, i32 0, i32 1
  %t94 = load ptr, ptr %t93, !tbaa !27
  %t95 = getelementptr i8, ptr %t94, i64 %t91
  %t96 = load i8, ptr %t95, !tbaa !32
  store i8 %t96, ptr %l6, !tbaa !22
  %t98 = load i8, ptr %l5, !tbaa !22
  %t100 = icmp ne i8 %t98, 60
  br i1 %t100, label %bb17, label %bb18
bb17:
  %t102 = load i8, ptr %l5, !tbaa !22
  %t104 = icmp ne i8 %t102, 32
  store i1 %t104, ptr %l51, !tbaa !21
  br label %bb19
bb18:
  store i1 false, ptr %l51, !tbaa !21
  br label %bb19
bb19:
  %t106 = load i1, ptr %l51, !tbaa !21
  br i1 %t106, label %bb20, label %bb21
bb20:
  %t107 = load i8, ptr %l5, !tbaa !22
  %t109 = icmp ne i8 %t107, 44
  store i1 %t109, ptr %l54, !tbaa !21
  br label %bb22
bb21:
  store i1 false, ptr %l54, !tbaa !21
  br label %bb22
bb22:
  %t111 = load i1, ptr %l54, !tbaa !21
  br i1 %t111, label %bb23, label %bb24
bb23:
  store i1 true, ptr %l57, !tbaa !21
  br label %bb28
bb24:
  %t112 = load i8, ptr %l6, !tbaa !22
  %t114 = icmp ne i8 %t112, 62
  br i1 %t114, label %bb25, label %bb26
bb25:
  %t116 = load i8, ptr %l6, !tbaa !22
  %t118 = icmp ne i8 %t116, 44
  store i1 %t118, ptr %l60, !tbaa !21
  br label %bb27
bb26:
  store i1 false, ptr %l60, !tbaa !21
  br label %bb27
bb27:
  %t120 = load i1, ptr %l60, !tbaa !21
  store i1 %t120, ptr %l57, !tbaa !21
  br label %bb28
bb28:
  %t121 = load i1, ptr %l57, !tbaa !21
  br i1 %t121, label %bb29, label %bb30
bb29:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d134, i32 0, i32 1) }, ptr %l63, !tbaa !27
  %t122 = load { i64, ptr }, ptr %l63, !tbaa !27
  store { i64, ptr } %t122, ptr %l64, !tbaa !27
  %t123 = load { i64, ptr }, ptr %l64, !tbaa !27
  %t124 = extractvalue { i64, ptr } %t123, 0
  store i64 %t124, ptr %l65, !tbaa !24
  %t125 = load i64, ptr %l65, !tbaa !24
  %t126 = mul i64 %t125, 1
  %t127 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t126)
  %t128 = insertvalue { i64, ptr } undef, i64 %t125, 0
  %t129 = insertvalue { i64, ptr } %t128, ptr %t127, 1
  store { i64, ptr } %t129, ptr %l66, !tbaa !27
  %t130 = getelementptr { i64, ptr }, ptr %l66, i32 0, i32 1
  %t131 = load ptr, ptr %t130, !tbaa !27
  %t132 = getelementptr { i64, ptr }, ptr %l64, i32 0, i32 1
  %t133 = load ptr, ptr %t132, !tbaa !27
  %t134 = load i64, ptr %l65, !tbaa !24
  %t135 = mul i64 %t134, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t131, ptr %t133, i64 %t135, i1 false)
  %t136 = load { i64, ptr }, ptr %l66, !tbaa !27
  store { i64, ptr } %t136, ptr %l64, !tbaa !27
  %t137 = load { i64, ptr }, ptr %l64, !tbaa !27
  store { i64, ptr } %t137, ptr %rv
  br label %ret
bb30:
  br label %bb31
bb31:
  %t138 = load i64, ptr %l1, !tbaa !24
  %t140 = sub i64 %t138, 1
  store i64 %t140, ptr %l7, !tbaa !24
  br label %bb32
bb32:
  %t142 = load i64, ptr %l7, !tbaa !24
  %t143 = load i64, ptr %l3, !tbaa !24
  %t146 = icmp sgt i64 %t142, %t143
  br i1 %t146, label %bb33, label %bb34
bb33:
  %t148 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t148, ptr %l73, !tbaa !27
  %t149 = load i64, ptr %l7, !tbaa !24
  %t151 = getelementptr { i64, ptr }, ptr %l73, i32 0, i32 1
  %t152 = load ptr, ptr %t151, !tbaa !27
  %t153 = getelementptr i8, ptr %t152, i64 %t149
  %t154 = load i8, ptr %t153, !tbaa !32
  %t156 = icmp ne i8 %t154, 60
  store i1 %t156, ptr %l72, !tbaa !21
  br label %bb35
bb34:
  store i1 false, ptr %l72, !tbaa !21
  br label %bb35
bb35:
  %t158 = load i1, ptr %l72, !tbaa !21
  %t159 = xor i1 %t158, true
  br i1 %t159, label %bb36, label %bb37
bb36:
  br label %bb40
bb37:
  br label %bb38
bb38:
  %t161 = load i64, ptr %l7, !tbaa !24
  %t163 = sub i64 %t161, 1
  store i64 %t163, ptr %l7, !tbaa !24
  br label %bb39
bb39:
  br label %bb32
bb40:
  %t165 = load i64, ptr %l7, !tbaa !24
  store i64 %t165, ptr %l8, !tbaa !24
  br label %bb41
bb41:
  %t167 = load i64, ptr %l8, !tbaa !24
  %t168 = load i64, ptr %l3, !tbaa !24
  %t171 = icmp sgt i64 %t167, %t168
  br i1 %t171, label %bb42, label %bb43
bb42:
  %t173 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t173, ptr %l85, !tbaa !27
  %t174 = load i64, ptr %l8, !tbaa !24
  %t176 = sub i64 %t174, 1
  %t178 = getelementptr { i64, ptr }, ptr %l85, i32 0, i32 1
  %t179 = load ptr, ptr %t178, !tbaa !27
  %t180 = getelementptr i8, ptr %t179, i64 %t176
  %t181 = load i8, ptr %t180, !tbaa !32
  %t183 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %t181)
  store i1 %t183, ptr %l89
  br label %bb44
bb43:
  store i1 false, ptr %l84, !tbaa !21
  br label %bb52
bb44:
  %t184 = load i1, ptr %l89, !tbaa !21
  br i1 %t184, label %bb45, label %bb46
bb45:
  store i1 true, ptr %l90, !tbaa !21
  br label %bb48
bb46:
  %t185 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t185, ptr %l91, !tbaa !27
  %t186 = load i64, ptr %l8, !tbaa !24
  %t188 = sub i64 %t186, 1
  %t190 = getelementptr { i64, ptr }, ptr %l91, i32 0, i32 1
  %t191 = load ptr, ptr %t190, !tbaa !27
  %t192 = getelementptr i8, ptr %t191, i64 %t188
  %t193 = load i8, ptr %t192, !tbaa !32
  %t195 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t193)
  store i1 %t195, ptr %l95
  br label %bb47
bb47:
  %t196 = load i1, ptr %l95, !tbaa !21
  store i1 %t196, ptr %l90, !tbaa !21
  br label %bb48
bb48:
  %t197 = load i1, ptr %l90, !tbaa !21
  br i1 %t197, label %bb49, label %bb50
bb49:
  store i1 true, ptr %l96, !tbaa !21
  br label %bb51
bb50:
  %t198 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t198, ptr %l97, !tbaa !27
  %t199 = load i64, ptr %l8, !tbaa !24
  %t201 = sub i64 %t199, 1
  %t203 = getelementptr { i64, ptr }, ptr %l97, i32 0, i32 1
  %t204 = load ptr, ptr %t203, !tbaa !27
  %t205 = getelementptr i8, ptr %t204, i64 %t201
  %t206 = load i8, ptr %t205, !tbaa !32
  %t208 = icmp eq i8 %t206, 95
  store i1 %t208, ptr %l96, !tbaa !21
  br label %bb51
bb51:
  %t210 = load i1, ptr %l96, !tbaa !21
  store i1 %t210, ptr %l84, !tbaa !21
  br label %bb52
bb52:
  %t211 = load i1, ptr %l84, !tbaa !21
  %t212 = xor i1 %t211, true
  br i1 %t212, label %bb53, label %bb54
bb53:
  br label %bb57
bb54:
  br label %bb55
bb55:
  %t214 = load i64, ptr %l8, !tbaa !24
  %t216 = sub i64 %t214, 1
  store i64 %t216, ptr %l8, !tbaa !24
  br label %bb56
bb56:
  br label %bb41
bb57:
  %t218 = load i64, ptr %l1, !tbaa !24
  %t219 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t221 = extractvalue { i64, ptr } %t219, 0
  %t224 = add i64 %t218, %t221
  store i64 %t224, ptr %l9, !tbaa !24
  br label %bb58
bb58:
  %t226 = load i64, ptr %l9, !tbaa !24
  %t230 = icmp slt i64 %t226, %a4
  br i1 %t230, label %bb59, label %bb60
bb59:
  %t232 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t232, ptr %l113, !tbaa !27
  %t233 = load i64, ptr %l9, !tbaa !24
  %t235 = getelementptr { i64, ptr }, ptr %l113, i32 0, i32 1
  %t236 = load ptr, ptr %t235, !tbaa !27
  %t237 = getelementptr i8, ptr %t236, i64 %t233
  %t238 = load i8, ptr %t237, !tbaa !32
  %t240 = icmp ne i8 %t238, 62
  store i1 %t240, ptr %l112, !tbaa !21
  br label %bb61
bb60:
  store i1 false, ptr %l112, !tbaa !21
  br label %bb61
bb61:
  %t242 = load i1, ptr %l112, !tbaa !21
  %t243 = xor i1 %t242, true
  br i1 %t243, label %bb62, label %bb63
bb62:
  br label %bb66
bb63:
  br label %bb64
bb64:
  %t245 = load i64, ptr %l9, !tbaa !24
  %t247 = add i64 %t245, 1
  store i64 %t247, ptr %l9, !tbaa !24
  br label %bb65
bb65:
  br label %bb58
bb66:
  %t249 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t249, ptr %l120, !tbaa !27
  %t250 = load i64, ptr %l7, !tbaa !24
  %t252 = getelementptr { i64, ptr }, ptr %l120, i32 0, i32 1
  %t253 = load ptr, ptr %t252, !tbaa !27
  %t254 = getelementptr i8, ptr %t253, i64 %t250
  %t255 = load i8, ptr %t254, !tbaa !32
  %t257 = icmp ne i8 %t255, 60
  br i1 %t257, label %bb67, label %bb68
bb67:
  store i1 true, ptr %l124, !tbaa !21
  br label %bb69
bb68:
  %t259 = load i64, ptr %l9, !tbaa !24
  %t260 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t262 = extractvalue { i64, ptr } %t260, 0
  %t265 = icmp sge i64 %t259, %t262
  store i1 %t265, ptr %l124, !tbaa !21
  br label %bb69
bb69:
  %t267 = load i1, ptr %l124, !tbaa !21
  br i1 %t267, label %bb70, label %bb71
bb70:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d135, i32 0, i32 1) }, ptr %l129, !tbaa !27
  %t268 = load { i64, ptr }, ptr %l129, !tbaa !27
  store { i64, ptr } %t268, ptr %l130, !tbaa !27
  %t269 = load { i64, ptr }, ptr %l130, !tbaa !27
  %t270 = extractvalue { i64, ptr } %t269, 0
  store i64 %t270, ptr %l131, !tbaa !24
  %t271 = load i64, ptr %l131, !tbaa !24
  %t272 = mul i64 %t271, 1
  %t273 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t272)
  %t274 = insertvalue { i64, ptr } undef, i64 %t271, 0
  %t275 = insertvalue { i64, ptr } %t274, ptr %t273, 1
  store { i64, ptr } %t275, ptr %l132, !tbaa !27
  %t276 = getelementptr { i64, ptr }, ptr %l132, i32 0, i32 1
  %t277 = load ptr, ptr %t276, !tbaa !27
  %t278 = getelementptr { i64, ptr }, ptr %l130, i32 0, i32 1
  %t279 = load ptr, ptr %t278, !tbaa !27
  %t280 = load i64, ptr %l131, !tbaa !24
  %t281 = mul i64 %t280, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t277, ptr %t279, i64 %t281, i1 false)
  %t282 = load { i64, ptr }, ptr %l132, !tbaa !27
  store { i64, ptr } %t282, ptr %l130, !tbaa !27
  %t283 = load { i64, ptr }, ptr %l130, !tbaa !27
  store { i64, ptr } %t283, ptr %rv
  br label %ret
bb71:
  br label %bb72
bb72:
  %t284 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t284, ptr %l133, !tbaa !27
  %t285 = load i64, ptr %l8, !tbaa !24
  store i64 %t285, ptr %l134, !tbaa !24
  %t286 = load i64, ptr %l1, !tbaa !24
  %t287 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t289 = extractvalue { i64, ptr } %t287, 0
  %t292 = add i64 %t286, %t289
  store i64 %t292, ptr %l138, !tbaa !24
  %t293 = load { i64, ptr }, ptr %l133, !tbaa !27
  %t294 = extractvalue { i64, ptr } %t293, 0
  store i64 %t294, ptr %l139, !tbaa !24
  %t295 = load i64, ptr %l134, !tbaa !24
  %t296 = icmp sge i64 %t295, 0
  br i1 %t296, label %bb73, label %bb74
bb73:
  %t298 = load i64, ptr %l134, !tbaa !24
  %t299 = load i64, ptr %l138, !tbaa !24
  %t300 = icmp sle i64 %t298, %t299
  br i1 %t300, label %bb75, label %bb76
bb74:
  call void @__olang_check_failed(ptr @olang_loc_48501d979e098c20_fb4a76bbe2d8ef7c)
  unreachable
bb75:
  %t302 = load i64, ptr %l138, !tbaa !24
  %t303 = load i64, ptr %l139, !tbaa !24
  %t304 = icmp sle i64 %t302, %t303
  br i1 %t304, label %bb77, label %bb78
bb76:
  call void @__olang_check_failed(ptr @olang_loc_48501d979e098c20_fb4a76bbe2d8ef7c)
  unreachable
bb77:
  %t306 = getelementptr { i64, ptr }, ptr %l133, i32 0, i32 1
  %t307 = load ptr, ptr %t306, !tbaa !27
  %t308 = load i64, ptr %l134, !tbaa !24
  %t309 = load i64, ptr %l138, !tbaa !24
  %t310 = getelementptr i8, ptr %t307, i64 %t308
  %t311 = sub i64 %t309, %t308
  %t312 = insertvalue { i64, ptr } undef, i64 %t311, 0
  %t313 = insertvalue { i64, ptr } %t312, ptr %t310, 1
  store { i64, ptr } %t313, ptr %l143, !tbaa !27
  %t314 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t314, ptr %l144, !tbaa !27
  %t315 = load i64, ptr %l1, !tbaa !24
  %t316 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t318 = extractvalue { i64, ptr } %t316, 0
  %t321 = add i64 %t315, %t318
  store i64 %t321, ptr %l148, !tbaa !24
  %t322 = load i64, ptr %l9, !tbaa !24
  %t324 = add i64 %t322, 1
  store i64 %t324, ptr %l150, !tbaa !24
  %t325 = load { i64, ptr }, ptr %l144, !tbaa !27
  %t326 = extractvalue { i64, ptr } %t325, 0
  store i64 %t326, ptr %l151, !tbaa !24
  %t327 = load i64, ptr %l148, !tbaa !24
  %t328 = icmp sge i64 %t327, 0
  br i1 %t328, label %bb79, label %bb80
bb78:
  call void @__olang_check_failed(ptr @olang_loc_48501d979e098c20_fb4a76bbe2d8ef7c)
  unreachable
bb79:
  %t330 = load i64, ptr %l148, !tbaa !24
  %t331 = load i64, ptr %l150, !tbaa !24
  %t332 = icmp sle i64 %t330, %t331
  br i1 %t332, label %bb81, label %bb82
bb80:
  call void @__olang_check_failed(ptr @olang_loc_48501d979e098c20_fb4a76bbe2d8ef7c)
  unreachable
bb81:
  %t334 = load i64, ptr %l150, !tbaa !24
  %t335 = load i64, ptr %l151, !tbaa !24
  %t336 = icmp sle i64 %t334, %t335
  br i1 %t336, label %bb83, label %bb84
bb82:
  call void @__olang_check_failed(ptr @olang_loc_48501d979e098c20_fb4a76bbe2d8ef7c)
  unreachable
bb83:
  %t338 = getelementptr { i64, ptr }, ptr %l144, i32 0, i32 1
  %t339 = load ptr, ptr %t338, !tbaa !27
  %t340 = load i64, ptr %l148, !tbaa !24
  %t341 = load i64, ptr %l150, !tbaa !24
  %t342 = getelementptr i8, ptr %t339, i64 %t340
  %t343 = sub i64 %t341, %t340
  %t344 = insertvalue { i64, ptr } undef, i64 %t343, 0
  %t345 = insertvalue { i64, ptr } %t344, ptr %t342, 1
  %t346 = load { i64, ptr }, ptr %l143, !tbaa !27
  %t347 = extractvalue { i64, ptr } %t346, 1
  %t348 = extractvalue { i64, ptr } %t346, 0
  %t349 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d136, i32 0, i32 1) }, 1
  %t350 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d136, i32 0, i32 1) }, 0
  %t351 = add i64 %t348, %t350
  %t353 = extractvalue { i64, ptr } %t345, 1
  %t354 = extractvalue { i64, ptr } %t345, 0
  %t355 = add i64 %t351, %t354
  %t356 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t355)
  call void @olang_textcopy(ptr %t356, ptr %t347, i64 %t348)
  %t357 = getelementptr i8, ptr %t356, i64 %t348
  call void @olang_textcopy(ptr %t357, ptr %t349, i64 %t350)
  %t358 = getelementptr i8, ptr %t357, i64 %t350
  call void @olang_textcopy(ptr %t358, ptr %t353, i64 %t354)
  %t359 = insertvalue { i64, ptr } undef, i64 %t355, 0
  %t360 = insertvalue { i64, ptr } %t359, ptr %t356, 1
  store { i64, ptr } %t360, ptr %rv
  br label %ret
bb84:
  call void @__olang_check_failed(ptr @olang_loc_48501d979e098c20_fb4a76bbe2d8ef7c)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { { i64, [3 x i64] }, { i64, ptr } } @compiler_2finterp_2ezeroUseArg(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, [3 x i64] } %a1, { i64, ptr } %a2) #0 {
entry:
  %l1 = alloca { i64, [3 x i64] }
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %lp8 = alloca ptr
  %l13 = alloca { i64, ptr }
  %l15 = alloca { { i64, [3 x i64] }, { i64, ptr } }
  %l16 = alloca { i64, ptr }
  %l17 = alloca i64
  %l18 = alloca { i64, ptr }
  %l24 = alloca { i64, ptr }
  %l32 = alloca i1
  %l46 = alloca { i64, ptr }
  %l48 = alloca i1
  %l62 = alloca { i64, ptr }
  %l64 = alloca { { i64, [3 x i64] }, { i64, ptr } }
  %l65 = alloca { i64, ptr }
  %l66 = alloca i64
  %l67 = alloca { i64, ptr }
  %s2 = alloca %olang.scope
  %rv = alloca { { i64, [3 x i64] }, { i64, ptr } }
  %t111 = alloca { i64, [3 x i64] }, align 8
  store { i64, [3 x i64] } %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [3 x i64] }, ptr %l1
  %t3 = extractvalue { i64, [3 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 3
  %t6 = xor i1 %t4, true
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = load { i64, [3 x i64] }, ptr %l1
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d137, i32 0, i32 1) }, ptr %l13, !tbaa !27
  %t9 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t11 = insertvalue { { i64, [3 x i64] }, { i64, ptr } } undef, { i64, [3 x i64] } %t8, 0
  %t13 = insertvalue { { i64, [3 x i64] }, { i64, ptr } } %t11, { i64, ptr } %t9, 1
  store { { i64, [3 x i64] }, { i64, ptr } } %t13, ptr %l15
  %t14 = getelementptr { { i64, [3 x i64] }, { i64, ptr } }, ptr %l15, i32 0, i32 1
  %t15 = load { i64, ptr }, ptr %t14, !tbaa !27
  store { i64, ptr } %t15, ptr %l16, !tbaa !27
  %t16 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t17 = extractvalue { i64, ptr } %t16, 0
  store i64 %t17, ptr %l17, !tbaa !24
  %t18 = load i64, ptr %l17, !tbaa !24
  %t19 = mul i64 %t18, 1
  %t20 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t19)
  %t21 = insertvalue { i64, ptr } undef, i64 %t18, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t20, 1
  store { i64, ptr } %t22, ptr %l18, !tbaa !27
  %t23 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !27
  %t25 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !27
  %t27 = load i64, ptr %l17, !tbaa !24
  %t28 = mul i64 %t27, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t24, ptr %t26, i64 %t28, i1 false)
  %t29 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t30 = getelementptr { { i64, [3 x i64] }, { i64, ptr } }, ptr %l15, i32 0, i32 1
  store { i64, ptr } %t29, ptr %t30, !tbaa !27
  %t31 = load { { i64, [3 x i64] }, { i64, ptr } }, ptr %l15
  store { { i64, [3 x i64] }, { i64, ptr } } %t31, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t32 = getelementptr { i64, [3 x i64] }, ptr %l1, i32 0, i32 1
  %t33 = getelementptr { i64, i64, i64 }, ptr %t32, i32 0, i32 0
  %t34 = load i64, ptr %t33
  store i64 %t34, ptr %l3, !tbaa !24
  %t36 = getelementptr { i64, [3 x i64] }, ptr %l1, i32 0, i32 1
  %t37 = getelementptr { i64, i64, i64 }, ptr %t36, i32 0, i32 1
  %t38 = load i64, ptr %t37
  store i64 %t38, ptr %l4, !tbaa !24
  %t40 = getelementptr { i64, [3 x i64] }, ptr %l1, i32 0, i32 1
  %t41 = getelementptr { i64, i64, i64 }, ptr %t40, i32 0, i32 2
  %t42 = load i64, ptr %t41
  store i64 %t42, ptr %l5, !tbaa !24
  %t45 = load i64, ptr %l3, !tbaa !24
  %t48 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eTextOf(ptr %v0, ptr %v0, ptr %a0, i64 %t45)
  store { i64, ptr } %t48, ptr %l24
  br label %bb4
bb4:
  %t49 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t49, ptr %l6, !tbaa !27
  %t50 = load i64, ptr %l4, !tbaa !24
  store i64 %t50, ptr %l7, !tbaa !24
  br label %bb5
bb5:
  store %olang.scope zeroinitializer, ptr %s2
  %t52 = load i64, ptr %l7, !tbaa !24
  %t53 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t55 = extractvalue { i64, ptr } %t53, 0
  %t58 = add i64 %t52, %t55
  %t59 = load i64, ptr %l5, !tbaa !24
  %t62 = icmp sle i64 %t58, %t59
  br i1 %t62, label %bb6, label %bb7
bb6:
  %t64 = load i64, ptr %l7, !tbaa !24
  %t65 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t67 = extractvalue { i64, ptr } %t65, 0
  %t70 = add i64 %t64, %t67
  %t71 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t73 = extractvalue { i64, ptr } %t71, 0
  %t76 = icmp sle i64 %t70, %t73
  store i1 %t76, ptr %l32, !tbaa !21
  br label %bb8
bb7:
  store i1 false, ptr %l32, !tbaa !21
  br label %bb8
bb8:
  %t78 = load i1, ptr %l32, !tbaa !21
  %t79 = xor i1 %t78, true
  br i1 %t79, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s2)
  br label %bb18
bb10:
  br label %bb11
bb11:
  %t81 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t82 = load i64, ptr %l7, !tbaa !24
  %t83 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t84 = load i64, ptr %l4, !tbaa !24
  %t85 = load i64, ptr %l5, !tbaa !24
  %t91 = call { i64, ptr } @compiler_2finterp_2ezeroFix(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %t81, i64 %t82, { i64, ptr } %t83, i64 %t84, i64 %t85)
  store { i64, ptr } %t91, ptr %l46
  br label %bb12
bb12:
  %t92 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t92, ptr %lp8
  %t93 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t94 = load ptr, ptr %lp8
  store { i64, ptr } %t93, ptr %t94, !tbaa !27
  %t95 = load ptr, ptr %lp8
  %t96 = load { i64, ptr }, ptr %t95, !tbaa !27
  %t98 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s2, { i64, ptr } %t96, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d138, i32 0, i32 1) })
  store i1 %t98, ptr %l48
  br label %bb13
bb13:
  %t99 = load i1, ptr %l48, !tbaa !21
  %t100 = xor i1 %t99, true
  br i1 %t100, label %bb14, label %bb15
bb14:
  %t102 = load i64, ptr %l3, !tbaa !24
  %t103 = load i64, ptr %l7, !tbaa !24
  %t104 = load i64, ptr %l7, !tbaa !24
  %t105 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t107 = extractvalue { i64, ptr } %t105, 0
  %t110 = add i64 %t104, %t107
  store { i64, [3 x i64] } zeroinitializer, ptr %t111
  %t112 = getelementptr { i64, [3 x i64] }, ptr %t111, i32 0, i32 0
  store i64 3, ptr %t112
  %t114 = insertvalue { i64, i64, i64 } undef, i64 %t102, 0
  %t116 = insertvalue { i64, i64, i64 } %t114, i64 %t103, 1
  %t118 = insertvalue { i64, i64, i64 } %t116, i64 %t110, 2
  %t119 = getelementptr { i64, [3 x i64] }, ptr %t111, i32 0, i32 1
  store { i64, i64, i64 } %t118, ptr %t119
  %t120 = load { i64, [3 x i64] }, ptr %t111
  %t121 = load ptr, ptr %lp8
  %t122 = load { i64, ptr }, ptr %t121, !tbaa !27
  %t124 = insertvalue { { i64, [3 x i64] }, { i64, ptr } } undef, { i64, [3 x i64] } %t120, 0
  %t126 = insertvalue { { i64, [3 x i64] }, { i64, ptr } } %t124, { i64, ptr } %t122, 1
  call void @__olang_scope_close(ptr %s2)
  store { { i64, [3 x i64] }, { i64, ptr } } %t126, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  %t128 = load i64, ptr %l7, !tbaa !24
  %t130 = add i64 %t128, 1
  store i64 %t130, ptr %l7, !tbaa !24
  call void @__olang_scope_close(ptr %s2)
  br label %bb17
bb17:
  br label %bb5
bb18:
  %t132 = load { i64, [3 x i64] }, ptr %l1
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d139, i32 0, i32 1) }, ptr %l62, !tbaa !27
  %t133 = load { i64, ptr }, ptr %l62, !tbaa !27
  %t135 = insertvalue { { i64, [3 x i64] }, { i64, ptr } } undef, { i64, [3 x i64] } %t132, 0
  %t137 = insertvalue { { i64, [3 x i64] }, { i64, ptr } } %t135, { i64, ptr } %t133, 1
  store { { i64, [3 x i64] }, { i64, ptr } } %t137, ptr %l64
  %t138 = getelementptr { { i64, [3 x i64] }, { i64, ptr } }, ptr %l64, i32 0, i32 1
  %t139 = load { i64, ptr }, ptr %t138, !tbaa !27
  store { i64, ptr } %t139, ptr %l65, !tbaa !27
  %t140 = load { i64, ptr }, ptr %l65, !tbaa !27
  %t141 = extractvalue { i64, ptr } %t140, 0
  store i64 %t141, ptr %l66, !tbaa !24
  %t142 = load i64, ptr %l66, !tbaa !24
  %t143 = mul i64 %t142, 1
  %t144 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t143)
  %t145 = insertvalue { i64, ptr } undef, i64 %t142, 0
  %t146 = insertvalue { i64, ptr } %t145, ptr %t144, 1
  store { i64, ptr } %t146, ptr %l67, !tbaa !27
  %t147 = getelementptr { i64, ptr }, ptr %l67, i32 0, i32 1
  %t148 = load ptr, ptr %t147, !tbaa !27
  %t149 = getelementptr { i64, ptr }, ptr %l65, i32 0, i32 1
  %t150 = load ptr, ptr %t149, !tbaa !27
  %t151 = load i64, ptr %l66, !tbaa !24
  %t152 = mul i64 %t151, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t148, ptr %t150, i64 %t152, i1 false)
  %t153 = load { i64, ptr }, ptr %l67, !tbaa !27
  %t154 = getelementptr { { i64, [3 x i64] }, { i64, ptr } }, ptr %l64, i32 0, i32 1
  store { i64, ptr } %t153, ptr %t154, !tbaa !27
  %t155 = load { { i64, [3 x i64] }, { i64, ptr } }, ptr %l64
  store { { i64, [3 x i64] }, { i64, ptr } } %t155, ptr %rv
  br label %ret
ret:
  %rr = load { { i64, [3 x i64] }, { i64, ptr } }, ptr %rv
  ret { { i64, [3 x i64] }, { i64, ptr } } %rr
}

define dso_local %"compiler/interp:CondErr" @compiler_2finterp_3aCondErr_2ector(ptr %v0, ptr %v1, { i64, [3 x i64] } %a0, %"compiler/diagmsg:Msg" %a1) #0 {
entry:
  %rv = alloca %"compiler/interp:CondErr"
  br label %start
start:
  br label %bb0
bb0:
  %t6 = insertvalue %"compiler/interp:CondErr" undef, { i64, [3 x i64] } %a0, 0
  %t8 = insertvalue %"compiler/interp:CondErr" %t6, %"compiler/diagmsg:Msg" %a1, 1
  store %"compiler/interp:CondErr" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/interp:CondErr", ptr %rv
  ret %"compiler/interp:CondErr" %rr
}

define dso_local void @compiler_2finterp_3aExec_2ector(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca %"compiler/lower:Lowerer"
  %l7 = alloca %"compiler/eval:Machine"
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l10 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l11 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l12 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l13 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l14 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l22 = alloca %"compiler/lower:Lowerer"
  %l26 = alloca %"compiler/eval:Machine"
  %l27 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l28 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l29 = alloca i64
  %l31 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l33 = alloca i64
  %l35 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l37 = alloca i64
  %l39 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l41 = alloca i64
  %l43 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l45 = alloca i64
  %l47 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l49 = alloca i64
  %l51 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l53 = alloca %"compiler/interp:Exec"
  %t9 = alloca %"compiler/lower:Lowerer", align 8
  %t16 = alloca %"compiler/eval:Machine", align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l3, !tbaa !29
  %t3 = load ptr, ptr %l1, !tbaa !29
  store ptr %t3, ptr %l4, !tbaa !29
  %t5 = load i32, ptr %l2, !range !{i32 0, i32 2}
  store i32 %t5, ptr %l5
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2flower_3aLowerer_2ector(ptr %t9, ptr %v0, ptr %v1, ptr %v2, ptr %t7, ptr %t8)
  call void @llvm.memmove.p0.p0.i64(ptr %l22, ptr %t9, i64 2264, i1 false)
  br label %bb1
bb1:
  call void @llvm.memmove.p0.p0.i64(ptr %l6, ptr %l22, i64 2264, i1 false)
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/generic:Program", ptr %t12, i32 0, i32 2
  %t15 = load i32, ptr %l2, !range !{i32 0, i32 2}
  call void @compiler_2feval_2eMachine_2eNew(ptr %t16, ptr %v0, ptr %v2, ptr %t14, i32 %t15)
  call void @llvm.memmove.p0.p0.i64(ptr %l26, ptr %t16, i64 3384, i1 false)
  br label %bb2
bb2:
  call void @llvm.memmove.p0.p0.i64(ptr %l7, ptr %l26, i64 3384, i1 false)
  %t19 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t19, ptr %l27
  br label %bb3
bb3:
  %t20 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l27
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t20, ptr %l8
  %t21 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20Bool_3e(ptr %v2)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t21, ptr %l28
  br label %bb4
bb4:
  %t22 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l28
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t22, ptr %l9
  %t23 = ptrtoint ptr %v2 to i64
  store i64 %t23, ptr %l29, !tbaa !24
  %t24 = load i1, ptr @olang_2esole_2ecompiler_2finterp_3aExec_2e7
  br i1 %t24, label %bb5, label %bb6
bb5:
  %t26 = call ptr @__olang_region_make(ptr %v2)
  %t27 = ptrtoint ptr %t26 to i64
  store i64 %t27, ptr %l29, !tbaa !24
  br label %bb6
bb6:
  %t28 = load i64, ptr %l29
  %t29 = inttoptr i64 %t28 to ptr
  %t30 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e(ptr %t29)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t30, ptr %l31
  br label %bb7
bb7:
  %t31 = load i1, ptr @olang_2esole_2ecompiler_2finterp_3aExec_2e7
  br i1 %t31, label %bb8, label %bb9
bb8:
  %t33 = load i64, ptr %l29
  %t34 = inttoptr i64 %t33 to ptr
  %t35 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l31, i32 0, i32 2
  %t36 = load { i64, ptr }, ptr %t35
  %t37 = extractvalue { i64, ptr } %t36, 1
  %t38 = call ptr @__olang_region_or(ptr %t37, ptr null)
  %t39 = call ptr @__olang_region_home(ptr %t38)
  %t40 = icmp ne ptr %t39, null
  %t41 = select i1 %t40, ptr %t39, ptr null
  %t42 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l31, i32 0, i32 1
  %t43 = load { i64, ptr }, ptr %t42
  %t44 = extractvalue { i64, ptr } %t43, 1
  %t45 = call ptr @__olang_region_or(ptr %t44, ptr null)
  %t46 = call ptr @__olang_region_home(ptr %t45)
  %t47 = icmp ne ptr %t46, null
  %t48 = select i1 %t47, ptr %t46, ptr %t41
  %t49 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l31, i32 0, i32 0
  %t50 = load { i64, ptr }, ptr %t49
  %t51 = extractvalue { i64, ptr } %t50, 1
  %t52 = call ptr @__olang_region_or(ptr %t51, ptr null)
  %t53 = call ptr @__olang_region_home(ptr %t52)
  %t54 = icmp ne ptr %t53, null
  %t55 = select i1 %t54, ptr %t53, ptr %t48
  %t56 = icmp eq ptr %t55, %t34
  call void @__olang_region_settle(ptr %t34, i1 %t56)
  br label %bb9
bb9:
  %t57 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l31
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t57, ptr %l10
  %t58 = ptrtoint ptr %v2 to i64
  store i64 %t58, ptr %l33, !tbaa !24
  %t59 = load i1, ptr @olang_2esole_2ecompiler_2finterp_3aExec_2e8
  br i1 %t59, label %bb10, label %bb11
bb10:
  %t61 = call ptr @__olang_region_make(ptr %v2)
  %t62 = ptrtoint ptr %t61 to i64
  store i64 %t62, ptr %l33, !tbaa !24
  br label %bb11
bb11:
  %t63 = load i64, ptr %l33
  %t64 = inttoptr i64 %t63 to ptr
  %t65 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %t64)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t65, ptr %l35
  br label %bb12
bb12:
  %t66 = load i1, ptr @olang_2esole_2ecompiler_2finterp_3aExec_2e8
  br i1 %t66, label %bb13, label %bb14
bb13:
  %t68 = load i64, ptr %l33
  %t69 = inttoptr i64 %t68 to ptr
  %t70 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l35, i32 0, i32 2
  %t71 = load { i64, ptr }, ptr %t70
  %t72 = extractvalue { i64, ptr } %t71, 1
  %t73 = call ptr @__olang_region_or(ptr %t72, ptr null)
  %t74 = call ptr @__olang_region_home(ptr %t73)
  %t75 = icmp ne ptr %t74, null
  %t76 = select i1 %t75, ptr %t74, ptr null
  %t77 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l35, i32 0, i32 1
  %t78 = load { i64, ptr }, ptr %t77
  %t79 = extractvalue { i64, ptr } %t78, 1
  %t80 = call ptr @__olang_region_or(ptr %t79, ptr null)
  %t81 = call ptr @__olang_region_home(ptr %t80)
  %t82 = icmp ne ptr %t81, null
  %t83 = select i1 %t82, ptr %t81, ptr %t76
  %t84 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l35, i32 0, i32 0
  %t85 = load { i64, ptr }, ptr %t84
  %t86 = extractvalue { i64, ptr } %t85, 1
  %t87 = call ptr @__olang_region_or(ptr %t86, ptr null)
  %t88 = call ptr @__olang_region_home(ptr %t87)
  %t89 = icmp ne ptr %t88, null
  %t90 = select i1 %t89, ptr %t88, ptr %t83
  %t91 = icmp eq ptr %t90, %t69
  call void @__olang_region_settle(ptr %t69, i1 %t91)
  br label %bb14
bb14:
  %t92 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l35
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t92, ptr %l11
  %t93 = ptrtoint ptr %v2 to i64
  store i64 %t93, ptr %l37, !tbaa !24
  %t94 = load i1, ptr @olang_2esole_2ecompiler_2finterp_3aExec_2e9
  br i1 %t94, label %bb15, label %bb16
bb15:
  %t96 = call ptr @__olang_region_make(ptr %v2)
  %t97 = ptrtoint ptr %t96 to i64
  store i64 %t97, ptr %l37, !tbaa !24
  br label %bb16
bb16:
  %t98 = load i64, ptr %l37
  %t99 = inttoptr i64 %t98 to ptr
  %t100 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t99, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t100, ptr %l39
  br label %bb17
bb17:
  %t101 = load i1, ptr @olang_2esole_2ecompiler_2finterp_3aExec_2e9
  br i1 %t101, label %bb18, label %bb19
bb18:
  %t103 = load i64, ptr %l37
  %t104 = inttoptr i64 %t103 to ptr
  %t105 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l39, i32 0, i32 0
  %t106 = load { i64, ptr }, ptr %t105
  %t107 = extractvalue { i64, ptr } %t106, 1
  %t108 = call ptr @__olang_region_or(ptr %t107, ptr null)
  %t109 = call ptr @__olang_region_home(ptr %t108)
  %t110 = icmp ne ptr %t109, null
  %t111 = select i1 %t110, ptr %t109, ptr null
  %t112 = icmp eq ptr %t111, %t104
  call void @__olang_region_settle(ptr %t104, i1 %t112)
  br label %bb19
bb19:
  %t113 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l39
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t113, ptr %l12
  %t114 = ptrtoint ptr %v2 to i64
  store i64 %t114, ptr %l41, !tbaa !24
  %t115 = load i1, ptr @olang_2esole_2ecompiler_2finterp_3aExec_2e10
  br i1 %t115, label %bb20, label %bb21
bb20:
  %t117 = call ptr @__olang_region_make(ptr %v2)
  %t118 = ptrtoint ptr %t117 to i64
  store i64 %t118, ptr %l41, !tbaa !24
  br label %bb21
bb21:
  %t119 = load i64, ptr %l41
  %t120 = inttoptr i64 %t119 to ptr
  %t121 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %t120)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t121, ptr %l43
  br label %bb22
bb22:
  %t122 = load i1, ptr @olang_2esole_2ecompiler_2finterp_3aExec_2e10
  br i1 %t122, label %bb23, label %bb24
bb23:
  %t124 = load i64, ptr %l41
  %t125 = inttoptr i64 %t124 to ptr
  %t126 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l43, i32 0, i32 2
  %t127 = load { i64, ptr }, ptr %t126
  %t128 = extractvalue { i64, ptr } %t127, 1
  %t129 = call ptr @__olang_region_or(ptr %t128, ptr null)
  %t130 = call ptr @__olang_region_home(ptr %t129)
  %t131 = icmp ne ptr %t130, null
  %t132 = select i1 %t131, ptr %t130, ptr null
  %t133 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l43, i32 0, i32 1
  %t134 = load { i64, ptr }, ptr %t133
  %t135 = extractvalue { i64, ptr } %t134, 1
  %t136 = call ptr @__olang_region_or(ptr %t135, ptr null)
  %t137 = call ptr @__olang_region_home(ptr %t136)
  %t138 = icmp ne ptr %t137, null
  %t139 = select i1 %t138, ptr %t137, ptr %t132
  %t140 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l43, i32 0, i32 0
  %t141 = load { i64, ptr }, ptr %t140
  %t142 = extractvalue { i64, ptr } %t141, 1
  %t143 = call ptr @__olang_region_or(ptr %t142, ptr null)
  %t144 = call ptr @__olang_region_home(ptr %t143)
  %t145 = icmp ne ptr %t144, null
  %t146 = select i1 %t145, ptr %t144, ptr %t139
  %t147 = icmp eq ptr %t146, %t125
  call void @__olang_region_settle(ptr %t125, i1 %t147)
  br label %bb24
bb24:
  %t148 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l43
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t148, ptr %l13
  %t149 = ptrtoint ptr %v2 to i64
  store i64 %t149, ptr %l45, !tbaa !24
  %t150 = load i1, ptr @olang_2esole_2ecompiler_2finterp_3aExec_2e11
  br i1 %t150, label %bb25, label %bb26
bb25:
  %t152 = call ptr @__olang_region_make(ptr %v2)
  %t153 = ptrtoint ptr %t152 to i64
  store i64 %t153, ptr %l45, !tbaa !24
  br label %bb26
bb26:
  %t154 = load i64, ptr %l45
  %t155 = inttoptr i64 %t154 to ptr
  %t156 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %t155)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t156, ptr %l47
  br label %bb27
bb27:
  %t157 = load i1, ptr @olang_2esole_2ecompiler_2finterp_3aExec_2e11
  br i1 %t157, label %bb28, label %bb29
bb28:
  %t159 = load i64, ptr %l45
  %t160 = inttoptr i64 %t159 to ptr
  %t161 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l47, i32 0, i32 2
  %t162 = load { i64, ptr }, ptr %t161
  %t163 = extractvalue { i64, ptr } %t162, 1
  %t164 = call ptr @__olang_region_or(ptr %t163, ptr null)
  %t165 = call ptr @__olang_region_home(ptr %t164)
  %t166 = icmp ne ptr %t165, null
  %t167 = select i1 %t166, ptr %t165, ptr null
  %t168 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l47, i32 0, i32 1
  %t169 = load { i64, ptr }, ptr %t168
  %t170 = extractvalue { i64, ptr } %t169, 1
  %t171 = call ptr @__olang_region_or(ptr %t170, ptr null)
  %t172 = call ptr @__olang_region_home(ptr %t171)
  %t173 = icmp ne ptr %t172, null
  %t174 = select i1 %t173, ptr %t172, ptr %t167
  %t175 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l47, i32 0, i32 0
  %t176 = load { i64, ptr }, ptr %t175
  %t177 = extractvalue { i64, ptr } %t176, 1
  %t178 = call ptr @__olang_region_or(ptr %t177, ptr null)
  %t179 = call ptr @__olang_region_home(ptr %t178)
  %t180 = icmp ne ptr %t179, null
  %t181 = select i1 %t180, ptr %t179, ptr %t174
  %t182 = icmp eq ptr %t181, %t160
  call void @__olang_region_settle(ptr %t160, i1 %t182)
  br label %bb29
bb29:
  %t183 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l47
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t183, ptr %l14
  %t184 = ptrtoint ptr %v2 to i64
  store i64 %t184, ptr %l49, !tbaa !24
  %t185 = load i1, ptr @olang_2esole_2ecompiler_2finterp_3aExec_2e12
  br i1 %t185, label %bb30, label %bb31
bb30:
  %t187 = call ptr @__olang_region_make(ptr %v2)
  %t188 = ptrtoint ptr %t187 to i64
  store i64 %t188, ptr %l49, !tbaa !24
  br label %bb31
bb31:
  %t189 = load i64, ptr %l49
  %t190 = inttoptr i64 %t189 to ptr
  %t191 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t190, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t191, ptr %l51
  br label %bb32
bb32:
  %t192 = load i1, ptr @olang_2esole_2ecompiler_2finterp_3aExec_2e12
  br i1 %t192, label %bb33, label %bb34
bb33:
  %t194 = load i64, ptr %l49
  %t195 = inttoptr i64 %t194 to ptr
  %t196 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l51, i32 0, i32 0
  %t197 = load { i64, ptr }, ptr %t196
  %t198 = extractvalue { i64, ptr } %t197, 1
  %t199 = call ptr @__olang_region_or(ptr %t198, ptr null)
  %t200 = call ptr @__olang_region_home(ptr %t199)
  %t201 = icmp ne ptr %t200, null
  %t202 = select i1 %t201, ptr %t200, ptr null
  %t203 = icmp eq ptr %t202, %t195
  call void @__olang_region_settle(ptr %t195, i1 %t203)
  br label %bb34
bb34:
  %t204 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l51
  %t205 = getelementptr %"compiler/interp:Exec", ptr %l53, i32 0, i32 0
  %t206 = load ptr, ptr %l3, !tbaa !29
  store ptr %t206, ptr %t205, !tbaa !29
  %t207 = getelementptr %"compiler/interp:Exec", ptr %l53, i32 0, i32 1
  %t208 = load ptr, ptr %l4, !tbaa !29
  store ptr %t208, ptr %t207, !tbaa !29
  %t209 = getelementptr %"compiler/interp:Exec", ptr %l53, i32 0, i32 2
  %t210 = load i32, ptr %l5, !range !{i32 0, i32 2}
  store i32 %t210, ptr %t209
  %t211 = getelementptr %"compiler/interp:Exec", ptr %l53, i32 0, i32 3
  call void @llvm.memmove.p0.p0.i64(ptr %t211, ptr %l6, i64 2264, i1 false)
  %t212 = getelementptr %"compiler/interp:Exec", ptr %l53, i32 0, i32 4
  call void @llvm.memmove.p0.p0.i64(ptr %t212, ptr %l7, i64 3384, i1 false)
  %t213 = getelementptr %"compiler/interp:Exec", ptr %l53, i32 0, i32 5
  %t214 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l8
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t214, ptr %t213
  %t215 = getelementptr %"compiler/interp:Exec", ptr %l53, i32 0, i32 6
  %t216 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l9
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t216, ptr %t215
  %t217 = getelementptr %"compiler/interp:Exec", ptr %l53, i32 0, i32 7
  %t218 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l10
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t218, ptr %t217
  %t219 = getelementptr %"compiler/interp:Exec", ptr %l53, i32 0, i32 8
  %t220 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l11
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t220, ptr %t219
  %t221 = getelementptr %"compiler/interp:Exec", ptr %l53, i32 0, i32 9
  %t222 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l12
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t222, ptr %t221
  %t223 = getelementptr %"compiler/interp:Exec", ptr %l53, i32 0, i32 10
  %t224 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l13
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t224, ptr %t223
  %t225 = getelementptr %"compiler/interp:Exec", ptr %l53, i32 0, i32 11
  %t226 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l14
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t226, ptr %t225
  %t227 = getelementptr %"compiler/interp:Exec", ptr %l53, i32 0, i32 12
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t204, ptr %t227
  %t229 = getelementptr %"compiler/interp:Exec", ptr %l53, i32 0, i32 13
  store i1 false, ptr %t229, !tbaa !21
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l53, i64 6136, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/interp:abortedAsk" @compiler_2finterp_3aabortedAsk_2ector(ptr %v0, i64 %a0, i32 %a1, i64 %a2, %"compiler/source:Span" %a3, i64 %a4) #0 {
entry:
  %rv = alloca %"compiler/interp:abortedAsk"
  br label %start
start:
  br label %bb0
bb0:
  %t12 = insertvalue %"compiler/interp:abortedAsk" undef, i64 %a0, 0
  %t14 = insertvalue %"compiler/interp:abortedAsk" %t12, i32 %a1, 1
  %t16 = insertvalue %"compiler/interp:abortedAsk" %t14, i64 %a2, 2
  %t18 = insertvalue %"compiler/interp:abortedAsk" %t16, %"compiler/source:Span" %a3, 3
  %t20 = insertvalue %"compiler/interp:abortedAsk" %t18, i64 %a4, 4
  store %"compiler/interp:abortedAsk" %t20, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/interp:abortedAsk", ptr %rv
  ret %"compiler/interp:abortedAsk" %rr
}

define dso_local %"compiler/interp:chained" @compiler_2finterp_3achained_2ector(ptr %v0, ptr %v1, i64 %a0, i1 %a1, { i64, ptr } %a2, { i64, [3 x i64] } %a3) #0 {
entry:
  %rv = alloca %"compiler/interp:chained"
  br label %start
start:
  br label %bb0
bb0:
  %t10 = insertvalue %"compiler/interp:chained" undef, i64 %a0, 0
  %t12 = insertvalue %"compiler/interp:chained" %t10, i1 %a1, 1
  %t14 = insertvalue %"compiler/interp:chained" %t12, { i64, ptr } %a2, 2
  %t16 = insertvalue %"compiler/interp:chained" %t14, { i64, [3 x i64] } %a3, 3
  store %"compiler/interp:chained" %t16, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/interp:chained", ptr %rv
  ret %"compiler/interp:chained" %rr
}

@.d0 = private constant <{ i64, [53 x i8] }> <{ i64 0, [53 x i8] c"it reaches unreachable code, which aborts the program" }>, align 8
@.d1 = private constant <{ i64, [50 x i8] }> <{ i64 0, [50 x i8] c"a '!' in it meets a null, which aborts the program" }>, align 8
@.d2 = private constant <{ i64, [48 x i8] }> <{ i64 0, [48 x i8] c"it raises a null error, which aborts the program" }>, align 8
@.d3 = private constant <{ i64, [50 x i8] }> <{ i64 0, [50 x i8] c"an assertion in it fails, which aborts the program" }>, align 8
@.d4 = private constant <{ i64, [48 x i8] }> <{ i64 0, [48 x i8] c"it slices out of range, which aborts the program" }>, align 8
@.d5 = private constant <{ i64, [68 x i8] }> <{ i64 0, [68 x i8] c"it makes an array of a length out of range, which aborts the program" }>, align 8
@.d6 = private constant <{ i64, [81 x i8] }> <{ i64 0, [81 x i8] c"it copies an array of another length into fixed storage, which aborts the program" }>, align 8
@.d7 = private constant <{ i64, [82 x i8] }> <{ i64 0, [82 x i8] c"a lane operation in it meets arrays of different lengths, which aborts the program" }>, align 8
@.d8 = private constant <{ i64, [45 x i8] }> <{ i64 0, [45 x i8] c"an 'as' that does not hold aborts the program" }>, align 8
@.d9 = private constant <{ i64, [101 x i8] }> <{ i64 0, [101 x i8] c"it asks a generator for its next value from inside the generator's own walk, which aborts the program" }>, align 8
@.d10 = private constant <{ i64, [52 x i8] }> <{ i64 0, [52 x i8] c"it indexes out of range, which stops a checked build" }>, align 8
@.d11 = private constant <{ i64, [47 x i8] }> <{ i64 0, [47 x i8] c"it divides by zero, which stops a checked build" }>, align 8
@.d12 = private constant <{ i64, [61 x i8] }> <{ i64 0, [61 x i8] c"it divides the least value by -1, which stops a checked build" }>, align 8
@.d13 = private constant <{ i64, [69 x i8] }> <{ i64 0, [69 x i8] c"it shifts by an amount outside the width, which stops a checked build" }>, align 8
@.d14 = private constant <{ i64, [44 x i8] }> <{ i64 0, [44 x i8] c"an error reaches '!', which ends the program" }>, align 8
@.d15 = private constant <{ i64, [39 x i8] }> <{ i64 0, [39 x i8] c"an error leaves the test, which ends it" }>, align 8
@.d16 = private constant <{ i64, [31 x i8] }> <{ i64 0, [31 x i8] c"it ends the test or the process" }>, align 8
declare void @__olang_check_failed(ptr) cold noreturn
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e_2ector(ptr %v0)
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

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_H6229cef23ae97e8e8df94ae881e620c3(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20std_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0)
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

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20Array_3cI64_3e_26_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20Array_3cI64_3e_26_3e_2ector(ptr %v0)
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

declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
@olang_2esole_2ecompiler_2fgeneric_3aProgram_2e54 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e(ptr %v0, ptr %a0) #0 {
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

declare ptr @__olang_region_or(ptr, ptr)
declare ptr @__olang_region_home(ptr)
declare void @__olang_region_settle(ptr, i1)
declare void @__olang_region_drop(ptr) noinline
@olang_2esole_2ecompiler_2fgeneric_3aProgram_2e56 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_H78c060037e43d34bc1ccb9cb8b566ae6(ptr %v0, ptr %a0) #0 {
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

@olang_2esole_2ecompiler_2fgeneric_3aProgram_2e57 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20Array_3cI64_3e_26_3e(ptr %v0, ptr %a0) #0 {
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

@olang_2esole_2ecompiler_2fgeneric_3aProgram_2e58 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aStr_H04c1419530b7cb79edb46934aa4393dc(ptr %v0, ptr %a0) #0 {
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

@olang_2esole_2ecompiler_2fcheck_3aChecker_2e112 = weak hidden constant i1 false
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

@olang_2esole_2ecompiler_2fcheck_3aChecker_2e156 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2feval_3aImage_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2feval_3aImage_3e_2ector(ptr %v0)
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

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_26_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0)
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
@.d17 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare ptr @__olang_scope_of(ptr, ptr) noinline
@.d18 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d19 = private constant <{ i64, [94 x i8] }> <{ i64 0, [94 x i8] c"its value is no data the program can hold - it reaches storage made elsewhere, or a destructor" }>, align 8
@__olang_empty_array = external constant [16 x i64]
@.d20 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d21 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d22 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d23 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@__olang_prog_scope = external thread_local(initialexec) global ptr
@.d24 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
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
define linkonce_odr i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fdiag_3aWhere(ptr %a0, ptr %a1) #0 {
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
  %t2 = load i64, ptr %t1, !range !{i64 0, i64 4}
  store i64 %t2, ptr %l3, !tbaa !24
  %t3 = load ptr, ptr %l1, !tbaa !29
  %t4 = load i64, ptr %t3, !range !{i64 0, i64 4}
  %t5 = load i64, ptr %l3, !tbaa !24
  %t7 = icmp eq i64 %t5, %t4
  br i1 %t7, label %bb2, label %bb1
bb1:
  store i1 false, ptr %l2, !tbaa !21
  br label %bb13
bb2:
  %t9 = load i64, ptr %l3, !tbaa !24
  switch i64 %t9, label %bb3 [ i64 1, label %bb4 i64 2, label %bb5 i64 3, label %bb6 ]
bb3:
  br label %bb13
bb4:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr { i64, [3 x i64] }, ptr %t10, i32 0, i32 1
  %t12 = getelementptr { i64 }, ptr %t11, i32 0, i32 0
  %t13 = load i64, ptr %t12
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t15 = getelementptr { i64, [3 x i64] }, ptr %t14, i32 0, i32 1
  %t16 = getelementptr { i64 }, ptr %t15, i32 0, i32 0
  %t17 = load i64, ptr %t16
  %t20 = icmp eq i64 %t13, %t17
  br i1 %t20, label %bb7, label %bb1
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr { i64, [3 x i64] }, ptr %t22, i32 0, i32 1
  %t24 = getelementptr { i64, i64 }, ptr %t23, i32 0, i32 0
  %t25 = load i64, ptr %t24
  %t26 = load ptr, ptr %l1, !tbaa !29
  %t27 = getelementptr { i64, [3 x i64] }, ptr %t26, i32 0, i32 1
  %t28 = getelementptr { i64, i64 }, ptr %t27, i32 0, i32 0
  %t29 = load i64, ptr %t28
  %t32 = icmp eq i64 %t25, %t29
  br i1 %t32, label %bb8, label %bb1
bb6:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr { i64, [3 x i64] }, ptr %t34, i32 0, i32 1
  %t36 = getelementptr { i64, i64, i64 }, ptr %t35, i32 0, i32 0
  %t37 = load i64, ptr %t36
  %t38 = load ptr, ptr %l1, !tbaa !29
  %t39 = getelementptr { i64, [3 x i64] }, ptr %t38, i32 0, i32 1
  %t40 = getelementptr { i64, i64, i64 }, ptr %t39, i32 0, i32 0
  %t41 = load i64, ptr %t40
  %t44 = icmp eq i64 %t37, %t41
  br i1 %t44, label %bb10, label %bb1
bb7:
  br label %bb3
bb8:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr { i64, [3 x i64] }, ptr %t46, i32 0, i32 1
  %t48 = getelementptr { i64, i64 }, ptr %t47, i32 0, i32 1
  %t49 = load i64, ptr %t48
  %t50 = load ptr, ptr %l1, !tbaa !29
  %t51 = getelementptr { i64, [3 x i64] }, ptr %t50, i32 0, i32 1
  %t52 = getelementptr { i64, i64 }, ptr %t51, i32 0, i32 1
  %t53 = load i64, ptr %t52
  %t56 = icmp eq i64 %t49, %t53
  br i1 %t56, label %bb9, label %bb1
bb9:
  br label %bb3
bb10:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr { i64, [3 x i64] }, ptr %t58, i32 0, i32 1
  %t60 = getelementptr { i64, i64, i64 }, ptr %t59, i32 0, i32 1
  %t61 = load i64, ptr %t60
  %t62 = load ptr, ptr %l1, !tbaa !29
  %t63 = getelementptr { i64, [3 x i64] }, ptr %t62, i32 0, i32 1
  %t64 = getelementptr { i64, i64, i64 }, ptr %t63, i32 0, i32 1
  %t65 = load i64, ptr %t64
  %t68 = icmp eq i64 %t61, %t65
  br i1 %t68, label %bb11, label %bb1
bb11:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr { i64, [3 x i64] }, ptr %t70, i32 0, i32 1
  %t72 = getelementptr { i64, i64, i64 }, ptr %t71, i32 0, i32 2
  %t73 = load i64, ptr %t72
  %t74 = load ptr, ptr %l1, !tbaa !29
  %t75 = getelementptr { i64, [3 x i64] }, ptr %t74, i32 0, i32 1
  %t76 = getelementptr { i64, i64, i64 }, ptr %t75, i32 0, i32 2
  %t77 = load i64, ptr %t76
  %t80 = icmp eq i64 %t73, %t77
  br i1 %t80, label %bb12, label %bb1
bb12:
  br label %bb3
bb13:
  %t82 = load i1, ptr %l2, !tbaa !21
  store i1 %t82, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

@.d25 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler__2finterp__2eDecideValues_2elocal_2e19 = weak hidden constant i1 false
declare void @__olang_region_release(ptr) noinline
@.d26 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d27 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-l" }>, align 8
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
@.d28 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"lib" }>, align 8
@.d29 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c".so" }>, align 8
@.d30 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c".a" }>, align 8
@.d31 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c".o" }>, align 8
@.d32 = private constant <{ i64, [54 x i8] }> <{ i64 0, [54 x i8] c"a static library or an object, which only a link takes" }>, align 8
declare ptr @dlopen(ptr, i32)
@.d33 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare ptr @dlerror()
@.d34 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"dlopen failed" }>, align 8
@.d35 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c": invalid ELF header" }>, align 8
declare void @__olang_errpay_pop()
@.d36 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d37 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d38 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d39 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c"an error escapes, code " }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d40 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
@.d41 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"unhandled error: " }>, align 8
@.d42 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d43 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
@.d44 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d45 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
@.d46 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
@.d47 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
@.d48 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2finterp_3achained_2e2 = weak hidden constant i1 false
@.d49 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" (" }>, align 8
@.d50 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d51 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" (" }>, align 8
@.d52 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d53 = private constant <{ i64, [40 x i8] }> <{ i64 0, [40 x i8] c"it fails with an error no clause handles" }>, align 8
@.d54 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d55 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d56 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aStr_Haf7c0f13dc6108e0fb33136e3d251799(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20compiler_2ftypes_3aTypeId_3e_2ector(ptr %v0)
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

@.d57 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"no main\0A" }>, align 8
@.d58 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d59 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"olang interpret: " }>, align 8
@.d60 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d61 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"olang interpret: " }>, align 8
@.d62 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c": the collection grew here\0A" }>, align 8
@.d63 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d64 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d65 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aMachine_2e83 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aMachine_2e84 = weak hidden constant i1 false
@.d66 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"ok - " }>, align 8
@.d67 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d68 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"FAIL - " }>, align 8
@.d69 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
@.d70 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d71 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c": left the test\0A" }>, align 8
@.d72 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"FAIL - " }>, align 8
@.d73 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
@.d74 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d75 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d76 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d77 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"FAIL - " }>, align 8
@.d78 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d79 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c" passed, " }>, align 8
@.d80 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c" failed\0A" }>, align 8
@.d81 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"unhandled error: " }>, align 8
@.d82 = private constant <{ i64, [31 x i8] }> <{ i64 0, [31 x i8] c" - here in the task spawned at " }>, align 8
@.d83 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"test" }>, align 8
@.d84 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d85 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c" earlier places not kept)\0A" }>, align 8
@.d86 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"raised here" }>, align 8
@.d87 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"try passed it on" }>, align 8
@.d88 = private constant <{ i64, [40 x i8] }> <{ i64 0, [40 x i8] c"a task failed, and its join passed it on" }>, align 8
@.d89 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
@.d90 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
define linkonce_odr void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2feval_3aBlob(ptr %out, ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/eval:Blob"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l15 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l17 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  br label %start
start:
  br label %bb0
bb0:
  call void @llvm.memmove.p0.p0.i64(ptr %l1, ptr %a0, i64 272, i1 false)
  %t2 = getelementptr %"compiler/eval:Blob", ptr %l1, i32 0, i32 0
  %t4 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cU8_3e(ptr %v0, ptr %t2)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t4, ptr %l3
  br label %bb1
bb1:
  %t5 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t6 = getelementptr %"compiler/eval:Blob", ptr %l1, i32 0, i32 0
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %t6
  %t7 = getelementptr %"compiler/eval:Blob", ptr %l1, i32 0, i32 3
  %t9 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t7)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t9, ptr %l5
  br label %bb2
bb2:
  %t10 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  %t11 = getelementptr %"compiler/eval:Blob", ptr %l1, i32 0, i32 3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %t11
  %t12 = getelementptr %"compiler/eval:Blob", ptr %l1, i32 0, i32 4
  %t14 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t12)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t14, ptr %l7
  br label %bb3
bb3:
  %t15 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  %t16 = getelementptr %"compiler/eval:Blob", ptr %l1, i32 0, i32 4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t15, ptr %t16
  %t17 = getelementptr %"compiler/eval:Blob", ptr %l1, i32 0, i32 5
  %t19 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t17)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t19, ptr %l9
  br label %bb4
bb4:
  %t20 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9
  %t21 = getelementptr %"compiler/eval:Blob", ptr %l1, i32 0, i32 5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t20, ptr %t21
  %t22 = getelementptr %"compiler/eval:Blob", ptr %l1, i32 0, i32 6
  %t24 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t22)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t24, ptr %l11
  br label %bb5
bb5:
  %t25 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l11
  %t26 = getelementptr %"compiler/eval:Blob", ptr %l1, i32 0, i32 6
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t25, ptr %t26
  %t27 = getelementptr %"compiler/eval:Blob", ptr %l1, i32 0, i32 7
  %t29 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t27)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t29, ptr %l13
  br label %bb6
bb6:
  %t30 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13
  %t31 = getelementptr %"compiler/eval:Blob", ptr %l1, i32 0, i32 7
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t30, ptr %t31
  %t32 = getelementptr %"compiler/eval:Blob", ptr %l1, i32 0, i32 8
  %t34 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %t32)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t34, ptr %l15
  br label %bb7
bb7:
  %t35 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l15
  %t36 = getelementptr %"compiler/eval:Blob", ptr %l1, i32 0, i32 8
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t35, ptr %t36
  %t37 = getelementptr %"compiler/eval:Blob", ptr %l1, i32 0, i32 9
  %t39 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t37)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t39, ptr %l17
  br label %bb8
bb8:
  %t40 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l17
  %t41 = getelementptr %"compiler/eval:Blob", ptr %l1, i32 0, i32 9
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t40, ptr %t41
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l1, i64 272, i1 false)
  br label %ret
ret:
  ret void
}

@.d91 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"std/" }>, align 8
@.d92 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Bool" }>, align 8
@.d93 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I32" }>, align 8
@.d94 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I64" }>, align 8
@.d95 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"U64" }>, align 8
@.d96 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"F64" }>, align 8
@.d97 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"std/prelude/text" }>, align 8
@.d98 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"String" }>, align 8
@olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std_2fprelude_2ftext_3aString_26_3e_2e1 = weak hidden constant i1 false
@.d99 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"error " }>, align 8
@olang_2esole_2ecompiler_2feval_3aMachine_2e5 = weak hidden constant i1 false
define linkonce_odr void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fmir_3aGenInfo(ptr %out, ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/mir:GenInfo"
  %l3 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l5 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l7 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l9 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l11 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l15 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l17 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l19 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  call void @llvm.memmove.p0.p0.i64(ptr %l1, ptr %a0, i64 632, i1 false)
  %t2 = getelementptr %"compiler/mir:GenInfo", ptr %l1, i32 0, i32 0
  %t4 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %v0, ptr %t2)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t4, ptr %l3
  br label %bb1
bb1:
  %t5 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l3
  %t6 = getelementptr %"compiler/mir:GenInfo", ptr %l1, i32 0, i32 0
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t5, ptr %t6
  %t7 = getelementptr %"compiler/mir:GenInfo", ptr %l1, i32 0, i32 1
  %t9 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20Bool_3e(ptr %v0, ptr %t7)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t9, ptr %l5
  br label %bb2
bb2:
  %t10 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l5
  %t11 = getelementptr %"compiler/mir:GenInfo", ptr %l1, i32 0, i32 1
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t10, ptr %t11
  %t12 = getelementptr %"compiler/mir:GenInfo", ptr %l1, i32 0, i32 2
  %t14 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %v0, ptr %t12)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t14, ptr %l7
  br label %bb3
bb3:
  %t15 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l7
  %t16 = getelementptr %"compiler/mir:GenInfo", ptr %l1, i32 0, i32 2
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t15, ptr %t16
  %t17 = getelementptr %"compiler/mir:GenInfo", ptr %l1, i32 0, i32 3
  %t19 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e(ptr %v0, ptr %t17)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t19, ptr %l9
  br label %bb4
bb4:
  %t20 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l9
  %t21 = getelementptr %"compiler/mir:GenInfo", ptr %l1, i32 0, i32 3
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t20, ptr %t21
  %t22 = getelementptr %"compiler/mir:GenInfo", ptr %l1, i32 0, i32 4
  %t24 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Array_3cI64_3e_26_3e(ptr %v0, ptr %t22)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t24, ptr %l11
  br label %bb5
bb5:
  %t25 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l11
  %t26 = getelementptr %"compiler/mir:GenInfo", ptr %l1, i32 0, i32 4
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t25, ptr %t26
  %t27 = getelementptr %"compiler/mir:GenInfo", ptr %l1, i32 0, i32 5
  %t29 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t27)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t29, ptr %l13
  br label %bb6
bb6:
  %t30 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13
  %t31 = getelementptr %"compiler/mir:GenInfo", ptr %l1, i32 0, i32 5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t30, ptr %t31
  %t32 = getelementptr %"compiler/mir:GenInfo", ptr %l1, i32 0, i32 7
  %t34 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e(ptr %v0, ptr %t32)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t34, ptr %l15
  br label %bb7
bb7:
  %t35 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l15
  %t36 = getelementptr %"compiler/mir:GenInfo", ptr %l1, i32 0, i32 7
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t35, ptr %t36
  %t37 = getelementptr %"compiler/mir:GenInfo", ptr %l1, i32 0, i32 9
  %t39 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e(ptr %v0, ptr %t37)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t39, ptr %l17
  br label %bb8
bb8:
  %t40 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l17
  %t41 = getelementptr %"compiler/mir:GenInfo", ptr %l1, i32 0, i32 9
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t40, ptr %t41
  %t42 = getelementptr %"compiler/mir:GenInfo", ptr %l1, i32 0, i32 11
  %t44 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e(ptr %v0, ptr %t42)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t44, ptr %l19
  br label %bb9
bb9:
  %t45 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l19
  %t46 = getelementptr %"compiler/mir:GenInfo", ptr %l1, i32 0, i32 11
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t45, ptr %t46
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l1, i64 632, i1 false)
  br label %ret
ret:
  ret void
}

@.d100 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"std/" }>, align 8
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
@.d101 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I64" }>, align 8
@.d102 = private constant <{ i64, [32 x i8] }> <{ i64 0, [32 x i8] c"its range's step is not positive" }>, align 8
@.d103 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"its range holds " }>, align 8
@.d104 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c" elements" }>, align 8
@olang_2esole_2ecompiler_2finterp_3aExec_2e11 = weak hidden constant i1 false
@.d105 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\00" }>, align 8
@olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20Array_3cI64_3e_26_3e_2e1 = weak hidden constant i1 false
@.d106 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d107 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d108 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d109 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d110 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d111 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d112 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d113 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" (" }>, align 8
@.d114 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d115 = private constant <{ i64, [40 x i8] }> <{ i64 0, [40 x i8] c"it fails with an error no clause handles" }>, align 8
@.d116 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d117 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
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
define internal i1 @olang_lambda_118(ptr %env, ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l5 = alloca i1
  %rv = alloca i1
  %cp0 = getelementptr { ptr, ptr }, ptr %env, i32 0, i32 0
  %cv0 = load ptr, ptr %cp0, !tbaa !28
  %vq0 = getelementptr { ptr, ptr }, ptr %env, i32 0, i32 1
  %vr0 = load ptr, ptr %vq0, !tbaa !28
  %vc0 = call ptr @__olang_capture_scope(ptr %vr0)
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/generic:Program", ptr %cv0, i32 0, i32 3
  %t7 = call i1 @compiler_2ffacts_2ecompiler_2ffacts_3aTable_2eHolds(ptr %vc0, ptr %v0, ptr %t3, { i64, ptr } %a0)
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

define linkonce_odr void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fviews_3aViewer(ptr %out, ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/views:Viewer"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l11 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l13 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l15 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l17 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l19 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
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
  %l41 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l43 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l45 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l47 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  call void @llvm.memmove.p0.p0.i64(ptr %l1, ptr %a0, i64 1144, i1 false)
  %t2 = getelementptr %"compiler/views:Viewer", ptr %l1, i32 0, i32 1
  %t4 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e(ptr %v0, ptr %t2)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t4, ptr %l3
  br label %bb1
bb1:
  %t5 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t6 = getelementptr %"compiler/views:Viewer", ptr %l1, i32 0, i32 1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %t6
  %t7 = getelementptr %"compiler/views:Viewer", ptr %l1, i32 0, i32 2
  %t9 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fviews_3asummary_26_3e(ptr %v0, ptr %t7)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t9, ptr %l5
  br label %bb2
bb2:
  %t10 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  %t11 = getelementptr %"compiler/views:Viewer", ptr %l1, i32 0, i32 2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %t11
  %t12 = getelementptr %"compiler/views:Viewer", ptr %l1, i32 0, i32 3
  %t14 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %t12)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t14, ptr %l7
  br label %bb3
bb3:
  %t15 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  %t16 = getelementptr %"compiler/views:Viewer", ptr %l1, i32 0, i32 3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t15, ptr %t16
  %t17 = getelementptr %"compiler/views:Viewer", ptr %l1, i32 0, i32 4
  %t19 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e(ptr %v0, ptr %t17)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t19, ptr %l9
  br label %bb4
bb4:
  %t20 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l9
  %t21 = getelementptr %"compiler/views:Viewer", ptr %l1, i32 0, i32 4
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t20, ptr %t21
  %t22 = getelementptr %"compiler/views:Viewer", ptr %l1, i32 0, i32 5
  %t24 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %t22)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t24, ptr %l11
  br label %bb5
bb5:
  %t25 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l11
  %t26 = getelementptr %"compiler/views:Viewer", ptr %l1, i32 0, i32 5
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t25, ptr %t26
  %t27 = getelementptr %"compiler/views:Viewer", ptr %l1, i32 0, i32 6
  %t29 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %v0, ptr %t27)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t29, ptr %l13
  br label %bb6
bb6:
  %t30 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l13
  %t31 = getelementptr %"compiler/views:Viewer", ptr %l1, i32 0, i32 6
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t30, ptr %t31
  %t32 = getelementptr %"compiler/views:Viewer", ptr %l1, i32 0, i32 10
  %t34 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aDeclId_2c_20I64_3e(ptr %v0, ptr %t32)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t34, ptr %l15
  br label %bb7
bb7:
  %t35 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l15
  %t36 = getelementptr %"compiler/views:Viewer", ptr %l1, i32 0, i32 10
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t35, ptr %t36
  %t37 = getelementptr %"compiler/views:Viewer", ptr %l1, i32 0, i32 11
  %t39 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec__He12a9c204323138ab14891253cd1e041(ptr %v0, ptr %t37)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t39, ptr %l17
  br label %bb8
bb8:
  %t40 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l17
  %t41 = getelementptr %"compiler/views:Viewer", ptr %l1, i32 0, i32 11
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t40, ptr %t41
  %t42 = getelementptr %"compiler/views:Viewer", ptr %l1, i32 0, i32 12
  %t44 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t42)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t44, ptr %l19
  br label %bb9
bb9:
  %t45 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l19
  %t46 = getelementptr %"compiler/views:Viewer", ptr %l1, i32 0, i32 12
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t45, ptr %t46
  %t47 = getelementptr %"compiler/views:Viewer", ptr %l1, i32 0, i32 13
  %t49 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t47)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t49, ptr %l21
  br label %bb10
bb10:
  %t50 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l21
  %t51 = getelementptr %"compiler/views:Viewer", ptr %l1, i32 0, i32 13
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t50, ptr %t51
  %t52 = getelementptr %"compiler/views:Viewer", ptr %l1, i32 0, i32 14
  %t54 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t52)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t54, ptr %l23
  br label %bb11
bb11:
  %t55 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l23
  %t56 = getelementptr %"compiler/views:Viewer", ptr %l1, i32 0, i32 14
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t55, ptr %t56
  %t57 = getelementptr %"compiler/views:Viewer", ptr %l1, i32 0, i32 15
  %t59 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t57)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t59, ptr %l25
  br label %bb12
bb12:
  %t60 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l25
  %t61 = getelementptr %"compiler/views:Viewer", ptr %l1, i32 0, i32 15
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t60, ptr %t61
  %t62 = getelementptr %"compiler/views:Viewer", ptr %l1, i32 0, i32 16
  %t64 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cBool_3e(ptr %v0, ptr %t62)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t64, ptr %l27
  br label %bb13
bb13:
  %t65 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l27
  %t66 = getelementptr %"compiler/views:Viewer", ptr %l1, i32 0, i32 16
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t65, ptr %t66
  %t67 = getelementptr %"compiler/views:Viewer", ptr %l1, i32 0, i32 17
  %t69 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t67)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t69, ptr %l29
  br label %bb14
bb14:
  %t70 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l29
  %t71 = getelementptr %"compiler/views:Viewer", ptr %l1, i32 0, i32 17
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t70, ptr %t71
  %t72 = getelementptr %"compiler/views:Viewer", ptr %l1, i32 0, i32 19
  %t74 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t72)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t74, ptr %l31
  br label %bb15
bb15:
  %t75 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l31
  %t76 = getelementptr %"compiler/views:Viewer", ptr %l1, i32 0, i32 19
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t75, ptr %t76
  %t77 = getelementptr %"compiler/views:Viewer", ptr %l1, i32 0, i32 20
  %t79 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t77)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t79, ptr %l33
  br label %bb16
bb16:
  %t80 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l33
  %t81 = getelementptr %"compiler/views:Viewer", ptr %l1, i32 0, i32 20
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t80, ptr %t81
  %t82 = getelementptr %"compiler/views:Viewer", ptr %l1, i32 0, i32 27
  %t84 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t82)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t84, ptr %l35
  br label %bb17
bb17:
  %t85 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l35
  %t86 = getelementptr %"compiler/views:Viewer", ptr %l1, i32 0, i32 27
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t85, ptr %t86
  %t87 = getelementptr %"compiler/views:Viewer", ptr %l1, i32 0, i32 28
  %t89 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fviews_3aloopFrame_26_3e(ptr %v0, ptr %t87)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t89, ptr %l37
  br label %bb18
bb18:
  %t90 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l37
  %t91 = getelementptr %"compiler/views:Viewer", ptr %l1, i32 0, i32 28
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t90, ptr %t91
  %t92 = getelementptr %"compiler/views:Viewer", ptr %l1, i32 0, i32 29
  %t94 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e(ptr %v0, ptr %t92)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t94, ptr %l39
  br label %bb19
bb19:
  %t95 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l39
  %t96 = getelementptr %"compiler/views:Viewer", ptr %l1, i32 0, i32 29
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t95, ptr %t96
  %t97 = getelementptr %"compiler/views:Viewer", ptr %l1, i32 0, i32 30
  %t99 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %v0, ptr %t97)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t99, ptr %l41
  br label %bb20
bb20:
  %t100 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l41
  %t101 = getelementptr %"compiler/views:Viewer", ptr %l1, i32 0, i32 30
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t100, ptr %t101
  %t102 = getelementptr %"compiler/views:Viewer", ptr %l1, i32 0, i32 31
  %t104 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %v0, ptr %t102)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t104, ptr %l43
  br label %bb21
bb21:
  %t105 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l43
  %t106 = getelementptr %"compiler/views:Viewer", ptr %l1, i32 0, i32 31
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t105, ptr %t106
  %t107 = getelementptr %"compiler/views:Viewer", ptr %l1, i32 0, i32 32
  %t109 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %v0, ptr %t107)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t109, ptr %l45
  br label %bb22
bb22:
  %t110 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l45
  %t111 = getelementptr %"compiler/views:Viewer", ptr %l1, i32 0, i32 32
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t110, ptr %t111
  %t112 = getelementptr %"compiler/views:Viewer", ptr %l1, i32 0, i32 33
  %t114 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %v0, ptr %t112)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t114, ptr %l47
  br label %bb23
bb23:
  %t115 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l47
  %t116 = getelementptr %"compiler/views:Viewer", ptr %l1, i32 0, i32 33
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t115, ptr %t116
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l1, i64 1144, i1 false)
  br label %ret
ret:
  ret void
}

@olang_2esole_2ecompiler_2feval_3aBlob_2e0 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cU8_3e(ptr %v0, ptr %a0) #0 {
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

@.d119 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
@.d120 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"GROUP" }>, align 8
@.d121 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"INPUT" }>, align 8
@.d122 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d123 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d124 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d125 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"lib" }>, align 8
@.d126 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c".so" }>, align 8
@.d127 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fpair_3aPair_3cI64_2c_20I64_3e_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fpair_3aPair_3cI64_2c_20I64_3e_3e_2ector(ptr %v0)
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

define linkonce_odr %"compiler/eval:Image" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2feval_3aImage(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/eval:Image"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"compiler/eval:Image"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"compiler/eval:Image", ptr %a0
  store %"compiler/eval:Image" %t2, ptr %l1
  %t3 = getelementptr %"compiler/eval:Image", ptr %l1, i32 0, i32 0
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aBlob_3e(ptr %v0, ptr %t3)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t7 = getelementptr %"compiler/eval:Image", ptr %l1, i32 0, i32 0
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %t7
  %t8 = getelementptr %"compiler/eval:Image", ptr %l1, i32 0, i32 1
  %t10 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %l5
  br label %bb2
bb2:
  %t11 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  %t12 = getelementptr %"compiler/eval:Image", ptr %l1, i32 0, i32 1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t11, ptr %t12
  %t13 = load %"compiler/eval:Image", ptr %l1
  store %"compiler/eval:Image" %t13, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/eval:Image", ptr %rv
  ret %"compiler/eval:Image" %rr
}

@.d128 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d129 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d130 = private constant <{ i64, [40 x i8] }> <{ i64 0, [40 x i8] c"it fails with an error no clause handles" }>, align 8
@.d131 = private constant <{ i64, [40 x i8] }> <{ i64 0, [40 x i8] c"it fails with an error no clause handles" }>, align 8
@.d132 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d133 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d134 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d135 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d136 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"&" }>, align 8
@.d137 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d138 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d139 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20Bool_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20Bool_3e_2ector(ptr %v0)
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

@olang_2esole_2ecompiler_2finterp_3aExec_2e7 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e_2ector(ptr %v0)
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

@olang_2esole_2ecompiler_2finterp_3aExec_2e8 = weak hidden constant i1 false
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

@olang_2esole_2ecompiler_2finterp_3aExec_2e9 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2finterp_3aExec_2e12 = weak hidden constant i1 false
declare noalias ptr @__olang_scope_alloc_slow(ptr, i64, i64) noinline
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20Bool_3e(ptr %v0, ptr %a0) #0 {
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
  %t6 = call { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_2c_20Bool_3e_3e(ptr %v0, { i64, ptr } %t4)
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

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Array_3cI64_3e_26_3e(ptr %v0, ptr %a0) #0 {
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
define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fviews_3asummary_26_3e(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aDeclId_2c_20I64_3e(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec__He12a9c204323138ab14891253cd1e041(ptr %v0, ptr %a0) #0 {
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
  %t6 = call { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_3e(ptr %v0, { i64, ptr } %t4)
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fviews_3aloopFrame_26_3e(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aBlob_3e(ptr %v0, ptr %a0) #0 {
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
  %t6 = call { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3ccompiler_2feval_3aBlob_3e(ptr %v0, { i64, ptr } %t4)
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

define linkonce_odr { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_2c_20Bool_3e_3e(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l6 = alloca %"std/prelude/map:MapEntry.b259c967cf16ba62f29f59ede353f7e9"
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
  %t15 = getelementptr %"std/prelude/map:MapEntry.b259c967cf16ba62f29f59ede353f7e9", ptr %t14, i64 %t12
  %t17 = call %"std/prelude/map:MapEntry.b259c967cf16ba62f29f59ede353f7e9" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_2c_20Bool_3e(ptr %v0, ptr %t15)
  store %"std/prelude/map:MapEntry.b259c967cf16ba62f29f59ede353f7e9" %t17, ptr %l6
  br label %bb4
bb3:
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t18, ptr %rv
  br label %ret
bb4:
  %t19 = load %"std/prelude/map:MapEntry.b259c967cf16ba62f29f59ede353f7e9", ptr %l6
  %t20 = load i64, ptr %l3, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr %"std/prelude/map:MapEntry.b259c967cf16ba62f29f59ede353f7e9", ptr %t22, i64 %t20
  store %"std/prelude/map:MapEntry.b259c967cf16ba62f29f59ede353f7e9" %t19, ptr %t23
  %t24 = load i64, ptr %l3, !tbaa !24
  %t25 = add i64 %t24, 1
  store i64 %t25, ptr %l3, !tbaa !24
  br label %bb1
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
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
define linkonce_odr { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_3e(ptr %v0, { i64, ptr } %a0) #0 {
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
  %t17 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %t15)
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

define linkonce_odr { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3ccompiler_2feval_3aBlob_3e(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l6 = alloca %"compiler/eval:Blob"
  %rv = alloca { i64, ptr }
  %t16 = alloca %"compiler/eval:Blob", align 8
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t2 = extractvalue { i64, ptr } %t1, 0
  store i64 %t2, ptr %l1, !tbaa !24
  %t3 = load i64, ptr %l1, !tbaa !24
  %t4 = mul i64 %t3, 272
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
  %t15 = getelementptr %"compiler/eval:Blob", ptr %t14, i64 %t12
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2feval_3aBlob(ptr %t16, ptr %v0, ptr %t15)
  call void @llvm.memmove.p0.p0.i64(ptr %l6, ptr %t16, i64 272, i1 false)
  br label %bb4
bb3:
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t18, ptr %rv
  br label %ret
bb4:
  %t19 = load i64, ptr %l3, !tbaa !24
  %t20 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !27
  %t22 = getelementptr %"compiler/eval:Blob", ptr %t21, i64 %t19
  call void @llvm.memmove.p0.p0.i64(ptr %t22, ptr %l6, i64 272, i1 false)
  %t23 = load i64, ptr %l3, !tbaa !24
  %t24 = add i64 %t23, 1
  store i64 %t24, ptr %l3, !tbaa !24
  br label %bb1
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define linkonce_odr %"std/prelude/map:MapEntry.b259c967cf16ba62f29f59ede353f7e9" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_2c_20Bool_3e(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/map:MapEntry.b259c967cf16ba62f29f59ede353f7e9"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %rv = alloca %"std/prelude/map:MapEntry.b259c967cf16ba62f29f59ede353f7e9"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"std/prelude/map:MapEntry.b259c967cf16ba62f29f59ede353f7e9", ptr %a0
  store %"std/prelude/map:MapEntry.b259c967cf16ba62f29f59ede353f7e9" %t2, ptr %l1
  %t3 = getelementptr %"std/prelude/map:MapEntry.b259c967cf16ba62f29f59ede353f7e9", ptr %l1, i32 0, i32 0
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
  %t19 = getelementptr %"std/prelude/map:MapEntry.b259c967cf16ba62f29f59ede353f7e9", ptr %l1, i32 0, i32 0
  store { i64, ptr } %t18, ptr %t19, !tbaa !27
  %t20 = load %"std/prelude/map:MapEntry.b259c967cf16ba62f29f59ede353f7e9", ptr %l1
  store %"std/prelude/map:MapEntry.b259c967cf16ba62f29f59ede353f7e9" %t20, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:MapEntry.b259c967cf16ba62f29f59ede353f7e9", ptr %rv
  ret %"std/prelude/map:MapEntry.b259c967cf16ba62f29f59ede353f7e9" %rr
}

declare ptr @__olang_scope_mine_slow(ptr) noinline
@olang_loc_eb3df5da8012cb63_283e587d4f698dd7 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2finterp_3aCondErr_3e_2ector(ptr %v0, i64 %a0)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eCount(ptr %v0, ptr %a0)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eFirm(ptr %v0, ptr %a0)
declare void @compiler_2fnames_3aResolver_2ector(ptr %out, ptr %v0, ptr %v1, ptr %a0)
declare void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eResolve(ptr %v0, ptr %a0)
declare void @compiler_2fgeneric_3aProgram_2ector(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare void @compiler_2fcheck_3aChecker_2ector(ptr %out, ptr %v0, ptr %v1, ptr %a0, i1 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eCheckProgram(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2finterp_3aCondErr_3e_2eLen_3ccompiler_2finterp_3aCondErr_3e(ptr %v0, ptr %a0)
declare %"compiler/interp:CondErr" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2finterp_3aCondErr_3e_2eAt_3ccompiler_2finterp_3aCondErr_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2)
declare i64 @std_2ftime_2eNow()
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eForget(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eGlobalDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2)
declare i1 @compiler_2fgeneric_2eWrittenMut(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2feval_3aImage_3e_2e_Hb8bfbe57c0e5b70e405cb38b3b12641e(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"compiler/eval:Image" %a2)
declare { i32, %"compiler/eval:Image" } @compiler_2feval_2ecompiler_2feval_3aMachine_2eImage(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2, i1 %a3)
declare %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fsource_3aSpan_3e_2_Hbfebb6c42bc5b6ebe27287b6298add36(ptr %v0, ptr %v1, ptr %a0)
declare { i32, %"std/prelude/map:MapEntry.9f40551e0d6019a8e678d8f53048b6ba" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapIter_3cI64_2c_20compiler_2fsource_3aSpan__Hd38fe3b5521cd0cc33c71306d155ae89(ptr %v0, ptr %a0)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2feval_3aImage_3e_2e_H901ad831a5883703dcf426ee01511832(ptr %v0, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_He9bc6cfad7ef603960b4717f3121b8e8(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eComptimeNotBaked(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aAssertAsk_3e_2eLen__Hcf51b196874cac8430175c74f3bdddd4(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aContractAsk_3e_2eLe_H3dc16594b41531049b330439cbeee191(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aTopAssertAsk_3e_2eL_H34364174f15757c2d142d60c88ce0944(ptr %v0, ptr %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eFactsUnsettled(ptr %v0, ptr %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2finterp_3aabortedAsk_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aAssertAsk_3e_2eAt_3ccompiler_2fcheck_3aAssertAsk_3e(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %v0, i64 %a0, i64 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2ed2e5427629ba63a7110fc86d969058(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
@olang_loc_7edf3cf7ccf8e57f_276bde685bbe381b = external constant [0 x i8]
declare { i64, [5 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2eEval(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, [2 x i64] } %a1, { i64, ptr } %a2)
@G_2ecompiler_2ftypes_2eBoolT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eInt(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i32 %a2)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1308596c866d4be061d9da9113abde88(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1, i1 %a2)
declare i1 @compiler_2ftyped_2eAlwaysReached(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteHere(ptr %v0)
declare %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, i32 %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3, { i64, ptr } %a4)
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, [3 x i64] } %a2, %"compiler/diagmsg:Msg" %a3)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2finterp_3aabortedAsk_3e_2ePu_H62bc00b7824fd8cdf5686f596056a5cf(ptr %v0, ptr %a0, %"compiler/interp:abortedAsk" %a1)
@G_2ecompiler_2feval_2eWhyStale = external constant <{ [8 x i8], ptr }>
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAssertStale(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_d8df33bf7c2af1a9_d617709f0680343d = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2finterp_3aabortedAsk_3e_2eLe_H5a66fb9a3db37c186716c1dbb29c1120(ptr %v0, ptr %a0)
declare %"compiler/interp:abortedAsk" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2finterp_3aabortedAsk_3e_2eAt_Hb6fdd0b60302bbbc29e9a063b33ba4bc(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAssertAborts(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aValueAsk_3e_2eLen_3ccompiler_2fcheck_3aValueAsk_3e(ptr %v0, ptr %a0)
declare %"compiler/check:ValueAsk" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aValueAsk_3e_2eAt_3ccompiler_2fcheck_3aValueAsk_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_e1183b54591591ba_6784d54d52bb291e = external constant [0 x i8]
declare i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2eResultHoldsAddress(ptr %v0, ptr %a0)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eTy(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eZeroValueShared(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLiteralCtorFails(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoZeroValue(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteInLibrary(ptr %v0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteReadUnassigned(ptr %v0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteZeroByReference(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteZeroReferenceHasOne(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_31552f310cf75527_9d9c34da119f96fb = external constant [0 x i8]
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eToC(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i64, ptr } @std_2fprelude_2ftext_2eString_2eFromC(ptr %v0, ptr %a0, i64 %a1)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_80c555340270d24a_f87cde9b6389147e = external constant [0 x i8]
declare { i32, { i64, ptr } } @std_2fos_2eReadFile(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i64, ptr } @compiler_2fmir_2eExitText(ptr %v0, i32 %a0)
declare i1 @compiler_2fmir_2eColumned(i32 %a0)
declare { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eLocate(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2)
@olang_loc_5ef8759083cc657e_8312724bf589cc02 = external constant [0 x i8]
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_ba0352a17aee8a03_24304d216386b767 = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v0, ptr %a0)
@olang_loc_aa3cb25751d43a74_c6dcfb500e269348 = external constant [0 x i8]
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eCondBody(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
@olang_loc_ea77dd63fedcf2a0_9e0f4ee5a7bf3444 = external constant [0 x i8]
@G_2ecompiler_2fload_2eNoBranch = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF" }>, align 8
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H2b85ceff512af6e6ca26c554a1c16247(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i1 %a2)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCount(ptr %v0, ptr %a0)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6b5ccacad8db807339a3579aa8c82ff8(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha7fbdf5914790493309c1066f38afbab(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e__H165e1ff795edcbb725e28dde18fd1dc2(ptr %v0, ptr %a0, i32 %a1)
declare { i32, { i64, [2 x i64] } } @compiler_2fmir_2eFnKey_2eDropFn(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eDefineDestructor(ptr %v0, ptr %a0, i32 %a1, { i64, [2 x i64] } %a2)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H2a2651dabff39bd48ba375b4d844fc5d(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i32 %a2)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsEntry(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_5b75817b97c7703f_a9caa4d803bddbab = external constant [0 x i8]
declare { i64, [5 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2eInitGlobal(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2)
@olang_loc_fce8d31b7e62f371_71870e12b086bddd = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2ePush_3ccompiler_2fmir_3aFnKey_3e(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2eLen_3ccompiler_2fmir_3aFnKey_3e(ptr %v0, ptr %a0)
declare { i32, { i64, [2 x i64] } } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2ePop_3ccompiler_2fmir_3aFnKey_3e(ptr %v0, ptr %a0)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20Bool_3e_2e_Hf0a5beca6f8aee4731a76bd327ae0a99(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20Bool_3e_2e_He6968003b8dd5762fa82ec44b4ee1fc9(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, i1 %a2)
declare ptr @compiler_2flower_2ecompiler_2flower_3aLowerer_2eLowerKey(ptr %v0, ptr %v1, ptr %a0, { i64, [2 x i64] } %a1)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eDefine(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_c21b7649f9083df0_c859438e5e055394 = external constant [0 x i8]
declare { i64, [5 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2eEndProgram(ptr %v0, ptr %v1, ptr %a0, { i64, [2 x i64] } %a1)
declare { i64, %"compiler/source:Span" } @compiler_2feval_2ecompiler_2feval_3aMachine_2eStaleGrewAt(ptr %v0, ptr %a0)
@olang_loc_736b533d144489ee_c645810c81b1a7fa = external constant [0 x i8]
declare ptr @compiler_2fast_2eFindTest(ptr %v0, ptr %v1, { i64, ptr } %a0, %"compiler/source:Span" %a1)
declare { i64, ptr } @compiler_2fast_2eTestTarget(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@olang_loc_edfb88544329c1e0_5f50a381ae60fbc = external constant [0 x i8]
declare { i64, ptr } @compiler_2fast_2eTestDesc(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
@olang_loc_a4fccf70f04f1e46_a9480d1c36ec4c52 = external constant [0 x i8]
@G_2ecompiler_2feval_2eWhyWaits = external constant <{ [8 x i8], ptr }>
@olang_loc_177aae49e1a91f38_175ec48f508568b4 = external constant [0 x i8]
@olang_loc_eb59e3d17e209b69_67e25fc5a7a9951d = external constant [0 x i8]
declare { i64, ptr } @compiler_2fast_2eTestLabel(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, ptr %a2)
declare { i64, ptr } @compiler_2feval_2ecompiler_2feval_3aMachine_2eText(ptr %v0, ptr %v1, ptr %a0, %"compiler/eval:Ptr" %a1, i32 %a2)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eTraceLen(ptr %v0, ptr %a0)
declare { i64, i64, i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2eTraceAt(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2feval_2ecompiler_2feval_3aMachine_2eTraceWhat(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aBlob_3e_2eLen_3ccompiler_2feval_3aBlob_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aBlob_3e_2eAt_3ccompiler_2feval_3aBlob_3e(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePreludeType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eExternSymbol(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eDefineExtern(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2, i64 %a3)
@olang_loc_6b327bc23f54125b_df118949941dcc1f = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fload_2eErrQualifier(ptr %v0, ptr %v1, { i64, ptr } %a0, i1 %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorWordName(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i64 %a2)
@olang_loc_4dbbfc1aefa6e21c_e99ccf60d5e11690 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCall_3e_2eLen_3ccompiler_2fmir_3aCall_3e(ptr %v0, ptr %a0)
declare %"compiler/mir:Call" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCall_3e_2eAt_3ccompiler_2fmir_3aCall_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eLen_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eAt_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNeedsDrop(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aTask_3e_2eLen_3ccompiler_2fmir_3aTask_3e(ptr %v0, ptr %a0)
declare %"compiler/mir:Task" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aTask_3e_2eAt_3ccompiler_2fmir_3aTask_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eLen_3ccompiler_2fmir_3aBasicBlock_3e(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eRef_3ccompiler_2fmir_3aBasicBlock_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eLen(ptr %v0, ptr %a0)
declare { i64, [21 x i64] } @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eAt(ptr %v0, ptr %a0, i64 %a1)
declare { i64, [4 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2eAt_3ccompiler_2fmir_3aOperand_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_8a681f26571ed620_44a452bec848fe5c = external constant [0 x i8]
@olang_loc_2bb6346af5de5a31_dbc53e9ffd61978d = external constant [0 x i8]
@olang_loc_8c9ae6434c5565e7_656708b088a82c0b = external constant [0 x i8]
@olang_loc_db23ec69d1a71a13_128a48d6c2b2bdb7 = external constant [0 x i8]
declare i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare ptr @compiler_2flower_2ecompiler_2flower_3aLowerer_2eGen(ptr %v0, ptr %v1, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e__Hccd9659a44f570da1fa06b019882a84d(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eDefineGlobal(ptr %v0, ptr %a0, i64 %a1, i32 %a2, i32 %a3, i1 %a4, { i64, [2 x i64] } %a5)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eBuildGlobal(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
@olang_loc_5218513f7b2d35ff_8134a4fdf2d394bb = external constant [0 x i8]
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3aAnyTable_3e_2eRef_H53de96b937c1888202b72d022fb4696d(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@G_2ecompiler_2ftypes_2eAnySlotBase = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
@olang_loc_6661ff5fcd5a0e74_cadc672e97162150 = external constant [0 x i8]
declare { i64, [2 x i64] } @compiler_2flower_2ecompiler_2flower_3aLowerer_2eCodeOf(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eDefineTable(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2, { i64, ptr } %a3)
@olang_loc_8aa385fac4707635_8a0feffc81f8cb59 = external constant [0 x i8]
declare { i64, ptr } @compiler_2feval_2ecompiler_2feval_3aMachine_2eElems(ptr %v0, ptr %v1, ptr %a0, %"compiler/eval:Ptr" %a1, i32 %a2, i32 %a3)
declare i1 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrorWithin(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i64 %a3, i64 %a4)
@olang_loc_6556c5b27a8f2520_6c50e0cecbbb5fdc = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fload_2ecompiler_2fload_3aLoader_2ePendingIfs(ptr %v0, ptr %v1, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I32_3e_3e_H8bd9ddbe6d7efc10dd35c4d42ad9dacf(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aAsk_3e_2eLen_3ccompiler_2fcheck_3aAsk_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3aConstAsk_3e_2eLen_H192b02349624a37821a23e7def80c714(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aEmbedAsk_3e_2eLen_3ccompiler_2fcheck_3aEmbedAsk_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aUnrollAsk_3e_2eLen__H3e1caeca23cca4e886f5085abf2ba261(ptr %v0, ptr %a0)
declare %"compiler/check:EmbedAsk" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aEmbedAsk_3e_2eAt_3ccompiler_2fcheck_3aEmbedAsk_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H4b90e82c7a9c5937397e46eef988cfe3(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H94076cc109da9d789864820ff05c3ac1(ptr %v0, ptr %v1, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1, { i64, ptr } %a2)
declare %"compiler/check:UnrollAsk" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aUnrollAsk_3e_2eAt_3ccompiler_2fcheck_3aUnrollAsk_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H227dc11a6a27d53bbdf34efa35d45ee3(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_He27db0a1785588531472bfd2db42574f(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H0a119a96f6a24054f8ced6f159e533e6(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6f7a2f8d839c49b6e7a19c287d4b190c(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
@olang_loc_b2316244e9af307f_bcf0fdc57d0f0f9b = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aIf_26_3e_2ector(ptr %v0, i64 %a0)
declare %"compiler/check:Ask" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aAsk_3e_2eAt_3ccompiler_2fcheck_3aAsk_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aIf_26_3e_2ePush_3ccompiler_2fast_3aIf_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/generic:ConstAsk" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3aConstAsk_3e_2eAt__H3f4459851a287fa27378a94ef8fff763(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9b83f66eba65594537030636cb0b52b7(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eExprBodyIn(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, i64 %a1, i64 %a2, { i64, ptr } %a3, { i64, ptr } %a4, ptr %a5, i32 %a6)
@G_2ecompiler_2fgeneric_2eRunTimeLength = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\80" }>, align 8
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha091d021a90ce6aa48813730c00df6d2(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i64 %a2)
@olang_loc_b43ed542b52bdb2d_e8039c8a87e26b41 = external constant [0 x i8]
@olang_loc_f84cb7d5463d9835_35d9cf4f803d5b1 = external constant [0 x i8]
declare %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I32_3e_3e_H7486c711b8ab0d124cd9b327dc5d14f9(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCondUnseen(ptr %v0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCondUndecidable(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2finterp_3aCondErr_3e_2ePush_3ccompiler_2finterp_3aCondErr_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/interp:CondErr" %a1)
declare void @compiler_2fload_2ecompiler_2fload_3aLoader_2eDecide(ptr %v0, ptr %a0, i64 %a1, i32 %a2, i64 %a3)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aIf_26_3e_2eLen_3ccompiler_2fast_3aIf_26_3e(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aIf_26_3e_2eAt_3ccompiler_2fast_3aIf_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eRunning(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aContractAsk_3e_2eAt_H56c1cddaee4bc4aa5c09605de1331e44(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_d213ae2acd73c837_819e6544d8b9fb33 = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eConversionDoesNotFit(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eContractFalse(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteContractCondition(ptr %v0)
@olang_loc_3238838aabc16991_ed85858096edfcc5 = external constant [0 x i8]
declare %"compiler/check:TopAssertAsk" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aTopAssertAsk_3e_2eA_H4ee666e103d2e1a6dd21794f4936298a(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_c1dbe1436b3e45a6_af45377485db5b6a = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTopAssertFalse(ptr %v0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTopAssertFalseMessage(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTopAssertUndecidable(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_5ce1b8d60352552c_3e5898832c479718 = external constant [0 x i8]
declare void @std_2fos_2eExit(i32 %a0)
@olang_loc_684d00a1d063a664_9e7a8340f5ecf8d8 = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAssertFalseMessage(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_ef1298413c90a2dc_ba44d1693e670768 = external constant [0 x i8]
@olang_loc_2f4ce1a9e181e1f2_bd4ae6421df971e = external constant [0 x i8]
@olang_loc_6beaad51a5cbbd4f_ba25a08250cd8123 = external constant [0 x i8]
@olang_loc_337e2febbb969070_fe2fc98a6d253614 = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eGlobalAborts(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eLineAt(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
@olang_loc_c5607a0551bceea3_a83aa459e58f2847 = external constant [0 x i8]
@olang_loc_4efe4c4a78894057_5e75e4c074554d53 = external constant [0 x i8]
@olang_loc_1ec4d19c7606c42f_38a78c76cd6682ab = external constant [0 x i8]
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fpair_3aPair_3cI64_2c_20_H3ccda5e77fabf86fda89ecfc77eff03d(ptr %v0, ptr %a0, i64 %a1)
declare { i32, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fpair_3aPair_3cI64_2c_20_H1ffd47e550cf52833705251cc4e5cd8d(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fviews_2ecompiler_2fviews_3aKept_2eTakeHolding(ptr %v0, ptr %v1, ptr %a0, ptr %a1c, ptr %a1e)
declare void @compiler_2fviews_3aViewer_2ector(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1)
declare void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eRunKept(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2feval_3aBlob_2ector(ptr %out, ptr %v0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0, i32 %a1)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindLast(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_33cf42576bc92052_8a57929dd960fbd6 = external constant [0 x i8]
declare i32 @std_2fio_2ePut_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, { i64, ptr } %a0)
declare i1 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eIsLibrary(ptr %v0, ptr %a0, { i64, [3 x i64] } %a1)
declare i32 @std_2fio_2ePutErr_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, { i64, ptr } %a0)
@olang_loc_4a2450c320d71be4_787663299ea3b538 = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eSplit(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2feval_3aImage_3e_2e_H95f86c29c688efeac83a664cabcff622(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_9513d9c663183758_bab169d76cbcad14 = external constant [0 x i8]
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2feval_3aImage_3e_2e_H8e3ab02101333f4dae95aad48f2e722e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/eval:Image" @compiler_2feval_3aImage_2ector(ptr %v0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aBlob_3e_2eRef_3ccompiler_2feval_3aBlob_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aBlob_3e_2ePush_3ccompiler_2feval_3aBlob_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fpair_3aPair_3cI64_2c_20_Hd47ddefe3838698aaa5711f2f63b01ed(ptr %v0, ptr %a0, i64 %a1, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteVecGrewHere(ptr %v0)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fsource_3aSpan_3e_2_Hcc4dae5da0ed3c5355f9c78c0e71655b(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_Hc3dff1927e5c626a9d95abfdf4e9a462(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAttrNotBuilt(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eGlobalStale(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_7adf7e442ebbc99f_3e36fcedb7533913 = external constant [0 x i8]
@olang_loc_9aa13344fea3f6d8_5ff568fedc30749c = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAssertFalseWritten(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAssertFalse(ptr %v0)
@olang_loc_4d6a1406cb03667d_c559610947931d69 = external constant [0 x i8]
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %a0)
@olang_loc_48501d979e098c20_fb4a76bbe2d8ef7c = external constant [0 x i8]
declare { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eTextOf(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2flower_3aLowerer_2ector(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare void @compiler_2feval_2eMachine_2eNew(ptr %out, ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20std_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20Array_3cI64_3e_26_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20std_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2feval_3aImage_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20compiler_2ftypes_3aTypeId_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20Bool_3e_2ector(ptr %v0)
declare i1 @compiler_2ffacts_2ecompiler_2ffacts_3aTable_2eHolds(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fpair_3aPair_3cI64_2c_20I64_3e_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20Bool_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e_2ector(ptr %v0)
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
