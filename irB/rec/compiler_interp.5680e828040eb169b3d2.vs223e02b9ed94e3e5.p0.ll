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
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" = type { ptr, i64 }
%"std/prelude/map:MapEntry.9f40551e0d6019a8e678d8f53048b6ba" = type { i64, %"compiler/source:Span" }
%"compiler/source:Span" = type { i32, i32 }
%"compiler/interp:Exec" = type { ptr, ptr, i32, %"compiler/lower:Lowerer", %"compiler/eval:Machine", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1 }
%"compiler/lower:Lowerer" = type { ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i32, i32, i64, i64, i64, i64, i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/mir:GenInfo", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"compiler/mir:GenInfo" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64 }
%"compiler/eval:Machine" = type { ptr, i32, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/mir:GenInfo", i1, i64, i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/eval:Ptr", i32, { i64, [5 x i64] }, i64, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, i64, { i64, ptr }, { i64, ptr }, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i64, { i64, ptr }, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i64, { i64, ptr }, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"compiler/source:Span", i32 }
%"compiler/eval:Ptr" = type { i64, i64 }
%"compiler/eval:Image" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1 }
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr } }
%"compiler/check:Checker" = type { ptr, ptr, i1, i1, i1, i1, i64, i64, i1, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, { i64, [3 x i64] }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i32, i64, %"compiler/source:Span", i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/source:Span", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i32, i1, i1, %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, i32, i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, i64, i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/text:StringBuilder", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/ast:VarDecl" = type { { i64, ptr }, { i64, ptr }, ptr, { i64, ptr }, i1, i1, { i64, ptr }, i1 }
%"compiler/check:AssertAsk" = type { i64, i64, %"compiler/source:Span", %"compiler/source:Span", i64, i64, i1, { i64, ptr }, { i64, ptr }, { i64, [3 x i64] }, { i64, ptr }, { i64, [3 x i64] }, { i64, ptr } }
%"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" = type { i64, i64 }
%"compiler/interp:abortedAsk" = type { i64, i32, i64, %"compiler/source:Span", i64 }
%"compiler/interp:chained" = type { i64, i1, { i64, ptr }, { i64, [3 x i64] } }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/ast:TopIf" = type { ptr, ptr, ptr, ptr }
%"compiler/source:Source" = type { { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/eval:Blob" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/mir:Call" = type { { i64, [7 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Lvalue", i1, i32, i32, i32 }
%"compiler/mir:Range" = type { i32, i32 }
%"compiler/mir:Lvalue" = type { { i64, [2 x i64] }, %"compiler/mir:Range" }
%"compiler/mir:Task" = type { { i64, [7 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/source:Span", %"compiler/mir:Range" }
%"compiler/mir:Local" = type { i32, %"compiler/source:Span", i32, i32, { i64, [1 x i64] } }
%"compiler/mir:Fn" = type { { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/mir:BasicBlock" = type { %"compiler/mir:StmtList", { i64, [8 x i64] } }
%"compiler/mir:StmtList" = type { { i64, ptr }, i64 }
%"compiler/check:UnrollAsk" = type { { i64, ptr }, { i64, ptr }, i64, i32 }
%"compiler/check:ContractAsk" = type { i64, i64, %"compiler/source:Span", i64, %"compiler/source:Span", { i64, ptr }, { i64, ptr }, { i64, [3 x i64] }, { i64, ptr }, { i64, ptr } }
%"compiler/ast:TopBranch" = type { %"compiler/source:Span", { i64, ptr }, i64 }
%"compiler/typed:Block" = type { i32, { i64, ptr } }
%"compiler/views:Viewer" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, i64, i1, i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, i1 }
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
  %t325 = alloca { i64, [3 x i64] }, align 8
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
  %t11 = getelementptr %"compiler/check:Checker", ptr %t9, i32 0, i32 14
  call void @compiler_2finterp_3aExec_2ector(ptr %t12, ptr %v0, ptr %v0, ptr %v0, ptr %t8, ptr %t11, i32 0)
  call void @llvm.memmove.p0.p0.i64(ptr %l27, ptr %t12, i64 4976, i1 false)
  br label %bb2
bb2:
  %t16 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 4976, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t16, ptr %l27, i64 4976, i1 false)
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
  %t26 = getelementptr %"compiler/check:Checker", ptr %t24, i32 0, i32 140
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
  %t40 = icmp ne ptr %t39, null
  %t41 = select i1 %t40, ptr %t39, ptr null
  %t42 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l35, i32 0, i32 1
  %t43 = load { i64, ptr }, ptr %t42
  %t44 = extractvalue { i64, ptr } %t43, 1
  %t45 = call ptr @__olang_region_or(ptr %t44, ptr null)
  %t46 = icmp ne ptr %t45, null
  %t47 = select i1 %t46, ptr %t45, ptr %t41
  %t48 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l35, i32 0, i32 0
  %t49 = load { i64, ptr }, ptr %t48
  %t50 = extractvalue { i64, ptr } %t49, 1
  %t51 = call ptr @__olang_region_or(ptr %t50, ptr null)
  %t52 = icmp ne ptr %t51, null
  %t53 = select i1 %t52, ptr %t51, ptr %t47
  %t54 = icmp eq ptr %t53, %t35
  call void @__olang_region_settle(ptr %t35, i1 %t54)
  br label %bb7
bb7:
  %t55 = load ptr, ptr %l29, !tbaa !29
  %t56 = getelementptr %"compiler/interp:Exec", ptr %t55, i32 0, i32 10
  %t57 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t56
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t57, ptr %l37
  %t58 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l35
  %t59 = load ptr, ptr %l29, !tbaa !29
  %t60 = getelementptr %"compiler/interp:Exec", ptr %t59, i32 0, i32 10
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t58, ptr %t60
  %t61 = load i1, ptr @olang_2esole_2ecompiler_2finterp_3aExec_2e10
  br i1 %t61, label %bb8, label %bb9
bb8:
  %t63 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l37, i32 0, i32 2
  %t64 = load { i64, ptr }, ptr %t63
  %t65 = extractvalue { i64, ptr } %t64, 1
  %t66 = call ptr @__olang_region_or(ptr %t65, ptr null)
  %t67 = icmp ne ptr %t66, null
  %t68 = select i1 %t67, ptr %t66, ptr null
  %t69 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l37, i32 0, i32 1
  %t70 = load { i64, ptr }, ptr %t69
  %t71 = extractvalue { i64, ptr } %t70, 1
  %t72 = call ptr @__olang_region_or(ptr %t71, ptr null)
  %t73 = icmp ne ptr %t72, null
  %t74 = select i1 %t73, ptr %t72, ptr %t68
  %t75 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l37, i32 0, i32 0
  %t76 = load { i64, ptr }, ptr %t75
  %t77 = extractvalue { i64, ptr } %t76, 1
  %t78 = call ptr @__olang_region_or(ptr %t77, ptr null)
  %t79 = icmp ne ptr %t78, null
  %t80 = select i1 %t79, ptr %t78, ptr %t74
  call void @__olang_region_drop(ptr %t80)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" zeroinitializer, ptr %l37
  br label %bb9
bb9:
  %t81 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2finterp_2ecompiler_2finterp_3aExec_2estart(ptr %v0, ptr %t81)
  br label %bb10
bb10:
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr %"compiler/check:Checker", ptr %t83, i32 0, i32 1
  %t86 = load ptr, ptr %t85, !tbaa !29
  %t88 = getelementptr %"compiler/generic:Program", ptr %t86, i32 0, i32 0
  %t89 = load ptr, ptr %t88, !tbaa !29
  %t91 = getelementptr %"compiler/load:Loader", ptr %t89, i32 0, i32 4
  %t92 = load ptr, ptr %t91, !tbaa !29
  store ptr %t92, ptr %l3, !tbaa !29
  %t94 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t94, ptr %l44
  br label %bb11
bb11:
  %t95 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l44
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t95, ptr %l4
  %t96 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_26_3e(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t96, ptr %l45
  br label %bb12
bb12:
  %t97 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l45
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t97, ptr %l5
  %t98 = load ptr, ptr %l2, !tbaa !29
  %t100 = getelementptr %"compiler/interp:Exec", ptr %t98, i32 0, i32 9
  store ptr %t100, ptr %l6, !tbaa !29
  store i64 0, ptr %l7, !tbaa !24
  br label %bb13
bb13:
  store %olang.scope zeroinitializer, ptr %s2
  %t102 = load i64, ptr %l7, !tbaa !24
  store i64 %t102, ptr %l48, !tbaa !24
  %t103 = load ptr, ptr %l6, !tbaa !29
  %t105 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t103)
  store i64 %t105, ptr %l50
  br label %bb14
bb14:
  %t106 = load i64, ptr %l48, !tbaa !24
  %t107 = load i64, ptr %l50, !tbaa !24
  %t108 = icmp slt i64 %t106, %t107
  %t110 = xor i1 %t108, true
  br i1 %t110, label %bb15, label %bb16
bb15:
  call void @__olang_scope_close(ptr %s2)
  br label %bb43
bb16:
  br label %bb17
bb17:
  %t112 = load ptr, ptr %l6, !tbaa !29
  %t113 = load i64, ptr %l7, !tbaa !24
  %t116 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t112, i64 %t113)
  store i64 %t116, ptr %l55
  br label %bb18
bb18:
  %t117 = load i64, ptr %l55, !tbaa !24
  store i64 %t117, ptr %l8, !tbaa !24
  %t118 = load ptr, ptr %l2, !tbaa !29
  %t120 = getelementptr %"compiler/interp:Exec", ptr %t118, i32 0, i32 1
  %t121 = load ptr, ptr %t120, !tbaa !29
  %t123 = load i64, ptr %l8, !tbaa !24
  %t126 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t121, i64 %t123)
  store ptr %t126, ptr %l60
  br label %bb19
bb19:
  %t127 = load ptr, ptr %l60, !tbaa !29
  %t129 = getelementptr %"compiler/typed:Body", ptr %t127, i32 0, i32 1
  %t130 = load { i64, [2 x i64] }, ptr %t129
  store { i64, [2 x i64] } %t130, ptr %l9
  %t132 = load { i64, [2 x i64] }, ptr %l9
  %t134 = extractvalue { i64, [2 x i64] } %t132, 0
  %t135 = icmp eq i64 %t134, 6
  %t137 = xor i1 %t135, true
  br i1 %t137, label %bb20, label %bb21
bb20:
  call void @__olang_scope_close(ptr %s2)
  br label %bb42
bb21:
  br label %bb22
bb22:
  %t139 = getelementptr { i64, [2 x i64] }, ptr %l9, i32 0, i32 1
  %t140 = getelementptr { i64, i32 }, ptr %t139, i32 0, i32 0
  %t141 = load i64, ptr %t140
  %t143 = getelementptr { i64, [2 x i64] }, ptr %l9, i32 0, i32 1
  %t144 = getelementptr { i64, i32 }, ptr %t143, i32 0, i32 1
  %t145 = load i32, ptr %t144
  store i64 %t141, ptr %l12, !tbaa !24
  store i32 %t145, ptr %l13, !tbaa !23
  %t151 = load ptr, ptr %l0, !tbaa !29
  %t153 = getelementptr %"compiler/check:Checker", ptr %t151, i32 0, i32 1
  %t154 = load ptr, ptr %t153, !tbaa !29
  %t155 = load i64, ptr %l12, !tbaa !24
  %t156 = load i32, ptr %l13, !tbaa !23
  %t160 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eGlobalDecl(ptr %v0, ptr %v0, ptr %t154, i64 %t155, i32 %t156)
  store ptr %t160, ptr %l74
  br label %bb23
bb23:
  %t161 = load ptr, ptr %l74, !tbaa !29
  store ptr %t161, ptr %l14, !tbaa !29
  %t162 = load ptr, ptr %l14, !tbaa !29
  %t164 = icmp eq ptr %t162, null
  %t166 = xor i1 %t164, true
  br i1 %t166, label %bb24, label %bb25
bb24:
  %t168 = load ptr, ptr %l14, !tbaa !29
  %t170 = getelementptr %"compiler/ast:VarDecl", ptr %t168, i32 0, i32 2
  %t171 = load ptr, ptr %t170, !tbaa !29
  %t173 = call i1 @compiler_2fgeneric_2eWrittenMut(ptr %v0, ptr %t171)
  store i1 %t173, ptr %l81
  br label %bb26
bb25:
  store i1 false, ptr %l78, !tbaa !21
  br label %bb27
bb26:
  %t174 = load i1, ptr %l81, !tbaa !21
  store i1 %t174, ptr %l78, !tbaa !21
  br label %bb27
bb27:
  %t175 = load i1, ptr %l78, !tbaa !21
  br i1 %t175, label %bb28, label %bb29
bb28:
  store %olang.scope zeroinitializer, ptr %s4
  %t176 = load ptr, ptr %l2, !tbaa !29
  %t177 = load i64, ptr %l12, !tbaa !24
  %t178 = load i32, ptr %l13, !tbaa !23
  %t182 = call { i32, %"compiler/eval:Image" } @compiler_2finterp_2ecompiler_2finterp_3aExec_2ebakeMutable(ptr %v0, ptr %s4, ptr %t176, i64 %t177, i32 %t178)
  %t183 = extractvalue { i32, %"compiler/eval:Image" } %t182, 1
  %t184 = extractvalue { i32, %"compiler/eval:Image" } %t182, 0
  store i32 %t184, ptr %l87
  %t185 = icmp ne i32 %t184, 0
  br i1 %t185, label %bb31, label %ok.186, !prof !99
ok.186:
  store %"compiler/eval:Image" %t183, ptr %l86
  br label %bb30
bb29:
  br label %bb35
bb30:
  %t187 = load %"compiler/eval:Image", ptr %l86
  store %"compiler/eval:Image" %t187, ptr %l82
  br label %bb33
bb31:
  %t188 = load i32, ptr %l87, !tbaa !23
  %t189 = ashr i32 %t188, 16
  %t191 = icmp eq i32 %t189, 1
  store i1 %t191, ptr %l89, !tbaa !21
  br label %bb32
bb32:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s2)
  br label %bb42
bb33:
  %t192 = load %"compiler/eval:Image", ptr %l82
  %t193 = load ptr, ptr %lp1
  %t194 = load i64, ptr %l8, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2feval_3aImage_3e_2e_Hb8bfbe57c0e5b70e405cb38b3b12641e(ptr %v1, ptr %s4, ptr %t193, i64 %t194, %"compiler/eval:Image" %t192)
  br label %bb34
bb34:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s2)
  br label %bb42
bb35:
  %t199 = load ptr, ptr %l2, !tbaa !29
  %t201 = getelementptr %"compiler/interp:Exec", ptr %t199, i32 0, i32 4
  %t202 = load i64, ptr %l12, !tbaa !24
  %t203 = load i32, ptr %l13, !tbaa !23
  %t207 = call { i32, %"compiler/eval:Image" } @compiler_2feval_2ecompiler_2feval_3aMachine_2eImage(ptr %v0, ptr %s2, ptr %t201, i64 %t202, i32 %t203, i1 false)
  %t208 = extractvalue { i32, %"compiler/eval:Image" } %t207, 1
  %t209 = extractvalue { i32, %"compiler/eval:Image" } %t207, 0
  store i32 %t209, ptr %l99
  %t210 = icmp ne i32 %t209, 0
  br i1 %t210, label %bb37, label %ok.211, !prof !99
ok.211:
  store %"compiler/eval:Image" %t208, ptr %l98
  br label %bb36
bb36:
  %t212 = load %"compiler/eval:Image", ptr %l98
  store %"compiler/eval:Image" %t212, ptr %l93
  br label %bb40
bb37:
  %t213 = load i32, ptr %l99, !tbaa !23
  %t214 = ashr i32 %t213, 16
  %t216 = icmp eq i32 %t214, 1
  store i1 %t216, ptr %l101, !tbaa !21
  br label %bb38
bb38:
  %t217 = load ptr, ptr %l2, !tbaa !29
  %t218 = load ptr, ptr %l0, !tbaa !29
  %t219 = load ptr, ptr %l3, !tbaa !29
  %t220 = load i64, ptr %l8, !tbaa !24
  %t221 = load ptr, ptr %l14, !tbaa !29
  call void @compiler_2finterp_2eunbaked(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %s0, ptr %s0, ptr %t217, ptr %t218, ptr %t219, i64 %t220, ptr %t221, ptr %l4, ptr %l5)
  br label %bb39
bb39:
  call void @__olang_scope_close(ptr %s2)
  br label %bb42
bb40:
  %t229 = load %"compiler/eval:Image", ptr %l93
  %t230 = load ptr, ptr %lp1
  %t231 = load i64, ptr %l8, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2feval_3aImage_3e_2e_Hb8bfbe57c0e5b70e405cb38b3b12641e(ptr %v1, ptr %s2, ptr %t230, i64 %t231, %"compiler/eval:Image" %t229)
  br label %bb41
bb41:
  call void @__olang_scope_close(ptr %s2)
  br label %bb42
bb42:
  %t236 = load i64, ptr %l7, !tbaa !24
  %t238 = add i64 %t236, 1
  store i64 %t238, ptr %l7, !tbaa !24
  br label %bb13
bb43:
  %t240 = load ptr, ptr %l2, !tbaa !29
  %t241 = load ptr, ptr %lp1
  call void @compiler_2finterp_2eshareStorage(ptr %v0, ptr %v1, ptr %t240, ptr %t241)
  br label %bb44
bb44:
  %t244 = load ptr, ptr %l0, !tbaa !29
  %t246 = getelementptr %"compiler/check:Checker", ptr %t244, i32 0, i32 136
  %t248 = call %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fsource_3aSpan_3e_2_Hbfebb6c42bc5b6ebe27287b6298add36(ptr %v0, ptr %v0, ptr %t246)
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t248, ptr %l118
  br label %bb45
bb45:
  %t249 = load %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %l118
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t249, ptr %l17
  br label %bb46
bb46:
  store %olang.scope zeroinitializer, ptr %s9
  %t251 = call { i32, %"std/prelude/map:MapEntry.9f40551e0d6019a8e678d8f53048b6ba" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapIter_3cI64_2c_20compiler_2fsource_3aSpan__Hd38fe3b5521cd0cc33c71306d155ae89(ptr %v0, ptr %l17)
  %t252 = extractvalue { i32, %"std/prelude/map:MapEntry.9f40551e0d6019a8e678d8f53048b6ba" } %t251, 1
  %t253 = extractvalue { i32, %"std/prelude/map:MapEntry.9f40551e0d6019a8e678d8f53048b6ba" } %t251, 0
  store i32 %t253, ptr %l122
  %t254 = icmp ne i32 %t253, 0
  br i1 %t254, label %bb48, label %ok.255, !prof !99
ok.255:
  store %"std/prelude/map:MapEntry.9f40551e0d6019a8e678d8f53048b6ba" %t252, ptr %l121
  br label %bb47
bb47:
  %t256 = load %"std/prelude/map:MapEntry.9f40551e0d6019a8e678d8f53048b6ba", ptr %l121
  store %"std/prelude/map:MapEntry.9f40551e0d6019a8e678d8f53048b6ba" %t256, ptr %l119
  br label %bb50
bb48:
  %t257 = load i32, ptr %l122, !tbaa !23
  %t258 = ashr i32 %t257, 16
  %t260 = icmp eq i32 %t258, 1
  store i1 %t260, ptr %l124, !tbaa !21
  br label %bb49
bb49:
  call void @__olang_scope_close(ptr %s9)
  br label %bb71
bb50:
  %t261 = load %"std/prelude/map:MapEntry.9f40551e0d6019a8e678d8f53048b6ba", ptr %l119
  store %"std/prelude/map:MapEntry.9f40551e0d6019a8e678d8f53048b6ba" %t261, ptr %l18
  %t262 = load ptr, ptr %lp1
  %t263 = getelementptr %"std/prelude/map:MapEntry.9f40551e0d6019a8e678d8f53048b6ba", ptr %l18, i32 0, i32 0
  %t264 = load i64, ptr %t263, !tbaa !24
  %t267 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2feval_3aImage_3e_2e_H901ad831a5883703dcf426ee01511832(ptr %v1, ptr %t262, i64 %t264)
  store i1 %t267, ptr %l127
  br label %bb51
bb51:
  %t268 = load i1, ptr %l127, !tbaa !21
  br i1 %t268, label %bb52, label %bb53
bb52:
  store i1 true, ptr %l128, !tbaa !21
  br label %bb55
bb53:
  %t269 = load ptr, ptr %l2, !tbaa !29
  %t271 = getelementptr %"compiler/interp:Exec", ptr %t269, i32 0, i32 10
  %t272 = getelementptr %"std/prelude/map:MapEntry.9f40551e0d6019a8e678d8f53048b6ba", ptr %l18, i32 0, i32 0
  %t273 = load i64, ptr %t272, !tbaa !24
  %t276 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t271, i64 %t273)
  store i1 %t276, ptr %l132
  br label %bb54
bb54:
  %t277 = load i1, ptr %l132, !tbaa !21
  store i1 %t277, ptr %l128, !tbaa !21
  br label %bb55
bb55:
  %t278 = load i1, ptr %l128, !tbaa !21
  br i1 %t278, label %bb56, label %bb57
bb56:
  call void @__olang_scope_close(ptr %s9)
  br label %bb70
bb57:
  br label %bb58
bb58:
  %t279 = load ptr, ptr %l2, !tbaa !29
  %t281 = getelementptr %"compiler/interp:Exec", ptr %t279, i32 0, i32 1
  %t282 = load ptr, ptr %t281, !tbaa !29
  %t283 = getelementptr %"std/prelude/map:MapEntry.9f40551e0d6019a8e678d8f53048b6ba", ptr %l18, i32 0, i32 0
  %t284 = load i64, ptr %t283, !tbaa !24
  %t287 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t282, i64 %t284)
  store ptr %t287, ptr %l136
  br label %bb59
bb59:
  %t288 = load ptr, ptr %l136, !tbaa !29
  store ptr %t288, ptr %l19, !tbaa !29
  %t289 = getelementptr %"std/prelude/map:MapEntry.9f40551e0d6019a8e678d8f53048b6ba", ptr %l18, i32 0, i32 0
  %t290 = load i64, ptr %t289, !tbaa !24
  %t293 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_He9bc6cfad7ef603960b4717f3121b8e8(ptr %s0, ptr %s0, ptr %l5, i64 %t290)
  %t294 = extractvalue { i32, { i64, ptr } } %t293, 1
  %t295 = extractvalue { i32, { i64, ptr } } %t293, 0
  store i32 %t295, ptr %l141
  %t296 = icmp ne i32 %t295, 0
  br i1 %t296, label %bb61, label %ok.297, !prof !99
ok.297:
  store { i64, ptr } %t294, ptr %l140
  br label %bb60
bb60:
  %t298 = load { i64, ptr }, ptr %l140, !tbaa !27
  store { i64, ptr } %t298, ptr %l137, !tbaa !27
  br label %bb63
bb61:
  br label %bb62
bb62:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d0, i32 0, i32 1) }, ptr %l137, !tbaa !27
  br label %bb63
bb63:
  %t299 = load { i64, ptr }, ptr %l137, !tbaa !27
  store { i64, ptr } %t299, ptr %l20, !tbaa !27
  %t300 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t300, ptr %l142, !tbaa !27
  %t301 = load { i64, ptr }, ptr %l142, !tbaa !27
  %t302 = extractvalue { i64, ptr } %t301, 1
  %t303 = call ptr @__olang_scope_of(ptr %t302, ptr null)
  %t304 = ptrtoint ptr %t303 to i64
  %t306 = inttoptr i64 %t304 to ptr
  %t307 = load { i64, ptr }, ptr %l142, !tbaa !27
  %t308 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %t306, ptr %s9, { i64, ptr } %t307, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d1, i32 0, i32 1) })
  store i1 %t308, ptr %l144
  br label %bb64
bb64:
  %t309 = load i1, ptr %l144, !tbaa !21
  br i1 %t309, label %bb65, label %bb66
bb65:
  store { i64, ptr } { i64 94, ptr getelementptr inbounds (<{ i64, [94 x i8] }>, ptr @.d2, i32 0, i32 1) }, ptr %l20, !tbaa !27
  br label %bb67
bb66:
  br label %bb67
bb67:
  %t310 = load ptr, ptr %l3, !tbaa !29
  store ptr %t310, ptr %l145, !tbaa !29
  %t311 = load ptr, ptr %l19, !tbaa !29
  %t313 = getelementptr %"compiler/typed:Body", ptr %t311, i32 0, i32 3
  %t314 = load i64, ptr %t313, !tbaa !24
  %t315 = getelementptr %"std/prelude/map:MapEntry.9f40551e0d6019a8e678d8f53048b6ba", ptr %l18, i32 0, i32 1
  %t316 = getelementptr %"compiler/source:Span", ptr %t315, i32 0, i32 0
  %t317 = load i32, ptr %t316, !tbaa !23
  %t319 = sext i32 %t317 to i64
  %t320 = getelementptr %"std/prelude/map:MapEntry.9f40551e0d6019a8e678d8f53048b6ba", ptr %l18, i32 0, i32 1
  %t321 = getelementptr %"compiler/source:Span", ptr %t320, i32 0, i32 1
  %t322 = load i32, ptr %t321, !tbaa !23
  %t324 = sext i32 %t322 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t325
  %t326 = getelementptr { i64, [3 x i64] }, ptr %t325, i32 0, i32 0
  store i64 3, ptr %t326
  %t328 = insertvalue { i64, i64, i64 } undef, i64 %t314, 0
  %t330 = insertvalue { i64, i64, i64 } %t328, i64 %t319, 1
  %t332 = insertvalue { i64, i64, i64 } %t330, i64 %t324, 2
  %t333 = getelementptr { i64, [3 x i64] }, ptr %t325, i32 0, i32 1
  store { i64, i64, i64 } %t332, ptr %t333
  %t334 = load { i64, [3 x i64] }, ptr %t325
  store { i64, [3 x i64] } %t334, ptr %l152
  %t335 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t335, ptr %l153, !tbaa !27
  %t336 = load { i64, ptr }, ptr %l153, !tbaa !27
  %t337 = extractvalue { i64, ptr } %t336, 1
  %t338 = call ptr @__olang_scope_of(ptr %t337, ptr null)
  %t339 = ptrtoint ptr %t338 to i64
  %t341 = inttoptr i64 %t339 to ptr
  %t342 = load { i64, ptr }, ptr %l153, !tbaa !27
  %t343 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eComptimeNotBaked(ptr %t341, ptr %s9, { i64, ptr } %t342)
  store %"compiler/diagmsg:Msg" %t343, ptr %l155
  br label %bb68
bb68:
  %t344 = load ptr, ptr %l145, !tbaa !29
  %t345 = load { i64, [3 x i64] }, ptr %l152
  %t346 = load %"compiler/diagmsg:Msg", ptr %l155
  %t347 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %s9, ptr %t344, { i64, [3 x i64] } %t345, %"compiler/diagmsg:Msg" %t346)
  store i64 %t347, ptr %l156
  br label %bb69
bb69:
  call void @__olang_scope_close(ptr %s9)
  br label %bb70
bb70:
  br label %bb46
bb71:
  %t348 = load ptr, ptr %lp1
  %t349 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t348
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t349, ptr %rv
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
  %l53 = alloca %"compiler/interp:Exec"
  %l55 = alloca ptr
  %l56 = alloca i64
  %l59 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l61 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l63 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l67 = alloca i64
  %l70 = alloca i64
  %l72 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l73 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l76 = alloca i64
  %l78 = alloca i64
  %l84 = alloca %"compiler/check:AssertAsk"
  %l88 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l91 = alloca i1
  %l102 = alloca ptr
  %l103 = alloca { i64, [2 x i64] }
  %l107 = alloca { i64, [5 x i64] }
  %l115 = alloca i64
  %l125 = alloca i1
  %l134 = alloca ptr
  %l138 = alloca i1
  %l144 = alloca ptr
  %l148 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l149 = alloca ptr
  %l150 = alloca ptr
  %l151 = alloca { i64, [3 x i64] }
  %l154 = alloca %"compiler/diagmsg:Msg"
  %l155 = alloca i64
  %l157 = alloca i1
  %l159 = alloca ptr
  %l160 = alloca i64
  %l161 = alloca { i64, [3 x i64] }
  %l162 = alloca %"compiler/diagmsg:Msg"
  %l165 = alloca %"compiler/diagmsg:Msg"
  %l173 = alloca ptr
  %l180 = alloca %"compiler/interp:abortedAsk"
  %l188 = alloca i1
  %l192 = alloca ptr
  %l193 = alloca ptr
  %l194 = alloca { i64, [3 x i64] }
  %l196 = alloca %"compiler/diagmsg:Msg"
  %l197 = alloca i64
  %l206 = alloca i64
  %l208 = alloca i64
  %l213 = alloca %"compiler/interp:abortedAsk"
  %l214 = alloca ptr
  %l218 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l219 = alloca i1
  %l231 = alloca %"compiler/check:AssertAsk"
  %l232 = alloca ptr
  %l233 = alloca ptr
  %l239 = alloca { i64, [3 x i64] }
  %l241 = alloca { i64, ptr }
  %l242 = alloca %"compiler/diagmsg:Msg"
  %l243 = alloca i64
  %l244 = alloca ptr
  %l245 = alloca i64
  %l251 = alloca { i64, [3 x i64] }
  %l252 = alloca %"compiler/diagmsg:Msg"
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %rv = alloca i64
  %t46 = alloca %"compiler/interp:Exec", align 8
  %t151 = alloca %"compiler/check:AssertAsk", align 8
  %t171 = alloca { i64, [5 x i64] }, align 8
  %t185 = alloca { i64, [2 x i64] }, align 8
  %t245 = alloca { i64, [3 x i64] }, align 8
  %t498 = alloca %"compiler/check:AssertAsk", align 8
  %t514 = alloca { i64, [3 x i64] }, align 8
  %t550 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 108
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aAssertAsk_3e_2eLen__Hcf51b196874cac8430175c74f3bdddd4(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l31
  br label %bb1
bb1:
  %t6 = load i64, ptr %l31, !tbaa !24
  %t7 = icmp eq i64 %t6, 0
  br i1 %t7, label %bb2, label %bb3
bb2:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/check:Checker", ptr %t9, i32 0, i32 130
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
  %t20 = getelementptr %"compiler/check:Checker", ptr %t18, i32 0, i32 109
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
  %t30 = getelementptr %"compiler/check:Checker", ptr %t28, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t33 = getelementptr %"compiler/generic:Program", ptr %t31, i32 0, i32 0
  %t34 = load ptr, ptr %t33, !tbaa !29
  %t36 = getelementptr %"compiler/load:Loader", ptr %t34, i32 0, i32 4
  %t37 = load ptr, ptr %t36, !tbaa !29
  store ptr %t37, ptr %l2, !tbaa !29
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/check:Checker", ptr %t39, i32 0, i32 1
  %t42 = load ptr, ptr %t41, !tbaa !29
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/check:Checker", ptr %t43, i32 0, i32 14
  call void @compiler_2finterp_3aExec_2ector(ptr %t46, ptr %v0, ptr %v0, ptr %v0, ptr %t42, ptr %t45, i32 0)
  call void @llvm.memmove.p0.p0.i64(ptr %l53, ptr %t46, i64 4976, i1 false)
  br label %bb13
bb13:
  %t50 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 4976, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t50, ptr %l53, i64 4976, i1 false)
  store ptr %t50, ptr %l3, !tbaa !29
  %t52 = load ptr, ptr %l3, !tbaa !29
  store ptr %t52, ptr %l55, !tbaa !29
  %t53 = ptrtoint ptr %v0 to i64
  store i64 %t53, ptr %l56, !tbaa !24
  %t54 = load i1, ptr @olang_2esole_2ecompiler_2finterp_3aExec_2e10
  br i1 %t54, label %bb14, label %bb15
bb14:
  %t56 = call ptr @__olang_region_make(ptr %v0)
  %t57 = ptrtoint ptr %t56 to i64
  store i64 %t57, ptr %l56, !tbaa !24
  br label %bb15
bb15:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/check:Checker", ptr %t58, i32 0, i32 140
  %t61 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t60
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t61, ptr %l59
  %t62 = load i64, ptr %l56
  %t63 = inttoptr i64 %t62 to ptr
  %t65 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %t63, ptr %l59)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t65, ptr %l61
  br label %bb16
bb16:
  %t66 = load i1, ptr @olang_2esole_2ecompiler_2finterp_3aExec_2e10
  br i1 %t66, label %bb17, label %bb18
bb17:
  %t68 = load i64, ptr %l56
  %t69 = inttoptr i64 %t68 to ptr
  %t70 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l61, i32 0, i32 2
  %t71 = load { i64, ptr }, ptr %t70
  %t72 = extractvalue { i64, ptr } %t71, 1
  %t73 = call ptr @__olang_region_or(ptr %t72, ptr null)
  %t74 = icmp ne ptr %t73, null
  %t75 = select i1 %t74, ptr %t73, ptr null
  %t76 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l61, i32 0, i32 1
  %t77 = load { i64, ptr }, ptr %t76
  %t78 = extractvalue { i64, ptr } %t77, 1
  %t79 = call ptr @__olang_region_or(ptr %t78, ptr null)
  %t80 = icmp ne ptr %t79, null
  %t81 = select i1 %t80, ptr %t79, ptr %t75
  %t82 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l61, i32 0, i32 0
  %t83 = load { i64, ptr }, ptr %t82
  %t84 = extractvalue { i64, ptr } %t83, 1
  %t85 = call ptr @__olang_region_or(ptr %t84, ptr null)
  %t86 = icmp ne ptr %t85, null
  %t87 = select i1 %t86, ptr %t85, ptr %t81
  %t88 = icmp eq ptr %t87, %t69
  call void @__olang_region_settle(ptr %t69, i1 %t88)
  br label %bb18
bb18:
  %t89 = load ptr, ptr %l55, !tbaa !29
  %t90 = getelementptr %"compiler/interp:Exec", ptr %t89, i32 0, i32 10
  %t91 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t90
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t91, ptr %l63
  %t92 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l61
  %t93 = load ptr, ptr %l55, !tbaa !29
  %t94 = getelementptr %"compiler/interp:Exec", ptr %t93, i32 0, i32 10
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t92, ptr %t94
  %t95 = load i1, ptr @olang_2esole_2ecompiler_2finterp_3aExec_2e10
  br i1 %t95, label %bb19, label %bb20
bb19:
  %t97 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l63, i32 0, i32 2
  %t98 = load { i64, ptr }, ptr %t97
  %t99 = extractvalue { i64, ptr } %t98, 1
  %t100 = call ptr @__olang_region_or(ptr %t99, ptr null)
  %t101 = icmp ne ptr %t100, null
  %t102 = select i1 %t101, ptr %t100, ptr null
  %t103 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l63, i32 0, i32 1
  %t104 = load { i64, ptr }, ptr %t103
  %t105 = extractvalue { i64, ptr } %t104, 1
  %t106 = call ptr @__olang_region_or(ptr %t105, ptr null)
  %t107 = icmp ne ptr %t106, null
  %t108 = select i1 %t107, ptr %t106, ptr %t102
  %t109 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l63, i32 0, i32 0
  %t110 = load { i64, ptr }, ptr %t109
  %t111 = extractvalue { i64, ptr } %t110, 1
  %t112 = call ptr @__olang_region_or(ptr %t111, ptr null)
  %t113 = icmp ne ptr %t112, null
  %t114 = select i1 %t113, ptr %t112, ptr %t108
  call void @__olang_region_drop(ptr %t114)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" zeroinitializer, ptr %l63
  br label %bb20
bb20:
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t116 = load ptr, ptr %l3, !tbaa !29
  %t119 = call i64 @compiler_2finterp_2edecideContracts(ptr %v0, ptr %v0, ptr %t115, ptr %t116)
  store i64 %t119, ptr %l67
  br label %bb21
bb21:
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t121 = load ptr, ptr %l3, !tbaa !29
  %t124 = call i64 @compiler_2finterp_2edecideTopAsserts(ptr %v0, ptr %v0, ptr %t120, ptr %t121)
  store i64 %t124, ptr %l70
  br label %bb22
bb22:
  %t125 = load i64, ptr %l67, !tbaa !24
  %t126 = load i64, ptr %l70, !tbaa !24
  %t127 = add i64 %t125, %t126
  store i64 %t127, ptr %l4, !tbaa !24
  %t129 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t129, ptr %l72
  br label %bb23
bb23:
  %t130 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l72
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t130, ptr %l5
  %t131 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2finterp_3aabortedAsk_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t131, ptr %l73
  br label %bb24
bb24:
  %t132 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l73
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t132, ptr %l6
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t135 = getelementptr %"compiler/check:Checker", ptr %t133, i32 0, i32 108
  store ptr %t135, ptr %l7, !tbaa !29
  store i64 0, ptr %l8, !tbaa !24
  br label %bb25
bb25:
  store %olang.scope zeroinitializer, ptr %s3
  %t137 = load i64, ptr %l8, !tbaa !24
  store i64 %t137, ptr %l76, !tbaa !24
  %t138 = load ptr, ptr %l7, !tbaa !29
  %t140 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aAssertAsk_3e_2eLen__Hcf51b196874cac8430175c74f3bdddd4(ptr %v0, ptr %t138)
  store i64 %t140, ptr %l78
  br label %bb26
bb26:
  %t141 = load i64, ptr %l76, !tbaa !24
  %t142 = load i64, ptr %l78, !tbaa !24
  %t143 = icmp slt i64 %t141, %t142
  %t145 = xor i1 %t143, true
  br i1 %t145, label %bb27, label %bb28
bb27:
  call void @__olang_scope_close(ptr %s3)
  br label %bb99
bb28:
  br label %bb29
bb29:
  %t147 = load i64, ptr %l8, !tbaa !24
  store i64 %t147, ptr %l9, !tbaa !24
  %t149 = load ptr, ptr %l7, !tbaa !29
  %t150 = load i64, ptr %l8, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aAssertAsk_3e_2eAt_3ccompiler_2fcheck_3aAssertAsk_3e(ptr %t151, ptr %v0, ptr %v0, ptr %t149, i64 %t150)
  call void @llvm.memmove.p0.p0.i64(ptr %l84, ptr %t151, i64 184, i1 false)
  br label %bb30
bb30:
  call void @llvm.memmove.p0.p0.i64(ptr %l10, ptr %l84, i64 184, i1 false)
  %t154 = getelementptr %"compiler/check:AssertAsk", ptr %l10, i32 0, i32 0
  %t155 = load i64, ptr %t154, !tbaa !24
  %t156 = getelementptr %"compiler/check:AssertAsk", ptr %l10, i32 0, i32 2
  %t157 = getelementptr %"compiler/source:Span", ptr %t156, i32 0, i32 0
  %t158 = load i32, ptr %t157, !tbaa !23
  %t160 = sext i32 %t158 to i64
  %t163 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s3, i64 %t155, i64 %t160)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t163, ptr %l88
  br label %bb31
bb31:
  %t164 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l88
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t164, ptr %l11
  %t165 = load ptr, ptr %l1, !tbaa !29
  %t166 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l11
  %t169 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2ed2e5427629ba63a7110fc86d969058(ptr %v1, ptr %t165, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t166)
  store i1 %t169, ptr %l91
  br label %bb32
bb32:
  %t170 = load i1, ptr %l91, !tbaa !21
  br i1 %t170, label %bb33, label %bb34
bb33:
  call void @__olang_scope_close(ptr %s3)
  br label %bb98
bb34:
  br label %bb35
bb35:
  store { i64, [5 x i64] } zeroinitializer, ptr %t171
  %t172 = getelementptr { i64, [5 x i64] }, ptr %t171, i32 0, i32 0
  store i64 0, ptr %t172
  %t173 = load { i64, [5 x i64] }, ptr %t171
  store { i64, [5 x i64] } %t173, ptr %l12
  store i1 false, ptr %l13, !tbaa !21
  %t175 = getelementptr %"compiler/check:AssertAsk", ptr %l10, i32 0, i32 4
  %t176 = load i64, ptr %t175, !tbaa !24
  %t178 = icmp sge i64 %t176, 0
  br i1 %t178, label %bb36, label %bb37
bb36:
  %t180 = getelementptr %"compiler/check:AssertAsk", ptr %l10, i32 0, i32 4
  %t181 = load i64, ptr %t180, !tbaa !24
  %t183 = trunc i64 %t181 to i32
  store { i64, [2 x i64] } zeroinitializer, ptr %t185
  %t186 = getelementptr { i64, [2 x i64] }, ptr %t185, i32 0, i32 0
  store i64 0, ptr %t186
  %t188 = insertvalue { i32 } undef, i32 %t183, 0
  %t189 = getelementptr { i64, [2 x i64] }, ptr %t185, i32 0, i32 1
  store { i32 } %t188, ptr %t189
  %t190 = load { i64, [2 x i64] }, ptr %t185
  store { i64, [2 x i64] } %t190, ptr %l14
  %t192 = load ptr, ptr %l3, !tbaa !29
  %t193 = load { i64, [2 x i64] }, ptr %l14
  call void @compiler_2finterp_2ecompiler_2finterp_3aExec_2eNeed(ptr %v0, ptr %t192, { i64, [2 x i64] } %t193)
  br label %bb38
bb37:
  br label %bb48
bb38:
  %t196 = load ptr, ptr %l3, !tbaa !29
  %t198 = getelementptr %"compiler/interp:Exec", ptr %t196, i32 0, i32 4
  store ptr %t198, ptr %l102, !tbaa !29
  %t199 = load { i64, [2 x i64] }, ptr %l14
  store { i64, [2 x i64] } %t199, ptr %l103
  %t200 = icmp sge i64 0, 0
  br i1 %t200, label %bb39, label %bb40
bb39:
  %t202 = icmp sle i64 0, 1152921504606846975
  br i1 %t202, label %bb41, label %bb42
bb40:
  call void @__olang_check_failed(ptr @olang_loc_7edf3cf7ccf8e57f_276bde685bbe381b)
  unreachable
bb41:
  %t204 = mul i64 0, 8
  %t205 = insertvalue { i64, ptr } undef, i64 0, 0
  %t206 = insertvalue { i64, ptr } %t205, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t207 = load ptr, ptr %l102, !tbaa !29
  %t208 = load { i64, [2 x i64] }, ptr %l103
  %t210 = call { i64, [5 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2eEval(ptr %v0, ptr %s3, ptr %s3, ptr %t207, { i64, [2 x i64] } %t208, { i64, ptr } %t206)
  store { i64, [5 x i64] } %t210, ptr %l107
  br label %bb43
bb42:
  call void @__olang_check_failed(ptr @olang_loc_7edf3cf7ccf8e57f_276bde685bbe381b)
  unreachable
bb43:
  %t211 = load { i64, [5 x i64] }, ptr %l107
  store { i64, [5 x i64] } %t211, ptr %l12
  %t212 = load { i64, [5 x i64] }, ptr %l12
  %t214 = extractvalue { i64, [5 x i64] } %t212, 0
  %t215 = icmp eq i64 %t214, 0
  br i1 %t215, label %bb44, label %bb45
bb44:
  %t217 = load ptr, ptr %l3, !tbaa !29
  %t219 = getelementptr %"compiler/interp:Exec", ptr %t217, i32 0, i32 4
  %t220 = load ptr, ptr %l3, !tbaa !29
  %t222 = getelementptr %"compiler/interp:Exec", ptr %t220, i32 0, i32 4
  %t223 = getelementptr %"compiler/eval:Machine", ptr %t222, i32 0, i32 15
  %t224 = load %"compiler/eval:Ptr", ptr %t223
  %t225 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t229 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eInt(ptr %v0, ptr %t219, %"compiler/eval:Ptr" %t224, i32 %t225)
  store i64 %t229, ptr %l115
  br label %bb46
bb45:
  br label %bb47
bb46:
  %t230 = load i64, ptr %l115, !tbaa !24
  %t231 = icmp ne i64 %t230, 0
  store i1 %t231, ptr %l13, !tbaa !21
  br label %bb47
bb47:
  br label %bb48
bb48:
  %t233 = getelementptr %"compiler/check:AssertAsk", ptr %l10, i32 0, i32 1
  %t234 = load i64, ptr %t233, !tbaa !24
  %t235 = getelementptr %"compiler/check:AssertAsk", ptr %l10, i32 0, i32 3
  %t236 = getelementptr %"compiler/source:Span", ptr %t235, i32 0, i32 0
  %t237 = load i32, ptr %t236, !tbaa !23
  %t239 = sext i32 %t237 to i64
  %t240 = getelementptr %"compiler/check:AssertAsk", ptr %l10, i32 0, i32 3
  %t241 = getelementptr %"compiler/source:Span", ptr %t240, i32 0, i32 1
  %t242 = load i32, ptr %t241, !tbaa !23
  %t244 = sext i32 %t242 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t245
  %t246 = getelementptr { i64, [3 x i64] }, ptr %t245, i32 0, i32 0
  store i64 3, ptr %t246
  %t248 = insertvalue { i64, i64, i64 } undef, i64 %t234, 0
  %t250 = insertvalue { i64, i64, i64 } %t248, i64 %t239, 1
  %t252 = insertvalue { i64, i64, i64 } %t250, i64 %t244, 2
  %t253 = getelementptr { i64, [3 x i64] }, ptr %t245, i32 0, i32 1
  store { i64, i64, i64 } %t252, ptr %t253
  %t254 = load { i64, [3 x i64] }, ptr %t245
  store { i64, [3 x i64] } %t254, ptr %l15
  %t256 = load { i64, [5 x i64] }, ptr %l12
  %t258 = extractvalue { i64, [5 x i64] } %t256, 0
  %t259 = icmp eq i64 %t258, 0
  br i1 %t259, label %bb49, label %bb50
bb49:
  %t261 = load i1, ptr %l13, !tbaa !21
  store i1 %t261, ptr %l125, !tbaa !21
  br label %bb51
bb50:
  store i1 false, ptr %l125, !tbaa !21
  br label %bb51
bb51:
  %t263 = load i1, ptr %l125, !tbaa !21
  br i1 %t263, label %bb52, label %bb53
bb52:
  %t264 = load i64, ptr %l4, !tbaa !24
  %t266 = add i64 %t264, 1
  store i64 %t266, ptr %l4, !tbaa !24
  %t268 = load ptr, ptr %l1, !tbaa !29
  %t269 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l11
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1308596c866d4be061d9da9113abde88(ptr %v1, ptr %t268, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t269, i1 true)
  br label %bb54
bb53:
  br label %bb55
bb54:
  call void @__olang_scope_close(ptr %s3)
  br label %bb98
bb55:
  %t272 = load ptr, ptr %l0, !tbaa !29
  %t274 = getelementptr %"compiler/check:Checker", ptr %t272, i32 0, i32 14
  %t275 = getelementptr %"compiler/check:AssertAsk", ptr %l10, i32 0, i32 0
  %t276 = load i64, ptr %t275, !tbaa !24
  %t279 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t274, i64 %t276)
  store ptr %t279, ptr %l134
  br label %bb56
bb56:
  %t280 = load ptr, ptr %l134, !tbaa !29
  %t282 = getelementptr %"compiler/typed:Body", ptr %t280, i32 0, i32 11
  %t283 = load ptr, ptr %t282, !tbaa !29
  %t284 = getelementptr %"compiler/check:AssertAsk", ptr %l10, i32 0, i32 2
  %t285 = load %"compiler/source:Span", ptr %t284
  %t288 = call i1 @compiler_2ftyped_2eAlwaysReached(ptr %v0, ptr %t283, %"compiler/source:Span" %t285)
  store i1 %t288, ptr %l138
  br label %bb57
bb57:
  %t289 = load i1, ptr %l138, !tbaa !21
  %t290 = xor i1 %t289, true
  br i1 %t290, label %bb58, label %bb59
bb58:
  call void @__olang_scope_close(ptr %s3)
  br label %bb98
bb59:
  br label %bb60
bb60:
  %t292 = load { i64, [5 x i64] }, ptr %l12
  %t294 = extractvalue { i64, [5 x i64] } %t292, 0
  %t295 = icmp eq i64 %t294, 0
  br i1 %t295, label %bb61, label %bb62
bb61:
  br label %bb63
bb62:
  br label %bb75
bb63:
  store %olang.scope zeroinitializer, ptr %s9
  %t297 = load i64, ptr %l4, !tbaa !24
  %t299 = add i64 %t297, 1
  store i64 %t299, ptr %l4, !tbaa !24
  store ptr %l5, ptr %l144, !tbaa !29
  %t301 = getelementptr %"compiler/check:AssertAsk", ptr %l10, i32 0, i32 1
  %t302 = load i64, ptr %t301, !tbaa !24
  %t303 = getelementptr %"compiler/check:AssertAsk", ptr %l10, i32 0, i32 2
  %t304 = getelementptr %"compiler/source:Span", ptr %t303, i32 0, i32 0
  %t305 = load i32, ptr %t304, !tbaa !23
  %t307 = sext i32 %t305 to i64
  %t310 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s9, i64 %t302, i64 %t307)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t310, ptr %l148
  br label %bb64
bb64:
  %t311 = load ptr, ptr %l144, !tbaa !29
  %t312 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l148
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1308596c866d4be061d9da9113abde88(ptr %s0, ptr %t311, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t312, i1 true)
  br label %bb65
bb65:
  %t313 = load ptr, ptr %l2, !tbaa !29
  store ptr %t313, ptr %l149, !tbaa !29
  store ptr %l10, ptr %l150, !tbaa !29
  %t314 = load { i64, [3 x i64] }, ptr %l15
  store { i64, [3 x i64] } %t314, ptr %l151
  %t315 = load ptr, ptr %l3, !tbaa !29
  %t318 = call %"compiler/diagmsg:Msg" @compiler_2finterp_2efalseMessage(ptr %v0, ptr %s3, ptr %s9, ptr %t315, ptr %l10)
  store %"compiler/diagmsg:Msg" %t318, ptr %l154
  br label %bb66
bb66:
  %t319 = load ptr, ptr %l149, !tbaa !29
  %t320 = load ptr, ptr %l150, !tbaa !29
  %t321 = load { i64, [3 x i64] }, ptr %l151
  %t322 = load %"compiler/diagmsg:Msg", ptr %l154
  %t323 = call i64 @compiler_2finterp_2esayAt(ptr %v0, ptr %s3, ptr %s9, ptr %t319, ptr %t320, { i64, [3 x i64] } %t321, %"compiler/diagmsg:Msg" %t322)
  store i64 %t323, ptr %l155
  br label %bb67
bb67:
  %t324 = load i64, ptr %l155, !tbaa !24
  store i64 %t324, ptr %l16, !tbaa !24
  %t325 = getelementptr %"compiler/check:AssertAsk", ptr %l10, i32 0, i32 12
  %t326 = load { i64, ptr }, ptr %t325, !tbaa !27
  %t328 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s9, { i64, ptr } %t326, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store i1 %t328, ptr %l157
  br label %bb68
bb68:
  %t329 = load i1, ptr %l157, !tbaa !21
  %t330 = xor i1 %t329, true
  br i1 %t330, label %bb69, label %bb70
bb69:
  store %olang.scope zeroinitializer, ptr %s10
  %t332 = load ptr, ptr %l2, !tbaa !29
  store ptr %t332, ptr %l159, !tbaa !29
  %t333 = load i64, ptr %l16, !tbaa !24
  store i64 %t333, ptr %l160, !tbaa !24
  %t334 = getelementptr %"compiler/check:AssertAsk", ptr %l10, i32 0, i32 11
  %t335 = load { i64, [3 x i64] }, ptr %t334
  store { i64, [3 x i64] } %t335, ptr %l161
  %t336 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteHere(ptr %s10)
  store %"compiler/diagmsg:Msg" %t336, ptr %l162
  br label %bb71
bb70:
  br label %bb74
bb71:
  %t337 = getelementptr %"compiler/diagmsg:Msg", ptr %l162, i32 0, i32 0
  %t338 = load i32, ptr %t337, !range !{i32 0, i32 884}
  %t339 = getelementptr %"compiler/check:AssertAsk", ptr %l10, i32 0, i32 12
  %t340 = load { i64, ptr }, ptr %t339, !tbaa !27
  %t343 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %s10, ptr %v0, ptr %s10, i32 %t338, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d4, i32 0, i32 1) }, { i64, ptr } %t340)
  store %"compiler/diagmsg:Msg" %t343, ptr %l165
  br label %bb72
bb72:
  %t344 = load ptr, ptr %l159, !tbaa !29
  %t345 = load i64, ptr %l160, !tbaa !24
  %t346 = load { i64, [3 x i64] }, ptr %l161
  %t347 = load %"compiler/diagmsg:Msg", ptr %l165
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %s10, ptr %t344, i64 %t345, { i64, [3 x i64] } %t346, %"compiler/diagmsg:Msg" %t347)
  br label %bb73
bb73:
  call void @__olang_scope_close(ptr %s10)
  br label %bb74
bb74:
  call void @__olang_scope_close(ptr %s9)
  br label %bb97
bb75:
  %t348 = load { i64, [5 x i64] }, ptr %l12
  %t350 = extractvalue { i64, [5 x i64] } %t348, 0
  %t351 = icmp eq i64 %t350, 2
  br i1 %t351, label %bb76, label %bb77
bb76:
  %t353 = getelementptr { i64, [5 x i64] }, ptr %l12, i32 0, i32 1
  %t354 = getelementptr { i32, i64, %"compiler/source:Span", { i64, ptr } }, ptr %t353, i32 0, i32 0
  %t355 = load i32, ptr %t354, !range !{i32 0, i32 16}
  store i32 %t355, ptr %l17
  %t357 = getelementptr { i64, [5 x i64] }, ptr %l12, i32 0, i32 1
  %t358 = getelementptr { i32, i64, %"compiler/source:Span", { i64, ptr } }, ptr %t357, i32 0, i32 1
  %t359 = load i64, ptr %t358
  store i64 %t359, ptr %l18, !tbaa !24
  %t361 = getelementptr { i64, [5 x i64] }, ptr %l12, i32 0, i32 1
  %t362 = getelementptr { i32, i64, %"compiler/source:Span", { i64, ptr } }, ptr %t361, i32 0, i32 2
  %t363 = load %"compiler/source:Span", ptr %t362
  store %"compiler/source:Span" %t363, ptr %l19
  br label %bb78
bb77:
  br label %bb81
bb78:
  store %olang.scope zeroinitializer, ptr %s11
  %t365 = load i64, ptr %l4, !tbaa !24
  %t367 = add i64 %t365, 1
  store i64 %t367, ptr %l4, !tbaa !24
  store ptr %l6, ptr %l173, !tbaa !29
  %t369 = load i64, ptr %l9, !tbaa !24
  %t370 = load i32, ptr %l17, !range !{i32 0, i32 16}
  %t371 = load i64, ptr %l18, !tbaa !24
  %t372 = load %"compiler/source:Span", ptr %l19
  %t373 = load ptr, ptr %l3, !tbaa !29
  %t375 = getelementptr %"compiler/interp:Exec", ptr %t373, i32 0, i32 4
  %t376 = getelementptr %"compiler/eval:Machine", ptr %t375, i32 0, i32 18
  %t377 = load i64, ptr %t376, !tbaa !24
  %t383 = call %"compiler/interp:abortedAsk" @compiler_2finterp_3aabortedAsk_2ector(ptr %s11, i64 %t369, i32 %t370, i64 %t371, %"compiler/source:Span" %t372, i64 %t377)
  store %"compiler/interp:abortedAsk" %t383, ptr %l180
  br label %bb79
bb79:
  %t384 = load ptr, ptr %l173, !tbaa !29
  %t385 = load %"compiler/interp:abortedAsk", ptr %l180
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2finterp_3aabortedAsk_3e_2ePu_H62bc00b7824fd8cdf5686f596056a5cf(ptr %s0, ptr %t384, %"compiler/interp:abortedAsk" %t385)
  br label %bb80
bb80:
  call void @__olang_scope_close(ptr %s11)
  br label %bb97
bb81:
  %t386 = load { i64, [5 x i64] }, ptr %l12
  %t388 = extractvalue { i64, [5 x i64] } %t386, 0
  %t389 = icmp eq i64 %t388, 3
  br i1 %t389, label %bb82, label %bb83
bb82:
  %t391 = getelementptr { i64, [5 x i64] }, ptr %l12, i32 0, i32 1
  %t392 = getelementptr { { i64, ptr }, i64, %"compiler/source:Span" }, ptr %t391, i32 0, i32 0
  %t393 = load { i64, ptr }, ptr %t392
  store { i64, ptr } %t393, ptr %l20, !tbaa !27
  %t395 = getelementptr { i64, [5 x i64] }, ptr %l12, i32 0, i32 1
  %t396 = getelementptr { { i64, ptr }, i64, %"compiler/source:Span" }, ptr %t395, i32 0, i32 1
  %t397 = load i64, ptr %t396
  store i64 %t397, ptr %l21, !tbaa !24
  %t399 = getelementptr { i64, [5 x i64] }, ptr %l12, i32 0, i32 1
  %t400 = getelementptr { { i64, ptr }, i64, %"compiler/source:Span" }, ptr %t399, i32 0, i32 2
  %t401 = load %"compiler/source:Span", ptr %t400
  store %"compiler/source:Span" %t401, ptr %l22
  br label %bb84
bb83:
  br label %bb92
bb84:
  store %olang.scope zeroinitializer, ptr %s12
  %t403 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t404 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyStale, !tbaa !27
  %t405 = load ptr, ptr @__olang_prog_scope
  %t408 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s3, ptr %t405, { i64, ptr } %t403, { i64, ptr } %t404)
  store i1 %t408, ptr %l188
  br label %bb85
bb85:
  %t409 = load i1, ptr %l188, !tbaa !21
  %t410 = xor i1 %t409, true
  br i1 %t410, label %bb86, label %bb87
bb86:
  call void @__olang_scope_close(ptr %s12)
  call void @__olang_scope_close(ptr %s3)
  br label %bb98
bb87:
  br label %bb88
bb88:
  %t412 = load i64, ptr %l4, !tbaa !24
  %t414 = add i64 %t412, 1
  store i64 %t414, ptr %l4, !tbaa !24
  %t416 = load ptr, ptr %l2, !tbaa !29
  store ptr %t416, ptr %l192, !tbaa !29
  store ptr %l10, ptr %l193, !tbaa !29
  %t417 = load { i64, [3 x i64] }, ptr %l15
  store { i64, [3 x i64] } %t417, ptr %l194
  %t418 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t420 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAssertStale(ptr %s3, ptr %s12, { i64, ptr } %t418)
  store %"compiler/diagmsg:Msg" %t420, ptr %l196
  br label %bb89
bb89:
  %t421 = load ptr, ptr %l192, !tbaa !29
  %t422 = load ptr, ptr %l193, !tbaa !29
  %t423 = load { i64, [3 x i64] }, ptr %l194
  %t424 = load %"compiler/diagmsg:Msg", ptr %l196
  %t425 = call i64 @compiler_2finterp_2esayAt(ptr %v0, ptr %s3, ptr %s12, ptr %t421, ptr %t422, { i64, [3 x i64] } %t423, %"compiler/diagmsg:Msg" %t424)
  store i64 %t425, ptr %l197
  br label %bb90
bb90:
  %t426 = load i64, ptr %l197, !tbaa !24
  %t427 = load ptr, ptr %l3, !tbaa !29
  %t428 = load ptr, ptr %l2, !tbaa !29
  %t430 = load i64, ptr %l21, !tbaa !24
  %t431 = load %"compiler/source:Span", ptr %l22
  call void @compiler_2finterp_2estaleNotes(ptr %v0, ptr %v0, ptr %t427, ptr %t428, i64 %t426, i64 %t430, %"compiler/source:Span" %t431)
  br label %bb91
bb91:
  call void @__olang_scope_close(ptr %s12)
  br label %bb97
bb92:
  br i1 true, label %bb93, label %bb94
bb93:
  br label %bb95
bb94:
  br label %bb96
bb95:
  br label %bb97
bb96:
  call void @__olang_check_failed(ptr @olang_loc_d8df33bf7c2af1a9_d617709f0680343d)
  unreachable
bb97:
  call void @__olang_scope_close(ptr %s3)
  br label %bb98
bb98:
  %t437 = load i64, ptr %l8, !tbaa !24
  %t439 = add i64 %t437, 1
  store i64 %t439, ptr %l8, !tbaa !24
  br label %bb25
bb99:
  store ptr %l6, ptr %l24, !tbaa !29
  store i64 0, ptr %l25, !tbaa !24
  br label %bb100
bb100:
  store %olang.scope zeroinitializer, ptr %s17
  %t442 = load i64, ptr %l25, !tbaa !24
  store i64 %t442, ptr %l206, !tbaa !24
  %t443 = load ptr, ptr %l24, !tbaa !29
  %t445 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2finterp_3aabortedAsk_3e_2eLe_H5a66fb9a3db37c186716c1dbb29c1120(ptr %s0, ptr %t443)
  store i64 %t445, ptr %l208
  br label %bb101
bb101:
  %t446 = load i64, ptr %l206, !tbaa !24
  %t447 = load i64, ptr %l208, !tbaa !24
  %t448 = icmp slt i64 %t446, %t447
  %t450 = xor i1 %t448, true
  br i1 %t450, label %bb102, label %bb103
bb102:
  call void @__olang_scope_close(ptr %s17)
  br label %bb122
bb103:
  br label %bb104
bb104:
  %t452 = load ptr, ptr %l24, !tbaa !29
  %t453 = load i64, ptr %l25, !tbaa !24
  %t456 = call %"compiler/interp:abortedAsk" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2finterp_3aabortedAsk_3e_2eAt_Hb6fdd0b60302bbbc29e9a063b33ba4bc(ptr %s0, ptr %t452, i64 %t453)
  store %"compiler/interp:abortedAsk" %t456, ptr %l213
  br label %bb105
bb105:
  %t457 = load %"compiler/interp:abortedAsk", ptr %l213
  store %"compiler/interp:abortedAsk" %t457, ptr %l26
  store ptr %l5, ptr %l214, !tbaa !29
  %t458 = getelementptr %"compiler/interp:abortedAsk", ptr %l26, i32 0, i32 2
  %t459 = load i64, ptr %t458, !tbaa !24
  %t460 = getelementptr %"compiler/interp:abortedAsk", ptr %l26, i32 0, i32 3
  %t461 = getelementptr %"compiler/source:Span", ptr %t460, i32 0, i32 0
  %t462 = load i32, ptr %t461, !tbaa !23
  %t464 = sext i32 %t462 to i64
  %t467 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s17, i64 %t459, i64 %t464)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t467, ptr %l218
  br label %bb106
bb106:
  %t468 = load ptr, ptr %l214, !tbaa !29
  %t469 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l218
  %t470 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2ed2e5427629ba63a7110fc86d969058(ptr %s0, ptr %t468, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t469)
  store i1 %t470, ptr %l219
  br label %bb107
bb107:
  %t471 = load i1, ptr %l219, !tbaa !21
  br i1 %t471, label %bb108, label %bb109
bb108:
  call void @__olang_scope_close(ptr %s17)
  br label %bb121
bb109:
  br label %bb110
bb110:
  %t472 = getelementptr %"compiler/interp:abortedAsk", ptr %l26, i32 0, i32 4
  %t473 = load i64, ptr %t472, !tbaa !24
  %t475 = icmp sge i64 %t473, 0
  br i1 %t475, label %bb111, label %bb112
bb111:
  %t477 = load ptr, ptr %l3, !tbaa !29
  %t478 = load ptr, ptr %l2, !tbaa !29
  %t479 = getelementptr %"compiler/interp:abortedAsk", ptr %l26, i32 0, i32 4
  %t480 = load i64, ptr %t479, !tbaa !24
  %t481 = getelementptr %"compiler/interp:abortedAsk", ptr %l26, i32 0, i32 1
  %t482 = load i32, ptr %t481, !range !{i32 0, i32 16}
  %t483 = getelementptr %"compiler/interp:abortedAsk", ptr %l26, i32 0, i32 2
  %t484 = load i64, ptr %t483, !tbaa !24
  %t485 = getelementptr %"compiler/interp:abortedAsk", ptr %l26, i32 0, i32 3
  %t486 = load %"compiler/source:Span", ptr %t485
  call void @compiler_2finterp_2eglobalAborts(ptr %v0, ptr %v0, ptr %t477, ptr %t478, i64 %t480, i32 %t482, i64 %t484, %"compiler/source:Span" %t486)
  br label %bb113
bb112:
  br label %bb114
bb113:
  call void @__olang_scope_close(ptr %s17)
  br label %bb121
bb114:
  %t493 = load ptr, ptr %l0, !tbaa !29
  %t495 = getelementptr %"compiler/check:Checker", ptr %t493, i32 0, i32 108
  %t496 = getelementptr %"compiler/interp:abortedAsk", ptr %l26, i32 0, i32 0
  %t497 = load i64, ptr %t496, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aAssertAsk_3e_2eAt_3ccompiler_2fcheck_3aAssertAsk_3e(ptr %t498, ptr %v0, ptr %v0, ptr %t495, i64 %t497)
  call void @llvm.memmove.p0.p0.i64(ptr %l231, ptr %t498, i64 184, i1 false)
  br label %bb115
bb115:
  call void @llvm.memmove.p0.p0.i64(ptr %l27, ptr %l231, i64 184, i1 false)
  %t501 = load ptr, ptr %l2, !tbaa !29
  store ptr %t501, ptr %l232, !tbaa !29
  store ptr %l27, ptr %l233, !tbaa !29
  %t502 = getelementptr %"compiler/check:AssertAsk", ptr %l27, i32 0, i32 1
  %t503 = load i64, ptr %t502, !tbaa !24
  %t504 = getelementptr %"compiler/check:AssertAsk", ptr %l27, i32 0, i32 3
  %t505 = getelementptr %"compiler/source:Span", ptr %t504, i32 0, i32 0
  %t506 = load i32, ptr %t505, !tbaa !23
  %t508 = sext i32 %t506 to i64
  %t509 = getelementptr %"compiler/check:AssertAsk", ptr %l27, i32 0, i32 3
  %t510 = getelementptr %"compiler/source:Span", ptr %t509, i32 0, i32 1
  %t511 = load i32, ptr %t510, !tbaa !23
  %t513 = sext i32 %t511 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t514
  %t515 = getelementptr { i64, [3 x i64] }, ptr %t514, i32 0, i32 0
  store i64 3, ptr %t515
  %t517 = insertvalue { i64, i64, i64 } undef, i64 %t503, 0
  %t519 = insertvalue { i64, i64, i64 } %t517, i64 %t508, 1
  %t521 = insertvalue { i64, i64, i64 } %t519, i64 %t513, 2
  %t522 = getelementptr { i64, [3 x i64] }, ptr %t514, i32 0, i32 1
  store { i64, i64, i64 } %t521, ptr %t522
  %t523 = load { i64, [3 x i64] }, ptr %t514
  store { i64, [3 x i64] } %t523, ptr %l239
  %t524 = getelementptr %"compiler/interp:abortedAsk", ptr %l26, i32 0, i32 1
  %t525 = load i32, ptr %t524, !range !{i32 0, i32 16}
  %t527 = call { i64, ptr } @compiler_2finterp_2eAbortWhy(ptr %s17, i32 %t525)
  store { i64, ptr } %t527, ptr %l241
  br label %bb116
bb116:
  %t528 = load { i64, ptr }, ptr %l241, !tbaa !27
  %t529 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAssertAborts(ptr %s17, ptr %s17, { i64, ptr } %t528)
  store %"compiler/diagmsg:Msg" %t529, ptr %l242
  br label %bb117
bb117:
  %t530 = load ptr, ptr %l232, !tbaa !29
  %t531 = load ptr, ptr %l233, !tbaa !29
  %t532 = load { i64, [3 x i64] }, ptr %l239
  %t533 = load %"compiler/diagmsg:Msg", ptr %l242
  %t534 = call i64 @compiler_2finterp_2esayAt(ptr %v0, ptr %v0, ptr %s17, ptr %t530, ptr %t531, { i64, [3 x i64] } %t532, %"compiler/diagmsg:Msg" %t533)
  store i64 %t534, ptr %l243
  br label %bb118
bb118:
  %t535 = load i64, ptr %l243, !tbaa !24
  %t536 = load ptr, ptr %l2, !tbaa !29
  store ptr %t536, ptr %l244, !tbaa !29
  store i64 %t535, ptr %l245, !tbaa !24
  %t538 = getelementptr %"compiler/interp:abortedAsk", ptr %l26, i32 0, i32 2
  %t539 = load i64, ptr %t538, !tbaa !24
  %t540 = getelementptr %"compiler/interp:abortedAsk", ptr %l26, i32 0, i32 3
  %t541 = getelementptr %"compiler/source:Span", ptr %t540, i32 0, i32 0
  %t542 = load i32, ptr %t541, !tbaa !23
  %t544 = sext i32 %t542 to i64
  %t545 = getelementptr %"compiler/interp:abortedAsk", ptr %l26, i32 0, i32 3
  %t546 = getelementptr %"compiler/source:Span", ptr %t545, i32 0, i32 1
  %t547 = load i32, ptr %t546, !tbaa !23
  %t549 = sext i32 %t547 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t550
  %t551 = getelementptr { i64, [3 x i64] }, ptr %t550, i32 0, i32 0
  store i64 3, ptr %t551
  %t553 = insertvalue { i64, i64, i64 } undef, i64 %t539, 0
  %t555 = insertvalue { i64, i64, i64 } %t553, i64 %t544, 1
  %t557 = insertvalue { i64, i64, i64 } %t555, i64 %t549, 2
  %t558 = getelementptr { i64, [3 x i64] }, ptr %t550, i32 0, i32 1
  store { i64, i64, i64 } %t557, ptr %t558
  %t559 = load { i64, [3 x i64] }, ptr %t550
  store { i64, [3 x i64] } %t559, ptr %l251
  %t560 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteHere(ptr %s17)
  store %"compiler/diagmsg:Msg" %t560, ptr %l252
  br label %bb119
bb119:
  %t561 = load ptr, ptr %l244, !tbaa !29
  %t562 = load i64, ptr %l245, !tbaa !24
  %t563 = load { i64, [3 x i64] }, ptr %l251
  %t564 = load %"compiler/diagmsg:Msg", ptr %l252
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %s17, ptr %t561, i64 %t562, { i64, [3 x i64] } %t563, %"compiler/diagmsg:Msg" %t564)
  br label %bb120
bb120:
  call void @__olang_scope_close(ptr %s17)
  br label %bb121
bb121:
  %t565 = load i64, ptr %l25, !tbaa !24
  %t567 = add i64 %t565, 1
  store i64 %t567, ptr %l25, !tbaa !24
  br label %bb100
bb122:
  %t569 = load i64, ptr %l4, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t569, ptr %rv
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
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d5, i32 0, i32 1) })
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
  %t36 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t37 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  %t39 = extractvalue { i64, ptr } %t35, 1
  %t40 = extractvalue { i64, ptr } %t35, 0
  %t41 = add i64 %t37, %t40
  %t42 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d7, i32 0, i32 1) }, 1
  %t43 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d7, i32 0, i32 1) }, 0
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
  %t60 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %s0, ptr %s0, { i64, ptr } %t58, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d8, i32 0, i32 1) })
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
  %t64 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %s0, ptr %s0, { i64, ptr } %t62, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d9, i32 0, i32 1) })
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
  store { i64, ptr } { i64 54, ptr getelementptr inbounds (<{ i64, [54 x i8] }>, ptr @.d10, i32 0, i32 1) }, ptr %l28, !tbaa !27
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d11, i32 0, i32 1) }, ptr %l37, !tbaa !27
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
  store { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d12, i32 0, i32 1) }, ptr %l45, !tbaa !27
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
  %t133 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %s0, ptr %s0, { i64, ptr } %t131, { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d13, i32 0, i32 1) })
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
  %t217 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t215, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d14, i32 0, i32 1) })
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d15, i32 0, i32 1) }, ptr %l88, !tbaa !27
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
  %l51 = alloca { i64, ptr }
  %l57 = alloca { i64, ptr }
  %l69 = alloca { i64, ptr }
  %s4 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s14 = alloca %olang.scope
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d16, i32 0, i32 1) }, ptr %l13, !tbaa !27
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
  %t32 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t33 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
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
  %t50 = load i32, ptr %t49, !range !{i32 0, i32 16}
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
  br label %bb30
bb11:
  store %olang.scope zeroinitializer, ptr %s4
  %t64 = load i32, ptr %l3, !range !{i32 0, i32 16}
  %t66 = call { i64, ptr } @compiler_2fmir_2eExitText(ptr %s4, i32 %t64)
  store { i64, ptr } %t66, ptr %l29
  br label %bb12
bb12:
  %t67 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t67, ptr %l7, !tbaa !27
  %t68 = load i32, ptr %l3, !range !{i32 0, i32 16}
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
  %t84 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t85 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
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
  %t97 = load i32, ptr %l3, !range !{i32 0, i32 16}
  %t99 = trunc i64 6 to i32
  %t100 = icmp eq i32 %t97, %t99
  br i1 %t100, label %bb17, label %bb18
bb17:
  %t102 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t103 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d19, i32 0, i32 1) }, 1
  %t104 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d19, i32 0, i32 1) }, 0
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
  %t116 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s4, ptr %s4, { i64, ptr } %t114, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d20, i32 0, i32 1) })
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
  %t126 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t128 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s4, { i64, ptr } %t126, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d21, i32 0, i32 1) })
  store i1 %t128, ptr %l47
  br label %bb24
bb24:
  %t129 = load i1, ptr %l47, !tbaa !21
  br i1 %t129, label %bb25, label %bb26
bb25:
  store %olang.scope zeroinitializer, ptr %s11
  %t130 = load ptr, ptr %l1, !tbaa !29
  %t131 = load i64, ptr %l4, !tbaa !24
  %t132 = load %"compiler/source:Span", ptr %l5
  %t136 = call { i64, ptr } @compiler_2finterp_2eline(ptr %v1, ptr %s11, ptr %t130, i64 %t131, %"compiler/source:Span" %t132)
  store { i64, ptr } %t136, ptr %l51
  br label %bb27
bb26:
  br label %bb28
bb27:
  %t137 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t138 = load { i64, ptr }, ptr %l51, !tbaa !27
  %t139 = extractvalue { i64, ptr } %t138, 1
  %t140 = extractvalue { i64, ptr } %t138, 0
  %t141 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d22, i32 0, i32 1) }, 1
  %t142 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d22, i32 0, i32 1) }, 0
  %t143 = add i64 %t140, %t142
  %t145 = extractvalue { i64, ptr } %t137, 1
  %t146 = extractvalue { i64, ptr } %t137, 0
  %t147 = add i64 %t143, %t146
  %t148 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t147)
  call void @olang_textcopy(ptr %t148, ptr %t139, i64 %t140)
  %t149 = getelementptr i8, ptr %t148, i64 %t140
  call void @olang_textcopy(ptr %t149, ptr %t141, i64 %t142)
  %t150 = getelementptr i8, ptr %t149, i64 %t142
  call void @olang_textcopy(ptr %t150, ptr %t145, i64 %t146)
  %t151 = insertvalue { i64, ptr } undef, i64 %t147, 0
  %t152 = insertvalue { i64, ptr } %t151, ptr %t148, 1
  call void @__olang_scope_close(ptr %s11)
  call void @__olang_scope_close(ptr %s4)
  store { i64, ptr } %t152, ptr %rv
  br label %ret
bb28:
  %t154 = load ptr, ptr %l1, !tbaa !29
  %t155 = load i64, ptr %l4, !tbaa !24
  %t156 = load %"compiler/source:Span", ptr %l5
  %t160 = call { i64, ptr } @compiler_2finterp_2eline(ptr %v1, ptr %s4, ptr %t154, i64 %t155, %"compiler/source:Span" %t156)
  store { i64, ptr } %t160, ptr %l57
  br label %bb29
bb29:
  %t161 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t162 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t163 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t164 = extractvalue { i64, ptr } %t163, 1
  %t165 = extractvalue { i64, ptr } %t163, 0
  %t166 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d23, i32 0, i32 1) }, 1
  %t167 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d23, i32 0, i32 1) }, 0
  %t168 = add i64 %t165, %t167
  %t170 = extractvalue { i64, ptr } %t161, 1
  %t171 = extractvalue { i64, ptr } %t161, 0
  %t172 = add i64 %t168, %t171
  %t173 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d23, i32 0, i32 1) }, 1
  %t174 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d23, i32 0, i32 1) }, 0
  %t175 = add i64 %t172, %t174
  %t177 = extractvalue { i64, ptr } %t162, 1
  %t178 = extractvalue { i64, ptr } %t162, 0
  %t179 = add i64 %t175, %t178
  %t180 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t179)
  call void @olang_textcopy(ptr %t180, ptr %t164, i64 %t165)
  %t181 = getelementptr i8, ptr %t180, i64 %t165
  call void @olang_textcopy(ptr %t181, ptr %t166, i64 %t167)
  %t182 = getelementptr i8, ptr %t181, i64 %t167
  call void @olang_textcopy(ptr %t182, ptr %t170, i64 %t171)
  %t183 = getelementptr i8, ptr %t182, i64 %t171
  call void @olang_textcopy(ptr %t183, ptr %t173, i64 %t174)
  %t184 = getelementptr i8, ptr %t183, i64 %t174
  call void @olang_textcopy(ptr %t184, ptr %t177, i64 %t178)
  %t185 = insertvalue { i64, ptr } undef, i64 %t179, 0
  %t186 = insertvalue { i64, ptr } %t185, ptr %t180, 1
  call void @__olang_scope_close(ptr %s4)
  store { i64, ptr } %t186, ptr %rv
  br label %ret
bb30:
  %t188 = load { i64, [5 x i64] }, ptr %l0
  %t190 = extractvalue { i64, [5 x i64] } %t188, 0
  %t191 = icmp eq i64 %t190, 3
  br i1 %t191, label %bb31, label %bb32
bb31:
  %t193 = getelementptr { i64, [5 x i64] }, ptr %l0, i32 0, i32 1
  %t194 = getelementptr { { i64, ptr }, i64, %"compiler/source:Span" }, ptr %t193, i32 0, i32 0
  %t195 = load { i64, ptr }, ptr %t194
  store { i64, ptr } %t195, ptr %l8, !tbaa !27
  %t197 = getelementptr { i64, [5 x i64] }, ptr %l0, i32 0, i32 1
  %t198 = getelementptr { { i64, ptr }, i64, %"compiler/source:Span" }, ptr %t197, i32 0, i32 1
  %t199 = load i64, ptr %t198
  store i64 %t199, ptr %l9, !tbaa !24
  %t201 = getelementptr { i64, [5 x i64] }, ptr %l0, i32 0, i32 1
  %t202 = getelementptr { { i64, ptr }, i64, %"compiler/source:Span" }, ptr %t201, i32 0, i32 2
  %t203 = load %"compiler/source:Span", ptr %t202
  store %"compiler/source:Span" %t203, ptr %l10
  br label %bb33
bb32:
  br label %bb35
bb33:
  store %olang.scope zeroinitializer, ptr %s14
  %t205 = load ptr, ptr %l1, !tbaa !29
  %t206 = load i64, ptr %l9, !tbaa !24
  %t207 = load %"compiler/source:Span", ptr %l10
  %t211 = call { i64, ptr } @compiler_2finterp_2eline(ptr %v1, ptr %s14, ptr %t205, i64 %t206, %"compiler/source:Span" %t207)
  store { i64, ptr } %t211, ptr %l69
  br label %bb34
bb34:
  %t212 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t213 = load { i64, ptr }, ptr %l69, !tbaa !27
  %t214 = extractvalue { i64, ptr } %t213, 1
  %t215 = extractvalue { i64, ptr } %t213, 0
  %t216 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d24, i32 0, i32 1) }, 1
  %t217 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d24, i32 0, i32 1) }, 0
  %t218 = add i64 %t215, %t217
  %t220 = extractvalue { i64, ptr } %t212, 1
  %t221 = extractvalue { i64, ptr } %t212, 0
  %t222 = add i64 %t218, %t221
  %t223 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t222)
  call void @olang_textcopy(ptr %t223, ptr %t214, i64 %t215)
  %t224 = getelementptr i8, ptr %t223, i64 %t215
  call void @olang_textcopy(ptr %t224, ptr %t216, i64 %t217)
  %t225 = getelementptr i8, ptr %t224, i64 %t217
  call void @olang_textcopy(ptr %t225, ptr %t220, i64 %t221)
  %t226 = insertvalue { i64, ptr } undef, i64 %t222, 0
  %t227 = insertvalue { i64, ptr } %t226, ptr %t223, 1
  call void @__olang_scope_close(ptr %s14)
  store { i64, ptr } %t227, ptr %rv
  br label %ret
bb35:
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
  %l126 = alloca %"compiler/interp:chained"
  %s1 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %rv = alloca %"compiler/interp:chained"
  %t64 = alloca { i64, [3 x i64] }, align 8
  %t299 = alloca { i64, [3 x i64] }, align 8
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
  store %olang.scope zeroinitializer, ptr %s1
  %t33 = load ptr, ptr %l7, !tbaa !29
  %t35 = icmp eq ptr %t33, null
  %t37 = xor i1 %t35, true
  %t39 = xor i1 %t37, true
  br i1 %t39, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s1)
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
  %t99 = call %"compiler/interp:chained" @compiler_2finterp_3achained_2ector(ptr %v3, ptr %v3, i64 0, i1 false, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d25, i32 0, i32 1) }, { i64, [3 x i64] } %t97)
  store %"compiler/interp:chained" %t99, ptr %l59
  br label %bb16
bb15:
  br label %bb17
bb16:
  call void @__olang_scope_close(ptr %s1)
  %t100 = load %"compiler/interp:chained", ptr %l59
  store %"compiler/interp:chained" %t100, ptr %rv
  br label %ret
bb17:
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t102 = load i64, ptr %l10, !tbaa !24
  %t105 = call { i64, [5 x i64] } @compiler_2finterp_2ecompiler_2finterp_3aExec_2eCondStop(ptr %v0, ptr %s1, ptr %t101, i64 %t102)
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
  %t145 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d26, i32 0, i32 1) }, 1
  %t146 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d26, i32 0, i32 1) }, 0
  %t147 = add i64 %t144, %t146
  %t148 = load { i64, ptr }, ptr %l76, !tbaa !27
  %t149 = extractvalue { i64, ptr } %t148, 1
  %t150 = extractvalue { i64, ptr } %t148, 0
  %t151 = add i64 %t147, %t150
  %t152 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d27, i32 0, i32 1) }, 1
  %t153 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d27, i32 0, i32 1) }, 0
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
  call void @__olang_scope_close(ptr %s1)
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
  %t184 = load i32, ptr %t183, !range !{i32 0, i32 16}
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
  %t199 = load i32, ptr %l15, !range !{i32 0, i32 16}
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
  %t212 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d28, i32 0, i32 1) }, 1
  %t213 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d28, i32 0, i32 1) }, 0
  %t214 = add i64 %t211, %t213
  %t215 = load { i64, ptr }, ptr %l93, !tbaa !27
  %t216 = extractvalue { i64, ptr } %t215, 1
  %t217 = extractvalue { i64, ptr } %t215, 0
  %t218 = add i64 %t214, %t217
  %t219 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d29, i32 0, i32 1) }, 1
  %t220 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d29, i32 0, i32 1) }, 0
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
  call void @__olang_scope_close(ptr %s1)
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
  %t251 = call %"compiler/interp:chained" @compiler_2finterp_3achained_2ector(ptr %v3, ptr %v3, i64 0, i1 false, { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d30, i32 0, i32 1) }, { i64, [3 x i64] } %t249)
  store %"compiler/interp:chained" %t251, ptr %l101
  br label %bb43
bb43:
  call void @__olang_scope_close(ptr %s1)
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
  %t261 = call %"compiler/interp:chained" @compiler_2finterp_3achained_2ector(ptr %v3, ptr %v3, i64 %t257, i1 true, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d31, i32 0, i32 1) }, { i64, [3 x i64] } %t258)
  store %"compiler/interp:chained" %t261, ptr %l106
  br label %bb49
bb48:
  br label %bb50
bb49:
  call void @__olang_scope_close(ptr %s1)
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
  %t290 = call %"compiler/interp:chained" @compiler_2finterp_3achained_2ector(ptr %v3, ptr %v3, i64 %t288, i1 true, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d32, i32 0, i32 1) }, { i64, [3 x i64] } %t287)
  store %"compiler/interp:chained" %t290, ptr %l120
  br label %bb56
bb56:
  call void @__olang_scope_close(ptr %s1)
  %t291 = load %"compiler/interp:chained", ptr %l120
  store %"compiler/interp:chained" %t291, ptr %rv
  br label %ret
bb57:
  %t292 = load ptr, ptr %l7, !tbaa !29
  %t294 = getelementptr %"compiler/ast:TopIf", ptr %t292, i32 0, i32 2
  %t295 = load ptr, ptr %t294, !tbaa !29
  store ptr %t295, ptr %l7, !tbaa !29
  call void @__olang_scope_close(ptr %s1)
  br label %bb58
bb58:
  br label %bb2
bb59:
  %t297 = load i64, ptr @G_2ecompiler_2fload_2eNoBranch, !tbaa !24
  %t298 = load i64, ptr %l5, !tbaa !24
  store { i64, [3 x i64] } zeroinitializer, ptr %t299
  %t300 = getelementptr { i64, [3 x i64] }, ptr %t299, i32 0, i32 0
  store i64 3, ptr %t300
  %t302 = insertvalue { i64, i64, i64 } undef, i64 %t298, 0
  %t303 = insertvalue { i64, i64, i64 } %t302, i64 0, 1
  %t304 = insertvalue { i64, i64, i64 } %t303, i64 0, 2
  %t305 = getelementptr { i64, [3 x i64] }, ptr %t299, i32 0, i32 1
  store { i64, i64, i64 } %t304, ptr %t305
  %t306 = load { i64, [3 x i64] }, ptr %t299
  %t309 = call %"compiler/interp:chained" @compiler_2finterp_3achained_2ector(ptr %v3, ptr %v3, i64 %t297, i1 true, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d33, i32 0, i32 1) }, { i64, [3 x i64] } %t306)
  store %"compiler/interp:chained" %t309, ptr %l126
  br label %bb60
bb60:
  %t310 = load %"compiler/interp:chained", ptr %l126
  store %"compiler/interp:chained" %t310, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/interp:chained", ptr %rv
  ret %"compiler/interp:chained" %rr
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
  %t7 = getelementptr %"compiler/eval:Machine", ptr %t6, i32 0, i32 15
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
  %t21 = getelementptr %"compiler/eval:Machine", ptr %t20, i32 0, i32 15
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
  %t29 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d34, i32 0, i32 1) }, 1
  %t30 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d34, i32 0, i32 1) }, 0
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
  %t59 = getelementptr %"compiler/eval:Machine", ptr %t58, i32 0, i32 89
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
  %t74 = getelementptr %"compiler/eval:Machine", ptr %t73, i32 0, i32 89
  %t75 = load i64, ptr %t74, !tbaa !24
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = getelementptr %"compiler/interp:Exec", ptr %t76, i32 0, i32 4
  %t79 = getelementptr %"compiler/eval:Machine", ptr %t78, i32 0, i32 90
  %t80 = load %"compiler/source:Span", ptr %t79
  %t84 = call { i64, ptr } @compiler_2finterp_2eline(ptr %v2, ptr %s4, ptr %t70, i64 %t75, %"compiler/source:Span" %t80)
  store { i64, ptr } %t84, ptr %l38
  br label %bb17
bb17:
  %t85 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t86 = extractvalue { i64, ptr } %t85, 1
  %t87 = extractvalue { i64, ptr } %t85, 0
  %t88 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d35, i32 0, i32 1) }, 1
  %t89 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d35, i32 0, i32 1) }, 0
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
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d36, i32 0, i32 1) }, ptr %l25, !tbaa !27
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
  %t27 = getelementptr %"compiler/eval:Machine", ptr %t26, i32 0, i32 15
  %t28 = load %"compiler/eval:Ptr", ptr %t27
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/interp:Exec", ptr %t29, i32 0, i32 4
  %t32 = getelementptr %"compiler/eval:Machine", ptr %t31, i32 0, i32 16
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

define dso_local { i32, %"compiler/eval:Image" } @compiler_2finterp_2ecompiler_2finterp_3aExec_2ebakeMutable(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %lp3 = alloca ptr
  %l4 = alloca %"compiler/eval:Image"
  %l9 = alloca %"compiler/eval:Image"
  %l10 = alloca i32
  %l13 = alloca i64
  %l15 = alloca i1
  %l17 = alloca %"compiler/eval:Blob"
  %l19 = alloca i64
  %rv = alloca { i32, %"compiler/eval:Image" }
  %t38 = alloca %"compiler/eval:Blob", align 8
  br label %start
start:
  br label %bb0
bb0:
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
  %t25 = insertvalue { i32, %"compiler/eval:Image" } zeroinitializer, i32 %t23, 0
  store { i32, %"compiler/eval:Image" } %t25, ptr %rv
  br label %ret
bb3:
  %t26 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 72, i64 8)
  store ptr %t26, ptr %lp3
  %t27 = load %"compiler/eval:Image", ptr %l4
  %t28 = load ptr, ptr %lp3
  store %"compiler/eval:Image" %t27, ptr %t28
  %t29 = load ptr, ptr %lp3
  %t30 = getelementptr %"compiler/eval:Image", ptr %t29, i32 0, i32 0
  %t32 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aBlob_3e_2eLen_3ccompiler_2feval_3aBlob_3e(ptr %v1, ptr %t30)
  store i64 %t32, ptr %l13
  br label %bb4
bb4:
  %t33 = load i64, ptr %l13, !tbaa !24
  %t34 = icmp ne i64 %t33, 1
  br i1 %t34, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l15, !tbaa !21
  br label %bb9
bb6:
  %t36 = load ptr, ptr %lp3
  %t37 = getelementptr %"compiler/eval:Image", ptr %t36, i32 0, i32 0
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aBlob_3e_2eAt_3ccompiler_2feval_3aBlob_3e(ptr %t38, ptr %v1, ptr %v1, ptr %t37, i64 0)
  call void @llvm.memmove.p0.p0.i64(ptr %l17, ptr %t38, i64 272, i1 false)
  br label %bb7
bb7:
  %t40 = getelementptr %"compiler/eval:Blob", ptr %l17, i32 0, i32 3
  %t42 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v1, ptr %t40)
  store i64 %t42, ptr %l19
  br label %bb8
bb8:
  %t43 = load i64, ptr %l19, !tbaa !24
  %t44 = icmp ne i64 %t43, 0
  store i1 %t44, ptr %l15, !tbaa !21
  br label %bb9
bb9:
  %t46 = load i1, ptr %l15, !tbaa !21
  br i1 %t46, label %bb10, label %bb11
bb10:
  %t48 = insertvalue { i32, %"compiler/eval:Image" } zeroinitializer, i32 65536, 0
  store { i32, %"compiler/eval:Image" } %t48, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t49 = load ptr, ptr %lp3
  %t50 = getelementptr %"compiler/eval:Image", ptr %t49, i32 0, i32 2
  store i1 true, ptr %t50, !tbaa !21
  %t51 = load ptr, ptr %lp3
  %t52 = load %"compiler/eval:Image", ptr %t51
  %t54 = insertvalue { i32, %"compiler/eval:Image" } zeroinitializer, %"compiler/eval:Image" %t52, 1
  store { i32, %"compiler/eval:Image" } %t54, ptr %rv
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
  %t28 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t26, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d37, i32 0, i32 1) })
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
  %t32 = insertvalue [5 x { i64, ptr }] undef, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d38, i32 0, i32 1) }, 0
  %t33 = insertvalue [5 x { i64, ptr }] %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d39, i32 0, i32 1) }, 1
  %t34 = insertvalue [5 x { i64, ptr }] %t33, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d40, i32 0, i32 1) }, 2
  %t35 = insertvalue [5 x { i64, ptr }] %t34, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d41, i32 0, i32 1) }, 3
  %t36 = insertvalue [5 x { i64, ptr }] %t35, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d42, i32 0, i32 1) }, 4
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
  %t85 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePreludeType(ptr %v0, ptr %s0, ptr %s0, ptr %t83, { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d43, i32 0, i32 1) }, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d44, i32 0, i32 1) })
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
  %t41 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d45, i32 0, i32 1) }, 1
  %t42 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d45, i32 0, i32 1) }, 0
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
  %t38 = load i32, ptr %t37, !range !{i32 0, i32 52}
  %t40 = trunc i64 42 to i32
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
  %rv = alloca { i64, [5 x i64] }
  %t5 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
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
  %t30 = call { i64, [5 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2eEval(ptr %v0, ptr %v1, ptr %v1, ptr %t27, { i64, [2 x i64] } %t28, { i64, ptr } %t26)
  store { i64, [5 x i64] } %t30, ptr %l15
  br label %bb6
bb5:
  call void @__olang_check_failed(ptr @olang_loc_8c9ae6434c5565e7_656708b088a82c0b)
  unreachable
bb6:
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
  %t8 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s0, ptr %t6, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d46, i32 0, i32 1) })
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
  %t68 = getelementptr %"compiler/eval:Machine", ptr %t67, i32 0, i32 17
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
  %t115 = insertvalue { { i64, ptr } } undef, { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d47, i32 0, i32 1) }, 0
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
  %t153 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d48, i32 0, i32 1) }, 1
  %t154 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d48, i32 0, i32 1) }, 0
  %t156 = call i64 @__olang_fmt_i64(ptr null, i64 %t152)
  %t157 = add i64 %t154, %t156
  %t158 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d49, i32 0, i32 1) }, 1
  %t159 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d49, i32 0, i32 1) }, 0
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
  %t296 = call { i64, [5 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2eEval(ptr %v0, ptr %v0, ptr %v0, ptr %t293, { i64, [2 x i64] } %t294, { i64, ptr } %t292)
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
  %t328 = getelementptr %"compiler/eval:Machine", ptr %t327, i32 0, i32 15
  %t329 = load %"compiler/eval:Ptr", ptr %t328
  %t330 = load ptr, ptr %l0, !tbaa !29
  %t332 = getelementptr %"compiler/interp:Exec", ptr %t330, i32 0, i32 4
  %t333 = getelementptr %"compiler/eval:Machine", ptr %t332, i32 0, i32 16
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
  %l89 = alloca ptr
  %l90 = alloca { i64, [2 x i64] }
  %l94 = alloca { i64, [5 x i64] }
  %l104 = alloca i64
  %l115 = alloca i1
  %l116 = alloca ptr
  %l117 = alloca { i64, [3 x i64] }
  %l120 = alloca %"compiler/diagmsg:Msg"
  %l121 = alloca i64
  %l124 = alloca ptr
  %l125 = alloca { i64, [3 x i64] }
  %l128 = alloca %"compiler/diagmsg:Msg"
  %l129 = alloca i64
  %l130 = alloca ptr
  %l131 = alloca i64
  %l137 = alloca { i64, [3 x i64] }
  %l138 = alloca %"compiler/diagmsg:Msg"
  %l140 = alloca i1
  %l142 = alloca ptr
  %l143 = alloca i64
  %l144 = alloca { i64, [3 x i64] }
  %l145 = alloca %"compiler/diagmsg:Msg"
  %l148 = alloca %"compiler/diagmsg:Msg"
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %rv = alloca i64
  %t70 = alloca %"compiler/check:ContractAsk", align 8
  %t139 = alloca { i64, [2 x i64] }, align 8
  %t206 = alloca { i64, [3 x i64] }, align 8
  %t266 = alloca { i64, [3 x i64] }, align 8
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
  %t16 = getelementptr %"compiler/check:Checker", ptr %t14, i32 0, i32 130
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
  br label %bb71
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
  %t68 = getelementptr %"compiler/check:Checker", ptr %t66, i32 0, i32 130
  %t69 = load i64, ptr %l10, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aContractAsk_3e_2eAt_H56c1cddaee4bc4aa5c09605de1331e44(ptr %t70, ptr %v0, ptr %v0, ptr %t68, i64 %t69)
  call void @llvm.memmove.p0.p0.i64(ptr %l53, ptr %t70, i64 136, i1 false)
  br label %bb13
bb13:
  call void @llvm.memmove.p0.p0.i64(ptr %l11, ptr %l53, i64 136, i1 false)
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/check:Checker", ptr %t73, i32 0, i32 132
  %t76 = load i64, ptr %l10, !tbaa !24
  %t79 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t75, i64 %t76)
  store i1 %t79, ptr %l57
  br label %bb14
bb14:
  %t80 = load i1, ptr %l57, !tbaa !21
  br i1 %t80, label %bb15, label %bb16
bb15:
  call void @__olang_scope_close(ptr %s2)
  br label %bb70
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
  %t123 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s2, { i64, ptr } %t121, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d50, i32 0, i32 1) })
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
  call void @__olang_scope_close(ptr %s2)
  br label %bb70
bb30:
  br label %bb31
bb31:
  %t134 = getelementptr %"compiler/check:ContractAsk", ptr %l11, i32 0, i32 0
  %t135 = load i64, ptr %t134, !tbaa !24
  %t137 = trunc i64 %t135 to i32
  store { i64, [2 x i64] } zeroinitializer, ptr %t139
  %t140 = getelementptr { i64, [2 x i64] }, ptr %t139, i32 0, i32 0
  store i64 0, ptr %t140
  %t142 = insertvalue { i32 } undef, i32 %t137, 0
  %t143 = getelementptr { i64, [2 x i64] }, ptr %t139, i32 0, i32 1
  store { i32 } %t142, ptr %t143
  %t144 = load { i64, [2 x i64] }, ptr %t139
  store { i64, [2 x i64] } %t144, ptr %l14
  %t146 = load ptr, ptr %l1, !tbaa !29
  %t147 = load { i64, [2 x i64] }, ptr %l14
  call void @compiler_2finterp_2ecompiler_2finterp_3aExec_2eNeed(ptr %v1, ptr %t146, { i64, [2 x i64] } %t147)
  br label %bb32
bb32:
  %t150 = load ptr, ptr %l1, !tbaa !29
  %t152 = getelementptr %"compiler/interp:Exec", ptr %t150, i32 0, i32 4
  store ptr %t152, ptr %l89, !tbaa !29
  %t153 = load { i64, [2 x i64] }, ptr %l14
  store { i64, [2 x i64] } %t153, ptr %l90
  %t154 = icmp sge i64 0, 0
  br i1 %t154, label %bb33, label %bb34
bb33:
  %t156 = icmp sle i64 0, 1152921504606846975
  br i1 %t156, label %bb35, label %bb36
bb34:
  call void @__olang_check_failed(ptr @olang_loc_d213ae2acd73c837_819e6544d8b9fb33)
  unreachable
bb35:
  %t158 = mul i64 0, 8
  %t159 = insertvalue { i64, ptr } undef, i64 0, 0
  %t160 = insertvalue { i64, ptr } %t159, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t161 = load ptr, ptr %l89, !tbaa !29
  %t162 = load { i64, [2 x i64] }, ptr %l90
  %t164 = call { i64, [5 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2eEval(ptr %v1, ptr %v1, ptr %v1, ptr %t161, { i64, [2 x i64] } %t162, { i64, ptr } %t160)
  store { i64, [5 x i64] } %t164, ptr %l94
  br label %bb37
bb36:
  call void @__olang_check_failed(ptr @olang_loc_d213ae2acd73c837_819e6544d8b9fb33)
  unreachable
bb37:
  %t165 = load { i64, [5 x i64] }, ptr %l94
  %t168 = extractvalue { i64, [5 x i64] } %t165, 0
  %t169 = icmp eq i64 %t168, 0
  br i1 %t169, label %bb38, label %bb39
bb38:
  br label %bb40
bb39:
  br label %bb64
bb40:
  store %olang.scope zeroinitializer, ptr %s5
  %t171 = load i64, ptr %l4, !tbaa !24
  %t173 = add i64 %t171, 1
  store i64 %t173, ptr %l4, !tbaa !24
  %t175 = load ptr, ptr %l1, !tbaa !29
  %t177 = getelementptr %"compiler/interp:Exec", ptr %t175, i32 0, i32 4
  %t178 = load ptr, ptr %l1, !tbaa !29
  %t180 = getelementptr %"compiler/interp:Exec", ptr %t178, i32 0, i32 4
  %t181 = getelementptr %"compiler/eval:Machine", ptr %t180, i32 0, i32 15
  %t182 = load %"compiler/eval:Ptr", ptr %t181
  %t183 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t187 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eInt(ptr %v1, ptr %t177, %"compiler/eval:Ptr" %t182, i32 %t183)
  store i64 %t187, ptr %l104
  br label %bb41
bb41:
  %t188 = load i64, ptr %l104, !tbaa !24
  %t189 = icmp ne i64 %t188, 0
  br i1 %t189, label %bb42, label %bb43
bb42:
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s2)
  br label %bb70
bb43:
  br label %bb44
bb44:
  %t191 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l12
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1308596c866d4be061d9da9113abde88(ptr %s0, ptr %l3, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t191, i1 true)
  br label %bb45
bb45:
  %t194 = getelementptr %"compiler/check:ContractAsk", ptr %l11, i32 0, i32 1
  %t195 = load i64, ptr %t194, !tbaa !24
  %t196 = getelementptr %"compiler/check:ContractAsk", ptr %l11, i32 0, i32 2
  %t197 = getelementptr %"compiler/source:Span", ptr %t196, i32 0, i32 0
  %t198 = load i32, ptr %t197, !tbaa !23
  %t200 = sext i32 %t198 to i64
  %t201 = getelementptr %"compiler/check:ContractAsk", ptr %l11, i32 0, i32 2
  %t202 = getelementptr %"compiler/source:Span", ptr %t201, i32 0, i32 1
  %t203 = load i32, ptr %t202, !tbaa !23
  %t205 = sext i32 %t203 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t206
  %t207 = getelementptr { i64, [3 x i64] }, ptr %t206, i32 0, i32 0
  store i64 3, ptr %t207
  %t209 = insertvalue { i64, i64, i64 } undef, i64 %t195, 0
  %t211 = insertvalue { i64, i64, i64 } %t209, i64 %t200, 1
  %t213 = insertvalue { i64, i64, i64 } %t211, i64 %t205, 2
  %t214 = getelementptr { i64, [3 x i64] }, ptr %t206, i32 0, i32 1
  store { i64, i64, i64 } %t213, ptr %t214
  %t215 = load { i64, [3 x i64] }, ptr %t206
  store { i64, [3 x i64] } %t215, ptr %l16
  %t217 = getelementptr %"compiler/check:ContractAsk", ptr %l11, i32 0, i32 5
  %t218 = load { i64, ptr }, ptr %t217, !tbaa !27
  %t220 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s5, { i64, ptr } %t218, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d51, i32 0, i32 1) })
  store i1 %t220, ptr %l115
  br label %bb46
bb46:
  %t221 = load i1, ptr %l115, !tbaa !21
  br i1 %t221, label %bb47, label %bb48
bb47:
  store %olang.scope zeroinitializer, ptr %s7
  %t222 = load ptr, ptr %l2, !tbaa !29
  store ptr %t222, ptr %l116, !tbaa !29
  %t223 = load { i64, [3 x i64] }, ptr %l16
  store { i64, [3 x i64] } %t223, ptr %l117
  %t224 = getelementptr %"compiler/check:ContractAsk", ptr %l11, i32 0, i32 6
  %t225 = load { i64, ptr }, ptr %t224, !tbaa !27
  %t226 = getelementptr %"compiler/check:ContractAsk", ptr %l11, i32 0, i32 9
  %t227 = load { i64, ptr }, ptr %t226, !tbaa !27
  %t230 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eConversionDoesNotFit(ptr %v0, ptr %v0, ptr %s7, { i64, ptr } %t225, { i64, ptr } %t227)
  store %"compiler/diagmsg:Msg" %t230, ptr %l120
  br label %bb49
bb48:
  br label %bb51
bb49:
  %t231 = load ptr, ptr %l116, !tbaa !29
  %t232 = load { i64, [3 x i64] }, ptr %l117
  %t233 = load %"compiler/diagmsg:Msg", ptr %l120
  %t234 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %s7, ptr %t231, { i64, [3 x i64] } %t232, %"compiler/diagmsg:Msg" %t233)
  store i64 %t234, ptr %l121
  br label %bb50
bb50:
  call void @__olang_scope_close(ptr %s7)
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s2)
  br label %bb70
bb51:
  %t235 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l13
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1308596c866d4be061d9da9113abde88(ptr %s0, ptr %l3, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t235, i1 true)
  br label %bb52
bb52:
  %t238 = load ptr, ptr %l2, !tbaa !29
  store ptr %t238, ptr %l124, !tbaa !29
  %t239 = load { i64, [3 x i64] }, ptr %l16
  store { i64, [3 x i64] } %t239, ptr %l125
  %t240 = getelementptr %"compiler/check:ContractAsk", ptr %l11, i32 0, i32 6
  %t241 = load { i64, ptr }, ptr %t240, !tbaa !27
  %t242 = getelementptr %"compiler/check:ContractAsk", ptr %l11, i32 0, i32 5
  %t243 = load { i64, ptr }, ptr %t242, !tbaa !27
  %t246 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eContractFalse(ptr %v0, ptr %v0, ptr %s5, { i64, ptr } %t241, { i64, ptr } %t243)
  store %"compiler/diagmsg:Msg" %t246, ptr %l128
  br label %bb53
bb53:
  %t247 = load ptr, ptr %l124, !tbaa !29
  %t248 = load { i64, [3 x i64] }, ptr %l125
  %t249 = load %"compiler/diagmsg:Msg", ptr %l128
  %t250 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %s5, ptr %t247, { i64, [3 x i64] } %t248, %"compiler/diagmsg:Msg" %t249)
  store i64 %t250, ptr %l129
  br label %bb54
bb54:
  %t251 = load i64, ptr %l129, !tbaa !24
  store i64 %t251, ptr %l17, !tbaa !24
  %t252 = load ptr, ptr %l2, !tbaa !29
  store ptr %t252, ptr %l130, !tbaa !29
  %t253 = load i64, ptr %l17, !tbaa !24
  store i64 %t253, ptr %l131, !tbaa !24
  %t254 = getelementptr %"compiler/check:ContractAsk", ptr %l11, i32 0, i32 3
  %t255 = load i64, ptr %t254, !tbaa !24
  %t256 = getelementptr %"compiler/check:ContractAsk", ptr %l11, i32 0, i32 4
  %t257 = getelementptr %"compiler/source:Span", ptr %t256, i32 0, i32 0
  %t258 = load i32, ptr %t257, !tbaa !23
  %t260 = sext i32 %t258 to i64
  %t261 = getelementptr %"compiler/check:ContractAsk", ptr %l11, i32 0, i32 4
  %t262 = getelementptr %"compiler/source:Span", ptr %t261, i32 0, i32 1
  %t263 = load i32, ptr %t262, !tbaa !23
  %t265 = sext i32 %t263 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t266
  %t267 = getelementptr { i64, [3 x i64] }, ptr %t266, i32 0, i32 0
  store i64 3, ptr %t267
  %t269 = insertvalue { i64, i64, i64 } undef, i64 %t255, 0
  %t271 = insertvalue { i64, i64, i64 } %t269, i64 %t260, 1
  %t273 = insertvalue { i64, i64, i64 } %t271, i64 %t265, 2
  %t274 = getelementptr { i64, [3 x i64] }, ptr %t266, i32 0, i32 1
  store { i64, i64, i64 } %t273, ptr %t274
  %t275 = load { i64, [3 x i64] }, ptr %t266
  store { i64, [3 x i64] } %t275, ptr %l137
  %t276 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteContractCondition(ptr %s5)
  store %"compiler/diagmsg:Msg" %t276, ptr %l138
  br label %bb55
bb55:
  %t277 = load ptr, ptr %l130, !tbaa !29
  %t278 = load i64, ptr %l131, !tbaa !24
  %t279 = load { i64, [3 x i64] }, ptr %l137
  %t280 = load %"compiler/diagmsg:Msg", ptr %l138
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %s5, ptr %t277, i64 %t278, { i64, [3 x i64] } %t279, %"compiler/diagmsg:Msg" %t280)
  br label %bb56
bb56:
  %t281 = getelementptr %"compiler/check:ContractAsk", ptr %l11, i32 0, i32 8
  %t282 = load { i64, ptr }, ptr %t281, !tbaa !27
  %t284 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s5, { i64, ptr } %t282, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d52, i32 0, i32 1) })
  store i1 %t284, ptr %l140
  br label %bb57
bb57:
  %t285 = load i1, ptr %l140, !tbaa !21
  %t286 = xor i1 %t285, true
  br i1 %t286, label %bb58, label %bb59
bb58:
  store %olang.scope zeroinitializer, ptr %s8
  %t288 = load ptr, ptr %l2, !tbaa !29
  store ptr %t288, ptr %l142, !tbaa !29
  %t289 = load i64, ptr %l17, !tbaa !24
  store i64 %t289, ptr %l143, !tbaa !24
  %t290 = getelementptr %"compiler/check:ContractAsk", ptr %l11, i32 0, i32 7
  %t291 = load { i64, [3 x i64] }, ptr %t290
  store { i64, [3 x i64] } %t291, ptr %l144
  %t292 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteHere(ptr %s8)
  store %"compiler/diagmsg:Msg" %t292, ptr %l145
  br label %bb60
bb59:
  br label %bb63
bb60:
  %t293 = getelementptr %"compiler/diagmsg:Msg", ptr %l145, i32 0, i32 0
  %t294 = load i32, ptr %t293, !range !{i32 0, i32 884}
  %t295 = getelementptr %"compiler/check:ContractAsk", ptr %l11, i32 0, i32 8
  %t296 = load { i64, ptr }, ptr %t295, !tbaa !27
  %t299 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %s8, ptr %v0, ptr %s8, i32 %t294, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d53, i32 0, i32 1) }, { i64, ptr } %t296)
  store %"compiler/diagmsg:Msg" %t299, ptr %l148
  br label %bb61
bb61:
  %t300 = load ptr, ptr %l142, !tbaa !29
  %t301 = load i64, ptr %l143, !tbaa !24
  %t302 = load { i64, [3 x i64] }, ptr %l144
  %t303 = load %"compiler/diagmsg:Msg", ptr %l148
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %s8, ptr %t300, i64 %t301, { i64, [3 x i64] } %t302, %"compiler/diagmsg:Msg" %t303)
  br label %bb62
bb62:
  call void @__olang_scope_close(ptr %s8)
  br label %bb63
bb63:
  call void @__olang_scope_close(ptr %s5)
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
  call void @__olang_check_failed(ptr @olang_loc_3238838aabc16991_ed85858096edfcc5)
  unreachable
bb69:
  call void @__olang_scope_close(ptr %s2)
  br label %bb70
bb70:
  %t304 = load i64, ptr %l9, !tbaa !24
  %t306 = add i64 %t304, 1
  store i64 %t306, ptr %l9, !tbaa !24
  br label %bb9
bb71:
  %t308 = load i64, ptr %l4, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t308, ptr %rv
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
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d54, i32 0, i32 1) })
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
  %t11 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d55, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d55, i32 0, i32 1) }, 0
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
  %l90 = alloca i64
  %l92 = alloca i64
  %l97 = alloca i64
  %l100 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l103 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l104 = alloca i32
  %l105 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l108 = alloca i1
  %l112 = alloca ptr
  %l113 = alloca i64
  %s3 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %rv = alloca i32
  %t134 = alloca %"compiler/eval:Blob", align 8
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
  br label %bb63
bb35:
  br label %bb36
bb36:
  %t132 = load ptr, ptr %l14, !tbaa !29
  %t133 = load i64, ptr %l15, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aBlob_3e_2eAt_3ccompiler_2feval_3aBlob_3e(ptr %t134, ptr %v1, ptr %v1, ptr %t132, i64 %t133)
  call void @llvm.memmove.p0.p0.i64(ptr %l88, ptr %t134, i64 272, i1 false)
  br label %bb37
bb37:
  call void @llvm.memmove.p0.p0.i64(ptr %l16, ptr %l88, i64 272, i1 false)
  %t137 = getelementptr %"compiler/eval:Blob", ptr %l16, i32 0, i32 6
  store ptr %t137, ptr %l17, !tbaa !29
  store i64 0, ptr %l18, !tbaa !24
  br label %bb38
bb38:
  store %olang.scope zeroinitializer, ptr %s9
  %t139 = load i64, ptr %l18, !tbaa !24
  store i64 %t139, ptr %l90, !tbaa !24
  %t140 = load ptr, ptr %l17, !tbaa !29
  %t142 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s7, ptr %t140)
  store i64 %t142, ptr %l92
  br label %bb39
bb39:
  %t143 = load i64, ptr %l90, !tbaa !24
  %t144 = load i64, ptr %l92, !tbaa !24
  %t145 = icmp slt i64 %t143, %t144
  %t147 = xor i1 %t145, true
  br i1 %t147, label %bb40, label %bb41
bb40:
  call void @__olang_scope_close(ptr %s9)
  br label %bb61
bb41:
  br label %bb42
bb42:
  %t149 = load ptr, ptr %l17, !tbaa !29
  %t150 = load i64, ptr %l18, !tbaa !24
  %t153 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s7, ptr %t149, i64 %t150)
  store i64 %t153, ptr %l97
  br label %bb43
bb43:
  %t154 = load i64, ptr %l97, !tbaa !24
  store i64 %t154, ptr %l19, !tbaa !24
  %t155 = load i64, ptr %l19, !tbaa !24
  %t157 = icmp slt i64 %t155, 0
  br i1 %t157, label %bb44, label %bb45
bb44:
  call void @__olang_scope_close(ptr %s9)
  br label %bb60
bb45:
  br label %bb46
bb46:
  %t159 = load ptr, ptr %l2, !tbaa !29
  %t160 = load i64, ptr %l19, !tbaa !24
  %t163 = call { i32, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fpair_3aPair_3cI64_2c_20_H1ffd47e550cf52833705251cc4e5cd8d(ptr %v2, ptr %t159, i64 %t160)
  %t164 = extractvalue { i32, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" } %t163, 1
  %t165 = extractvalue { i32, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" } %t163, 0
  store i32 %t165, ptr %l104
  %t166 = icmp ne i32 %t165, 0
  br i1 %t166, label %bb48, label %ok.167, !prof !99
ok.167:
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t164, ptr %l103
  br label %bb47
bb47:
  %t168 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l103
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t168, ptr %l100
  br label %bb51
bb48:
  br label %bb49
bb49:
  %t169 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s9, i64 -1, i64 -1)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t169, ptr %l105
  br label %bb50
bb50:
  %t170 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l105
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t170, ptr %l100
  br label %bb51
bb51:
  %t171 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l100
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t171, ptr %l20
  %t172 = getelementptr %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l20, i32 0, i32 0
  %t173 = load i64, ptr %t172, !tbaa !24
  %t175 = icmp slt i64 %t173, 0
  br i1 %t175, label %bb52, label %bb53
bb52:
  store i1 true, ptr %l108, !tbaa !21
  br label %bb56
bb53:
  %t177 = load ptr, ptr %l0, !tbaa !29
  %t179 = getelementptr %"compiler/interp:Exec", ptr %t177, i32 0, i32 1
  %t180 = load ptr, ptr %t179, !tbaa !29
  %t181 = getelementptr %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l20, i32 0, i32 0
  %t182 = load i64, ptr %t181, !tbaa !24
  %t185 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t180, i64 %t182)
  store ptr %t185, ptr %l112
  br label %bb54
bb54:
  %t186 = load ptr, ptr %l112, !tbaa !29
  %t187 = call i64 @compiler_2finterp_2eglobalModule(ptr %v0, ptr %t186)
  store i64 %t187, ptr %l113
  br label %bb55
bb55:
  %t188 = load i64, ptr %l3, !tbaa !24
  %t189 = load i64, ptr %l113, !tbaa !24
  %t191 = icmp ne i64 %t189, %t188
  store i1 %t191, ptr %l108, !tbaa !21
  br label %bb56
bb56:
  %t193 = load i1, ptr %l108, !tbaa !21
  br i1 %t193, label %bb57, label %bb58
bb57:
  call void @__olang_scope_close(ptr %s9)
  call void @__olang_scope_close(ptr %s7)
  store i32 65536, ptr %rv
  br label %ret
bb58:
  br label %bb59
bb59:
  call void @__olang_scope_close(ptr %s9)
  br label %bb60
bb60:
  %t195 = load i64, ptr %l18, !tbaa !24
  %t197 = add i64 %t195, 1
  store i64 %t197, ptr %l18, !tbaa !24
  br label %bb38
bb61:
  call void @__olang_scope_close(ptr %s7)
  br label %bb62
bb62:
  %t199 = load i64, ptr %l15, !tbaa !24
  %t201 = add i64 %t199, 1
  store i64 %t201, ptr %l15, !tbaa !24
  br label %bb32
bb63:
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
  %t14 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_56, 0
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
  %t26 = getelementptr %"compiler/check:Checker", ptr %t24, i32 0, i32 14
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
  %t25 = icmp ne ptr %t24, null
  %t26 = select i1 %t25, ptr %t24, ptr null
  %t27 = icmp eq ptr %t26, %t20
  call void @__olang_region_settle(ptr %t20, i1 %t27)
  br label %bb6
bb6:
  %t28 = load ptr, ptr %lp5
  %t29 = getelementptr %"compiler/eval:Blob", ptr %t28, i32 0, i32 0
  %t30 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t29
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t30, ptr %l25
  %t31 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l23
  %t32 = load ptr, ptr %lp5
  %t33 = getelementptr %"compiler/eval:Blob", ptr %t32, i32 0, i32 0
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t31, ptr %t33
  %t34 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aBlob_2e0
  br i1 %t34, label %bb7, label %bb8
bb7:
  %t36 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l25, i32 0, i32 0
  %t37 = load { i64, ptr }, ptr %t36
  %t38 = extractvalue { i64, ptr } %t37, 1
  %t39 = call ptr @__olang_region_or(ptr %t38, ptr null)
  %t40 = icmp ne ptr %t39, null
  %t41 = select i1 %t40, ptr %t39, ptr null
  call void @__olang_region_drop(ptr %t41)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %l25
  br label %bb8
bb8:
  %t42 = load ptr, ptr %l2, !tbaa !29
  %t44 = getelementptr %"compiler/eval:Blob", ptr %t42, i32 0, i32 1
  %t45 = load i64, ptr %t44, !tbaa !24
  %t47 = load ptr, ptr %lp5
  %t48 = getelementptr %"compiler/eval:Blob", ptr %t47, i32 0, i32 1
  store i64 %t45, ptr %t48, !tbaa !24
  %t49 = load ptr, ptr %l2, !tbaa !29
  %t51 = getelementptr %"compiler/eval:Blob", ptr %t49, i32 0, i32 2
  %t52 = load i1, ptr %t51, !tbaa !21
  %t54 = load ptr, ptr %lp5
  %t55 = getelementptr %"compiler/eval:Blob", ptr %t54, i32 0, i32 2
  store i1 %t52, ptr %t55, !tbaa !21
  store i64 0, ptr %l6, !tbaa !24
  %t56 = load ptr, ptr %l2, !tbaa !29
  %t58 = getelementptr %"compiler/eval:Blob", ptr %t56, i32 0, i32 3
  %t60 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v2, ptr %t58)
  store i64 %t60, ptr %l33
  br label %bb9
bb9:
  %t61 = load i64, ptr %l33, !tbaa !24
  store i64 %t61, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t62 = load i64, ptr %l7, !tbaa !24
  %t63 = load i64, ptr %l6, !tbaa !24
  %t66 = icmp sgt i64 %t62, %t63
  br i1 %t66, label %bb10, label %bb11
bb10:
  %t68 = load i64, ptr %l8, !tbaa !24
  %t70 = icmp sgt i64 %t68, 0
  br i1 %t70, label %bb12, label %bb13
bb11:
  store i64 0, ptr %l37, !tbaa !24
  br label %bb15
bb12:
  %t72 = load i64, ptr %l7, !tbaa !24
  %t73 = load i64, ptr %l6, !tbaa !24
  %t76 = sub i64 %t72, %t73
  %t77 = load i64, ptr %l8, !tbaa !24
  %t80 = add i64 %t76, %t77
  %t82 = sub i64 %t80, 1
  %t83 = load i64, ptr %l8, !tbaa !24
  %t86 = sdiv i64 %t82, %t83
  store i64 %t86, ptr %l40, !tbaa !24
  br label %bb14
bb13:
  store i64 0, ptr %l40, !tbaa !24
  br label %bb14
bb14:
  %t88 = load i64, ptr %l40, !tbaa !24
  store i64 %t88, ptr %l37, !tbaa !24
  br label %bb15
bb15:
  %t89 = load i64, ptr %l37, !tbaa !24
  store i64 %t89, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb16
bb16:
  store %olang.scope zeroinitializer, ptr %s2
  %t90 = load i64, ptr %l10, !tbaa !24
  %t91 = load i64, ptr %l9, !tbaa !24
  %t94 = icmp slt i64 %t90, %t91
  %t96 = xor i1 %t94, true
  br i1 %t96, label %bb17, label %bb18
bb17:
  call void @__olang_scope_close(ptr %s2)
  br label %bb55
bb18:
  br label %bb19
bb19:
  %t98 = load i64, ptr %l6, !tbaa !24
  %t99 = load i64, ptr %l10, !tbaa !24
  %t100 = load i64, ptr %l8, !tbaa !24
  %t103 = mul i64 %t99, %t100
  %t106 = add i64 %t98, %t103
  store i64 %t106, ptr %l11, !tbaa !24
  %t108 = load ptr, ptr %lp5
  %t109 = getelementptr %"compiler/eval:Blob", ptr %t108, i32 0, i32 3
  store ptr %t109, ptr %l58, !tbaa !29
  %t110 = load ptr, ptr %l2, !tbaa !29
  %t112 = getelementptr %"compiler/eval:Blob", ptr %t110, i32 0, i32 3
  %t113 = load i64, ptr %l11, !tbaa !24
  %t116 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v2, ptr %t112, i64 %t113)
  store i64 %t116, ptr %l62
  br label %bb20
bb20:
  %t117 = load ptr, ptr %l58, !tbaa !29
  %t118 = load i64, ptr %l62, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v5, ptr %t117, i64 %t118)
  br label %bb21
bb21:
  %t119 = load ptr, ptr %lp5
  %t120 = getelementptr %"compiler/eval:Blob", ptr %t119, i32 0, i32 5
  store ptr %t120, ptr %l63, !tbaa !29
  %t121 = load ptr, ptr %l2, !tbaa !29
  %t123 = getelementptr %"compiler/eval:Blob", ptr %t121, i32 0, i32 5
  %t124 = load i64, ptr %l11, !tbaa !24
  %t127 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v2, ptr %t123, i64 %t124)
  store i64 %t127, ptr %l67
  br label %bb22
bb22:
  %t128 = load ptr, ptr %l63, !tbaa !29
  %t129 = load i64, ptr %l67, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v5, ptr %t128, i64 %t129)
  br label %bb23
bb23:
  %t130 = load ptr, ptr %l2, !tbaa !29
  %t132 = getelementptr %"compiler/eval:Blob", ptr %t130, i32 0, i32 4
  %t133 = load i64, ptr %l11, !tbaa !24
  %t136 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v2, ptr %t132, i64 %t133)
  store i64 %t136, ptr %l71
  br label %bb24
bb24:
  %t137 = load i64, ptr %l71, !tbaa !24
  %t138 = icmp slt i64 %t137, 0
  br i1 %t138, label %bb25, label %bb26
bb25:
  %t140 = load ptr, ptr %l2, !tbaa !29
  %t142 = getelementptr %"compiler/eval:Blob", ptr %t140, i32 0, i32 6
  %t143 = load i64, ptr %l11, !tbaa !24
  %t146 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v2, ptr %t142, i64 %t143)
  store i64 %t146, ptr %l77
  br label %bb27
bb26:
  %t149 = getelementptr %"compiler/eval:Image", ptr %a1, i32 0, i32 1
  store ptr %t149, ptr %l79, !tbaa !29
  %t150 = load ptr, ptr %l2, !tbaa !29
  %t152 = getelementptr %"compiler/eval:Blob", ptr %t150, i32 0, i32 4
  %t153 = load i64, ptr %l11, !tbaa !24
  %t156 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v2, ptr %t152, i64 %t153)
  store i64 %t156, ptr %l83
  br label %bb28
bb27:
  %t157 = load i64, ptr %l77, !tbaa !24
  store i64 %t157, ptr %l73, !tbaa !24
  br label %bb30
bb28:
  %t158 = load ptr, ptr %l79, !tbaa !29
  %t159 = load i64, ptr %l83, !tbaa !24
  %t160 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t158, i64 %t159)
  store i64 %t160, ptr %l84
  br label %bb29
bb29:
  %t161 = load i64, ptr %l84, !tbaa !24
  store i64 %t161, ptr %l73, !tbaa !24
  br label %bb30
bb30:
  %t162 = load i64, ptr %l73, !tbaa !24
  store i64 %t162, ptr %l12, !tbaa !24
  %t163 = load ptr, ptr %l2, !tbaa !29
  %t165 = getelementptr %"compiler/eval:Blob", ptr %t163, i32 0, i32 4
  %t166 = load i64, ptr %l11, !tbaa !24
  %t169 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v2, ptr %t165, i64 %t166)
  store i64 %t169, ptr %l88
  br label %bb31
bb31:
  %t170 = load i64, ptr %l88, !tbaa !24
  %t171 = icmp sge i64 %t170, 0
  br i1 %t171, label %bb32, label %bb33
bb32:
  %t173 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t173, ptr %l91, !tbaa !27
  %t174 = load ptr, ptr %l2, !tbaa !29
  %t176 = getelementptr %"compiler/eval:Blob", ptr %t174, i32 0, i32 4
  %t177 = load i64, ptr %l11, !tbaa !24
  %t180 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v2, ptr %t176, i64 %t177)
  store i64 %t180, ptr %l95
  br label %bb34
bb33:
  store i1 false, ptr %l90, !tbaa !21
  br label %bb35
bb34:
  %t181 = load i64, ptr %l95, !tbaa !24
  %t182 = getelementptr { i64, ptr }, ptr %l91, i32 0, i32 1
  %t183 = load ptr, ptr %t182, !tbaa !27
  %t184 = getelementptr i64, ptr %t183, i64 %t181
  %t185 = load i64, ptr %t184, !tbaa !34
  %t187 = icmp sge i64 %t185, 0
  store i1 %t187, ptr %l90, !tbaa !21
  br label %bb35
bb35:
  %t189 = load i1, ptr %l90, !tbaa !21
  br i1 %t189, label %bb36, label %bb37
bb36:
  %t190 = load ptr, ptr %lp5
  %t191 = getelementptr %"compiler/eval:Blob", ptr %t190, i32 0, i32 4
  store ptr %t191, ptr %l98, !tbaa !29
  %t192 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t192, ptr %l99, !tbaa !27
  %t193 = load ptr, ptr %l2, !tbaa !29
  %t195 = getelementptr %"compiler/eval:Blob", ptr %t193, i32 0, i32 4
  %t196 = load i64, ptr %l11, !tbaa !24
  %t199 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v2, ptr %t195, i64 %t196)
  store i64 %t199, ptr %l103
  br label %bb38
bb37:
  br label %bb41
bb38:
  %t200 = load i64, ptr %l103, !tbaa !24
  %t201 = getelementptr { i64, ptr }, ptr %l99, i32 0, i32 1
  %t202 = load ptr, ptr %t201, !tbaa !27
  %t203 = getelementptr i64, ptr %t202, i64 %t200
  %t204 = load i64, ptr %t203, !tbaa !34
  %t205 = load ptr, ptr %l98, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v5, ptr %t205, i64 %t204)
  br label %bb39
bb39:
  %t207 = load ptr, ptr %lp5
  %t208 = getelementptr %"compiler/eval:Blob", ptr %t207, i32 0, i32 6
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v5, ptr %t208, i64 -1)
  br label %bb40
bb40:
  call void @__olang_scope_close(ptr %s2)
  br label %bb54
bb41:
  %t211 = load i64, ptr %l12, !tbaa !24
  %t214 = call { i32, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fpair_3aPair_3cI64_2c_20_H1ffd47e550cf52833705251cc4e5cd8d(ptr %v4, ptr %a4, i64 %t211)
  %t215 = extractvalue { i32, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" } %t214, 1
  %t216 = extractvalue { i32, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" } %t214, 0
  store i32 %t216, ptr %l110
  %t217 = icmp ne i32 %t216, 0
  br i1 %t217, label %bb43, label %ok.218, !prof !99
ok.218:
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t215, ptr %l109
  br label %bb42
bb42:
  %t219 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l109
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t219, ptr %l106
  br label %bb46
bb43:
  br label %bb44
bb44:
  %t220 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s2, i64 -1, i64 -1)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t220, ptr %l111
  br label %bb45
bb45:
  %t221 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l111
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t221, ptr %l106
  br label %bb46
bb46:
  %t222 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l106
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t222, ptr %l13
  %t225 = getelementptr %"compiler/interp:Exec", ptr %a0, i32 0, i32 1
  %t226 = load ptr, ptr %t225, !tbaa !29
  %t227 = getelementptr %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l13, i32 0, i32 0
  %t228 = load i64, ptr %t227, !tbaa !24
  %t231 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t226, i64 %t228)
  store ptr %t231, ptr %l115
  br label %bb47
bb47:
  %t232 = load ptr, ptr %l115, !tbaa !29
  %t233 = call { i64, i32 } @compiler_2finterp_2eglobalName(ptr %v0, ptr %t232)
  store { i64, i32 } %t233, ptr %l116
  br label %bb48
bb48:
  %t234 = load { i64, i32 }, ptr %l116
  store { i64, i32 } %t234, ptr %l14
  %t235 = getelementptr { i64, i32 }, ptr %l14, i32 0, i32 0
  %t236 = load i64, ptr %t235, !tbaa !24
  store i64 %t236, ptr %l15, !tbaa !24
  %t238 = getelementptr { i64, i32 }, ptr %l14, i32 0, i32 1
  %t239 = load i32, ptr %t238, !tbaa !23
  store i32 %t239, ptr %l16, !tbaa !23
  %t241 = load ptr, ptr %lp5
  %t242 = getelementptr %"compiler/eval:Blob", ptr %t241, i32 0, i32 4
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v5, ptr %t242, i64 -1)
  br label %bb49
bb49:
  %t244 = load ptr, ptr %lp5
  %t245 = getelementptr %"compiler/eval:Blob", ptr %t244, i32 0, i32 6
  %t246 = load i64, ptr %l12, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v5, ptr %t245, i64 %t246)
  br label %bb50
bb50:
  %t249 = load ptr, ptr %lp5
  %t250 = getelementptr %"compiler/eval:Blob", ptr %t249, i32 0, i32 7
  %t251 = load i64, ptr %l15, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v5, ptr %t250, i64 %t251)
  br label %bb51
bb51:
  %t254 = load ptr, ptr %lp5
  %t255 = getelementptr %"compiler/eval:Blob", ptr %t254, i32 0, i32 8
  %t256 = load i32, ptr %l16, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %v5, ptr %t255, i32 %t256)
  br label %bb52
bb52:
  %t259 = load ptr, ptr %lp5
  %t260 = getelementptr %"compiler/eval:Blob", ptr %t259, i32 0, i32 9
  %t261 = getelementptr %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l13, i32 0, i32 1
  %t262 = load i64, ptr %t261, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v5, ptr %t260, i64 %t262)
  br label %bb53
bb53:
  call void @__olang_scope_close(ptr %s2)
  br label %bb54
bb54:
  %t265 = load i64, ptr %l10, !tbaa !24
  %t267 = add i64 %t265, 1
  store i64 %t267, ptr %l10, !tbaa !24
  br label %bb16
bb55:
  %t269 = load ptr, ptr %lp5
  call void @llvm.memmove.p0.p0.i64(ptr %l130, ptr %t269, i64 272, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l130, i64 272, i1 false)
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
  %l34 = alloca i1
  %l38 = alloca { i64, ptr }
  %l41 = alloca { { i64, ptr }, i64, %"compiler/source:Span" }
  %l42 = alloca { i64, ptr }
  %l43 = alloca i64
  %l44 = alloca { i64, ptr }
  %l46 = alloca { i64, ptr }
  %l53 = alloca { i64, ptr }
  %l56 = alloca { { i64, ptr }, i64, %"compiler/source:Span" }
  %l57 = alloca { i64, ptr }
  %l58 = alloca i64
  %l59 = alloca { i64, ptr }
  %s4 = alloca %olang.scope
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d57, i32 0, i32 1) }, ptr %l10, !tbaa !27
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
  %t50 = extractvalue { i64, ptr } %t48, 1
  %t51 = extractvalue { i64, ptr } %t48, 0
  %t52 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t51)
  call void @olang_textcopy(ptr %t52, ptr %t50, i64 %t51)
  %t53 = insertvalue { i64, ptr } undef, i64 %t51, 0
  %t54 = insertvalue { i64, ptr } %t53, ptr %t52, 1
  %t55 = load i64, ptr %l3, !tbaa !24
  %t56 = load %"compiler/source:Span", ptr %l4
  %t58 = insertvalue { { i64, ptr }, i64, %"compiler/source:Span" } undef, { i64, ptr } %t54, 0
  %t60 = insertvalue { { i64, ptr }, i64, %"compiler/source:Span" } %t58, i64 %t55, 1
  %t62 = insertvalue { { i64, ptr }, i64, %"compiler/source:Span" } %t60, %"compiler/source:Span" %t56, 2
  store { { i64, ptr }, i64, %"compiler/source:Span" } %t62, ptr %rv
  br label %ret
bb8:
  %t64 = load { i64, [5 x i64] }, ptr %l0
  %t66 = extractvalue { i64, [5 x i64] } %t64, 0
  %t67 = icmp eq i64 %t66, 2
  br i1 %t67, label %bb9, label %bb10
bb9:
  %t69 = getelementptr { i64, [5 x i64] }, ptr %l0, i32 0, i32 1
  %t70 = getelementptr { i32, i64, %"compiler/source:Span", { i64, ptr } }, ptr %t69, i32 0, i32 0
  %t71 = load i32, ptr %t70, !range !{i32 0, i32 16}
  store i32 %t71, ptr %l5
  %t73 = getelementptr { i64, [5 x i64] }, ptr %l0, i32 0, i32 1
  %t74 = getelementptr { i32, i64, %"compiler/source:Span", { i64, ptr } }, ptr %t73, i32 0, i32 1
  %t75 = load i64, ptr %t74
  store i64 %t75, ptr %l6, !tbaa !24
  %t77 = getelementptr { i64, [5 x i64] }, ptr %l0, i32 0, i32 1
  %t78 = getelementptr { i32, i64, %"compiler/source:Span", { i64, ptr } }, ptr %t77, i32 0, i32 2
  %t79 = load %"compiler/source:Span", ptr %t78
  store %"compiler/source:Span" %t79, ptr %l7
  br label %bb11
bb10:
  br label %bb19
bb11:
  store %olang.scope zeroinitializer, ptr %s4
  %t81 = load i32, ptr %l5, !range !{i32 0, i32 16}
  %t83 = trunc i64 3 to i32
  %t84 = icmp eq i32 %t81, %t83
  br i1 %t84, label %bb12, label %bb13
bb12:
  %t86 = getelementptr %"compiler/source:Span", ptr %l7, i32 0, i32 0
  %t87 = load i32, ptr %t86, !tbaa !23
  %t88 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t89 = load i32, ptr %t88, !tbaa !23
  %t92 = icmp eq i32 %t87, %t89
  store i1 %t92, ptr %l34, !tbaa !21
  br label %bb14
bb13:
  store i1 false, ptr %l34, !tbaa !21
  br label %bb14
bb14:
  %t94 = load i1, ptr %l34, !tbaa !21
  br i1 %t94, label %bb15, label %bb16
bb15:
  store { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d58, i32 0, i32 1) }, ptr %l38, !tbaa !27
  %t95 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t96 = load %"compiler/source:Span", ptr %l1
  %t98 = insertvalue { { i64, ptr }, i64, %"compiler/source:Span" } undef, { i64, ptr } %t95, 0
  %t99 = insertvalue { { i64, ptr }, i64, %"compiler/source:Span" } %t98, i64 -1, 1
  %t101 = insertvalue { { i64, ptr }, i64, %"compiler/source:Span" } %t99, %"compiler/source:Span" %t96, 2
  store { { i64, ptr }, i64, %"compiler/source:Span" } %t101, ptr %l41
  %t102 = getelementptr { { i64, ptr }, i64, %"compiler/source:Span" }, ptr %l41, i32 0, i32 0
  %t103 = load { i64, ptr }, ptr %t102, !tbaa !27
  store { i64, ptr } %t103, ptr %l42, !tbaa !27
  %t104 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t105 = extractvalue { i64, ptr } %t104, 0
  store i64 %t105, ptr %l43, !tbaa !24
  %t106 = load i64, ptr %l43, !tbaa !24
  %t107 = mul i64 %t106, 1
  %t108 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t107)
  %t109 = insertvalue { i64, ptr } undef, i64 %t106, 0
  %t110 = insertvalue { i64, ptr } %t109, ptr %t108, 1
  store { i64, ptr } %t110, ptr %l44, !tbaa !27
  %t111 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t112 = load ptr, ptr %t111, !tbaa !27
  %t113 = getelementptr { i64, ptr }, ptr %l42, i32 0, i32 1
  %t114 = load ptr, ptr %t113, !tbaa !27
  %t115 = load i64, ptr %l43, !tbaa !24
  %t116 = mul i64 %t115, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t112, ptr %t114, i64 %t116, i1 false)
  %t117 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t118 = getelementptr { { i64, ptr }, i64, %"compiler/source:Span" }, ptr %l41, i32 0, i32 0
  store { i64, ptr } %t117, ptr %t118, !tbaa !27
  call void @__olang_scope_close(ptr %s4)
  %t119 = load { { i64, ptr }, i64, %"compiler/source:Span" }, ptr %l41
  store { { i64, ptr }, i64, %"compiler/source:Span" } %t119, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  %t120 = load i32, ptr %l5, !range !{i32 0, i32 16}
  %t122 = call { i64, ptr } @compiler_2finterp_2eAbortWhy(ptr %s4, i32 %t120)
  store { i64, ptr } %t122, ptr %l46
  br label %bb18
bb18:
  %t123 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t124 = extractvalue { i64, ptr } %t123, 1
  %t125 = extractvalue { i64, ptr } %t123, 0
  %t126 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t125)
  call void @olang_textcopy(ptr %t126, ptr %t124, i64 %t125)
  %t127 = insertvalue { i64, ptr } undef, i64 %t125, 0
  %t128 = insertvalue { i64, ptr } %t127, ptr %t126, 1
  %t129 = load i64, ptr %l6, !tbaa !24
  %t130 = load %"compiler/source:Span", ptr %l7
  %t132 = insertvalue { { i64, ptr }, i64, %"compiler/source:Span" } undef, { i64, ptr } %t128, 0
  %t134 = insertvalue { { i64, ptr }, i64, %"compiler/source:Span" } %t132, i64 %t129, 1
  %t136 = insertvalue { { i64, ptr }, i64, %"compiler/source:Span" } %t134, %"compiler/source:Span" %t130, 2
  call void @__olang_scope_close(ptr %s4)
  store { { i64, ptr }, i64, %"compiler/source:Span" } %t136, ptr %rv
  br label %ret
bb19:
  %t138 = load { i64, [5 x i64] }, ptr %l0
  %t140 = extractvalue { i64, [5 x i64] } %t138, 0
  %t141 = icmp eq i64 %t140, 1
  br i1 %t141, label %bb20, label %bb21
bb20:
  br label %bb22
bb21:
  br label %bb23
bb22:
  store { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d59, i32 0, i32 1) }, ptr %l53, !tbaa !27
  %t143 = load { i64, ptr }, ptr %l53, !tbaa !27
  %t144 = load %"compiler/source:Span", ptr %l1
  %t146 = insertvalue { { i64, ptr }, i64, %"compiler/source:Span" } undef, { i64, ptr } %t143, 0
  %t147 = insertvalue { { i64, ptr }, i64, %"compiler/source:Span" } %t146, i64 -1, 1
  %t149 = insertvalue { { i64, ptr }, i64, %"compiler/source:Span" } %t147, %"compiler/source:Span" %t144, 2
  store { { i64, ptr }, i64, %"compiler/source:Span" } %t149, ptr %l56
  %t150 = getelementptr { { i64, ptr }, i64, %"compiler/source:Span" }, ptr %l56, i32 0, i32 0
  %t151 = load { i64, ptr }, ptr %t150, !tbaa !27
  store { i64, ptr } %t151, ptr %l57, !tbaa !27
  %t152 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t153 = extractvalue { i64, ptr } %t152, 0
  store i64 %t153, ptr %l58, !tbaa !24
  %t154 = load i64, ptr %l58, !tbaa !24
  %t155 = mul i64 %t154, 1
  %t156 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t155)
  %t157 = insertvalue { i64, ptr } undef, i64 %t154, 0
  %t158 = insertvalue { i64, ptr } %t157, ptr %t156, 1
  store { i64, ptr } %t158, ptr %l59, !tbaa !27
  %t159 = getelementptr { i64, ptr }, ptr %l59, i32 0, i32 1
  %t160 = load ptr, ptr %t159, !tbaa !27
  %t161 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t162 = load ptr, ptr %t161, !tbaa !27
  %t163 = load i64, ptr %l58, !tbaa !24
  %t164 = mul i64 %t163, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t160, ptr %t162, i64 %t164, i1 false)
  %t165 = load { i64, ptr }, ptr %l59, !tbaa !27
  %t166 = getelementptr { { i64, ptr }, i64, %"compiler/source:Span" }, ptr %l56, i32 0, i32 0
  store { i64, ptr } %t165, ptr %t166, !tbaa !27
  %t167 = load { { i64, ptr }, i64, %"compiler/source:Span" }, ptr %l56
  store { { i64, ptr }, i64, %"compiler/source:Span" } %t167, ptr %rv
  br label %ret
bb23:
  call void @__olang_check_failed(ptr @olang_loc_9aa13344fea3f6d8_5ff568fedc30749c)
  unreachable
ret:
  %rr = load { { i64, ptr }, i64, %"compiler/source:Span" }, ptr %rv
  ret { { i64, ptr }, i64, %"compiler/source:Span" } %rr
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d60, i32 0, i32 1) }, ptr %l35, !tbaa !27
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d61, i32 0, i32 1) }, ptr %l63, !tbaa !27
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d62, i32 0, i32 1) }, ptr %l129, !tbaa !27
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
  %t349 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d63, i32 0, i32 1) }, 1
  %t350 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d63, i32 0, i32 1) }, 0
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d64, i32 0, i32 1) }, ptr %l13, !tbaa !27
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
  %t98 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s2, { i64, ptr } %t96, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d65, i32 0, i32 1) })
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d66, i32 0, i32 1) }, ptr %l62, !tbaa !27
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
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
@olang_2esole_2ecompiler_2finterp_3aExec_2e10 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
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
@.d0 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare ptr @__olang_scope_of(ptr, ptr) noinline
@.d1 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d2 = private constant <{ i64, [94 x i8] }> <{ i64 0, [94 x i8] c"its value is no data the program can hold - it reaches storage made elsewhere, or a destructor" }>, align 8
declare void @__olang_check_failed(ptr) cold noreturn
@__olang_empty_array = external constant [16 x i64]
@.d3 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d4 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@__olang_prog_scope = external thread_local(initialexec) global ptr
@.d5 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-l" }>, align 8
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
@.d6 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"lib" }>, align 8
@.d7 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c".so" }>, align 8
@.d8 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c".a" }>, align 8
@.d9 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c".o" }>, align 8
@.d10 = private constant <{ i64, [54 x i8] }> <{ i64 0, [54 x i8] c"a static library or an object, which only a link takes" }>, align 8
declare ptr @dlopen(ptr, i32)
@.d11 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare ptr @dlerror()
@.d12 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"dlopen failed" }>, align 8
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
@.d13 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c": invalid ELF header" }>, align 8
declare void @__olang_errpay_pop()
@.d14 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d15 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d16 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d17 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c"an error escapes, code " }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d18 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
@.d19 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"unhandled error: " }>, align 8
@.d20 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d21 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d22 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
@.d23 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
@.d24 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
@.d25 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2finterp_3achained_2e2 = weak hidden constant i1 false
@.d26 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" (" }>, align 8
@.d27 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d28 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" (" }>, align 8
@.d29 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d30 = private constant <{ i64, [40 x i8] }> <{ i64 0, [40 x i8] c"it fails with an error no clause handles" }>, align 8
@.d31 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d32 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d33 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d34 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"unhandled error: " }>, align 8
@.d35 = private constant <{ i64, [31 x i8] }> <{ i64 0, [31 x i8] c" - here in the task spawned at " }>, align 8
@.d36 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"test" }>, align 8
@.d37 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"std/" }>, align 8
@.d38 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Bool" }>, align 8
@.d39 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I32" }>, align 8
@.d40 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I64" }>, align 8
@.d41 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"U64" }>, align 8
@.d42 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"F64" }>, align 8
@.d43 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"std/prelude/text" }>, align 8
@.d44 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"String" }>, align 8
@.d45 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"error " }>, align 8
@.d46 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I64" }>, align 8
@.d47 = private constant <{ i64, [32 x i8] }> <{ i64 0, [32 x i8] c"its range's step is not positive" }>, align 8
@.d48 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"its range holds " }>, align 8
@.d49 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c" elements" }>, align 8
@.d50 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d51 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d52 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d53 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d54 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d55 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
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
define internal i1 @olang_lambda_56(ptr %env, ptr %v0, { i64, ptr } %a0) #0 {
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

@.d57 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d58 = private constant <{ i64, [40 x i8] }> <{ i64 0, [40 x i8] c"it fails with an error no clause handles" }>, align 8
@.d59 = private constant <{ i64, [40 x i8] }> <{ i64 0, [40 x i8] c"it fails with an error no clause handles" }>, align 8
@.d60 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d61 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d62 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d63 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"&" }>, align 8
@.d64 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d65 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d66 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
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

declare ptr @__olang_scope_mine_slow(ptr) noinline
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

declare void @compiler_2finterp_3aExec_2ector(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
declare void @compiler_2finterp_2ecompiler_2finterp_3aExec_2estart(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eGlobalDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2)
declare i1 @compiler_2fgeneric_2eWrittenMut(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2feval_3aImage_3e_2e_Hb8bfbe57c0e5b70e405cb38b3b12641e(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"compiler/eval:Image" %a2)
declare { i32, %"compiler/eval:Image" } @compiler_2feval_2ecompiler_2feval_3aMachine_2eImage(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2, i1 %a3)
declare void @compiler_2finterp_2eunbaked(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, ptr %a1, ptr %a2, i64 %a3, ptr %a4, ptr %a5, ptr %a6)
declare void @compiler_2finterp_2eshareStorage(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fsource_3aSpan_3e_2_Hbfebb6c42bc5b6ebe27287b6298add36(ptr %v0, ptr %v1, ptr %a0)
declare { i32, %"std/prelude/map:MapEntry.9f40551e0d6019a8e678d8f53048b6ba" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapIter_3cI64_2c_20compiler_2fsource_3aSpan__Hd38fe3b5521cd0cc33c71306d155ae89(ptr %v0, ptr %a0)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2feval_3aImage_3e_2e_H901ad831a5883703dcf426ee01511832(ptr %v0, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_He9bc6cfad7ef603960b4717f3121b8e8(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eComptimeNotBaked(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aAssertAsk_3e_2eLen__Hcf51b196874cac8430175c74f3bdddd4(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aContractAsk_3e_2eLe_H3dc16594b41531049b330439cbeee191(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aTopAssertAsk_3e_2eL_H34364174f15757c2d142d60c88ce0944(ptr %v0, ptr %a0)
declare i64 @compiler_2finterp_2edecideTopAsserts(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2finterp_3aabortedAsk_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aAssertAsk_3e_2eAt_3ccompiler_2fcheck_3aAssertAsk_3e(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %v0, i64 %a0, i64 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2ed2e5427629ba63a7110fc86d969058(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare void @compiler_2finterp_2ecompiler_2finterp_3aExec_2eNeed(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
@olang_loc_7edf3cf7ccf8e57f_276bde685bbe381b = external constant [0 x i8]
declare { i64, [5 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2eEval(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, [2 x i64] } %a1, { i64, ptr } %a2)
@G_2ecompiler_2ftypes_2eBoolT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eInt(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i32 %a2)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1308596c866d4be061d9da9113abde88(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1, i1 %a2)
declare i1 @compiler_2ftyped_2eAlwaysReached(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
declare %"compiler/diagmsg:Msg" @compiler_2finterp_2efalseMessage(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i64 @compiler_2finterp_2esayAt(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, { i64, [3 x i64] } %a2, %"compiler/diagmsg:Msg" %a3)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteHere(ptr %v0)
declare %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v1, ptr %v2, i32 %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, [3 x i64] } %a2, %"compiler/diagmsg:Msg" %a3)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2finterp_3aabortedAsk_3e_2ePu_H62bc00b7824fd8cdf5686f596056a5cf(ptr %v0, ptr %a0, %"compiler/interp:abortedAsk" %a1)
@G_2ecompiler_2feval_2eWhyStale = external constant <{ [8 x i8], ptr }>
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAssertStale(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @compiler_2finterp_2estaleNotes(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2, i64 %a3, %"compiler/source:Span" %a4)
@olang_loc_d8df33bf7c2af1a9_d617709f0680343d = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2finterp_3aabortedAsk_3e_2eLe_H5a66fb9a3db37c186716c1dbb29c1120(ptr %v0, ptr %a0)
declare %"compiler/interp:abortedAsk" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2finterp_3aabortedAsk_3e_2eAt_Hb6fdd0b60302bbbc29e9a063b33ba4bc(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2finterp_2eglobalAborts(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2, i32 %a3, i64 %a4, %"compiler/source:Span" %a5)
declare { i64, ptr } @compiler_2finterp_2eAbortWhy(ptr %v0, i32 %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAssertAborts(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_31552f310cf75527_9d9c34da119f96fb = external constant [0 x i8]
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eToC(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i64, ptr } @std_2fprelude_2ftext_2eString_2eFromC(ptr %v0, ptr %a0, i64 %a1)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_80c555340270d24a_f87cde9b6389147e = external constant [0 x i8]
declare { i32, { i64, ptr } } @std_2fos_2eReadFile(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i64, ptr } @compiler_2finterp_2escriptLibrary(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i64, ptr } @compiler_2fmir_2eExitText(ptr %v0, i32 %a0)
declare { i64, ptr } @compiler_2finterp_2eline(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"compiler/source:Span" %a2)
@olang_loc_5ef8759083cc657e_8312724bf589cc02 = external constant [0 x i8]
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_ba0352a17aee8a03_24304d216386b767 = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v0, ptr %a0)
@olang_loc_aa3cb25751d43a74_c6dcfb500e269348 = external constant [0 x i8]
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eCondBody(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare { i64, [5 x i64] } @compiler_2finterp_2ecompiler_2finterp_3aExec_2eCondStop(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_ea77dd63fedcf2a0_9e0f4ee5a7bf3444 = external constant [0 x i8]
@G_2ecompiler_2fload_2eNoBranch = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF" }>, align 8
@G_2ecompiler_2feval_2eWhyWaits = external constant <{ [8 x i8], ptr }>
@olang_loc_177aae49e1a91f38_175ec48f508568b4 = external constant [0 x i8]
declare ptr @compiler_2fast_2eFindTest(ptr %v0, ptr %v1, { i64, ptr } %a0, %"compiler/source:Span" %a1)
@olang_loc_eb59e3d17e209b69_67e25fc5a7a9951d = external constant [0 x i8]
declare { i64, ptr } @compiler_2fast_2eTestLabel(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, ptr %a2)
declare { i64, ptr } @compiler_2feval_2ecompiler_2feval_3aMachine_2eText(ptr %v0, ptr %v1, ptr %a0, %"compiler/eval:Ptr" %a1, i32 %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aBlob_3e_2eLen_3ccompiler_2feval_3aBlob_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aBlob_3e_2eAt_3ccompiler_2feval_3aBlob_3e(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePreludeType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e__H165e1ff795edcbb725e28dde18fd1dc2(ptr %v0, ptr %a0, i32 %a1)
declare { i32, { i64, [2 x i64] } } @compiler_2fmir_2eFnKey_2eDropFn(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eDefineDestructor(ptr %v0, ptr %a0, i32 %a1, { i64, [2 x i64] } %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2ePush_3ccompiler_2fmir_3aFnKey_3e(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fload_2eErrQualifier(ptr %v0, ptr %v1, { i64, ptr } %a0, i1 %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorWordName(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i64 %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCall_3e_2eLen_3ccompiler_2fmir_3aCall_3e(ptr %v0, ptr %a0)
declare %"compiler/mir:Call" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCall_3e_2eAt_3ccompiler_2fmir_3aCall_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2finterp_2ecompiler_2finterp_3aExec_2ecallee(ptr %v0, ptr %v1, ptr %a0, { i64, [7 x i64] } %a1, ptr %a2)
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
declare void @compiler_2finterp_2ecompiler_2finterp_3aExec_2etable(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
@olang_loc_8a681f26571ed620_44a452bec848fe5c = external constant [0 x i8]
@olang_loc_2bb6346af5de5a31_dbc53e9ffd61978d = external constant [0 x i8]
@olang_loc_8c9ae6434c5565e7_656708b088a82c0b = external constant [0 x i8]
declare { i64, ptr } @compiler_2fast_2eTestTarget(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
@olang_loc_db23ec69d1a71a13_128a48d6c2b2bdb7 = external constant [0 x i8]
declare { i64, ptr } @compiler_2fast_2eTestDesc(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i32, i64 } @compiler_2finterp_2ecompiler_2finterp_3aExec_2eintOf(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare { i64, ptr } @compiler_2finterp_2estopWhy(ptr %v0, ptr %v1, { i64, [5 x i64] } %a0)
@olang_loc_8aa385fac4707635_8a0feffc81f8cb59 = external constant [0 x i8]
declare { i64, ptr } @compiler_2feval_2ecompiler_2feval_3aMachine_2eElems(ptr %v0, ptr %v1, ptr %a0, %"compiler/eval:Ptr" %a1, i32 %a2, i32 %a3)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eCount(ptr %v0, ptr %a0)
declare i1 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrorWithin(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i64 %a3, i64 %a4)
@olang_loc_6556c5b27a8f2520_6c50e0cecbbb5fdc = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aContractAsk_3e_2eAt_H56c1cddaee4bc4aa5c09605de1331e44(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_d213ae2acd73c837_819e6544d8b9fb33 = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eConversionDoesNotFit(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eContractFalse(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteContractCondition(ptr %v0)
@olang_loc_3238838aabc16991_ed85858096edfcc5 = external constant [0 x i8]
declare void @compiler_2finterp_2esayErr(ptr %v0, { i64, ptr } %a0)
declare void @std_2fos_2eExit(i32 %a0)
@olang_loc_684d00a1d063a664_9e7a8340f5ecf8d8 = external constant [0 x i8]
@olang_loc_6beaad51a5cbbd4f_ba25a08250cd8123 = external constant [0 x i8]
declare ptr @compiler_2finterp_2efindIf(ptr %v0, ptr %v1, { i64, ptr } %a0, i32 %a1)
@olang_loc_337e2febbb969070_fe2fc98a6d253614 = external constant [0 x i8]
declare { i64, i32 } @compiler_2finterp_2eglobalName(ptr %v0, ptr %a0)
@olang_loc_4efe4c4a78894057_5e75e4c074554d53 = external constant [0 x i8]
@olang_loc_1ec4d19c7606c42f_38a78c76cd6682ab = external constant [0 x i8]
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fpair_3aPair_3cI64_2c_20_H3ccda5e77fabf86fda89ecfc77eff03d(ptr %v0, ptr %a0, i64 %a1)
declare { i32, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fpair_3aPair_3cI64_2c_20_H1ffd47e550cf52833705251cc4e5cd8d(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fviews_2ecompiler_2fviews_3aKept_2eTakeHolding(ptr %v0, ptr %v1, ptr %a0, ptr %a1c, ptr %a1e)
declare void @compiler_2fviews_3aViewer_2ector(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1)
declare void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eRunKept(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2feval_3aBlob_2ector(ptr %out, ptr %v0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0, i32 %a1)
declare i32 @std_2fio_2ePrint(ptr %v0, { i64, ptr } %a0)
@olang_loc_9aa13344fea3f6d8_5ff568fedc30749c = external constant [0 x i8]
@olang_loc_4d6a1406cb03667d_c559610947931d69 = external constant [0 x i8]
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %a0)
@olang_loc_48501d979e098c20_fb4a76bbe2d8ef7c = external constant [0 x i8]
declare { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eTextOf(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2feval_3aImage_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0)
declare i1 @compiler_2ffacts_2ecompiler_2ffacts_3aTable_2eHolds(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)

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
