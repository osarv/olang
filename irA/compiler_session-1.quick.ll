source_filename = "compiler_session-1.quick.ll"
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
%"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" = type { ptr, i64 }
%"std/prelude/map:MapEntry.c7dad01dbd7dd6cd22e9701676806c15" = type { { i64, ptr }, { i64, ptr } }
%"compiler/fetch:Fetcher" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"compiler/source:Names" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/session:Analysis" = type { ptr, ptr, ptr, ptr }
%"compiler/views:Kept" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/check:Checker" = type { ptr, ptr, i1, i1, i1, i1, i64, i64, i1, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, { i64, [3 x i64] }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i32, i64, %"compiler/source:Span", i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/source:Span", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i32, i1, i1, %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, i32, i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, i64, i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/text:StringBuilder", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/source:Span" = type { i32, i32 }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/build:Config" = type { { i64, ptr }, { i64, ptr }, %"compiler/target:Target", %"compiler/cond:Consts", i1, i1, i1, i1, i1, i1, { i64, ptr }, i64, i1, i1, i1, { i64, ptr }, i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, i1, { i64, ptr }, { i64, ptr }, i64, i64, i1, { i64, ptr }, { i64, ptr } }
%"compiler/target:Target" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i1, i1 }
%"compiler/cond:Consts" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/diag:Diagnostics" = type { i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, [3 x i64] }, { i64, ptr }, { i64, ptr }, i1, i1 }
%"<poll.h>:pollfd" = type { i32, i16, i16 }
%"compiler/session:Use" = type { i64, i64, { i64, ptr } }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/names:Ref" = type { i32, i64, i64 }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/ast:Func" = type { %"compiler/source:Span", ptr, i32, ptr, { i64, ptr }, { i64, ptr }, i1, i1, { i64, ptr }, ptr, i32 }
%"compiler/scope:Placement" = type { i64, i64, i64, i64, { i64, ptr }, i1 }
%"compiler/session:Found" = type { { i64, ptr }, { i64, ptr }, i64 }
%"compiler/typed:Local" = type { i32, %"compiler/source:Span", i32, i32, i32, { i64, [1 x i64] }, i1, i1 }
%"compiler/session:memberInfo" = type { { i64, ptr }, i32, { i64, ptr }, { i64, ptr }, i64 }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/source:Source" = type { { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20" = type { i64, i32 }
%"compiler/names:Entry" = type { i32, %"compiler/source:Span", i32, i1, ptr }
%"compiler/session:finder" = type { i64, i64, { i64, ptr }, ptr, i64, { i64, [6 x i64] }, i64 }
%"compiler/names:Resolver" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/names:Table" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/session:Positions" = type { { i64, ptr }, i1, { i64, ptr } }
%"compiler/typed:Block" = type { i32, { i64, ptr } }
%"compiler/typed:Promote" = type { ptr, i32 }
%"compiler/typed:Call" = type { ptr, { i64, ptr }, i32, i1, i1 }
%"compiler/typed:Make" = type { i32, i64, { i64, ptr }, ptr, i32, i32, i1 }
%"compiler/typed:Collect" = type { ptr, ptr, i32, i32, i1 }
%"compiler/typed:Slice" = type { ptr, ptr, ptr, i32 }
%"compiler/typed:Cond" = type { ptr, ptr, ptr }
%"compiler/typed:Seq" = type { { i64, ptr }, ptr, i1 }
%"compiler/typed:Match" = type { { i64, ptr }, { i64, ptr }, ptr, i1 }
%"compiler/typed:Arm" = type { %"compiler/source:Span", { i64, ptr }, ptr, ptr, ptr }
%"compiler/typed:Alt" = type { ptr, { i64, ptr } }
%"compiler/typed:Try" = type { ptr, { i64, ptr }, i1, i1, i1 }
%"compiler/typed:Clause" = type { %"compiler/source:Span", { i64, ptr }, i1, ptr, { i64, ptr }, i64, i32 }
%"compiler/typed:Capture" = type { i32, ptr }
%"compiler/typed:Text" = type { { i64, ptr }, i32 }
%"compiler/typed:Elem" = type { ptr, ptr, i32 }
%"compiler/typed:Payload" = type { ptr, i64, i32 }
%"compiler/session:symWriter" = type { ptr, i64 }
%"compiler/ast:StructBody" = type { { i64, ptr }, ptr, { i64, ptr }, %"compiler/source:Span", { i64, ptr }, { i64, ptr } }
%"compiler/ast:VarDecl" = type { { i64, ptr }, { i64, ptr }, ptr, { i64, ptr }, i1, i1, { i64, ptr }, i1 }
%"compiler/ast:CaseDecl" = type { %"compiler/source:Span", i32, { i64, ptr }, i1, ptr, { i64, ptr } }
%"compiler/session:typeFinder" = type { i64, i32, i64 }
%"compiler/session:Reader" = type { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1 }
define dso_local ptr @compiler_2fsession_2eAnalysis_2eAnalyze(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, { i64, ptr } %a0, ptr %a1, ptr %a2, ptr %a3, i1 %a4) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
  %l11 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l12 = alloca %"std/prelude/map:MapEntry.c7dad01dbd7dd6cd22e9701676806c15"
  %l13 = alloca i64
  %l14 = alloca ptr
  %l15 = alloca ptr
  %l16 = alloca ptr
  %l17 = alloca i1
  %l18 = alloca i64
  %l21 = alloca { i64, ptr }
  %l22 = alloca { i64, ptr }
  %l23 = alloca i64
  %l25 = alloca { i64, ptr }
  %l26 = alloca { i64, ptr }
  %l27 = alloca i64
  %l29 = alloca { i64, ptr }
  %l33 = alloca %"compiler/fetch:Fetcher"
  %l35 = alloca %"compiler/source:Names"
  %l37 = alloca i64
  %l39 = alloca { i64, ptr }
  %l46 = alloca %"compiler/load:Loader"
  %l48 = alloca ptr
  %l49 = alloca i64
  %l55 = alloca { i64, ptr }
  %l58 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l60 = alloca i64
  %l62 = alloca i64
  %l67 = alloca { i64, ptr }
  %l69 = alloca ptr
  %l70 = alloca i64
  %l78 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l79 = alloca %"std/prelude/map:MapEntry.c7dad01dbd7dd6cd22e9701676806c15"
  %l81 = alloca %"std/prelude/map:MapEntry.c7dad01dbd7dd6cd22e9701676806c15"
  %l82 = alloca i32
  %l84 = alloca i1
  %l86 = alloca ptr
  %l87 = alloca i64
  %l91 = alloca { i64, ptr }
  %l92 = alloca i64
  %l97 = alloca i64
  %l100 = alloca i64
  %l101 = alloca { i64, ptr }
  %l104 = alloca i64
  %l106 = alloca i64
  %l111 = alloca %"compiler/session:Analysis"
  %l116 = alloca i1
  %l118 = alloca i1
  %l120 = alloca ptr
  %l121 = alloca %"compiler/views:Kept"
  %l123 = alloca %"compiler/check:Checker"
  %l128 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l131 = alloca i64
  %l135 = alloca i64
  %l138 = alloca i64
  %l141 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l143 = alloca i64
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %rv = alloca ptr
  %t58 = alloca %"compiler/fetch:Fetcher", align 8
  %t92 = alloca %"compiler/load:Loader", align 8
  %t340 = alloca %"compiler/views:Kept", align 8
  %t342 = alloca %"compiler/check:Checker", align 8
  store { i64, ptr } %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = ptrtoint ptr %v4 to i64
  store i64 %t1, ptr %l18, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2ffetch_3aFetcher_2e0
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v4)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l18, !tbaa !24
  br label %bb2
bb2:
  %t6 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t7 = load i64, ptr %l18
  %t8 = inttoptr i64 %t7 to ptr
  %t10 = call { i64, ptr } @compiler_2fload_2eLockPath(ptr %v0, ptr %t8, { i64, ptr } %t6)
  store { i64, ptr } %t10, ptr %l21
  br label %bb3
bb3:
  %t11 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t12 = load i64, ptr %l18
  %t13 = inttoptr i64 %t12 to ptr
  %t14 = extractvalue { i64, ptr } %t11, 0
  %t15 = extractvalue { i64, ptr } %t11, 1
  %t16 = mul i64 %t14, 1
  %t17 = call ptr @__olang_scope_alloc(ptr %t13, i64 %t16)
  call void @llvm.memcpy.p0.p0.i64(ptr %t17, ptr %t15, i64 %t16, i1 false)
  %t18 = insertvalue { i64, ptr } undef, i64 %t14, 0
  %t19 = insertvalue { i64, ptr } %t18, ptr %t17, 1
  store { i64, ptr } %t19, ptr %l22, !tbaa !27
  %t20 = ptrtoint ptr %v4 to i64
  store i64 %t20, ptr %l23, !tbaa !24
  %t21 = load i1, ptr @olang_2esole_2ecompiler_2ffetch_3aFetcher_2e1
  br i1 %t21, label %bb4, label %bb5
bb4:
  %t23 = call ptr @__olang_region_make(ptr %v4)
  %t24 = ptrtoint ptr %t23 to i64
  store i64 %t24, ptr %l23, !tbaa !24
  br label %bb5
bb5:
  %t25 = load i64, ptr %l23
  %t26 = inttoptr i64 %t25 to ptr
  %t27 = call { i64, ptr } @compiler_2ffetch_2eCacheDir(ptr %t26)
  store { i64, ptr } %t27, ptr %l25
  br label %bb6
bb6:
  %t28 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t29 = load i64, ptr %l23
  %t30 = inttoptr i64 %t29 to ptr
  %t31 = extractvalue { i64, ptr } %t28, 0
  %t32 = extractvalue { i64, ptr } %t28, 1
  %t33 = mul i64 %t31, 1
  %t34 = call ptr @__olang_scope_alloc(ptr %t30, i64 %t33)
  call void @llvm.memcpy.p0.p0.i64(ptr %t34, ptr %t32, i64 %t33, i1 false)
  %t35 = insertvalue { i64, ptr } undef, i64 %t31, 0
  %t36 = insertvalue { i64, ptr } %t35, ptr %t34, 1
  store { i64, ptr } %t36, ptr %l26, !tbaa !27
  %t37 = ptrtoint ptr %v4 to i64
  store i64 %t37, ptr %l27, !tbaa !24
  %t38 = load i1, ptr @olang_2esole_2ecompiler_2ffetch_3aFetcher_2e2
  br i1 %t38, label %bb7, label %bb8
bb7:
  %t40 = call ptr @__olang_region_make(ptr %v4)
  %t41 = ptrtoint ptr %t40 to i64
  store i64 %t41, ptr %l27, !tbaa !24
  br label %bb8
bb8:
  %t42 = load i64, ptr %l27
  %t43 = inttoptr i64 %t42 to ptr
  %t44 = call { i64, ptr } @compiler_2ffetch_2eGitBase(ptr %t43)
  store { i64, ptr } %t44, ptr %l29
  br label %bb9
bb9:
  %t45 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t46 = load i64, ptr %l27
  %t47 = inttoptr i64 %t46 to ptr
  %t48 = extractvalue { i64, ptr } %t45, 0
  %t49 = extractvalue { i64, ptr } %t45, 1
  %t50 = mul i64 %t48, 1
  %t51 = call ptr @__olang_scope_alloc(ptr %t47, i64 %t50)
  call void @llvm.memcpy.p0.p0.i64(ptr %t51, ptr %t49, i64 %t50, i1 false)
  %t52 = insertvalue { i64, ptr } undef, i64 %t48, 0
  %t53 = insertvalue { i64, ptr } %t52, ptr %t51, 1
  %t54 = load ptr, ptr %l1, !tbaa !29
  %t56 = getelementptr %"compiler/build:Config", ptr %t54, i32 0, i32 16
  %t57 = load i1, ptr %t56, !tbaa !21
  %t59 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t60 = load { i64, ptr }, ptr %l26, !tbaa !27
  call void @compiler_2ffetch_3aFetcher_2ector(ptr %t58, ptr %v4, ptr %v4, ptr %v4, ptr %v4, { i64, ptr } %t59, { i64, ptr } %t60, { i64, ptr } %t53, i1 %t57, i1 true)
  call void @llvm.memmove.p0.p0.i64(ptr %l33, ptr %t58, i64 184, i1 false)
  br label %bb10
bb10:
  %t63 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 184, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t63, ptr %l33, i64 184, i1 false)
  store ptr %t63, ptr %l5, !tbaa !29
  %t65 = call %"compiler/source:Names" @compiler_2fsource_3aNames_2ector(ptr %v4)
  store %"compiler/source:Names" %t65, ptr %l35
  br label %bb11
bb11:
  %t66 = load %"compiler/source:Names", ptr %l35
  %t67 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 104, i64 8)
  store %"compiler/source:Names" %t66, ptr %t67
  store ptr %t67, ptr %l6, !tbaa !29
  %t69 = ptrtoint ptr %v4 to i64
  store i64 %t69, ptr %l37, !tbaa !24
  %t70 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aLoader_2e0
  br i1 %t70, label %bb12, label %bb13
bb12:
  %t72 = call ptr @__olang_region_make(ptr %v4)
  %t73 = ptrtoint ptr %t72 to i64
  store i64 %t73, ptr %l37, !tbaa !24
  br label %bb13
bb13:
  %t74 = load i64, ptr %l37
  %t75 = inttoptr i64 %t74 to ptr
  %t76 = call { i64, ptr } @compiler_2fload_2eStdDir(ptr %t75)
  store { i64, ptr } %t76, ptr %l39
  br label %bb14
bb14:
  %t77 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t78 = load i64, ptr %l37
  %t79 = inttoptr i64 %t78 to ptr
  %t80 = extractvalue { i64, ptr } %t77, 0
  %t81 = extractvalue { i64, ptr } %t77, 1
  %t82 = mul i64 %t80, 1
  %t83 = call ptr @__olang_scope_alloc(ptr %t79, i64 %t82)
  call void @llvm.memcpy.p0.p0.i64(ptr %t83, ptr %t81, i64 %t82, i1 false)
  %t84 = insertvalue { i64, ptr } undef, i64 %t80, 0
  %t85 = insertvalue { i64, ptr } %t84, ptr %t83, 1
  %t86 = load ptr, ptr %l1, !tbaa !29
  %t88 = getelementptr %"compiler/build:Config", ptr %t86, i32 0, i32 3
  %t89 = load ptr, ptr %l5, !tbaa !29
  %t90 = load ptr, ptr %l6, !tbaa !29
  %t91 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fload_3aLoader_2ector(ptr %t92, ptr %v4, ptr %v1, ptr %v4, ptr %v4, ptr %v2, ptr %v4, { i64, ptr } %t85, ptr %t88, ptr %t89, ptr %t90, ptr %t91)
  call void @llvm.memmove.p0.p0.i64(ptr %l46, ptr %t92, i64 680, i1 false)
  br label %bb15
bb15:
  %t98 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 680, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t98, ptr %l46, i64 680, i1 false)
  store ptr %t98, ptr %l7, !tbaa !29
  %t100 = load ptr, ptr %l7, !tbaa !29
  store ptr %t100, ptr %l48, !tbaa !29
  %t101 = ptrtoint ptr %v4 to i64
  store i64 %t101, ptr %l49, !tbaa !24
  %t102 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aLoader_2e19
  br i1 %t102, label %bb16, label %bb17
bb16:
  %t104 = call ptr @__olang_region_make(ptr %v4)
  %t105 = ptrtoint ptr %t104 to i64
  store i64 %t105, ptr %l49, !tbaa !24
  br label %bb17
bb17:
  %t106 = load ptr, ptr %l1, !tbaa !29
  %t108 = getelementptr %"compiler/build:Config", ptr %t106, i32 0, i32 1
  %t109 = load { i64, ptr }, ptr %t108, !tbaa !27
  %t111 = extractvalue { i64, ptr } %t109, 1
  %t112 = extractvalue { i64, ptr } %t109, 0
  %t113 = load i64, ptr %l49
  %t114 = inttoptr i64 %t113 to ptr
  %t115 = call ptr @__olang_scope_alloc(ptr %t114, i64 %t112)
  call void @olang_textcopy(ptr %t115, ptr %t111, i64 %t112)
  %t116 = insertvalue { i64, ptr } undef, i64 %t112, 0
  %t117 = insertvalue { i64, ptr } %t116, ptr %t115, 1
  %t119 = load i64, ptr %l49
  %t120 = inttoptr i64 %t119 to ptr
  %t121 = extractvalue { i64, ptr } %t117, 0
  %t122 = extractvalue { i64, ptr } %t117, 1
  %t123 = mul i64 %t121, 1
  %t124 = call ptr @__olang_scope_alloc(ptr %t120, i64 %t123)
  call void @llvm.memcpy.p0.p0.i64(ptr %t124, ptr %t122, i64 %t123, i1 false)
  %t125 = insertvalue { i64, ptr } undef, i64 %t121, 0
  %t126 = insertvalue { i64, ptr } %t125, ptr %t124, 1
  %t127 = load ptr, ptr %l48, !tbaa !29
  %t128 = getelementptr %"compiler/load:Loader", ptr %t127, i32 0, i32 19
  %t129 = load { i64, ptr }, ptr %t128, !tbaa !27
  store { i64, ptr } %t129, ptr %l55, !tbaa !27
  %t131 = load ptr, ptr %l48, !tbaa !29
  %t132 = getelementptr %"compiler/load:Loader", ptr %t131, i32 0, i32 19
  store { i64, ptr } %t126, ptr %t132, !tbaa !27
  %t133 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aLoader_2e19
  br i1 %t133, label %bb18, label %bb19
bb18:
  %t135 = load { i64, ptr }, ptr %l55
  %t136 = extractvalue { i64, ptr } %t135, 1
  call void @__olang_region_release(ptr %t136)
  store { i64, ptr } zeroinitializer, ptr %l55
  br label %bb19
bb19:
  store %olang.scope zeroinitializer, ptr %s2
  %t137 = load ptr, ptr %l1, !tbaa !29
  %t139 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eCFlags(ptr %v1, ptr %s2, ptr %t137)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t139, ptr %l58
  br label %bb20
bb20:
  %t140 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l58
  %t141 = call ptr @__olang_scope_alloc_a(ptr %s2, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t140, ptr %t141
  store ptr %t141, ptr %l8, !tbaa !29
  store i64 0, ptr %l9, !tbaa !24
  br label %bb21
bb21:
  %t143 = load i64, ptr %l9, !tbaa !24
  store i64 %t143, ptr %l60, !tbaa !24
  %t144 = load ptr, ptr %l8, !tbaa !29
  %t146 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s2, ptr %t144)
  store i64 %t146, ptr %l62
  br label %bb22
bb22:
  %t147 = load i64, ptr %l60, !tbaa !24
  %t148 = load i64, ptr %l62, !tbaa !24
  %t149 = icmp slt i64 %t147, %t148
  %t151 = xor i1 %t149, true
  br i1 %t151, label %bb23, label %bb24
bb23:
  br label %bb31
bb24:
  br label %bb25
bb25:
  %t153 = load ptr, ptr %l8, !tbaa !29
  %t154 = load i64, ptr %l9, !tbaa !24
  %t157 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s2, ptr %s2, ptr %t153, i64 %t154)
  store { i64, ptr } %t157, ptr %l67
  br label %bb26
bb26:
  %t158 = load { i64, ptr }, ptr %l67, !tbaa !27
  store { i64, ptr } %t158, ptr %l10, !tbaa !27
  %t159 = load ptr, ptr %l7, !tbaa !29
  %t161 = getelementptr %"compiler/load:Loader", ptr %t159, i32 0, i32 20
  store ptr %t161, ptr %l69, !tbaa !29
  %t162 = ptrtoint ptr %v4 to i64
  store i64 %t162, ptr %l70, !tbaa !24
  %t163 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t163, label %bb27, label %bb28
bb27:
  %t165 = call ptr @__olang_region_make(ptr %v4)
  %t166 = ptrtoint ptr %t165 to i64
  store i64 %t166, ptr %l70, !tbaa !24
  br label %bb28
bb28:
  %t167 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t169 = extractvalue { i64, ptr } %t167, 1
  %t170 = extractvalue { i64, ptr } %t167, 0
  %t171 = load i64, ptr %l70
  %t172 = inttoptr i64 %t171 to ptr
  %t173 = call ptr @__olang_scope_alloc(ptr %t172, i64 %t170)
  call void @olang_textcopy(ptr %t173, ptr %t169, i64 %t170)
  %t174 = insertvalue { i64, ptr } undef, i64 %t170, 0
  %t175 = insertvalue { i64, ptr } %t174, ptr %t173, 1
  %t177 = load i64, ptr %l70
  %t178 = inttoptr i64 %t177 to ptr
  %t179 = extractvalue { i64, ptr } %t175, 0
  %t180 = extractvalue { i64, ptr } %t175, 1
  %t181 = mul i64 %t179, 1
  %t182 = call ptr @__olang_scope_alloc(ptr %t178, i64 %t181)
  call void @llvm.memcpy.p0.p0.i64(ptr %t182, ptr %t180, i64 %t181, i1 false)
  %t183 = insertvalue { i64, ptr } undef, i64 %t179, 0
  %t184 = insertvalue { i64, ptr } %t183, ptr %t182, 1
  %t185 = load ptr, ptr %l69, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v4, ptr %v4, ptr %t185, { i64, ptr } %t184)
  br label %bb29
bb29:
  br label %bb30
bb30:
  %t187 = load i64, ptr %l9, !tbaa !24
  %t189 = add i64 %t187, 1
  store i64 %t189, ptr %l9, !tbaa !24
  br label %bb21
bb31:
  call void @__olang_scope_close(ptr %s2)
  %t193 = call %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H233962476a3191cb30d917b30cae0288(ptr %v3, ptr %v3, ptr %a3)
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t193, ptr %l78
  br label %bb32
bb32:
  %t194 = load %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %l78
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t194, ptr %l11
  br label %bb33
bb33:
  %t196 = call { i32, %"std/prelude/map:MapEntry.c7dad01dbd7dd6cd22e9701676806c15" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapIter_3cstd_2fprelude_2ftext_3aString_26_2_H2ebf6f1d68886862a568a520c713bfce(ptr %v3, ptr %v3, ptr %l11)
  %t197 = extractvalue { i32, %"std/prelude/map:MapEntry.c7dad01dbd7dd6cd22e9701676806c15" } %t196, 1
  %t198 = extractvalue { i32, %"std/prelude/map:MapEntry.c7dad01dbd7dd6cd22e9701676806c15" } %t196, 0
  store i32 %t198, ptr %l82
  %t199 = icmp ne i32 %t198, 0
  br i1 %t199, label %bb35, label %ok.200, !prof !99
ok.200:
  store %"std/prelude/map:MapEntry.c7dad01dbd7dd6cd22e9701676806c15" %t197, ptr %l81
  br label %bb34
bb34:
  %t201 = load %"std/prelude/map:MapEntry.c7dad01dbd7dd6cd22e9701676806c15", ptr %l81
  store %"std/prelude/map:MapEntry.c7dad01dbd7dd6cd22e9701676806c15" %t201, ptr %l79
  br label %bb37
bb35:
  %t202 = load i32, ptr %l82, !tbaa !23
  %t203 = ashr i32 %t202, 16
  %t205 = icmp eq i32 %t203, 1
  store i1 %t205, ptr %l84, !tbaa !21
  br label %bb36
bb36:
  br label %bb44
bb37:
  %t206 = load %"std/prelude/map:MapEntry.c7dad01dbd7dd6cd22e9701676806c15", ptr %l79
  store %"std/prelude/map:MapEntry.c7dad01dbd7dd6cd22e9701676806c15" %t206, ptr %l12
  %t207 = load ptr, ptr %l7, !tbaa !29
  %t209 = getelementptr %"compiler/load:Loader", ptr %t207, i32 0, i32 13
  store ptr %t209, ptr %l86, !tbaa !29
  %t210 = ptrtoint ptr %v4 to i64
  store i64 %t210, ptr %l87, !tbaa !24
  %t211 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20st_Ha3f33385783b00c3f13cf90b683d8670
  br i1 %t211, label %bb38, label %bb39
bb38:
  %t213 = call ptr @__olang_region_make(ptr %v4)
  %t214 = ptrtoint ptr %t213 to i64
  store i64 %t214, ptr %l87, !tbaa !24
  br label %bb39
bb39:
  %t215 = getelementptr %"std/prelude/map:MapEntry.c7dad01dbd7dd6cd22e9701676806c15", ptr %l12, i32 0, i32 0
  %t216 = load { i64, ptr }, ptr %t215, !tbaa !27
  %t218 = extractvalue { i64, ptr } %t216, 1
  %t219 = extractvalue { i64, ptr } %t216, 0
  %t220 = load i64, ptr %l87
  %t221 = inttoptr i64 %t220 to ptr
  %t222 = call ptr @__olang_scope_alloc(ptr %t221, i64 %t219)
  call void @olang_textcopy(ptr %t222, ptr %t218, i64 %t219)
  %t223 = insertvalue { i64, ptr } undef, i64 %t219, 0
  %t224 = insertvalue { i64, ptr } %t223, ptr %t222, 1
  %t226 = load i64, ptr %l87
  %t227 = inttoptr i64 %t226 to ptr
  %t228 = extractvalue { i64, ptr } %t224, 0
  %t229 = extractvalue { i64, ptr } %t224, 1
  %t230 = mul i64 %t228, 1
  %t231 = call ptr @__olang_scope_alloc(ptr %t227, i64 %t230)
  call void @llvm.memcpy.p0.p0.i64(ptr %t231, ptr %t229, i64 %t230, i1 false)
  %t232 = insertvalue { i64, ptr } undef, i64 %t228, 0
  %t233 = insertvalue { i64, ptr } %t232, ptr %t231, 1
  store { i64, ptr } %t233, ptr %l91, !tbaa !27
  %t234 = ptrtoint ptr %v4 to i64
  store i64 %t234, ptr %l92, !tbaa !24
  %t235 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20st_Ha3f33285783aff10f13cf80b683d8c03
  br i1 %t235, label %bb40, label %bb41
bb40:
  %t237 = call ptr @__olang_region_make(ptr %v4)
  %t238 = ptrtoint ptr %t237 to i64
  store i64 %t238, ptr %l92, !tbaa !24
  br label %bb41
bb41:
  %t239 = getelementptr %"std/prelude/map:MapEntry.c7dad01dbd7dd6cd22e9701676806c15", ptr %l12, i32 0, i32 1
  %t240 = load { i64, ptr }, ptr %t239, !tbaa !27
  %t242 = extractvalue { i64, ptr } %t240, 1
  %t243 = extractvalue { i64, ptr } %t240, 0
  %t244 = load i64, ptr %l92
  %t245 = inttoptr i64 %t244 to ptr
  %t246 = call ptr @__olang_scope_alloc(ptr %t245, i64 %t243)
  call void @olang_textcopy(ptr %t246, ptr %t242, i64 %t243)
  %t247 = insertvalue { i64, ptr } undef, i64 %t243, 0
  %t248 = insertvalue { i64, ptr } %t247, ptr %t246, 1
  %t250 = load i64, ptr %l92
  %t251 = inttoptr i64 %t250 to ptr
  %t252 = extractvalue { i64, ptr } %t248, 0
  %t253 = extractvalue { i64, ptr } %t248, 1
  %t254 = mul i64 %t252, 1
  %t255 = call ptr @__olang_scope_alloc(ptr %t251, i64 %t254)
  call void @llvm.memcpy.p0.p0.i64(ptr %t255, ptr %t253, i64 %t254, i1 false)
  %t256 = insertvalue { i64, ptr } undef, i64 %t252, 0
  %t257 = insertvalue { i64, ptr } %t256, ptr %t255, 1
  %t258 = load ptr, ptr %l86, !tbaa !29
  %t259 = load { i64, ptr }, ptr %l91, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6f7a2f8d839c49b6e7a19c287d4b190c(ptr %v4, ptr %v4, ptr %v4, ptr %t258, { i64, ptr } %t259, { i64, ptr } %t257)
  br label %bb42
bb42:
  br label %bb43
bb43:
  br label %bb33
bb44:
  %t261 = call i64 @std_2ftime_2eNow()
  store i64 %t261, ptr %l97
  br label %bb45
bb45:
  %t262 = load i64, ptr %l97, !tbaa !24
  store i64 %t262, ptr %l13, !tbaa !24
  %t263 = load ptr, ptr %l7, !tbaa !29
  %t264 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t267 = call i64 @compiler_2fload_2ecompiler_2fload_3aLoader_2eLoad(ptr %v4, ptr %v0, ptr %t263, { i64, ptr } %t264)
  store i64 %t267, ptr %l100
  br label %bb46
bb46:
  %t268 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t268, ptr %l101, !tbaa !27
  %t269 = load ptr, ptr %l7, !tbaa !29
  %t271 = getelementptr %"compiler/load:Loader", ptr %t269, i32 0, i32 10
  %t273 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v4, ptr %t271)
  store i64 %t273, ptr %l104
  br label %bb47
bb47:
  %t274 = load i64, ptr %l13, !tbaa !24
  %t276 = call i64 @std_2ftime_2eSince(i64 %t274)
  store i64 %t276, ptr %l106
  br label %bb48
bb48:
  %t277 = load i64, ptr %l106, !tbaa !24
  %t278 = sdiv i64 %t277, 1000000
  %t279 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d0, i32 0, i32 1) }, 1
  %t280 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d0, i32 0, i32 1) }, 0
  %t281 = load { i64, ptr }, ptr %l101, !tbaa !27
  %t282 = extractvalue { i64, ptr } %t281, 1
  %t283 = extractvalue { i64, ptr } %t281, 0
  %t284 = add i64 %t280, %t283
  %t285 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d1, i32 0, i32 1) }, 1
  %t286 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d1, i32 0, i32 1) }, 0
  %t287 = add i64 %t284, %t286
  %t288 = load i64, ptr %l104, !tbaa !24
  %t289 = call i64 @__olang_fmt_i64(ptr null, i64 %t288)
  %t290 = add i64 %t287, %t289
  %t291 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d2, i32 0, i32 1) }, 1
  %t292 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d2, i32 0, i32 1) }, 0
  %t293 = add i64 %t290, %t292
  %t295 = call i64 @__olang_fmt_i64(ptr null, i64 %t278)
  %t296 = add i64 %t293, %t295
  %t297 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d3, i32 0, i32 1) }, 1
  %t298 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d3, i32 0, i32 1) }, 0
  %t299 = add i64 %t296, %t298
  %t300 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t299)
  call void @olang_textcopy(ptr %t300, ptr %t279, i64 %t280)
  %t301 = getelementptr i8, ptr %t300, i64 %t280
  call void @olang_textcopy(ptr %t301, ptr %t282, i64 %t283)
  %t302 = getelementptr i8, ptr %t301, i64 %t283
  call void @olang_textcopy(ptr %t302, ptr %t285, i64 %t286)
  %t303 = getelementptr i8, ptr %t302, i64 %t286
  %t304 = call i64 @__olang_fmt_i64(ptr %t303, i64 %t288)
  %t305 = getelementptr i8, ptr %t303, i64 %t289
  call void @olang_textcopy(ptr %t305, ptr %t291, i64 %t292)
  %t306 = getelementptr i8, ptr %t305, i64 %t292
  %t307 = call i64 @__olang_fmt_i64(ptr %t306, i64 %t278)
  %t308 = getelementptr i8, ptr %t306, i64 %t295
  call void @olang_textcopy(ptr %t308, ptr %t297, i64 %t298)
  %t309 = insertvalue { i64, ptr } undef, i64 %t299, 0
  %t310 = insertvalue { i64, ptr } %t309, ptr %t300, 1
  %t312 = extractvalue { i64, ptr } %t310, 0
  %t313 = extractvalue { i64, ptr } %t310, 1
  %t314 = mul i64 %t312, 1
  %t315 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t314)
  call void @llvm.memcpy.p0.p0.i64(ptr %t315, ptr %t313, i64 %t314, i1 false)
  %t316 = insertvalue { i64, ptr } undef, i64 %t312, 0
  %t317 = insertvalue { i64, ptr } %t316, ptr %t315, 1
  call void @compiler_2fsession_2eLog(ptr %s0, { i64, ptr } %t317)
  br label %bb49
bb49:
  %t319 = load ptr, ptr %l7, !tbaa !29
  %t321 = call %"compiler/session:Analysis" @compiler_2fsession_3aAnalysis_2ector(ptr %v4, ptr %v4, ptr %t319)
  store %"compiler/session:Analysis" %t321, ptr %l111
  br label %bb50
bb50:
  %t322 = load %"compiler/session:Analysis", ptr %l111
  %t323 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 32, i64 8)
  store %"compiler/session:Analysis" %t322, ptr %t323
  store ptr %t323, ptr %l14, !tbaa !29
  %t325 = load ptr, ptr %l7, !tbaa !29
  %t327 = getelementptr %"compiler/load:Loader", ptr %t325, i32 0, i32 12
  %t328 = load i64, ptr %t327, !tbaa !24
  %t330 = icmp slt i64 %t328, 0
  br i1 %t330, label %bb51, label %bb52
bb51:
  store i1 true, ptr %l116, !tbaa !21
  br label %bb54
bb52:
  %t332 = load ptr, ptr %l2, !tbaa !29
  %t334 = call i1 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eHasFatal(ptr %v2, ptr %t332)
  store i1 %t334, ptr %l118
  br label %bb53
bb53:
  %t335 = load i1, ptr %l118, !tbaa !21
  store i1 %t335, ptr %l116, !tbaa !21
  br label %bb54
bb54:
  %t336 = load i1, ptr %l116, !tbaa !21
  br i1 %t336, label %bb55, label %bb56
bb55:
  %t337 = load ptr, ptr %l14, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t337, ptr %rv
  br label %ret
bb56:
  br label %bb57
bb57:
  %t339 = load ptr, ptr %l7, !tbaa !29
  store ptr %t339, ptr %l120, !tbaa !29
  call void @compiler_2fviews_3aKept_2ector(ptr %t340, ptr %v4)
  call void @llvm.memmove.p0.p0.i64(ptr %l121, ptr %t340, i64 296, i1 false)
  br label %bb58
bb58:
  %t341 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 296, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t341, ptr %l121, i64 296, i1 false)
  %t343 = load ptr, ptr %l120, !tbaa !29
  call void @compiler_2finterp_2eAnalyze(ptr %t342, ptr %v4, ptr %v4, ptr %v4, ptr %t343, i1 true, ptr %t341)
  call void @llvm.memmove.p0.p0.i64(ptr %l123, ptr %t342, i64 5248, i1 false)
  br label %bb59
bb59:
  %t345 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 5248, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t345, ptr %l123, i64 5248, i1 false)
  store ptr %t345, ptr %l15, !tbaa !29
  %t347 = load ptr, ptr %l14, !tbaa !29
  %t348 = load ptr, ptr %l15, !tbaa !29
  %t352 = getelementptr %"compiler/session:Analysis", ptr %t347, i32 0, i32 1
  store ptr %t348, ptr %t352, !tbaa !29
  %t353 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e_2ector(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t353, ptr %l128
  br label %bb60
bb60:
  %t354 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l128
  %t355 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 72, i64 8)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t354, ptr %t355
  store ptr %t355, ptr %l16, !tbaa !29
  %t357 = load ptr, ptr %l2, !tbaa !29
  %t359 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrors(ptr %v2, ptr %t357)
  store i64 %t359, ptr %l131
  br label %bb61
bb61:
  %t360 = load i64, ptr %l131, !tbaa !24
  %t361 = icmp eq i64 %t360, 0
  store i1 %t361, ptr %l17, !tbaa !21
  %t363 = load i1, ptr %l17, !tbaa !21
  br i1 %t363, label %bb62, label %bb63
bb62:
  %t365 = load ptr, ptr %l15, !tbaa !29
  %t367 = call i64 @compiler_2finterp_2eDecideValues(ptr %v4, ptr %t365)
  store i64 %t367, ptr %l135
  br label %bb64
bb63:
  br label %bb65
bb64:
  br label %bb65
bb65:
  %t368 = load ptr, ptr %l15, !tbaa !29
  %t369 = load ptr, ptr %l16, !tbaa !29
  %t372 = call i64 @compiler_2finterp_2eDecideAsserts(ptr %v4, ptr %s0, ptr %t368, ptr %t369)
  store i64 %t372, ptr %l138
  br label %bb66
bb66:
  %t373 = load i1, ptr %l17, !tbaa !21
  br i1 %t373, label %bb67, label %bb68
bb67:
  store %olang.scope zeroinitializer, ptr %s13
  %t375 = load ptr, ptr %l15, !tbaa !29
  %t377 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @compiler_2finterp_2eBake(ptr %v4, ptr %s13, ptr %t375)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t377, ptr %l141
  br label %bb69
bb68:
  br label %bb70
bb69:
  call void @__olang_scope_close(ptr %s13)
  br label %bb70
bb70:
  %t378 = load i64, ptr %l13, !tbaa !24
  %t380 = call i64 @std_2ftime_2eSince(i64 %t378)
  store i64 %t380, ptr %l143
  br label %bb71
bb71:
  %t381 = load i64, ptr %l143, !tbaa !24
  %t382 = sdiv i64 %t381, 1000000
  %t383 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d4, i32 0, i32 1) }, 1
  %t384 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d4, i32 0, i32 1) }, 0
  %t386 = call i64 @__olang_fmt_i64(ptr null, i64 %t382)
  %t387 = add i64 %t384, %t386
  %t388 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t389 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d5, i32 0, i32 1) }, 0
  %t390 = add i64 %t387, %t389
  %t391 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t390)
  call void @olang_textcopy(ptr %t391, ptr %t383, i64 %t384)
  %t392 = getelementptr i8, ptr %t391, i64 %t384
  %t393 = call i64 @__olang_fmt_i64(ptr %t392, i64 %t382)
  %t394 = getelementptr i8, ptr %t392, i64 %t386
  call void @olang_textcopy(ptr %t394, ptr %t388, i64 %t389)
  %t395 = insertvalue { i64, ptr } undef, i64 %t390, 0
  %t396 = insertvalue { i64, ptr } %t395, ptr %t391, 1
  %t398 = extractvalue { i64, ptr } %t396, 0
  %t399 = extractvalue { i64, ptr } %t396, 1
  %t400 = mul i64 %t398, 1
  %t401 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t400)
  call void @llvm.memcpy.p0.p0.i64(ptr %t401, ptr %t399, i64 %t400, i1 false)
  %t402 = insertvalue { i64, ptr } undef, i64 %t398, 0
  %t403 = insertvalue { i64, ptr } %t402, ptr %t401, 1
  call void @compiler_2fsession_2eLog(ptr %s0, { i64, ptr } %t403)
  br label %bb72
bb72:
  br i1 %a4, label %bb73, label %bb74
bb73:
  %t407 = load ptr, ptr %l14, !tbaa !29
  %t408 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fsession_2eHold(ptr %v4, ptr %v1, ptr %t407, ptr %t408)
  br label %bb75
bb74:
  br label %bb76
bb75:
  br label %bb76
bb76:
  %t411 = load ptr, ptr %l14, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t411, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i32 @compiler_2fsession_2eCapsMode(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i1
  %l5 = alloca %"compiler/diag:Diagnostics"
  %l7 = alloca { i64, ptr }
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca i64
  %l12 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l14 = alloca ptr
  %l16 = alloca i64
  %l18 = alloca i1
  %l23 = alloca { i64, ptr }
  %l26 = alloca { i64, ptr }
  %l34 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %rv = alloca i32
  %t2 = alloca %"compiler/diag:Diagnostics", align 8
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call i1 @compiler_2fdiag_2eColorWanted()
  store i1 %t1, ptr %l4
  br label %bb1
bb1:
  %t3 = load i1, ptr %l4, !tbaa !21
  call void @compiler_2fdiag_3aDiagnostics_2ector(ptr %t2, ptr %v1, i1 %t3)
  call void @llvm.memmove.p0.p0.i64(ptr %l5, ptr %t2, i64 544, i1 false)
  br label %bb2
bb2:
  %t4 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 544, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t4, ptr %l5, i64 544, i1 false)
  store ptr %t4, ptr %l2, !tbaa !29
  store { i64, ptr } %a0, ptr %l7, !tbaa !27
  store ptr %a1, ptr %l8, !tbaa !29
  %t8 = load ptr, ptr %l2, !tbaa !29
  store ptr %t8, ptr %l9, !tbaa !29
  %t9 = ptrtoint ptr %v1 to i64
  store i64 %t9, ptr %l10, !tbaa !24
  %t10 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapIter_3cstd_2fprelude_2ftext_3aString_26_2c_20std_Hae258982e94f82c7c4916579e261fcef
  br i1 %t10, label %bb3, label %bb4
bb3:
  %t12 = call ptr @__olang_region_make(ptr %v1)
  %t13 = ptrtoint ptr %t12 to i64
  store i64 %t13, ptr %l10, !tbaa !24
  br label %bb4
bb4:
  %t14 = load i64, ptr %l10
  %t15 = inttoptr i64 %t14 to ptr
  %t16 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20std_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t15)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t16, ptr %l12
  br label %bb5
bb5:
  %t17 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l12
  %t18 = load i64, ptr %l10
  %t19 = inttoptr i64 %t18 to ptr
  %t20 = call ptr @__olang_scope_alloc_a(ptr %t19, i64 72, i64 8)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t17, ptr %t20
  %t21 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t22 = load ptr, ptr %l8, !tbaa !29
  %t23 = load ptr, ptr %l9, !tbaa !29
  %t25 = call ptr @compiler_2fsession_2eAnalysis_2eAnalyze(ptr %v0, ptr %v1, ptr %v1, ptr %v1, ptr %v1, { i64, ptr } %t21, ptr %t22, ptr %t23, ptr %t20, i1 false)
  store ptr %t25, ptr %l14
  br label %bb6
bb6:
  %t26 = load ptr, ptr %l14, !tbaa !29
  store ptr %t26, ptr %l3, !tbaa !29
  %t27 = load ptr, ptr %l2, !tbaa !29
  %t29 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrors(ptr %v1, ptr %t27)
  store i64 %t29, ptr %l16
  br label %bb7
bb7:
  %t30 = load i64, ptr %l16, !tbaa !24
  %t31 = icmp sgt i64 %t30, 0
  br i1 %t31, label %bb8, label %bb9
bb8:
  store i1 true, ptr %l18, !tbaa !21
  br label %bb10
bb9:
  %t33 = load ptr, ptr %l3, !tbaa !29
  %t35 = getelementptr %"compiler/session:Analysis", ptr %t33, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !29
  %t38 = icmp eq ptr %t36, null
  store i1 %t38, ptr %l18, !tbaa !21
  br label %bb10
bb10:
  %t40 = load i1, ptr %l18, !tbaa !21
  br i1 %t40, label %bb11, label %bb12
bb11:
  store %olang.scope zeroinitializer, ptr %s1
  %t41 = load ptr, ptr %l2, !tbaa !29
  %t43 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eRender(ptr %v1, ptr %s1, ptr %t41)
  store { i64, ptr } %t43, ptr %l23
  br label %bb13
bb12:
  br label %bb17
bb13:
  %t44 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t45 = extractvalue { i64, ptr } %t44, 0
  %t46 = extractvalue { i64, ptr } %t44, 1
  %t47 = mul i64 %t45, 1
  %t48 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t47)
  call void @llvm.memcpy.p0.p0.i64(ptr %t48, ptr %t46, i64 %t47, i1 false)
  %t49 = insertvalue { i64, ptr } undef, i64 %t45, 0
  %t50 = insertvalue { i64, ptr } %t49, ptr %t48, 1
  call void @compiler_2fsession_2esay(ptr %s1, { i64, ptr } %t50)
  br label %bb14
bb14:
  %t52 = load ptr, ptr %l2, !tbaa !29
  %t54 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eSummary(ptr %v1, ptr %s1, ptr %t52)
  store { i64, ptr } %t54, ptr %l26
  br label %bb15
bb15:
  %t55 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t56 = extractvalue { i64, ptr } %t55, 0
  %t57 = extractvalue { i64, ptr } %t55, 1
  %t58 = mul i64 %t56, 1
  %t59 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t58)
  call void @llvm.memcpy.p0.p0.i64(ptr %t59, ptr %t57, i64 %t58, i1 false)
  %t60 = insertvalue { i64, ptr } undef, i64 %t56, 0
  %t61 = insertvalue { i64, ptr } %t60, ptr %t59, 1
  call void @compiler_2fsession_2esay(ptr %s1, { i64, ptr } %t61)
  br label %bb16
bb16:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  store i32 1, ptr %rv
  br label %ret
bb17:
  %t64 = load ptr, ptr %l3, !tbaa !29
  %t66 = getelementptr %"compiler/session:Analysis", ptr %t64, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !29
  %t69 = icmp eq ptr %t67, null
  br i1 %t69, label %bb18, label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_955cfaf9738e6bc2_e48fc09138963b26)
  unreachable
bb19:
  br label %bb20
bb20:
  %t71 = load ptr, ptr %l3, !tbaa !29
  %t73 = getelementptr %"compiler/session:Analysis", ptr %t71, i32 0, i32 1
  %t74 = load ptr, ptr %t73, !tbaa !29
  %t76 = call { i64, ptr } @compiler_2fexplain_2eCaps(ptr %v1, ptr %s0, ptr %t74)
  store { i64, ptr } %t76, ptr %l34
  br label %bb21
bb21:
  %t77 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t78 = extractvalue { i64, ptr } %t77, 0
  %t79 = extractvalue { i64, ptr } %t77, 1
  %t80 = mul i64 %t78, 1
  %t81 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t80)
  call void @llvm.memcpy.p0.p0.i64(ptr %t81, ptr %t79, i64 %t80, i1 false)
  %t82 = insertvalue { i64, ptr } undef, i64 %t78, 0
  %t83 = insertvalue { i64, ptr } %t82, ptr %t81, 1
  call void @compiler_2fsession_2esay(ptr %s0, { i64, ptr } %t83)
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2fsession_2eCloseFd(i32 %a0) #0 {
entry:
  %l0 = alloca i32
  %l4 = alloca i32
  store i32 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l0, !tbaa !23
  %t3 = icmp sge i32 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load i32, ptr %l0, !tbaa !23
  %t7 = call i32 @close(i32 %t5)
  store i32 %t7, ptr %l4
  br label %bb3
bb2:
  br label %bb4
bb3:
  br label %bb4
bb4:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fsession_2eExit(i32 %a0) #0 {
entry:
  br label %start
start:
  br label %bb0
bb0:
  call void @_exit(i32 %a0)
  unreachable
bb1:
  call void @__olang_check_failed(ptr @olang_loc_eb449e3906b36447_37ec3fcb8d3ba1cb)
  unreachable
ret:
  ret void
}

define dso_local i32 @compiler_2fsession_2eExitStatus(i32 %a0) #0 {
entry:
  %l0 = alloca i32
  %l1 = alloca i32
  %l6 = alloca i32
  %rv = alloca i32
  store i32 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l0, !tbaa !23
  %t3 = and i32 %t1, 127
  store i32 %t3, ptr %l1, !tbaa !23
  %t5 = load i32, ptr %l1, !tbaa !23
  %t7 = icmp eq i32 %t5, 0
  br i1 %t7, label %bb1, label %bb2
bb1:
  %t9 = load i32, ptr %l0, !tbaa !23
  %t11 = ashr i32 %t9, 8
  %t13 = and i32 %t11, 255
  store i32 %t13, ptr %l6, !tbaa !23
  br label %bb3
bb2:
  %t15 = load i32, ptr %l1, !tbaa !23
  %t17 = add i32 128, %t15
  store i32 %t17, ptr %l6, !tbaa !23
  br label %bb3
bb3:
  %t19 = load i32, ptr %l6, !tbaa !23
  store i32 %t19, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2fsession_2eFork() #0 {
entry:
  %l0 = alloca i32
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call i32 @fork()
  store i32 %t1, ptr %l0
  br label %bb1
bb1:
  %t2 = load i32, ptr %l0, !tbaa !23
  store i32 %t2, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2fsession_2eIgnoreBrokenPipes() #0 {
entry:
  %l0 = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call i64 @signal(i32 13, i64 1)
  store i64 %t1, ptr %l0
  br label %bb1
bb1:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fsession_2eLog(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca i32
  %l6 = alloca i1
  %l10 = alloca i32
  %l12 = alloca i1
  %s0 = alloca %olang.scope
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call { i32, { i64, ptr } } @std_2fos_2eEnv(ptr %s0, ptr %s0, { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d6, i32 0, i32 1) })
  %t2 = extractvalue { i32, { i64, ptr } } %t1, 1
  %t3 = extractvalue { i32, { i64, ptr } } %t1, 0
  store i32 %t3, ptr %l3
  %t4 = icmp ne i32 %t3, 0
  br i1 %t4, label %bb2, label %ok.5, !prof !99
ok.5:
  store { i64, ptr } %t2, ptr %l2
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t6, ptr %l1, !tbaa !27
  br label %bb6
bb2:
  %t7 = load i32, ptr %l3, !tbaa !23
  %t8 = ashr i32 %t7, 16
  %t10 = icmp eq i32 %t8, 1
  br i1 %t10, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d7, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb6
bb6:
  %t12 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t13 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t12, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d8, i32 0, i32 1) })
  store i1 %t13, ptr %l6
  br label %bb7
bb7:
  %t14 = load i1, ptr %l6, !tbaa !21
  br i1 %t14, label %bb8, label %bb9
bb8:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb9:
  br label %bb10
bb10:
  %t16 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d9, i32 0, i32 1) }, 1
  %t17 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d9, i32 0, i32 1) }, 0
  %t19 = extractvalue { i64, ptr } %a0, 1
  %t20 = extractvalue { i64, ptr } %a0, 0
  %t21 = add i64 %t17, %t20
  %t22 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d10, i32 0, i32 1) }, 1
  %t23 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d10, i32 0, i32 1) }, 0
  %t24 = add i64 %t21, %t23
  %t25 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t24)
  call void @olang_textcopy(ptr %t25, ptr %t16, i64 %t17)
  %t26 = getelementptr i8, ptr %t25, i64 %t17
  call void @olang_textcopy(ptr %t26, ptr %t19, i64 %t20)
  %t27 = getelementptr i8, ptr %t26, i64 %t20
  call void @olang_textcopy(ptr %t27, ptr %t22, i64 %t23)
  %t28 = insertvalue { i64, ptr } undef, i64 %t24, 0
  %t29 = insertvalue { i64, ptr } %t28, ptr %t25, 1
  %t31 = extractvalue { i64, ptr } %t29, 0
  %t32 = extractvalue { i64, ptr } %t29, 1
  %t33 = mul i64 %t31, 1
  %t34 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t33)
  call void @llvm.memcpy.p0.p0.i64(ptr %t34, ptr %t32, i64 %t33, i1 false)
  %t35 = insertvalue { i64, ptr } undef, i64 %t31, 0
  %t36 = insertvalue { i64, ptr } %t35, ptr %t34, 1
  %t38 = call i32 @std_2fio_2ePrintErr(ptr %s0, { i64, ptr } %t36)
  store i32 %t38, ptr %l10
  %t39 = icmp ne i32 %t38, 0
  br i1 %t39, label %bb12, label %ok.40, !prof !99
ok.40:
  br label %bb11
bb11:
  br label %bb16
bb12:
  %t41 = load i32, ptr %l10, !tbaa !23
  %t42 = ashr i32 %t41, 16
  %t44 = icmp eq i32 %t42, 1
  store i1 %t44, ptr %l12, !tbaa !21
  %t45 = load i32, ptr %l10, !tbaa !23
  %t46 = ashr i32 %t45, 16
  %t48 = icmp eq i32 %t46, 1
  br i1 %t48, label %bb13, label %bb14
bb13:
  call void @__olang_errpay_pop()
  br label %bb14
bb14:
  br label %bb15
bb15:
  br label %bb16
bb16:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i32, i32 } @compiler_2fsession_2ePipe() #0 {
entry:
  %l0 = alloca [2 x i32]
  %l4 = alloca i32
  %rv = alloca { i32, i32 }
  br label %start
start:
  br label %bb0
bb0:
  %t1 = insertvalue [2 x i32] undef, i32 0, 0
  %t2 = insertvalue [2 x i32] %t1, i32 0, 1
  store [2 x i32] %t2, ptr %l0
  %t5 = insertvalue { i64, ptr } undef, i64 2, 0
  %t6 = insertvalue { i64, ptr } %t5, ptr %l0, 1
  %t8 = extractvalue { i64, ptr } %t6, 1
  %t9 = extractvalue { i64, ptr } %t6, 0
  %t10 = call i32 @pipe(ptr %t8)
  store i32 %t10, ptr %l4
  br label %bb1
bb1:
  %t11 = load i32, ptr %l4, !tbaa !23
  %t12 = icmp ne i32 %t11, 0
  br i1 %t12, label %bb2, label %bb3
bb2:
  %t14 = insertvalue { i32, i32 } undef, i32 -1, 0
  %t15 = insertvalue { i32, i32 } %t14, i32 -1, 1
  store { i32, i32 } %t15, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t17 = getelementptr [2 x i32], ptr %l0, i64 0, i64 0
  %t18 = load i32, ptr %t17, !tbaa !33
  %t19 = getelementptr [2 x i32], ptr %l0, i64 0, i64 1
  %t20 = load i32, ptr %t19, !tbaa !33
  %t22 = insertvalue { i32, i32 } undef, i32 %t18, 0
  %t24 = insertvalue { i32, i32 } %t22, i32 %t20, 1
  store { i32, i32 } %t24, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i32 }, ptr %rv
  ret { i32, i32 } %rr
}

define dso_local { i64, ptr } @compiler_2fsession_2eReadable(ptr %v0, ptr %v1, { i64, ptr } %a0, i32 %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %lp10 = alloca ptr
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l19 = alloca i64
  %l20 = alloca %"<poll.h>:pollfd"
  %l22 = alloca %"<poll.h>:pollfd"
  %l30 = alloca i64
  %l33 = alloca i64
  %l52 = alloca { i64, ptr }
  %l60 = alloca i64
  %l67 = alloca i32
  %l74 = alloca i64
  %l77 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  %t21 = alloca i64
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  store i64 %t3, ptr %l2, !tbaa !24
  %t5 = load i64, ptr %l2, !tbaa !24
  store i64 %t5, ptr %l19, !tbaa !24
  store %"<poll.h>:pollfd" zeroinitializer, ptr %l20
  %t6 = load i64, ptr %l19, !tbaa !24
  %t7 = icmp sgt i64 %t6, 0
  br i1 %t7, label %bb1, label %bb2
bb1:
  %t9 = call %"<poll.h>:pollfd" @olang_2emir_2eHelperKind_2eZero_2e_3cpoll_2eh_3e_3apollfd()
  store %"<poll.h>:pollfd" %t9, ptr %l22
  br label %bb3
bb2:
  %t10 = load i64, ptr %l19, !tbaa !24
  %t11 = icmp sge i64 %t10, 0
  br i1 %t11, label %bb4, label %bb5
bb3:
  %t13 = load %"<poll.h>:pollfd", ptr %l22
  store %"<poll.h>:pollfd" %t13, ptr %l20
  br label %bb2
bb4:
  %t14 = load i64, ptr %l19, !tbaa !24
  %t15 = icmp sle i64 %t14, 1152921504606846975
  br i1 %t15, label %bb6, label %bb7
bb5:
  call void @__olang_check_failed(ptr @olang_loc_6afc88ea1ac145e8_494a63ded86193f4)
  unreachable
bb6:
  %t17 = load i64, ptr %l19, !tbaa !24
  %t18 = mul i64 %t17, 8
  %t19 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t18)
  %t20 = load %"<poll.h>:pollfd", ptr %l20
  store i64 0, ptr %t21
  br label %fill.22
fill.22:
  %t25 = load i64, ptr %t21
  %t26 = icmp slt i64 %t25, %t17
  br i1 %t26, label %fillb.23, label %filld.24
fillb.23:
  %t27 = getelementptr %"<poll.h>:pollfd", ptr %t19, i64 %t25
  store %"<poll.h>:pollfd" %t20, ptr %t27
  %t28 = add i64 %t25, 1
  store i64 %t28, ptr %t21
  br label %fill.22
filld.24:
  %t29 = insertvalue { i64, ptr } undef, i64 %t17, 0
  %t30 = insertvalue { i64, ptr } %t29, ptr %t19, 1
  store { i64, ptr } %t30, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t32 = load i64, ptr %l2, !tbaa !24
  store i64 %t32, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t34 = load i64, ptr %l5, !tbaa !24
  %t35 = load i64, ptr %l4, !tbaa !24
  %t38 = icmp sgt i64 %t34, %t35
  br i1 %t38, label %bb8, label %bb9
bb7:
  call void @__olang_check_failed(ptr @olang_loc_6afc88ea1ac145e8_494a63ded86193f4)
  unreachable
bb8:
  %t40 = load i64, ptr %l6, !tbaa !24
  %t42 = icmp sgt i64 %t40, 0
  br i1 %t42, label %bb10, label %bb11
bb9:
  store i64 0, ptr %l30, !tbaa !24
  br label %bb13
bb10:
  %t44 = load i64, ptr %l5, !tbaa !24
  %t45 = load i64, ptr %l4, !tbaa !24
  %t48 = sub i64 %t44, %t45
  %t49 = load i64, ptr %l6, !tbaa !24
  %t52 = add i64 %t48, %t49
  %t54 = sub i64 %t52, 1
  %t55 = load i64, ptr %l6, !tbaa !24
  %t58 = sdiv i64 %t54, %t55
  store i64 %t58, ptr %l33, !tbaa !24
  br label %bb12
bb11:
  store i64 0, ptr %l33, !tbaa !24
  br label %bb12
bb12:
  %t60 = load i64, ptr %l33, !tbaa !24
  store i64 %t60, ptr %l30, !tbaa !24
  br label %bb13
bb13:
  %t61 = load i64, ptr %l30, !tbaa !24
  store i64 %t61, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb14
bb14:
  %t62 = load i64, ptr %l8, !tbaa !24
  %t63 = load i64, ptr %l7, !tbaa !24
  %t66 = icmp slt i64 %t62, %t63
  %t68 = xor i1 %t66, true
  br i1 %t68, label %bb15, label %bb16
bb15:
  br label %bb19
bb16:
  br label %bb17
bb17:
  %t70 = load i64, ptr %l4, !tbaa !24
  %t71 = load i64, ptr %l8, !tbaa !24
  %t72 = load i64, ptr %l6, !tbaa !24
  %t75 = mul i64 %t71, %t72
  %t78 = add i64 %t70, %t75
  store i64 %t78, ptr %l9, !tbaa !24
  %t80 = load i64, ptr %l9, !tbaa !24
  %t81 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t81, ptr %l52, !tbaa !27
  %t82 = load i64, ptr %l9, !tbaa !24
  %t84 = getelementptr { i64, ptr }, ptr %l52, i32 0, i32 1
  %t85 = load ptr, ptr %t84, !tbaa !27
  %t86 = getelementptr i32, ptr %t85, i64 %t82
  %t87 = load i32, ptr %t86, !tbaa !33
  %t90 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t91 = load ptr, ptr %t90, !tbaa !27
  %t92 = getelementptr %"<poll.h>:pollfd", ptr %t91, i64 %t80
  %t93 = getelementptr %"<poll.h>:pollfd", ptr %t92, i32 0, i32 0
  store i32 %t87, ptr %t93, !tbaa !23
  %t94 = load i64, ptr %l9, !tbaa !24
  %t95 = load i32, ptr @G_2e_3cpoll_2eh_3e_2ePOLLIN, !tbaa !23
  %t97 = trunc i32 %t95 to i16
  %t100 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t101 = load ptr, ptr %t100, !tbaa !27
  %t102 = getelementptr %"<poll.h>:pollfd", ptr %t101, i64 %t94
  %t103 = getelementptr %"<poll.h>:pollfd", ptr %t102, i32 0, i32 1
  store i16 %t97, ptr %t103, !tbaa !62
  br label %bb18
bb18:
  %t104 = load i64, ptr %l8, !tbaa !24
  %t106 = add i64 %t104, 1
  store i64 %t106, ptr %l8, !tbaa !24
  br label %bb14
bb19:
  %t108 = load i64, ptr %l2, !tbaa !24
  store i64 %t108, ptr %l60, !tbaa !24
  %t109 = load i64, ptr %l60, !tbaa !24
  %t110 = icmp sge i64 %t109, 0
  br i1 %t110, label %bb20, label %bb21
bb20:
  %t112 = load i64, ptr %l60, !tbaa !24
  %t113 = mul i64 %t112, 1
  %t114 = call ptr @__olang_scope_alloc_zeroed(ptr %v1, i64 %t113)
  %t115 = insertvalue { i64, ptr } undef, i64 %t112, 0
  %t116 = insertvalue { i64, ptr } %t115, ptr %t114, 1
  %t117 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t117, ptr %lp10
  %t119 = load ptr, ptr %lp10
  store { i64, ptr } %t116, ptr %t119, !tbaa !27
  %t120 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t121 = load i64, ptr %l2, !tbaa !24
  %t125 = extractvalue { i64, ptr } %t120, 1
  %t126 = extractvalue { i64, ptr } %t120, 0
  %t129 = call i32 @poll(ptr %t125, i64 %t121, i32 %a1)
  store i32 %t129, ptr %l67
  br label %bb22
bb21:
  call void @__olang_check_failed(ptr @olang_loc_cd9998fc5b6bf5d5_fa43d55bb2deeb01)
  unreachable
bb22:
  %t130 = load i32, ptr %l67, !tbaa !23
  %t131 = icmp sle i32 %t130, 0
  br i1 %t131, label %bb23, label %bb24
bb23:
  %t133 = load ptr, ptr %lp10
  %t134 = load { i64, ptr }, ptr %t133, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t134, ptr %rv
  br label %ret
bb24:
  br label %bb25
bb25:
  store i64 0, ptr %l11, !tbaa !24
  %t136 = load i64, ptr %l2, !tbaa !24
  store i64 %t136, ptr %l12, !tbaa !24
  store i64 1, ptr %l13, !tbaa !24
  %t138 = load i64, ptr %l12, !tbaa !24
  %t139 = load i64, ptr %l11, !tbaa !24
  %t142 = icmp sgt i64 %t138, %t139
  br i1 %t142, label %bb26, label %bb27
bb26:
  %t144 = load i64, ptr %l13, !tbaa !24
  %t146 = icmp sgt i64 %t144, 0
  br i1 %t146, label %bb28, label %bb29
bb27:
  store i64 0, ptr %l74, !tbaa !24
  br label %bb31
bb28:
  %t148 = load i64, ptr %l12, !tbaa !24
  %t149 = load i64, ptr %l11, !tbaa !24
  %t152 = sub i64 %t148, %t149
  %t153 = load i64, ptr %l13, !tbaa !24
  %t156 = add i64 %t152, %t153
  %t158 = sub i64 %t156, 1
  %t159 = load i64, ptr %l13, !tbaa !24
  %t162 = sdiv i64 %t158, %t159
  store i64 %t162, ptr %l77, !tbaa !24
  br label %bb30
bb29:
  store i64 0, ptr %l77, !tbaa !24
  br label %bb30
bb30:
  %t164 = load i64, ptr %l77, !tbaa !24
  store i64 %t164, ptr %l74, !tbaa !24
  br label %bb31
bb31:
  %t165 = load i64, ptr %l74, !tbaa !24
  store i64 %t165, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  br label %bb32
bb32:
  %t166 = load i64, ptr %l15, !tbaa !24
  %t167 = load i64, ptr %l14, !tbaa !24
  %t170 = icmp slt i64 %t166, %t167
  %t172 = xor i1 %t170, true
  br i1 %t172, label %bb33, label %bb34
bb33:
  br label %bb37
bb34:
  br label %bb35
bb35:
  %t174 = load i64, ptr %l11, !tbaa !24
  %t175 = load i64, ptr %l15, !tbaa !24
  %t176 = load i64, ptr %l13, !tbaa !24
  %t179 = mul i64 %t175, %t176
  %t182 = add i64 %t174, %t179
  store i64 %t182, ptr %l16, !tbaa !24
  %t184 = load i64, ptr %l16, !tbaa !24
  %t185 = load i64, ptr %l16, !tbaa !24
  %t187 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t188 = load ptr, ptr %t187, !tbaa !27
  %t189 = getelementptr %"<poll.h>:pollfd", ptr %t188, i64 %t185
  %t190 = getelementptr %"<poll.h>:pollfd", ptr %t189, i32 0, i32 2
  %t191 = load i16, ptr %t190, !tbaa !62
  %t192 = load i32, ptr @G_2e_3cpoll_2eh_3e_2ePOLLIN, !tbaa !23
  %t193 = load i32, ptr @G_2e_3cpoll_2eh_3e_2ePOLLERR, !tbaa !23
  %t196 = or i32 %t192, %t193
  %t197 = load i32, ptr @G_2e_3cpoll_2eh_3e_2ePOLLHUP, !tbaa !23
  %t200 = or i32 %t196, %t197
  %t202 = trunc i32 %t200 to i16
  %t205 = and i16 %t191, %t202
  %t207 = icmp ne i16 %t205, 0
  %t209 = load ptr, ptr %lp10
  %t211 = getelementptr { i64, ptr }, ptr %t209, i32 0, i32 1
  %t212 = load ptr, ptr %t211, !tbaa !27
  %t213 = getelementptr i1, ptr %t212, i64 %t184
  store i1 %t207, ptr %t213, !tbaa !31
  br label %bb36
bb36:
  %t214 = load i64, ptr %l15, !tbaa !24
  %t216 = add i64 %t214, 1
  store i64 %t216, ptr %l15, !tbaa !24
  br label %bb32
bb37:
  %t218 = load ptr, ptr %lp10
  %t219 = load { i64, ptr }, ptr %t218, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t219, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i32 @compiler_2fsession_2eReap(i32 %a0) #0 {
entry:
  %l1 = alloca [1 x i32]
  %l6 = alloca i32
  %l10 = alloca i32
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  %t1 = insertvalue [1 x i32] undef, i32 0, 0
  store [1 x i32] %t1, ptr %l1
  %t5 = insertvalue { i64, ptr } undef, i64 1, 0
  %t6 = insertvalue { i64, ptr } %t5, ptr %l1, 1
  %t9 = extractvalue { i64, ptr } %t6, 1
  %t10 = extractvalue { i64, ptr } %t6, 0
  %t11 = call i32 @waitpid(i32 %a0, ptr %t9, i32 0)
  store i32 %t11, ptr %l6
  br label %bb1
bb1:
  %t12 = load i32, ptr %l6, !tbaa !23
  %t13 = icmp slt i32 %t12, 0
  br i1 %t13, label %bb2, label %bb3
bb2:
  store i32 -1, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t16 = getelementptr [1 x i32], ptr %l1, i64 0, i64 0
  %t17 = load i32, ptr %t16, !tbaa !33
  %t19 = call i32 @compiler_2fsession_2eExitStatus(i32 %t17)
  store i32 %t19, ptr %l10
  br label %bb5
bb5:
  %t20 = load i32, ptr %l10, !tbaa !23
  store i32 %t20, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2fsession_2eWordChar(i8 %a0) #0 {
entry:
  %l0 = alloca i8
  %l2 = alloca i1
  %l3 = alloca i1
  %l5 = alloca i1
  %l6 = alloca i1
  %l9 = alloca i1
  %rv = alloca i1
  store i8 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i8, ptr %l0, !tbaa !22
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %t1)
  store i1 %t3, ptr %l2
  br label %bb1
bb1:
  %t4 = load i1, ptr %l2, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l3, !tbaa !21
  br label %bb5
bb3:
  %t5 = load i8, ptr %l0, !tbaa !22
  %t7 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t5)
  store i1 %t7, ptr %l5
  br label %bb4
bb4:
  %t8 = load i1, ptr %l5, !tbaa !21
  store i1 %t8, ptr %l3, !tbaa !21
  br label %bb5
bb5:
  %t9 = load i1, ptr %l3, !tbaa !21
  br i1 %t9, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb8
bb7:
  %t10 = load i8, ptr %l0, !tbaa !22
  %t12 = icmp eq i8 %t10, 95
  store i1 %t12, ptr %l6, !tbaa !21
  br label %bb8
bb8:
  %t14 = load i1, ptr %l6, !tbaa !21
  br i1 %t14, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb11
bb10:
  %t15 = load i8, ptr %l0, !tbaa !22
  %t18 = icmp uge i8 %t15, -128
  store i1 %t18, ptr %l9, !tbaa !21
  br label %bb11
bb11:
  %t20 = load i1, ptr %l9, !tbaa !21
  store i1 %t20, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fsession_2eWriteFramed(ptr %v0, i32 %a0, { i64, ptr } %a1) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l9 = alloca i32
  %l11 = alloca i1
  %s0 = alloca %olang.scope
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t2 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t4 = extractvalue { i64, ptr } %t2, 0
  %t5 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t6 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d11, i32 0, i32 1) }, 1
  %t7 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d11, i32 0, i32 1) }, 0
  %t9 = call i64 @__olang_fmt_i64(ptr null, i64 %t4)
  %t10 = add i64 %t7, %t9
  %t11 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d12, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d12, i32 0, i32 1) }, 0
  %t13 = add i64 %t10, %t12
  %t15 = extractvalue { i64, ptr } %t5, 1
  %t16 = extractvalue { i64, ptr } %t5, 0
  %t17 = add i64 %t13, %t16
  %t18 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t17)
  call void @olang_textcopy(ptr %t18, ptr %t6, i64 %t7)
  %t19 = getelementptr i8, ptr %t18, i64 %t7
  %t20 = call i64 @__olang_fmt_i64(ptr %t19, i64 %t4)
  %t21 = getelementptr i8, ptr %t19, i64 %t9
  call void @olang_textcopy(ptr %t21, ptr %t11, i64 %t12)
  %t22 = getelementptr i8, ptr %t21, i64 %t12
  call void @olang_textcopy(ptr %t22, ptr %t15, i64 %t16)
  %t23 = insertvalue { i64, ptr } undef, i64 %t17, 0
  %t24 = insertvalue { i64, ptr } %t23, ptr %t18, 1
  %t27 = extractvalue { i64, ptr } %t24, 0
  %t28 = extractvalue { i64, ptr } %t24, 1
  %t29 = mul i64 %t27, 1
  %t30 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t29)
  call void @llvm.memcpy.p0.p0.i64(ptr %t30, ptr %t28, i64 %t29, i1 false)
  %t31 = insertvalue { i64, ptr } undef, i64 %t27, 0
  %t32 = insertvalue { i64, ptr } %t31, ptr %t30, 1
  %t35 = call i32 @std_2fio_2eWrite(ptr %s0, i32 %a0, { i64, ptr } %t32)
  store i32 %t35, ptr %l9
  %t36 = icmp ne i32 %t35, 0
  br i1 %t36, label %bb2, label %ok.37, !prof !99
ok.37:
  br label %bb1
bb1:
  br label %bb6
bb2:
  %t38 = load i32, ptr %l9, !tbaa !23
  %t39 = ashr i32 %t38, 16
  %t41 = icmp eq i32 %t39, 1
  store i1 %t41, ptr %l11, !tbaa !21
  %t42 = load i32, ptr %l9, !tbaa !23
  %t43 = ashr i32 %t42, 16
  %t45 = icmp eq i32 %t43, 1
  br i1 %t45, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2eDeprecatedUses(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %lp2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca ptr
  %l12 = alloca i64
  %l14 = alloca { i64, ptr }
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l23 = alloca { { i64, ptr }, i64, i64 }
  %lp24 = alloca ptr
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l30 = alloca i64
  %l33 = alloca i1
  %l38 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l42 = alloca i64
  %l46 = alloca i64
  %l49 = alloca i64
  %l71 = alloca ptr
  %l77 = alloca { i64, ptr }
  %l78 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l80 = alloca i64
  %l82 = alloca i64
  %l87 = alloca { i64, ptr }
  %l95 = alloca i64
  %l100 = alloca { i64, ptr }
  %l108 = alloca i64
  %l109 = alloca { i64, ptr }
  %l110 = alloca i64
  %l111 = alloca i64
  %l112 = alloca i64
  %l117 = alloca i64
  %l120 = alloca i64
  %l130 = alloca { i64, ptr }
  %l133 = alloca i1
  %l141 = alloca i1
  %l142 = alloca { i64, ptr }
  %l145 = alloca i1
  %l149 = alloca { i64, ptr }
  %l150 = alloca i64
  %l151 = alloca i64
  %l152 = alloca i64
  %l160 = alloca i1
  %l162 = alloca ptr
  %l163 = alloca i64
  %l168 = alloca %"compiler/source:Span"
  %l169 = alloca { i64, [6 x i64] }
  %l172 = alloca { { i64, ptr }, i64, i64 }
  %l173 = alloca { i64, ptr }
  %l174 = alloca i64
  %l175 = alloca { i64, ptr }
  %l179 = alloca i1
  %l181 = alloca i1
  %l185 = alloca i1
  %l188 = alloca i64
  %l191 = alloca i64
  %l194 = alloca ptr
  %l198 = alloca %"compiler/session:Use"
  %s0 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsession_3aUse_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l27
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store ptr %t2, ptr %lp2
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l27
  %t4 = load ptr, ptr %lp2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t9 = call i64 @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2eModuleOf(ptr %v0, ptr %v1, ptr %t5, { i64, ptr } %a1)
  store i64 %t9, ptr %l30
  br label %bb2
bb2:
  %t10 = load i64, ptr %l30, !tbaa !24
  store i64 %t10, ptr %l3, !tbaa !24
  %t11 = load i64, ptr %l3, !tbaa !24
  %t13 = icmp slt i64 %t11, 0
  br i1 %t13, label %bb3, label %bb4
bb3:
  store i1 true, ptr %l33, !tbaa !21
  br label %bb5
bb4:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/session:Analysis", ptr %t15, i32 0, i32 1
  %t18 = load ptr, ptr %t17, !tbaa !29
  %t20 = icmp eq ptr %t18, null
  store i1 %t20, ptr %l33, !tbaa !21
  br label %bb5
bb5:
  %t22 = load i1, ptr %l33, !tbaa !21
  br i1 %t22, label %bb6, label %bb7
bb6:
  %t23 = load ptr, ptr %lp2
  %t24 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t23
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t24, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t26 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t26, ptr %l38
  br label %bb9
bb9:
  %t27 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l38
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t27, ptr %l4
  store i64 0, ptr %l5, !tbaa !24
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/session:Analysis", ptr %t28, i32 0, i32 0
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t33 = getelementptr %"compiler/load:Loader", ptr %t31, i32 0, i32 10
  %t35 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t33)
  store i64 %t35, ptr %l42
  br label %bb10
bb10:
  %t36 = load i64, ptr %l42, !tbaa !24
  store i64 %t36, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t37 = load i64, ptr %l6, !tbaa !24
  %t38 = load i64, ptr %l5, !tbaa !24
  %t41 = icmp sgt i64 %t37, %t38
  br i1 %t41, label %bb11, label %bb12
bb11:
  %t43 = load i64, ptr %l7, !tbaa !24
  %t45 = icmp sgt i64 %t43, 0
  br i1 %t45, label %bb13, label %bb14
bb12:
  store i64 0, ptr %l46, !tbaa !24
  br label %bb16
bb13:
  %t47 = load i64, ptr %l6, !tbaa !24
  %t48 = load i64, ptr %l5, !tbaa !24
  %t51 = sub i64 %t47, %t48
  %t52 = load i64, ptr %l7, !tbaa !24
  %t55 = add i64 %t51, %t52
  %t57 = sub i64 %t55, 1
  %t58 = load i64, ptr %l7, !tbaa !24
  %t61 = sdiv i64 %t57, %t58
  store i64 %t61, ptr %l49, !tbaa !24
  br label %bb15
bb14:
  store i64 0, ptr %l49, !tbaa !24
  br label %bb15
bb15:
  %t63 = load i64, ptr %l49, !tbaa !24
  store i64 %t63, ptr %l46, !tbaa !24
  br label %bb16
bb16:
  %t64 = load i64, ptr %l46, !tbaa !24
  store i64 %t64, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb17
bb17:
  %t65 = load i64, ptr %l9, !tbaa !24
  %t66 = load i64, ptr %l8, !tbaa !24
  %t69 = icmp slt i64 %t65, %t66
  %t71 = xor i1 %t69, true
  br i1 %t71, label %bb18, label %bb19
bb18:
  br label %bb37
bb19:
  br label %bb20
bb20:
  %t73 = load i64, ptr %l5, !tbaa !24
  %t74 = load i64, ptr %l9, !tbaa !24
  %t75 = load i64, ptr %l7, !tbaa !24
  %t78 = mul i64 %t74, %t75
  %t81 = add i64 %t73, %t78
  store i64 %t81, ptr %l10, !tbaa !24
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr %"compiler/session:Analysis", ptr %t83, i32 0, i32 0
  %t86 = load ptr, ptr %t85, !tbaa !29
  %t88 = getelementptr %"compiler/load:Loader", ptr %t86, i32 0, i32 10
  %t89 = load i64, ptr %l10, !tbaa !24
  %t92 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t88, i64 %t89)
  store ptr %t92, ptr %l71
  br label %bb21
bb21:
  %t93 = load ptr, ptr %l71, !tbaa !29
  %t95 = getelementptr %"compiler/load:Module", ptr %t93, i32 0, i32 6
  %t96 = load ptr, ptr %t95, !tbaa !29
  %t98 = icmp eq ptr %t96, null
  br i1 %t98, label %bb22, label %bb23
bb22:
  br label %bb36
bb23:
  br label %bb24
bb24:
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t101 = load i64, ptr %l10, !tbaa !24
  %t104 = call { i64, ptr } @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2eTextOf(ptr %v0, ptr %v0, ptr %t100, i64 %t101)
  store { i64, ptr } %t104, ptr %l77
  br label %bb25
bb25:
  %t105 = load { i64, ptr }, ptr %l77, !tbaa !27
  %t106 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fdoc_2eDeprecatedNames(ptr %v0, ptr %s0, { i64, ptr } %t105)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t106, ptr %l78
  br label %bb26
bb26:
  %t107 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l78
  %t108 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t107, ptr %t108
  store ptr %t108, ptr %l11, !tbaa !29
  store i64 0, ptr %l12, !tbaa !24
  br label %bb27
bb27:
  %t110 = load i64, ptr %l12, !tbaa !24
  store i64 %t110, ptr %l80, !tbaa !24
  %t111 = load ptr, ptr %l11, !tbaa !29
  %t113 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %t111)
  store i64 %t113, ptr %l82
  br label %bb28
bb28:
  %t114 = load i64, ptr %l80, !tbaa !24
  %t115 = load i64, ptr %l82, !tbaa !24
  %t116 = icmp slt i64 %t114, %t115
  %t118 = xor i1 %t116, true
  br i1 %t118, label %bb29, label %bb30
bb29:
  br label %bb35
bb30:
  br label %bb31
bb31:
  %t120 = load ptr, ptr %l11, !tbaa !29
  %t121 = load i64, ptr %l12, !tbaa !24
  %t124 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %t120, i64 %t121)
  store { i64, ptr } %t124, ptr %l87
  br label %bb32
bb32:
  %t125 = load { i64, ptr }, ptr %l87, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l4, { i64, ptr } %t125)
  br label %bb33
bb33:
  br label %bb34
bb34:
  %t129 = load i64, ptr %l12, !tbaa !24
  %t131 = add i64 %t129, 1
  store i64 %t131, ptr %l12, !tbaa !24
  br label %bb27
bb35:
  br label %bb36
bb36:
  %t133 = load i64, ptr %l9, !tbaa !24
  %t135 = add i64 %t133, 1
  store i64 %t135, ptr %l9, !tbaa !24
  br label %bb17
bb37:
  %t138 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %l4)
  store i64 %t138, ptr %l95
  br label %bb38
bb38:
  %t139 = load i64, ptr %l95, !tbaa !24
  %t140 = icmp eq i64 %t139, 0
  br i1 %t140, label %bb39, label %bb40
bb39:
  %t142 = load ptr, ptr %lp2
  %t143 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t142
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t143, ptr %rv
  br label %ret
bb40:
  br label %bb41
bb41:
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t146 = load i64, ptr %l3, !tbaa !24
  %t149 = call { i64, ptr } @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2eTextOf(ptr %v0, ptr %v0, ptr %t145, i64 %t146)
  store { i64, ptr } %t149, ptr %l100
  br label %bb42
bb42:
  %t150 = load { i64, ptr }, ptr %l100, !tbaa !27
  store { i64, ptr } %t150, ptr %l14, !tbaa !27
  store i64 0, ptr %l15, !tbaa !24
  br label %bb43
bb43:
  %t151 = load i64, ptr %l15, !tbaa !24
  %t152 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t154 = extractvalue { i64, ptr } %t152, 0
  %t157 = icmp sle i64 %t151, %t154
  %t159 = xor i1 %t157, true
  br i1 %t159, label %bb44, label %bb45
bb44:
  br label %bb106
bb45:
  br label %bb46
bb46:
  %t161 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t162 = load i64, ptr %l15, !tbaa !24
  %t165 = call i64 @compiler_2fdoc_2eLineEnd(ptr %v0, { i64, ptr } %t161, i64 %t162)
  store i64 %t165, ptr %l108
  br label %bb47
bb47:
  %t166 = load i64, ptr %l108, !tbaa !24
  store i64 %t166, ptr %l16, !tbaa !24
  %t167 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t167, ptr %l109, !tbaa !27
  %t168 = load i64, ptr %l15, !tbaa !24
  store i64 %t168, ptr %l110, !tbaa !24
  %t169 = load i64, ptr %l16, !tbaa !24
  store i64 %t169, ptr %l111, !tbaa !24
  %t170 = load { i64, ptr }, ptr %l109, !tbaa !27
  %t171 = extractvalue { i64, ptr } %t170, 0
  store i64 %t171, ptr %l112, !tbaa !24
  %t172 = load i64, ptr %l110, !tbaa !24
  %t173 = icmp sge i64 %t172, 0
  br i1 %t173, label %bb48, label %bb49
bb48:
  %t175 = load i64, ptr %l110, !tbaa !24
  %t176 = load i64, ptr %l111, !tbaa !24
  %t177 = icmp sle i64 %t175, %t176
  br i1 %t177, label %bb50, label %bb51
bb49:
  call void @__olang_check_failed(ptr @olang_loc_7ada9cad4f5dae06_e1e48e82a4e1a6ca)
  unreachable
bb50:
  %t179 = load i64, ptr %l111, !tbaa !24
  %t180 = load i64, ptr %l112, !tbaa !24
  %t181 = icmp sle i64 %t179, %t180
  br i1 %t181, label %bb52, label %bb53
bb51:
  call void @__olang_check_failed(ptr @olang_loc_7ada9cad4f5dae06_e1e48e82a4e1a6ca)
  unreachable
bb52:
  %t183 = getelementptr { i64, ptr }, ptr %l109, i32 0, i32 1
  %t184 = load ptr, ptr %t183, !tbaa !27
  %t185 = load i64, ptr %l110, !tbaa !24
  %t186 = load i64, ptr %l111, !tbaa !24
  %t187 = getelementptr i8, ptr %t184, i64 %t185
  %t188 = sub i64 %t186, %t185
  %t189 = insertvalue { i64, ptr } undef, i64 %t188, 0
  %t190 = insertvalue { i64, ptr } %t189, ptr %t187, 1
  %t192 = call i64 @compiler_2fdoc_2eCommentColumn(ptr %v0, { i64, ptr } %t190)
  store i64 %t192, ptr %l117
  br label %bb54
bb53:
  call void @__olang_check_failed(ptr @olang_loc_7ada9cad4f5dae06_e1e48e82a4e1a6ca)
  unreachable
bb54:
  %t193 = load i64, ptr %l117, !tbaa !24
  store i64 %t193, ptr %l17, !tbaa !24
  %t194 = load i64, ptr %l17, !tbaa !24
  %t196 = icmp slt i64 %t194, 0
  br i1 %t196, label %bb55, label %bb56
bb55:
  %t198 = load i64, ptr %l16, !tbaa !24
  store i64 %t198, ptr %l120, !tbaa !24
  br label %bb57
bb56:
  %t200 = load i64, ptr %l15, !tbaa !24
  %t201 = load i64, ptr %l17, !tbaa !24
  %t204 = add i64 %t200, %t201
  store i64 %t204, ptr %l120, !tbaa !24
  br label %bb57
bb57:
  %t206 = load i64, ptr %l120, !tbaa !24
  store i64 %t206, ptr %l18, !tbaa !24
  %t207 = load i64, ptr %l15, !tbaa !24
  store i64 %t207, ptr %l19, !tbaa !24
  br label %bb58
bb58:
  store %olang.scope zeroinitializer, ptr %s11
  %t209 = load i64, ptr %l19, !tbaa !24
  %t210 = load i64, ptr %l18, !tbaa !24
  %t213 = icmp slt i64 %t209, %t210
  %t215 = xor i1 %t213, true
  br i1 %t215, label %bb59, label %bb60
bb59:
  call void @__olang_scope_close(ptr %s11)
  br label %bb104
bb60:
  br label %bb61
bb61:
  %t217 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t217, ptr %l130, !tbaa !27
  %t218 = load i64, ptr %l19, !tbaa !24
  %t220 = getelementptr { i64, ptr }, ptr %l130, i32 0, i32 1
  %t221 = load ptr, ptr %t220, !tbaa !27
  %t222 = getelementptr i8, ptr %t221, i64 %t218
  %t223 = load i8, ptr %t222, !tbaa !32
  %t225 = call i1 @compiler_2fsession_2eWordChar(i8 %t223)
  store i1 %t225, ptr %l133
  br label %bb62
bb62:
  %t226 = load i1, ptr %l133, !tbaa !21
  %t227 = xor i1 %t226, true
  br i1 %t227, label %bb63, label %bb64
bb63:
  %t229 = load i64, ptr %l19, !tbaa !24
  %t231 = add i64 %t229, 1
  store i64 %t231, ptr %l19, !tbaa !24
  call void @__olang_scope_close(ptr %s11)
  br label %bb103
bb64:
  br label %bb65
bb65:
  %t233 = load i64, ptr %l19, !tbaa !24
  store i64 %t233, ptr %l20, !tbaa !24
  br label %bb66
bb66:
  %t235 = load i64, ptr %l19, !tbaa !24
  %t236 = load i64, ptr %l18, !tbaa !24
  %t239 = icmp slt i64 %t235, %t236
  br i1 %t239, label %bb67, label %bb68
bb67:
  %t241 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t241, ptr %l142, !tbaa !27
  %t242 = load i64, ptr %l19, !tbaa !24
  %t244 = getelementptr { i64, ptr }, ptr %l142, i32 0, i32 1
  %t245 = load ptr, ptr %t244, !tbaa !27
  %t246 = getelementptr i8, ptr %t245, i64 %t242
  %t247 = load i8, ptr %t246, !tbaa !32
  %t249 = call i1 @compiler_2fsession_2eWordChar(i8 %t247)
  store i1 %t249, ptr %l145
  br label %bb69
bb68:
  store i1 false, ptr %l141, !tbaa !21
  br label %bb70
bb69:
  %t250 = load i1, ptr %l145, !tbaa !21
  store i1 %t250, ptr %l141, !tbaa !21
  br label %bb70
bb70:
  %t251 = load i1, ptr %l141, !tbaa !21
  %t252 = xor i1 %t251, true
  br i1 %t252, label %bb71, label %bb72
bb71:
  br label %bb75
bb72:
  br label %bb73
bb73:
  %t254 = load i64, ptr %l19, !tbaa !24
  %t256 = add i64 %t254, 1
  store i64 %t256, ptr %l19, !tbaa !24
  br label %bb74
bb74:
  br label %bb66
bb75:
  %t258 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t258, ptr %l149, !tbaa !27
  %t259 = load i64, ptr %l20, !tbaa !24
  store i64 %t259, ptr %l150, !tbaa !24
  %t260 = load i64, ptr %l19, !tbaa !24
  store i64 %t260, ptr %l151, !tbaa !24
  %t261 = load { i64, ptr }, ptr %l149, !tbaa !27
  %t262 = extractvalue { i64, ptr } %t261, 0
  store i64 %t262, ptr %l152, !tbaa !24
  %t263 = load i64, ptr %l150, !tbaa !24
  %t264 = icmp sge i64 %t263, 0
  br i1 %t264, label %bb76, label %bb77
bb76:
  %t266 = load i64, ptr %l150, !tbaa !24
  %t267 = load i64, ptr %l151, !tbaa !24
  %t268 = icmp sle i64 %t266, %t267
  br i1 %t268, label %bb78, label %bb79
bb77:
  call void @__olang_check_failed(ptr @olang_loc_7b32137e1a8558e3_9274687faf6829a7)
  unreachable
bb78:
  %t270 = load i64, ptr %l151, !tbaa !24
  %t271 = load i64, ptr %l152, !tbaa !24
  %t272 = icmp sle i64 %t270, %t271
  br i1 %t272, label %bb80, label %bb81
bb79:
  call void @__olang_check_failed(ptr @olang_loc_7b32137e1a8558e3_9274687faf6829a7)
  unreachable
bb80:
  %t274 = getelementptr { i64, ptr }, ptr %l149, i32 0, i32 1
  %t275 = load ptr, ptr %t274, !tbaa !27
  %t276 = load i64, ptr %l150, !tbaa !24
  %t277 = load i64, ptr %l151, !tbaa !24
  %t278 = getelementptr i8, ptr %t275, i64 %t276
  %t279 = sub i64 %t277, %t276
  %t280 = insertvalue { i64, ptr } undef, i64 %t279, 0
  %t281 = insertvalue { i64, ptr } %t280, ptr %t278, 1
  %t283 = extractvalue { i64, ptr } %t281, 1
  %t284 = extractvalue { i64, ptr } %t281, 0
  %t285 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t284)
  call void @olang_textcopy(ptr %t285, ptr %t283, i64 %t284)
  %t286 = insertvalue { i64, ptr } undef, i64 %t284, 0
  %t287 = insertvalue { i64, ptr } %t286, ptr %t285, 1
  %t292 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H0127831368543eff3b7740d7d3240080(ptr %s0, ptr %s11, ptr %l4, { i64, ptr } %t287)
  store i1 %t292, ptr %l160
  br label %bb82
bb81:
  call void @__olang_check_failed(ptr @olang_loc_7b32137e1a8558e3_9274687faf6829a7)
  unreachable
bb82:
  %t293 = load i1, ptr %l160, !tbaa !21
  %t294 = xor i1 %t293, true
  br i1 %t294, label %bb83, label %bb84
bb83:
  call void @__olang_scope_close(ptr %s11)
  br label %bb103
bb84:
  br label %bb85
bb85:
  %t296 = load ptr, ptr %l0, !tbaa !29
  store ptr %t296, ptr %l162, !tbaa !29
  %t297 = load i64, ptr %l3, !tbaa !24
  store i64 %t297, ptr %l163, !tbaa !24
  %t298 = load i64, ptr %l20, !tbaa !24
  %t300 = trunc i64 %t298 to i32
  %t301 = load i64, ptr %l19, !tbaa !24
  %t303 = trunc i64 %t301 to i32
  %t306 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s11, i32 %t300, i32 %t303)
  store %"compiler/source:Span" %t306, ptr %l168
  br label %bb86
bb86:
  %t307 = load ptr, ptr %l162, !tbaa !29
  %t308 = load i64, ptr %l163, !tbaa !24
  %t309 = load %"compiler/source:Span", ptr %l168
  %t310 = call { i64, [6 x i64] } @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2etarget(ptr %v0, ptr %v0, ptr %t307, i64 %t308, %"compiler/source:Span" %t309)
  store { i64, [6 x i64] } %t310, ptr %l169
  br label %bb87
bb87:
  %t311 = load { i64, [6 x i64] }, ptr %l169
  %t312 = load ptr, ptr %l0, !tbaa !29
  %t316 = call { { i64, ptr }, i64, i64 } @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2enoteOf(ptr %v0, ptr %v0, ptr %s11, ptr %t312, { i64, [6 x i64] } %t311)
  store { { i64, ptr }, i64, i64 } %t316, ptr %l172
  br label %bb88
bb88:
  %t317 = load { { i64, ptr }, i64, i64 }, ptr %l172
  store { { i64, ptr }, i64, i64 } %t317, ptr %l23
  %t318 = getelementptr { { i64, ptr }, i64, i64 }, ptr %l23, i32 0, i32 0
  %t319 = load { i64, ptr }, ptr %t318, !tbaa !27
  store { i64, ptr } %t319, ptr %l173, !tbaa !27
  %t320 = load { i64, ptr }, ptr %l173, !tbaa !27
  %t321 = extractvalue { i64, ptr } %t320, 0
  store i64 %t321, ptr %l174, !tbaa !24
  %t322 = load i64, ptr %l174, !tbaa !24
  %t323 = mul i64 %t322, 1
  %t324 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t323)
  %t325 = insertvalue { i64, ptr } undef, i64 %t322, 0
  %t326 = insertvalue { i64, ptr } %t325, ptr %t324, 1
  store { i64, ptr } %t326, ptr %l175, !tbaa !27
  %t327 = getelementptr { i64, ptr }, ptr %l175, i32 0, i32 1
  %t328 = load ptr, ptr %t327, !tbaa !27
  %t329 = getelementptr { i64, ptr }, ptr %l173, i32 0, i32 1
  %t330 = load ptr, ptr %t329, !tbaa !27
  %t331 = load i64, ptr %l174, !tbaa !24
  %t332 = mul i64 %t331, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t328, ptr %t330, i64 %t332, i1 false)
  %t333 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t333, ptr %lp24
  %t334 = load { i64, ptr }, ptr %l175, !tbaa !27
  %t335 = load ptr, ptr %lp24
  store { i64, ptr } %t334, ptr %t335, !tbaa !27
  %t336 = getelementptr { { i64, ptr }, i64, i64 }, ptr %l23, i32 0, i32 1
  %t337 = load i64, ptr %t336, !tbaa !24
  store i64 %t337, ptr %l25, !tbaa !24
  %t339 = getelementptr { { i64, ptr }, i64, i64 }, ptr %l23, i32 0, i32 2
  %t340 = load i64, ptr %t339, !tbaa !24
  store i64 %t340, ptr %l26, !tbaa !24
  %t342 = load ptr, ptr %lp24
  %t343 = load { i64, ptr }, ptr %t342, !tbaa !27
  %t345 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s11, { i64, ptr } %t343, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d13, i32 0, i32 1) })
  store i1 %t345, ptr %l179
  br label %bb89
bb89:
  %t346 = load i1, ptr %l179, !tbaa !21
  %t347 = xor i1 %t346, true
  br i1 %t347, label %bb90, label %bb91
bb90:
  %t349 = load i64, ptr %l26, !tbaa !24
  %t350 = load i64, ptr %l3, !tbaa !24
  %t353 = icmp eq i64 %t349, %t350
  br i1 %t353, label %bb92, label %bb93
bb91:
  store i1 false, ptr %l181, !tbaa !21
  br label %bb97
bb92:
  %t355 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t356 = load i64, ptr %l25, !tbaa !24
  %t359 = call i64 @compiler_2fdoc_2eLineStart(ptr %v0, { i64, ptr } %t355, i64 %t356)
  store i64 %t359, ptr %l188
  br label %bb94
bb93:
  store i1 false, ptr %l185, !tbaa !21
  br label %bb96
bb94:
  %t360 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t361 = load i64, ptr %l20, !tbaa !24
  %t364 = call i64 @compiler_2fdoc_2eLineStart(ptr %v0, { i64, ptr } %t360, i64 %t361)
  store i64 %t364, ptr %l191
  br label %bb95
bb95:
  %t365 = load i64, ptr %l188, !tbaa !24
  %t366 = load i64, ptr %l191, !tbaa !24
  %t367 = icmp eq i64 %t365, %t366
  store i1 %t367, ptr %l185, !tbaa !21
  br label %bb96
bb96:
  %t369 = load i1, ptr %l185, !tbaa !21
  %t370 = xor i1 %t369, true
  store i1 %t370, ptr %l181, !tbaa !21
  br label %bb97
bb97:
  %t372 = load i1, ptr %l181, !tbaa !21
  br i1 %t372, label %bb98, label %bb99
bb98:
  %t373 = load ptr, ptr %lp2
  store ptr %t373, ptr %l194, !tbaa !29
  %t374 = load i64, ptr %l20, !tbaa !24
  %t375 = load i64, ptr %l19, !tbaa !24
  %t376 = load ptr, ptr %lp24
  %t377 = load { i64, ptr }, ptr %t376, !tbaa !27
  %t381 = call %"compiler/session:Use" @compiler_2fsession_3aUse_2ector(ptr %v2, ptr %v2, i64 %t374, i64 %t375, { i64, ptr } %t377)
  store %"compiler/session:Use" %t381, ptr %l198
  br label %bb100
bb99:
  br label %bb102
bb100:
  %t382 = load ptr, ptr %l194, !tbaa !29
  %t383 = load %"compiler/session:Use", ptr %l198
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsession_3aUse_3e_2ePush_3ccompiler_2fsession_3aUse_3e(ptr %v2, ptr %v2, ptr %t382, %"compiler/session:Use" %t383)
  br label %bb101
bb101:
  br label %bb102
bb102:
  call void @__olang_scope_close(ptr %s11)
  br label %bb103
bb103:
  br label %bb58
bb104:
  %t384 = load i64, ptr %l16, !tbaa !24
  %t386 = add i64 %t384, 1
  store i64 %t386, ptr %l15, !tbaa !24
  br label %bb105
bb105:
  br label %bb43
bb106:
  %t388 = load ptr, ptr %lp2
  %t389 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t388
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t389, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local void @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2eMembers(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, { i64, ptr } %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca %"compiler/source:Span"
  %l9 = alloca %"compiler/names:Ref"
  %l10 = alloca i32
  %l11 = alloca ptr
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca ptr
  %l15 = alloca { i64, ptr }
  %l16 = alloca i32
  %l19 = alloca i64
  %l22 = alloca i1
  %l30 = alloca { i64, ptr }
  %l35 = alloca ptr
  %l40 = alloca %"compiler/source:Span"
  %l44 = alloca i1
  %l57 = alloca %"compiler/names:Ref"
  %l68 = alloca %"compiler/names:Ref"
  %l76 = alloca i1
  %l83 = alloca ptr
  %l91 = alloca i32
  %l92 = alloca i32
  %l99 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l101 = alloca i64
  %l103 = alloca i64
  %l108 = alloca i64
  %l115 = alloca ptr
  %l125 = alloca { i64, ptr }
  %l127 = alloca i1
  %l129 = alloca i1
  %l136 = alloca i64
  %l139 = alloca ptr
  %l140 = alloca { i64, ptr }
  %l141 = alloca i64
  %l144 = alloca ptr
  %l151 = alloca { i64, ptr }
  %l153 = alloca { i64, ptr }
  %l154 = alloca { i64, ptr }
  %l155 = alloca ptr
  %l162 = alloca i64
  %l166 = alloca i1
  %l172 = alloca i32
  %l173 = alloca i64
  %l177 = alloca { i64, ptr }
  %l182 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s7 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i64 @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2eModuleOf(ptr %v0, ptr %v2, ptr %t1, { i64, ptr } %a2)
  store i64 %t5, ptr %l19
  br label %bb1
bb1:
  %t6 = load i64, ptr %l19, !tbaa !24
  store i64 %t6, ptr %l4, !tbaa !24
  %t7 = load i64, ptr %l4, !tbaa !24
  %t9 = icmp slt i64 %t7, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l22, !tbaa !21
  br label %bb4
bb3:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/session:Analysis", ptr %t11, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !29
  %t16 = icmp eq ptr %t14, null
  store i1 %t16, ptr %l22, !tbaa !21
  br label %bb4
bb4:
  %t18 = load i1, ptr %l22, !tbaa !21
  br i1 %t18, label %bb5, label %bb6
bb5:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb6:
  br label %bb7
bb7:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/session:Analysis", ptr %t19, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !29
  store ptr %t22, ptr %l5, !tbaa !29
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t25 = load i64, ptr %l4, !tbaa !24
  %t28 = call { i64, ptr } @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2eTextOf(ptr %v0, ptr %v0, ptr %t24, i64 %t25)
  store { i64, ptr } %t28, ptr %l30
  br label %bb8
bb8:
  %t29 = load { i64, ptr }, ptr %l30, !tbaa !27
  store { i64, ptr } %t29, ptr %l6, !tbaa !27
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/session:Analysis", ptr %t30, i32 0, i32 0
  %t33 = load ptr, ptr %t32, !tbaa !29
  %t35 = getelementptr %"compiler/load:Loader", ptr %t33, i32 0, i32 10
  %t36 = load i64, ptr %l4, !tbaa !24
  %t39 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t35, i64 %t36)
  store ptr %t39, ptr %l35
  br label %bb9
bb9:
  %t40 = load ptr, ptr %l35, !tbaa !29
  %t42 = getelementptr %"compiler/load:Module", ptr %t40, i32 0, i32 4
  %t43 = load i64, ptr %t42, !tbaa !24
  store i64 %t43, ptr %l7, !tbaa !24
  %t45 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t46 = load i64, ptr %l3, !tbaa !24
  %t49 = call %"compiler/source:Span" @compiler_2fsession_2eWordAt(ptr %v0, { i64, ptr } %t45, i64 %t46)
  store %"compiler/source:Span" %t49, ptr %l40
  br label %bb10
bb10:
  %t50 = load %"compiler/source:Span", ptr %l40
  store %"compiler/source:Span" %t50, ptr %l8
  %t51 = getelementptr %"compiler/source:Span", ptr %l8, i32 0, i32 0
  %t52 = load i32, ptr %t51, !tbaa !23
  %t53 = getelementptr %"compiler/source:Span", ptr %l8, i32 0, i32 1
  %t54 = load i32, ptr %t53, !tbaa !23
  %t57 = icmp slt i32 %t52, %t54
  br i1 %t57, label %bb11, label %bb12
bb11:
  %t59 = getelementptr %"compiler/source:Span", ptr %l8, i32 0, i32 1
  %t60 = load i32, ptr %t59, !tbaa !23
  %t62 = sext i32 %t60 to i64
  %t63 = load i64, ptr %l3, !tbaa !24
  %t66 = icmp eq i64 %t62, %t63
  store i1 %t66, ptr %l44, !tbaa !21
  br label %bb13
bb12:
  store i1 false, ptr %l44, !tbaa !21
  br label %bb13
bb13:
  %t68 = load i1, ptr %l44, !tbaa !21
  br i1 %t68, label %bb14, label %bb15
bb14:
  %t69 = load ptr, ptr %l5, !tbaa !29
  %t71 = icmp eq ptr %t69, null
  br i1 %t71, label %bb16, label %bb17
bb15:
  br label %bb90
bb16:
  call void @__olang_check_failed(ptr @olang_loc_3178b68d0296f164_92041ef9c14564d0)
  unreachable
bb17:
  br label %bb18
bb18:
  %t73 = load ptr, ptr %l5, !tbaa !29
  %t76 = getelementptr %"compiler/check:Checker", ptr %t73, i32 0, i32 1
  %t77 = load ptr, ptr %t76, !tbaa !29
  %t79 = getelementptr %"compiler/generic:Program", ptr %t77, i32 0, i32 1
  %t80 = load ptr, ptr %t79, !tbaa !29
  %t81 = load i64, ptr %l7, !tbaa !24
  %t82 = getelementptr %"compiler/source:Span", ptr %l8, i32 0, i32 0
  %t83 = load i32, ptr %t82, !tbaa !23
  %t87 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %t80, i64 %t81, i32 %t83)
  store %"compiler/names:Ref" %t87, ptr %l57
  br label %bb19
bb19:
  %t88 = load %"compiler/names:Ref", ptr %l57
  store %"compiler/names:Ref" %t88, ptr %l9
  %t89 = getelementptr %"compiler/names:Ref", ptr %l9, i32 0, i32 0
  %t90 = load i32, ptr %t89, !range !{i32 0, i32 9}
  %t92 = trunc i64 0 to i32
  %t93 = icmp eq i32 %t90, %t92
  br i1 %t93, label %bb20, label %bb21
bb20:
  %t95 = load ptr, ptr %l5, !tbaa !29
  %t97 = icmp eq ptr %t95, null
  br i1 %t97, label %bb22, label %bb23
bb21:
  br label %bb26
bb22:
  call void @__olang_check_failed(ptr @olang_loc_d917d39333aa2133_631bc7dad212aa2f)
  unreachable
bb23:
  br label %bb24
bb24:
  %t99 = load ptr, ptr %l5, !tbaa !29
  %t102 = getelementptr %"compiler/check:Checker", ptr %t99, i32 0, i32 1
  %t103 = load ptr, ptr %t102, !tbaa !29
  %t105 = getelementptr %"compiler/generic:Program", ptr %t103, i32 0, i32 1
  %t106 = load ptr, ptr %t105, !tbaa !29
  %t107 = load i64, ptr %l7, !tbaa !24
  %t108 = getelementptr %"compiler/source:Span", ptr %l8, i32 0, i32 1
  %t109 = load i32, ptr %t108, !tbaa !23
  %t113 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eMember(ptr %v0, ptr %t106, i64 %t107, i32 %t109)
  store %"compiler/names:Ref" %t113, ptr %l68
  br label %bb25
bb25:
  %t114 = load %"compiler/names:Ref", ptr %l68
  store %"compiler/names:Ref" %t114, ptr %l9
  br label %bb26
bb26:
  %t115 = getelementptr %"compiler/names:Ref", ptr %l9, i32 0, i32 0
  %t116 = load i32, ptr %t115, !range !{i32 0, i32 9}
  %t118 = trunc i64 5 to i32
  %t119 = icmp eq i32 %t116, %t118
  br i1 %t119, label %bb27, label %bb28
bb27:
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t122 = load ptr, ptr %l1, !tbaa !29
  %t123 = getelementptr %"compiler/names:Ref", ptr %l9, i32 0, i32 1
  %t124 = load i64, ptr %t123, !tbaa !24
  call void @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2emoduleNames(ptr %v0, ptr %v1, ptr %t121, ptr %t122, i64 %t124, i1 false)
  br label %bb29
bb28:
  br label %bb30
bb29:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb30:
  %t128 = getelementptr %"compiler/names:Ref", ptr %l9, i32 0, i32 0
  %t129 = load i32, ptr %t128, !range !{i32 0, i32 9}
  %t131 = trunc i64 4 to i32
  %t132 = icmp eq i32 %t129, %t131
  br i1 %t132, label %bb31, label %bb32
bb31:
  %t134 = getelementptr %"compiler/names:Ref", ptr %l9, i32 0, i32 2
  %t135 = load i64, ptr %t134, !tbaa !24
  %t137 = icmp sge i64 %t135, 0
  store i1 %t137, ptr %l76, !tbaa !21
  br label %bb33
bb32:
  store i1 false, ptr %l76, !tbaa !21
  br label %bb33
bb33:
  %t139 = load i1, ptr %l76, !tbaa !21
  br i1 %t139, label %bb34, label %bb35
bb34:
  %t140 = load ptr, ptr %l5, !tbaa !29
  %t142 = icmp eq ptr %t140, null
  br i1 %t142, label %bb36, label %bb37
bb35:
  br label %bb89
bb36:
  call void @__olang_check_failed(ptr @olang_loc_8be86b180d8510f2_8625cf113e27a67e)
  unreachable
bb37:
  br label %bb38
bb38:
  %t144 = load ptr, ptr %l5, !tbaa !29
  %t147 = getelementptr %"compiler/check:Checker", ptr %t144, i32 0, i32 1
  %t148 = load ptr, ptr %t147, !tbaa !29
  store ptr %t148, ptr %l83, !tbaa !29
  %t149 = load ptr, ptr %l5, !tbaa !29
  %t151 = icmp eq ptr %t149, null
  br i1 %t151, label %bb39, label %bb40
bb39:
  call void @__olang_check_failed(ptr @olang_loc_8be86b180d8510f2_8625cf113e27a67e)
  unreachable
bb40:
  br label %bb41
bb41:
  %t153 = load ptr, ptr %l5, !tbaa !29
  %t156 = getelementptr %"compiler/check:Checker", ptr %t153, i32 0, i32 1
  %t157 = load ptr, ptr %t156, !tbaa !29
  %t158 = getelementptr %"compiler/names:Ref", ptr %l9, i32 0, i32 1
  %t159 = load i64, ptr %t158, !tbaa !24
  %t160 = getelementptr %"compiler/names:Ref", ptr %l9, i32 0, i32 2
  %t161 = load i64, ptr %t160, !tbaa !24
  %t165 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclFor(ptr %v0, ptr %t157, i64 %t159, i64 %t161)
  store i32 %t165, ptr %l91
  br label %bb42
bb42:
  %t166 = load ptr, ptr %l83, !tbaa !29
  %t167 = load i32, ptr %l91, !tbaa !23
  %t168 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSelfType(ptr %v0, ptr %t166, i32 %t167)
  store i32 %t168, ptr %l92
  br label %bb43
bb43:
  %t169 = load i32, ptr %l92, !tbaa !23
  store i32 %t169, ptr %l10, !tbaa !23
  store %olang.scope zeroinitializer, ptr %s6
  %t170 = load ptr, ptr %l5, !tbaa !29
  %t172 = icmp eq ptr %t170, null
  br i1 %t172, label %bb44, label %bb45
bb44:
  call void @__olang_check_failed(ptr @olang_loc_ed36df340d76a819_440492e817778325)
  unreachable
bb45:
  br label %bb46
bb46:
  %t174 = load ptr, ptr %l5, !tbaa !29
  %t177 = getelementptr %"compiler/check:Checker", ptr %t174, i32 0, i32 1
  %t178 = load ptr, ptr %t177, !tbaa !29
  %t179 = load i32, ptr %l10, !tbaa !23
  %t182 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBuildersOf(ptr %v0, ptr %s6, ptr %t178, i32 %t179)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t182, ptr %l99
  br label %bb47
bb47:
  %t183 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l99
  %t184 = call ptr @__olang_scope_alloc_a(ptr %s6, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t183, ptr %t184
  store ptr %t184, ptr %l11, !tbaa !29
  store i64 0, ptr %l12, !tbaa !24
  br label %bb48
bb48:
  store %olang.scope zeroinitializer, ptr %s7
  %t186 = load i64, ptr %l12, !tbaa !24
  store i64 %t186, ptr %l101, !tbaa !24
  %t187 = load ptr, ptr %l11, !tbaa !29
  %t189 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s6, ptr %t187)
  store i64 %t189, ptr %l103
  br label %bb49
bb49:
  %t190 = load i64, ptr %l101, !tbaa !24
  %t191 = load i64, ptr %l103, !tbaa !24
  %t192 = icmp slt i64 %t190, %t191
  %t194 = xor i1 %t192, true
  br i1 %t194, label %bb50, label %bb51
bb50:
  call void @__olang_scope_close(ptr %s7)
  br label %bb88
bb51:
  br label %bb52
bb52:
  %t196 = load ptr, ptr %l11, !tbaa !29
  %t197 = load i64, ptr %l12, !tbaa !24
  %t200 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s6, ptr %t196, i64 %t197)
  store i64 %t200, ptr %l108
  br label %bb53
bb53:
  %t201 = load i64, ptr %l108, !tbaa !24
  store i64 %t201, ptr %l13, !tbaa !24
  %t202 = load ptr, ptr %l5, !tbaa !29
  %t204 = icmp eq ptr %t202, null
  br i1 %t204, label %bb54, label %bb55
bb54:
  call void @__olang_check_failed(ptr @olang_loc_307b77a6237c26a0_78f1120d888a7954)
  unreachable
bb55:
  br label %bb56
bb56:
  %t206 = load ptr, ptr %l5, !tbaa !29
  %t209 = getelementptr %"compiler/check:Checker", ptr %t206, i32 0, i32 1
  %t210 = load ptr, ptr %t209, !tbaa !29
  %t211 = load i64, ptr %l13, !tbaa !24
  %t214 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t210, i64 %t211)
  store ptr %t214, ptr %l115
  br label %bb57
bb57:
  %t215 = load ptr, ptr %l115, !tbaa !29
  store ptr %t215, ptr %l14, !tbaa !29
  %t216 = load ptr, ptr %l5, !tbaa !29
  %t218 = icmp eq ptr %t216, null
  br i1 %t218, label %bb58, label %bb59
bb58:
  call void @__olang_check_failed(ptr @olang_loc_2c3c8769e2b258bf_eca2de7a2a110a63)
  unreachable
bb59:
  br label %bb60
bb60:
  %t220 = load ptr, ptr %l5, !tbaa !29
  %t223 = getelementptr %"compiler/check:Checker", ptr %t220, i32 0, i32 1
  %t224 = load ptr, ptr %t223, !tbaa !29
  %t226 = getelementptr %"compiler/generic:Program", ptr %t224, i32 0, i32 0
  %t227 = load ptr, ptr %t226, !tbaa !29
  %t229 = getelementptr %"compiler/load:Loader", ptr %t227, i32 0, i32 3
  %t230 = load ptr, ptr %t229, !tbaa !29
  %t231 = load ptr, ptr %l14, !tbaa !29
  %t233 = getelementptr %"compiler/ast:Func", ptr %t231, i32 0, i32 10
  %t234 = load i32, ptr %t233, !tbaa !23
  %t237 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v0, ptr %t230, i32 %t234)
  store { i64, ptr } %t237, ptr %l125
  br label %bb61
bb61:
  %t238 = load { i64, ptr }, ptr %l125, !tbaa !27
  store { i64, ptr } %t238, ptr %l15, !tbaa !27
  %t239 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t241 = call i1 @compiler_2fdoc_2eExported(ptr %v0, { i64, ptr } %t239)
  store i1 %t241, ptr %l127
  br label %bb62
bb62:
  %t242 = load i1, ptr %l127, !tbaa !21
  %t243 = xor i1 %t242, true
  br i1 %t243, label %bb63, label %bb64
bb63:
  %t245 = load ptr, ptr %l5, !tbaa !29
  %t247 = icmp eq ptr %t245, null
  br i1 %t247, label %bb65, label %bb66
bb64:
  store i1 false, ptr %l129, !tbaa !21
  br label %bb69
bb65:
  call void @__olang_check_failed(ptr @olang_loc_ee4e27bc8cc2960e_c3e4091da57c70e2)
  unreachable
bb66:
  br label %bb67
bb67:
  %t249 = load ptr, ptr %l5, !tbaa !29
  %t252 = getelementptr %"compiler/check:Checker", ptr %t249, i32 0, i32 1
  %t253 = load ptr, ptr %t252, !tbaa !29
  %t254 = load i64, ptr %l13, !tbaa !24
  %t257 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t253, i64 %t254)
  store i64 %t257, ptr %l136
  br label %bb68
bb68:
  %t258 = load i64, ptr %l4, !tbaa !24
  %t259 = load i64, ptr %l136, !tbaa !24
  %t261 = icmp ne i64 %t259, %t258
  store i1 %t261, ptr %l129, !tbaa !21
  br label %bb69
bb69:
  %t263 = load i1, ptr %l129, !tbaa !21
  br i1 %t263, label %bb70, label %bb71
bb70:
  call void @__olang_scope_close(ptr %s7)
  br label %bb87
bb71:
  br label %bb72
bb72:
  %t264 = load ptr, ptr %l1, !tbaa !29
  store ptr %t264, ptr %l139, !tbaa !29
  %t265 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t265, ptr %l140, !tbaa !27
  %t266 = load i64, ptr @G_2ecompiler_2fsession_2eCompMethod, !tbaa !24
  store i64 %t266, ptr %l141, !tbaa !24
  %t267 = load ptr, ptr %l5, !tbaa !29
  %t269 = icmp eq ptr %t267, null
  br i1 %t269, label %bb73, label %bb74
bb73:
  call void @__olang_check_failed(ptr @olang_loc_fedfdbf81449d1b5_cf51e30466ace149)
  unreachable
bb74:
  br label %bb75
bb75:
  %t271 = load ptr, ptr %l5, !tbaa !29
  store ptr %t271, ptr %l144, !tbaa !29
  %t272 = load ptr, ptr %l0, !tbaa !29
  %t274 = getelementptr %"compiler/session:Analysis", ptr %t272, i32 0, i32 2
  %t275 = load ptr, ptr %t274, !tbaa !29
  %t277 = icmp eq ptr %t275, null
  br i1 %t277, label %bb76, label %bb77
bb76:
  call void @__olang_check_failed(ptr @olang_loc_fedfdbf81449d1b5_cf51e30466ace149)
  unreachable
bb77:
  br label %bb78
bb78:
  %t279 = load ptr, ptr %l0, !tbaa !29
  %t281 = getelementptr %"compiler/session:Analysis", ptr %t279, i32 0, i32 2
  %t282 = load ptr, ptr %t281, !tbaa !29
  %t283 = load i64, ptr %l13, !tbaa !24
  %t284 = load ptr, ptr %l144, !tbaa !29
  %t287 = call { i64, ptr } @compiler_2fexplain_2eFnText(ptr %v0, ptr %v0, ptr %s7, ptr %t284, ptr %t282, i64 %t283)
  store { i64, ptr } %t287, ptr %l151
  br label %bb79
bb79:
  %t288 = load { i64, ptr }, ptr %l151, !tbaa !27
  %t289 = extractvalue { i64, ptr } %t288, 0
  %t290 = extractvalue { i64, ptr } %t288, 1
  %t291 = mul i64 %t289, 1
  %t292 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t291)
  call void @llvm.memcpy.p0.p0.i64(ptr %t292, ptr %t290, i64 %t291, i1 false)
  %t293 = insertvalue { i64, ptr } undef, i64 %t289, 0
  %t294 = insertvalue { i64, ptr } %t293, ptr %t292, 1
  %t296 = call { i64, ptr } @compiler_2fsession_2efirstLine(ptr %s7, ptr %s7, { i64, ptr } %t294)
  store { i64, ptr } %t296, ptr %l153
  br label %bb80
bb80:
  %t297 = load { i64, ptr }, ptr %l153, !tbaa !27
  %t298 = extractvalue { i64, ptr } %t297, 0
  %t299 = extractvalue { i64, ptr } %t297, 1
  %t300 = mul i64 %t298, 1
  %t301 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t300)
  call void @llvm.memcpy.p0.p0.i64(ptr %t301, ptr %t299, i64 %t300, i1 false)
  %t302 = insertvalue { i64, ptr } undef, i64 %t298, 0
  %t303 = insertvalue { i64, ptr } %t302, ptr %t301, 1
  store { i64, ptr } %t303, ptr %l154, !tbaa !27
  %t304 = load ptr, ptr %l0, !tbaa !29
  store ptr %t304, ptr %l155, !tbaa !29
  %t305 = load ptr, ptr %l5, !tbaa !29
  %t307 = icmp eq ptr %t305, null
  br i1 %t307, label %bb81, label %bb82
bb81:
  call void @__olang_check_failed(ptr @olang_loc_fedfdbf81449d1b5_cf51e30466ace149)
  unreachable
bb82:
  br label %bb83
bb83:
  %t309 = load ptr, ptr %l5, !tbaa !29
  %t312 = getelementptr %"compiler/check:Checker", ptr %t309, i32 0, i32 1
  %t313 = load ptr, ptr %t312, !tbaa !29
  %t314 = load i64, ptr %l13, !tbaa !24
  %t317 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t313, i64 %t314)
  store i64 %t317, ptr %l162
  br label %bb84
bb84:
  %t318 = load ptr, ptr %l14, !tbaa !29
  %t320 = getelementptr %"compiler/ast:Func", ptr %t318, i32 0, i32 0
  %t321 = getelementptr %"compiler/source:Span", ptr %t320, i32 0, i32 0
  %t322 = load i32, ptr %t321, !tbaa !23
  %t324 = sext i32 %t322 to i64
  %t325 = load ptr, ptr %l155, !tbaa !29
  %t326 = load i64, ptr %l162, !tbaa !24
  %t328 = call i1 @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2edeprecatedAt(ptr %v0, ptr %t325, i64 %t326, i64 %t324, i1 false)
  store i1 %t328, ptr %l166
  br label %bb85
bb85:
  %t329 = load ptr, ptr %l139, !tbaa !29
  %t330 = load { i64, ptr }, ptr %l140, !tbaa !27
  %t331 = load i64, ptr %l141, !tbaa !24
  %t332 = load { i64, ptr }, ptr %l154, !tbaa !27
  %t333 = load i1, ptr %l166, !tbaa !21
  call void @compiler_2fsession_2ecompiler_2fsession_3aItems_2eAddDep(ptr %v1, ptr %v0, ptr %s7, ptr %t329, { i64, ptr } %t330, i64 %t331, { i64, ptr } %t332, i1 %t333)
  br label %bb86
bb86:
  call void @__olang_scope_close(ptr %s7)
  br label %bb87
bb87:
  %t334 = load i64, ptr %l12, !tbaa !24
  %t336 = add i64 %t334, 1
  store i64 %t336, ptr %l12, !tbaa !24
  br label %bb48
bb88:
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb89:
  br label %bb90
bb90:
  %t338 = load ptr, ptr %l0, !tbaa !29
  %t339 = load i64, ptr %l7, !tbaa !24
  %t340 = load i64, ptr %l3, !tbaa !24
  %t344 = call i32 @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2etypeEndingAt(ptr %v0, ptr %t338, i64 %t339, i64 %t340)
  store i32 %t344, ptr %l172
  br label %bb91
bb91:
  %t345 = load i32, ptr %l172, !tbaa !23
  store i32 %t345, ptr %l16, !tbaa !23
  %t346 = load i64, ptr %l3, !tbaa !24
  store i64 %t346, ptr %l173, !tbaa !24
  %t347 = load i32, ptr %l16, !tbaa !23
  %t348 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t351 = icmp ne i32 %t347, %t348
  br i1 %t351, label %bb92, label %bb93
bb92:
  %t353 = load ptr, ptr %l5, !tbaa !29
  %t355 = icmp eq ptr %t353, null
  br i1 %t355, label %bb94, label %bb95
bb93:
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d14, i32 0, i32 1) }, ptr %l177, !tbaa !27
  br label %bb98
bb94:
  call void @__olang_check_failed(ptr @olang_loc_5913a88474c7905c_bf4494fdd85d3108)
  unreachable
bb95:
  br label %bb96
bb96:
  %t357 = load ptr, ptr %l5, !tbaa !29
  %t358 = load i32, ptr %l16, !tbaa !23
  %t361 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eTy(ptr %v0, ptr %s0, ptr %t357, i32 %t358)
  store { i64, ptr } %t361, ptr %l182
  br label %bb97
bb97:
  %t362 = load { i64, ptr }, ptr %l182, !tbaa !27
  %t363 = extractvalue { i64, ptr } %t362, 0
  %t364 = extractvalue { i64, ptr } %t362, 1
  %t365 = mul i64 %t363, 1
  %t366 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t365)
  call void @llvm.memcpy.p0.p0.i64(ptr %t366, ptr %t364, i64 %t365, i1 false)
  %t367 = insertvalue { i64, ptr } undef, i64 %t363, 0
  %t368 = insertvalue { i64, ptr } %t367, ptr %t366, 1
  store { i64, ptr } %t368, ptr %l177, !tbaa !27
  br label %bb98
bb98:
  %t370 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t371 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  %t372 = load i64, ptr %l173, !tbaa !24
  %t373 = call i64 @__olang_fmt_i64(ptr null, i64 %t372)
  %t374 = add i64 %t371, %t373
  %t375 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t376 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  %t377 = add i64 %t374, %t376
  %t378 = load { i64, ptr }, ptr %l177, !tbaa !27
  %t379 = extractvalue { i64, ptr } %t378, 1
  %t380 = extractvalue { i64, ptr } %t378, 0
  %t381 = add i64 %t377, %t380
  %t382 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t381)
  call void @olang_textcopy(ptr %t382, ptr %t370, i64 %t371)
  %t383 = getelementptr i8, ptr %t382, i64 %t371
  %t384 = call i64 @__olang_fmt_i64(ptr %t383, i64 %t372)
  %t385 = getelementptr i8, ptr %t383, i64 %t373
  call void @olang_textcopy(ptr %t385, ptr %t375, i64 %t376)
  %t386 = getelementptr i8, ptr %t385, i64 %t376
  call void @olang_textcopy(ptr %t386, ptr %t379, i64 %t380)
  %t387 = insertvalue { i64, ptr } undef, i64 %t381, 0
  %t388 = insertvalue { i64, ptr } %t387, ptr %t382, 1
  %t390 = extractvalue { i64, ptr } %t388, 0
  %t391 = extractvalue { i64, ptr } %t388, 1
  %t392 = mul i64 %t390, 1
  %t393 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t392)
  call void @llvm.memcpy.p0.p0.i64(ptr %t393, ptr %t391, i64 %t392, i1 false)
  %t394 = insertvalue { i64, ptr } undef, i64 %t390, 0
  %t395 = insertvalue { i64, ptr } %t394, ptr %t393, 1
  call void @compiler_2fsession_2eLog(ptr %s0, { i64, ptr } %t395)
  br label %bb99
bb99:
  %t397 = load i32, ptr %l16, !tbaa !23
  %t398 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t401 = icmp eq i32 %t397, %t398
  br i1 %t401, label %bb100, label %bb101
bb100:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb101:
  br label %bb102
bb102:
  %t403 = load ptr, ptr %l0, !tbaa !29
  %t404 = load ptr, ptr %l1, !tbaa !29
  %t405 = load i32, ptr %l16, !tbaa !23
  call void @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2etypeMembers(ptr %v0, ptr %v1, ptr %t403, ptr %t404, i32 %t405)
  br label %bb103
bb103:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2eModuleOf(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l11 = alloca i64
  %l15 = alloca i64
  %l18 = alloca i64
  %l40 = alloca ptr
  %l44 = alloca i1
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/session:Analysis", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/load:Loader", ptr %t4, i32 0, i32 10
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t6)
  store i64 %t8, ptr %l11
  br label %bb1
bb1:
  %t9 = load i64, ptr %l11, !tbaa !24
  store i64 %t9, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t10 = load i64, ptr %l3, !tbaa !24
  %t11 = load i64, ptr %l2, !tbaa !24
  %t14 = icmp sgt i64 %t10, %t11
  br i1 %t14, label %bb2, label %bb3
bb2:
  %t16 = load i64, ptr %l4, !tbaa !24
  %t18 = icmp sgt i64 %t16, 0
  br i1 %t18, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l15, !tbaa !24
  br label %bb7
bb4:
  %t20 = load i64, ptr %l3, !tbaa !24
  %t21 = load i64, ptr %l2, !tbaa !24
  %t24 = sub i64 %t20, %t21
  %t25 = load i64, ptr %l4, !tbaa !24
  %t28 = add i64 %t24, %t25
  %t30 = sub i64 %t28, 1
  %t31 = load i64, ptr %l4, !tbaa !24
  %t34 = sdiv i64 %t30, %t31
  store i64 %t34, ptr %l18, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l18, !tbaa !24
  br label %bb6
bb6:
  %t36 = load i64, ptr %l18, !tbaa !24
  store i64 %t36, ptr %l15, !tbaa !24
  br label %bb7
bb7:
  %t37 = load i64, ptr %l15, !tbaa !24
  store i64 %t37, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb8
bb8:
  %t38 = load i64, ptr %l6, !tbaa !24
  %t39 = load i64, ptr %l5, !tbaa !24
  %t42 = icmp slt i64 %t38, %t39
  %t44 = xor i1 %t42, true
  br i1 %t44, label %bb9, label %bb10
bb9:
  br label %bb18
bb10:
  br label %bb11
bb11:
  %t46 = load i64, ptr %l2, !tbaa !24
  %t47 = load i64, ptr %l6, !tbaa !24
  %t48 = load i64, ptr %l4, !tbaa !24
  %t51 = mul i64 %t47, %t48
  %t54 = add i64 %t46, %t51
  store i64 %t54, ptr %l7, !tbaa !24
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/session:Analysis", ptr %t56, i32 0, i32 0
  %t59 = load ptr, ptr %t58, !tbaa !29
  %t61 = getelementptr %"compiler/load:Loader", ptr %t59, i32 0, i32 10
  %t62 = load i64, ptr %l7, !tbaa !24
  %t65 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t61, i64 %t62)
  store ptr %t65, ptr %l40
  br label %bb12
bb12:
  %t66 = load ptr, ptr %l40, !tbaa !29
  %t68 = getelementptr %"compiler/load:Module", ptr %t66, i32 0, i32 1
  %t69 = load { i64, ptr }, ptr %t68, !tbaa !27
  %t73 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %t69, { i64, ptr } %a1)
  store i1 %t73, ptr %l44
  br label %bb13
bb13:
  %t74 = load i1, ptr %l44, !tbaa !21
  br i1 %t74, label %bb14, label %bb15
bb14:
  %t75 = load i64, ptr %l7, !tbaa !24
  store i64 %t75, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  br label %bb17
bb17:
  %t77 = load i64, ptr %l6, !tbaa !24
  %t79 = add i64 %t77, 1
  store i64 %t79, ptr %l6, !tbaa !24
  br label %bb8
bb18:
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2ePlaced(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %lp2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca %"compiler/scope:Placement"
  %l8 = alloca { i64, ptr }
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l12 = alloca i64
  %l15 = alloca i1
  %l24 = alloca ptr
  %l32 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l34 = alloca i64
  %l36 = alloca i64
  %l41 = alloca %"compiler/scope:Placement"
  %l46 = alloca { i64, ptr }
  %l47 = alloca ptr
  %l48 = alloca i64
  %l49 = alloca i64
  %l50 = alloca i64
  %l56 = alloca %"compiler/session:Use"
  %s2 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsession_3aUse_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l9
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store ptr %t2, ptr %lp2
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9
  %t4 = load ptr, ptr %lp2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t9 = call i64 @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2eModuleOf(ptr %v0, ptr %v1, ptr %t5, { i64, ptr } %a1)
  store i64 %t9, ptr %l12
  br label %bb2
bb2:
  %t10 = load i64, ptr %l12, !tbaa !24
  store i64 %t10, ptr %l3, !tbaa !24
  %t11 = load i64, ptr %l3, !tbaa !24
  %t13 = icmp slt i64 %t11, 0
  br i1 %t13, label %bb3, label %bb4
bb3:
  store i1 true, ptr %l15, !tbaa !21
  br label %bb5
bb4:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/session:Analysis", ptr %t15, i32 0, i32 2
  %t18 = load ptr, ptr %t17, !tbaa !29
  %t20 = icmp eq ptr %t18, null
  store i1 %t20, ptr %l15, !tbaa !21
  br label %bb5
bb5:
  %t22 = load i1, ptr %l15, !tbaa !21
  br i1 %t22, label %bb6, label %bb7
bb6:
  %t23 = load ptr, ptr %lp2
  %t24 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t23
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t24, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/session:Analysis", ptr %t26, i32 0, i32 0
  %t29 = load ptr, ptr %t28, !tbaa !29
  %t31 = getelementptr %"compiler/load:Loader", ptr %t29, i32 0, i32 10
  %t32 = load i64, ptr %l3, !tbaa !24
  %t35 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t31, i64 %t32)
  store ptr %t35, ptr %l24
  br label %bb9
bb9:
  %t36 = load ptr, ptr %l24, !tbaa !29
  %t38 = getelementptr %"compiler/load:Module", ptr %t36, i32 0, i32 4
  %t39 = load i64, ptr %t38, !tbaa !24
  store i64 %t39, ptr %l4, !tbaa !24
  store %olang.scope zeroinitializer, ptr %s2
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/session:Analysis", ptr %t41, i32 0, i32 2
  %t44 = load ptr, ptr %t43, !tbaa !29
  %t46 = icmp eq ptr %t44, null
  br i1 %t46, label %bb10, label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_270f5d4da41f712e_3815e2adbc47561a)
  unreachable
bb11:
  br label %bb12
bb12:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/session:Analysis", ptr %t48, i32 0, i32 2
  %t51 = load ptr, ptr %t50, !tbaa !29
  %t53 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ePlacements(ptr %v0, ptr %s2, ptr %t51)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t53, ptr %l32
  br label %bb13
bb13:
  %t54 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l32
  %t55 = call ptr @__olang_scope_alloc_a(ptr %s2, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t54, ptr %t55
  store ptr %t55, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb14
bb14:
  %t57 = load i64, ptr %l6, !tbaa !24
  store i64 %t57, ptr %l34, !tbaa !24
  %t58 = load ptr, ptr %l5, !tbaa !29
  %t60 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aPlacement_3e_2eLen__H4d2672aa7d845ec0c6fc38a004384ece(ptr %s2, ptr %t58)
  store i64 %t60, ptr %l36
  br label %bb15
bb15:
  %t61 = load i64, ptr %l34, !tbaa !24
  %t62 = load i64, ptr %l36, !tbaa !24
  %t63 = icmp slt i64 %t61, %t62
  %t65 = xor i1 %t63, true
  br i1 %t65, label %bb16, label %bb17
bb16:
  br label %bb31
bb17:
  br label %bb18
bb18:
  %t67 = load ptr, ptr %l5, !tbaa !29
  %t68 = load i64, ptr %l6, !tbaa !24
  %t71 = call %"compiler/scope:Placement" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aPlacement_3e_2eAt_3ccompiler_2fscope_3aPlacement_3e(ptr %s2, ptr %s2, ptr %t67, i64 %t68)
  store %"compiler/scope:Placement" %t71, ptr %l41
  br label %bb19
bb19:
  %t72 = load %"compiler/scope:Placement", ptr %l41
  store %"compiler/scope:Placement" %t72, ptr %l7
  %t73 = getelementptr %"compiler/scope:Placement", ptr %l7, i32 0, i32 0
  %t74 = load i64, ptr %t73, !tbaa !24
  %t75 = load i64, ptr %l4, !tbaa !24
  %t78 = icmp ne i64 %t74, %t75
  br i1 %t78, label %bb20, label %bb21
bb20:
  br label %bb30
bb21:
  br label %bb22
bb22:
  %t80 = getelementptr %"compiler/scope:Placement", ptr %l7, i32 0, i32 5
  %t81 = load i1, ptr %t80, !tbaa !21
  br i1 %t81, label %bb23, label %bb24
bb23:
  store { i64, ptr } { i64 59, ptr getelementptr inbounds (<{ i64, [59 x i8] }>, ptr @.d17, i32 0, i32 1) }, ptr %l46, !tbaa !27
  br label %bb25
bb24:
  store { i64, ptr } { i64 62, ptr getelementptr inbounds (<{ i64, [62 x i8] }>, ptr @.d18, i32 0, i32 1) }, ptr %l46, !tbaa !27
  br label %bb25
bb25:
  %t83 = load { i64, ptr }, ptr %l46, !tbaa !27
  store { i64, ptr } %t83, ptr %l8, !tbaa !27
  %t84 = load ptr, ptr %lp2
  store ptr %t84, ptr %l47, !tbaa !29
  %t85 = getelementptr %"compiler/scope:Placement", ptr %l7, i32 0, i32 1
  %t86 = load i64, ptr %t85, !tbaa !24
  store i64 %t86, ptr %l48, !tbaa !24
  %t87 = getelementptr %"compiler/scope:Placement", ptr %l7, i32 0, i32 2
  %t88 = load i64, ptr %t87, !tbaa !24
  store i64 %t88, ptr %l49, !tbaa !24
  %t89 = ptrtoint ptr %v2 to i64
  store i64 %t89, ptr %l50, !tbaa !24
  %t90 = load i1, ptr @olang_2esole_2ecompiler_2fsession_3aUse_2e2
  br i1 %t90, label %bb26, label %bb27
bb26:
  %t92 = call ptr @__olang_region_make(ptr %v2)
  %t93 = ptrtoint ptr %t92 to i64
  store i64 %t93, ptr %l50, !tbaa !24
  br label %bb27
bb27:
  %t94 = getelementptr %"compiler/scope:Placement", ptr %l7, i32 0, i32 4
  %t95 = load { i64, ptr }, ptr %t94, !tbaa !27
  %t96 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t98 = extractvalue { i64, ptr } %t95, 1
  %t99 = extractvalue { i64, ptr } %t95, 0
  %t101 = extractvalue { i64, ptr } %t96, 1
  %t102 = extractvalue { i64, ptr } %t96, 0
  %t103 = add i64 %t99, %t102
  %t104 = load i64, ptr %l50
  %t105 = inttoptr i64 %t104 to ptr
  %t106 = call ptr @__olang_scope_alloc(ptr %t105, i64 %t103)
  call void @olang_textcopy(ptr %t106, ptr %t98, i64 %t99)
  %t107 = getelementptr i8, ptr %t106, i64 %t99
  call void @olang_textcopy(ptr %t107, ptr %t101, i64 %t102)
  %t108 = insertvalue { i64, ptr } undef, i64 %t103, 0
  %t109 = insertvalue { i64, ptr } %t108, ptr %t106, 1
  %t111 = load i64, ptr %l50
  %t112 = inttoptr i64 %t111 to ptr
  %t113 = extractvalue { i64, ptr } %t109, 0
  %t114 = extractvalue { i64, ptr } %t109, 1
  %t115 = mul i64 %t113, 1
  %t116 = call ptr @__olang_scope_alloc(ptr %t112, i64 %t115)
  call void @llvm.memcpy.p0.p0.i64(ptr %t116, ptr %t114, i64 %t115, i1 false)
  %t117 = insertvalue { i64, ptr } undef, i64 %t113, 0
  %t118 = insertvalue { i64, ptr } %t117, ptr %t116, 1
  %t119 = load i64, ptr %l48, !tbaa !24
  %t120 = load i64, ptr %l49, !tbaa !24
  %t122 = call %"compiler/session:Use" @compiler_2fsession_3aUse_2ector(ptr %v2, ptr %v2, i64 %t119, i64 %t120, { i64, ptr } %t118)
  store %"compiler/session:Use" %t122, ptr %l56
  br label %bb28
bb28:
  %t123 = load ptr, ptr %l47, !tbaa !29
  %t124 = load %"compiler/session:Use", ptr %l56
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsession_3aUse_3e_2ePush_3ccompiler_2fsession_3aUse_3e(ptr %v2, ptr %v2, ptr %t123, %"compiler/session:Use" %t124)
  br label %bb29
bb29:
  br label %bb30
bb30:
  %t125 = load i64, ptr %l6, !tbaa !24
  %t127 = add i64 %t125, 1
  store i64 %t127, ptr %l6, !tbaa !24
  br label %bb14
bb31:
  call void @__olang_scope_close(ptr %s2)
  %t129 = load ptr, ptr %lp2
  %t130 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t129
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t130, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local { i64, ptr } @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2eRealOfFile(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca ptr
  %l8 = alloca i64
  %l10 = alloca i64
  %l15 = alloca ptr
  %l25 = alloca { i64, ptr }
  %l26 = alloca { i64, ptr }
  %l27 = alloca i64
  %l28 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/session:Analysis", ptr %a0, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/load:Loader", ptr %t4, i32 0, i32 10
  store ptr %t6, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb1
bb1:
  %t8 = load i64, ptr %l3, !tbaa !24
  store i64 %t8, ptr %l8, !tbaa !24
  %t9 = load ptr, ptr %l2, !tbaa !29
  %t11 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t9)
  store i64 %t11, ptr %l10
  br label %bb2
bb2:
  %t12 = load i64, ptr %l8, !tbaa !24
  %t13 = load i64, ptr %l10, !tbaa !24
  %t14 = icmp slt i64 %t12, %t13
  %t16 = xor i1 %t14, true
  br i1 %t16, label %bb3, label %bb4
bb3:
  br label %bb11
bb4:
  br label %bb5
bb5:
  %t18 = load ptr, ptr %l2, !tbaa !29
  %t19 = load i64, ptr %l3, !tbaa !24
  %t22 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t18, i64 %t19)
  store ptr %t22, ptr %l15
  br label %bb6
bb6:
  %t23 = load ptr, ptr %l15, !tbaa !29
  store ptr %t23, ptr %l4, !tbaa !29
  %t24 = load ptr, ptr %l4, !tbaa !29
  %t26 = getelementptr %"compiler/load:Module", ptr %t24, i32 0, i32 4
  %t27 = load i64, ptr %t26, !tbaa !24
  %t31 = icmp eq i64 %t27, %a1
  br i1 %t31, label %bb7, label %bb8
bb7:
  %t33 = load ptr, ptr %l4, !tbaa !29
  %t35 = getelementptr %"compiler/load:Module", ptr %t33, i32 0, i32 1
  %t36 = load { i64, ptr }, ptr %t35, !tbaa !27
  %t38 = extractvalue { i64, ptr } %t36, 1
  %t39 = extractvalue { i64, ptr } %t36, 0
  %t40 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t39)
  call void @olang_textcopy(ptr %t40, ptr %t38, i64 %t39)
  %t41 = insertvalue { i64, ptr } undef, i64 %t39, 0
  %t42 = insertvalue { i64, ptr } %t41, ptr %t40, 1
  store { i64, ptr } %t42, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  br label %bb10
bb10:
  %t44 = load i64, ptr %l3, !tbaa !24
  %t46 = add i64 %t44, 1
  store i64 %t46, ptr %l3, !tbaa !24
  br label %bb1
bb11:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d19, i32 0, i32 1) }, ptr %l25, !tbaa !27
  %t48 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t48, ptr %l26, !tbaa !27
  %t49 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t50 = extractvalue { i64, ptr } %t49, 0
  store i64 %t50, ptr %l27, !tbaa !24
  %t51 = load i64, ptr %l27, !tbaa !24
  %t52 = mul i64 %t51, 1
  %t53 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t52)
  %t54 = insertvalue { i64, ptr } undef, i64 %t51, 0
  %t55 = insertvalue { i64, ptr } %t54, ptr %t53, 1
  store { i64, ptr } %t55, ptr %l28, !tbaa !27
  %t56 = getelementptr { i64, ptr }, ptr %l28, i32 0, i32 1
  %t57 = load ptr, ptr %t56, !tbaa !27
  %t58 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !27
  %t60 = load i64, ptr %l27, !tbaa !24
  %t61 = mul i64 %t60, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t57, ptr %t59, i64 %t61, i1 false)
  %t62 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t62, ptr %l26, !tbaa !27
  %t63 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t63, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i32, %"compiler/session:Found" } @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2edescribe(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, [6 x i64] } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [6 x i64] }
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %lp7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca ptr
  %l12 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %l14 = alloca i32
  %l15 = alloca i64
  %lp16 = alloca ptr
  %l17 = alloca i64
  %l18 = alloca i32
  %l19 = alloca ptr
  %l20 = alloca %"compiler/typed:Local"
  %l21 = alloca i64
  %lp23 = alloca ptr
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca { i64, ptr }
  %l27 = alloca { i64, ptr }
  %l28 = alloca i64
  %l29 = alloca ptr
  %l36 = alloca { i64, ptr }
  %l39 = alloca ptr
  %l44 = alloca ptr
  %l52 = alloca { i64, ptr }
  %l53 = alloca i32
  %l55 = alloca i1
  %l62 = alloca i64
  %l63 = alloca { i64, ptr }
  %l66 = alloca { i64, ptr }
  %l69 = alloca { i64, ptr }
  %l71 = alloca { i64, ptr }
  %l73 = alloca { i64, ptr }
  %l79 = alloca { i64, ptr }
  %l81 = alloca { i64, ptr }
  %l82 = alloca i64
  %l88 = alloca ptr
  %l94 = alloca %"compiler/session:Found"
  %l104 = alloca i64
  %l111 = alloca ptr
  %l121 = alloca ptr
  %l123 = alloca i1
  %l124 = alloca { i64, ptr }
  %l125 = alloca ptr
  %l133 = alloca { i64, ptr }
  %l143 = alloca { i64, ptr }
  %l149 = alloca { i64, ptr }
  %l159 = alloca { i64, ptr }
  %l166 = alloca { i64, ptr }
  %l167 = alloca i64
  %l171 = alloca ptr
  %l178 = alloca { i64, ptr }
  %l179 = alloca { i64, ptr }
  %l182 = alloca { i64, ptr }
  %l184 = alloca { i64, ptr }
  %l186 = alloca { i64, ptr }
  %l189 = alloca { i64, ptr }
  %l190 = alloca i64
  %l196 = alloca ptr
  %l202 = alloca %"compiler/session:Found"
  %l207 = alloca %"compiler/session:memberInfo"
  %l211 = alloca %"compiler/session:memberInfo"
  %l212 = alloca i32
  %l214 = alloca i64
  %l216 = alloca { i64, ptr }
  %l221 = alloca { i64, ptr }
  %l225 = alloca { i64, ptr }
  %l229 = alloca %"compiler/session:Found"
  %l240 = alloca ptr
  %l245 = alloca %"compiler/typed:Local"
  %l249 = alloca i64
  %l252 = alloca { i64, ptr }
  %l253 = alloca { i64, ptr }
  %l262 = alloca { i64, ptr }
  %l267 = alloca { i64, ptr }
  %l270 = alloca { i64, ptr }
  %l271 = alloca { i64, ptr }
  %l274 = alloca { i64, ptr }
  %l279 = alloca ptr
  %l286 = alloca %"compiler/session:Found"
  %l293 = alloca i64
  %l297 = alloca { i64, ptr }
  %l298 = alloca { i64, ptr }
  %l299 = alloca i64
  %l305 = alloca ptr
  %l311 = alloca %"compiler/session:Found"
  %l319 = alloca ptr
  %l320 = alloca i64
  %l325 = alloca { i64, ptr }
  %l333 = alloca { i64, ptr }
  %l335 = alloca { i64, ptr }
  %l336 = alloca { i64, ptr }
  %l337 = alloca i64
  %l343 = alloca %"compiler/session:Found"
  %s1 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %rv = alloca { i32, %"compiler/session:Found" }
  store ptr %a0, ptr %l0
  store { i64, [6 x i64] } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/session:Analysis", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t6 = load { i64, [6 x i64] }, ptr %l1
  %t8 = extractvalue { i64, [6 x i64] } %t6, 0
  %t9 = icmp eq i64 %t8, 1
  br i1 %t9, label %bb1, label %bb2
bb1:
  %t11 = getelementptr { i64, [6 x i64] }, ptr %l1, i32 0, i32 1
  %t12 = getelementptr { i64, { i64, ptr } }, ptr %t11, i32 0, i32 0
  %t13 = load i64, ptr %t12
  store i64 %t13, ptr %l3, !tbaa !24
  %t15 = getelementptr { i64, [6 x i64] }, ptr %l1, i32 0, i32 1
  %t16 = getelementptr { i64, { i64, ptr } }, ptr %t15, i32 0, i32 1
  %t17 = load { i64, ptr }, ptr %t16
  store { i64, ptr } %t17, ptr %l4, !tbaa !27
  br label %bb3
bb2:
  br label %bb35
bb3:
  store %olang.scope zeroinitializer, ptr %s1
  %t19 = load ptr, ptr %l2, !tbaa !29
  %t21 = icmp eq ptr %t19, null
  br i1 %t21, label %bb4, label %bb5
bb4:
  call void @__olang_check_failed(ptr @olang_loc_34b5353ec7fa6306_74a43705b3ad61d2)
  unreachable
bb5:
  br label %bb6
bb6:
  %t23 = load ptr, ptr %l2, !tbaa !29
  store ptr %t23, ptr %l39, !tbaa !29
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/session:Analysis", ptr %t24, i32 0, i32 2
  %t27 = load ptr, ptr %t26, !tbaa !29
  %t29 = icmp eq ptr %t27, null
  br i1 %t29, label %bb7, label %bb8
bb7:
  call void @__olang_check_failed(ptr @olang_loc_34b5353ec7fa6306_74a43705b3ad61d2)
  unreachable
bb8:
  br label %bb9
bb9:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/session:Analysis", ptr %t31, i32 0, i32 2
  %t34 = load ptr, ptr %t33, !tbaa !29
  store ptr %t34, ptr %l44, !tbaa !29
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/session:Analysis", ptr %t35, i32 0, i32 3
  %t38 = load ptr, ptr %t37, !tbaa !29
  %t40 = icmp eq ptr %t38, null
  br i1 %t40, label %bb10, label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_34b5353ec7fa6306_74a43705b3ad61d2)
  unreachable
bb11:
  br label %bb12
bb12:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/session:Analysis", ptr %t42, i32 0, i32 3
  %t45 = load ptr, ptr %t44, !tbaa !29
  %t46 = load i64, ptr %l3, !tbaa !24
  %t47 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t48 = load ptr, ptr %l39, !tbaa !29
  %t49 = load ptr, ptr %l44, !tbaa !29
  %t53 = call { i32, { i64, ptr } } @compiler_2fexplain_2eItem(ptr %v0, ptr %v0, ptr %v0, ptr %v1, ptr %s1, ptr %t48, ptr %t49, ptr %t45, i64 %t46, { i64, ptr } %t47)
  %t54 = extractvalue { i32, { i64, ptr } } %t53, 1
  %t55 = extractvalue { i32, { i64, ptr } } %t53, 0
  store i32 %t55, ptr %l53
  %t56 = icmp ne i32 %t55, 0
  br i1 %t56, label %bb14, label %ok.57, !prof !99
ok.57:
  store { i64, ptr } %t54, ptr %l52
  br label %bb13
bb13:
  %t58 = load { i64, ptr }, ptr %l52, !tbaa !27
  store { i64, ptr } %t58, ptr %l36, !tbaa !27
  br label %bb16
bb14:
  %t59 = load i32, ptr %l53, !tbaa !23
  %t60 = ashr i32 %t59, 16
  %t62 = icmp eq i32 %t60, 1
  store i1 %t62, ptr %l55, !tbaa !21
  br label %bb15
bb15:
  call void @__olang_scope_close(ptr %s1)
  %t64 = insertvalue { i32, %"compiler/session:Found" } zeroinitializer, i32 65536, 0
  store { i32, %"compiler/session:Found" } %t64, ptr %rv
  br label %ret
bb16:
  %t65 = load { i64, ptr }, ptr %l36, !tbaa !27
  store { i64, ptr } %t65, ptr %l5, !tbaa !27
  %t66 = load ptr, ptr %l2, !tbaa !29
  %t68 = icmp eq ptr %t66, null
  br i1 %t68, label %bb17, label %bb18
bb17:
  call void @__olang_check_failed(ptr @olang_loc_36d5ca6fa18785ed_2ca50b1ef1b0ebf9)
  unreachable
bb18:
  br label %bb19
bb19:
  %t70 = load ptr, ptr %l2, !tbaa !29
  %t71 = load i64, ptr %l3, !tbaa !24
  %t72 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t76 = call i64 @compiler_2fsession_2edeclOf(ptr %v0, ptr %v1, ptr %t70, i64 %t71, { i64, ptr } %t72)
  store i64 %t76, ptr %l62
  br label %bb20
bb20:
  %t77 = load i64, ptr %l62, !tbaa !24
  store i64 %t77, ptr %l6, !tbaa !24
  %t78 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t78, ptr %l63, !tbaa !27
  %t79 = load i64, ptr %l6, !tbaa !24
  %t81 = icmp sge i64 %t79, 0
  br i1 %t81, label %bb21, label %bb22
bb21:
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t84 = load i64, ptr %l3, !tbaa !24
  %t87 = call { i64, ptr } @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2eTextOf(ptr %v0, ptr %v0, ptr %t83, i64 %t84)
  store { i64, ptr } %t87, ptr %l69
  br label %bb23
bb22:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d20, i32 0, i32 1) }, ptr %l66, !tbaa !27
  br label %bb25
bb23:
  %t88 = load i64, ptr %l6, !tbaa !24
  %t89 = load { i64, ptr }, ptr %l69, !tbaa !27
  %t91 = call { i64, ptr } @compiler_2fdoc_2eComment(ptr %v0, ptr %s1, { i64, ptr } %t89, i64 %t88, i1 true)
  store { i64, ptr } %t91, ptr %l71
  br label %bb24
bb24:
  %t92 = load { i64, ptr }, ptr %l71, !tbaa !27
  %t93 = extractvalue { i64, ptr } %t92, 0
  %t94 = extractvalue { i64, ptr } %t92, 1
  %t95 = mul i64 %t93, 1
  %t96 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t95)
  call void @llvm.memcpy.p0.p0.i64(ptr %t96, ptr %t94, i64 %t95, i1 false)
  %t97 = insertvalue { i64, ptr } undef, i64 %t93, 0
  %t98 = insertvalue { i64, ptr } %t97, ptr %t96, 1
  store { i64, ptr } %t98, ptr %l66, !tbaa !27
  br label %bb25
bb25:
  %t100 = load { i64, ptr }, ptr %l63, !tbaa !27
  %t101 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t102 = call { i64, ptr } @compiler_2fsession_2ehover(ptr %s1, ptr %s1, ptr %s1, { i64, ptr } %t100, { i64, ptr } %t101)
  store { i64, ptr } %t102, ptr %l73
  br label %bb26
bb26:
  %t103 = load ptr, ptr %l2, !tbaa !29
  %t105 = icmp eq ptr %t103, null
  br i1 %t105, label %bb27, label %bb28
bb27:
  call void @__olang_check_failed(ptr @olang_loc_913972385efaf6d8_94fc87626a418744)
  unreachable
bb28:
  br label %bb29
bb29:
  %t107 = load ptr, ptr %l2, !tbaa !29
  %t108 = load i64, ptr %l3, !tbaa !24
  %t109 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t113 = call { i64, ptr } @compiler_2fsession_2eexampleText(ptr %v0, ptr %v1, ptr %s1, ptr %t107, i64 %t108, { i64, ptr } %t109)
  store { i64, ptr } %t113, ptr %l79
  br label %bb30
bb30:
  %t114 = load { i64, ptr }, ptr %l73, !tbaa !27
  %t115 = extractvalue { i64, ptr } %t114, 1
  %t116 = extractvalue { i64, ptr } %t114, 0
  %t117 = load { i64, ptr }, ptr %l79, !tbaa !27
  %t118 = extractvalue { i64, ptr } %t117, 1
  %t119 = extractvalue { i64, ptr } %t117, 0
  %t120 = add i64 %t116, %t119
  %t121 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t120)
  call void @olang_textcopy(ptr %t121, ptr %t115, i64 %t116)
  %t122 = getelementptr i8, ptr %t121, i64 %t116
  call void @olang_textcopy(ptr %t122, ptr %t118, i64 %t119)
  %t123 = insertvalue { i64, ptr } undef, i64 %t120, 0
  %t124 = insertvalue { i64, ptr } %t123, ptr %t121, 1
  %t125 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t125, ptr %lp7
  %t127 = load ptr, ptr %lp7
  store { i64, ptr } %t124, ptr %t127, !tbaa !27
  %t128 = load ptr, ptr %lp7
  %t129 = load { i64, ptr }, ptr %t128, !tbaa !27
  store { i64, ptr } %t129, ptr %l81, !tbaa !27
  %t130 = ptrtoint ptr %v2 to i64
  store i64 %t130, ptr %l82, !tbaa !24
  %t131 = load i1, ptr @olang_2esole_2ecompiler_2fsession_3aFound_2e1
  br i1 %t131, label %bb31, label %bb32
bb31:
  %t133 = call ptr @__olang_region_make(ptr %v2)
  %t134 = ptrtoint ptr %t133 to i64
  store i64 %t134, ptr %l82, !tbaa !24
  br label %bb32
bb32:
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t137 = getelementptr %"compiler/session:Analysis", ptr %t135, i32 0, i32 0
  %t138 = load ptr, ptr %t137, !tbaa !29
  %t140 = getelementptr %"compiler/load:Loader", ptr %t138, i32 0, i32 10
  %t141 = load i64, ptr %l3, !tbaa !24
  %t144 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t140, i64 %t141)
  store ptr %t144, ptr %l88
  br label %bb33
bb33:
  %t145 = load ptr, ptr %l88, !tbaa !29
  %t147 = getelementptr %"compiler/load:Module", ptr %t145, i32 0, i32 1
  %t148 = load { i64, ptr }, ptr %t147, !tbaa !27
  %t150 = extractvalue { i64, ptr } %t148, 1
  %t151 = extractvalue { i64, ptr } %t148, 0
  %t152 = load i64, ptr %l82
  %t153 = inttoptr i64 %t152 to ptr
  %t154 = call ptr @__olang_scope_alloc(ptr %t153, i64 %t151)
  call void @olang_textcopy(ptr %t154, ptr %t150, i64 %t151)
  %t155 = insertvalue { i64, ptr } undef, i64 %t151, 0
  %t156 = insertvalue { i64, ptr } %t155, ptr %t154, 1
  %t158 = load i64, ptr %l82
  %t159 = inttoptr i64 %t158 to ptr
  %t160 = extractvalue { i64, ptr } %t156, 0
  %t161 = extractvalue { i64, ptr } %t156, 1
  %t162 = mul i64 %t160, 1
  %t163 = call ptr @__olang_scope_alloc(ptr %t159, i64 %t162)
  call void @llvm.memcpy.p0.p0.i64(ptr %t163, ptr %t161, i64 %t162, i1 false)
  %t164 = insertvalue { i64, ptr } undef, i64 %t160, 0
  %t165 = insertvalue { i64, ptr } %t164, ptr %t163, 1
  %t166 = load i64, ptr %l6, !tbaa !24
  %t167 = load { i64, ptr }, ptr %l81, !tbaa !27
  %t170 = call %"compiler/session:Found" @compiler_2fsession_3aFound_2ector(ptr %v2, ptr %v2, ptr %v2, { i64, ptr } %t167, { i64, ptr } %t165, i64 %t166)
  store %"compiler/session:Found" %t170, ptr %l94
  br label %bb34
bb34:
  call void @__olang_scope_close(ptr %s1)
  %t171 = load %"compiler/session:Found", ptr %l94
  %t172 = insertvalue { i32, %"compiler/session:Found" } zeroinitializer, %"compiler/session:Found" %t171, 1
  store { i32, %"compiler/session:Found" } %t172, ptr %rv
  br label %ret
bb35:
  %t173 = load { i64, [6 x i64] }, ptr %l1
  %t175 = extractvalue { i64, [6 x i64] } %t173, 0
  %t176 = icmp eq i64 %t175, 2
  br i1 %t176, label %bb36, label %bb37
bb36:
  %t178 = getelementptr { i64, [6 x i64] }, ptr %l1, i32 0, i32 1
  %t179 = getelementptr { i64 }, ptr %t178, i32 0, i32 0
  %t180 = load i64, ptr %t179
  store i64 %t180, ptr %l8, !tbaa !24
  br label %bb38
bb37:
  br label %bb91
bb38:
  store %olang.scope zeroinitializer, ptr %s5
  %t182 = load ptr, ptr %l2, !tbaa !29
  %t184 = icmp eq ptr %t182, null
  br i1 %t184, label %bb39, label %bb40
bb39:
  call void @__olang_check_failed(ptr @olang_loc_50b486dff56c46f7_6641abdfc6e3fb13)
  unreachable
bb40:
  br label %bb41
bb41:
  %t186 = load ptr, ptr %l2, !tbaa !29
  %t189 = getelementptr %"compiler/check:Checker", ptr %t186, i32 0, i32 1
  %t190 = load ptr, ptr %t189, !tbaa !29
  %t191 = load i64, ptr %l8, !tbaa !24
  %t194 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t190, i64 %t191)
  store i64 %t194, ptr %l104
  br label %bb42
bb42:
  %t195 = load i64, ptr %l104, !tbaa !24
  store i64 %t195, ptr %l9, !tbaa !24
  %t196 = load ptr, ptr %l2, !tbaa !29
  %t198 = icmp eq ptr %t196, null
  br i1 %t198, label %bb43, label %bb44
bb43:
  call void @__olang_check_failed(ptr @olang_loc_e9f7bb5439d2c10a_6c9ebd98d3e3d5ee)
  unreachable
bb44:
  br label %bb45
bb45:
  %t200 = load ptr, ptr %l2, !tbaa !29
  %t203 = getelementptr %"compiler/check:Checker", ptr %t200, i32 0, i32 1
  %t204 = load ptr, ptr %t203, !tbaa !29
  %t205 = load i64, ptr %l8, !tbaa !24
  %t208 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %s5, ptr %t204, i64 %t205)
  store ptr %t208, ptr %l111
  br label %bb46
bb46:
  %t209 = load ptr, ptr %l111, !tbaa !29
  %t211 = getelementptr %"compiler/ast:Func", ptr %t209, i32 0, i32 0
  %t212 = getelementptr %"compiler/source:Span", ptr %t211, i32 0, i32 0
  %t213 = load i32, ptr %t212, !tbaa !23
  %t215 = sext i32 %t213 to i64
  store i64 %t215, ptr %l10, !tbaa !24
  %t217 = load ptr, ptr %l2, !tbaa !29
  %t219 = icmp eq ptr %t217, null
  br i1 %t219, label %bb47, label %bb48
bb47:
  call void @__olang_check_failed(ptr @olang_loc_f7a7bb63ca62da11_77899a051c081195)
  unreachable
bb48:
  br label %bb49
bb49:
  %t221 = load ptr, ptr %l2, !tbaa !29
  %t224 = getelementptr %"compiler/check:Checker", ptr %t221, i32 0, i32 1
  %t225 = load ptr, ptr %t224, !tbaa !29
  %t226 = load i64, ptr %l8, !tbaa !24
  %t229 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t225, i64 %t226)
  store ptr %t229, ptr %l121
  br label %bb50
bb50:
  %t230 = load ptr, ptr %l121, !tbaa !29
  store ptr %t230, ptr %l11, !tbaa !29
  %t231 = load ptr, ptr %l11, !tbaa !29
  %t233 = call i1 @compiler_2fast_2ecompiler_2fast_3aFunc_2eIsBuilder(ptr %v0, ptr %t231)
  store i1 %t233, ptr %l123
  br label %bb51
bb51:
  %t234 = load i1, ptr %l123, !tbaa !21
  br i1 %t234, label %bb52, label %bb53
bb52:
  %t235 = load ptr, ptr %l11, !tbaa !29
  store ptr %t235, ptr %l125, !tbaa !29
  %t236 = load ptr, ptr %l2, !tbaa !29
  %t238 = icmp eq ptr %t236, null
  br i1 %t238, label %bb54, label %bb55
bb53:
  %t240 = load ptr, ptr %l2, !tbaa !29
  %t242 = icmp eq ptr %t240, null
  br i1 %t242, label %bb62, label %bb63
bb54:
  call void @__olang_check_failed(ptr @olang_loc_6d2a6542ebcc5b1c_c6866a22acbc6980)
  unreachable
bb55:
  br label %bb56
bb56:
  %t244 = load ptr, ptr %l2, !tbaa !29
  %t247 = getelementptr %"compiler/check:Checker", ptr %t244, i32 0, i32 1
  %t248 = load ptr, ptr %t247, !tbaa !29
  %t250 = getelementptr %"compiler/generic:Program", ptr %t248, i32 0, i32 0
  %t251 = load ptr, ptr %t250, !tbaa !29
  %t253 = getelementptr %"compiler/load:Loader", ptr %t251, i32 0, i32 3
  %t254 = load ptr, ptr %t253, !tbaa !29
  %t255 = load ptr, ptr %l125, !tbaa !29
  %t257 = call { i64, ptr } @compiler_2fast_2eOwnerTarget(ptr %v0, ptr %v0, ptr %s5, ptr %t255, ptr %t254)
  store { i64, ptr } %t257, ptr %l133
  br label %bb57
bb57:
  %t258 = load ptr, ptr %l2, !tbaa !29
  %t260 = icmp eq ptr %t258, null
  br i1 %t260, label %bb58, label %bb59
bb58:
  call void @__olang_check_failed(ptr @olang_loc_6d2a6542ebcc5b1c_c6866a22acbc6980)
  unreachable
bb59:
  br label %bb60
bb60:
  %t262 = load ptr, ptr %l2, !tbaa !29
  %t265 = getelementptr %"compiler/check:Checker", ptr %t262, i32 0, i32 1
  %t266 = load ptr, ptr %t265, !tbaa !29
  %t268 = getelementptr %"compiler/generic:Program", ptr %t266, i32 0, i32 0
  %t269 = load ptr, ptr %t268, !tbaa !29
  %t271 = getelementptr %"compiler/load:Loader", ptr %t269, i32 0, i32 3
  %t272 = load ptr, ptr %t271, !tbaa !29
  %t273 = load ptr, ptr %l11, !tbaa !29
  %t275 = getelementptr %"compiler/ast:Func", ptr %t273, i32 0, i32 10
  %t276 = load i32, ptr %t275, !tbaa !23
  %t279 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %s5, ptr %t272, i32 %t276)
  store { i64, ptr } %t279, ptr %l143
  br label %bb61
bb61:
  %t280 = load { i64, ptr }, ptr %l133, !tbaa !27
  %t281 = extractvalue { i64, ptr } %t280, 1
  %t282 = extractvalue { i64, ptr } %t280, 0
  %t283 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d21, i32 0, i32 1) }, 1
  %t284 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d21, i32 0, i32 1) }, 0
  %t285 = add i64 %t282, %t284
  %t286 = load { i64, ptr }, ptr %l143, !tbaa !27
  %t287 = extractvalue { i64, ptr } %t286, 1
  %t288 = extractvalue { i64, ptr } %t286, 0
  %t289 = add i64 %t285, %t288
  %t290 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t289)
  call void @olang_textcopy(ptr %t290, ptr %t281, i64 %t282)
  %t291 = getelementptr i8, ptr %t290, i64 %t282
  call void @olang_textcopy(ptr %t291, ptr %t283, i64 %t284)
  %t292 = getelementptr i8, ptr %t291, i64 %t284
  call void @olang_textcopy(ptr %t292, ptr %t287, i64 %t288)
  %t293 = insertvalue { i64, ptr } undef, i64 %t289, 0
  %t294 = insertvalue { i64, ptr } %t293, ptr %t290, 1
  store { i64, ptr } %t294, ptr %l124, !tbaa !27
  br label %bb70
bb62:
  call void @__olang_check_failed(ptr @olang_loc_6d2a6542ebcc5b1c_c6866a22acbc6980)
  unreachable
bb63:
  br label %bb64
bb64:
  %t296 = load ptr, ptr %l2, !tbaa !29
  %t297 = load i64, ptr %l8, !tbaa !24
  %t300 = call { i64, ptr } @compiler_2fdoc_2eReceiverName(ptr %v0, ptr %s5, ptr %t296, i64 %t297)
  store { i64, ptr } %t300, ptr %l149
  br label %bb65
bb65:
  %t301 = load ptr, ptr %l2, !tbaa !29
  %t303 = icmp eq ptr %t301, null
  br i1 %t303, label %bb66, label %bb67
bb66:
  call void @__olang_check_failed(ptr @olang_loc_6d2a6542ebcc5b1c_c6866a22acbc6980)
  unreachable
bb67:
  br label %bb68
bb68:
  %t305 = load ptr, ptr %l2, !tbaa !29
  %t308 = getelementptr %"compiler/check:Checker", ptr %t305, i32 0, i32 1
  %t309 = load ptr, ptr %t308, !tbaa !29
  %t311 = getelementptr %"compiler/generic:Program", ptr %t309, i32 0, i32 0
  %t312 = load ptr, ptr %t311, !tbaa !29
  %t314 = getelementptr %"compiler/load:Loader", ptr %t312, i32 0, i32 3
  %t315 = load ptr, ptr %t314, !tbaa !29
  %t316 = load ptr, ptr %l11, !tbaa !29
  %t318 = getelementptr %"compiler/ast:Func", ptr %t316, i32 0, i32 2
  %t319 = load i32, ptr %t318, !tbaa !23
  %t322 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %s5, ptr %t315, i32 %t319)
  store { i64, ptr } %t322, ptr %l159
  br label %bb69
bb69:
  %t323 = load { i64, ptr }, ptr %l149, !tbaa !27
  %t324 = extractvalue { i64, ptr } %t323, 1
  %t325 = extractvalue { i64, ptr } %t323, 0
  %t326 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d22, i32 0, i32 1) }, 1
  %t327 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d22, i32 0, i32 1) }, 0
  %t328 = add i64 %t325, %t327
  %t329 = load { i64, ptr }, ptr %l159, !tbaa !27
  %t330 = extractvalue { i64, ptr } %t329, 1
  %t331 = extractvalue { i64, ptr } %t329, 0
  %t332 = add i64 %t328, %t331
  %t333 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t332)
  call void @olang_textcopy(ptr %t333, ptr %t324, i64 %t325)
  %t334 = getelementptr i8, ptr %t333, i64 %t325
  call void @olang_textcopy(ptr %t334, ptr %t326, i64 %t327)
  %t335 = getelementptr i8, ptr %t334, i64 %t327
  call void @olang_textcopy(ptr %t335, ptr %t330, i64 %t331)
  %t336 = insertvalue { i64, ptr } undef, i64 %t332, 0
  %t337 = insertvalue { i64, ptr } %t336, ptr %t333, 1
  store { i64, ptr } %t337, ptr %l124, !tbaa !27
  br label %bb70
bb70:
  %t339 = load { i64, ptr }, ptr %l124, !tbaa !27
  store { i64, ptr } %t339, ptr %l12, !tbaa !27
  %t340 = load ptr, ptr %l2, !tbaa !29
  %t342 = icmp eq ptr %t340, null
  br i1 %t342, label %bb71, label %bb72
bb71:
  call void @__olang_check_failed(ptr @olang_loc_9453126c7f8f920b_6892400c5eb9861f)
  unreachable
bb72:
  br label %bb73
bb73:
  %t344 = load ptr, ptr %l2, !tbaa !29
  %t345 = load i64, ptr %l9, !tbaa !24
  %t346 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t350 = call { i64, ptr } @compiler_2fsession_2eexampleText(ptr %v0, ptr %s5, ptr %s5, ptr %t344, i64 %t345, { i64, ptr } %t346)
  store { i64, ptr } %t350, ptr %l166
  br label %bb74
bb74:
  %t351 = load { i64, ptr }, ptr %l166, !tbaa !27
  store { i64, ptr } %t351, ptr %l13, !tbaa !27
  %t352 = ptrtoint ptr %v2 to i64
  store i64 %t352, ptr %l167, !tbaa !24
  %t353 = load i1, ptr @olang_2esole_2ecompiler_2fsession_3aFound_2e0
  br i1 %t353, label %bb75, label %bb76
bb75:
  %t355 = call ptr @__olang_region_make(ptr %v2)
  %t356 = ptrtoint ptr %t355 to i64
  store i64 %t356, ptr %l167, !tbaa !24
  br label %bb76
bb76:
  %t357 = load ptr, ptr %l2, !tbaa !29
  %t359 = icmp eq ptr %t357, null
  br i1 %t359, label %bb77, label %bb78
bb77:
  call void @__olang_check_failed(ptr @olang_loc_9fba17dd33d652ce_1e95afa29dd6ec2a)
  unreachable
bb78:
  br label %bb79
bb79:
  %t361 = load ptr, ptr %l2, !tbaa !29
  store ptr %t361, ptr %l171, !tbaa !29
  %t362 = load ptr, ptr %l0, !tbaa !29
  %t364 = getelementptr %"compiler/session:Analysis", ptr %t362, i32 0, i32 2
  %t365 = load ptr, ptr %t364, !tbaa !29
  %t367 = icmp eq ptr %t365, null
  br i1 %t367, label %bb80, label %bb81
bb80:
  call void @__olang_check_failed(ptr @olang_loc_9fba17dd33d652ce_1e95afa29dd6ec2a)
  unreachable
bb81:
  br label %bb82
bb82:
  %t369 = load ptr, ptr %l0, !tbaa !29
  %t371 = getelementptr %"compiler/session:Analysis", ptr %t369, i32 0, i32 2
  %t372 = load ptr, ptr %t371, !tbaa !29
  %t373 = load i64, ptr %l8, !tbaa !24
  %t374 = load ptr, ptr %l171, !tbaa !29
  %t377 = call { i64, ptr } @compiler_2fexplain_2eFnText(ptr %v0, ptr %v0, ptr %s5, ptr %t374, ptr %t372, i64 %t373)
  store { i64, ptr } %t377, ptr %l178
  br label %bb83
bb83:
  %t378 = load { i64, ptr }, ptr %l178, !tbaa !27
  %t379 = extractvalue { i64, ptr } %t378, 0
  %t380 = extractvalue { i64, ptr } %t378, 1
  %t381 = mul i64 %t379, 1
  %t382 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t381)
  call void @llvm.memcpy.p0.p0.i64(ptr %t382, ptr %t380, i64 %t381, i1 false)
  %t383 = insertvalue { i64, ptr } undef, i64 %t379, 0
  %t384 = insertvalue { i64, ptr } %t383, ptr %t382, 1
  store { i64, ptr } %t384, ptr %l179, !tbaa !27
  %t385 = load ptr, ptr %l0, !tbaa !29
  %t386 = load i64, ptr %l9, !tbaa !24
  %t389 = call { i64, ptr } @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2eTextOf(ptr %v0, ptr %v0, ptr %t385, i64 %t386)
  store { i64, ptr } %t389, ptr %l182
  br label %bb84
bb84:
  %t390 = load i64, ptr %l10, !tbaa !24
  %t391 = load { i64, ptr }, ptr %l182, !tbaa !27
  %t393 = call { i64, ptr } @compiler_2fdoc_2eAbove(ptr %v0, ptr %s5, { i64, ptr } %t391, i64 %t390)
  store { i64, ptr } %t393, ptr %l184
  br label %bb85
bb85:
  %t394 = load { i64, ptr }, ptr %l184, !tbaa !27
  %t395 = extractvalue { i64, ptr } %t394, 0
  %t396 = extractvalue { i64, ptr } %t394, 1
  %t397 = mul i64 %t395, 1
  %t398 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t397)
  call void @llvm.memcpy.p0.p0.i64(ptr %t398, ptr %t396, i64 %t397, i1 false)
  %t399 = insertvalue { i64, ptr } undef, i64 %t395, 0
  %t400 = insertvalue { i64, ptr } %t399, ptr %t398, 1
  %t401 = load { i64, ptr }, ptr %l179, !tbaa !27
  %t403 = call { i64, ptr } @compiler_2fsession_2ehover(ptr %s5, ptr %s5, ptr %s5, { i64, ptr } %t401, { i64, ptr } %t400)
  store { i64, ptr } %t403, ptr %l186
  br label %bb86
bb86:
  %t404 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t405 = load { i64, ptr }, ptr %l186, !tbaa !27
  %t406 = extractvalue { i64, ptr } %t405, 1
  %t407 = extractvalue { i64, ptr } %t405, 0
  %t409 = extractvalue { i64, ptr } %t404, 1
  %t410 = extractvalue { i64, ptr } %t404, 0
  %t411 = add i64 %t407, %t410
  %t412 = load i64, ptr %l167
  %t413 = inttoptr i64 %t412 to ptr
  %t414 = call ptr @__olang_scope_alloc(ptr %t413, i64 %t411)
  call void @olang_textcopy(ptr %t414, ptr %t406, i64 %t407)
  %t415 = getelementptr i8, ptr %t414, i64 %t407
  call void @olang_textcopy(ptr %t415, ptr %t409, i64 %t410)
  %t416 = insertvalue { i64, ptr } undef, i64 %t411, 0
  %t417 = insertvalue { i64, ptr } %t416, ptr %t414, 1
  %t419 = load i64, ptr %l167
  %t420 = inttoptr i64 %t419 to ptr
  %t421 = extractvalue { i64, ptr } %t417, 0
  %t422 = extractvalue { i64, ptr } %t417, 1
  %t423 = mul i64 %t421, 1
  %t424 = call ptr @__olang_scope_alloc(ptr %t420, i64 %t423)
  call void @llvm.memcpy.p0.p0.i64(ptr %t424, ptr %t422, i64 %t423, i1 false)
  %t425 = insertvalue { i64, ptr } undef, i64 %t421, 0
  %t426 = insertvalue { i64, ptr } %t425, ptr %t424, 1
  store { i64, ptr } %t426, ptr %l189, !tbaa !27
  %t427 = ptrtoint ptr %v2 to i64
  store i64 %t427, ptr %l190, !tbaa !24
  %t428 = load i1, ptr @olang_2esole_2ecompiler_2fsession_3aFound_2e1
  br i1 %t428, label %bb87, label %bb88
bb87:
  %t430 = call ptr @__olang_region_make(ptr %v2)
  %t431 = ptrtoint ptr %t430 to i64
  store i64 %t431, ptr %l190, !tbaa !24
  br label %bb88
bb88:
  %t432 = load ptr, ptr %l0, !tbaa !29
  %t434 = getelementptr %"compiler/session:Analysis", ptr %t432, i32 0, i32 0
  %t435 = load ptr, ptr %t434, !tbaa !29
  %t437 = getelementptr %"compiler/load:Loader", ptr %t435, i32 0, i32 10
  %t438 = load i64, ptr %l9, !tbaa !24
  %t441 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t437, i64 %t438)
  store ptr %t441, ptr %l196
  br label %bb89
bb89:
  %t442 = load ptr, ptr %l196, !tbaa !29
  %t444 = getelementptr %"compiler/load:Module", ptr %t442, i32 0, i32 1
  %t445 = load { i64, ptr }, ptr %t444, !tbaa !27
  %t447 = extractvalue { i64, ptr } %t445, 1
  %t448 = extractvalue { i64, ptr } %t445, 0
  %t449 = load i64, ptr %l190
  %t450 = inttoptr i64 %t449 to ptr
  %t451 = call ptr @__olang_scope_alloc(ptr %t450, i64 %t448)
  call void @olang_textcopy(ptr %t451, ptr %t447, i64 %t448)
  %t452 = insertvalue { i64, ptr } undef, i64 %t448, 0
  %t453 = insertvalue { i64, ptr } %t452, ptr %t451, 1
  %t455 = load i64, ptr %l190
  %t456 = inttoptr i64 %t455 to ptr
  %t457 = extractvalue { i64, ptr } %t453, 0
  %t458 = extractvalue { i64, ptr } %t453, 1
  %t459 = mul i64 %t457, 1
  %t460 = call ptr @__olang_scope_alloc(ptr %t456, i64 %t459)
  call void @llvm.memcpy.p0.p0.i64(ptr %t460, ptr %t458, i64 %t459, i1 false)
  %t461 = insertvalue { i64, ptr } undef, i64 %t457, 0
  %t462 = insertvalue { i64, ptr } %t461, ptr %t460, 1
  %t463 = load i64, ptr %l10, !tbaa !24
  %t464 = load { i64, ptr }, ptr %l189, !tbaa !27
  %t467 = call %"compiler/session:Found" @compiler_2fsession_3aFound_2ector(ptr %v2, ptr %v2, ptr %v2, { i64, ptr } %t464, { i64, ptr } %t462, i64 %t463)
  store %"compiler/session:Found" %t467, ptr %l202
  br label %bb90
bb90:
  call void @__olang_scope_close(ptr %s5)
  %t468 = load %"compiler/session:Found", ptr %l202
  %t469 = insertvalue { i32, %"compiler/session:Found" } zeroinitializer, %"compiler/session:Found" %t468, 1
  store { i32, %"compiler/session:Found" } %t469, ptr %rv
  br label %ret
bb91:
  %t470 = load { i64, [6 x i64] }, ptr %l1
  %t472 = extractvalue { i64, [6 x i64] } %t470, 0
  %t473 = icmp eq i64 %t472, 3
  br i1 %t473, label %bb92, label %bb93
bb92:
  %t475 = getelementptr { i64, [6 x i64] }, ptr %l1, i32 0, i32 1
  %t476 = getelementptr { i32, i64 }, ptr %t475, i32 0, i32 0
  %t477 = load i32, ptr %t476
  store i32 %t477, ptr %l14, !tbaa !23
  %t479 = getelementptr { i64, [6 x i64] }, ptr %l1, i32 0, i32 1
  %t480 = getelementptr { i32, i64 }, ptr %t479, i32 0, i32 1
  %t481 = load i64, ptr %t480
  store i64 %t481, ptr %l15, !tbaa !24
  br label %bb94
bb93:
  br label %bb106
bb94:
  store %olang.scope zeroinitializer, ptr %s10
  %t483 = load ptr, ptr %l0, !tbaa !29
  %t484 = load i32, ptr %l14, !tbaa !23
  %t485 = load i64, ptr %l15, !tbaa !24
  %t489 = call { i32, %"compiler/session:memberInfo" } @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2efield(ptr %v0, ptr %v2, ptr %t483, i32 %t484, i64 %t485)
  %t490 = extractvalue { i32, %"compiler/session:memberInfo" } %t489, 1
  %t491 = extractvalue { i32, %"compiler/session:memberInfo" } %t489, 0
  store i32 %t491, ptr %l212
  %t492 = icmp ne i32 %t491, 0
  br i1 %t492, label %bb96, label %ok.493, !prof !99
ok.493:
  store %"compiler/session:memberInfo" %t490, ptr %l211
  br label %bb95
bb95:
  %t494 = load %"compiler/session:memberInfo", ptr %l211
  store %"compiler/session:memberInfo" %t494, ptr %l207
  br label %bb97
bb96:
  %t495 = load i32, ptr %l212, !tbaa !23
  %t496 = lshr i32 %t495, 16
  %t497 = and i32 %t495, 65535
  %t498 = icmp eq i32 %t496, 1
  %t499 = select i1 %t498, i32 1, i32 0
  %t500 = icmp eq i32 %t495, 0
  %t501 = shl i32 %t499, 16
  %t502 = or i32 %t501, %t497
  %t503 = select i1 %t500, i32 0, i32 %t502
  call void @__olang_scope_close(ptr %s10)
  %t505 = insertvalue { i32, %"compiler/session:Found" } zeroinitializer, i32 %t503, 0
  store { i32, %"compiler/session:Found" } %t505, ptr %rv
  br label %ret
bb97:
  %t506 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 64, i64 8)
  store ptr %t506, ptr %lp16
  %t507 = load %"compiler/session:memberInfo", ptr %l207
  %t508 = load ptr, ptr %lp16
  store %"compiler/session:memberInfo" %t507, ptr %t508
  %t509 = ptrtoint ptr %v2 to i64
  store i64 %t509, ptr %l214, !tbaa !24
  %t510 = load i1, ptr @olang_2esole_2ecompiler_2fsession_3aFound_2e0
  br i1 %t510, label %bb98, label %bb99
bb98:
  %t512 = call ptr @__olang_region_make(ptr %v2)
  %t513 = ptrtoint ptr %t512 to i64
  store i64 %t513, ptr %l214, !tbaa !24
  br label %bb99
bb99:
  %t514 = load ptr, ptr %lp16
  %t515 = getelementptr %"compiler/session:memberInfo", ptr %t514, i32 0, i32 0
  %t516 = load { i64, ptr }, ptr %t515, !tbaa !27
  store { i64, ptr } %t516, ptr %l216, !tbaa !27
  %t517 = load ptr, ptr %l2, !tbaa !29
  %t519 = icmp eq ptr %t517, null
  br i1 %t519, label %bb100, label %bb101
bb100:
  call void @__olang_check_failed(ptr @olang_loc_8be95a0084a275_27fb33976f90d831)
  unreachable
bb101:
  br label %bb102
bb102:
  %t521 = load ptr, ptr %l2, !tbaa !29
  %t522 = load ptr, ptr %lp16
  %t523 = getelementptr %"compiler/session:memberInfo", ptr %t522, i32 0, i32 1
  %t524 = load i32, ptr %t523, !tbaa !23
  %t527 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eTy(ptr %v0, ptr %s10, ptr %t521, i32 %t524)
  store { i64, ptr } %t527, ptr %l221
  br label %bb103
bb103:
  %t528 = load { i64, ptr }, ptr %l216, !tbaa !27
  %t529 = extractvalue { i64, ptr } %t528, 1
  %t530 = extractvalue { i64, ptr } %t528, 0
  %t531 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d23, i32 0, i32 1) }, 1
  %t532 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d23, i32 0, i32 1) }, 0
  %t533 = add i64 %t530, %t532
  %t534 = load { i64, ptr }, ptr %l221, !tbaa !27
  %t535 = extractvalue { i64, ptr } %t534, 1
  %t536 = extractvalue { i64, ptr } %t534, 0
  %t537 = add i64 %t533, %t536
  %t538 = load i64, ptr %l214
  %t539 = inttoptr i64 %t538 to ptr
  %t540 = call ptr @__olang_scope_alloc(ptr %t539, i64 %t537)
  call void @olang_textcopy(ptr %t540, ptr %t529, i64 %t530)
  %t541 = getelementptr i8, ptr %t540, i64 %t530
  call void @olang_textcopy(ptr %t541, ptr %t531, i64 %t532)
  %t542 = getelementptr i8, ptr %t541, i64 %t532
  call void @olang_textcopy(ptr %t542, ptr %t535, i64 %t536)
  %t543 = insertvalue { i64, ptr } undef, i64 %t537, 0
  %t544 = insertvalue { i64, ptr } %t543, ptr %t540, 1
  %t546 = load i64, ptr %l214
  %t547 = inttoptr i64 %t546 to ptr
  %t548 = extractvalue { i64, ptr } %t544, 0
  %t549 = extractvalue { i64, ptr } %t544, 1
  %t550 = mul i64 %t548, 1
  %t551 = call ptr @__olang_scope_alloc(ptr %t547, i64 %t550)
  call void @llvm.memcpy.p0.p0.i64(ptr %t551, ptr %t549, i64 %t550, i1 false)
  %t552 = insertvalue { i64, ptr } undef, i64 %t548, 0
  %t553 = insertvalue { i64, ptr } %t552, ptr %t551, 1
  %t554 = load ptr, ptr %lp16
  %t555 = getelementptr %"compiler/session:memberInfo", ptr %t554, i32 0, i32 2
  %t556 = load { i64, ptr }, ptr %t555, !tbaa !27
  %t557 = load i64, ptr %l214
  %t558 = inttoptr i64 %t557 to ptr
  %t559 = load i64, ptr %l214
  %t560 = inttoptr i64 %t559 to ptr
  %t563 = call { i64, ptr } @compiler_2fsession_2ehover(ptr %t558, ptr %v2, ptr %t560, { i64, ptr } %t553, { i64, ptr } %t556)
  store { i64, ptr } %t563, ptr %l225
  br label %bb104
bb104:
  %t564 = load { i64, ptr }, ptr %l225, !tbaa !27
  %t565 = load i64, ptr %l214
  %t566 = inttoptr i64 %t565 to ptr
  %t567 = extractvalue { i64, ptr } %t564, 0
  %t568 = extractvalue { i64, ptr } %t564, 1
  %t569 = mul i64 %t567, 1
  %t570 = call ptr @__olang_scope_alloc(ptr %t566, i64 %t569)
  call void @llvm.memcpy.p0.p0.i64(ptr %t570, ptr %t568, i64 %t569, i1 false)
  %t571 = insertvalue { i64, ptr } undef, i64 %t567, 0
  %t572 = insertvalue { i64, ptr } %t571, ptr %t570, 1
  %t573 = load ptr, ptr %lp16
  %t574 = getelementptr %"compiler/session:memberInfo", ptr %t573, i32 0, i32 3
  %t575 = load { i64, ptr }, ptr %t574, !tbaa !27
  %t576 = load ptr, ptr %lp16
  %t577 = getelementptr %"compiler/session:memberInfo", ptr %t576, i32 0, i32 4
  %t578 = load i64, ptr %t577, !tbaa !24
  %t582 = call %"compiler/session:Found" @compiler_2fsession_3aFound_2ector(ptr %v2, ptr %v2, ptr %v2, { i64, ptr } %t572, { i64, ptr } %t575, i64 %t578)
  store %"compiler/session:Found" %t582, ptr %l229
  br label %bb105
bb105:
  call void @__olang_scope_close(ptr %s10)
  %t583 = load %"compiler/session:Found", ptr %l229
  %t584 = insertvalue { i32, %"compiler/session:Found" } zeroinitializer, %"compiler/session:Found" %t583, 1
  store { i32, %"compiler/session:Found" } %t584, ptr %rv
  br label %ret
bb106:
  %t585 = load { i64, [6 x i64] }, ptr %l1
  %t587 = extractvalue { i64, [6 x i64] } %t585, 0
  %t588 = icmp eq i64 %t587, 4
  br i1 %t588, label %bb107, label %bb108
bb107:
  %t590 = getelementptr { i64, [6 x i64] }, ptr %l1, i32 0, i32 1
  %t591 = getelementptr { i64, i32 }, ptr %t590, i32 0, i32 0
  %t592 = load i64, ptr %t591
  store i64 %t592, ptr %l17, !tbaa !24
  %t594 = getelementptr { i64, [6 x i64] }, ptr %l1, i32 0, i32 1
  %t595 = getelementptr { i64, i32 }, ptr %t594, i32 0, i32 1
  %t596 = load i32, ptr %t595
  store i32 %t596, ptr %l18, !tbaa !23
  br label %bb109
bb108:
  br label %bb133
bb109:
  store %olang.scope zeroinitializer, ptr %s12
  %t598 = load ptr, ptr %l2, !tbaa !29
  %t600 = icmp eq ptr %t598, null
  br i1 %t600, label %bb110, label %bb111
bb110:
  call void @__olang_check_failed(ptr @olang_loc_62de0451ac433905_e234825e46030f99)
  unreachable
bb111:
  br label %bb112
bb112:
  %t602 = load ptr, ptr %l2, !tbaa !29
  %t605 = getelementptr %"compiler/check:Checker", ptr %t602, i32 0, i32 14
  %t606 = load i64, ptr %l17, !tbaa !24
  %t609 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t605, i64 %t606)
  store ptr %t609, ptr %l240
  br label %bb113
bb113:
  %t610 = load ptr, ptr %l240, !tbaa !29
  store ptr %t610, ptr %l19, !tbaa !29
  %t611 = load ptr, ptr %l19, !tbaa !29
  %t613 = getelementptr %"compiler/typed:Body", ptr %t611, i32 0, i32 7
  %t614 = load i32, ptr %l18, !tbaa !23
  %t616 = sext i32 %t614 to i64
  %t619 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t613, i64 %t616)
  store %"compiler/typed:Local" %t619, ptr %l245
  br label %bb114
bb114:
  %t620 = load %"compiler/typed:Local", ptr %l245
  store %"compiler/typed:Local" %t620, ptr %l20
  %t621 = load ptr, ptr %l0, !tbaa !29
  %t622 = load ptr, ptr %l19, !tbaa !29
  %t624 = getelementptr %"compiler/typed:Body", ptr %t622, i32 0, i32 3
  %t625 = load i64, ptr %t624, !tbaa !24
  %t628 = call i64 @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2emoduleOfFile(ptr %v0, ptr %t621, i64 %t625)
  store i64 %t628, ptr %l249
  br label %bb115
bb115:
  %t629 = load i64, ptr %l249, !tbaa !24
  store i64 %t629, ptr %l21, !tbaa !24
  %t630 = getelementptr %"compiler/typed:Local", ptr %l20, i32 0, i32 4
  %t631 = load i32, ptr %t630, !range !{i32 0, i32 7}
  %t633 = trunc i64 0 to i32
  %t634 = icmp eq i32 %t631, %t633
  br i1 %t634, label %bb116, label %bb117
bb116:
  store { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d24, i32 0, i32 1) }, ptr %l252, !tbaa !27
  br label %bb118
bb117:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d25, i32 0, i32 1) }, ptr %l252, !tbaa !27
  br label %bb118
bb118:
  %t636 = load { i64, ptr }, ptr %l252, !tbaa !27
  store { i64, ptr } %t636, ptr %l253, !tbaa !27
  %t638 = load ptr, ptr %l2, !tbaa !29
  %t640 = icmp eq ptr %t638, null
  br i1 %t640, label %bb119, label %bb120
bb119:
  call void @__olang_check_failed(ptr @olang_loc_4b7568962893615e_80e60e4246117872)
  unreachable
bb120:
  br label %bb121
bb121:
  %t642 = load ptr, ptr %l2, !tbaa !29
  %t645 = getelementptr %"compiler/check:Checker", ptr %t642, i32 0, i32 1
  %t646 = load ptr, ptr %t645, !tbaa !29
  %t648 = getelementptr %"compiler/generic:Program", ptr %t646, i32 0, i32 0
  %t649 = load ptr, ptr %t648, !tbaa !29
  %t651 = getelementptr %"compiler/load:Loader", ptr %t649, i32 0, i32 3
  %t652 = load ptr, ptr %t651, !tbaa !29
  %t653 = getelementptr %"compiler/typed:Local", ptr %l20, i32 0, i32 0
  %t654 = load i32, ptr %t653, !tbaa !23
  %t657 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %s12, ptr %t652, i32 %t654)
  store { i64, ptr } %t657, ptr %l262
  br label %bb122
bb122:
  %t658 = load ptr, ptr %l2, !tbaa !29
  %t660 = icmp eq ptr %t658, null
  br i1 %t660, label %bb123, label %bb124
bb123:
  call void @__olang_check_failed(ptr @olang_loc_4b7568962893615e_80e60e4246117872)
  unreachable
bb124:
  br label %bb125
bb125:
  %t662 = load ptr, ptr %l2, !tbaa !29
  %t663 = getelementptr %"compiler/typed:Local", ptr %l20, i32 0, i32 2
  %t664 = load i32, ptr %t663, !tbaa !23
  %t667 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eTy(ptr %v0, ptr %s12, ptr %t662, i32 %t664)
  store { i64, ptr } %t667, ptr %l267
  br label %bb126
bb126:
  %t668 = load { i64, ptr }, ptr %l253, !tbaa !27
  %t669 = extractvalue { i64, ptr } %t668, 1
  %t670 = extractvalue { i64, ptr } %t668, 0
  %t671 = load { i64, ptr }, ptr %l262, !tbaa !27
  %t672 = extractvalue { i64, ptr } %t671, 1
  %t673 = extractvalue { i64, ptr } %t671, 0
  %t674 = add i64 %t670, %t673
  %t675 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d26, i32 0, i32 1) }, 1
  %t676 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d26, i32 0, i32 1) }, 0
  %t677 = add i64 %t674, %t676
  %t678 = load { i64, ptr }, ptr %l267, !tbaa !27
  %t679 = extractvalue { i64, ptr } %t678, 1
  %t680 = extractvalue { i64, ptr } %t678, 0
  %t681 = add i64 %t677, %t680
  %t682 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t681)
  call void @olang_textcopy(ptr %t682, ptr %t669, i64 %t670)
  %t683 = getelementptr i8, ptr %t682, i64 %t670
  call void @olang_textcopy(ptr %t683, ptr %t672, i64 %t673)
  %t684 = getelementptr i8, ptr %t683, i64 %t673
  call void @olang_textcopy(ptr %t684, ptr %t675, i64 %t676)
  %t685 = getelementptr i8, ptr %t684, i64 %t676
  call void @olang_textcopy(ptr %t685, ptr %t679, i64 %t680)
  %t686 = insertvalue { i64, ptr } undef, i64 %t681, 0
  %t687 = insertvalue { i64, ptr } %t686, ptr %t682, 1
  %t689 = extractvalue { i64, ptr } %t687, 0
  %t690 = extractvalue { i64, ptr } %t687, 1
  %t691 = mul i64 %t689, 1
  %t692 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t691)
  call void @llvm.memcpy.p0.p0.i64(ptr %t692, ptr %t690, i64 %t691, i1 false)
  %t693 = insertvalue { i64, ptr } undef, i64 %t689, 0
  %t694 = insertvalue { i64, ptr } %t693, ptr %t692, 1
  %t696 = call { i64, ptr } @compiler_2fsession_2ehover(ptr %v2, ptr %v2, ptr %v2, { i64, ptr } %t694, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d27, i32 0, i32 1) })
  store { i64, ptr } %t696, ptr %l270
  br label %bb127
bb127:
  %t697 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t697, ptr %lp23
  %t698 = load { i64, ptr }, ptr %l270, !tbaa !27
  %t699 = load ptr, ptr %lp23
  store { i64, ptr } %t698, ptr %t699, !tbaa !27
  %t700 = load ptr, ptr %lp23
  %t701 = load { i64, ptr }, ptr %t700, !tbaa !27
  store { i64, ptr } %t701, ptr %l271, !tbaa !27
  %t702 = load i64, ptr %l21, !tbaa !24
  %t704 = icmp sge i64 %t702, 0
  br i1 %t704, label %bb128, label %bb129
bb128:
  %t706 = load ptr, ptr %l0, !tbaa !29
  %t708 = getelementptr %"compiler/session:Analysis", ptr %t706, i32 0, i32 0
  %t709 = load ptr, ptr %t708, !tbaa !29
  %t711 = getelementptr %"compiler/load:Loader", ptr %t709, i32 0, i32 10
  %t712 = load i64, ptr %l21, !tbaa !24
  %t715 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t711, i64 %t712)
  store ptr %t715, ptr %l279
  br label %bb130
bb129:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d28, i32 0, i32 1) }, ptr %l274, !tbaa !27
  br label %bb131
bb130:
  %t716 = load ptr, ptr %l279, !tbaa !29
  %t718 = getelementptr %"compiler/load:Module", ptr %t716, i32 0, i32 1
  %t719 = load { i64, ptr }, ptr %t718, !tbaa !27
  %t721 = extractvalue { i64, ptr } %t719, 1
  %t722 = extractvalue { i64, ptr } %t719, 0
  %t723 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t722)
  call void @olang_textcopy(ptr %t723, ptr %t721, i64 %t722)
  %t724 = insertvalue { i64, ptr } undef, i64 %t722, 0
  %t725 = insertvalue { i64, ptr } %t724, ptr %t723, 1
  %t727 = extractvalue { i64, ptr } %t725, 0
  %t728 = extractvalue { i64, ptr } %t725, 1
  %t729 = mul i64 %t727, 1
  %t730 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t729)
  call void @llvm.memcpy.p0.p0.i64(ptr %t730, ptr %t728, i64 %t729, i1 false)
  %t731 = insertvalue { i64, ptr } undef, i64 %t727, 0
  %t732 = insertvalue { i64, ptr } %t731, ptr %t730, 1
  store { i64, ptr } %t732, ptr %l274, !tbaa !27
  br label %bb131
bb131:
  %t734 = getelementptr %"compiler/typed:Local", ptr %l20, i32 0, i32 1
  %t735 = getelementptr %"compiler/source:Span", ptr %t734, i32 0, i32 0
  %t736 = load i32, ptr %t735, !tbaa !23
  %t738 = sext i32 %t736 to i64
  %t739 = load { i64, ptr }, ptr %l271, !tbaa !27
  %t740 = load { i64, ptr }, ptr %l274, !tbaa !27
  %t742 = call %"compiler/session:Found" @compiler_2fsession_3aFound_2ector(ptr %v2, ptr %v2, ptr %v2, { i64, ptr } %t739, { i64, ptr } %t740, i64 %t738)
  store %"compiler/session:Found" %t742, ptr %l286
  br label %bb132
bb132:
  call void @__olang_scope_close(ptr %s12)
  %t743 = load %"compiler/session:Found", ptr %l286
  %t744 = insertvalue { i32, %"compiler/session:Found" } zeroinitializer, %"compiler/session:Found" %t743, 1
  store { i32, %"compiler/session:Found" } %t744, ptr %rv
  br label %ret
bb133:
  %t745 = load { i64, [6 x i64] }, ptr %l1
  %t747 = extractvalue { i64, [6 x i64] } %t745, 0
  %t748 = icmp eq i64 %t747, 5
  br i1 %t748, label %bb134, label %bb135
bb134:
  %t750 = getelementptr { i64, [6 x i64] }, ptr %l1, i32 0, i32 1
  %t751 = getelementptr { i64, i64, { i64, ptr }, { i64, ptr } }, ptr %t750, i32 0, i32 0
  %t752 = load i64, ptr %t751
  store i64 %t752, ptr %l24, !tbaa !24
  %t754 = getelementptr { i64, [6 x i64] }, ptr %l1, i32 0, i32 1
  %t755 = getelementptr { i64, i64, { i64, ptr }, { i64, ptr } }, ptr %t754, i32 0, i32 1
  %t756 = load i64, ptr %t755
  store i64 %t756, ptr %l25, !tbaa !24
  %t758 = getelementptr { i64, [6 x i64] }, ptr %l1, i32 0, i32 1
  %t759 = getelementptr { i64, i64, { i64, ptr }, { i64, ptr } }, ptr %t758, i32 0, i32 2
  %t760 = load { i64, ptr }, ptr %t759
  store { i64, ptr } %t760, ptr %l26, !tbaa !27
  %t762 = getelementptr { i64, [6 x i64] }, ptr %l1, i32 0, i32 1
  %t763 = getelementptr { i64, i64, { i64, ptr }, { i64, ptr } }, ptr %t762, i32 0, i32 3
  %t764 = load { i64, ptr }, ptr %t763
  store { i64, ptr } %t764, ptr %l27, !tbaa !27
  br label %bb136
bb135:
  br label %bb144
bb136:
  %t766 = ptrtoint ptr %v2 to i64
  store i64 %t766, ptr %l293, !tbaa !24
  %t767 = load i1, ptr @olang_2esole_2ecompiler_2fsession_3aFound_2e0
  br i1 %t767, label %bb137, label %bb138
bb137:
  %t769 = call ptr @__olang_region_make(ptr %v2)
  %t770 = ptrtoint ptr %t769 to i64
  store i64 %t770, ptr %l293, !tbaa !24
  br label %bb138
bb138:
  %t771 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t772 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t773 = load i64, ptr %l293
  %t774 = inttoptr i64 %t773 to ptr
  %t777 = call { i64, ptr } @compiler_2fsession_2ehover(ptr %v1, ptr %v1, ptr %t774, { i64, ptr } %t771, { i64, ptr } %t772)
  store { i64, ptr } %t777, ptr %l297
  br label %bb139
bb139:
  %t778 = load { i64, ptr }, ptr %l297, !tbaa !27
  %t779 = load i64, ptr %l293
  %t780 = inttoptr i64 %t779 to ptr
  %t781 = extractvalue { i64, ptr } %t778, 0
  %t782 = extractvalue { i64, ptr } %t778, 1
  %t783 = mul i64 %t781, 1
  %t784 = call ptr @__olang_scope_alloc(ptr %t780, i64 %t783)
  call void @llvm.memcpy.p0.p0.i64(ptr %t784, ptr %t782, i64 %t783, i1 false)
  %t785 = insertvalue { i64, ptr } undef, i64 %t781, 0
  %t786 = insertvalue { i64, ptr } %t785, ptr %t784, 1
  store { i64, ptr } %t786, ptr %l298, !tbaa !27
  %t787 = ptrtoint ptr %v2 to i64
  store i64 %t787, ptr %l299, !tbaa !24
  %t788 = load i1, ptr @olang_2esole_2ecompiler_2fsession_3aFound_2e1
  br i1 %t788, label %bb140, label %bb141
bb140:
  %t790 = call ptr @__olang_region_make(ptr %v2)
  %t791 = ptrtoint ptr %t790 to i64
  store i64 %t791, ptr %l299, !tbaa !24
  br label %bb141
bb141:
  %t792 = load ptr, ptr %l0, !tbaa !29
  %t794 = getelementptr %"compiler/session:Analysis", ptr %t792, i32 0, i32 0
  %t795 = load ptr, ptr %t794, !tbaa !29
  %t797 = getelementptr %"compiler/load:Loader", ptr %t795, i32 0, i32 10
  %t798 = load i64, ptr %l24, !tbaa !24
  %t801 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t797, i64 %t798)
  store ptr %t801, ptr %l305
  br label %bb142
bb142:
  %t802 = load ptr, ptr %l305, !tbaa !29
  %t804 = getelementptr %"compiler/load:Module", ptr %t802, i32 0, i32 1
  %t805 = load { i64, ptr }, ptr %t804, !tbaa !27
  %t807 = extractvalue { i64, ptr } %t805, 1
  %t808 = extractvalue { i64, ptr } %t805, 0
  %t809 = load i64, ptr %l299
  %t810 = inttoptr i64 %t809 to ptr
  %t811 = call ptr @__olang_scope_alloc(ptr %t810, i64 %t808)
  call void @olang_textcopy(ptr %t811, ptr %t807, i64 %t808)
  %t812 = insertvalue { i64, ptr } undef, i64 %t808, 0
  %t813 = insertvalue { i64, ptr } %t812, ptr %t811, 1
  %t815 = load i64, ptr %l299
  %t816 = inttoptr i64 %t815 to ptr
  %t817 = extractvalue { i64, ptr } %t813, 0
  %t818 = extractvalue { i64, ptr } %t813, 1
  %t819 = mul i64 %t817, 1
  %t820 = call ptr @__olang_scope_alloc(ptr %t816, i64 %t819)
  call void @llvm.memcpy.p0.p0.i64(ptr %t820, ptr %t818, i64 %t819, i1 false)
  %t821 = insertvalue { i64, ptr } undef, i64 %t817, 0
  %t822 = insertvalue { i64, ptr } %t821, ptr %t820, 1
  %t823 = load i64, ptr %l25, !tbaa !24
  %t824 = load { i64, ptr }, ptr %l298, !tbaa !27
  %t827 = call %"compiler/session:Found" @compiler_2fsession_3aFound_2ector(ptr %v2, ptr %v2, ptr %v2, { i64, ptr } %t824, { i64, ptr } %t822, i64 %t823)
  store %"compiler/session:Found" %t827, ptr %l311
  br label %bb143
bb143:
  %t828 = load %"compiler/session:Found", ptr %l311
  %t829 = insertvalue { i32, %"compiler/session:Found" } zeroinitializer, %"compiler/session:Found" %t828, 1
  store { i32, %"compiler/session:Found" } %t829, ptr %rv
  br label %ret
bb144:
  %t830 = load { i64, [6 x i64] }, ptr %l1
  %t832 = extractvalue { i64, [6 x i64] } %t830, 0
  %t833 = icmp eq i64 %t832, 6
  br i1 %t833, label %bb145, label %bb146
bb145:
  %t835 = getelementptr { i64, [6 x i64] }, ptr %l1, i32 0, i32 1
  %t836 = getelementptr { i64 }, ptr %t835, i32 0, i32 0
  %t837 = load i64, ptr %t836
  store i64 %t837, ptr %l28, !tbaa !24
  br label %bb147
bb146:
  br label %bb159
bb147:
  %t839 = load ptr, ptr %l0, !tbaa !29
  %t841 = getelementptr %"compiler/session:Analysis", ptr %t839, i32 0, i32 0
  %t842 = load ptr, ptr %t841, !tbaa !29
  %t844 = getelementptr %"compiler/load:Loader", ptr %t842, i32 0, i32 10
  %t845 = load i64, ptr %l28, !tbaa !24
  %t848 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t844, i64 %t845)
  store ptr %t848, ptr %l319
  br label %bb148
bb148:
  %t849 = load ptr, ptr %l319, !tbaa !29
  store ptr %t849, ptr %l29, !tbaa !29
  %t850 = ptrtoint ptr %v2 to i64
  store i64 %t850, ptr %l320, !tbaa !24
  %t851 = load i1, ptr @olang_2esole_2ecompiler_2fsession_3aFound_2e0
  br i1 %t851, label %bb149, label %bb150
bb149:
  %t853 = call ptr @__olang_region_make(ptr %v2)
  %t854 = ptrtoint ptr %t853 to i64
  store i64 %t854, ptr %l320, !tbaa !24
  br label %bb150
bb150:
  %t855 = load ptr, ptr %l29, !tbaa !29
  %t857 = getelementptr %"compiler/load:Module", ptr %t855, i32 0, i32 2
  %t858 = load { i64, ptr }, ptr %t857, !tbaa !27
  %t859 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d29, i32 0, i32 1) }, 1
  %t860 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d29, i32 0, i32 1) }, 0
  %t862 = extractvalue { i64, ptr } %t858, 1
  %t863 = extractvalue { i64, ptr } %t858, 0
  %t864 = add i64 %t860, %t863
  %t865 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d30, i32 0, i32 1) }, 1
  %t866 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d30, i32 0, i32 1) }, 0
  %t867 = add i64 %t864, %t866
  %t868 = load i64, ptr %l320
  %t869 = inttoptr i64 %t868 to ptr
  %t870 = call ptr @__olang_scope_alloc(ptr %t869, i64 %t867)
  call void @olang_textcopy(ptr %t870, ptr %t859, i64 %t860)
  %t871 = getelementptr i8, ptr %t870, i64 %t860
  call void @olang_textcopy(ptr %t871, ptr %t862, i64 %t863)
  %t872 = getelementptr i8, ptr %t871, i64 %t863
  call void @olang_textcopy(ptr %t872, ptr %t865, i64 %t866)
  %t873 = insertvalue { i64, ptr } undef, i64 %t867, 0
  %t874 = insertvalue { i64, ptr } %t873, ptr %t870, 1
  %t876 = load i64, ptr %l320
  %t877 = inttoptr i64 %t876 to ptr
  %t878 = extractvalue { i64, ptr } %t874, 0
  %t879 = extractvalue { i64, ptr } %t874, 1
  %t880 = mul i64 %t878, 1
  %t881 = call ptr @__olang_scope_alloc(ptr %t877, i64 %t880)
  call void @llvm.memcpy.p0.p0.i64(ptr %t881, ptr %t879, i64 %t880, i1 false)
  %t882 = insertvalue { i64, ptr } undef, i64 %t878, 0
  %t883 = insertvalue { i64, ptr } %t882, ptr %t881, 1
  store { i64, ptr } %t883, ptr %l325, !tbaa !27
  %t884 = load ptr, ptr %l29, !tbaa !29
  %t886 = getelementptr %"compiler/load:Module", ptr %t884, i32 0, i32 6
  %t887 = load ptr, ptr %t886, !tbaa !29
  %t889 = icmp eq ptr %t887, null
  br i1 %t889, label %bb151, label %bb152
bb151:
  call void @__olang_check_failed(ptr @olang_loc_2674ac92e3c24a8f_ce1576bd6c3688b3)
  unreachable
bb152:
  br label %bb153
bb153:
  %t891 = load ptr, ptr %l29, !tbaa !29
  %t893 = getelementptr %"compiler/load:Module", ptr %t891, i32 0, i32 6
  %t894 = load ptr, ptr %t893, !tbaa !29
  %t897 = getelementptr %"compiler/source:Source", ptr %t894, i32 0, i32 1
  %t898 = load { i64, ptr }, ptr %t897, !tbaa !27
  %t899 = load i64, ptr %l320
  %t900 = inttoptr i64 %t899 to ptr
  %t902 = call { i64, ptr } @compiler_2fdoc_2eModuleDoc(ptr %v0, ptr %t900, { i64, ptr } %t898)
  store { i64, ptr } %t902, ptr %l333
  br label %bb154
bb154:
  %t903 = load { i64, ptr }, ptr %l333, !tbaa !27
  %t904 = load i64, ptr %l320
  %t905 = inttoptr i64 %t904 to ptr
  %t906 = extractvalue { i64, ptr } %t903, 0
  %t907 = extractvalue { i64, ptr } %t903, 1
  %t908 = mul i64 %t906, 1
  %t909 = call ptr @__olang_scope_alloc(ptr %t905, i64 %t908)
  call void @llvm.memcpy.p0.p0.i64(ptr %t909, ptr %t907, i64 %t908, i1 false)
  %t910 = insertvalue { i64, ptr } undef, i64 %t906, 0
  %t911 = insertvalue { i64, ptr } %t910, ptr %t909, 1
  %t912 = load i64, ptr %l320
  %t913 = inttoptr i64 %t912 to ptr
  %t914 = load i64, ptr %l320
  %t915 = inttoptr i64 %t914 to ptr
  %t916 = load i64, ptr %l320
  %t917 = inttoptr i64 %t916 to ptr
  %t918 = load { i64, ptr }, ptr %l325, !tbaa !27
  %t920 = call { i64, ptr } @compiler_2fsession_2ehover(ptr %t913, ptr %t915, ptr %t917, { i64, ptr } %t918, { i64, ptr } %t911)
  store { i64, ptr } %t920, ptr %l335
  br label %bb155
bb155:
  %t921 = load { i64, ptr }, ptr %l335, !tbaa !27
  %t922 = load i64, ptr %l320
  %t923 = inttoptr i64 %t922 to ptr
  %t924 = extractvalue { i64, ptr } %t921, 0
  %t925 = extractvalue { i64, ptr } %t921, 1
  %t926 = mul i64 %t924, 1
  %t927 = call ptr @__olang_scope_alloc(ptr %t923, i64 %t926)
  call void @llvm.memcpy.p0.p0.i64(ptr %t927, ptr %t925, i64 %t926, i1 false)
  %t928 = insertvalue { i64, ptr } undef, i64 %t924, 0
  %t929 = insertvalue { i64, ptr } %t928, ptr %t927, 1
  store { i64, ptr } %t929, ptr %l336, !tbaa !27
  %t930 = ptrtoint ptr %v2 to i64
  store i64 %t930, ptr %l337, !tbaa !24
  %t931 = load i1, ptr @olang_2esole_2ecompiler_2fsession_3aFound_2e1
  br i1 %t931, label %bb156, label %bb157
bb156:
  %t933 = call ptr @__olang_region_make(ptr %v2)
  %t934 = ptrtoint ptr %t933 to i64
  store i64 %t934, ptr %l337, !tbaa !24
  br label %bb157
bb157:
  %t935 = load ptr, ptr %l29, !tbaa !29
  %t937 = getelementptr %"compiler/load:Module", ptr %t935, i32 0, i32 1
  %t938 = load { i64, ptr }, ptr %t937, !tbaa !27
  %t940 = extractvalue { i64, ptr } %t938, 1
  %t941 = extractvalue { i64, ptr } %t938, 0
  %t942 = load i64, ptr %l337
  %t943 = inttoptr i64 %t942 to ptr
  %t944 = call ptr @__olang_scope_alloc(ptr %t943, i64 %t941)
  call void @olang_textcopy(ptr %t944, ptr %t940, i64 %t941)
  %t945 = insertvalue { i64, ptr } undef, i64 %t941, 0
  %t946 = insertvalue { i64, ptr } %t945, ptr %t944, 1
  %t948 = load i64, ptr %l337
  %t949 = inttoptr i64 %t948 to ptr
  %t950 = extractvalue { i64, ptr } %t946, 0
  %t951 = extractvalue { i64, ptr } %t946, 1
  %t952 = mul i64 %t950, 1
  %t953 = call ptr @__olang_scope_alloc(ptr %t949, i64 %t952)
  call void @llvm.memcpy.p0.p0.i64(ptr %t953, ptr %t951, i64 %t952, i1 false)
  %t954 = insertvalue { i64, ptr } undef, i64 %t950, 0
  %t955 = insertvalue { i64, ptr } %t954, ptr %t953, 1
  %t956 = load { i64, ptr }, ptr %l336, !tbaa !27
  %t958 = call %"compiler/session:Found" @compiler_2fsession_3aFound_2ector(ptr %v2, ptr %v2, ptr %v2, { i64, ptr } %t956, { i64, ptr } %t955, i64 0)
  store %"compiler/session:Found" %t958, ptr %l343
  br label %bb158
bb158:
  %t959 = load %"compiler/session:Found", ptr %l343
  %t960 = insertvalue { i32, %"compiler/session:Found" } zeroinitializer, %"compiler/session:Found" %t959, 1
  store { i32, %"compiler/session:Found" } %t960, ptr %rv
  br label %ret
bb159:
  %t961 = load { i64, [6 x i64] }, ptr %l1
  %t963 = extractvalue { i64, [6 x i64] } %t961, 0
  %t964 = icmp eq i64 %t963, 0
  br i1 %t964, label %bb160, label %bb161
bb160:
  br label %bb162
bb161:
  br label %bb163
bb162:
  %t967 = insertvalue { i32, %"compiler/session:Found" } zeroinitializer, i32 65536, 0
  store { i32, %"compiler/session:Found" } %t967, ptr %rv
  br label %ret
bb163:
  call void @__olang_check_failed(ptr @olang_loc_3b23b9b6a905edf7_80e5cdf9542388b)
  unreachable
ret:
  %rr = load { i32, %"compiler/session:Found" }, ptr %rv
  ret { i32, %"compiler/session:Found" } %rr
}

define dso_local void @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2efieldMembers(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca { i64, [2 x i64] }
  %l9 = alloca i32
  %l10 = alloca i32
  %l11 = alloca i32
  %l12 = alloca i32
  %l13 = alloca i32
  %l14 = alloca i32
  %l15 = alloca { i64, ptr }
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca %"compiler/typed:Local"
  %l33 = alloca i32
  %l39 = alloca i64
  %l41 = alloca i64
  %l46 = alloca ptr
  %l52 = alloca i1
  %l62 = alloca i32
  %l66 = alloca i1
  %l76 = alloca i32
  %l86 = alloca ptr
  %l94 = alloca i32
  %l95 = alloca { i64, ptr }
  %l98 = alloca i64
  %l102 = alloca i64
  %l105 = alloca i64
  %l124 = alloca ptr
  %l128 = alloca i32
  %l130 = alloca %"compiler/typed:Local"
  %l133 = alloca { i64, ptr }
  %l139 = alloca { i64, ptr }
  %l140 = alloca { i64, ptr }
  %l142 = alloca i64
  %l144 = alloca i64
  %l145 = alloca i64
  %l158 = alloca { i64, ptr }
  %l159 = alloca ptr
  %l160 = alloca { i64, ptr }
  %l161 = alloca i64
  %l164 = alloca ptr
  %l169 = alloca i32
  %l170 = alloca { i64, ptr }
  %l174 = alloca { i64, ptr }
  %l175 = alloca { i64, ptr }
  %l176 = alloca ptr
  %l180 = alloca i64
  %l183 = alloca i1
  %s5 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i32 %a2, ptr %l2
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
  call void @__olang_check_failed(ptr @olang_loc_93ae806d7d0351b8_8e59b8ae3d0673ac)
  unreachable
bb2:
  br label %bb3
bb3:
  %t10 = load ptr, ptr %l3, !tbaa !29
  %t13 = getelementptr %"compiler/check:Checker", ptr %t10, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !29
  %t16 = getelementptr %"compiler/generic:Program", ptr %t14, i32 0, i32 2
  %t17 = load i32, ptr %l2, !tbaa !23
  %t20 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t16, i32 %t17)
  store i32 %t20, ptr %l33
  br label %bb4
bb4:
  %t21 = load i32, ptr %l33, !tbaa !23
  store i32 %t21, ptr %l4, !tbaa !23
  %t22 = load ptr, ptr %l3, !tbaa !29
  %t24 = icmp eq ptr %t22, null
  br i1 %t24, label %bb5, label %bb6
bb5:
  call void @__olang_check_failed(ptr @olang_loc_9641f0facc09fdd7_c62ff0c79521a99b)
  unreachable
bb6:
  br label %bb7
bb7:
  %t26 = load ptr, ptr %l3, !tbaa !29
  %t29 = getelementptr %"compiler/check:Checker", ptr %t26, i32 0, i32 14
  store ptr %t29, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb8
bb8:
  %t31 = load i64, ptr %l6, !tbaa !24
  store i64 %t31, ptr %l39, !tbaa !24
  %t32 = load ptr, ptr %l5, !tbaa !29
  %t34 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t32)
  store i64 %t34, ptr %l41
  br label %bb9
bb9:
  %t35 = load i64, ptr %l39, !tbaa !24
  %t36 = load i64, ptr %l41, !tbaa !24
  %t37 = icmp slt i64 %t35, %t36
  %t39 = xor i1 %t37, true
  br i1 %t39, label %bb10, label %bb11
bb10:
  br label %bb79
bb11:
  br label %bb12
bb12:
  %t41 = load ptr, ptr %l5, !tbaa !29
  %t42 = load i64, ptr %l6, !tbaa !24
  %t45 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t41, i64 %t42)
  store ptr %t45, ptr %l46
  br label %bb13
bb13:
  %t46 = load ptr, ptr %l46, !tbaa !29
  store ptr %t46, ptr %l7, !tbaa !29
  %t47 = load ptr, ptr %l7, !tbaa !29
  %t49 = getelementptr %"compiler/typed:Body", ptr %t47, i32 0, i32 1
  %t50 = load { i64, [2 x i64] }, ptr %t49
  store { i64, [2 x i64] } %t50, ptr %l8
  %t52 = load { i64, [2 x i64] }, ptr %l8
  %t54 = extractvalue { i64, [2 x i64] } %t52, 0
  %t55 = icmp eq i64 %t54, 1
  %t57 = xor i1 %t55, true
  br i1 %t57, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l52, !tbaa !21
  br label %bb20
bb15:
  %t59 = getelementptr { i64, [2 x i64] }, ptr %l8, i32 0, i32 1
  %t60 = getelementptr { i32, i32 }, ptr %t59, i32 0, i32 0
  %t61 = load i32, ptr %t60
  store i32 %t61, ptr %l9, !tbaa !23
  %t63 = getelementptr { i64, [2 x i64] }, ptr %l8, i32 0, i32 1
  %t64 = getelementptr { i32, i32 }, ptr %t63, i32 0, i32 1
  %t65 = load i32, ptr %t64
  store i32 %t65, ptr %l10, !tbaa !23
  %t67 = load ptr, ptr %l3, !tbaa !29
  %t69 = icmp eq ptr %t67, null
  br i1 %t69, label %bb16, label %bb17
bb16:
  call void @__olang_check_failed(ptr @olang_loc_c5788a2fa1963e6_4f790674132263da)
  unreachable
bb17:
  br label %bb18
bb18:
  %t71 = load ptr, ptr %l3, !tbaa !29
  %t74 = getelementptr %"compiler/check:Checker", ptr %t71, i32 0, i32 1
  %t75 = load ptr, ptr %t74, !tbaa !29
  %t77 = getelementptr %"compiler/generic:Program", ptr %t75, i32 0, i32 2
  %t78 = load i32, ptr %l9, !tbaa !23
  %t81 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t77, i32 %t78)
  store i32 %t81, ptr %l62
  br label %bb19
bb19:
  %t82 = load i32, ptr %l62, !range !{i32 0, i32 33}
  %t84 = trunc i64 18 to i32
  %t85 = icmp eq i32 %t82, %t84
  %t87 = xor i1 %t85, true
  store i1 %t87, ptr %l52, !tbaa !21
  br label %bb20
bb20:
  %t89 = load i1, ptr %l52, !tbaa !21
  br i1 %t89, label %bb21, label %bb22
bb21:
  store i1 true, ptr %l66, !tbaa !21
  br label %bb27
bb22:
  %t90 = getelementptr { i64, [2 x i64] }, ptr %l8, i32 0, i32 1
  %t91 = getelementptr { i32, i32 }, ptr %t90, i32 0, i32 0
  %t92 = load i32, ptr %t91
  store i32 %t92, ptr %l11, !tbaa !23
  %t94 = getelementptr { i64, [2 x i64] }, ptr %l8, i32 0, i32 1
  %t95 = getelementptr { i32, i32 }, ptr %t94, i32 0, i32 1
  %t96 = load i32, ptr %t95
  store i32 %t96, ptr %l12, !tbaa !23
  %t98 = load ptr, ptr %l3, !tbaa !29
  %t100 = icmp eq ptr %t98, null
  br i1 %t100, label %bb23, label %bb24
bb23:
  call void @__olang_check_failed(ptr @olang_loc_c5788a2fa1963e6_4f790674132263da)
  unreachable
bb24:
  br label %bb25
bb25:
  %t102 = load ptr, ptr %l3, !tbaa !29
  %t105 = getelementptr %"compiler/check:Checker", ptr %t102, i32 0, i32 1
  %t106 = load ptr, ptr %t105, !tbaa !29
  %t108 = getelementptr %"compiler/generic:Program", ptr %t106, i32 0, i32 2
  %t109 = load i32, ptr %l11, !tbaa !23
  %t112 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t108, i32 %t109)
  store i32 %t112, ptr %l76
  br label %bb26
bb26:
  %t113 = load i32, ptr %l4, !tbaa !23
  %t114 = load i32, ptr %l76, !tbaa !23
  %t116 = icmp ne i32 %t114, %t113
  store i1 %t116, ptr %l66, !tbaa !21
  br label %bb27
bb27:
  %t118 = load i1, ptr %l66, !tbaa !21
  br i1 %t118, label %bb28, label %bb29
bb28:
  br label %bb78
bb29:
  br label %bb30
bb30:
  %t119 = getelementptr { i64, [2 x i64] }, ptr %l8, i32 0, i32 1
  %t120 = getelementptr { i32, i32 }, ptr %t119, i32 0, i32 0
  %t121 = load i32, ptr %t120
  store i32 %t121, ptr %l13, !tbaa !23
  %t123 = getelementptr { i64, [2 x i64] }, ptr %l8, i32 0, i32 1
  %t124 = getelementptr { i32, i32 }, ptr %t123, i32 0, i32 1
  %t125 = load i32, ptr %t124
  store i32 %t125, ptr %l14, !tbaa !23
  %t127 = load ptr, ptr %l3, !tbaa !29
  %t129 = icmp eq ptr %t127, null
  br i1 %t129, label %bb31, label %bb32
bb31:
  call void @__olang_check_failed(ptr @olang_loc_c84a3880e9ad3dcd_a55c78b5e4758561)
  unreachable
bb32:
  br label %bb33
bb33:
  %t131 = load ptr, ptr %l3, !tbaa !29
  %t134 = getelementptr %"compiler/check:Checker", ptr %t131, i32 0, i32 1
  %t135 = load ptr, ptr %t134, !tbaa !29
  %t137 = getelementptr %"compiler/generic:Program", ptr %t135, i32 0, i32 2
  store ptr %t137, ptr %l86, !tbaa !29
  %t138 = load ptr, ptr %l3, !tbaa !29
  %t140 = icmp eq ptr %t138, null
  br i1 %t140, label %bb34, label %bb35
bb34:
  call void @__olang_check_failed(ptr @olang_loc_c84a3880e9ad3dcd_a55c78b5e4758561)
  unreachable
bb35:
  br label %bb36
bb36:
  %t142 = load ptr, ptr %l3, !tbaa !29
  %t145 = getelementptr %"compiler/check:Checker", ptr %t142, i32 0, i32 1
  %t146 = load ptr, ptr %t145, !tbaa !29
  %t148 = getelementptr %"compiler/generic:Program", ptr %t146, i32 0, i32 2
  %t149 = load i32, ptr %l2, !tbaa !23
  %t152 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t148, i32 %t149)
  store i32 %t152, ptr %l94
  br label %bb37
bb37:
  %t153 = load ptr, ptr %l86, !tbaa !29
  %t154 = load i32, ptr %l94, !tbaa !23
  %t155 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t153, i32 %t154)
  store { i64, ptr } %t155, ptr %l95
  br label %bb38
bb38:
  %t156 = load { i64, ptr }, ptr %l95, !tbaa !27
  store { i64, ptr } %t156, ptr %l15, !tbaa !27
  store i64 0, ptr %l16, !tbaa !24
  %t157 = load ptr, ptr %l7, !tbaa !29
  %t159 = getelementptr %"compiler/typed:Body", ptr %t157, i32 0, i32 10
  %t161 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t159)
  store i64 %t161, ptr %l98
  br label %bb39
bb39:
  %t162 = load i64, ptr %l98, !tbaa !24
  store i64 %t162, ptr %l17, !tbaa !24
  store i64 1, ptr %l18, !tbaa !24
  %t163 = load i64, ptr %l17, !tbaa !24
  %t164 = load i64, ptr %l16, !tbaa !24
  %t167 = icmp sgt i64 %t163, %t164
  br i1 %t167, label %bb40, label %bb41
bb40:
  %t169 = load i64, ptr %l18, !tbaa !24
  %t171 = icmp sgt i64 %t169, 0
  br i1 %t171, label %bb42, label %bb43
bb41:
  store i64 0, ptr %l102, !tbaa !24
  br label %bb45
bb42:
  %t173 = load i64, ptr %l17, !tbaa !24
  %t174 = load i64, ptr %l16, !tbaa !24
  %t177 = sub i64 %t173, %t174
  %t178 = load i64, ptr %l18, !tbaa !24
  %t181 = add i64 %t177, %t178
  %t183 = sub i64 %t181, 1
  %t184 = load i64, ptr %l18, !tbaa !24
  %t187 = sdiv i64 %t183, %t184
  store i64 %t187, ptr %l105, !tbaa !24
  br label %bb44
bb43:
  store i64 0, ptr %l105, !tbaa !24
  br label %bb44
bb44:
  %t189 = load i64, ptr %l105, !tbaa !24
  store i64 %t189, ptr %l102, !tbaa !24
  br label %bb45
bb45:
  %t190 = load i64, ptr %l102, !tbaa !24
  store i64 %t190, ptr %l19, !tbaa !24
  store i64 0, ptr %l20, !tbaa !24
  br label %bb46
bb46:
  store %olang.scope zeroinitializer, ptr %s5
  %t191 = load i64, ptr %l20, !tbaa !24
  %t192 = load i64, ptr %l19, !tbaa !24
  %t195 = icmp slt i64 %t191, %t192
  %t197 = xor i1 %t195, true
  br i1 %t197, label %bb47, label %bb48
bb47:
  call void @__olang_scope_close(ptr %s5)
  br label %bb77
bb48:
  br label %bb49
bb49:
  %t199 = load i64, ptr %l16, !tbaa !24
  %t200 = load i64, ptr %l20, !tbaa !24
  %t201 = load i64, ptr %l18, !tbaa !24
  %t204 = mul i64 %t200, %t201
  %t207 = add i64 %t199, %t204
  store i64 %t207, ptr %l21, !tbaa !24
  %t209 = load ptr, ptr %l7, !tbaa !29
  %t211 = getelementptr %"compiler/typed:Body", ptr %t209, i32 0, i32 7
  store ptr %t211, ptr %l124, !tbaa !29
  %t212 = load ptr, ptr %l7, !tbaa !29
  %t214 = getelementptr %"compiler/typed:Body", ptr %t212, i32 0, i32 10
  %t215 = load i64, ptr %l21, !tbaa !24
  %t218 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t214, i64 %t215)
  store i32 %t218, ptr %l128
  br label %bb50
bb50:
  %t219 = load i32, ptr %l128, !tbaa !23
  %t220 = sext i32 %t219 to i64
  %t221 = load ptr, ptr %l124, !tbaa !29
  %t223 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t221, i64 %t220)
  store %"compiler/typed:Local" %t223, ptr %l130
  br label %bb51
bb51:
  %t224 = load %"compiler/typed:Local", ptr %l130
  store %"compiler/typed:Local" %t224, ptr %l22
  %t225 = getelementptr %"compiler/typed:Local", ptr %l22, i32 0, i32 0
  %t226 = load i32, ptr %t225, !tbaa !23
  %t228 = icmp eq i32 %t226, 0
  br i1 %t228, label %bb52, label %bb53
bb52:
  %t230 = load ptr, ptr %l0, !tbaa !29
  %t232 = getelementptr %"compiler/session:Analysis", ptr %t230, i32 0, i32 0
  %t233 = load ptr, ptr %t232, !tbaa !29
  %t235 = getelementptr %"compiler/load:Loader", ptr %t233, i32 0, i32 4
  %t236 = load ptr, ptr %t235, !tbaa !29
  %t237 = load ptr, ptr %l7, !tbaa !29
  %t239 = getelementptr %"compiler/typed:Body", ptr %t237, i32 0, i32 3
  %t240 = load i64, ptr %t239, !tbaa !24
  %t243 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eTextOf(ptr %v0, ptr %v0, ptr %t236, i64 %t240)
  store { i64, ptr } %t243, ptr %l139
  br label %bb54
bb53:
  %t244 = load ptr, ptr %l3, !tbaa !29
  %t246 = icmp eq ptr %t244, null
  br i1 %t246, label %bb61, label %bb62
bb54:
  %t248 = load { i64, ptr }, ptr %l139, !tbaa !27
  store { i64, ptr } %t248, ptr %l140, !tbaa !27
  %t249 = getelementptr %"compiler/typed:Local", ptr %l22, i32 0, i32 1
  %t250 = getelementptr %"compiler/source:Span", ptr %t249, i32 0, i32 0
  %t251 = load i32, ptr %t250, !tbaa !23
  %t253 = sext i32 %t251 to i64
  store i64 %t253, ptr %l142, !tbaa !24
  %t254 = getelementptr %"compiler/typed:Local", ptr %l22, i32 0, i32 1
  %t255 = getelementptr %"compiler/source:Span", ptr %t254, i32 0, i32 1
  %t256 = load i32, ptr %t255, !tbaa !23
  %t258 = sext i32 %t256 to i64
  store i64 %t258, ptr %l144, !tbaa !24
  %t259 = load { i64, ptr }, ptr %l140, !tbaa !27
  %t260 = extractvalue { i64, ptr } %t259, 0
  store i64 %t260, ptr %l145, !tbaa !24
  %t261 = load i64, ptr %l142, !tbaa !24
  %t262 = icmp sge i64 %t261, 0
  br i1 %t262, label %bb55, label %bb56
bb55:
  %t264 = load i64, ptr %l142, !tbaa !24
  %t265 = load i64, ptr %l144, !tbaa !24
  %t266 = icmp sle i64 %t264, %t265
  br i1 %t266, label %bb57, label %bb58
bb56:
  call void @__olang_check_failed(ptr @olang_loc_ba93316a311e09f4_9951ae939e9d3a90)
  unreachable
bb57:
  %t268 = load i64, ptr %l144, !tbaa !24
  %t269 = load i64, ptr %l145, !tbaa !24
  %t270 = icmp sle i64 %t268, %t269
  br i1 %t270, label %bb59, label %bb60
bb58:
  call void @__olang_check_failed(ptr @olang_loc_ba93316a311e09f4_9951ae939e9d3a90)
  unreachable
bb59:
  %t272 = getelementptr { i64, ptr }, ptr %l140, i32 0, i32 1
  %t273 = load ptr, ptr %t272, !tbaa !27
  %t274 = load i64, ptr %l142, !tbaa !24
  %t275 = load i64, ptr %l144, !tbaa !24
  %t276 = getelementptr i8, ptr %t273, i64 %t274
  %t277 = sub i64 %t275, %t274
  %t278 = insertvalue { i64, ptr } undef, i64 %t277, 0
  %t279 = insertvalue { i64, ptr } %t278, ptr %t276, 1
  store { i64, ptr } %t279, ptr %l133, !tbaa !27
  br label %bb65
bb60:
  call void @__olang_check_failed(ptr @olang_loc_ba93316a311e09f4_9951ae939e9d3a90)
  unreachable
bb61:
  call void @__olang_check_failed(ptr @olang_loc_655ed1db7681c96b_c757f347e4ac2c7)
  unreachable
bb62:
  br label %bb63
bb63:
  %t281 = load ptr, ptr %l3, !tbaa !29
  %t284 = getelementptr %"compiler/check:Checker", ptr %t281, i32 0, i32 1
  %t285 = load ptr, ptr %t284, !tbaa !29
  %t287 = getelementptr %"compiler/generic:Program", ptr %t285, i32 0, i32 0
  %t288 = load ptr, ptr %t287, !tbaa !29
  %t290 = getelementptr %"compiler/load:Loader", ptr %t288, i32 0, i32 3
  %t291 = load ptr, ptr %t290, !tbaa !29
  %t292 = getelementptr %"compiler/typed:Local", ptr %l22, i32 0, i32 0
  %t293 = load i32, ptr %t292, !tbaa !23
  %t296 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %s5, ptr %t291, i32 %t293)
  store { i64, ptr } %t296, ptr %l158
  br label %bb64
bb64:
  %t297 = load { i64, ptr }, ptr %l158, !tbaa !27
  store { i64, ptr } %t297, ptr %l133, !tbaa !27
  br label %bb65
bb65:
  %t298 = load { i64, ptr }, ptr %l133, !tbaa !27
  store ptr %a1, ptr %l159, !tbaa !29
  store { i64, ptr } %t298, ptr %l160, !tbaa !27
  %t301 = load i64, ptr @G_2ecompiler_2fsession_2eCompField, !tbaa !24
  store i64 %t301, ptr %l161, !tbaa !24
  %t302 = load ptr, ptr %l3, !tbaa !29
  %t304 = icmp eq ptr %t302, null
  br i1 %t304, label %bb66, label %bb67
bb66:
  call void @__olang_check_failed(ptr @olang_loc_284eaf45fbe9e9ea_494071f23c61296)
  unreachable
bb67:
  br label %bb68
bb68:
  %t306 = load ptr, ptr %l3, !tbaa !29
  store ptr %t306, ptr %l164, !tbaa !29
  %t307 = load i64, ptr %l21, !tbaa !24
  %t308 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t310 = extractvalue { i64, ptr } %t308, 0
  %t313 = icmp slt i64 %t307, %t310
  br i1 %t313, label %bb69, label %bb70
bb69:
  %t315 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t315, ptr %l170, !tbaa !27
  %t316 = load i64, ptr %l21, !tbaa !24
  %t318 = getelementptr { i64, ptr }, ptr %l170, i32 0, i32 1
  %t319 = load ptr, ptr %t318, !tbaa !27
  %t320 = getelementptr i32, ptr %t319, i64 %t316
  %t321 = load i32, ptr %t320, !tbaa !33
  store i32 %t321, ptr %l169, !tbaa !23
  br label %bb71
bb70:
  %t323 = getelementptr %"compiler/typed:Local", ptr %l22, i32 0, i32 2
  %t324 = load i32, ptr %t323, !tbaa !23
  store i32 %t324, ptr %l169, !tbaa !23
  br label %bb71
bb71:
  %t326 = load ptr, ptr %l164, !tbaa !29
  %t327 = load i32, ptr %l169, !tbaa !23
  %t328 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eTy(ptr %v0, ptr %s5, ptr %t326, i32 %t327)
  store { i64, ptr } %t328, ptr %l174
  br label %bb72
bb72:
  %t329 = load { i64, ptr }, ptr %l174, !tbaa !27
  %t330 = extractvalue { i64, ptr } %t329, 0
  %t331 = extractvalue { i64, ptr } %t329, 1
  %t332 = mul i64 %t330, 1
  %t333 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t332)
  call void @llvm.memcpy.p0.p0.i64(ptr %t333, ptr %t331, i64 %t332, i1 false)
  %t334 = insertvalue { i64, ptr } undef, i64 %t330, 0
  %t335 = insertvalue { i64, ptr } %t334, ptr %t333, 1
  store { i64, ptr } %t335, ptr %l175, !tbaa !27
  %t336 = load ptr, ptr %l0, !tbaa !29
  store ptr %t336, ptr %l176, !tbaa !29
  %t337 = load ptr, ptr %l0, !tbaa !29
  %t338 = load ptr, ptr %l7, !tbaa !29
  %t340 = getelementptr %"compiler/typed:Body", ptr %t338, i32 0, i32 3
  %t341 = load i64, ptr %t340, !tbaa !24
  %t344 = call i64 @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2emoduleOfFile(ptr %v0, ptr %t337, i64 %t341)
  store i64 %t344, ptr %l180
  br label %bb73
bb73:
  %t345 = getelementptr %"compiler/typed:Local", ptr %l22, i32 0, i32 1
  %t346 = getelementptr %"compiler/source:Span", ptr %t345, i32 0, i32 0
  %t347 = load i32, ptr %t346, !tbaa !23
  %t349 = sext i32 %t347 to i64
  %t350 = load ptr, ptr %l176, !tbaa !29
  %t351 = load i64, ptr %l180, !tbaa !24
  %t353 = call i1 @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2edeprecatedAt(ptr %v0, ptr %t350, i64 %t351, i64 %t349, i1 true)
  store i1 %t353, ptr %l183
  br label %bb74
bb74:
  %t354 = load { i64, ptr }, ptr %l160, !tbaa !27
  %t355 = extractvalue { i64, ptr } %t354, 1
  %t356 = call ptr @__olang_scope_of(ptr %t355, ptr null)
  %t357 = ptrtoint ptr %t356 to i64
  %t359 = inttoptr i64 %t357 to ptr
  %t360 = load ptr, ptr %l159, !tbaa !29
  %t361 = load { i64, ptr }, ptr %l160, !tbaa !27
  %t362 = load i64, ptr %l161, !tbaa !24
  %t363 = load { i64, ptr }, ptr %l175, !tbaa !27
  %t364 = load i1, ptr %l183, !tbaa !21
  call void @compiler_2fsession_2ecompiler_2fsession_3aItems_2eAddDep(ptr %v1, ptr %t359, ptr %s5, ptr %t360, { i64, ptr } %t361, i64 %t362, { i64, ptr } %t363, i1 %t364)
  br label %bb75
bb75:
  call void @__olang_scope_close(ptr %s5)
  br label %bb76
bb76:
  %t365 = load i64, ptr %l20, !tbaa !24
  %t367 = add i64 %t365, 1
  store i64 %t367, ptr %l20, !tbaa !24
  br label %bb46
bb77:
  br label %ret
bb78:
  %t369 = load i64, ptr %l6, !tbaa !24
  %t371 = add i64 %t369, 1
  store i64 %t371, ptr %l6, !tbaa !24
  br label %bb8
bb79:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2emoduleOfFile(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l11 = alloca i64
  %l15 = alloca i64
  %l18 = alloca i64
  %l40 = alloca ptr
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/session:Analysis", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/load:Loader", ptr %t4, i32 0, i32 10
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t6)
  store i64 %t8, ptr %l11
  br label %bb1
bb1:
  %t9 = load i64, ptr %l11, !tbaa !24
  store i64 %t9, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t10 = load i64, ptr %l3, !tbaa !24
  %t11 = load i64, ptr %l2, !tbaa !24
  %t14 = icmp sgt i64 %t10, %t11
  br i1 %t14, label %bb2, label %bb3
bb2:
  %t16 = load i64, ptr %l4, !tbaa !24
  %t18 = icmp sgt i64 %t16, 0
  br i1 %t18, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l15, !tbaa !24
  br label %bb7
bb4:
  %t20 = load i64, ptr %l3, !tbaa !24
  %t21 = load i64, ptr %l2, !tbaa !24
  %t24 = sub i64 %t20, %t21
  %t25 = load i64, ptr %l4, !tbaa !24
  %t28 = add i64 %t24, %t25
  %t30 = sub i64 %t28, 1
  %t31 = load i64, ptr %l4, !tbaa !24
  %t34 = sdiv i64 %t30, %t31
  store i64 %t34, ptr %l18, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l18, !tbaa !24
  br label %bb6
bb6:
  %t36 = load i64, ptr %l18, !tbaa !24
  store i64 %t36, ptr %l15, !tbaa !24
  br label %bb7
bb7:
  %t37 = load i64, ptr %l15, !tbaa !24
  store i64 %t37, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb8
bb8:
  %t38 = load i64, ptr %l6, !tbaa !24
  %t39 = load i64, ptr %l5, !tbaa !24
  %t42 = icmp slt i64 %t38, %t39
  %t44 = xor i1 %t42, true
  br i1 %t44, label %bb9, label %bb10
bb9:
  br label %bb17
bb10:
  br label %bb11
bb11:
  %t46 = load i64, ptr %l2, !tbaa !24
  %t47 = load i64, ptr %l6, !tbaa !24
  %t48 = load i64, ptr %l4, !tbaa !24
  %t51 = mul i64 %t47, %t48
  %t54 = add i64 %t46, %t51
  store i64 %t54, ptr %l7, !tbaa !24
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/session:Analysis", ptr %t56, i32 0, i32 0
  %t59 = load ptr, ptr %t58, !tbaa !29
  %t61 = getelementptr %"compiler/load:Loader", ptr %t59, i32 0, i32 10
  %t62 = load i64, ptr %l7, !tbaa !24
  %t65 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t61, i64 %t62)
  store ptr %t65, ptr %l40
  br label %bb12
bb12:
  %t66 = load ptr, ptr %l40, !tbaa !29
  %t68 = getelementptr %"compiler/load:Module", ptr %t66, i32 0, i32 4
  %t69 = load i64, ptr %t68, !tbaa !24
  %t73 = icmp eq i64 %t69, %a1
  br i1 %t73, label %bb13, label %bb14
bb13:
  %t75 = load i64, ptr %l7, !tbaa !24
  store i64 %t75, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  br label %bb16
bb16:
  %t77 = load i64, ptr %l6, !tbaa !24
  %t79 = add i64 %t77, 1
  store i64 %t79, ptr %l6, !tbaa !24
  br label %bb8
bb17:
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { { i64, ptr }, i64, i64 } @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2enoteOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, [6 x i64] } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [6 x i64] }
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i32
  %l10 = alloca i64
  %l11 = alloca %"compiler/session:memberInfo"
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca { i64, ptr }
  %l26 = alloca i64
  %l29 = alloca { i64, ptr }
  %l32 = alloca { i64, ptr }
  %l34 = alloca { i64, ptr }
  %l36 = alloca { i64, ptr }
  %l49 = alloca i64
  %l56 = alloca ptr
  %l60 = alloca i64
  %l64 = alloca { i64, ptr }
  %l66 = alloca { i64, ptr }
  %l68 = alloca { i64, ptr }
  %l76 = alloca %"compiler/session:memberInfo"
  %l80 = alloca %"compiler/session:memberInfo"
  %l81 = alloca i32
  %l83 = alloca i1
  %l84 = alloca { i64, ptr }
  %l86 = alloca { { i64, ptr }, i64, i64 }
  %l87 = alloca { i64, ptr }
  %l88 = alloca i64
  %l89 = alloca { i64, ptr }
  %l91 = alloca { i64, ptr }
  %l92 = alloca i64
  %l95 = alloca i64
  %l103 = alloca { i64, ptr }
  %l107 = alloca { i64, ptr }
  %l109 = alloca { { i64, ptr }, i64, i64 }
  %l110 = alloca { i64, ptr }
  %l111 = alloca i64
  %l112 = alloca { i64, ptr }
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca { { i64, ptr }, i64, i64 }
  store ptr %a0, ptr %l0
  store { i64, [6 x i64] } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/session:Analysis", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t6 = load { i64, [6 x i64] }, ptr %l1
  %t8 = extractvalue { i64, [6 x i64] } %t6, 0
  %t9 = icmp eq i64 %t8, 1
  br i1 %t9, label %bb1, label %bb2
bb1:
  %t11 = getelementptr { i64, [6 x i64] }, ptr %l1, i32 0, i32 1
  %t12 = getelementptr { i64, { i64, ptr } }, ptr %t11, i32 0, i32 0
  %t13 = load i64, ptr %t12
  store i64 %t13, ptr %l3, !tbaa !24
  %t15 = getelementptr { i64, [6 x i64] }, ptr %l1, i32 0, i32 1
  %t16 = getelementptr { i64, { i64, ptr } }, ptr %t15, i32 0, i32 1
  %t17 = load { i64, ptr }, ptr %t16
  store { i64, ptr } %t17, ptr %l4, !tbaa !27
  br label %bb3
bb2:
  br label %bb14
bb3:
  %t19 = load ptr, ptr %l2, !tbaa !29
  %t21 = icmp eq ptr %t19, null
  br i1 %t21, label %bb4, label %bb5
bb4:
  call void @__olang_check_failed(ptr @olang_loc_3355c36425226bea_fe115d6500f3a7ee)
  unreachable
bb5:
  br label %bb6
bb6:
  %t23 = load ptr, ptr %l2, !tbaa !29
  %t24 = load i64, ptr %l3, !tbaa !24
  %t25 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t29 = call i64 @compiler_2fsession_2edeclOf(ptr %v0, ptr %v1, ptr %t23, i64 %t24, { i64, ptr } %t25)
  store i64 %t29, ptr %l26
  br label %bb7
bb7:
  %t30 = load i64, ptr %l26, !tbaa !24
  store i64 %t30, ptr %l5, !tbaa !24
  %t31 = load i64, ptr %l5, !tbaa !24
  %t33 = icmp sge i64 %t31, 0
  br i1 %t33, label %bb8, label %bb9
bb8:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t36 = load i64, ptr %l3, !tbaa !24
  %t39 = call { i64, ptr } @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2eTextOf(ptr %v0, ptr %v0, ptr %t35, i64 %t36)
  store { i64, ptr } %t39, ptr %l32
  br label %bb10
bb9:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d31, i32 0, i32 1) }, ptr %l29, !tbaa !27
  br label %bb12
bb10:
  %t40 = load i64, ptr %l5, !tbaa !24
  %t41 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t43 = call { i64, ptr } @compiler_2fdoc_2eComment(ptr %v0, ptr %v2, { i64, ptr } %t41, i64 %t40, i1 true)
  store { i64, ptr } %t43, ptr %l34
  br label %bb11
bb11:
  %t44 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t45 = extractvalue { i64, ptr } %t44, 0
  %t46 = extractvalue { i64, ptr } %t44, 1
  %t47 = mul i64 %t45, 1
  %t48 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t47)
  call void @llvm.memcpy.p0.p0.i64(ptr %t48, ptr %t46, i64 %t47, i1 false)
  %t49 = insertvalue { i64, ptr } undef, i64 %t45, 0
  %t50 = insertvalue { i64, ptr } %t49, ptr %t48, 1
  store { i64, ptr } %t50, ptr %l29, !tbaa !27
  br label %bb12
bb12:
  %t52 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t53 = call { i64, ptr } @compiler_2fdoc_2eDeprecation(ptr %v2, ptr %v2, { i64, ptr } %t52)
  store { i64, ptr } %t53, ptr %l36
  br label %bb13
bb13:
  %t54 = load i64, ptr %l5, !tbaa !24
  %t55 = load i64, ptr %l3, !tbaa !24
  %t56 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t57 = insertvalue { { i64, ptr }, i64, i64 } undef, { i64, ptr } %t56, 0
  %t59 = insertvalue { { i64, ptr }, i64, i64 } %t57, i64 %t54, 1
  %t61 = insertvalue { { i64, ptr }, i64, i64 } %t59, i64 %t55, 2
  store { { i64, ptr }, i64, i64 } %t61, ptr %rv
  br label %ret
bb14:
  %t63 = load { i64, [6 x i64] }, ptr %l1
  %t65 = extractvalue { i64, [6 x i64] } %t63, 0
  %t66 = icmp eq i64 %t65, 2
  br i1 %t66, label %bb15, label %bb16
bb15:
  %t68 = getelementptr { i64, [6 x i64] }, ptr %l1, i32 0, i32 1
  %t69 = getelementptr { i64 }, ptr %t68, i32 0, i32 0
  %t70 = load i64, ptr %t69
  store i64 %t70, ptr %l6, !tbaa !24
  br label %bb17
bb16:
  br label %bb31
bb17:
  store %olang.scope zeroinitializer, ptr %s2
  %t72 = load ptr, ptr %l2, !tbaa !29
  %t74 = icmp eq ptr %t72, null
  br i1 %t74, label %bb18, label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_9d5a0cb699faa7f1_8fc39d14917e395)
  unreachable
bb19:
  br label %bb20
bb20:
  %t76 = load ptr, ptr %l2, !tbaa !29
  %t79 = getelementptr %"compiler/check:Checker", ptr %t76, i32 0, i32 1
  %t80 = load ptr, ptr %t79, !tbaa !29
  %t81 = load i64, ptr %l6, !tbaa !24
  %t84 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t80, i64 %t81)
  store i64 %t84, ptr %l49
  br label %bb21
bb21:
  %t85 = load i64, ptr %l49, !tbaa !24
  store i64 %t85, ptr %l7, !tbaa !24
  %t86 = load ptr, ptr %l2, !tbaa !29
  %t88 = icmp eq ptr %t86, null
  br i1 %t88, label %bb22, label %bb23
bb22:
  call void @__olang_check_failed(ptr @olang_loc_f7c6bb339a0b1bfc_57f909eed9cc3b80)
  unreachable
bb23:
  br label %bb24
bb24:
  %t90 = load ptr, ptr %l2, !tbaa !29
  %t93 = getelementptr %"compiler/check:Checker", ptr %t90, i32 0, i32 1
  %t94 = load ptr, ptr %t93, !tbaa !29
  %t95 = load i64, ptr %l6, !tbaa !24
  %t98 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %s2, ptr %t94, i64 %t95)
  store ptr %t98, ptr %l56
  br label %bb25
bb25:
  %t99 = load ptr, ptr %l56, !tbaa !29
  %t101 = getelementptr %"compiler/ast:Func", ptr %t99, i32 0, i32 0
  %t102 = getelementptr %"compiler/source:Span", ptr %t101, i32 0, i32 0
  %t103 = load i32, ptr %t102, !tbaa !23
  %t105 = sext i32 %t103 to i64
  store i64 %t105, ptr %l8, !tbaa !24
  %t107 = ptrtoint ptr %v2 to i64
  store i64 %t107, ptr %l60, !tbaa !24
  %t108 = load i1, ptr @olang_2esole_2estd_2fprelude_2ftext_3aLineIter_2e0
  br i1 %t108, label %bb26, label %bb27
bb26:
  %t110 = call ptr @__olang_region_make(ptr %v2)
  %t111 = ptrtoint ptr %t110 to i64
  store i64 %t111, ptr %l60, !tbaa !24
  br label %bb27
bb27:
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t113 = load i64, ptr %l7, !tbaa !24
  %t116 = call { i64, ptr } @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2eTextOf(ptr %v0, ptr %v0, ptr %t112, i64 %t113)
  store { i64, ptr } %t116, ptr %l64
  br label %bb28
bb28:
  %t117 = load i64, ptr %l8, !tbaa !24
  %t118 = load i64, ptr %l60
  %t119 = inttoptr i64 %t118 to ptr
  %t120 = load { i64, ptr }, ptr %l64, !tbaa !27
  %t122 = call { i64, ptr } @compiler_2fdoc_2eAbove(ptr %v0, ptr %t119, { i64, ptr } %t120, i64 %t117)
  store { i64, ptr } %t122, ptr %l66
  br label %bb29
bb29:
  %t123 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t124 = load i64, ptr %l60
  %t125 = inttoptr i64 %t124 to ptr
  %t126 = extractvalue { i64, ptr } %t123, 0
  %t127 = extractvalue { i64, ptr } %t123, 1
  %t128 = mul i64 %t126, 1
  %t129 = call ptr @__olang_scope_alloc(ptr %t125, i64 %t128)
  call void @llvm.memcpy.p0.p0.i64(ptr %t129, ptr %t127, i64 %t128, i1 false)
  %t130 = insertvalue { i64, ptr } undef, i64 %t126, 0
  %t131 = insertvalue { i64, ptr } %t130, ptr %t129, 1
  %t133 = call { i64, ptr } @compiler_2fdoc_2eDeprecation(ptr %v2, ptr %v2, { i64, ptr } %t131)
  store { i64, ptr } %t133, ptr %l68
  br label %bb30
bb30:
  %t134 = load i64, ptr %l8, !tbaa !24
  %t135 = load i64, ptr %l7, !tbaa !24
  %t136 = load { i64, ptr }, ptr %l68, !tbaa !27
  %t137 = insertvalue { { i64, ptr }, i64, i64 } undef, { i64, ptr } %t136, 0
  %t139 = insertvalue { { i64, ptr }, i64, i64 } %t137, i64 %t134, 1
  %t141 = insertvalue { { i64, ptr }, i64, i64 } %t139, i64 %t135, 2
  call void @__olang_scope_close(ptr %s2)
  store { { i64, ptr }, i64, i64 } %t141, ptr %rv
  br label %ret
bb31:
  %t143 = load { i64, [6 x i64] }, ptr %l1
  %t145 = extractvalue { i64, [6 x i64] } %t143, 0
  %t146 = icmp eq i64 %t145, 3
  br i1 %t146, label %bb32, label %bb33
bb32:
  %t148 = getelementptr { i64, [6 x i64] }, ptr %l1, i32 0, i32 1
  %t149 = getelementptr { i32, i64 }, ptr %t148, i32 0, i32 0
  %t150 = load i32, ptr %t149
  store i32 %t150, ptr %l9, !tbaa !23
  %t152 = getelementptr { i64, [6 x i64] }, ptr %l1, i32 0, i32 1
  %t153 = getelementptr { i32, i64 }, ptr %t152, i32 0, i32 1
  %t154 = load i64, ptr %t153
  store i64 %t154, ptr %l10, !tbaa !24
  br label %bb34
bb33:
  br label %bb41
bb34:
  store %olang.scope zeroinitializer, ptr %s3
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t157 = load i32, ptr %l9, !tbaa !23
  %t158 = load i64, ptr %l10, !tbaa !24
  %t162 = call { i32, %"compiler/session:memberInfo" } @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2efield(ptr %v0, ptr %s3, ptr %t156, i32 %t157, i64 %t158)
  %t163 = extractvalue { i32, %"compiler/session:memberInfo" } %t162, 1
  %t164 = extractvalue { i32, %"compiler/session:memberInfo" } %t162, 0
  store i32 %t164, ptr %l81
  %t165 = icmp ne i32 %t164, 0
  br i1 %t165, label %bb36, label %ok.166, !prof !99
ok.166:
  store %"compiler/session:memberInfo" %t163, ptr %l80
  br label %bb35
bb35:
  %t167 = load %"compiler/session:memberInfo", ptr %l80
  store %"compiler/session:memberInfo" %t167, ptr %l76
  br label %bb38
bb36:
  %t168 = load i32, ptr %l81, !tbaa !23
  %t169 = ashr i32 %t168, 16
  %t171 = icmp eq i32 %t169, 1
  store i1 %t171, ptr %l83, !tbaa !21
  br label %bb37
bb37:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d32, i32 0, i32 1) }, ptr %l84, !tbaa !27
  %t172 = load { i64, ptr }, ptr %l84, !tbaa !27
  %t174 = insertvalue { { i64, ptr }, i64, i64 } undef, { i64, ptr } %t172, 0
  %t175 = insertvalue { { i64, ptr }, i64, i64 } %t174, i64 -1, 1
  %t176 = insertvalue { { i64, ptr }, i64, i64 } %t175, i64 -1, 2
  store { { i64, ptr }, i64, i64 } %t176, ptr %l86
  %t177 = getelementptr { { i64, ptr }, i64, i64 }, ptr %l86, i32 0, i32 0
  %t178 = load { i64, ptr }, ptr %t177, !tbaa !27
  store { i64, ptr } %t178, ptr %l87, !tbaa !27
  %t179 = load { i64, ptr }, ptr %l87, !tbaa !27
  %t180 = extractvalue { i64, ptr } %t179, 0
  store i64 %t180, ptr %l88, !tbaa !24
  %t181 = load i64, ptr %l88, !tbaa !24
  %t182 = mul i64 %t181, 1
  %t183 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t182)
  %t184 = insertvalue { i64, ptr } undef, i64 %t181, 0
  %t185 = insertvalue { i64, ptr } %t184, ptr %t183, 1
  store { i64, ptr } %t185, ptr %l89, !tbaa !27
  %t186 = getelementptr { i64, ptr }, ptr %l89, i32 0, i32 1
  %t187 = load ptr, ptr %t186, !tbaa !27
  %t188 = getelementptr { i64, ptr }, ptr %l87, i32 0, i32 1
  %t189 = load ptr, ptr %t188, !tbaa !27
  %t190 = load i64, ptr %l88, !tbaa !24
  %t191 = mul i64 %t190, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t187, ptr %t189, i64 %t191, i1 false)
  %t192 = load { i64, ptr }, ptr %l89, !tbaa !27
  %t193 = getelementptr { { i64, ptr }, i64, i64 }, ptr %l86, i32 0, i32 0
  store { i64, ptr } %t192, ptr %t193, !tbaa !27
  call void @__olang_scope_close(ptr %s3)
  %t194 = load { { i64, ptr }, i64, i64 }, ptr %l86
  store { { i64, ptr }, i64, i64 } %t194, ptr %rv
  br label %ret
bb38:
  %t195 = load %"compiler/session:memberInfo", ptr %l76
  store %"compiler/session:memberInfo" %t195, ptr %l11
  %t196 = getelementptr %"compiler/session:memberInfo", ptr %l11, i32 0, i32 2
  %t197 = load { i64, ptr }, ptr %t196, !tbaa !27
  %t199 = call { i64, ptr } @compiler_2fdoc_2eDeprecation(ptr %s3, ptr %v2, { i64, ptr } %t197)
  store { i64, ptr } %t199, ptr %l91
  br label %bb39
bb39:
  %t200 = getelementptr %"compiler/session:memberInfo", ptr %l11, i32 0, i32 4
  %t201 = load i64, ptr %t200, !tbaa !24
  store i64 %t201, ptr %l92, !tbaa !24
  %t202 = load ptr, ptr %l0, !tbaa !29
  %t203 = getelementptr %"compiler/session:memberInfo", ptr %l11, i32 0, i32 3
  %t204 = load { i64, ptr }, ptr %t203, !tbaa !27
  %t207 = call i64 @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2eModuleOf(ptr %v0, ptr %s3, ptr %t202, { i64, ptr } %t204)
  store i64 %t207, ptr %l95
  br label %bb40
bb40:
  %t208 = load { i64, ptr }, ptr %l91, !tbaa !27
  %t209 = insertvalue { { i64, ptr }, i64, i64 } undef, { i64, ptr } %t208, 0
  %t210 = load i64, ptr %l92, !tbaa !24
  %t211 = insertvalue { { i64, ptr }, i64, i64 } %t209, i64 %t210, 1
  %t212 = load i64, ptr %l95, !tbaa !24
  %t213 = insertvalue { { i64, ptr }, i64, i64 } %t211, i64 %t212, 2
  call void @__olang_scope_close(ptr %s3)
  store { { i64, ptr }, i64, i64 } %t213, ptr %rv
  br label %ret
bb41:
  %t215 = load { i64, [6 x i64] }, ptr %l1
  %t217 = extractvalue { i64, [6 x i64] } %t215, 0
  %t218 = icmp eq i64 %t217, 5
  br i1 %t218, label %bb42, label %bb43
bb42:
  %t220 = getelementptr { i64, [6 x i64] }, ptr %l1, i32 0, i32 1
  %t221 = getelementptr { i64, i64, { i64, ptr }, { i64, ptr } }, ptr %t220, i32 0, i32 0
  %t222 = load i64, ptr %t221
  store i64 %t222, ptr %l12, !tbaa !24
  %t224 = getelementptr { i64, [6 x i64] }, ptr %l1, i32 0, i32 1
  %t225 = getelementptr { i64, i64, { i64, ptr }, { i64, ptr } }, ptr %t224, i32 0, i32 1
  %t226 = load i64, ptr %t225
  store i64 %t226, ptr %l13, !tbaa !24
  %t228 = getelementptr { i64, [6 x i64] }, ptr %l1, i32 0, i32 1
  %t229 = getelementptr { i64, i64, { i64, ptr }, { i64, ptr } }, ptr %t228, i32 0, i32 2
  %t230 = load { i64, ptr }, ptr %t229
  store { i64, ptr } %t230, ptr %l14, !tbaa !27
  br label %bb44
bb43:
  br label %bb46
bb44:
  %t232 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t234 = call { i64, ptr } @compiler_2fdoc_2eDeprecation(ptr %v1, ptr %v2, { i64, ptr } %t232)
  store { i64, ptr } %t234, ptr %l103
  br label %bb45
bb45:
  %t235 = load i64, ptr %l13, !tbaa !24
  %t236 = load i64, ptr %l12, !tbaa !24
  %t237 = load { i64, ptr }, ptr %l103, !tbaa !27
  %t238 = insertvalue { { i64, ptr }, i64, i64 } undef, { i64, ptr } %t237, 0
  %t240 = insertvalue { { i64, ptr }, i64, i64 } %t238, i64 %t235, 1
  %t242 = insertvalue { { i64, ptr }, i64, i64 } %t240, i64 %t236, 2
  store { { i64, ptr }, i64, i64 } %t242, ptr %rv
  br label %ret
bb46:
  br i1 true, label %bb47, label %bb48
bb47:
  br label %bb49
bb48:
  br label %bb50
bb49:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d33, i32 0, i32 1) }, ptr %l107, !tbaa !27
  %t244 = load { i64, ptr }, ptr %l107, !tbaa !27
  %t246 = insertvalue { { i64, ptr }, i64, i64 } undef, { i64, ptr } %t244, 0
  %t247 = insertvalue { { i64, ptr }, i64, i64 } %t246, i64 -1, 1
  %t248 = insertvalue { { i64, ptr }, i64, i64 } %t247, i64 -1, 2
  store { { i64, ptr }, i64, i64 } %t248, ptr %l109
  %t249 = getelementptr { { i64, ptr }, i64, i64 }, ptr %l109, i32 0, i32 0
  %t250 = load { i64, ptr }, ptr %t249, !tbaa !27
  store { i64, ptr } %t250, ptr %l110, !tbaa !27
  %t251 = load { i64, ptr }, ptr %l110, !tbaa !27
  %t252 = extractvalue { i64, ptr } %t251, 0
  store i64 %t252, ptr %l111, !tbaa !24
  %t253 = load i64, ptr %l111, !tbaa !24
  %t254 = mul i64 %t253, 1
  %t255 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t254)
  %t256 = insertvalue { i64, ptr } undef, i64 %t253, 0
  %t257 = insertvalue { i64, ptr } %t256, ptr %t255, 1
  store { i64, ptr } %t257, ptr %l112, !tbaa !27
  %t258 = getelementptr { i64, ptr }, ptr %l112, i32 0, i32 1
  %t259 = load ptr, ptr %t258, !tbaa !27
  %t260 = getelementptr { i64, ptr }, ptr %l110, i32 0, i32 1
  %t261 = load ptr, ptr %t260, !tbaa !27
  %t262 = load i64, ptr %l111, !tbaa !24
  %t263 = mul i64 %t262, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t259, ptr %t261, i64 %t263, i1 false)
  %t264 = load { i64, ptr }, ptr %l112, !tbaa !27
  %t265 = getelementptr { { i64, ptr }, i64, i64 }, ptr %l109, i32 0, i32 0
  store { i64, ptr } %t264, ptr %t265, !tbaa !27
  %t266 = load { { i64, ptr }, i64, i64 }, ptr %l109
  store { { i64, ptr }, i64, i64 } %t266, ptr %rv
  br label %ret
bb50:
  call void @__olang_check_failed(ptr @olang_loc_9563e15fbc6eea92_8818e5f6fc0bf866)
  unreachable
ret:
  %rr = load { { i64, ptr }, i64, i64 }, ptr %rv
  ret { { i64, ptr }, i64, i64 } %rr
}

define dso_local { i64, [6 x i64] } @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2etarget(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"compiler/source:Span" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i64
  %lp6 = alloca ptr
  %l7 = alloca %"compiler/names:Ref"
  %l8 = alloca i32
  %l9 = alloca %"compiler/source:Span"
  %l10 = alloca %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20"
  %l11 = alloca ptr
  %l12 = alloca i64
  %l13 = alloca %"compiler/names:Entry"
  %l14 = alloca i64
  %l15 = alloca %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20"
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca ptr
  %lp23 = alloca ptr
  %l24 = alloca ptr
  %l25 = alloca i64
  %l26 = alloca ptr
  %l39 = alloca ptr
  %l44 = alloca { i64, ptr }
  %l45 = alloca { i64, ptr }
  %l47 = alloca i64
  %l49 = alloca i64
  %l50 = alloca i64
  %l59 = alloca %"compiler/names:Ref"
  %l65 = alloca %"compiler/names:Ref"
  %l73 = alloca i64
  %l80 = alloca ptr
  %l84 = alloca ptr
  %l88 = alloca %"compiler/names:Entry"
  %l90 = alloca { i64, ptr }
  %l104 = alloca %"compiler/source:Span"
  %l109 = alloca %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20"
  %l125 = alloca ptr
  %l128 = alloca i64
  %l130 = alloca i64
  %l135 = alloca %"compiler/names:Entry"
  %l139 = alloca i1
  %l150 = alloca i64
  %l153 = alloca i1
  %l156 = alloca i1
  %l163 = alloca ptr
  %l179 = alloca %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20"
  %l195 = alloca i64
  %l199 = alloca i64
  %l202 = alloca i64
  %l226 = alloca i64
  %l235 = alloca ptr
  %l237 = alloca i1
  %l238 = alloca i1
  %l248 = alloca { i64, ptr }
  %l250 = alloca i1
  %l251 = alloca i1
  %l258 = alloca i1
  %l265 = alloca i1
  %l270 = alloca i1
  %l272 = alloca i64
  %l274 = alloca { i64, ptr }
  %l276 = alloca %"compiler/source:Span"
  %l285 = alloca i1
  %l295 = alloca { i64, ptr }
  %l297 = alloca i1
  %l305 = alloca i1
  %l312 = alloca i1
  %l317 = alloca i1
  %l319 = alloca i64
  %l321 = alloca { i64, ptr }
  %l323 = alloca %"compiler/source:Span"
  %l332 = alloca i64
  %l334 = alloca i64
  %l335 = alloca { i64, ptr }
  %l339 = alloca %"compiler/session:finder"
  %l345 = alloca i64
  %l347 = alloca i64
  %l352 = alloca ptr
  %l357 = alloca i1
  %l367 = alloca i1
  %s3 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %rv = alloca { i64, [6 x i64] }
  %t171 = alloca { i64, [6 x i64] }, align 8
  %t187 = alloca { i64, [6 x i64] }, align 8
  %t231 = alloca { i64, [6 x i64] }, align 8
  %t260 = alloca { i64, [6 x i64] }, align 8
  %t384 = alloca { i64, [6 x i64] }, align 8
  %t417 = alloca { i64, [6 x i64] }, align 8
  %t625 = alloca { i64, [6 x i64] }, align 8
  %t735 = alloca { i64, [6 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store %"compiler/source:Span" %a2, ptr %l2
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
  call void @__olang_check_failed(ptr @olang_loc_d513bc439d44d6f6_9aa74f14fc08fdfa)
  unreachable
bb2:
  br label %bb3
bb3:
  %t10 = load ptr, ptr %l3, !tbaa !29
  %t13 = getelementptr %"compiler/check:Checker", ptr %t10, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !29
  %t16 = getelementptr %"compiler/generic:Program", ptr %t14, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !29
  store ptr %t17, ptr %l4, !tbaa !29
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/session:Analysis", ptr %t19, i32 0, i32 0
  %t22 = load ptr, ptr %t21, !tbaa !29
  %t24 = getelementptr %"compiler/load:Loader", ptr %t22, i32 0, i32 10
  %t25 = load i64, ptr %l1, !tbaa !24
  %t28 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t24, i64 %t25)
  store ptr %t28, ptr %l39
  br label %bb4
bb4:
  %t29 = load ptr, ptr %l39, !tbaa !29
  %t31 = getelementptr %"compiler/load:Module", ptr %t29, i32 0, i32 4
  %t32 = load i64, ptr %t31, !tbaa !24
  store i64 %t32, ptr %l5, !tbaa !24
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t35 = load i64, ptr %l1, !tbaa !24
  %t38 = call { i64, ptr } @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2eTextOf(ptr %v0, ptr %v0, ptr %t34, i64 %t35)
  store { i64, ptr } %t38, ptr %l44
  br label %bb5
bb5:
  %t39 = load { i64, ptr }, ptr %l44, !tbaa !27
  store { i64, ptr } %t39, ptr %l45, !tbaa !27
  %t40 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t41 = load i32, ptr %t40, !tbaa !23
  %t43 = sext i32 %t41 to i64
  store i64 %t43, ptr %l47, !tbaa !24
  %t44 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 1
  %t45 = load i32, ptr %t44, !tbaa !23
  %t47 = sext i32 %t45 to i64
  store i64 %t47, ptr %l49, !tbaa !24
  %t48 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t49 = extractvalue { i64, ptr } %t48, 0
  store i64 %t49, ptr %l50, !tbaa !24
  %t50 = load i64, ptr %l47, !tbaa !24
  %t51 = icmp sge i64 %t50, 0
  br i1 %t51, label %bb6, label %bb7
bb6:
  %t53 = load i64, ptr %l47, !tbaa !24
  %t54 = load i64, ptr %l49, !tbaa !24
  %t55 = icmp sle i64 %t53, %t54
  br i1 %t55, label %bb8, label %bb9
bb7:
  call void @__olang_check_failed(ptr @olang_loc_78ada93836b36c6b_7d0979891c04300f)
  unreachable
bb8:
  %t57 = load i64, ptr %l49, !tbaa !24
  %t58 = load i64, ptr %l50, !tbaa !24
  %t59 = icmp sle i64 %t57, %t58
  br i1 %t59, label %bb10, label %bb11
bb9:
  call void @__olang_check_failed(ptr @olang_loc_78ada93836b36c6b_7d0979891c04300f)
  unreachable
bb10:
  %t61 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !27
  %t63 = load i64, ptr %l47, !tbaa !24
  %t64 = load i64, ptr %l49, !tbaa !24
  %t65 = getelementptr i8, ptr %t62, i64 %t63
  %t66 = sub i64 %t64, %t63
  %t67 = insertvalue { i64, ptr } undef, i64 %t66, 0
  %t68 = insertvalue { i64, ptr } %t67, ptr %t65, 1
  %t70 = extractvalue { i64, ptr } %t68, 1
  %t71 = extractvalue { i64, ptr } %t68, 0
  %t72 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t71)
  call void @olang_textcopy(ptr %t72, ptr %t70, i64 %t71)
  %t73 = insertvalue { i64, ptr } undef, i64 %t71, 0
  %t74 = insertvalue { i64, ptr } %t73, ptr %t72, 1
  %t75 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t75, ptr %lp6
  %t77 = load ptr, ptr %lp6
  store { i64, ptr } %t74, ptr %t77, !tbaa !27
  %t78 = load ptr, ptr %l4, !tbaa !29
  %t79 = load i64, ptr %l5, !tbaa !24
  %t80 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t81 = load i32, ptr %t80, !tbaa !23
  %t85 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %t78, i64 %t79, i32 %t81)
  store %"compiler/names:Ref" %t85, ptr %l59
  br label %bb12
bb11:
  call void @__olang_check_failed(ptr @olang_loc_78ada93836b36c6b_7d0979891c04300f)
  unreachable
bb12:
  %t86 = load %"compiler/names:Ref", ptr %l59
  store %"compiler/names:Ref" %t86, ptr %l7
  %t87 = getelementptr %"compiler/names:Ref", ptr %l7, i32 0, i32 0
  %t88 = load i32, ptr %t87, !range !{i32 0, i32 9}
  %t90 = trunc i64 0 to i32
  %t91 = icmp eq i32 %t88, %t90
  br i1 %t91, label %bb13, label %bb14
bb13:
  %t93 = load ptr, ptr %l4, !tbaa !29
  %t94 = load i64, ptr %l5, !tbaa !24
  %t95 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 1
  %t96 = load i32, ptr %t95, !tbaa !23
  %t100 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eMember(ptr %v0, ptr %t93, i64 %t94, i32 %t96)
  store %"compiler/names:Ref" %t100, ptr %l65
  br label %bb15
bb14:
  br label %bb16
bb15:
  %t101 = load %"compiler/names:Ref", ptr %l65
  store %"compiler/names:Ref" %t101, ptr %l7
  br label %bb16
bb16:
  %t102 = getelementptr %"compiler/names:Ref", ptr %l7, i32 0, i32 0
  %t103 = load i32, ptr %t102, !range !{i32 0, i32 9}
  store i32 %t103, ptr %l8
  %t105 = load i32, ptr %l8, !range !{i32 0, i32 9}
  %t107 = trunc i64 3 to i32
  %t108 = icmp eq i32 %t105, %t107
  br i1 %t108, label %bb17, label %bb18
bb17:
  br label %bb23
bb18:
  %t110 = load i32, ptr %l8, !range !{i32 0, i32 9}
  %t112 = trunc i64 2 to i32
  %t113 = icmp eq i32 %t110, %t112
  br i1 %t113, label %bb19, label %bb20
bb19:
  br label %bb23
bb20:
  %t115 = load i32, ptr %l8, !range !{i32 0, i32 9}
  %t117 = trunc i64 4 to i32
  %t118 = icmp eq i32 %t115, %t117
  br i1 %t118, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb30
bb23:
  store %olang.scope zeroinitializer, ptr %s3
  %t120 = getelementptr %"compiler/names:Ref", ptr %l7, i32 0, i32 1
  %t121 = load i64, ptr %t120, !tbaa !24
  store i64 %t121, ptr %l73, !tbaa !24
  %t122 = load ptr, ptr %l3, !tbaa !29
  %t124 = icmp eq ptr %t122, null
  br i1 %t124, label %bb24, label %bb25
bb24:
  call void @__olang_check_failed(ptr @olang_loc_f729b95fcb28e588_e9118b2581b5934c)
  unreachable
bb25:
  br label %bb26
bb26:
  %t126 = load ptr, ptr %l3, !tbaa !29
  %t129 = getelementptr %"compiler/check:Checker", ptr %t126, i32 0, i32 1
  %t130 = load ptr, ptr %t129, !tbaa !29
  %t132 = getelementptr %"compiler/generic:Program", ptr %t130, i32 0, i32 0
  %t133 = load ptr, ptr %t132, !tbaa !29
  %t135 = getelementptr %"compiler/load:Loader", ptr %t133, i32 0, i32 3
  %t136 = load ptr, ptr %t135, !tbaa !29
  store ptr %t136, ptr %l80, !tbaa !29
  %t137 = load ptr, ptr %l4, !tbaa !29
  %t139 = getelementptr %"compiler/names:Resolver", ptr %t137, i32 0, i32 1
  %t140 = getelementptr %"compiler/names:Ref", ptr %l7, i32 0, i32 1
  %t141 = load i64, ptr %t140, !tbaa !24
  %t144 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fnames_3aTable_26_3e_2_Hc2ccbbc5952c057a60f016e9cc1626d2(ptr %v0, ptr %v0, ptr %t139, i64 %t141)
  store ptr %t144, ptr %l84
  br label %bb27
bb27:
  %t145 = load ptr, ptr %l84, !tbaa !29
  %t147 = getelementptr %"compiler/names:Table", ptr %t145, i32 0, i32 0
  %t148 = getelementptr %"compiler/names:Ref", ptr %l7, i32 0, i32 2
  %t149 = load i64, ptr %t148, !tbaa !24
  %t152 = call %"compiler/names:Entry" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eAt_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %s3, ptr %t147, i64 %t149)
  store %"compiler/names:Entry" %t152, ptr %l88
  br label %bb28
bb28:
  %t153 = getelementptr %"compiler/names:Entry", ptr %l88, i32 0, i32 0
  %t154 = load i32, ptr %t153, !tbaa !23
  %t155 = load ptr, ptr %l80, !tbaa !29
  %t157 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %s3, ptr %t155, i32 %t154)
  store { i64, ptr } %t157, ptr %l90
  br label %bb29
bb29:
  %t158 = load { i64, ptr }, ptr %l90, !tbaa !27
  %t159 = extractvalue { i64, ptr } %t158, 1
  %t160 = extractvalue { i64, ptr } %t158, 0
  %t161 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t160)
  call void @olang_textcopy(ptr %t161, ptr %t159, i64 %t160)
  %t162 = insertvalue { i64, ptr } undef, i64 %t160, 0
  %t163 = insertvalue { i64, ptr } %t162, ptr %t161, 1
  %t165 = extractvalue { i64, ptr } %t163, 0
  %t166 = extractvalue { i64, ptr } %t163, 1
  %t167 = mul i64 %t165, 1
  %t168 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t167)
  call void @llvm.memcpy.p0.p0.i64(ptr %t168, ptr %t166, i64 %t167, i1 false)
  %t169 = insertvalue { i64, ptr } undef, i64 %t165, 0
  %t170 = insertvalue { i64, ptr } %t169, ptr %t168, 1
  store { i64, [6 x i64] } zeroinitializer, ptr %t171
  %t172 = getelementptr { i64, [6 x i64] }, ptr %t171, i32 0, i32 0
  store i64 1, ptr %t172
  %t173 = load i64, ptr %l73, !tbaa !24
  %t174 = insertvalue { i64, { i64, ptr } } undef, i64 %t173, 0
  %t176 = insertvalue { i64, { i64, ptr } } %t174, { i64, ptr } %t170, 1
  %t177 = getelementptr { i64, [6 x i64] }, ptr %t171, i32 0, i32 1
  store { i64, { i64, ptr } } %t176, ptr %t177
  %t178 = load { i64, [6 x i64] }, ptr %t171
  call void @__olang_scope_close(ptr %s3)
  store { i64, [6 x i64] } %t178, ptr %rv
  br label %ret
bb30:
  %t180 = load i32, ptr %l8, !range !{i32 0, i32 9}
  %t182 = trunc i64 5 to i32
  %t183 = icmp eq i32 %t180, %t182
  br i1 %t183, label %bb31, label %bb32
bb31:
  br label %bb33
bb32:
  br label %bb34
bb33:
  %t185 = getelementptr %"compiler/names:Ref", ptr %l7, i32 0, i32 1
  %t186 = load i64, ptr %t185, !tbaa !24
  store { i64, [6 x i64] } zeroinitializer, ptr %t187
  %t188 = getelementptr { i64, [6 x i64] }, ptr %t187, i32 0, i32 0
  store i64 6, ptr %t188
  %t190 = insertvalue { i64 } undef, i64 %t186, 0
  %t191 = getelementptr { i64, [6 x i64] }, ptr %t187, i32 0, i32 1
  store { i64 } %t190, ptr %t191
  %t192 = load { i64, [6 x i64] }, ptr %t187
  store { i64, [6 x i64] } %t192, ptr %rv
  br label %ret
bb34:
  %t194 = load i32, ptr %l8, !range !{i32 0, i32 9}
  %t196 = trunc i64 1 to i32
  %t197 = icmp eq i32 %t194, %t196
  br i1 %t197, label %bb35, label %bb36
bb35:
  br label %bb39
bb36:
  %t199 = load i32, ptr %l8, !range !{i32 0, i32 9}
  %t201 = trunc i64 8 to i32
  %t202 = icmp eq i32 %t199, %t201
  br i1 %t202, label %bb37, label %bb38
bb37:
  br label %bb39
bb38:
  br label %bb45
bb39:
  %t204 = load ptr, ptr %l4, !tbaa !29
  %t205 = getelementptr %"compiler/names:Ref", ptr %l7, i32 0, i32 2
  %t206 = load i64, ptr %t205, !tbaa !24
  %t209 = call %"compiler/source:Span" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eLocalSpan(ptr %v0, ptr %t204, i64 %t206)
  store %"compiler/source:Span" %t209, ptr %l104
  br label %bb40
bb40:
  %t210 = load %"compiler/source:Span", ptr %l104
  store %"compiler/source:Span" %t210, ptr %l9
  %t211 = load ptr, ptr %l0, !tbaa !29
  %t212 = load i64, ptr %l5, !tbaa !24
  %t213 = getelementptr %"compiler/source:Span", ptr %l9, i32 0, i32 0
  %t214 = load i32, ptr %t213, !tbaa !23
  %t216 = sext i32 %t214 to i64
  %t220 = call %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20" @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2elocalAt(ptr %v0, ptr %t211, i64 %t212, i64 %t216)
  store %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20" %t220, ptr %l109
  br label %bb41
bb41:
  %t221 = load %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20", ptr %l109
  store %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20" %t221, ptr %l10
  %t222 = getelementptr %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20", ptr %l10, i32 0, i32 0
  %t223 = load i64, ptr %t222, !tbaa !24
  %t225 = icmp sge i64 %t223, 0
  br i1 %t225, label %bb42, label %bb43
bb42:
  %t227 = getelementptr %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20", ptr %l10, i32 0, i32 0
  %t228 = load i64, ptr %t227, !tbaa !24
  %t229 = getelementptr %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20", ptr %l10, i32 0, i32 1
  %t230 = load i32, ptr %t229, !tbaa !23
  store { i64, [6 x i64] } zeroinitializer, ptr %t231
  %t232 = getelementptr { i64, [6 x i64] }, ptr %t231, i32 0, i32 0
  store i64 4, ptr %t232
  %t234 = insertvalue { i64, i32 } undef, i64 %t228, 0
  %t236 = insertvalue { i64, i32 } %t234, i32 %t230, 1
  %t237 = getelementptr { i64, [6 x i64] }, ptr %t231, i32 0, i32 1
  store { i64, i32 } %t236, ptr %t237
  %t238 = load { i64, [6 x i64] }, ptr %t231
  store { i64, [6 x i64] } %t238, ptr %rv
  br label %ret
bb43:
  br label %bb44
bb44:
  %t240 = load i64, ptr %l1, !tbaa !24
  %t241 = getelementptr %"compiler/source:Span", ptr %l9, i32 0, i32 0
  %t242 = load i32, ptr %t241, !tbaa !23
  %t244 = sext i32 %t242 to i64
  %t245 = load ptr, ptr %lp6
  %t246 = load { i64, ptr }, ptr %t245, !tbaa !27
  %t248 = extractvalue { i64, ptr } %t246, 1
  %t249 = extractvalue { i64, ptr } %t246, 0
  %t250 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t249)
  call void @olang_textcopy(ptr %t250, ptr %t248, i64 %t249)
  %t251 = insertvalue { i64, ptr } undef, i64 %t249, 0
  %t252 = insertvalue { i64, ptr } %t251, ptr %t250, 1
  %t254 = extractvalue { i64, ptr } %t252, 0
  %t255 = extractvalue { i64, ptr } %t252, 1
  %t256 = mul i64 %t254, 1
  %t257 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t256)
  call void @llvm.memcpy.p0.p0.i64(ptr %t257, ptr %t255, i64 %t256, i1 false)
  %t258 = insertvalue { i64, ptr } undef, i64 %t254, 0
  %t259 = insertvalue { i64, ptr } %t258, ptr %t257, 1
  store { i64, [6 x i64] } zeroinitializer, ptr %t260
  %t261 = getelementptr { i64, [6 x i64] }, ptr %t260, i32 0, i32 0
  store i64 5, ptr %t261
  %t263 = insertvalue { i64, i64, { i64, ptr }, { i64, ptr } } undef, i64 %t240, 0
  %t265 = insertvalue { i64, i64, { i64, ptr }, { i64, ptr } } %t263, i64 %t244, 1
  %t266 = insertvalue { i64, i64, { i64, ptr }, { i64, ptr } } %t265, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d34, i32 0, i32 1) }, 2
  %t268 = insertvalue { i64, i64, { i64, ptr }, { i64, ptr } } %t266, { i64, ptr } %t259, 3
  %t269 = getelementptr { i64, [6 x i64] }, ptr %t260, i32 0, i32 1
  store { i64, i64, { i64, ptr }, { i64, ptr } } %t268, ptr %t269
  %t270 = load { i64, [6 x i64] }, ptr %t260
  store { i64, [6 x i64] } %t270, ptr %rv
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
  call void @__olang_check_failed(ptr @olang_loc_1e357a262dddcdbe_92aa1b1cb004b7e2)
  unreachable
bb50:
  %t272 = load ptr, ptr %l4, !tbaa !29
  %t274 = getelementptr %"compiler/names:Resolver", ptr %t272, i32 0, i32 1
  %t275 = load i64, ptr %l1, !tbaa !24
  %t278 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fnames_3aTable_26_3e_2_Hc2ccbbc5952c057a60f016e9cc1626d2(ptr %v0, ptr %v0, ptr %t274, i64 %t275)
  store ptr %t278, ptr %l125
  br label %bb51
bb51:
  %t279 = load ptr, ptr %l125, !tbaa !29
  %t281 = getelementptr %"compiler/names:Table", ptr %t279, i32 0, i32 0
  store ptr %t281, ptr %l11, !tbaa !29
  store i64 0, ptr %l12, !tbaa !24
  br label %bb52
bb52:
  %t283 = load i64, ptr %l12, !tbaa !24
  store i64 %t283, ptr %l128, !tbaa !24
  %t284 = load ptr, ptr %l11, !tbaa !29
  %t286 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eLen_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %t284)
  store i64 %t286, ptr %l130
  br label %bb53
bb53:
  %t287 = load i64, ptr %l128, !tbaa !24
  %t288 = load i64, ptr %l130, !tbaa !24
  %t289 = icmp slt i64 %t287, %t288
  %t291 = xor i1 %t289, true
  br i1 %t291, label %bb54, label %bb55
bb54:
  br label %bb82
bb55:
  br label %bb56
bb56:
  %t293 = load ptr, ptr %l11, !tbaa !29
  %t294 = load i64, ptr %l12, !tbaa !24
  %t297 = call %"compiler/names:Entry" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eAt_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %v0, ptr %t293, i64 %t294)
  store %"compiler/names:Entry" %t297, ptr %l135
  br label %bb57
bb57:
  %t298 = load %"compiler/names:Entry", ptr %l135
  store %"compiler/names:Entry" %t298, ptr %l13
  %t299 = getelementptr %"compiler/names:Entry", ptr %l13, i32 0, i32 1
  %t300 = getelementptr %"compiler/source:Span", ptr %t299, i32 0, i32 0
  %t301 = load i32, ptr %t300, !tbaa !23
  %t302 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t303 = load i32, ptr %t302, !tbaa !23
  %t306 = icmp eq i32 %t301, %t303
  br i1 %t306, label %bb58, label %bb59
bb58:
  %t308 = getelementptr %"compiler/names:Entry", ptr %l13, i32 0, i32 2
  %t309 = load i32, ptr %t308, !range !{i32 0, i32 9}
  %t311 = trunc i64 5 to i32
  %t312 = icmp eq i32 %t309, %t311
  %t314 = xor i1 %t312, true
  store i1 %t314, ptr %l139, !tbaa !21
  br label %bb60
bb59:
  store i1 false, ptr %l139, !tbaa !21
  br label %bb60
bb60:
  %t316 = load i1, ptr %l139, !tbaa !21
  br i1 %t316, label %bb61, label %bb62
bb61:
  %t317 = load ptr, ptr %l3, !tbaa !29
  %t319 = icmp eq ptr %t317, null
  br i1 %t319, label %bb63, label %bb64
bb62:
  br label %bb80
bb63:
  call void @__olang_check_failed(ptr @olang_loc_a3b4800e6d7209ba_290fe7f1ef38ac36)
  unreachable
bb64:
  br label %bb65
bb65:
  %t321 = load ptr, ptr %l3, !tbaa !29
  %t324 = getelementptr %"compiler/check:Checker", ptr %t321, i32 0, i32 1
  %t325 = load ptr, ptr %t324, !tbaa !29
  %t326 = load i64, ptr %l1, !tbaa !24
  %t327 = getelementptr %"compiler/names:Entry", ptr %l13, i32 0, i32 0
  %t328 = load i32, ptr %t327, !tbaa !23
  %t332 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnNamed(ptr %v0, ptr %t325, i64 %t326, i32 %t328)
  store i64 %t332, ptr %l150
  br label %bb66
bb66:
  %t333 = load i64, ptr %l150, !tbaa !24
  store i64 %t333, ptr %l14, !tbaa !24
  %t334 = getelementptr %"compiler/names:Entry", ptr %l13, i32 0, i32 2
  %t335 = load i32, ptr %t334, !range !{i32 0, i32 9}
  %t337 = trunc i64 3 to i32
  %t338 = icmp eq i32 %t335, %t337
  br i1 %t338, label %bb67, label %bb68
bb67:
  %t340 = load i64, ptr %l14, !tbaa !24
  %t342 = icmp slt i64 %t340, 0
  br i1 %t342, label %bb69, label %bb70
bb68:
  store i1 false, ptr %l153, !tbaa !21
  br label %bb76
bb69:
  store i1 true, ptr %l156, !tbaa !21
  br label %bb75
bb70:
  %t344 = load ptr, ptr %l3, !tbaa !29
  %t346 = icmp eq ptr %t344, null
  br i1 %t346, label %bb71, label %bb72
bb71:
  call void @__olang_check_failed(ptr @olang_loc_a3b0521b63c0fd41_ee4db74cec265b9d)
  unreachable
bb72:
  br label %bb73
bb73:
  %t348 = load ptr, ptr %l3, !tbaa !29
  %t351 = getelementptr %"compiler/check:Checker", ptr %t348, i32 0, i32 1
  %t352 = load ptr, ptr %t351, !tbaa !29
  %t353 = load i64, ptr %l14, !tbaa !24
  %t356 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t352, i64 %t353)
  store ptr %t356, ptr %l163
  br label %bb74
bb74:
  %t357 = load ptr, ptr %l163, !tbaa !29
  %t359 = getelementptr %"compiler/ast:Func", ptr %t357, i32 0, i32 1
  %t360 = load ptr, ptr %t359, !tbaa !29
  %t362 = icmp eq ptr %t360, null
  %t364 = xor i1 %t362, true
  store i1 %t364, ptr %l156, !tbaa !21
  br label %bb75
bb75:
  %t366 = load i1, ptr %l156, !tbaa !21
  store i1 %t366, ptr %l153, !tbaa !21
  br label %bb76
bb76:
  %t367 = load i1, ptr %l153, !tbaa !21
  br i1 %t367, label %bb77, label %bb78
bb77:
  br label %bb82
bb78:
  br label %bb79
bb79:
  %t368 = load i64, ptr %l1, !tbaa !24
  %t369 = load ptr, ptr %lp6
  %t370 = load { i64, ptr }, ptr %t369, !tbaa !27
  %t372 = extractvalue { i64, ptr } %t370, 1
  %t373 = extractvalue { i64, ptr } %t370, 0
  %t374 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t373)
  call void @olang_textcopy(ptr %t374, ptr %t372, i64 %t373)
  %t375 = insertvalue { i64, ptr } undef, i64 %t373, 0
  %t376 = insertvalue { i64, ptr } %t375, ptr %t374, 1
  %t378 = extractvalue { i64, ptr } %t376, 0
  %t379 = extractvalue { i64, ptr } %t376, 1
  %t380 = mul i64 %t378, 1
  %t381 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t380)
  call void @llvm.memcpy.p0.p0.i64(ptr %t381, ptr %t379, i64 %t380, i1 false)
  %t382 = insertvalue { i64, ptr } undef, i64 %t378, 0
  %t383 = insertvalue { i64, ptr } %t382, ptr %t381, 1
  store { i64, [6 x i64] } zeroinitializer, ptr %t384
  %t385 = getelementptr { i64, [6 x i64] }, ptr %t384, i32 0, i32 0
  store i64 1, ptr %t385
  %t387 = insertvalue { i64, { i64, ptr } } undef, i64 %t368, 0
  %t389 = insertvalue { i64, { i64, ptr } } %t387, { i64, ptr } %t383, 1
  %t390 = getelementptr { i64, [6 x i64] }, ptr %t384, i32 0, i32 1
  store { i64, { i64, ptr } } %t389, ptr %t390
  %t391 = load { i64, [6 x i64] }, ptr %t384
  store { i64, [6 x i64] } %t391, ptr %rv
  br label %ret
bb80:
  br label %bb81
bb81:
  %t393 = load i64, ptr %l12, !tbaa !24
  %t395 = add i64 %t393, 1
  store i64 %t395, ptr %l12, !tbaa !24
  br label %bb52
bb82:
  %t397 = load ptr, ptr %l0, !tbaa !29
  %t398 = load i64, ptr %l5, !tbaa !24
  %t399 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t400 = load i32, ptr %t399, !tbaa !23
  %t402 = sext i32 %t400 to i64
  %t406 = call %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20" @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2elocalAt(ptr %v0, ptr %t397, i64 %t398, i64 %t402)
  store %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20" %t406, ptr %l179
  br label %bb83
bb83:
  %t407 = load %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20", ptr %l179
  store %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20" %t407, ptr %l15
  %t408 = getelementptr %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20", ptr %l15, i32 0, i32 0
  %t409 = load i64, ptr %t408, !tbaa !24
  %t411 = icmp sge i64 %t409, 0
  br i1 %t411, label %bb84, label %bb85
bb84:
  %t413 = getelementptr %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20", ptr %l15, i32 0, i32 0
  %t414 = load i64, ptr %t413, !tbaa !24
  %t415 = getelementptr %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20", ptr %l15, i32 0, i32 1
  %t416 = load i32, ptr %t415, !tbaa !23
  store { i64, [6 x i64] } zeroinitializer, ptr %t417
  %t418 = getelementptr { i64, [6 x i64] }, ptr %t417, i32 0, i32 0
  store i64 4, ptr %t418
  %t420 = insertvalue { i64, i32 } undef, i64 %t414, 0
  %t422 = insertvalue { i64, i32 } %t420, i32 %t416, 1
  %t423 = getelementptr { i64, [6 x i64] }, ptr %t417, i32 0, i32 1
  store { i64, i32 } %t422, ptr %t423
  %t424 = load { i64, [6 x i64] }, ptr %t417
  store { i64, [6 x i64] } %t424, ptr %rv
  br label %ret
bb85:
  br label %bb86
bb86:
  %t426 = load ptr, ptr %l3, !tbaa !29
  %t428 = icmp eq ptr %t426, null
  br i1 %t428, label %bb87, label %bb88
bb87:
  call void @__olang_check_failed(ptr @olang_loc_f548539da9e2e40c_6a57728f427e36c8)
  unreachable
bb88:
  br label %bb89
bb89:
  %t430 = load ptr, ptr %l3, !tbaa !29
  %t433 = getelementptr %"compiler/check:Checker", ptr %t430, i32 0, i32 1
  %t434 = load ptr, ptr %t433, !tbaa !29
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAllFns(ptr %v0, ptr %t434)
  br label %bb90
bb90:
  store i64 0, ptr %l16, !tbaa !24
  %t436 = load ptr, ptr %l3, !tbaa !29
  %t438 = icmp eq ptr %t436, null
  br i1 %t438, label %bb91, label %bb92
bb91:
  call void @__olang_check_failed(ptr @olang_loc_6ddc0e45a6ad667b_c7aac46097de5ae7)
  unreachable
bb92:
  br label %bb93
bb93:
  %t440 = load ptr, ptr %l3, !tbaa !29
  %t443 = getelementptr %"compiler/check:Checker", ptr %t440, i32 0, i32 1
  %t444 = load ptr, ptr %t443, !tbaa !29
  %t446 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnCount(ptr %v0, ptr %t444)
  store i64 %t446, ptr %l195
  br label %bb94
bb94:
  %t447 = load i64, ptr %l195, !tbaa !24
  store i64 %t447, ptr %l17, !tbaa !24
  store i64 1, ptr %l18, !tbaa !24
  %t448 = load i64, ptr %l17, !tbaa !24
  %t449 = load i64, ptr %l16, !tbaa !24
  %t452 = icmp sgt i64 %t448, %t449
  br i1 %t452, label %bb95, label %bb96
bb95:
  %t454 = load i64, ptr %l18, !tbaa !24
  %t456 = icmp sgt i64 %t454, 0
  br i1 %t456, label %bb97, label %bb98
bb96:
  store i64 0, ptr %l199, !tbaa !24
  br label %bb100
bb97:
  %t458 = load i64, ptr %l17, !tbaa !24
  %t459 = load i64, ptr %l16, !tbaa !24
  %t462 = sub i64 %t458, %t459
  %t463 = load i64, ptr %l18, !tbaa !24
  %t466 = add i64 %t462, %t463
  %t468 = sub i64 %t466, 1
  %t469 = load i64, ptr %l18, !tbaa !24
  %t472 = sdiv i64 %t468, %t469
  store i64 %t472, ptr %l202, !tbaa !24
  br label %bb99
bb98:
  store i64 0, ptr %l202, !tbaa !24
  br label %bb99
bb99:
  %t474 = load i64, ptr %l202, !tbaa !24
  store i64 %t474, ptr %l199, !tbaa !24
  br label %bb100
bb100:
  %t475 = load i64, ptr %l199, !tbaa !24
  store i64 %t475, ptr %l19, !tbaa !24
  store i64 0, ptr %l20, !tbaa !24
  br label %bb101
bb101:
  store %olang.scope zeroinitializer, ptr %s18
  %t476 = load i64, ptr %l20, !tbaa !24
  %t477 = load i64, ptr %l19, !tbaa !24
  %t480 = icmp slt i64 %t476, %t477
  %t482 = xor i1 %t480, true
  br i1 %t482, label %bb102, label %bb103
bb102:
  call void @__olang_scope_close(ptr %s18)
  br label %bb166
bb103:
  br label %bb104
bb104:
  %t484 = load i64, ptr %l16, !tbaa !24
  %t485 = load i64, ptr %l20, !tbaa !24
  %t486 = load i64, ptr %l18, !tbaa !24
  %t489 = mul i64 %t485, %t486
  %t492 = add i64 %t484, %t489
  store i64 %t492, ptr %l21, !tbaa !24
  %t494 = load ptr, ptr %l3, !tbaa !29
  %t496 = icmp eq ptr %t494, null
  br i1 %t496, label %bb105, label %bb106
bb105:
  call void @__olang_check_failed(ptr @olang_loc_be0af37330f35afe_68a0a057b8d4cca2)
  unreachable
bb106:
  br label %bb107
bb107:
  %t498 = load ptr, ptr %l3, !tbaa !29
  %t501 = getelementptr %"compiler/check:Checker", ptr %t498, i32 0, i32 1
  %t502 = load ptr, ptr %t501, !tbaa !29
  %t503 = load i64, ptr %l21, !tbaa !24
  %t506 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t502, i64 %t503)
  store i64 %t506, ptr %l226
  br label %bb108
bb108:
  %t507 = load i64, ptr %l1, !tbaa !24
  %t508 = load i64, ptr %l226, !tbaa !24
  %t510 = icmp ne i64 %t508, %t507
  br i1 %t510, label %bb109, label %bb110
bb109:
  call void @__olang_scope_close(ptr %s18)
  br label %bb165
bb110:
  br label %bb111
bb111:
  %t512 = load ptr, ptr %l3, !tbaa !29
  %t514 = icmp eq ptr %t512, null
  br i1 %t514, label %bb112, label %bb113
bb112:
  call void @__olang_check_failed(ptr @olang_loc_7be9b74a0a4337a5_af051c2067e0d709)
  unreachable
bb113:
  br label %bb114
bb114:
  %t516 = load ptr, ptr %l3, !tbaa !29
  %t519 = getelementptr %"compiler/check:Checker", ptr %t516, i32 0, i32 1
  %t520 = load ptr, ptr %t519, !tbaa !29
  %t521 = load i64, ptr %l21, !tbaa !24
  %t524 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t520, i64 %t521)
  store ptr %t524, ptr %l235
  br label %bb115
bb115:
  %t525 = load ptr, ptr %l235, !tbaa !29
  store ptr %t525, ptr %l22, !tbaa !29
  %t526 = load ptr, ptr %l22, !tbaa !29
  %t528 = call i1 @compiler_2fast_2ecompiler_2fast_3aFunc_2eIsBuilder(ptr %v0, ptr %t526)
  store i1 %t528, ptr %l237
  br label %bb116
bb116:
  %t529 = load i1, ptr %l237, !tbaa !21
  br i1 %t529, label %bb117, label %bb118
bb117:
  %t530 = load ptr, ptr %l3, !tbaa !29
  %t532 = icmp eq ptr %t530, null
  br i1 %t532, label %bb119, label %bb120
bb118:
  store i1 false, ptr %l238, !tbaa !21
  br label %bb124
bb119:
  call void @__olang_check_failed(ptr @olang_loc_a0e32d5552598bb5_d1b40570995ef0d1)
  unreachable
bb120:
  br label %bb121
bb121:
  %t534 = load ptr, ptr %l3, !tbaa !29
  %t537 = getelementptr %"compiler/check:Checker", ptr %t534, i32 0, i32 1
  %t538 = load ptr, ptr %t537, !tbaa !29
  %t540 = getelementptr %"compiler/generic:Program", ptr %t538, i32 0, i32 0
  %t541 = load ptr, ptr %t540, !tbaa !29
  %t543 = getelementptr %"compiler/load:Loader", ptr %t541, i32 0, i32 3
  %t544 = load ptr, ptr %t543, !tbaa !29
  %t545 = load ptr, ptr %l22, !tbaa !29
  %t547 = getelementptr %"compiler/ast:Func", ptr %t545, i32 0, i32 10
  %t548 = load i32, ptr %t547, !tbaa !23
  %t551 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %s18, ptr %t544, i32 %t548)
  store { i64, ptr } %t551, ptr %l248
  br label %bb122
bb122:
  %t552 = load ptr, ptr %lp6
  %t553 = load { i64, ptr }, ptr %t552, !tbaa !27
  %t554 = load { i64, ptr }, ptr %l248, !tbaa !27
  %t556 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s18, ptr %v1, { i64, ptr } %t554, { i64, ptr } %t553)
  store i1 %t556, ptr %l250
  br label %bb123
bb123:
  %t557 = load i1, ptr %l250, !tbaa !21
  store i1 %t557, ptr %l238, !tbaa !21
  br label %bb124
bb124:
  %t558 = load i1, ptr %l238, !tbaa !21
  br i1 %t558, label %bb125, label %bb126
bb125:
  %t559 = load ptr, ptr %l22, !tbaa !29
  %t561 = getelementptr %"compiler/ast:Func", ptr %t559, i32 0, i32 0
  %t562 = getelementptr %"compiler/source:Span", ptr %t561, i32 0, i32 0
  %t563 = load i32, ptr %t562, !tbaa !23
  %t565 = sext i32 %t563 to i64
  %t566 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t567 = load i32, ptr %t566, !tbaa !23
  %t569 = sext i32 %t567 to i64
  %t572 = icmp sle i64 %t565, %t569
  store i1 %t572, ptr %l251, !tbaa !21
  br label %bb127
bb126:
  store i1 false, ptr %l251, !tbaa !21
  br label %bb127
bb127:
  %t574 = load i1, ptr %l251, !tbaa !21
  br i1 %t574, label %bb128, label %bb129
bb128:
  %t575 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t576 = load i32, ptr %t575, !tbaa !23
  %t578 = sext i32 %t576 to i64
  %t579 = load ptr, ptr %l22, !tbaa !29
  %t581 = getelementptr %"compiler/ast:Func", ptr %t579, i32 0, i32 0
  %t582 = getelementptr %"compiler/source:Span", ptr %t581, i32 0, i32 1
  %t583 = load i32, ptr %t582, !tbaa !23
  %t585 = sext i32 %t583 to i64
  %t588 = icmp slt i64 %t578, %t585
  store i1 %t588, ptr %l258, !tbaa !21
  br label %bb130
bb129:
  store i1 false, ptr %l258, !tbaa !21
  br label %bb130
bb130:
  %t590 = load i1, ptr %l258, !tbaa !21
  br i1 %t590, label %bb131, label %bb132
bb131:
  %t591 = load ptr, ptr %l22, !tbaa !29
  %t593 = getelementptr %"compiler/ast:Func", ptr %t591, i32 0, i32 4
  %t594 = load { i64, ptr }, ptr %t593, !tbaa !27
  %t596 = extractvalue { i64, ptr } %t594, 0
  %t598 = icmp eq i64 %t596, 0
  br i1 %t598, label %bb133, label %bb134
bb132:
  store i1 false, ptr %l265, !tbaa !21
  br label %bb137
bb133:
  store i1 true, ptr %l270, !tbaa !21
  br label %bb136
bb134:
  %t600 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t601 = load i32, ptr %t600, !tbaa !23
  %t603 = sext i32 %t601 to i64
  store i64 %t603, ptr %l272, !tbaa !24
  %t604 = load ptr, ptr %l22, !tbaa !29
  %t606 = getelementptr %"compiler/ast:Func", ptr %t604, i32 0, i32 4
  %t607 = load { i64, ptr }, ptr %t606, !tbaa !27
  store { i64, ptr } %t607, ptr %l274, !tbaa !27
  %t608 = getelementptr { i64, ptr }, ptr %l274, i32 0, i32 1
  %t609 = load ptr, ptr %t608, !tbaa !27
  %t610 = getelementptr ptr, ptr %t609, i64 0
  %t611 = load ptr, ptr %t610, !tbaa !39
  %t613 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aStmt_2eSpan(ptr %v0, ptr %t611)
  store %"compiler/source:Span" %t613, ptr %l276
  br label %bb135
bb135:
  %t614 = getelementptr %"compiler/source:Span", ptr %l276, i32 0, i32 0
  %t615 = load i32, ptr %t614, !tbaa !23
  %t617 = sext i32 %t615 to i64
  %t618 = load i64, ptr %l272, !tbaa !24
  %t620 = icmp slt i64 %t618, %t617
  store i1 %t620, ptr %l270, !tbaa !21
  br label %bb136
bb136:
  %t622 = load i1, ptr %l270, !tbaa !21
  store i1 %t622, ptr %l265, !tbaa !21
  br label %bb137
bb137:
  %t623 = load i1, ptr %l265, !tbaa !21
  br i1 %t623, label %bb138, label %bb139
bb138:
  %t624 = load i64, ptr %l21, !tbaa !24
  store { i64, [6 x i64] } zeroinitializer, ptr %t625
  %t626 = getelementptr { i64, [6 x i64] }, ptr %t625, i32 0, i32 0
  store i64 2, ptr %t626
  %t628 = insertvalue { i64 } undef, i64 %t624, 0
  %t629 = getelementptr { i64, [6 x i64] }, ptr %t625, i32 0, i32 1
  store { i64 } %t628, ptr %t629
  %t630 = load { i64, [6 x i64] }, ptr %t625
  call void @__olang_scope_close(ptr %s18)
  store { i64, [6 x i64] } %t630, ptr %rv
  br label %ret
bb139:
  br label %bb140
bb140:
  %t632 = load ptr, ptr %l22, !tbaa !29
  %t634 = getelementptr %"compiler/ast:Func", ptr %t632, i32 0, i32 1
  %t635 = load ptr, ptr %t634, !tbaa !29
  %t637 = icmp eq ptr %t635, null
  br i1 %t637, label %bb141, label %bb142
bb141:
  store i1 true, ptr %l285, !tbaa !21
  br label %bb148
bb142:
  %t639 = load ptr, ptr %l3, !tbaa !29
  %t641 = icmp eq ptr %t639, null
  br i1 %t641, label %bb143, label %bb144
bb143:
  call void @__olang_check_failed(ptr @olang_loc_90517919cad2500e_b5e04c9858b7f7ca)
  unreachable
bb144:
  br label %bb145
bb145:
  %t643 = load ptr, ptr %l3, !tbaa !29
  %t646 = getelementptr %"compiler/check:Checker", ptr %t643, i32 0, i32 1
  %t647 = load ptr, ptr %t646, !tbaa !29
  %t649 = getelementptr %"compiler/generic:Program", ptr %t647, i32 0, i32 0
  %t650 = load ptr, ptr %t649, !tbaa !29
  %t652 = getelementptr %"compiler/load:Loader", ptr %t650, i32 0, i32 3
  %t653 = load ptr, ptr %t652, !tbaa !29
  %t654 = load ptr, ptr %l22, !tbaa !29
  %t656 = getelementptr %"compiler/ast:Func", ptr %t654, i32 0, i32 2
  %t657 = load i32, ptr %t656, !tbaa !23
  %t660 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %s18, ptr %t653, i32 %t657)
  store { i64, ptr } %t660, ptr %l295
  br label %bb146
bb146:
  %t661 = load ptr, ptr %lp6
  %t662 = load { i64, ptr }, ptr %t661, !tbaa !27
  %t663 = load { i64, ptr }, ptr %l295, !tbaa !27
  %t665 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s18, ptr %v1, { i64, ptr } %t663, { i64, ptr } %t662)
  store i1 %t665, ptr %l297
  br label %bb147
bb147:
  %t666 = load i1, ptr %l297, !tbaa !21
  %t667 = xor i1 %t666, true
  store i1 %t667, ptr %l285, !tbaa !21
  br label %bb148
bb148:
  %t669 = load i1, ptr %l285, !tbaa !21
  br i1 %t669, label %bb149, label %bb150
bb149:
  call void @__olang_scope_close(ptr %s18)
  br label %bb165
bb150:
  br label %bb151
bb151:
  %t670 = load ptr, ptr %l22, !tbaa !29
  %t672 = getelementptr %"compiler/ast:Func", ptr %t670, i32 0, i32 0
  %t673 = getelementptr %"compiler/source:Span", ptr %t672, i32 0, i32 0
  %t674 = load i32, ptr %t673, !tbaa !23
  %t676 = sext i32 %t674 to i64
  %t677 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t678 = load i32, ptr %t677, !tbaa !23
  %t680 = sext i32 %t678 to i64
  %t683 = icmp sle i64 %t676, %t680
  br i1 %t683, label %bb152, label %bb153
bb152:
  %t685 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t686 = load i32, ptr %t685, !tbaa !23
  %t688 = sext i32 %t686 to i64
  %t689 = load ptr, ptr %l22, !tbaa !29
  %t691 = getelementptr %"compiler/ast:Func", ptr %t689, i32 0, i32 0
  %t692 = getelementptr %"compiler/source:Span", ptr %t691, i32 0, i32 1
  %t693 = load i32, ptr %t692, !tbaa !23
  %t695 = sext i32 %t693 to i64
  %t698 = icmp slt i64 %t688, %t695
  store i1 %t698, ptr %l305, !tbaa !21
  br label %bb154
bb153:
  store i1 false, ptr %l305, !tbaa !21
  br label %bb154
bb154:
  %t700 = load i1, ptr %l305, !tbaa !21
  br i1 %t700, label %bb155, label %bb156
bb155:
  %t701 = load ptr, ptr %l22, !tbaa !29
  %t703 = getelementptr %"compiler/ast:Func", ptr %t701, i32 0, i32 4
  %t704 = load { i64, ptr }, ptr %t703, !tbaa !27
  %t706 = extractvalue { i64, ptr } %t704, 0
  %t708 = icmp eq i64 %t706, 0
  br i1 %t708, label %bb157, label %bb158
bb156:
  store i1 false, ptr %l312, !tbaa !21
  br label %bb161
bb157:
  store i1 true, ptr %l317, !tbaa !21
  br label %bb160
bb158:
  %t710 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t711 = load i32, ptr %t710, !tbaa !23
  %t713 = sext i32 %t711 to i64
  store i64 %t713, ptr %l319, !tbaa !24
  %t714 = load ptr, ptr %l22, !tbaa !29
  %t716 = getelementptr %"compiler/ast:Func", ptr %t714, i32 0, i32 4
  %t717 = load { i64, ptr }, ptr %t716, !tbaa !27
  store { i64, ptr } %t717, ptr %l321, !tbaa !27
  %t718 = getelementptr { i64, ptr }, ptr %l321, i32 0, i32 1
  %t719 = load ptr, ptr %t718, !tbaa !27
  %t720 = getelementptr ptr, ptr %t719, i64 0
  %t721 = load ptr, ptr %t720, !tbaa !39
  %t723 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aStmt_2eSpan(ptr %v0, ptr %t721)
  store %"compiler/source:Span" %t723, ptr %l323
  br label %bb159
bb159:
  %t724 = getelementptr %"compiler/source:Span", ptr %l323, i32 0, i32 0
  %t725 = load i32, ptr %t724, !tbaa !23
  %t727 = sext i32 %t725 to i64
  %t728 = load i64, ptr %l319, !tbaa !24
  %t730 = icmp slt i64 %t728, %t727
  store i1 %t730, ptr %l317, !tbaa !21
  br label %bb160
bb160:
  %t732 = load i1, ptr %l317, !tbaa !21
  store i1 %t732, ptr %l312, !tbaa !21
  br label %bb161
bb161:
  %t733 = load i1, ptr %l312, !tbaa !21
  br i1 %t733, label %bb162, label %bb163
bb162:
  %t734 = load i64, ptr %l21, !tbaa !24
  store { i64, [6 x i64] } zeroinitializer, ptr %t735
  %t736 = getelementptr { i64, [6 x i64] }, ptr %t735, i32 0, i32 0
  store i64 2, ptr %t736
  %t738 = insertvalue { i64 } undef, i64 %t734, 0
  %t739 = getelementptr { i64, [6 x i64] }, ptr %t735, i32 0, i32 1
  store { i64 } %t738, ptr %t739
  %t740 = load { i64, [6 x i64] }, ptr %t735
  call void @__olang_scope_close(ptr %s18)
  store { i64, [6 x i64] } %t740, ptr %rv
  br label %ret
bb163:
  br label %bb164
bb164:
  call void @__olang_scope_close(ptr %s18)
  br label %bb165
bb165:
  %t742 = load i64, ptr %l20, !tbaa !24
  %t744 = add i64 %t742, 1
  store i64 %t744, ptr %l20, !tbaa !24
  br label %bb101
bb166:
  %t746 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t747 = load i32, ptr %t746, !tbaa !23
  %t749 = sext i32 %t747 to i64
  store i64 %t749, ptr %l332, !tbaa !24
  %t750 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 1
  %t751 = load i32, ptr %t750, !tbaa !23
  %t753 = sext i32 %t751 to i64
  store i64 %t753, ptr %l334, !tbaa !24
  %t754 = load ptr, ptr %lp6
  %t755 = load { i64, ptr }, ptr %t754, !tbaa !27
  store { i64, ptr } %t755, ptr %l335, !tbaa !27
  %t756 = load ptr, ptr %l3, !tbaa !29
  %t758 = icmp eq ptr %t756, null
  br i1 %t758, label %bb167, label %bb168
bb167:
  call void @__olang_check_failed(ptr @olang_loc_ce3fd8c720c212bf_60e6469ff90569cb)
  unreachable
bb168:
  br label %bb169
bb169:
  %t760 = load ptr, ptr %l3, !tbaa !29
  %t761 = load i64, ptr %l332, !tbaa !24
  %t762 = load i64, ptr %l334, !tbaa !24
  %t763 = load { i64, ptr }, ptr %l335, !tbaa !27
  %t765 = call %"compiler/session:finder" @compiler_2fsession_3afinder_2ector(ptr %v1, ptr %v0, ptr %v1, i64 %t761, i64 %t762, { i64, ptr } %t763, ptr %t760)
  store %"compiler/session:finder" %t765, ptr %l339
  br label %bb170
bb170:
  %t766 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 112, i64 8)
  store ptr %t766, ptr %lp23
  %t767 = load %"compiler/session:finder", ptr %l339
  %t768 = load ptr, ptr %lp23
  store %"compiler/session:finder" %t767, ptr %t768
  %t769 = load ptr, ptr %l3, !tbaa !29
  %t771 = icmp eq ptr %t769, null
  br i1 %t771, label %bb171, label %bb172
bb171:
  call void @__olang_check_failed(ptr @olang_loc_d27ec903618be0a0_36ec6c4f051caedc)
  unreachable
bb172:
  br label %bb173
bb173:
  %t773 = load ptr, ptr %l3, !tbaa !29
  %t776 = getelementptr %"compiler/check:Checker", ptr %t773, i32 0, i32 14
  store ptr %t776, ptr %l24, !tbaa !29
  store i64 0, ptr %l25, !tbaa !24
  br label %bb174
bb174:
  %t778 = load i64, ptr %l25, !tbaa !24
  store i64 %t778, ptr %l345, !tbaa !24
  %t779 = load ptr, ptr %l24, !tbaa !29
  %t781 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t779)
  store i64 %t781, ptr %l347
  br label %bb175
bb175:
  %t782 = load i64, ptr %l345, !tbaa !24
  %t783 = load i64, ptr %l347, !tbaa !24
  %t784 = icmp slt i64 %t782, %t783
  %t786 = xor i1 %t784, true
  br i1 %t786, label %bb176, label %bb177
bb176:
  br label %bb194
bb177:
  br label %bb178
bb178:
  %t788 = load ptr, ptr %l24, !tbaa !29
  %t789 = load i64, ptr %l25, !tbaa !24
  %t792 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t788, i64 %t789)
  store ptr %t792, ptr %l352
  br label %bb179
bb179:
  %t793 = load ptr, ptr %l352, !tbaa !29
  store ptr %t793, ptr %l26, !tbaa !29
  %t794 = load ptr, ptr %l26, !tbaa !29
  %t796 = getelementptr %"compiler/typed:Body", ptr %t794, i32 0, i32 3
  %t797 = load i64, ptr %t796, !tbaa !24
  %t798 = load i64, ptr %l5, !tbaa !24
  %t801 = icmp ne i64 %t797, %t798
  br i1 %t801, label %bb180, label %bb181
bb180:
  store i1 true, ptr %l357, !tbaa !21
  br label %bb182
bb181:
  %t803 = load ptr, ptr %l26, !tbaa !29
  %t805 = getelementptr %"compiler/typed:Body", ptr %t803, i32 0, i32 11
  %t806 = load ptr, ptr %t805, !tbaa !29
  %t808 = icmp eq ptr %t806, null
  store i1 %t808, ptr %l357, !tbaa !21
  br label %bb182
bb182:
  %t810 = load i1, ptr %l357, !tbaa !21
  br i1 %t810, label %bb183, label %bb184
bb183:
  br label %bb193
bb184:
  br label %bb185
bb185:
  %t811 = load ptr, ptr %l26, !tbaa !29
  %t813 = getelementptr %"compiler/typed:Body", ptr %t811, i32 0, i32 4
  %t814 = getelementptr %"compiler/source:Span", ptr %t813, i32 0, i32 1
  %t815 = load i32, ptr %t814, !tbaa !23
  %t817 = sext i32 %t815 to i64
  %t818 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t819 = load i32, ptr %t818, !tbaa !23
  %t821 = sext i32 %t819 to i64
  %t824 = icmp slt i64 %t817, %t821
  br i1 %t824, label %bb186, label %bb187
bb186:
  store i1 true, ptr %l367, !tbaa !21
  br label %bb188
bb187:
  %t826 = load ptr, ptr %l26, !tbaa !29
  %t828 = getelementptr %"compiler/typed:Body", ptr %t826, i32 0, i32 4
  %t829 = getelementptr %"compiler/source:Span", ptr %t828, i32 0, i32 0
  %t830 = load i32, ptr %t829, !tbaa !23
  %t832 = sext i32 %t830 to i64
  %t833 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 1
  %t834 = load i32, ptr %t833, !tbaa !23
  %t836 = sext i32 %t834 to i64
  %t839 = icmp sgt i64 %t832, %t836
  store i1 %t839, ptr %l367, !tbaa !21
  br label %bb188
bb188:
  %t841 = load i1, ptr %l367, !tbaa !21
  br i1 %t841, label %bb189, label %bb190
bb189:
  br label %bb193
bb190:
  br label %bb191
bb191:
  %t842 = load ptr, ptr %l26, !tbaa !29
  %t844 = getelementptr %"compiler/typed:Body", ptr %t842, i32 0, i32 0
  %t845 = load i32, ptr %t844, !tbaa !23
  %t847 = sext i32 %t845 to i64
  %t849 = load ptr, ptr %lp23
  %t850 = getelementptr %"compiler/session:finder", ptr %t849, i32 0, i32 4
  store i64 %t847, ptr %t850, !tbaa !24
  %t851 = load ptr, ptr %lp23
  %t852 = load ptr, ptr %l26, !tbaa !29
  %t854 = getelementptr %"compiler/typed:Body", ptr %t852, i32 0, i32 11
  %t855 = load ptr, ptr %t854, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3afinder_2eblock(ptr %v1, ptr %v0, ptr %t851, ptr %t855)
  br label %bb192
bb192:
  br label %bb193
bb193:
  %t858 = load i64, ptr %l25, !tbaa !24
  %t860 = add i64 %t858, 1
  store i64 %t860, ptr %l25, !tbaa !24
  br label %bb174
bb194:
  %t862 = load ptr, ptr %lp23
  %t863 = getelementptr %"compiler/session:finder", ptr %t862, i32 0, i32 5
  %t864 = load { i64, [6 x i64] }, ptr %t863
  store { i64, [6 x i64] } %t864, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [6 x i64] }, ptr %rv
  ret { i64, [6 x i64] } %rr
}

define dso_local void @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2etypeMembers(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca ptr
  %l12 = alloca i32
  %l13 = alloca { i64, ptr }
  %l23 = alloca i32
  %l26 = alloca i32
  %l34 = alloca i32
  %l43 = alloca i32
  %l59 = alloca i64
  %l63 = alloca i64
  %l66 = alloca i64
  %l90 = alloca ptr
  %l99 = alloca ptr
  %l105 = alloca ptr
  %l112 = alloca i32
  %l113 = alloca i32
  %l114 = alloca { i64, ptr }
  %l115 = alloca { i64, ptr }
  %l124 = alloca i32
  %l134 = alloca i32
  %l140 = alloca i1
  %l151 = alloca { i64, ptr }
  %l153 = alloca i1
  %l155 = alloca i1
  %l162 = alloca i64
  %l167 = alloca ptr
  %l168 = alloca { i64, ptr }
  %l169 = alloca i64
  %l172 = alloca ptr
  %l179 = alloca { i64, ptr }
  %l181 = alloca { i64, ptr }
  %l182 = alloca { i64, ptr }
  %l183 = alloca ptr
  %l190 = alloca i64
  %l194 = alloca i1
  %s3 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
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
  call void @__olang_check_failed(ptr @olang_loc_65524a0775fa0c24_67802a16d5ac44c0)
  unreachable
bb2:
  br label %bb3
bb3:
  %t10 = load ptr, ptr %l3, !tbaa !29
  %t13 = getelementptr %"compiler/check:Checker", ptr %t10, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !29
  %t16 = getelementptr %"compiler/generic:Program", ptr %t14, i32 0, i32 2
  %t17 = load i32, ptr %l2, !tbaa !23
  %t20 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t16, i32 %t17)
  store i32 %t20, ptr %l23
  br label %bb4
bb4:
  %t21 = load i32, ptr %l23, !range !{i32 0, i32 33}
  %t23 = trunc i64 20 to i32
  %t24 = icmp eq i32 %t21, %t23
  br i1 %t24, label %bb5, label %bb6
bb5:
  %t26 = load ptr, ptr %l3, !tbaa !29
  %t28 = icmp eq ptr %t26, null
  br i1 %t28, label %bb7, label %bb8
bb6:
  %t30 = load i32, ptr %l2, !tbaa !23
  store i32 %t30, ptr %l26, !tbaa !23
  br label %bb11
bb7:
  call void @__olang_check_failed(ptr @olang_loc_65524a0775fa0c24_67802a16d5ac44c0)
  unreachable
bb8:
  br label %bb9
bb9:
  %t32 = load ptr, ptr %l3, !tbaa !29
  %t35 = getelementptr %"compiler/check:Checker", ptr %t32, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !29
  %t38 = getelementptr %"compiler/generic:Program", ptr %t36, i32 0, i32 2
  %t39 = load i32, ptr %l2, !tbaa !23
  %t42 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t38, i32 %t39)
  store i32 %t42, ptr %l34
  br label %bb10
bb10:
  %t43 = load i32, ptr %l34, !tbaa !23
  store i32 %t43, ptr %l26, !tbaa !23
  br label %bb11
bb11:
  %t44 = load i32, ptr %l26, !tbaa !23
  store i32 %t44, ptr %l4, !tbaa !23
  %t45 = load ptr, ptr %l3, !tbaa !29
  %t47 = icmp eq ptr %t45, null
  br i1 %t47, label %bb12, label %bb13
bb12:
  call void @__olang_check_failed(ptr @olang_loc_183418cbaaa3b5f3_579c8efa30db605f)
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
  store i32 %t59, ptr %l43
  br label %bb15
bb15:
  %t60 = load i32, ptr %l43, !range !{i32 0, i32 33}
  %t62 = trunc i64 18 to i32
  %t63 = icmp eq i32 %t60, %t62
  br i1 %t63, label %bb16, label %bb17
bb16:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t66 = load ptr, ptr %l1, !tbaa !29
  %t67 = load i32, ptr %l4, !tbaa !23
  call void @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2efieldMembers(ptr %v0, ptr %v1, ptr %t65, ptr %t66, i32 %t67)
  br label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb19
bb19:
  %t71 = load ptr, ptr %l3, !tbaa !29
  %t73 = icmp eq ptr %t71, null
  br i1 %t73, label %bb20, label %bb21
bb20:
  call void @__olang_check_failed(ptr @olang_loc_269369d36ae436b2_2e7a039021f1ff2e)
  unreachable
bb21:
  br label %bb22
bb22:
  %t75 = load ptr, ptr %l3, !tbaa !29
  %t78 = getelementptr %"compiler/check:Checker", ptr %t75, i32 0, i32 1
  %t79 = load ptr, ptr %t78, !tbaa !29
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAllFns(ptr %v0, ptr %t79)
  br label %bb23
bb23:
  store i64 0, ptr %l5, !tbaa !24
  %t81 = load ptr, ptr %l3, !tbaa !29
  %t83 = icmp eq ptr %t81, null
  br i1 %t83, label %bb24, label %bb25
bb24:
  call void @__olang_check_failed(ptr @olang_loc_2bc7afddf58147d9_c9ac3d0f6598ded5)
  unreachable
bb25:
  br label %bb26
bb26:
  %t85 = load ptr, ptr %l3, !tbaa !29
  %t88 = getelementptr %"compiler/check:Checker", ptr %t85, i32 0, i32 1
  %t89 = load ptr, ptr %t88, !tbaa !29
  %t91 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnCount(ptr %v0, ptr %t89)
  store i64 %t91, ptr %l59
  br label %bb27
bb27:
  %t92 = load i64, ptr %l59, !tbaa !24
  store i64 %t92, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t93 = load i64, ptr %l6, !tbaa !24
  %t94 = load i64, ptr %l5, !tbaa !24
  %t97 = icmp sgt i64 %t93, %t94
  br i1 %t97, label %bb28, label %bb29
bb28:
  %t99 = load i64, ptr %l7, !tbaa !24
  %t101 = icmp sgt i64 %t99, 0
  br i1 %t101, label %bb30, label %bb31
bb29:
  store i64 0, ptr %l63, !tbaa !24
  br label %bb33
bb30:
  %t103 = load i64, ptr %l6, !tbaa !24
  %t104 = load i64, ptr %l5, !tbaa !24
  %t107 = sub i64 %t103, %t104
  %t108 = load i64, ptr %l7, !tbaa !24
  %t111 = add i64 %t107, %t108
  %t113 = sub i64 %t111, 1
  %t114 = load i64, ptr %l7, !tbaa !24
  %t117 = sdiv i64 %t113, %t114
  store i64 %t117, ptr %l66, !tbaa !24
  br label %bb32
bb31:
  store i64 0, ptr %l66, !tbaa !24
  br label %bb32
bb32:
  %t119 = load i64, ptr %l66, !tbaa !24
  store i64 %t119, ptr %l63, !tbaa !24
  br label %bb33
bb33:
  %t120 = load i64, ptr %l63, !tbaa !24
  store i64 %t120, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb34
bb34:
  store %olang.scope zeroinitializer, ptr %s3
  %t121 = load i64, ptr %l9, !tbaa !24
  %t122 = load i64, ptr %l8, !tbaa !24
  %t125 = icmp slt i64 %t121, %t122
  %t127 = xor i1 %t125, true
  br i1 %t127, label %bb35, label %bb36
bb35:
  call void @__olang_scope_close(ptr %s3)
  br label %bb105
bb36:
  br label %bb37
bb37:
  %t129 = load i64, ptr %l5, !tbaa !24
  %t130 = load i64, ptr %l9, !tbaa !24
  %t131 = load i64, ptr %l7, !tbaa !24
  %t134 = mul i64 %t130, %t131
  %t137 = add i64 %t129, %t134
  store i64 %t137, ptr %l10, !tbaa !24
  %t139 = load ptr, ptr %l3, !tbaa !29
  %t141 = icmp eq ptr %t139, null
  br i1 %t141, label %bb38, label %bb39
bb38:
  call void @__olang_check_failed(ptr @olang_loc_843b58ccd5037a60_511f1c08fd361084)
  unreachable
bb39:
  br label %bb40
bb40:
  %t143 = load ptr, ptr %l3, !tbaa !29
  %t146 = getelementptr %"compiler/check:Checker", ptr %t143, i32 0, i32 1
  %t147 = load ptr, ptr %t146, !tbaa !29
  %t148 = load i64, ptr %l10, !tbaa !24
  %t151 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t147, i64 %t148)
  store ptr %t151, ptr %l90
  br label %bb41
bb41:
  %t152 = load ptr, ptr %l90, !tbaa !29
  store ptr %t152, ptr %l11, !tbaa !29
  %t153 = load ptr, ptr %l11, !tbaa !29
  %t155 = getelementptr %"compiler/ast:Func", ptr %t153, i32 0, i32 1
  %t156 = load ptr, ptr %t155, !tbaa !29
  %t158 = icmp eq ptr %t156, null
  br i1 %t158, label %bb42, label %bb43
bb42:
  call void @__olang_scope_close(ptr %s3)
  br label %bb104
bb43:
  br label %bb44
bb44:
  %t160 = load ptr, ptr %l3, !tbaa !29
  %t162 = icmp eq ptr %t160, null
  br i1 %t162, label %bb45, label %bb46
bb45:
  call void @__olang_check_failed(ptr @olang_loc_237e374d945d777f_399ab2bb28be7e53)
  unreachable
bb46:
  br label %bb47
bb47:
  %t164 = load ptr, ptr %l3, !tbaa !29
  %t167 = getelementptr %"compiler/check:Checker", ptr %t164, i32 0, i32 1
  %t168 = load ptr, ptr %t167, !tbaa !29
  %t170 = getelementptr %"compiler/generic:Program", ptr %t168, i32 0, i32 2
  store ptr %t170, ptr %l99, !tbaa !29
  %t171 = load ptr, ptr %l3, !tbaa !29
  %t173 = icmp eq ptr %t171, null
  br i1 %t173, label %bb48, label %bb49
bb48:
  call void @__olang_check_failed(ptr @olang_loc_237e374d945d777f_399ab2bb28be7e53)
  unreachable
bb49:
  br label %bb50
bb50:
  %t175 = load ptr, ptr %l3, !tbaa !29
  %t178 = getelementptr %"compiler/check:Checker", ptr %t175, i32 0, i32 1
  %t179 = load ptr, ptr %t178, !tbaa !29
  %t181 = getelementptr %"compiler/generic:Program", ptr %t179, i32 0, i32 2
  store ptr %t181, ptr %l105, !tbaa !29
  %t182 = load ptr, ptr %l3, !tbaa !29
  %t184 = icmp eq ptr %t182, null
  br i1 %t184, label %bb51, label %bb52
bb51:
  call void @__olang_check_failed(ptr @olang_loc_237e374d945d777f_399ab2bb28be7e53)
  unreachable
bb52:
  br label %bb53
bb53:
  %t186 = load ptr, ptr %l3, !tbaa !29
  %t189 = getelementptr %"compiler/check:Checker", ptr %t186, i32 0, i32 1
  %t190 = load ptr, ptr %t189, !tbaa !29
  %t191 = load i64, ptr %l10, !tbaa !24
  %t194 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %t190, i64 %t191)
  store i32 %t194, ptr %l112
  br label %bb54
bb54:
  %t195 = load ptr, ptr %l105, !tbaa !29
  %t196 = load i32, ptr %l112, !tbaa !23
  %t197 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t195, i32 %t196)
  store i32 %t197, ptr %l113
  br label %bb55
bb55:
  %t198 = load ptr, ptr %l99, !tbaa !29
  %t199 = load i32, ptr %l113, !tbaa !23
  %t200 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s3, ptr %t198, i32 %t199)
  store { i64, ptr } %t200, ptr %l114
  br label %bb56
bb56:
  %t201 = load { i64, ptr }, ptr %l114, !tbaa !27
  store { i64, ptr } %t201, ptr %l115, !tbaa !27
  %t202 = getelementptr { i64, ptr }, ptr %l115, i32 0, i32 1
  %t203 = load ptr, ptr %t202, !tbaa !27
  %t204 = getelementptr i32, ptr %t203, i64 0
  %t205 = load i32, ptr %t204, !tbaa !33
  store i32 %t205, ptr %l12, !tbaa !23
  %t207 = load ptr, ptr %l3, !tbaa !29
  %t209 = icmp eq ptr %t207, null
  br i1 %t209, label %bb57, label %bb58
bb57:
  call void @__olang_check_failed(ptr @olang_loc_276794097286b2ce_71d39dea21084d12)
  unreachable
bb58:
  br label %bb59
bb59:
  %t211 = load ptr, ptr %l3, !tbaa !29
  %t214 = getelementptr %"compiler/check:Checker", ptr %t211, i32 0, i32 1
  %t215 = load ptr, ptr %t214, !tbaa !29
  %t217 = getelementptr %"compiler/generic:Program", ptr %t215, i32 0, i32 2
  %t218 = load i32, ptr %l12, !tbaa !23
  %t221 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t217, i32 %t218)
  store i32 %t221, ptr %l124
  br label %bb60
bb60:
  %t222 = load i32, ptr %l124, !range !{i32 0, i32 33}
  %t224 = trunc i64 20 to i32
  %t225 = icmp eq i32 %t222, %t224
  br i1 %t225, label %bb61, label %bb62
bb61:
  %t227 = load ptr, ptr %l3, !tbaa !29
  %t229 = icmp eq ptr %t227, null
  br i1 %t229, label %bb63, label %bb64
bb62:
  br label %bb67
bb63:
  call void @__olang_check_failed(ptr @olang_loc_276794097286b2ce_71d39dea21084d12)
  unreachable
bb64:
  br label %bb65
bb65:
  %t231 = load ptr, ptr %l3, !tbaa !29
  %t234 = getelementptr %"compiler/check:Checker", ptr %t231, i32 0, i32 1
  %t235 = load ptr, ptr %t234, !tbaa !29
  %t237 = getelementptr %"compiler/generic:Program", ptr %t235, i32 0, i32 2
  %t238 = load i32, ptr %l12, !tbaa !23
  %t241 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t237, i32 %t238)
  store i32 %t241, ptr %l134
  br label %bb66
bb66:
  %t242 = load i32, ptr %l134, !tbaa !23
  store i32 %t242, ptr %l12, !tbaa !23
  br label %bb67
bb67:
  %t243 = load ptr, ptr %l3, !tbaa !29
  %t245 = icmp eq ptr %t243, null
  br i1 %t245, label %bb68, label %bb69
bb68:
  call void @__olang_check_failed(ptr @olang_loc_883965863f350275_cecb497c93815139)
  unreachable
bb69:
  br label %bb70
bb70:
  %t247 = load ptr, ptr %l3, !tbaa !29
  %t248 = load i32, ptr %l12, !tbaa !23
  %t249 = load i32, ptr %l4, !tbaa !23
  %t253 = call i1 @compiler_2fsession_2esameShape(ptr %v0, ptr %t247, i32 %t248, i32 %t249)
  store i1 %t253, ptr %l140
  br label %bb71
bb71:
  %t254 = load i1, ptr %l140, !tbaa !21
  %t255 = xor i1 %t254, true
  br i1 %t255, label %bb72, label %bb73
bb72:
  call void @__olang_scope_close(ptr %s3)
  br label %bb104
bb73:
  br label %bb74
bb74:
  %t257 = load ptr, ptr %l3, !tbaa !29
  %t259 = icmp eq ptr %t257, null
  br i1 %t259, label %bb75, label %bb76
bb75:
  call void @__olang_check_failed(ptr @olang_loc_f4d7e16f2a7cbb1c_8fb96f5d8af1db38)
  unreachable
bb76:
  br label %bb77
bb77:
  %t261 = load ptr, ptr %l3, !tbaa !29
  %t264 = getelementptr %"compiler/check:Checker", ptr %t261, i32 0, i32 1
  %t265 = load ptr, ptr %t264, !tbaa !29
  %t267 = getelementptr %"compiler/generic:Program", ptr %t265, i32 0, i32 0
  %t268 = load ptr, ptr %t267, !tbaa !29
  %t270 = getelementptr %"compiler/load:Loader", ptr %t268, i32 0, i32 3
  %t271 = load ptr, ptr %t270, !tbaa !29
  %t272 = load ptr, ptr %l11, !tbaa !29
  %t274 = getelementptr %"compiler/ast:Func", ptr %t272, i32 0, i32 2
  %t275 = load i32, ptr %t274, !tbaa !23
  %t278 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v0, ptr %t271, i32 %t275)
  store { i64, ptr } %t278, ptr %l151
  br label %bb78
bb78:
  %t279 = load { i64, ptr }, ptr %l151, !tbaa !27
  store { i64, ptr } %t279, ptr %l13, !tbaa !27
  %t280 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t282 = call i1 @compiler_2fdoc_2eExported(ptr %v0, { i64, ptr } %t280)
  store i1 %t282, ptr %l153
  br label %bb79
bb79:
  %t283 = load i1, ptr %l153, !tbaa !21
  %t284 = xor i1 %t283, true
  br i1 %t284, label %bb80, label %bb81
bb80:
  %t286 = load ptr, ptr %l3, !tbaa !29
  %t288 = icmp eq ptr %t286, null
  br i1 %t288, label %bb82, label %bb83
bb81:
  store i1 false, ptr %l155, !tbaa !21
  br label %bb86
bb82:
  call void @__olang_check_failed(ptr @olang_loc_1c008e98be3ff20b_924cdfead9f88757)
  unreachable
bb83:
  br label %bb84
bb84:
  %t290 = load ptr, ptr %l3, !tbaa !29
  %t293 = getelementptr %"compiler/check:Checker", ptr %t290, i32 0, i32 1
  %t294 = load ptr, ptr %t293, !tbaa !29
  %t295 = load i64, ptr %l10, !tbaa !24
  %t298 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t294, i64 %t295)
  store i64 %t298, ptr %l162
  br label %bb85
bb85:
  %t299 = load ptr, ptr %l0, !tbaa !29
  %t301 = getelementptr %"compiler/session:Analysis", ptr %t299, i32 0, i32 0
  %t302 = load ptr, ptr %t301, !tbaa !29
  %t304 = getelementptr %"compiler/load:Loader", ptr %t302, i32 0, i32 12
  %t305 = load i64, ptr %t304, !tbaa !24
  %t306 = load i64, ptr %l162, !tbaa !24
  %t308 = icmp ne i64 %t306, %t305
  store i1 %t308, ptr %l155, !tbaa !21
  br label %bb86
bb86:
  %t310 = load i1, ptr %l155, !tbaa !21
  br i1 %t310, label %bb87, label %bb88
bb87:
  call void @__olang_scope_close(ptr %s3)
  br label %bb104
bb88:
  br label %bb89
bb89:
  %t311 = load ptr, ptr %l1, !tbaa !29
  store ptr %t311, ptr %l167, !tbaa !29
  %t312 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t312, ptr %l168, !tbaa !27
  %t313 = load i64, ptr @G_2ecompiler_2fsession_2eCompMethod, !tbaa !24
  store i64 %t313, ptr %l169, !tbaa !24
  %t314 = load ptr, ptr %l3, !tbaa !29
  %t316 = icmp eq ptr %t314, null
  br i1 %t316, label %bb90, label %bb91
bb90:
  call void @__olang_check_failed(ptr @olang_loc_b55c87bfcca1c8bf_5b30a336320e23)
  unreachable
bb91:
  br label %bb92
bb92:
  %t318 = load ptr, ptr %l3, !tbaa !29
  store ptr %t318, ptr %l172, !tbaa !29
  %t319 = load ptr, ptr %l0, !tbaa !29
  %t321 = getelementptr %"compiler/session:Analysis", ptr %t319, i32 0, i32 2
  %t322 = load ptr, ptr %t321, !tbaa !29
  %t324 = icmp eq ptr %t322, null
  br i1 %t324, label %bb93, label %bb94
bb93:
  call void @__olang_check_failed(ptr @olang_loc_b55c87bfcca1c8bf_5b30a336320e23)
  unreachable
bb94:
  br label %bb95
bb95:
  %t326 = load ptr, ptr %l0, !tbaa !29
  %t328 = getelementptr %"compiler/session:Analysis", ptr %t326, i32 0, i32 2
  %t329 = load ptr, ptr %t328, !tbaa !29
  %t330 = load i64, ptr %l10, !tbaa !24
  %t331 = load ptr, ptr %l172, !tbaa !29
  %t334 = call { i64, ptr } @compiler_2fexplain_2eFnText(ptr %v0, ptr %v0, ptr %s3, ptr %t331, ptr %t329, i64 %t330)
  store { i64, ptr } %t334, ptr %l179
  br label %bb96
bb96:
  %t335 = load { i64, ptr }, ptr %l179, !tbaa !27
  %t336 = extractvalue { i64, ptr } %t335, 0
  %t337 = extractvalue { i64, ptr } %t335, 1
  %t338 = mul i64 %t336, 1
  %t339 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t338)
  call void @llvm.memcpy.p0.p0.i64(ptr %t339, ptr %t337, i64 %t338, i1 false)
  %t340 = insertvalue { i64, ptr } undef, i64 %t336, 0
  %t341 = insertvalue { i64, ptr } %t340, ptr %t339, 1
  %t343 = call { i64, ptr } @compiler_2fsession_2efirstLine(ptr %s3, ptr %s3, { i64, ptr } %t341)
  store { i64, ptr } %t343, ptr %l181
  br label %bb97
bb97:
  %t344 = load { i64, ptr }, ptr %l181, !tbaa !27
  %t345 = extractvalue { i64, ptr } %t344, 0
  %t346 = extractvalue { i64, ptr } %t344, 1
  %t347 = mul i64 %t345, 1
  %t348 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t347)
  call void @llvm.memcpy.p0.p0.i64(ptr %t348, ptr %t346, i64 %t347, i1 false)
  %t349 = insertvalue { i64, ptr } undef, i64 %t345, 0
  %t350 = insertvalue { i64, ptr } %t349, ptr %t348, 1
  store { i64, ptr } %t350, ptr %l182, !tbaa !27
  %t351 = load ptr, ptr %l0, !tbaa !29
  store ptr %t351, ptr %l183, !tbaa !29
  %t352 = load ptr, ptr %l3, !tbaa !29
  %t354 = icmp eq ptr %t352, null
  br i1 %t354, label %bb98, label %bb99
bb98:
  call void @__olang_check_failed(ptr @olang_loc_b55c87bfcca1c8bf_5b30a336320e23)
  unreachable
bb99:
  br label %bb100
bb100:
  %t356 = load ptr, ptr %l3, !tbaa !29
  %t359 = getelementptr %"compiler/check:Checker", ptr %t356, i32 0, i32 1
  %t360 = load ptr, ptr %t359, !tbaa !29
  %t361 = load i64, ptr %l10, !tbaa !24
  %t364 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t360, i64 %t361)
  store i64 %t364, ptr %l190
  br label %bb101
bb101:
  %t365 = load ptr, ptr %l11, !tbaa !29
  %t367 = getelementptr %"compiler/ast:Func", ptr %t365, i32 0, i32 0
  %t368 = getelementptr %"compiler/source:Span", ptr %t367, i32 0, i32 0
  %t369 = load i32, ptr %t368, !tbaa !23
  %t371 = sext i32 %t369 to i64
  %t372 = load ptr, ptr %l183, !tbaa !29
  %t373 = load i64, ptr %l190, !tbaa !24
  %t375 = call i1 @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2edeprecatedAt(ptr %v0, ptr %t372, i64 %t373, i64 %t371, i1 false)
  store i1 %t375, ptr %l194
  br label %bb102
bb102:
  %t376 = load ptr, ptr %l167, !tbaa !29
  %t377 = load { i64, ptr }, ptr %l168, !tbaa !27
  %t378 = load i64, ptr %l169, !tbaa !24
  %t379 = load { i64, ptr }, ptr %l182, !tbaa !27
  %t380 = load i1, ptr %l194, !tbaa !21
  call void @compiler_2fsession_2ecompiler_2fsession_3aItems_2eAddDep(ptr %v1, ptr %v0, ptr %s3, ptr %t376, { i64, ptr } %t377, i64 %t378, { i64, ptr } %t379, i1 %t380)
  br label %bb103
bb103:
  call void @__olang_scope_close(ptr %s3)
  br label %bb104
bb104:
  %t381 = load i64, ptr %l9, !tbaa !24
  %t383 = add i64 %t381, 1
  store i64 %t383, ptr %l9, !tbaa !24
  br label %bb34
bb105:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fsession_2ecompiler_2fsession_3aItems_2eAdd(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i64 %a2, { i64, ptr } %a3) #0 {
entry:
  br label %start
start:
  br label %bb0
bb0:
  call void @compiler_2fsession_2ecompiler_2fsession_3aItems_2eAddDep(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i64 %a2, { i64, ptr } %a3, i1 false)
  br label %bb1
bb1:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fsession_2ecompiler_2fsession_3aPositions_2eOffset(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i8
  %l8 = alloca i64
  %l21 = alloca { i64, ptr }
  %l31 = alloca i64
  %l33 = alloca { i64, ptr }
  %l49 = alloca i64
  %l58 = alloca i1
  %l64 = alloca { i64, ptr }
  %l70 = alloca i64
  %l73 = alloca i64
  %l76 = alloca i64
  %l77 = alloca i64
  %l80 = alloca i64
  %l88 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = icmp slt i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i64 0, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load i64, ptr %l1, !tbaa !24
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/session:Positions", ptr %t7, i32 0, i32 2
  %t10 = load { i64, ptr }, ptr %t9, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t10, 0
  %t15 = icmp sge i64 %t6, %t12
  br i1 %t15, label %bb4, label %bb5
bb4:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/session:Positions", ptr %t17, i32 0, i32 0
  %t20 = load { i64, ptr }, ptr %t19, !tbaa !27
  %t22 = extractvalue { i64, ptr } %t20, 0
  store i64 %t22, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/session:Positions", ptr %t24, i32 0, i32 2
  %t27 = load { i64, ptr }, ptr %t26, !tbaa !27
  store { i64, ptr } %t27, ptr %l21, !tbaa !27
  %t28 = load i64, ptr %l1, !tbaa !24
  %t30 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !27
  %t32 = getelementptr i32, ptr %t31, i64 %t28
  %t33 = load i32, ptr %t32, !tbaa !33
  %t35 = sext i32 %t33 to i64
  store i64 %t35, ptr %l3, !tbaa !24
  %t37 = load i64, ptr %l1, !tbaa !24
  %t39 = add i64 %t37, 1
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/session:Positions", ptr %t40, i32 0, i32 2
  %t43 = load { i64, ptr }, ptr %t42, !tbaa !27
  %t45 = extractvalue { i64, ptr } %t43, 0
  %t48 = icmp slt i64 %t39, %t45
  br i1 %t48, label %bb7, label %bb8
bb7:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/session:Positions", ptr %t50, i32 0, i32 2
  %t53 = load { i64, ptr }, ptr %t52, !tbaa !27
  store { i64, ptr } %t53, ptr %l33, !tbaa !27
  %t54 = load i64, ptr %l1, !tbaa !24
  %t56 = add i64 %t54, 1
  %t58 = getelementptr { i64, ptr }, ptr %l33, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !27
  %t60 = getelementptr i32, ptr %t59, i64 %t56
  %t61 = load i32, ptr %t60, !tbaa !33
  %t63 = sext i32 %t61 to i64
  %t65 = sub i64 %t63, 1
  store i64 %t65, ptr %l31, !tbaa !24
  br label %bb9
bb8:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr %"compiler/session:Positions", ptr %t67, i32 0, i32 0
  %t70 = load { i64, ptr }, ptr %t69, !tbaa !27
  %t72 = extractvalue { i64, ptr } %t70, 0
  store i64 %t72, ptr %l31, !tbaa !24
  br label %bb9
bb9:
  %t74 = load i64, ptr %l31, !tbaa !24
  store i64 %t74, ptr %l4, !tbaa !24
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t77 = getelementptr %"compiler/session:Positions", ptr %t75, i32 0, i32 1
  %t78 = load i1, ptr %t77, !tbaa !21
  br i1 %t78, label %bb10, label %bb11
bb10:
  %t80 = load i64, ptr %l3, !tbaa !24
  %t81 = load i64, ptr %l2, !tbaa !24
  %t84 = add i64 %t80, %t81
  %t85 = load i64, ptr %l4, !tbaa !24
  %t88 = icmp sle i64 %t84, %t85
  br i1 %t88, label %bb12, label %bb13
bb11:
  br label %bb15
bb12:
  %t90 = load i64, ptr %l3, !tbaa !24
  %t91 = load i64, ptr %l2, !tbaa !24
  %t94 = add i64 %t90, %t91
  store i64 %t94, ptr %l49, !tbaa !24
  br label %bb14
bb13:
  %t96 = load i64, ptr %l4, !tbaa !24
  store i64 %t96, ptr %l49, !tbaa !24
  br label %bb14
bb14:
  %t98 = load i64, ptr %l49, !tbaa !24
  store i64 %t98, ptr %rv
  br label %ret
bb15:
  %t99 = load i64, ptr %l3, !tbaa !24
  store i64 %t99, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb16
bb16:
  %t101 = load i64, ptr %l5, !tbaa !24
  %t102 = load i64, ptr %l4, !tbaa !24
  %t105 = icmp slt i64 %t101, %t102
  br i1 %t105, label %bb17, label %bb18
bb17:
  %t107 = load i64, ptr %l6, !tbaa !24
  %t108 = load i64, ptr %l2, !tbaa !24
  %t111 = icmp slt i64 %t107, %t108
  store i1 %t111, ptr %l58, !tbaa !21
  br label %bb19
bb18:
  store i1 false, ptr %l58, !tbaa !21
  br label %bb19
bb19:
  %t113 = load i1, ptr %l58, !tbaa !21
  %t114 = xor i1 %t113, true
  br i1 %t114, label %bb20, label %bb21
bb20:
  br label %bb36
bb21:
  br label %bb22
bb22:
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t118 = getelementptr %"compiler/session:Positions", ptr %t116, i32 0, i32 0
  %t119 = load { i64, ptr }, ptr %t118, !tbaa !27
  store { i64, ptr } %t119, ptr %l64, !tbaa !27
  %t120 = load i64, ptr %l5, !tbaa !24
  %t122 = getelementptr { i64, ptr }, ptr %l64, i32 0, i32 1
  %t123 = load ptr, ptr %t122, !tbaa !27
  %t124 = getelementptr i8, ptr %t123, i64 %t120
  %t125 = load i8, ptr %t124, !tbaa !32
  store i8 %t125, ptr %l7, !tbaa !22
  %t128 = load i8, ptr %l7, !tbaa !22
  %t130 = icmp ult i8 %t128, -64
  br i1 %t130, label %bb23, label %bb24
bb23:
  store i64 1, ptr %l70, !tbaa !24
  br label %bb31
bb24:
  %t132 = load i8, ptr %l7, !tbaa !22
  %t134 = icmp ult i8 %t132, -32
  br i1 %t134, label %bb25, label %bb26
bb25:
  store i64 2, ptr %l73, !tbaa !24
  br label %bb30
bb26:
  %t136 = load i8, ptr %l7, !tbaa !22
  %t138 = icmp ult i8 %t136, -16
  br i1 %t138, label %bb27, label %bb28
bb27:
  store i64 3, ptr %l76, !tbaa !24
  br label %bb29
bb28:
  store i64 4, ptr %l76, !tbaa !24
  br label %bb29
bb29:
  %t140 = load i64, ptr %l76, !tbaa !24
  store i64 %t140, ptr %l73, !tbaa !24
  br label %bb30
bb30:
  %t141 = load i64, ptr %l73, !tbaa !24
  store i64 %t141, ptr %l70, !tbaa !24
  br label %bb31
bb31:
  %t142 = load i64, ptr %l70, !tbaa !24
  store i64 %t142, ptr %l8, !tbaa !24
  %t143 = load i64, ptr %l6, !tbaa !24
  store i64 %t143, ptr %l77, !tbaa !24
  %t144 = load i64, ptr %l8, !tbaa !24
  %t146 = icmp eq i64 %t144, 4
  br i1 %t146, label %bb32, label %bb33
bb32:
  store i64 2, ptr %l80, !tbaa !24
  br label %bb34
bb33:
  store i64 1, ptr %l80, !tbaa !24
  br label %bb34
bb34:
  %t148 = load i64, ptr %l77, !tbaa !24
  %t149 = load i64, ptr %l80, !tbaa !24
  %t150 = add i64 %t148, %t149
  store i64 %t150, ptr %l6, !tbaa !24
  %t152 = load i64, ptr %l5, !tbaa !24
  %t153 = load i64, ptr %l8, !tbaa !24
  %t156 = add i64 %t152, %t153
  store i64 %t156, ptr %l5, !tbaa !24
  br label %bb35
bb35:
  br label %bb16
bb36:
  %t158 = load i64, ptr %l5, !tbaa !24
  %t159 = load i64, ptr %l4, !tbaa !24
  %t162 = icmp sle i64 %t158, %t159
  br i1 %t162, label %bb37, label %bb38
bb37:
  %t164 = load i64, ptr %l5, !tbaa !24
  store i64 %t164, ptr %l88, !tbaa !24
  br label %bb39
bb38:
  %t166 = load i64, ptr %l4, !tbaa !24
  store i64 %t166, ptr %l88, !tbaa !24
  br label %bb39
bb39:
  %t168 = load i64, ptr %l88, !tbaa !24
  store i64 %t168, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2fsession_2ecompiler_2fsession_3aPositions_2eRange(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca { i64, i64 }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca { i64, i64 }
  %l12 = alloca { i64, i64 }
  %l17 = alloca { i64, i64 }
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call { i64, i64 } @compiler_2fsession_2ecompiler_2fsession_3aPositions_2ePos(ptr %v0, ptr %t1, i64 %a2)
  store { i64, i64 } %t5, ptr %l12
  br label %bb1
bb1:
  %t6 = load { i64, i64 }, ptr %l12
  store { i64, i64 } %t6, ptr %l4
  %t7 = getelementptr { i64, i64 }, ptr %l4, i32 0, i32 0
  %t8 = load i64, ptr %t7, !tbaa !24
  store i64 %t8, ptr %l5, !tbaa !24
  %t10 = getelementptr { i64, i64 }, ptr %l4, i32 0, i32 1
  %t11 = load i64, ptr %t10, !tbaa !24
  store i64 %t11, ptr %l6, !tbaa !24
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t17 = call { i64, i64 } @compiler_2fsession_2ecompiler_2fsession_3aPositions_2ePos(ptr %v0, ptr %t13, i64 %a3)
  store { i64, i64 } %t17, ptr %l17
  br label %bb2
bb2:
  %t18 = load { i64, i64 }, ptr %l17
  store { i64, i64 } %t18, ptr %l7
  %t19 = getelementptr { i64, i64 }, ptr %l7, i32 0, i32 0
  %t20 = load i64, ptr %t19, !tbaa !24
  %t22 = getelementptr { i64, i64 }, ptr %l7, i32 0, i32 1
  %t23 = load i64, ptr %t22, !tbaa !24
  %t26 = load i64, ptr %l5, !tbaa !24
  %t27 = load i64, ptr %l6, !tbaa !24
  %t30 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d35, i32 0, i32 1) }, 1
  %t31 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d35, i32 0, i32 1) }, 0
  %t33 = call i64 @__olang_fmt_i64(ptr null, i64 %t26)
  %t34 = add i64 %t31, %t33
  %t35 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d36, i32 0, i32 1) }, 1
  %t36 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d36, i32 0, i32 1) }, 0
  %t37 = add i64 %t34, %t36
  %t39 = call i64 @__olang_fmt_i64(ptr null, i64 %t27)
  %t40 = add i64 %t37, %t39
  %t41 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d37, i32 0, i32 1) }, 1
  %t42 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d37, i32 0, i32 1) }, 0
  %t43 = add i64 %t40, %t42
  %t45 = call i64 @__olang_fmt_i64(ptr null, i64 %t20)
  %t46 = add i64 %t43, %t45
  %t47 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d36, i32 0, i32 1) }, 1
  %t48 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d36, i32 0, i32 1) }, 0
  %t49 = add i64 %t46, %t48
  %t51 = call i64 @__olang_fmt_i64(ptr null, i64 %t23)
  %t52 = add i64 %t49, %t51
  %t53 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d38, i32 0, i32 1) }, 1
  %t54 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d38, i32 0, i32 1) }, 0
  %t55 = add i64 %t52, %t54
  %t56 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t55)
  call void @olang_textcopy(ptr %t56, ptr %t30, i64 %t31)
  %t57 = getelementptr i8, ptr %t56, i64 %t31
  %t58 = call i64 @__olang_fmt_i64(ptr %t57, i64 %t26)
  %t59 = getelementptr i8, ptr %t57, i64 %t33
  call void @olang_textcopy(ptr %t59, ptr %t35, i64 %t36)
  %t60 = getelementptr i8, ptr %t59, i64 %t36
  %t61 = call i64 @__olang_fmt_i64(ptr %t60, i64 %t27)
  %t62 = getelementptr i8, ptr %t60, i64 %t39
  call void @olang_textcopy(ptr %t62, ptr %t41, i64 %t42)
  %t63 = getelementptr i8, ptr %t62, i64 %t42
  %t64 = call i64 @__olang_fmt_i64(ptr %t63, i64 %t20)
  %t65 = getelementptr i8, ptr %t63, i64 %t45
  call void @olang_textcopy(ptr %t65, ptr %t47, i64 %t48)
  %t66 = getelementptr i8, ptr %t65, i64 %t48
  %t67 = call i64 @__olang_fmt_i64(ptr %t66, i64 %t23)
  %t68 = getelementptr i8, ptr %t66, i64 %t51
  call void @olang_textcopy(ptr %t68, ptr %t53, i64 %t54)
  %t69 = insertvalue { i64, ptr } undef, i64 %t55, 0
  %t70 = insertvalue { i64, ptr } %t69, ptr %t56, 1
  %t72 = extractvalue { i64, ptr } %t70, 0
  %t73 = extractvalue { i64, ptr } %t70, 1
  %t74 = mul i64 %t72, 1
  %t75 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t74)
  call void @llvm.memcpy.p0.p0.i64(ptr %t75, ptr %t73, i64 %t74, i1 false)
  %t76 = insertvalue { i64, ptr } undef, i64 %t72, 0
  %t77 = insertvalue { i64, ptr } %t76, ptr %t75, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s0, ptr %a1, { i64, ptr } %t77)
  br label %bb3
bb3:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fsession_2ecompiler_2fsession_3afinder_2eblock(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l16 = alloca { i64, ptr }
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
  %t7 = getelementptr %"compiler/typed:Block", ptr %t5, i32 0, i32 1
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
  br label %bb10
bb6:
  br label %bb7
bb7:
  %t22 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t22, ptr %l16, !tbaa !27
  %t23 = load i64, ptr %l3, !tbaa !24
  %t25 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !27
  %t27 = getelementptr ptr, ptr %t26, i64 %t23
  %t28 = load ptr, ptr %t27, !tbaa !39
  call void @compiler_2fsession_2ecompiler_2fsession_3afinder_2estmt(ptr %v0, ptr %v1, ptr %a0, ptr %t28)
  br label %bb8
bb8:
  br label %bb9
bb9:
  %t35 = load i64, ptr %l3, !tbaa !24
  %t37 = add i64 %t35, 1
  store i64 %t37, ptr %l3, !tbaa !24
  br label %bb4
bb10:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fsession_2ecompiler_2fsession_3afinder_2eexpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l10 = alloca ptr
  %l11 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca i64
  %l15 = alloca ptr
  %l16 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l18 = alloca i64
  %l19 = alloca i64
  %l21 = alloca ptr
  %l22 = alloca ptr
  %l23 = alloca ptr
  %l24 = alloca { i64, ptr }
  %l25 = alloca i64
  %l26 = alloca i64
  %l28 = alloca ptr
  %l29 = alloca { i64, ptr }
  %l30 = alloca i64
  %l31 = alloca i64
  %l33 = alloca { i64, ptr }
  %l34 = alloca i64
  %l35 = alloca i64
  %l36 = alloca ptr
  %l37 = alloca { i64, ptr }
  %l38 = alloca i64
  %l39 = alloca i64
  %l41 = alloca ptr
  %l42 = alloca { i64, ptr }
  %l43 = alloca i64
  %l44 = alloca i64
  %l45 = alloca ptr
  %l46 = alloca { i64, ptr }
  %l47 = alloca i64
  %l48 = alloca i64
  %l50 = alloca %"compiler/source:Span"
  %l51 = alloca ptr
  %l52 = alloca i32
  %l53 = alloca i32
  %l54 = alloca { i64, ptr }
  %l55 = alloca { i64, ptr }
  %l56 = alloca i64
  %l57 = alloca i64
  %l59 = alloca ptr
  %l60 = alloca ptr
  %l61 = alloca ptr
  %l62 = alloca { i64, ptr }
  %l63 = alloca i64
  %l64 = alloca i64
  %l65 = alloca ptr
  %l66 = alloca ptr
  %l69 = alloca ptr
  %l70 = alloca i1
  %l75 = alloca ptr
  %l76 = alloca i1
  %l81 = alloca ptr
  %l82 = alloca i1
  %l90 = alloca ptr
  %l91 = alloca i1
  %l100 = alloca ptr
  %l101 = alloca i1
  %l120 = alloca { i64, ptr }
  %l128 = alloca ptr
  %l129 = alloca i1
  %l142 = alloca { i64, ptr }
  %l153 = alloca ptr
  %l154 = alloca i1
  %l166 = alloca ptr
  %l167 = alloca i1
  %l179 = alloca { i64, ptr }
  %l187 = alloca ptr
  %l188 = alloca i1
  %l205 = alloca ptr
  %l206 = alloca i1
  %l222 = alloca ptr
  %l223 = alloca i1
  %l236 = alloca { i64, ptr }
  %l247 = alloca ptr
  %l248 = alloca i1
  %l261 = alloca { i64, ptr }
  %l277 = alloca { i64, ptr }
  %l288 = alloca { i64, ptr }
  %l312 = alloca ptr
  %l320 = alloca ptr
  %l328 = alloca ptr
  %l329 = alloca i1
  %l345 = alloca { i64, ptr }
  %l359 = alloca { i64, ptr }
  %l369 = alloca ptr
  %l370 = alloca i1
  %l377 = alloca ptr
  %l378 = alloca i1
  %l388 = alloca ptr
  %l389 = alloca i1
  %l403 = alloca { i64, ptr }
  %l417 = alloca ptr
  %l425 = alloca ptr
  %l426 = alloca i1
  %l434 = alloca ptr
  %l435 = alloca i1
  %l448 = alloca { i64, ptr }
  %l451 = alloca ptr
  %l452 = alloca i1
  %l462 = alloca ptr
  %l463 = alloca i1
  %s42 = alloca %olang.scope
  %t719 = alloca { i64, [3 x i64] }, align 8
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
  store ptr %t5, ptr %l69, !tbaa !29
  store i1 false, ptr %l70, !tbaa !21
  %t6 = load ptr, ptr %l69, !tbaa !29
  %t7 = icmp ne ptr %t6, null
  br i1 %t7, label %bb4, label %bb5
bb4:
  %t9 = load ptr, ptr %l69, !tbaa !29
  %t10 = load i64, ptr %t9, !range !{i64 0, i64 18}
  %t12 = icmp eq i64 %t10, 2
  store i1 %t12, ptr %l70, !tbaa !21
  br label %bb5
bb5:
  %t13 = load i1, ptr %l70, !tbaa !21
  br i1 %t13, label %bb6, label %bb7
bb6:
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t16 = getelementptr { i64, [5 x i64] }, ptr %t14, i32 0, i32 1
  %t17 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t16, i32 0, i32 2
  %t18 = load ptr, ptr %t17
  store ptr %t18, ptr %l2, !tbaa !29
  br label %bb16
bb7:
  %t20 = load ptr, ptr %l1, !tbaa !29
  store ptr %t20, ptr %l75, !tbaa !29
  store i1 false, ptr %l76, !tbaa !21
  %t21 = load ptr, ptr %l75, !tbaa !29
  %t22 = icmp ne ptr %t21, null
  br i1 %t22, label %bb8, label %bb9
bb8:
  %t24 = load ptr, ptr %l75, !tbaa !29
  %t25 = load i64, ptr %t24, !range !{i64 0, i64 18}
  %t27 = icmp eq i64 %t25, 3
  store i1 %t27, ptr %l76, !tbaa !21
  br label %bb9
bb9:
  %t28 = load i1, ptr %l76, !tbaa !21
  br i1 %t28, label %bb10, label %bb11
bb10:
  %t29 = load ptr, ptr %l1, !tbaa !29
  %t31 = getelementptr { i64, [5 x i64] }, ptr %t29, i32 0, i32 1
  %t32 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t31, i32 0, i32 2
  %t33 = load ptr, ptr %t32
  store ptr %t33, ptr %l2, !tbaa !29
  br label %bb16
bb11:
  %t35 = load ptr, ptr %l1, !tbaa !29
  store ptr %t35, ptr %l81, !tbaa !29
  store i1 false, ptr %l82, !tbaa !21
  %t36 = load ptr, ptr %l81, !tbaa !29
  %t37 = icmp ne ptr %t36, null
  br i1 %t37, label %bb12, label %bb13
bb12:
  %t39 = load ptr, ptr %l81, !tbaa !29
  %t40 = load i64, ptr %t39, !range !{i64 0, i64 18}
  %t42 = icmp eq i64 %t40, 4
  store i1 %t42, ptr %l82, !tbaa !21
  br label %bb13
bb13:
  %t43 = load i1, ptr %l82, !tbaa !21
  br i1 %t43, label %bb14, label %bb15
bb14:
  %t44 = load ptr, ptr %l1, !tbaa !29
  %t46 = getelementptr { i64, [5 x i64] }, ptr %t44, i32 0, i32 1
  %t47 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t46, i32 0, i32 2
  %t48 = load ptr, ptr %t47
  store ptr %t48, ptr %l2, !tbaa !29
  br label %bb16
bb15:
  br label %bb18
bb16:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t51 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3afinder_2eplace(ptr %v0, ptr %v1, ptr %t50, ptr %t51)
  br label %bb17
bb17:
  br label %bb241
bb18:
  %t55 = load ptr, ptr %l1, !tbaa !29
  store ptr %t55, ptr %l90, !tbaa !29
  store i1 false, ptr %l91, !tbaa !21
  %t56 = load ptr, ptr %l90, !tbaa !29
  %t57 = icmp ne ptr %t56, null
  br i1 %t57, label %bb19, label %bb20
bb19:
  %t59 = load ptr, ptr %l90, !tbaa !29
  %t60 = load i64, ptr %t59, !range !{i64 0, i64 18}
  %t62 = icmp eq i64 %t60, 5
  store i1 %t62, ptr %l91, !tbaa !21
  br label %bb20
bb20:
  %t63 = load i1, ptr %l91, !tbaa !21
  br i1 %t63, label %bb21, label %bb22
bb21:
  %t64 = load ptr, ptr %l1, !tbaa !29
  %t66 = getelementptr { i64, [5 x i64] }, ptr %t64, i32 0, i32 1
  %t67 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t66, i32 0, i32 2
  %t68 = load ptr, ptr %t67
  store ptr %t68, ptr %l3, !tbaa !29
  br label %bb23
bb22:
  br label %bb25
bb23:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t71 = load ptr, ptr %l3, !tbaa !29
  %t73 = getelementptr %"compiler/typed:Promote", ptr %t71, i32 0, i32 0
  %t74 = load ptr, ptr %t73, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3afinder_2eexpr(ptr %v0, ptr %v1, ptr %t70, ptr %t74)
  br label %bb24
bb24:
  br label %bb241
bb25:
  %t78 = load ptr, ptr %l1, !tbaa !29
  store ptr %t78, ptr %l100, !tbaa !29
  store i1 false, ptr %l101, !tbaa !21
  %t79 = load ptr, ptr %l100, !tbaa !29
  %t80 = icmp ne ptr %t79, null
  br i1 %t80, label %bb26, label %bb27
bb26:
  %t82 = load ptr, ptr %l100, !tbaa !29
  %t83 = load i64, ptr %t82, !range !{i64 0, i64 18}
  %t85 = icmp eq i64 %t83, 6
  store i1 %t85, ptr %l101, !tbaa !21
  br label %bb27
bb27:
  %t86 = load i1, ptr %l101, !tbaa !21
  br i1 %t86, label %bb28, label %bb29
bb28:
  %t87 = load ptr, ptr %l1, !tbaa !29
  %t89 = getelementptr { i64, [5 x i64] }, ptr %t87, i32 0, i32 1
  %t90 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t89, i32 0, i32 0
  %t91 = load %"compiler/source:Span", ptr %t90
  store %"compiler/source:Span" %t91, ptr %l4
  %t93 = load ptr, ptr %l1, !tbaa !29
  %t95 = getelementptr { i64, [5 x i64] }, ptr %t93, i32 0, i32 1
  %t96 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t95, i32 0, i32 2
  %t97 = load ptr, ptr %t96
  store ptr %t97, ptr %l5, !tbaa !29
  br label %bb30
bb29:
  br label %bb39
bb30:
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t100 = load %"compiler/source:Span", ptr %l4
  %t101 = load ptr, ptr %l5, !tbaa !29
  %t103 = getelementptr %"compiler/typed:Call", ptr %t101, i32 0, i32 0
  %t104 = load ptr, ptr %t103, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3afinder_2ecallee(ptr %v0, ptr %v1, ptr %t99, %"compiler/source:Span" %t100, ptr %t104)
  br label %bb31
bb31:
  %t108 = load ptr, ptr %l5, !tbaa !29
  %t110 = getelementptr %"compiler/typed:Call", ptr %t108, i32 0, i32 1
  %t111 = load { i64, ptr }, ptr %t110, !tbaa !27
  store { i64, ptr } %t111, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t113 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t115 = extractvalue { i64, ptr } %t113, 0
  store i64 %t115, ptr %l8, !tbaa !24
  br label %bb32
bb32:
  %t117 = load i64, ptr %l7, !tbaa !24
  %t118 = load i64, ptr %l8, !tbaa !24
  %t121 = icmp slt i64 %t117, %t118
  %t123 = xor i1 %t121, true
  br i1 %t123, label %bb33, label %bb34
bb33:
  br label %bb38
bb34:
  br label %bb35
bb35:
  %t125 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t125, ptr %l120, !tbaa !27
  %t126 = load i64, ptr %l7, !tbaa !24
  %t128 = getelementptr { i64, ptr }, ptr %l120, i32 0, i32 1
  %t129 = load ptr, ptr %t128, !tbaa !27
  %t130 = getelementptr ptr, ptr %t129, i64 %t126
  %t131 = load ptr, ptr %t130, !tbaa !39
  %t133 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3afinder_2eexpr(ptr %v0, ptr %v1, ptr %t133, ptr %t131)
  br label %bb36
bb36:
  br label %bb37
bb37:
  %t138 = load i64, ptr %l7, !tbaa !24
  %t140 = add i64 %t138, 1
  store i64 %t140, ptr %l7, !tbaa !24
  br label %bb32
bb38:
  br label %bb241
bb39:
  %t142 = load ptr, ptr %l1, !tbaa !29
  store ptr %t142, ptr %l128, !tbaa !29
  store i1 false, ptr %l129, !tbaa !21
  %t143 = load ptr, ptr %l128, !tbaa !29
  %t144 = icmp ne ptr %t143, null
  br i1 %t144, label %bb40, label %bb41
bb40:
  %t146 = load ptr, ptr %l128, !tbaa !29
  %t147 = load i64, ptr %t146, !range !{i64 0, i64 18}
  %t149 = icmp eq i64 %t147, 7
  store i1 %t149, ptr %l129, !tbaa !21
  br label %bb41
bb41:
  %t150 = load i1, ptr %l129, !tbaa !21
  br i1 %t150, label %bb42, label %bb43
bb42:
  %t151 = load ptr, ptr %l1, !tbaa !29
  %t153 = getelementptr { i64, [5 x i64] }, ptr %t151, i32 0, i32 1
  %t154 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t153, i32 0, i32 2
  %t155 = load ptr, ptr %t154
  store ptr %t155, ptr %l10, !tbaa !29
  br label %bb44
bb43:
  br label %bb53
bb44:
  %t157 = load ptr, ptr %l10, !tbaa !29
  %t159 = getelementptr %"compiler/typed:Make", ptr %t157, i32 0, i32 2
  %t160 = load { i64, ptr }, ptr %t159, !tbaa !27
  store { i64, ptr } %t160, ptr %l11, !tbaa !27
  store i64 0, ptr %l12, !tbaa !24
  %t162 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t164 = extractvalue { i64, ptr } %t162, 0
  store i64 %t164, ptr %l13, !tbaa !24
  br label %bb45
bb45:
  %t166 = load i64, ptr %l12, !tbaa !24
  %t167 = load i64, ptr %l13, !tbaa !24
  %t170 = icmp slt i64 %t166, %t167
  %t172 = xor i1 %t170, true
  br i1 %t172, label %bb46, label %bb47
bb46:
  br label %bb51
bb47:
  br label %bb48
bb48:
  %t174 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t174, ptr %l142, !tbaa !27
  %t175 = load i64, ptr %l12, !tbaa !24
  %t177 = getelementptr { i64, ptr }, ptr %l142, i32 0, i32 1
  %t178 = load ptr, ptr %t177, !tbaa !27
  %t179 = getelementptr ptr, ptr %t178, i64 %t175
  %t180 = load ptr, ptr %t179, !tbaa !39
  %t182 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3afinder_2eexpr(ptr %v0, ptr %v1, ptr %t182, ptr %t180)
  br label %bb49
bb49:
  br label %bb50
bb50:
  %t187 = load i64, ptr %l12, !tbaa !24
  %t189 = add i64 %t187, 1
  store i64 %t189, ptr %l12, !tbaa !24
  br label %bb45
bb51:
  %t191 = load ptr, ptr %l0, !tbaa !29
  %t192 = load ptr, ptr %l10, !tbaa !29
  %t194 = getelementptr %"compiler/typed:Make", ptr %t192, i32 0, i32 3
  %t195 = load ptr, ptr %t194, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3afinder_2eexpr(ptr %v0, ptr %v1, ptr %t191, ptr %t195)
  br label %bb52
bb52:
  br label %bb241
bb53:
  %t198 = load ptr, ptr %l1, !tbaa !29
  store ptr %t198, ptr %l153, !tbaa !29
  store i1 false, ptr %l154, !tbaa !21
  %t199 = load ptr, ptr %l153, !tbaa !29
  %t200 = icmp ne ptr %t199, null
  br i1 %t200, label %bb54, label %bb55
bb54:
  %t202 = load ptr, ptr %l153, !tbaa !29
  %t203 = load i64, ptr %t202, !range !{i64 0, i64 18}
  %t205 = icmp eq i64 %t203, 8
  store i1 %t205, ptr %l154, !tbaa !21
  br label %bb55
bb55:
  %t206 = load i1, ptr %l154, !tbaa !21
  br i1 %t206, label %bb56, label %bb57
bb56:
  %t207 = load ptr, ptr %l1, !tbaa !29
  %t209 = getelementptr { i64, [5 x i64] }, ptr %t207, i32 0, i32 1
  %t210 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t209, i32 0, i32 2
  %t211 = load ptr, ptr %t210
  store ptr %t211, ptr %l15, !tbaa !29
  br label %bb58
bb57:
  br label %bb61
bb58:
  %t213 = load ptr, ptr %l0, !tbaa !29
  %t214 = load ptr, ptr %l15, !tbaa !29
  %t216 = getelementptr %"compiler/typed:Collect", ptr %t214, i32 0, i32 0
  %t217 = load ptr, ptr %t216, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3afinder_2eexpr(ptr %v0, ptr %v1, ptr %t213, ptr %t217)
  br label %bb59
bb59:
  %t220 = load ptr, ptr %l0, !tbaa !29
  %t221 = load ptr, ptr %l15, !tbaa !29
  %t223 = getelementptr %"compiler/typed:Collect", ptr %t221, i32 0, i32 1
  %t224 = load ptr, ptr %t223, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3afinder_2eblock(ptr %v0, ptr %v1, ptr %t220, ptr %t224)
  br label %bb60
bb60:
  br label %bb241
bb61:
  %t228 = load ptr, ptr %l1, !tbaa !29
  store ptr %t228, ptr %l166, !tbaa !29
  store i1 false, ptr %l167, !tbaa !21
  %t229 = load ptr, ptr %l166, !tbaa !29
  %t230 = icmp ne ptr %t229, null
  br i1 %t230, label %bb62, label %bb63
bb62:
  %t232 = load ptr, ptr %l166, !tbaa !29
  %t233 = load i64, ptr %t232, !range !{i64 0, i64 18}
  %t235 = icmp eq i64 %t233, 9
  store i1 %t235, ptr %l167, !tbaa !21
  br label %bb63
bb63:
  %t236 = load i1, ptr %l167, !tbaa !21
  br i1 %t236, label %bb64, label %bb65
bb64:
  %t237 = load ptr, ptr %l1, !tbaa !29
  %t239 = getelementptr { i64, [5 x i64] }, ptr %t237, i32 0, i32 1
  %t240 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t239, i32 0, i32 4
  %t241 = load { i64, ptr }, ptr %t240
  store { i64, ptr } %t241, ptr %l16, !tbaa !27
  br label %bb66
bb65:
  br label %bb74
bb66:
  %t243 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t243, ptr %l17, !tbaa !27
  store i64 0, ptr %l18, !tbaa !24
  %t245 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t247 = extractvalue { i64, ptr } %t245, 0
  store i64 %t247, ptr %l19, !tbaa !24
  br label %bb67
bb67:
  %t249 = load i64, ptr %l18, !tbaa !24
  %t250 = load i64, ptr %l19, !tbaa !24
  %t253 = icmp slt i64 %t249, %t250
  %t255 = xor i1 %t253, true
  br i1 %t255, label %bb68, label %bb69
bb68:
  br label %bb73
bb69:
  br label %bb70
bb70:
  %t257 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t257, ptr %l179, !tbaa !27
  %t258 = load i64, ptr %l18, !tbaa !24
  %t260 = getelementptr { i64, ptr }, ptr %l179, i32 0, i32 1
  %t261 = load ptr, ptr %t260, !tbaa !27
  %t262 = getelementptr ptr, ptr %t261, i64 %t258
  %t263 = load ptr, ptr %t262, !tbaa !39
  %t265 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3afinder_2eexpr(ptr %v0, ptr %v1, ptr %t265, ptr %t263)
  br label %bb71
bb71:
  br label %bb72
bb72:
  %t270 = load i64, ptr %l18, !tbaa !24
  %t272 = add i64 %t270, 1
  store i64 %t272, ptr %l18, !tbaa !24
  br label %bb67
bb73:
  br label %bb241
bb74:
  %t274 = load ptr, ptr %l1, !tbaa !29
  store ptr %t274, ptr %l187, !tbaa !29
  store i1 false, ptr %l188, !tbaa !21
  %t275 = load ptr, ptr %l187, !tbaa !29
  %t276 = icmp ne ptr %t275, null
  br i1 %t276, label %bb75, label %bb76
bb75:
  %t278 = load ptr, ptr %l187, !tbaa !29
  %t279 = load i64, ptr %t278, !range !{i64 0, i64 18}
  %t281 = icmp eq i64 %t279, 10
  store i1 %t281, ptr %l188, !tbaa !21
  br label %bb76
bb76:
  %t282 = load i1, ptr %l188, !tbaa !21
  br i1 %t282, label %bb77, label %bb78
bb77:
  %t283 = load ptr, ptr %l1, !tbaa !29
  %t285 = getelementptr { i64, [5 x i64] }, ptr %t283, i32 0, i32 1
  %t286 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t285, i32 0, i32 2
  %t287 = load ptr, ptr %t286
  store ptr %t287, ptr %l21, !tbaa !29
  br label %bb79
bb78:
  br label %bb83
bb79:
  %t289 = load ptr, ptr %l0, !tbaa !29
  %t290 = load ptr, ptr %l21, !tbaa !29
  %t292 = getelementptr %"compiler/typed:Slice", ptr %t290, i32 0, i32 0
  %t293 = load ptr, ptr %t292, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3afinder_2eplace(ptr %v0, ptr %v1, ptr %t289, ptr %t293)
  br label %bb80
bb80:
  %t297 = load ptr, ptr %l0, !tbaa !29
  %t298 = load ptr, ptr %l21, !tbaa !29
  %t300 = getelementptr %"compiler/typed:Slice", ptr %t298, i32 0, i32 1
  %t301 = load ptr, ptr %t300, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3afinder_2eexpr(ptr %v0, ptr %v1, ptr %t297, ptr %t301)
  br label %bb81
bb81:
  %t305 = load ptr, ptr %l0, !tbaa !29
  %t306 = load ptr, ptr %l21, !tbaa !29
  %t308 = getelementptr %"compiler/typed:Slice", ptr %t306, i32 0, i32 2
  %t309 = load ptr, ptr %t308, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3afinder_2eexpr(ptr %v0, ptr %v1, ptr %t305, ptr %t309)
  br label %bb82
bb82:
  br label %bb241
bb83:
  %t313 = load ptr, ptr %l1, !tbaa !29
  store ptr %t313, ptr %l205, !tbaa !29
  store i1 false, ptr %l206, !tbaa !21
  %t314 = load ptr, ptr %l205, !tbaa !29
  %t315 = icmp ne ptr %t314, null
  br i1 %t315, label %bb84, label %bb85
bb84:
  %t317 = load ptr, ptr %l205, !tbaa !29
  %t318 = load i64, ptr %t317, !range !{i64 0, i64 18}
  %t320 = icmp eq i64 %t318, 11
  store i1 %t320, ptr %l206, !tbaa !21
  br label %bb85
bb85:
  %t321 = load i1, ptr %l206, !tbaa !21
  br i1 %t321, label %bb86, label %bb87
bb86:
  %t322 = load ptr, ptr %l1, !tbaa !29
  %t324 = getelementptr { i64, [5 x i64] }, ptr %t322, i32 0, i32 1
  %t325 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t324, i32 0, i32 2
  %t326 = load ptr, ptr %t325
  store ptr %t326, ptr %l22, !tbaa !29
  br label %bb88
bb87:
  br label %bb92
bb88:
  %t328 = load ptr, ptr %l0, !tbaa !29
  %t329 = load ptr, ptr %l22, !tbaa !29
  %t331 = getelementptr %"compiler/typed:Cond", ptr %t329, i32 0, i32 0
  %t332 = load ptr, ptr %t331, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3afinder_2eexpr(ptr %v0, ptr %v1, ptr %t328, ptr %t332)
  br label %bb89
bb89:
  %t336 = load ptr, ptr %l0, !tbaa !29
  %t337 = load ptr, ptr %l22, !tbaa !29
  %t339 = getelementptr %"compiler/typed:Cond", ptr %t337, i32 0, i32 1
  %t340 = load ptr, ptr %t339, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3afinder_2eexpr(ptr %v0, ptr %v1, ptr %t336, ptr %t340)
  br label %bb90
bb90:
  %t343 = load ptr, ptr %l0, !tbaa !29
  %t344 = load ptr, ptr %l22, !tbaa !29
  %t346 = getelementptr %"compiler/typed:Cond", ptr %t344, i32 0, i32 2
  %t347 = load ptr, ptr %t346, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3afinder_2eexpr(ptr %v0, ptr %v1, ptr %t343, ptr %t347)
  br label %bb91
bb91:
  br label %bb241
bb92:
  %t351 = load ptr, ptr %l1, !tbaa !29
  store ptr %t351, ptr %l222, !tbaa !29
  store i1 false, ptr %l223, !tbaa !21
  %t352 = load ptr, ptr %l222, !tbaa !29
  %t353 = icmp ne ptr %t352, null
  br i1 %t353, label %bb93, label %bb94
bb93:
  %t355 = load ptr, ptr %l222, !tbaa !29
  %t356 = load i64, ptr %t355, !range !{i64 0, i64 18}
  %t358 = icmp eq i64 %t356, 12
  store i1 %t358, ptr %l223, !tbaa !21
  br label %bb94
bb94:
  %t359 = load i1, ptr %l223, !tbaa !21
  br i1 %t359, label %bb95, label %bb96
bb95:
  %t360 = load ptr, ptr %l1, !tbaa !29
  %t362 = getelementptr { i64, [5 x i64] }, ptr %t360, i32 0, i32 1
  %t363 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t362, i32 0, i32 2
  %t364 = load ptr, ptr %t363
  store ptr %t364, ptr %l23, !tbaa !29
  br label %bb97
bb96:
  br label %bb106
bb97:
  %t366 = load ptr, ptr %l23, !tbaa !29
  %t368 = getelementptr %"compiler/typed:Seq", ptr %t366, i32 0, i32 0
  %t369 = load { i64, ptr }, ptr %t368, !tbaa !27
  store { i64, ptr } %t369, ptr %l24, !tbaa !27
  store i64 0, ptr %l25, !tbaa !24
  %t371 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t373 = extractvalue { i64, ptr } %t371, 0
  store i64 %t373, ptr %l26, !tbaa !24
  br label %bb98
bb98:
  %t375 = load i64, ptr %l25, !tbaa !24
  %t376 = load i64, ptr %l26, !tbaa !24
  %t379 = icmp slt i64 %t375, %t376
  %t381 = xor i1 %t379, true
  br i1 %t381, label %bb99, label %bb100
bb99:
  br label %bb104
bb100:
  br label %bb101
bb101:
  %t383 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t383, ptr %l236, !tbaa !27
  %t384 = load i64, ptr %l25, !tbaa !24
  %t386 = getelementptr { i64, ptr }, ptr %l236, i32 0, i32 1
  %t387 = load ptr, ptr %t386, !tbaa !27
  %t388 = getelementptr ptr, ptr %t387, i64 %t384
  %t389 = load ptr, ptr %t388, !tbaa !39
  %t391 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3afinder_2estmt(ptr %v0, ptr %v1, ptr %t391, ptr %t389)
  br label %bb102
bb102:
  br label %bb103
bb103:
  %t396 = load i64, ptr %l25, !tbaa !24
  %t398 = add i64 %t396, 1
  store i64 %t398, ptr %l25, !tbaa !24
  br label %bb98
bb104:
  %t400 = load ptr, ptr %l0, !tbaa !29
  %t401 = load ptr, ptr %l23, !tbaa !29
  %t403 = getelementptr %"compiler/typed:Seq", ptr %t401, i32 0, i32 1
  %t404 = load ptr, ptr %t403, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3afinder_2eexpr(ptr %v0, ptr %v1, ptr %t400, ptr %t404)
  br label %bb105
bb105:
  br label %bb241
bb106:
  %t407 = load ptr, ptr %l1, !tbaa !29
  store ptr %t407, ptr %l247, !tbaa !29
  store i1 false, ptr %l248, !tbaa !21
  %t408 = load ptr, ptr %l247, !tbaa !29
  %t409 = icmp ne ptr %t408, null
  br i1 %t409, label %bb107, label %bb108
bb107:
  %t411 = load ptr, ptr %l247, !tbaa !29
  %t412 = load i64, ptr %t411, !range !{i64 0, i64 18}
  %t414 = icmp eq i64 %t412, 13
  store i1 %t414, ptr %l248, !tbaa !21
  br label %bb108
bb108:
  %t415 = load i1, ptr %l248, !tbaa !21
  br i1 %t415, label %bb109, label %bb110
bb109:
  %t416 = load ptr, ptr %l1, !tbaa !29
  %t418 = getelementptr { i64, [5 x i64] }, ptr %t416, i32 0, i32 1
  %t419 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t418, i32 0, i32 2
  %t420 = load ptr, ptr %t419
  store ptr %t420, ptr %l28, !tbaa !29
  br label %bb111
bb110:
  br label %bb146
bb111:
  %t422 = load ptr, ptr %l28, !tbaa !29
  %t424 = getelementptr %"compiler/typed:Match", ptr %t422, i32 0, i32 0
  %t425 = load { i64, ptr }, ptr %t424, !tbaa !27
  store { i64, ptr } %t425, ptr %l29, !tbaa !27
  store i64 0, ptr %l30, !tbaa !24
  %t427 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t429 = extractvalue { i64, ptr } %t427, 0
  store i64 %t429, ptr %l31, !tbaa !24
  br label %bb112
bb112:
  %t431 = load i64, ptr %l30, !tbaa !24
  %t432 = load i64, ptr %l31, !tbaa !24
  %t435 = icmp slt i64 %t431, %t432
  %t437 = xor i1 %t435, true
  br i1 %t437, label %bb113, label %bb114
bb113:
  br label %bb118
bb114:
  br label %bb115
bb115:
  %t439 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t439, ptr %l261, !tbaa !27
  %t440 = load i64, ptr %l30, !tbaa !24
  %t442 = getelementptr { i64, ptr }, ptr %l261, i32 0, i32 1
  %t443 = load ptr, ptr %t442, !tbaa !27
  %t444 = getelementptr ptr, ptr %t443, i64 %t440
  %t445 = load ptr, ptr %t444, !tbaa !39
  %t447 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3afinder_2estmt(ptr %v0, ptr %v1, ptr %t447, ptr %t445)
  br label %bb116
bb116:
  br label %bb117
bb117:
  %t452 = load i64, ptr %l30, !tbaa !24
  %t454 = add i64 %t452, 1
  store i64 %t454, ptr %l30, !tbaa !24
  br label %bb112
bb118:
  %t456 = load ptr, ptr %l28, !tbaa !29
  %t458 = getelementptr %"compiler/typed:Match", ptr %t456, i32 0, i32 1
  %t459 = load { i64, ptr }, ptr %t458, !tbaa !27
  store { i64, ptr } %t459, ptr %l33, !tbaa !27
  store i64 0, ptr %l34, !tbaa !24
  %t461 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t463 = extractvalue { i64, ptr } %t461, 0
  store i64 %t463, ptr %l35, !tbaa !24
  br label %bb119
bb119:
  %t465 = load i64, ptr %l34, !tbaa !24
  %t466 = load i64, ptr %l35, !tbaa !24
  %t469 = icmp slt i64 %t465, %t466
  %t471 = xor i1 %t469, true
  br i1 %t471, label %bb120, label %bb121
bb120:
  br label %bb134
bb121:
  br label %bb122
bb122:
  %t473 = load { i64, ptr }, ptr %l33, !tbaa !27
  store { i64, ptr } %t473, ptr %l277, !tbaa !27
  %t474 = load i64, ptr %l34, !tbaa !24
  %t476 = getelementptr { i64, ptr }, ptr %l277, i32 0, i32 1
  %t477 = load ptr, ptr %t476, !tbaa !27
  %t478 = getelementptr ptr, ptr %t477, i64 %t474
  %t479 = load ptr, ptr %t478, !tbaa !39
  store ptr %t479, ptr %l36, !tbaa !29
  %t481 = load ptr, ptr %l36, !tbaa !29
  %t483 = getelementptr %"compiler/typed:Arm", ptr %t481, i32 0, i32 1
  %t484 = load { i64, ptr }, ptr %t483, !tbaa !27
  store { i64, ptr } %t484, ptr %l37, !tbaa !27
  store i64 0, ptr %l38, !tbaa !24
  %t486 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t488 = extractvalue { i64, ptr } %t486, 0
  store i64 %t488, ptr %l39, !tbaa !24
  br label %bb123
bb123:
  %t490 = load i64, ptr %l38, !tbaa !24
  %t491 = load i64, ptr %l39, !tbaa !24
  %t494 = icmp slt i64 %t490, %t491
  %t496 = xor i1 %t494, true
  br i1 %t496, label %bb124, label %bb125
bb124:
  br label %bb129
bb125:
  br label %bb126
bb126:
  %t498 = load { i64, ptr }, ptr %l37, !tbaa !27
  store { i64, ptr } %t498, ptr %l288, !tbaa !27
  %t499 = load i64, ptr %l38, !tbaa !24
  %t501 = getelementptr { i64, ptr }, ptr %l288, i32 0, i32 1
  %t502 = load ptr, ptr %t501, !tbaa !27
  %t503 = getelementptr ptr, ptr %t502, i64 %t499
  %t504 = load ptr, ptr %t503, !tbaa !39
  %t506 = load ptr, ptr %l0, !tbaa !29
  %t509 = getelementptr %"compiler/typed:Alt", ptr %t504, i32 0, i32 0
  %t510 = load ptr, ptr %t509, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3afinder_2eexpr(ptr %v0, ptr %v1, ptr %t506, ptr %t510)
  br label %bb127
bb127:
  br label %bb128
bb128:
  %t514 = load i64, ptr %l38, !tbaa !24
  %t516 = add i64 %t514, 1
  store i64 %t516, ptr %l38, !tbaa !24
  br label %bb123
bb129:
  %t518 = load ptr, ptr %l0, !tbaa !29
  %t519 = load ptr, ptr %l36, !tbaa !29
  %t521 = getelementptr %"compiler/typed:Arm", ptr %t519, i32 0, i32 2
  %t522 = load ptr, ptr %t521, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3afinder_2eexpr(ptr %v0, ptr %v1, ptr %t518, ptr %t522)
  br label %bb130
bb130:
  %t525 = load ptr, ptr %l0, !tbaa !29
  %t526 = load ptr, ptr %l36, !tbaa !29
  %t528 = getelementptr %"compiler/typed:Arm", ptr %t526, i32 0, i32 3
  %t529 = load ptr, ptr %t528, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3afinder_2eblock(ptr %v0, ptr %v1, ptr %t525, ptr %t529)
  br label %bb131
bb131:
  %t532 = load ptr, ptr %l0, !tbaa !29
  %t533 = load ptr, ptr %l36, !tbaa !29
  %t535 = getelementptr %"compiler/typed:Arm", ptr %t533, i32 0, i32 4
  %t536 = load ptr, ptr %t535, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3afinder_2eexpr(ptr %v0, ptr %v1, ptr %t532, ptr %t536)
  br label %bb132
bb132:
  br label %bb133
bb133:
  %t539 = load i64, ptr %l34, !tbaa !24
  %t541 = add i64 %t539, 1
  store i64 %t541, ptr %l34, !tbaa !24
  br label %bb119
bb134:
  %t543 = load ptr, ptr %l28, !tbaa !29
  %t545 = getelementptr %"compiler/typed:Match", ptr %t543, i32 0, i32 2
  %t546 = load ptr, ptr %t545, !tbaa !29
  %t548 = icmp eq ptr %t546, null
  %t550 = xor i1 %t548, true
  br i1 %t550, label %bb135, label %bb136
bb135:
  %t552 = load ptr, ptr %l0, !tbaa !29
  store ptr %t552, ptr %l312, !tbaa !29
  %t553 = load ptr, ptr %l28, !tbaa !29
  %t555 = getelementptr %"compiler/typed:Match", ptr %t553, i32 0, i32 2
  %t556 = load ptr, ptr %t555, !tbaa !29
  %t558 = icmp eq ptr %t556, null
  br i1 %t558, label %bb137, label %bb138
bb136:
  br label %bb145
bb137:
  call void @__olang_check_failed(ptr @olang_loc_6c2d06947719abd6_25c6135ab70ee42)
  unreachable
bb138:
  br label %bb139
bb139:
  %t560 = load ptr, ptr %l28, !tbaa !29
  %t562 = getelementptr %"compiler/typed:Match", ptr %t560, i32 0, i32 2
  %t563 = load ptr, ptr %t562, !tbaa !29
  %t566 = getelementptr %"compiler/typed:Arm", ptr %t563, i32 0, i32 3
  %t567 = load ptr, ptr %t566, !tbaa !29
  %t568 = load ptr, ptr %l312, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3afinder_2eblock(ptr %v0, ptr %v1, ptr %t568, ptr %t567)
  br label %bb140
bb140:
  %t570 = load ptr, ptr %l0, !tbaa !29
  store ptr %t570, ptr %l320, !tbaa !29
  %t571 = load ptr, ptr %l28, !tbaa !29
  %t573 = getelementptr %"compiler/typed:Match", ptr %t571, i32 0, i32 2
  %t574 = load ptr, ptr %t573, !tbaa !29
  %t576 = icmp eq ptr %t574, null
  br i1 %t576, label %bb141, label %bb142
bb141:
  call void @__olang_check_failed(ptr @olang_loc_a4411270f97f17bd_30632737f0d2da29)
  unreachable
bb142:
  br label %bb143
bb143:
  %t578 = load ptr, ptr %l28, !tbaa !29
  %t580 = getelementptr %"compiler/typed:Match", ptr %t578, i32 0, i32 2
  %t581 = load ptr, ptr %t580, !tbaa !29
  %t584 = getelementptr %"compiler/typed:Arm", ptr %t581, i32 0, i32 4
  %t585 = load ptr, ptr %t584, !tbaa !29
  %t586 = load ptr, ptr %l320, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3afinder_2eexpr(ptr %v0, ptr %v1, ptr %t586, ptr %t585)
  br label %bb144
bb144:
  br label %bb145
bb145:
  br label %bb241
bb146:
  %t588 = load ptr, ptr %l1, !tbaa !29
  store ptr %t588, ptr %l328, !tbaa !29
  store i1 false, ptr %l329, !tbaa !21
  %t589 = load ptr, ptr %l328, !tbaa !29
  %t590 = icmp ne ptr %t589, null
  br i1 %t590, label %bb147, label %bb148
bb147:
  %t592 = load ptr, ptr %l328, !tbaa !29
  %t593 = load i64, ptr %t592, !range !{i64 0, i64 18}
  %t595 = icmp eq i64 %t593, 14
  store i1 %t595, ptr %l329, !tbaa !21
  br label %bb148
bb148:
  %t596 = load i1, ptr %l329, !tbaa !21
  br i1 %t596, label %bb149, label %bb150
bb149:
  %t597 = load ptr, ptr %l1, !tbaa !29
  %t599 = getelementptr { i64, [5 x i64] }, ptr %t597, i32 0, i32 1
  %t600 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t599, i32 0, i32 2
  %t601 = load ptr, ptr %t600
  store ptr %t601, ptr %l41, !tbaa !29
  br label %bb151
bb150:
  br label %bb167
bb151:
  %t603 = load ptr, ptr %l0, !tbaa !29
  %t604 = load ptr, ptr %l41, !tbaa !29
  %t606 = getelementptr %"compiler/typed:Try", ptr %t604, i32 0, i32 0
  %t607 = load ptr, ptr %t606, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3afinder_2eexpr(ptr %v0, ptr %v1, ptr %t603, ptr %t607)
  br label %bb152
bb152:
  %t610 = load ptr, ptr %l41, !tbaa !29
  %t612 = getelementptr %"compiler/typed:Try", ptr %t610, i32 0, i32 1
  %t613 = load { i64, ptr }, ptr %t612, !tbaa !27
  store { i64, ptr } %t613, ptr %l42, !tbaa !27
  store i64 0, ptr %l43, !tbaa !24
  %t615 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t617 = extractvalue { i64, ptr } %t615, 0
  store i64 %t617, ptr %l44, !tbaa !24
  br label %bb153
bb153:
  %t619 = load i64, ptr %l43, !tbaa !24
  %t620 = load i64, ptr %l44, !tbaa !24
  %t623 = icmp slt i64 %t619, %t620
  %t625 = xor i1 %t623, true
  br i1 %t625, label %bb154, label %bb155
bb154:
  br label %bb166
bb155:
  br label %bb156
bb156:
  %t627 = load { i64, ptr }, ptr %l42, !tbaa !27
  store { i64, ptr } %t627, ptr %l345, !tbaa !27
  %t628 = load i64, ptr %l43, !tbaa !24
  %t630 = getelementptr { i64, ptr }, ptr %l345, i32 0, i32 1
  %t631 = load ptr, ptr %t630, !tbaa !27
  %t632 = getelementptr ptr, ptr %t631, i64 %t628
  %t633 = load ptr, ptr %t632, !tbaa !39
  store ptr %t633, ptr %l45, !tbaa !29
  %t635 = load ptr, ptr %l0, !tbaa !29
  %t636 = load ptr, ptr %l45, !tbaa !29
  %t638 = getelementptr %"compiler/typed:Clause", ptr %t636, i32 0, i32 3
  %t639 = load ptr, ptr %t638, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3afinder_2eblock(ptr %v0, ptr %v1, ptr %t635, ptr %t639)
  br label %bb157
bb157:
  %t642 = load ptr, ptr %l45, !tbaa !29
  %t644 = getelementptr %"compiler/typed:Clause", ptr %t642, i32 0, i32 4
  %t645 = load { i64, ptr }, ptr %t644, !tbaa !27
  store { i64, ptr } %t645, ptr %l46, !tbaa !27
  store i64 0, ptr %l47, !tbaa !24
  %t647 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t649 = extractvalue { i64, ptr } %t647, 0
  store i64 %t649, ptr %l48, !tbaa !24
  br label %bb158
bb158:
  %t651 = load i64, ptr %l47, !tbaa !24
  %t652 = load i64, ptr %l48, !tbaa !24
  %t655 = icmp slt i64 %t651, %t652
  %t657 = xor i1 %t655, true
  br i1 %t657, label %bb159, label %bb160
bb159:
  br label %bb164
bb160:
  br label %bb161
bb161:
  %t659 = load { i64, ptr }, ptr %l46, !tbaa !27
  store { i64, ptr } %t659, ptr %l359, !tbaa !27
  %t660 = load i64, ptr %l47, !tbaa !24
  %t662 = getelementptr { i64, ptr }, ptr %l359, i32 0, i32 1
  %t663 = load ptr, ptr %t662, !tbaa !27
  %t664 = getelementptr ptr, ptr %t663, i64 %t660
  %t665 = load ptr, ptr %t664, !tbaa !39
  %t667 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3afinder_2eexpr(ptr %v0, ptr %v1, ptr %t667, ptr %t665)
  br label %bb162
bb162:
  br label %bb163
bb163:
  %t672 = load i64, ptr %l47, !tbaa !24
  %t674 = add i64 %t672, 1
  store i64 %t674, ptr %l47, !tbaa !24
  br label %bb158
bb164:
  br label %bb165
bb165:
  %t676 = load i64, ptr %l43, !tbaa !24
  %t678 = add i64 %t676, 1
  store i64 %t678, ptr %l43, !tbaa !24
  br label %bb153
bb166:
  br label %bb241
bb167:
  %t680 = load ptr, ptr %l1, !tbaa !29
  store ptr %t680, ptr %l369, !tbaa !29
  store i1 false, ptr %l370, !tbaa !21
  %t681 = load ptr, ptr %l369, !tbaa !29
  %t682 = icmp ne ptr %t681, null
  br i1 %t682, label %bb168, label %bb169
bb168:
  %t684 = load ptr, ptr %l369, !tbaa !29
  %t685 = load i64, ptr %t684, !range !{i64 0, i64 18}
  %t687 = icmp eq i64 %t685, 15
  store i1 %t687, ptr %l370, !tbaa !21
  br label %bb169
bb169:
  %t688 = load i1, ptr %l370, !tbaa !21
  br i1 %t688, label %bb170, label %bb171
bb170:
  %t689 = load ptr, ptr %l1, !tbaa !29
  %t691 = getelementptr { i64, [5 x i64] }, ptr %t689, i32 0, i32 1
  %t692 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t691, i32 0, i32 0
  %t693 = load %"compiler/source:Span", ptr %t692
  store %"compiler/source:Span" %t693, ptr %l50
  %t695 = load ptr, ptr %l1, !tbaa !29
  %t697 = getelementptr { i64, [5 x i64] }, ptr %t695, i32 0, i32 1
  %t698 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t697, i32 0, i32 2
  %t699 = load ptr, ptr %t698
  store ptr %t699, ptr %l51, !tbaa !29
  br label %bb172
bb171:
  br label %bb206
bb172:
  %t701 = load ptr, ptr %l51, !tbaa !29
  store ptr %t701, ptr %l377, !tbaa !29
  store i1 false, ptr %l378, !tbaa !21
  %t702 = load ptr, ptr %l377, !tbaa !29
  %t703 = icmp ne ptr %t702, null
  br i1 %t703, label %bb173, label %bb174
bb173:
  %t705 = load ptr, ptr %l377, !tbaa !29
  %t706 = load i64, ptr %t705, !range !{i64 0, i64 3}
  %t708 = icmp eq i64 %t706, 0
  store i1 %t708, ptr %l378, !tbaa !21
  br label %bb174
bb174:
  %t709 = load i1, ptr %l378, !tbaa !21
  br i1 %t709, label %bb175, label %bb176
bb175:
  %t710 = load ptr, ptr %l51, !tbaa !29
  %t712 = getelementptr { i64, [4 x i64] }, ptr %t710, i32 0, i32 1
  %t713 = getelementptr { i32 }, ptr %t712, i32 0, i32 0
  %t714 = load i32, ptr %t713
  store i32 %t714, ptr %l52, !tbaa !23
  br label %bb177
bb176:
  br label %bb179
bb177:
  store %olang.scope zeroinitializer, ptr %s42
  %t716 = load ptr, ptr %l0, !tbaa !29
  %t717 = load %"compiler/source:Span", ptr %l50
  %t718 = load i32, ptr %l52, !tbaa !23
  store { i64, [3 x i64] } zeroinitializer, ptr %t719
  %t720 = getelementptr { i64, [3 x i64] }, ptr %t719, i32 0, i32 0
  store i64 0, ptr %t720
  %t722 = insertvalue { i32 } undef, i32 %t718, 0
  %t723 = getelementptr { i64, [3 x i64] }, ptr %t719, i32 0, i32 1
  store { i32 } %t722, ptr %t723
  %t724 = load { i64, [3 x i64] }, ptr %t719
  %t726 = call ptr @__olang_scope_alloc_a(ptr %s42, i64 32, i64 8)
  store { i64, [3 x i64] } %t724, ptr %t726
  call void @compiler_2fsession_2ecompiler_2fsession_3afinder_2ecallee(ptr %v0, ptr %s42, ptr %t716, %"compiler/source:Span" %t717, ptr %t726)
  br label %bb178
bb178:
  call void @__olang_scope_close(ptr %s42)
  br label %bb205
bb179:
  %t730 = load ptr, ptr %l51, !tbaa !29
  store ptr %t730, ptr %l388, !tbaa !29
  store i1 false, ptr %l389, !tbaa !21
  %t731 = load ptr, ptr %l388, !tbaa !29
  %t732 = icmp ne ptr %t731, null
  br i1 %t732, label %bb180, label %bb181
bb180:
  %t734 = load ptr, ptr %l388, !tbaa !29
  %t735 = load i64, ptr %t734, !range !{i64 0, i64 3}
  %t737 = icmp eq i64 %t735, 1
  store i1 %t737, ptr %l389, !tbaa !21
  br label %bb181
bb181:
  %t738 = load i1, ptr %l389, !tbaa !21
  br i1 %t738, label %bb182, label %bb183
bb182:
  %t739 = load ptr, ptr %l51, !tbaa !29
  %t741 = getelementptr { i64, [4 x i64] }, ptr %t739, i32 0, i32 1
  %t742 = getelementptr { i32, { i64, ptr }, i32 }, ptr %t741, i32 0, i32 0
  %t743 = load i32, ptr %t742
  store i32 %t743, ptr %l53, !tbaa !23
  %t745 = load ptr, ptr %l51, !tbaa !29
  %t747 = getelementptr { i64, [4 x i64] }, ptr %t745, i32 0, i32 1
  %t748 = getelementptr { i32, { i64, ptr }, i32 }, ptr %t747, i32 0, i32 1
  %t749 = load { i64, ptr }, ptr %t748
  store { i64, ptr } %t749, ptr %l54, !tbaa !27
  br label %bb184
bb183:
  br label %bb197
bb184:
  %t751 = load { i64, ptr }, ptr %l54, !tbaa !27
  store { i64, ptr } %t751, ptr %l55, !tbaa !27
  store i64 0, ptr %l56, !tbaa !24
  %t753 = load { i64, ptr }, ptr %l55, !tbaa !27
  %t755 = extractvalue { i64, ptr } %t753, 0
  store i64 %t755, ptr %l57, !tbaa !24
  br label %bb185
bb185:
  %t757 = load i64, ptr %l56, !tbaa !24
  %t758 = load i64, ptr %l57, !tbaa !24
  %t761 = icmp slt i64 %t757, %t758
  %t763 = xor i1 %t761, true
  br i1 %t763, label %bb186, label %bb187
bb186:
  br label %bb191
bb187:
  br label %bb188
bb188:
  %t765 = load { i64, ptr }, ptr %l55, !tbaa !27
  store { i64, ptr } %t765, ptr %l403, !tbaa !27
  %t766 = load i64, ptr %l56, !tbaa !24
  %t768 = getelementptr { i64, ptr }, ptr %l403, i32 0, i32 1
  %t769 = load ptr, ptr %t768, !tbaa !27
  %t770 = getelementptr ptr, ptr %t769, i64 %t766
  %t771 = load ptr, ptr %t770, !tbaa !39
  %t773 = load ptr, ptr %l0, !tbaa !29
  %t776 = getelementptr %"compiler/typed:Capture", ptr %t771, i32 0, i32 1
  %t777 = load ptr, ptr %t776, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3afinder_2eexpr(ptr %v0, ptr %v1, ptr %t773, ptr %t777)
  br label %bb189
bb189:
  br label %bb190
bb190:
  %t781 = load i64, ptr %l56, !tbaa !24
  %t783 = add i64 %t781, 1
  store i64 %t783, ptr %l56, !tbaa !24
  br label %bb185
bb191:
  %t785 = load ptr, ptr %l0, !tbaa !29
  %t787 = getelementptr %"compiler/session:finder", ptr %t785, i32 0, i32 3
  %t788 = load ptr, ptr %t787, !tbaa !29
  %t790 = getelementptr %"compiler/check:Checker", ptr %t788, i32 0, i32 14
  %t791 = load i32, ptr %l53, !tbaa !23
  %t793 = sext i32 %t791 to i64
  %t796 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t790, i64 %t793)
  store ptr %t796, ptr %l417
  br label %bb192
bb192:
  %t797 = load ptr, ptr %l417, !tbaa !29
  store ptr %t797, ptr %l59, !tbaa !29
  %t798 = load ptr, ptr %l59, !tbaa !29
  %t800 = getelementptr %"compiler/typed:Body", ptr %t798, i32 0, i32 11
  %t801 = load ptr, ptr %t800, !tbaa !29
  %t803 = icmp eq ptr %t801, null
  %t805 = xor i1 %t803, true
  br i1 %t805, label %bb193, label %bb194
bb193:
  %t807 = load ptr, ptr %l0, !tbaa !29
  %t808 = load ptr, ptr %l59, !tbaa !29
  %t810 = getelementptr %"compiler/typed:Body", ptr %t808, i32 0, i32 11
  %t811 = load ptr, ptr %t810, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3afinder_2eblock(ptr %v0, ptr %v0, ptr %t807, ptr %t811)
  br label %bb195
bb194:
  br label %bb196
bb195:
  br label %bb196
bb196:
  br label %bb205
bb197:
  %t814 = load ptr, ptr %l51, !tbaa !29
  store ptr %t814, ptr %l425, !tbaa !29
  store i1 false, ptr %l426, !tbaa !21
  %t815 = load ptr, ptr %l425, !tbaa !29
  %t816 = icmp ne ptr %t815, null
  br i1 %t816, label %bb198, label %bb199
bb198:
  %t818 = load ptr, ptr %l425, !tbaa !29
  %t819 = load i64, ptr %t818, !range !{i64 0, i64 3}
  %t821 = icmp eq i64 %t819, 2
  store i1 %t821, ptr %l426, !tbaa !21
  br label %bb199
bb199:
  %t822 = load i1, ptr %l426, !tbaa !21
  br i1 %t822, label %bb200, label %bb201
bb200:
  %t823 = load ptr, ptr %l51, !tbaa !29
  %t825 = getelementptr { i64, [4 x i64] }, ptr %t823, i32 0, i32 1
  %t826 = getelementptr { i32, ptr, i32 }, ptr %t825, i32 0, i32 1
  %t827 = load ptr, ptr %t826
  store ptr %t827, ptr %l60, !tbaa !29
  br label %bb202
bb201:
  br label %bb204
bb202:
  %t829 = load ptr, ptr %l0, !tbaa !29
  %t830 = load ptr, ptr %l60, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3afinder_2eexpr(ptr %v0, ptr %v1, ptr %t829, ptr %t830)
  br label %bb203
bb203:
  br label %bb205
bb204:
  call void @__olang_check_failed(ptr @olang_loc_e2f597d466b9781f_44eca8a2d4aa1b5b)
  unreachable
bb205:
  br label %bb241
bb206:
  %t834 = load ptr, ptr %l1, !tbaa !29
  store ptr %t834, ptr %l434, !tbaa !29
  store i1 false, ptr %l435, !tbaa !21
  %t835 = load ptr, ptr %l434, !tbaa !29
  %t836 = icmp ne ptr %t835, null
  br i1 %t836, label %bb207, label %bb208
bb207:
  %t838 = load ptr, ptr %l434, !tbaa !29
  %t839 = load i64, ptr %t838, !range !{i64 0, i64 18}
  %t841 = icmp eq i64 %t839, 16
  store i1 %t841, ptr %l435, !tbaa !21
  br label %bb208
bb208:
  %t842 = load i1, ptr %l435, !tbaa !21
  br i1 %t842, label %bb209, label %bb210
bb209:
  %t843 = load ptr, ptr %l1, !tbaa !29
  %t845 = getelementptr { i64, [5 x i64] }, ptr %t843, i32 0, i32 1
  %t846 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t845, i32 0, i32 2
  %t847 = load ptr, ptr %t846
  store ptr %t847, ptr %l61, !tbaa !29
  br label %bb211
bb210:
  br label %bb230
bb211:
  %t849 = load ptr, ptr %l61, !tbaa !29
  %t851 = getelementptr %"compiler/typed:Text", ptr %t849, i32 0, i32 0
  %t852 = load { i64, ptr }, ptr %t851, !tbaa !27
  store { i64, ptr } %t852, ptr %l62, !tbaa !27
  store i64 0, ptr %l63, !tbaa !24
  %t854 = load { i64, ptr }, ptr %l62, !tbaa !27
  %t856 = extractvalue { i64, ptr } %t854, 0
  store i64 %t856, ptr %l64, !tbaa !24
  br label %bb212
bb212:
  %t858 = load i64, ptr %l63, !tbaa !24
  %t859 = load i64, ptr %l64, !tbaa !24
  %t862 = icmp slt i64 %t858, %t859
  %t864 = xor i1 %t862, true
  br i1 %t864, label %bb213, label %bb214
bb213:
  br label %bb229
bb214:
  br label %bb215
bb215:
  %t866 = load { i64, ptr }, ptr %l62, !tbaa !27
  store { i64, ptr } %t866, ptr %l448, !tbaa !27
  %t867 = load i64, ptr %l63, !tbaa !24
  %t869 = getelementptr { i64, ptr }, ptr %l448, i32 0, i32 1
  %t870 = load ptr, ptr %t869, !tbaa !27
  %t871 = getelementptr ptr, ptr %t870, i64 %t867
  %t872 = load ptr, ptr %t871, !tbaa !39
  store ptr %t872, ptr %l65, !tbaa !29
  %t874 = load ptr, ptr %l65, !tbaa !29
  store ptr %t874, ptr %l451, !tbaa !29
  store i1 false, ptr %l452, !tbaa !21
  %t875 = load ptr, ptr %l451, !tbaa !29
  %t876 = icmp ne ptr %t875, null
  br i1 %t876, label %bb216, label %bb217
bb216:
  %t878 = load ptr, ptr %l451, !tbaa !29
  %t879 = load i64, ptr %t878, !range !{i64 0, i64 2}
  %t881 = icmp eq i64 %t879, 1
  store i1 %t881, ptr %l452, !tbaa !21
  br label %bb217
bb217:
  %t882 = load i1, ptr %l452, !tbaa !21
  br i1 %t882, label %bb218, label %bb219
bb218:
  %t883 = load ptr, ptr %l65, !tbaa !29
  %t885 = getelementptr { i64, [2 x i64] }, ptr %t883, i32 0, i32 1
  %t886 = getelementptr { ptr }, ptr %t885, i32 0, i32 0
  %t887 = load ptr, ptr %t886
  store ptr %t887, ptr %l66, !tbaa !29
  br label %bb220
bb219:
  br label %bb222
bb220:
  %t889 = load ptr, ptr %l0, !tbaa !29
  %t890 = load ptr, ptr %l66, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3afinder_2eexpr(ptr %v0, ptr %v1, ptr %t889, ptr %t890)
  br label %bb221
bb221:
  br label %bb227
bb222:
  br i1 true, label %bb223, label %bb224
bb223:
  br label %bb225
bb224:
  br label %bb226
bb225:
  br label %bb227
bb226:
  call void @__olang_check_failed(ptr @olang_loc_7a96973d190d0d9e_4b6d703943f97c5a)
  unreachable
bb227:
  br label %bb228
bb228:
  %t894 = load i64, ptr %l63, !tbaa !24
  %t896 = add i64 %t894, 1
  store i64 %t896, ptr %l63, !tbaa !24
  br label %bb212
bb229:
  br label %bb241
bb230:
  %t898 = load ptr, ptr %l1, !tbaa !29
  store ptr %t898, ptr %l462, !tbaa !29
  store i1 false, ptr %l463, !tbaa !21
  %t899 = load ptr, ptr %l462, !tbaa !29
  %t900 = icmp ne ptr %t899, null
  br i1 %t900, label %bb231, label %bb232
bb231:
  %t902 = load ptr, ptr %l462, !tbaa !29
  %t903 = load i64, ptr %t902, !range !{i64 0, i64 18}
  %t905 = icmp eq i64 %t903, 17
  store i1 %t905, ptr %l463, !tbaa !21
  br label %bb232
bb232:
  %t906 = load i1, ptr %l463, !tbaa !21
  br i1 %t906, label %bb233, label %bb234
bb233:
  br label %bb235
bb234:
  br label %bb236
bb235:
  br label %bb241
bb236:
  br i1 true, label %bb237, label %bb238
bb237:
  br label %bb239
bb238:
  br label %bb240
bb239:
  br label %bb241
bb240:
  call void @__olang_check_failed(ptr @olang_loc_d73c626185112279_563eb35624dc00ed)
  unreachable
bb241:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fsession_2ecompiler_2fsession_3afinder_2eplace(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i64
  %l4 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca %"compiler/source:Span"
  %l7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l14 = alloca ptr
  %l15 = alloca i1
  %l29 = alloca i1
  %l36 = alloca { i64, ptr }
  %l39 = alloca i1
  %l48 = alloca ptr
  %l49 = alloca i1
  %l57 = alloca ptr
  %l58 = alloca i1
  %l72 = alloca ptr
  %l73 = alloca %"compiler/source:Span"
  %l75 = alloca i32
  %l81 = alloca ptr
  %l82 = alloca i1
  %l95 = alloca ptr
  %l96 = alloca i1
  %l105 = alloca ptr
  %l106 = alloca i1
  %t90 = alloca { i64, [6 x i64] }, align 8
  %t166 = alloca { i64, [6 x i64] }, align 8
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
  store ptr %t5, ptr %l14, !tbaa !29
  store i1 false, ptr %l15, !tbaa !21
  %t6 = load ptr, ptr %l14, !tbaa !29
  %t7 = icmp ne ptr %t6, null
  br i1 %t7, label %bb4, label %bb5
bb4:
  %t9 = load ptr, ptr %l14, !tbaa !29
  %t10 = load i64, ptr %t9, !range !{i64 0, i64 8}
  %t12 = icmp eq i64 %t10, 1
  store i1 %t12, ptr %l15, !tbaa !21
  br label %bb5
bb5:
  %t13 = load i1, ptr %l15, !tbaa !21
  br i1 %t13, label %bb6, label %bb7
bb6:
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t16 = getelementptr { i64, [4 x i64] }, ptr %t14, i32 0, i32 1
  %t17 = getelementptr { %"compiler/source:Span", i32, i64, i32 }, ptr %t16, i32 0, i32 0
  %t18 = load %"compiler/source:Span", ptr %t17
  store %"compiler/source:Span" %t18, ptr %l2
  %t20 = load ptr, ptr %l1, !tbaa !29
  %t22 = getelementptr { i64, [4 x i64] }, ptr %t20, i32 0, i32 1
  %t23 = getelementptr { %"compiler/source:Span", i32, i64, i32 }, ptr %t22, i32 0, i32 2
  %t24 = load i64, ptr %t23
  store i64 %t24, ptr %l3, !tbaa !24
  %t26 = load ptr, ptr %l1, !tbaa !29
  %t28 = getelementptr { i64, [4 x i64] }, ptr %t26, i32 0, i32 1
  %t29 = getelementptr { %"compiler/source:Span", i32, i64, i32 }, ptr %t28, i32 0, i32 3
  %t30 = load i32, ptr %t29
  store i32 %t30, ptr %l4, !tbaa !23
  br label %bb8
bb7:
  br label %bb18
bb8:
  %t32 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 1
  %t33 = load i32, ptr %t32, !tbaa !23
  %t35 = sext i32 %t33 to i64
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/session:finder", ptr %t36, i32 0, i32 1
  %t39 = load i64, ptr %t38, !tbaa !24
  %t42 = icmp eq i64 %t35, %t39
  br i1 %t42, label %bb9, label %bb10
bb9:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/session:finder", ptr %t44, i32 0, i32 3
  %t47 = load ptr, ptr %t46, !tbaa !29
  %t49 = getelementptr %"compiler/check:Checker", ptr %t47, i32 0, i32 1
  %t50 = load ptr, ptr %t49, !tbaa !29
  %t52 = getelementptr %"compiler/generic:Program", ptr %t50, i32 0, i32 0
  %t53 = load ptr, ptr %t52, !tbaa !29
  %t55 = getelementptr %"compiler/load:Loader", ptr %t53, i32 0, i32 3
  %t56 = load ptr, ptr %t55, !tbaa !29
  %t57 = load i32, ptr %l4, !tbaa !23
  %t60 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v0, ptr %t56, i32 %t57)
  store { i64, ptr } %t60, ptr %l36
  br label %bb11
bb10:
  store i1 false, ptr %l29, !tbaa !21
  br label %bb13
bb11:
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t63 = getelementptr %"compiler/session:finder", ptr %t61, i32 0, i32 2
  %t64 = load { i64, ptr }, ptr %t63, !tbaa !27
  %t65 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t67 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v0, { i64, ptr } %t65, { i64, ptr } %t64)
  store i1 %t67, ptr %l39
  br label %bb12
bb12:
  %t68 = load i1, ptr %l39, !tbaa !21
  store i1 %t68, ptr %l29, !tbaa !21
  br label %bb13
bb13:
  %t69 = load i1, ptr %l29, !tbaa !21
  br i1 %t69, label %bb14, label %bb15
bb14:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t71 = load %"compiler/source:Span", ptr %l2
  %t72 = load i64, ptr %l3, !tbaa !24
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/session:finder", ptr %t73, i32 0, i32 2
  %t76 = load { i64, ptr }, ptr %t75, !tbaa !27
  %t78 = extractvalue { i64, ptr } %t76, 1
  %t79 = extractvalue { i64, ptr } %t76, 0
  %t80 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t79)
  call void @olang_textcopy(ptr %t80, ptr %t78, i64 %t79)
  %t81 = insertvalue { i64, ptr } undef, i64 %t79, 0
  %t82 = insertvalue { i64, ptr } %t81, ptr %t80, 1
  %t84 = extractvalue { i64, ptr } %t82, 0
  %t85 = extractvalue { i64, ptr } %t82, 1
  %t86 = mul i64 %t84, 1
  %t87 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t86)
  call void @llvm.memcpy.p0.p0.i64(ptr %t87, ptr %t85, i64 %t86, i1 false)
  %t88 = insertvalue { i64, ptr } undef, i64 %t84, 0
  %t89 = insertvalue { i64, ptr } %t88, ptr %t87, 1
  store { i64, [6 x i64] } zeroinitializer, ptr %t90
  %t91 = getelementptr { i64, [6 x i64] }, ptr %t90, i32 0, i32 0
  store i64 1, ptr %t91
  %t93 = insertvalue { i64, { i64, ptr } } undef, i64 %t72, 0
  %t95 = insertvalue { i64, { i64, ptr } } %t93, { i64, ptr } %t89, 1
  %t96 = getelementptr { i64, [6 x i64] }, ptr %t90, i32 0, i32 1
  store { i64, { i64, ptr } } %t95, ptr %t96
  %t97 = load { i64, [6 x i64] }, ptr %t90
  call void @compiler_2fsession_2ecompiler_2fsession_3afinder_2etake(ptr %v0, ptr %v0, ptr %t70, %"compiler/source:Span" %t71, { i64, [6 x i64] } %t97)
  br label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb17
bb17:
  br label %bb64
bb18:
  %t101 = load ptr, ptr %l1, !tbaa !29
  store ptr %t101, ptr %l48, !tbaa !29
  store i1 false, ptr %l49, !tbaa !21
  %t102 = load ptr, ptr %l48, !tbaa !29
  %t103 = icmp ne ptr %t102, null
  br i1 %t103, label %bb19, label %bb20
bb19:
  %t105 = load ptr, ptr %l48, !tbaa !29
  %t106 = load i64, ptr %t105, !range !{i64 0, i64 8}
  %t108 = icmp eq i64 %t106, 2
  store i1 %t108, ptr %l49, !tbaa !21
  br label %bb20
bb20:
  %t109 = load i1, ptr %l49, !tbaa !21
  br i1 %t109, label %bb21, label %bb22
bb21:
  %t110 = load ptr, ptr %l1, !tbaa !29
  %t112 = getelementptr { i64, [4 x i64] }, ptr %t110, i32 0, i32 1
  %t113 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t112, i32 0, i32 2
  %t114 = load ptr, ptr %t113
  store ptr %t114, ptr %l5, !tbaa !29
  br label %bb23
bb22:
  br label %bb25
bb23:
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t117 = load ptr, ptr %l5, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3afinder_2eexpr(ptr %v0, ptr %v1, ptr %t116, ptr %t117)
  br label %bb24
bb24:
  br label %bb64
bb25:
  %t121 = load ptr, ptr %l1, !tbaa !29
  store ptr %t121, ptr %l57, !tbaa !29
  store i1 false, ptr %l58, !tbaa !21
  %t122 = load ptr, ptr %l57, !tbaa !29
  %t123 = icmp ne ptr %t122, null
  br i1 %t123, label %bb26, label %bb27
bb26:
  %t125 = load ptr, ptr %l57, !tbaa !29
  %t126 = load i64, ptr %t125, !range !{i64 0, i64 8}
  %t128 = icmp eq i64 %t126, 3
  store i1 %t128, ptr %l58, !tbaa !21
  br label %bb27
bb27:
  %t129 = load i1, ptr %l58, !tbaa !21
  br i1 %t129, label %bb28, label %bb29
bb28:
  %t130 = load ptr, ptr %l1, !tbaa !29
  %t132 = getelementptr { i64, [4 x i64] }, ptr %t130, i32 0, i32 1
  %t133 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t132, i32 0, i32 0
  %t134 = load %"compiler/source:Span", ptr %t133
  store %"compiler/source:Span" %t134, ptr %l6
  %t136 = load ptr, ptr %l1, !tbaa !29
  %t138 = getelementptr { i64, [4 x i64] }, ptr %t136, i32 0, i32 1
  %t139 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t138, i32 0, i32 2
  %t140 = load ptr, ptr %t139
  store ptr %t140, ptr %l7, !tbaa !29
  %t142 = load ptr, ptr %l1, !tbaa !29
  %t144 = getelementptr { i64, [4 x i64] }, ptr %t142, i32 0, i32 1
  %t145 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t144, i32 0, i32 3
  %t146 = load i64, ptr %t145
  store i64 %t146, ptr %l8, !tbaa !24
  br label %bb30
bb29:
  br label %bb37
bb30:
  %t148 = getelementptr %"compiler/source:Span", ptr %l6, i32 0, i32 1
  %t149 = load i32, ptr %t148, !tbaa !23
  %t151 = sext i32 %t149 to i64
  %t152 = load ptr, ptr %l0, !tbaa !29
  %t154 = getelementptr %"compiler/session:finder", ptr %t152, i32 0, i32 1
  %t155 = load i64, ptr %t154, !tbaa !24
  %t158 = icmp eq i64 %t151, %t155
  br i1 %t158, label %bb31, label %bb32
bb31:
  %t160 = load ptr, ptr %l0, !tbaa !29
  store ptr %t160, ptr %l72, !tbaa !29
  %t161 = load %"compiler/source:Span", ptr %l6
  store %"compiler/source:Span" %t161, ptr %l73
  %t162 = load ptr, ptr %l7, !tbaa !29
  %t164 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t162)
  store i32 %t164, ptr %l75
  br label %bb33
bb32:
  br label %bb35
bb33:
  %t165 = load i64, ptr %l8, !tbaa !24
  store { i64, [6 x i64] } zeroinitializer, ptr %t166
  %t167 = getelementptr { i64, [6 x i64] }, ptr %t166, i32 0, i32 0
  store i64 3, ptr %t167
  %t168 = load i32, ptr %l75, !tbaa !23
  %t169 = insertvalue { i32, i64 } undef, i32 %t168, 0
  %t171 = insertvalue { i32, i64 } %t169, i64 %t165, 1
  %t172 = getelementptr { i64, [6 x i64] }, ptr %t166, i32 0, i32 1
  store { i32, i64 } %t171, ptr %t172
  %t173 = load { i64, [6 x i64] }, ptr %t166
  %t174 = load ptr, ptr %l72, !tbaa !29
  %t175 = load %"compiler/source:Span", ptr %l73
  call void @compiler_2fsession_2ecompiler_2fsession_3afinder_2etake(ptr %v0, ptr %v0, ptr %t174, %"compiler/source:Span" %t175, { i64, [6 x i64] } %t173)
  br label %bb34
bb34:
  br label %bb35
bb35:
  %t177 = load ptr, ptr %l0, !tbaa !29
  %t178 = load ptr, ptr %l7, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3afinder_2eplace(ptr %v0, ptr %v1, ptr %t177, ptr %t178)
  br label %bb36
bb36:
  br label %bb64
bb37:
  %t182 = load ptr, ptr %l1, !tbaa !29
  store ptr %t182, ptr %l81, !tbaa !29
  store i1 false, ptr %l82, !tbaa !21
  %t183 = load ptr, ptr %l81, !tbaa !29
  %t184 = icmp ne ptr %t183, null
  br i1 %t184, label %bb38, label %bb39
bb38:
  %t186 = load ptr, ptr %l81, !tbaa !29
  %t187 = load i64, ptr %t186, !range !{i64 0, i64 8}
  %t189 = icmp eq i64 %t187, 4
  store i1 %t189, ptr %l82, !tbaa !21
  br label %bb39
bb39:
  %t190 = load i1, ptr %l82, !tbaa !21
  br i1 %t190, label %bb40, label %bb41
bb40:
  %t191 = load ptr, ptr %l1, !tbaa !29
  %t193 = getelementptr { i64, [4 x i64] }, ptr %t191, i32 0, i32 1
  %t194 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t193, i32 0, i32 2
  %t195 = load ptr, ptr %t194
  store ptr %t195, ptr %l9, !tbaa !29
  br label %bb42
bb41:
  br label %bb45
bb42:
  %t197 = load ptr, ptr %l0, !tbaa !29
  %t198 = load ptr, ptr %l9, !tbaa !29
  %t200 = getelementptr %"compiler/typed:Elem", ptr %t198, i32 0, i32 0
  %t201 = load ptr, ptr %t200, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3afinder_2eplace(ptr %v0, ptr %v1, ptr %t197, ptr %t201)
  br label %bb43
bb43:
  %t205 = load ptr, ptr %l0, !tbaa !29
  %t206 = load ptr, ptr %l9, !tbaa !29
  %t208 = getelementptr %"compiler/typed:Elem", ptr %t206, i32 0, i32 1
  %t209 = load ptr, ptr %t208, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3afinder_2eexpr(ptr %v0, ptr %v1, ptr %t205, ptr %t209)
  br label %bb44
bb44:
  br label %bb64
bb45:
  %t213 = load ptr, ptr %l1, !tbaa !29
  store ptr %t213, ptr %l95, !tbaa !29
  store i1 false, ptr %l96, !tbaa !21
  %t214 = load ptr, ptr %l95, !tbaa !29
  %t215 = icmp ne ptr %t214, null
  br i1 %t215, label %bb46, label %bb47
bb46:
  %t217 = load ptr, ptr %l95, !tbaa !29
  %t218 = load i64, ptr %t217, !range !{i64 0, i64 8}
  %t220 = icmp eq i64 %t218, 5
  store i1 %t220, ptr %l96, !tbaa !21
  br label %bb47
bb47:
  %t221 = load i1, ptr %l96, !tbaa !21
  br i1 %t221, label %bb48, label %bb49
bb48:
  %t222 = load ptr, ptr %l1, !tbaa !29
  %t224 = getelementptr { i64, [4 x i64] }, ptr %t222, i32 0, i32 1
  %t225 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t224, i32 0, i32 2
  %t226 = load ptr, ptr %t225
  store ptr %t226, ptr %l10, !tbaa !29
  br label %bb50
bb49:
  br label %bb52
bb50:
  %t228 = load ptr, ptr %l0, !tbaa !29
  %t229 = load ptr, ptr %l10, !tbaa !29
  %t231 = getelementptr %"compiler/typed:Payload", ptr %t229, i32 0, i32 0
  %t232 = load ptr, ptr %t231, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3afinder_2eplace(ptr %v0, ptr %v1, ptr %t228, ptr %t232)
  br label %bb51
bb51:
  br label %bb64
bb52:
  %t236 = load ptr, ptr %l1, !tbaa !29
  store ptr %t236, ptr %l105, !tbaa !29
  store i1 false, ptr %l106, !tbaa !21
  %t237 = load ptr, ptr %l105, !tbaa !29
  %t238 = icmp ne ptr %t237, null
  br i1 %t238, label %bb53, label %bb54
bb53:
  %t240 = load ptr, ptr %l105, !tbaa !29
  %t241 = load i64, ptr %t240, !range !{i64 0, i64 8}
  %t243 = icmp eq i64 %t241, 6
  store i1 %t243, ptr %l106, !tbaa !21
  br label %bb54
bb54:
  %t244 = load i1, ptr %l106, !tbaa !21
  br i1 %t244, label %bb55, label %bb56
bb55:
  %t245 = load ptr, ptr %l1, !tbaa !29
  %t247 = getelementptr { i64, [4 x i64] }, ptr %t245, i32 0, i32 1
  %t248 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t247, i32 0, i32 2
  %t249 = load ptr, ptr %t248
  store ptr %t249, ptr %l11, !tbaa !29
  br label %bb57
bb56:
  br label %bb59
bb57:
  %t251 = load ptr, ptr %l0, !tbaa !29
  %t252 = load ptr, ptr %l11, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3afinder_2eexpr(ptr %v0, ptr %v1, ptr %t251, ptr %t252)
  br label %bb58
bb58:
  br label %bb64
bb59:
  br i1 true, label %bb60, label %bb61
bb60:
  br label %bb62
bb61:
  br label %bb63
bb62:
  br label %bb64
bb63:
  call void @__olang_check_failed(ptr @olang_loc_f2f4caf0087f76e9_23d5843dfc5c1e5)
  unreachable
bb64:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fsession_2ecompiler_2fsession_3afinder_2etake(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, { i64, [6 x i64] } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l3 = alloca i64
  %l14 = alloca i1
  %l20 = alloca i1
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 1
  %t2 = load i32, ptr %t1, !tbaa !23
  %t4 = sext i32 %t2 to i64
  %t5 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t6 = load i32, ptr %t5, !tbaa !23
  %t8 = sext i32 %t6 to i64
  %t11 = sub i64 %t4, %t8
  store i64 %t11, ptr %l3, !tbaa !24
  %t13 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t14 = load i32, ptr %t13, !tbaa !23
  %t16 = sext i32 %t14 to i64
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/session:finder", ptr %t17, i32 0, i32 0
  %t20 = load i64, ptr %t19, !tbaa !24
  %t23 = icmp sle i64 %t16, %t20
  br i1 %t23, label %bb1, label %bb2
bb1:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/session:finder", ptr %t25, i32 0, i32 1
  %t28 = load i64, ptr %t27, !tbaa !24
  %t29 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 1
  %t30 = load i32, ptr %t29, !tbaa !23
  %t32 = sext i32 %t30 to i64
  %t35 = icmp sle i64 %t28, %t32
  store i1 %t35, ptr %l14, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l14, !tbaa !21
  br label %bb3
bb3:
  %t37 = load i1, ptr %l14, !tbaa !21
  br i1 %t37, label %bb4, label %bb5
bb4:
  %t38 = load i64, ptr %l3, !tbaa !24
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/session:finder", ptr %t39, i32 0, i32 6
  %t42 = load i64, ptr %t41, !tbaa !24
  %t45 = icmp slt i64 %t38, %t42
  store i1 %t45, ptr %l20, !tbaa !21
  br label %bb6
bb5:
  store i1 false, ptr %l20, !tbaa !21
  br label %bb6
bb6:
  %t47 = load i1, ptr %l20, !tbaa !21
  br i1 %t47, label %bb7, label %bb8
bb7:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t49 = load i64, ptr %l3, !tbaa !24
  %t52 = getelementptr %"compiler/session:finder", ptr %t48, i32 0, i32 6
  store i64 %t49, ptr %t52, !tbaa !24
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/session:finder", ptr %t53, i32 0, i32 5
  store { i64, [6 x i64] } %a2, ptr %t57
  br label %bb9
bb8:
  br label %bb9
bb9:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fsession_2ecompiler_2fsession_3asymWriter_2emembers(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca %"compiler/source:Span"
  %l11 = alloca ptr
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca %"compiler/source:Span"
  %l19 = alloca { i64, ptr }
  %l20 = alloca { i64, ptr }
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca ptr
  %l24 = alloca { i64, ptr }
  %l25 = alloca { i64, ptr }
  %l26 = alloca { i64, ptr }
  %l27 = alloca i64
  %l28 = alloca i64
  %l29 = alloca ptr
  %l30 = alloca { i64, ptr }
  %l31 = alloca i64
  %l35 = alloca ptr
  %l36 = alloca i1
  %l53 = alloca { i64, ptr }
  %l56 = alloca ptr
  %l57 = alloca i1
  %l72 = alloca i64
  %l75 = alloca i64
  %l95 = alloca { i64, ptr }
  %l98 = alloca ptr
  %l99 = alloca ptr
  %l103 = alloca { i64, ptr }
  %l106 = alloca { i64, ptr }
  %l108 = alloca %"compiler/source:Span"
  %l111 = alloca %"compiler/source:Span"
  %l122 = alloca ptr
  %l123 = alloca i1
  %l135 = alloca { i64, ptr }
  %l141 = alloca { i64, ptr }
  %l163 = alloca ptr
  %l164 = alloca i1
  %l176 = alloca { i64, ptr }
  %l182 = alloca { i64, ptr }
  %l188 = alloca i64
  %s7 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s16 = alloca %olang.scope
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
  store ptr %t9, ptr %l35, !tbaa !29
  store i1 false, ptr %l36, !tbaa !21
  %t10 = load ptr, ptr %l35, !tbaa !29
  %t11 = icmp ne ptr %t10, null
  br i1 %t11, label %bb1, label %bb2
bb1:
  %t13 = load ptr, ptr %l35, !tbaa !29
  %t14 = load i64, ptr %t13, !range !{i64 0, i64 5}
  %t16 = icmp eq i64 %t14, 0
  store i1 %t16, ptr %l36, !tbaa !21
  br label %bb2
bb2:
  %t17 = load i1, ptr %l36, !tbaa !21
  br i1 %t17, label %bb3, label %bb4
bb3:
  %t18 = load ptr, ptr %l2, !tbaa !29
  %t20 = getelementptr { i64, [6 x i64] }, ptr %t18, i32 0, i32 1
  %t21 = getelementptr { ptr }, ptr %t20, i32 0, i32 0
  %t22 = load ptr, ptr %t21
  store ptr %t22, ptr %l5, !tbaa !29
  br label %bb5
bb4:
  br label %bb34
bb5:
  %t24 = load ptr, ptr %l5, !tbaa !29
  %t26 = getelementptr %"compiler/ast:StructBody", ptr %t24, i32 0, i32 2
  %t27 = load { i64, ptr }, ptr %t26, !tbaa !27
  %t29 = extractvalue { i64, ptr } %t27, 0
  %t31 = icmp eq i64 %t29, 0
  br i1 %t31, label %bb6, label %bb7
bb6:
  br label %ret
bb7:
  br label %bb8
bb8:
  %t33 = load ptr, ptr %l5, !tbaa !29
  %t35 = getelementptr %"compiler/ast:StructBody", ptr %t33, i32 0, i32 2
  %t36 = load { i64, ptr }, ptr %t35, !tbaa !27
  store { i64, ptr } %t36, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t38 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t40 = extractvalue { i64, ptr } %t38, 0
  store i64 %t40, ptr %l8, !tbaa !24
  br label %bb9
bb9:
  %t42 = load i64, ptr %l7, !tbaa !24
  %t43 = load i64, ptr %l8, !tbaa !24
  %t46 = icmp slt i64 %t42, %t43
  %t48 = xor i1 %t46, true
  br i1 %t48, label %bb10, label %bb11
bb10:
  br label %bb33
bb11:
  br label %bb12
bb12:
  %t50 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t50, ptr %l53, !tbaa !27
  %t51 = load i64, ptr %l7, !tbaa !24
  %t53 = getelementptr { i64, ptr }, ptr %l53, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !27
  %t55 = getelementptr ptr, ptr %t54, i64 %t51
  %t56 = load ptr, ptr %t55, !tbaa !39
  store ptr %t56, ptr %l9, !tbaa !29
  %t58 = load ptr, ptr %l9, !tbaa !29
  store ptr %t58, ptr %l56, !tbaa !29
  store i1 false, ptr %l57, !tbaa !21
  %t59 = load ptr, ptr %l56, !tbaa !29
  %t60 = icmp ne ptr %t59, null
  br i1 %t60, label %bb13, label %bb14
bb13:
  %t62 = load ptr, ptr %l56, !tbaa !29
  %t63 = load i64, ptr %t62, !range !{i64 0, i64 22}
  %t65 = icmp eq i64 %t63, 1
  store i1 %t65, ptr %l57, !tbaa !21
  br label %bb14
bb14:
  %t66 = load i1, ptr %l57, !tbaa !21
  %t67 = xor i1 %t66, true
  br i1 %t67, label %bb15, label %bb16
bb15:
  br label %bb32
bb16:
  br label %bb17
bb17:
  %t69 = load ptr, ptr %l9, !tbaa !29
  %t71 = getelementptr { i64, [4 x i64] }, ptr %t69, i32 0, i32 1
  %t72 = getelementptr { %"compiler/source:Span", ptr }, ptr %t71, i32 0, i32 0
  %t73 = load %"compiler/source:Span", ptr %t72
  store %"compiler/source:Span" %t73, ptr %l10
  %t75 = load ptr, ptr %l9, !tbaa !29
  %t77 = getelementptr { i64, [4 x i64] }, ptr %t75, i32 0, i32 1
  %t78 = getelementptr { %"compiler/source:Span", ptr }, ptr %t77, i32 0, i32 1
  %t79 = load ptr, ptr %t78
  store ptr %t79, ptr %l11, !tbaa !29
  store i64 0, ptr %l12, !tbaa !24
  %t81 = load ptr, ptr %l11, !tbaa !29
  %t84 = getelementptr %"compiler/ast:VarDecl", ptr %t81, i32 0, i32 0
  %t85 = load { i64, ptr }, ptr %t84, !tbaa !27
  %t87 = extractvalue { i64, ptr } %t85, 0
  store i64 %t87, ptr %l13, !tbaa !24
  store i64 1, ptr %l14, !tbaa !24
  %t89 = load i64, ptr %l13, !tbaa !24
  %t90 = load i64, ptr %l12, !tbaa !24
  %t93 = icmp sgt i64 %t89, %t90
  br i1 %t93, label %bb18, label %bb19
bb18:
  %t95 = load i64, ptr %l14, !tbaa !24
  %t97 = icmp sgt i64 %t95, 0
  br i1 %t97, label %bb20, label %bb21
bb19:
  store i64 0, ptr %l72, !tbaa !24
  br label %bb23
bb20:
  %t99 = load i64, ptr %l13, !tbaa !24
  %t100 = load i64, ptr %l12, !tbaa !24
  %t103 = sub i64 %t99, %t100
  %t104 = load i64, ptr %l14, !tbaa !24
  %t107 = add i64 %t103, %t104
  %t109 = sub i64 %t107, 1
  %t110 = load i64, ptr %l14, !tbaa !24
  %t113 = sdiv i64 %t109, %t110
  store i64 %t113, ptr %l75, !tbaa !24
  br label %bb22
bb21:
  store i64 0, ptr %l75, !tbaa !24
  br label %bb22
bb22:
  %t115 = load i64, ptr %l75, !tbaa !24
  store i64 %t115, ptr %l72, !tbaa !24
  br label %bb23
bb23:
  %t116 = load i64, ptr %l72, !tbaa !24
  store i64 %t116, ptr %l15, !tbaa !24
  store i64 0, ptr %l16, !tbaa !24
  br label %bb24
bb24:
  store %olang.scope zeroinitializer, ptr %s7
  %t117 = load i64, ptr %l16, !tbaa !24
  %t118 = load i64, ptr %l15, !tbaa !24
  %t121 = icmp slt i64 %t117, %t118
  %t123 = xor i1 %t121, true
  br i1 %t123, label %bb25, label %bb26
bb25:
  call void @__olang_scope_close(ptr %s7)
  br label %bb31
bb26:
  br label %bb27
bb27:
  %t125 = load i64, ptr %l12, !tbaa !24
  %t126 = load i64, ptr %l16, !tbaa !24
  %t127 = load i64, ptr %l14, !tbaa !24
  %t130 = mul i64 %t126, %t127
  %t133 = add i64 %t125, %t130
  store i64 %t133, ptr %l17, !tbaa !24
  %t135 = load ptr, ptr %l11, !tbaa !29
  %t138 = getelementptr %"compiler/ast:VarDecl", ptr %t135, i32 0, i32 1
  %t139 = load { i64, ptr }, ptr %t138, !tbaa !27
  store { i64, ptr } %t139, ptr %l95, !tbaa !27
  %t140 = load i64, ptr %l17, !tbaa !24
  %t142 = getelementptr { i64, ptr }, ptr %l95, i32 0, i32 1
  %t143 = load ptr, ptr %t142, !tbaa !27
  %t144 = getelementptr %"compiler/source:Span", ptr %t143, i64 %t140
  %t145 = load %"compiler/source:Span", ptr %t144
  store %"compiler/source:Span" %t145, ptr %l18
  %t147 = load ptr, ptr %l0, !tbaa !29
  store ptr %t147, ptr %l98, !tbaa !29
  %t148 = load ptr, ptr %l1, !tbaa !29
  store ptr %t148, ptr %l99, !tbaa !29
  %t149 = load ptr, ptr %l3, !tbaa !29
  %t150 = load ptr, ptr %l11, !tbaa !29
  %t153 = getelementptr %"compiler/ast:VarDecl", ptr %t150, i32 0, i32 0
  %t154 = load { i64, ptr }, ptr %t153, !tbaa !27
  store { i64, ptr } %t154, ptr %l103, !tbaa !27
  %t155 = load i64, ptr %l17, !tbaa !24
  %t157 = getelementptr { i64, ptr }, ptr %l103, i32 0, i32 1
  %t158 = load ptr, ptr %t157, !tbaa !27
  %t159 = getelementptr i32, ptr %t158, i64 %t155
  %t160 = load i32, ptr %t159, !tbaa !33
  %t163 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v3, ptr %v3, ptr %t149, i32 %t160)
  store { i64, ptr } %t163, ptr %l106
  br label %bb28
bb28:
  %t164 = load i64, ptr @G_2ecompiler_2fsession_2eKindField, !tbaa !24
  %t165 = load %"compiler/source:Span", ptr %l10
  store %"compiler/source:Span" %t165, ptr %l108
  %t166 = getelementptr %"compiler/source:Span", ptr %l108, i32 0, i32 0
  %t167 = load i32, ptr %t166, !tbaa !23
  %t169 = sext i32 %t167 to i64
  %t170 = load %"compiler/source:Span", ptr %l10
  store %"compiler/source:Span" %t170, ptr %l111
  %t171 = getelementptr %"compiler/source:Span", ptr %l111, i32 0, i32 1
  %t172 = load i32, ptr %t171, !tbaa !23
  %t174 = sext i32 %t172 to i64
  %t175 = getelementptr %"compiler/source:Span", ptr %l18, i32 0, i32 0
  %t176 = load i32, ptr %t175, !tbaa !23
  %t178 = sext i32 %t176 to i64
  %t179 = getelementptr %"compiler/source:Span", ptr %l18, i32 0, i32 1
  %t180 = load i32, ptr %t179, !tbaa !23
  %t182 = sext i32 %t180 to i64
  %t183 = load ptr, ptr %l98, !tbaa !29
  %t184 = load ptr, ptr %l99, !tbaa !29
  %t185 = load { i64, ptr }, ptr %l106, !tbaa !27
  call void @compiler_2fsession_2ecompiler_2fsession_3asymWriter_2eleaf(ptr %v0, ptr %v1, ptr %v3, ptr %s7, ptr %t183, ptr %t184, { i64, ptr } %t185, i64 %t164, i64 %t169, i64 %t174, i64 %t178, i64 %t182, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d39, i32 0, i32 1) })
  br label %bb29
bb29:
  call void @__olang_scope_close(ptr %s7)
  br label %bb30
bb30:
  %t191 = load i64, ptr %l16, !tbaa !24
  %t193 = add i64 %t191, 1
  store i64 %t193, ptr %l16, !tbaa !24
  br label %bb24
bb31:
  br label %bb32
bb32:
  %t195 = load i64, ptr %l7, !tbaa !24
  %t197 = add i64 %t195, 1
  store i64 %t197, ptr %l7, !tbaa !24
  br label %bb9
bb33:
  br label %bb68
bb34:
  %t199 = load ptr, ptr %l2, !tbaa !29
  store ptr %t199, ptr %l122, !tbaa !29
  store i1 false, ptr %l123, !tbaa !21
  %t200 = load ptr, ptr %l122, !tbaa !29
  %t201 = icmp ne ptr %t200, null
  br i1 %t201, label %bb35, label %bb36
bb35:
  %t203 = load ptr, ptr %l122, !tbaa !29
  %t204 = load i64, ptr %t203, !range !{i64 0, i64 5}
  %t206 = icmp eq i64 %t204, 1
  store i1 %t206, ptr %l123, !tbaa !21
  br label %bb36
bb36:
  %t207 = load i1, ptr %l123, !tbaa !21
  br i1 %t207, label %bb37, label %bb38
bb37:
  %t208 = load ptr, ptr %l2, !tbaa !29
  %t210 = getelementptr { i64, [6 x i64] }, ptr %t208, i32 0, i32 1
  %t211 = getelementptr { { i64, ptr }, ptr }, ptr %t210, i32 0, i32 0
  %t212 = load { i64, ptr }, ptr %t211
  store { i64, ptr } %t212, ptr %l19, !tbaa !27
  br label %bb39
bb38:
  br label %bb48
bb39:
  %t214 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t214, ptr %l20, !tbaa !27
  store i64 0, ptr %l21, !tbaa !24
  %t216 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t218 = extractvalue { i64, ptr } %t216, 0
  store i64 %t218, ptr %l22, !tbaa !24
  br label %bb40
bb40:
  store %olang.scope zeroinitializer, ptr %s12
  %t220 = load i64, ptr %l21, !tbaa !24
  %t221 = load i64, ptr %l22, !tbaa !24
  %t224 = icmp slt i64 %t220, %t221
  %t226 = xor i1 %t224, true
  br i1 %t226, label %bb41, label %bb42
bb41:
  call void @__olang_scope_close(ptr %s12)
  br label %bb47
bb42:
  br label %bb43
bb43:
  %t228 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t228, ptr %l135, !tbaa !27
  %t229 = load i64, ptr %l21, !tbaa !24
  %t231 = getelementptr { i64, ptr }, ptr %l135, i32 0, i32 1
  %t232 = load ptr, ptr %t231, !tbaa !27
  %t233 = getelementptr ptr, ptr %t232, i64 %t229
  %t234 = load ptr, ptr %t233, !tbaa !39
  store ptr %t234, ptr %l23, !tbaa !29
  %t236 = load ptr, ptr %l3, !tbaa !29
  %t237 = load ptr, ptr %l23, !tbaa !29
  %t239 = getelementptr %"compiler/ast:CaseDecl", ptr %t237, i32 0, i32 1
  %t240 = load i32, ptr %t239, !tbaa !23
  %t243 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v3, ptr %v3, ptr %t236, i32 %t240)
  store { i64, ptr } %t243, ptr %l141
  br label %bb44
bb44:
  %t244 = load { i64, ptr }, ptr %l141, !tbaa !27
  store { i64, ptr } %t244, ptr %l24, !tbaa !27
  %t245 = load ptr, ptr %l0, !tbaa !29
  %t246 = load ptr, ptr %l1, !tbaa !29
  %t247 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t248 = load i64, ptr @G_2ecompiler_2fsession_2eKindEnumMember, !tbaa !24
  %t249 = load ptr, ptr %l23, !tbaa !29
  %t251 = getelementptr %"compiler/ast:CaseDecl", ptr %t249, i32 0, i32 0
  %t252 = getelementptr %"compiler/source:Span", ptr %t251, i32 0, i32 0
  %t253 = load i32, ptr %t252, !tbaa !23
  %t255 = sext i32 %t253 to i64
  %t256 = load ptr, ptr %l23, !tbaa !29
  %t258 = getelementptr %"compiler/ast:CaseDecl", ptr %t256, i32 0, i32 0
  %t259 = getelementptr %"compiler/source:Span", ptr %t258, i32 0, i32 1
  %t260 = load i32, ptr %t259, !tbaa !23
  %t262 = sext i32 %t260 to i64
  %t263 = load ptr, ptr %l23, !tbaa !29
  %t265 = getelementptr %"compiler/ast:CaseDecl", ptr %t263, i32 0, i32 0
  %t266 = getelementptr %"compiler/source:Span", ptr %t265, i32 0, i32 0
  %t267 = load i32, ptr %t266, !tbaa !23
  %t269 = sext i32 %t267 to i64
  %t270 = load ptr, ptr %l23, !tbaa !29
  %t272 = getelementptr %"compiler/ast:CaseDecl", ptr %t270, i32 0, i32 0
  %t273 = getelementptr %"compiler/source:Span", ptr %t272, i32 0, i32 0
  %t274 = load i32, ptr %t273, !tbaa !23
  %t276 = sext i32 %t274 to i64
  %t277 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t279 = extractvalue { i64, ptr } %t277, 0
  %t282 = add i64 %t276, %t279
  call void @compiler_2fsession_2ecompiler_2fsession_3asymWriter_2eleaf(ptr %v0, ptr %v1, ptr %v3, ptr %s12, ptr %t245, ptr %t246, { i64, ptr } %t247, i64 %t248, i64 %t255, i64 %t262, i64 %t269, i64 %t282, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d40, i32 0, i32 1) })
  br label %bb45
bb45:
  call void @__olang_scope_close(ptr %s12)
  br label %bb46
bb46:
  %t291 = load i64, ptr %l21, !tbaa !24
  %t293 = add i64 %t291, 1
  store i64 %t293, ptr %l21, !tbaa !24
  br label %bb40
bb47:
  br label %bb68
bb48:
  %t295 = load ptr, ptr %l2, !tbaa !29
  store ptr %t295, ptr %l163, !tbaa !29
  store i1 false, ptr %l164, !tbaa !21
  %t296 = load ptr, ptr %l163, !tbaa !29
  %t297 = icmp ne ptr %t296, null
  br i1 %t297, label %bb49, label %bb50
bb49:
  %t299 = load ptr, ptr %l163, !tbaa !29
  %t300 = load i64, ptr %t299, !range !{i64 0, i64 5}
  %t302 = icmp eq i64 %t300, 2
  store i1 %t302, ptr %l164, !tbaa !21
  br label %bb50
bb50:
  %t303 = load i1, ptr %l164, !tbaa !21
  br i1 %t303, label %bb51, label %bb52
bb51:
  %t304 = load ptr, ptr %l2, !tbaa !29
  %t306 = getelementptr { i64, [6 x i64] }, ptr %t304, i32 0, i32 1
  %t307 = getelementptr { { i64, ptr }, { i64, ptr }, { i64, ptr } }, ptr %t306, i32 0, i32 0
  %t308 = load { i64, ptr }, ptr %t307
  store { i64, ptr } %t308, ptr %l25, !tbaa !27
  br label %bb53
bb52:
  br label %bb63
bb53:
  %t310 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t310, ptr %l26, !tbaa !27
  store i64 0, ptr %l27, !tbaa !24
  %t312 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t314 = extractvalue { i64, ptr } %t312, 0
  store i64 %t314, ptr %l28, !tbaa !24
  br label %bb54
bb54:
  store %olang.scope zeroinitializer, ptr %s16
  %t316 = load i64, ptr %l27, !tbaa !24
  %t317 = load i64, ptr %l28, !tbaa !24
  %t320 = icmp slt i64 %t316, %t317
  %t322 = xor i1 %t320, true
  br i1 %t322, label %bb55, label %bb56
bb55:
  call void @__olang_scope_close(ptr %s16)
  br label %bb62
bb56:
  br label %bb57
bb57:
  %t324 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t324, ptr %l176, !tbaa !27
  %t325 = load i64, ptr %l27, !tbaa !24
  %t327 = getelementptr { i64, ptr }, ptr %l176, i32 0, i32 1
  %t328 = load ptr, ptr %t327, !tbaa !27
  %t329 = getelementptr ptr, ptr %t328, i64 %t325
  %t330 = load ptr, ptr %t329, !tbaa !39
  store ptr %t330, ptr %l29, !tbaa !29
  %t332 = load ptr, ptr %l3, !tbaa !29
  %t333 = load ptr, ptr %l29, !tbaa !29
  %t335 = getelementptr %"compiler/ast:Func", ptr %t333, i32 0, i32 2
  %t336 = load i32, ptr %t335, !tbaa !23
  %t339 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v3, ptr %v3, ptr %t332, i32 %t336)
  store { i64, ptr } %t339, ptr %l182
  br label %bb58
bb58:
  %t340 = load { i64, ptr }, ptr %l182, !tbaa !27
  store { i64, ptr } %t340, ptr %l30, !tbaa !27
  %t341 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t342 = load ptr, ptr %l29, !tbaa !29
  %t344 = getelementptr %"compiler/ast:Func", ptr %t342, i32 0, i32 0
  %t345 = getelementptr %"compiler/source:Span", ptr %t344, i32 0, i32 0
  %t346 = load i32, ptr %t345, !tbaa !23
  %t348 = sext i32 %t346 to i64
  %t349 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t353 = call i64 @compiler_2fsession_2enameIn(ptr %v0, ptr %v3, { i64, ptr } %t341, i64 %t348, { i64, ptr } %t349)
  store i64 %t353, ptr %l188
  br label %bb59
bb59:
  %t354 = load i64, ptr %l188, !tbaa !24
  store i64 %t354, ptr %l31, !tbaa !24
  %t355 = load ptr, ptr %l0, !tbaa !29
  %t356 = load ptr, ptr %l1, !tbaa !29
  %t357 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t358 = load i64, ptr @G_2ecompiler_2fsession_2eKindMethod, !tbaa !24
  %t359 = load ptr, ptr %l29, !tbaa !29
  %t361 = getelementptr %"compiler/ast:Func", ptr %t359, i32 0, i32 0
  %t362 = getelementptr %"compiler/source:Span", ptr %t361, i32 0, i32 0
  %t363 = load i32, ptr %t362, !tbaa !23
  %t365 = sext i32 %t363 to i64
  %t366 = load ptr, ptr %l29, !tbaa !29
  %t368 = getelementptr %"compiler/ast:Func", ptr %t366, i32 0, i32 0
  %t369 = getelementptr %"compiler/source:Span", ptr %t368, i32 0, i32 1
  %t370 = load i32, ptr %t369, !tbaa !23
  %t372 = sext i32 %t370 to i64
  %t373 = load i64, ptr %l31, !tbaa !24
  %t374 = load i64, ptr %l31, !tbaa !24
  %t375 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t377 = extractvalue { i64, ptr } %t375, 0
  %t380 = add i64 %t374, %t377
  call void @compiler_2fsession_2ecompiler_2fsession_3asymWriter_2eleaf(ptr %v0, ptr %v1, ptr %v3, ptr %s16, ptr %t355, ptr %t356, { i64, ptr } %t357, i64 %t358, i64 %t365, i64 %t372, i64 %t373, i64 %t380, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d41, i32 0, i32 1) })
  br label %bb60
bb60:
  call void @__olang_scope_close(ptr %s16)
  br label %bb61
bb61:
  %t389 = load i64, ptr %l27, !tbaa !24
  %t391 = add i64 %t389, 1
  store i64 %t391, ptr %l27, !tbaa !24
  br label %bb54
bb62:
  br label %bb68
bb63:
  br i1 true, label %bb64, label %bb65
bb64:
  br label %bb66
bb65:
  br label %bb67
bb66:
  br label %bb68
bb67:
  call void @__olang_check_failed(ptr @olang_loc_59453385dbeab0f1_a10e94e6ba58edc5)
  unreachable
bb68:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fsession_2ecompiler_2fsession_3atypeFinder_2eblock(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l16 = alloca { i64, ptr }
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
  %t7 = getelementptr %"compiler/typed:Block", ptr %t5, i32 0, i32 1
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
  br label %bb10
bb6:
  br label %bb7
bb7:
  %t22 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t22, ptr %l16, !tbaa !27
  %t23 = load i64, ptr %l3, !tbaa !24
  %t25 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !27
  %t27 = getelementptr ptr, ptr %t26, i64 %t23
  %t28 = load ptr, ptr %t27, !tbaa !39
  call void @compiler_2fsession_2ecompiler_2fsession_3atypeFinder_2estmt(ptr %v0, ptr %v1, ptr %a0, ptr %t28)
  br label %bb8
bb8:
  br label %bb9
bb9:
  %t35 = load i64, ptr %l3, !tbaa !24
  %t37 = add i64 %t35, 1
  store i64 %t37, ptr %l3, !tbaa !24
  br label %bb4
bb10:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fsession_2ecompiler_2fsession_3atypeFinder_2eexpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca i64
  %l14 = alloca { i64, ptr }
  %l15 = alloca { i64, ptr }
  %l16 = alloca i64
  %l17 = alloca i64
  %l19 = alloca ptr
  %l20 = alloca ptr
  %l21 = alloca ptr
  %l22 = alloca { i64, ptr }
  %l23 = alloca i64
  %l24 = alloca i64
  %l26 = alloca ptr
  %l27 = alloca ptr
  %l28 = alloca { i64, ptr }
  %l29 = alloca i64
  %l30 = alloca i64
  %l31 = alloca ptr
  %l32 = alloca ptr
  %l35 = alloca ptr
  %l37 = alloca %"compiler/source:Span"
  %l39 = alloca i32
  %l40 = alloca ptr
  %l41 = alloca i1
  %l46 = alloca ptr
  %l47 = alloca i1
  %l52 = alloca ptr
  %l53 = alloca i1
  %l61 = alloca ptr
  %l62 = alloca i1
  %l71 = alloca ptr
  %l72 = alloca i1
  %l85 = alloca { i64, ptr }
  %l93 = alloca ptr
  %l94 = alloca i1
  %l107 = alloca { i64, ptr }
  %l115 = alloca ptr
  %l116 = alloca i1
  %l128 = alloca { i64, ptr }
  %l136 = alloca ptr
  %l137 = alloca i1
  %l146 = alloca ptr
  %l147 = alloca i1
  %l163 = alloca ptr
  %l164 = alloca i1
  %l177 = alloca { i64, ptr }
  %l188 = alloca ptr
  %l189 = alloca i1
  %l197 = alloca ptr
  %l198 = alloca i1
  %l211 = alloca { i64, ptr }
  %l214 = alloca ptr
  %l215 = alloca i1
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
  %t5 = load ptr, ptr %l0, !tbaa !29
  store ptr %t5, ptr %l35, !tbaa !29
  %t6 = load ptr, ptr %l1, !tbaa !29
  %t8 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t6)
  store %"compiler/source:Span" %t8, ptr %l37
  br label %bb4
bb4:
  %t9 = load ptr, ptr %l1, !tbaa !29
  %t11 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t9)
  store i32 %t11, ptr %l39
  br label %bb5
bb5:
  %t12 = load ptr, ptr %l35, !tbaa !29
  %t13 = load %"compiler/source:Span", ptr %l37
  %t14 = load i32, ptr %l39, !tbaa !23
  call void @compiler_2fsession_2ecompiler_2fsession_3atypeFinder_2etake(ptr %v0, ptr %t12, %"compiler/source:Span" %t13, i32 %t14)
  br label %bb6
bb6:
  %t15 = load ptr, ptr %l1, !tbaa !29
  store ptr %t15, ptr %l40, !tbaa !29
  store i1 false, ptr %l41, !tbaa !21
  %t16 = load ptr, ptr %l40, !tbaa !29
  %t17 = icmp ne ptr %t16, null
  br i1 %t17, label %bb7, label %bb8
bb7:
  %t19 = load ptr, ptr %l40, !tbaa !29
  %t20 = load i64, ptr %t19, !range !{i64 0, i64 18}
  %t22 = icmp eq i64 %t20, 2
  store i1 %t22, ptr %l41, !tbaa !21
  br label %bb8
bb8:
  %t23 = load i1, ptr %l41, !tbaa !21
  br i1 %t23, label %bb9, label %bb10
bb9:
  %t24 = load ptr, ptr %l1, !tbaa !29
  %t26 = getelementptr { i64, [5 x i64] }, ptr %t24, i32 0, i32 1
  %t27 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t26, i32 0, i32 2
  %t28 = load ptr, ptr %t27
  store ptr %t28, ptr %l2, !tbaa !29
  br label %bb19
bb10:
  %t30 = load ptr, ptr %l1, !tbaa !29
  store ptr %t30, ptr %l46, !tbaa !29
  store i1 false, ptr %l47, !tbaa !21
  %t31 = load ptr, ptr %l46, !tbaa !29
  %t32 = icmp ne ptr %t31, null
  br i1 %t32, label %bb11, label %bb12
bb11:
  %t34 = load ptr, ptr %l46, !tbaa !29
  %t35 = load i64, ptr %t34, !range !{i64 0, i64 18}
  %t37 = icmp eq i64 %t35, 3
  store i1 %t37, ptr %l47, !tbaa !21
  br label %bb12
bb12:
  %t38 = load i1, ptr %l47, !tbaa !21
  br i1 %t38, label %bb13, label %bb14
bb13:
  %t39 = load ptr, ptr %l1, !tbaa !29
  %t41 = getelementptr { i64, [5 x i64] }, ptr %t39, i32 0, i32 1
  %t42 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t41, i32 0, i32 2
  %t43 = load ptr, ptr %t42
  store ptr %t43, ptr %l2, !tbaa !29
  br label %bb19
bb14:
  %t45 = load ptr, ptr %l1, !tbaa !29
  store ptr %t45, ptr %l52, !tbaa !29
  store i1 false, ptr %l53, !tbaa !21
  %t46 = load ptr, ptr %l52, !tbaa !29
  %t47 = icmp ne ptr %t46, null
  br i1 %t47, label %bb15, label %bb16
bb15:
  %t49 = load ptr, ptr %l52, !tbaa !29
  %t50 = load i64, ptr %t49, !range !{i64 0, i64 18}
  %t52 = icmp eq i64 %t50, 4
  store i1 %t52, ptr %l53, !tbaa !21
  br label %bb16
bb16:
  %t53 = load i1, ptr %l53, !tbaa !21
  br i1 %t53, label %bb17, label %bb18
bb17:
  %t54 = load ptr, ptr %l1, !tbaa !29
  %t56 = getelementptr { i64, [5 x i64] }, ptr %t54, i32 0, i32 1
  %t57 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t56, i32 0, i32 2
  %t58 = load ptr, ptr %t57
  store ptr %t58, ptr %l2, !tbaa !29
  br label %bb19
bb18:
  br label %bb21
bb19:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t61 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3atypeFinder_2eplace(ptr %v0, ptr %v1, ptr %t60, ptr %t61)
  br label %bb20
bb20:
  br label %bb133
bb21:
  %t65 = load ptr, ptr %l1, !tbaa !29
  store ptr %t65, ptr %l61, !tbaa !29
  store i1 false, ptr %l62, !tbaa !21
  %t66 = load ptr, ptr %l61, !tbaa !29
  %t67 = icmp ne ptr %t66, null
  br i1 %t67, label %bb22, label %bb23
bb22:
  %t69 = load ptr, ptr %l61, !tbaa !29
  %t70 = load i64, ptr %t69, !range !{i64 0, i64 18}
  %t72 = icmp eq i64 %t70, 5
  store i1 %t72, ptr %l62, !tbaa !21
  br label %bb23
bb23:
  %t73 = load i1, ptr %l62, !tbaa !21
  br i1 %t73, label %bb24, label %bb25
bb24:
  %t74 = load ptr, ptr %l1, !tbaa !29
  %t76 = getelementptr { i64, [5 x i64] }, ptr %t74, i32 0, i32 1
  %t77 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t76, i32 0, i32 2
  %t78 = load ptr, ptr %t77
  store ptr %t78, ptr %l3, !tbaa !29
  br label %bb26
bb25:
  br label %bb28
bb26:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t81 = load ptr, ptr %l3, !tbaa !29
  %t83 = getelementptr %"compiler/typed:Promote", ptr %t81, i32 0, i32 0
  %t84 = load ptr, ptr %t83, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3atypeFinder_2eexpr(ptr %v0, ptr %v1, ptr %t80, ptr %t84)
  br label %bb27
bb27:
  br label %bb133
bb28:
  %t88 = load ptr, ptr %l1, !tbaa !29
  store ptr %t88, ptr %l71, !tbaa !29
  store i1 false, ptr %l72, !tbaa !21
  %t89 = load ptr, ptr %l71, !tbaa !29
  %t90 = icmp ne ptr %t89, null
  br i1 %t90, label %bb29, label %bb30
bb29:
  %t92 = load ptr, ptr %l71, !tbaa !29
  %t93 = load i64, ptr %t92, !range !{i64 0, i64 18}
  %t95 = icmp eq i64 %t93, 6
  store i1 %t95, ptr %l72, !tbaa !21
  br label %bb30
bb30:
  %t96 = load i1, ptr %l72, !tbaa !21
  br i1 %t96, label %bb31, label %bb32
bb31:
  %t97 = load ptr, ptr %l1, !tbaa !29
  %t99 = getelementptr { i64, [5 x i64] }, ptr %t97, i32 0, i32 1
  %t100 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t99, i32 0, i32 2
  %t101 = load ptr, ptr %t100
  store ptr %t101, ptr %l4, !tbaa !29
  br label %bb33
bb32:
  br label %bb41
bb33:
  %t103 = load ptr, ptr %l4, !tbaa !29
  %t105 = getelementptr %"compiler/typed:Call", ptr %t103, i32 0, i32 1
  %t106 = load { i64, ptr }, ptr %t105, !tbaa !27
  store { i64, ptr } %t106, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t108 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t110 = extractvalue { i64, ptr } %t108, 0
  store i64 %t110, ptr %l7, !tbaa !24
  br label %bb34
bb34:
  %t112 = load i64, ptr %l6, !tbaa !24
  %t113 = load i64, ptr %l7, !tbaa !24
  %t116 = icmp slt i64 %t112, %t113
  %t118 = xor i1 %t116, true
  br i1 %t118, label %bb35, label %bb36
bb35:
  br label %bb40
bb36:
  br label %bb37
bb37:
  %t120 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t120, ptr %l85, !tbaa !27
  %t121 = load i64, ptr %l6, !tbaa !24
  %t123 = getelementptr { i64, ptr }, ptr %l85, i32 0, i32 1
  %t124 = load ptr, ptr %t123, !tbaa !27
  %t125 = getelementptr ptr, ptr %t124, i64 %t121
  %t126 = load ptr, ptr %t125, !tbaa !39
  %t128 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3atypeFinder_2eexpr(ptr %v0, ptr %v1, ptr %t128, ptr %t126)
  br label %bb38
bb38:
  br label %bb39
bb39:
  %t133 = load i64, ptr %l6, !tbaa !24
  %t135 = add i64 %t133, 1
  store i64 %t135, ptr %l6, !tbaa !24
  br label %bb34
bb40:
  br label %bb133
bb41:
  %t137 = load ptr, ptr %l1, !tbaa !29
  store ptr %t137, ptr %l93, !tbaa !29
  store i1 false, ptr %l94, !tbaa !21
  %t138 = load ptr, ptr %l93, !tbaa !29
  %t139 = icmp ne ptr %t138, null
  br i1 %t139, label %bb42, label %bb43
bb42:
  %t141 = load ptr, ptr %l93, !tbaa !29
  %t142 = load i64, ptr %t141, !range !{i64 0, i64 18}
  %t144 = icmp eq i64 %t142, 7
  store i1 %t144, ptr %l94, !tbaa !21
  br label %bb43
bb43:
  %t145 = load i1, ptr %l94, !tbaa !21
  br i1 %t145, label %bb44, label %bb45
bb44:
  %t146 = load ptr, ptr %l1, !tbaa !29
  %t148 = getelementptr { i64, [5 x i64] }, ptr %t146, i32 0, i32 1
  %t149 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t148, i32 0, i32 2
  %t150 = load ptr, ptr %t149
  store ptr %t150, ptr %l9, !tbaa !29
  br label %bb46
bb45:
  br label %bb54
bb46:
  %t152 = load ptr, ptr %l9, !tbaa !29
  %t154 = getelementptr %"compiler/typed:Make", ptr %t152, i32 0, i32 2
  %t155 = load { i64, ptr }, ptr %t154, !tbaa !27
  store { i64, ptr } %t155, ptr %l10, !tbaa !27
  store i64 0, ptr %l11, !tbaa !24
  %t157 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t159 = extractvalue { i64, ptr } %t157, 0
  store i64 %t159, ptr %l12, !tbaa !24
  br label %bb47
bb47:
  %t161 = load i64, ptr %l11, !tbaa !24
  %t162 = load i64, ptr %l12, !tbaa !24
  %t165 = icmp slt i64 %t161, %t162
  %t167 = xor i1 %t165, true
  br i1 %t167, label %bb48, label %bb49
bb48:
  br label %bb53
bb49:
  br label %bb50
bb50:
  %t169 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t169, ptr %l107, !tbaa !27
  %t170 = load i64, ptr %l11, !tbaa !24
  %t172 = getelementptr { i64, ptr }, ptr %l107, i32 0, i32 1
  %t173 = load ptr, ptr %t172, !tbaa !27
  %t174 = getelementptr ptr, ptr %t173, i64 %t170
  %t175 = load ptr, ptr %t174, !tbaa !39
  %t177 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3atypeFinder_2eexpr(ptr %v0, ptr %v1, ptr %t177, ptr %t175)
  br label %bb51
bb51:
  br label %bb52
bb52:
  %t182 = load i64, ptr %l11, !tbaa !24
  %t184 = add i64 %t182, 1
  store i64 %t184, ptr %l11, !tbaa !24
  br label %bb47
bb53:
  br label %bb133
bb54:
  %t186 = load ptr, ptr %l1, !tbaa !29
  store ptr %t186, ptr %l115, !tbaa !29
  store i1 false, ptr %l116, !tbaa !21
  %t187 = load ptr, ptr %l115, !tbaa !29
  %t188 = icmp ne ptr %t187, null
  br i1 %t188, label %bb55, label %bb56
bb55:
  %t190 = load ptr, ptr %l115, !tbaa !29
  %t191 = load i64, ptr %t190, !range !{i64 0, i64 18}
  %t193 = icmp eq i64 %t191, 9
  store i1 %t193, ptr %l116, !tbaa !21
  br label %bb56
bb56:
  %t194 = load i1, ptr %l116, !tbaa !21
  br i1 %t194, label %bb57, label %bb58
bb57:
  %t195 = load ptr, ptr %l1, !tbaa !29
  %t197 = getelementptr { i64, [5 x i64] }, ptr %t195, i32 0, i32 1
  %t198 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t197, i32 0, i32 4
  %t199 = load { i64, ptr }, ptr %t198
  store { i64, ptr } %t199, ptr %l14, !tbaa !27
  br label %bb59
bb58:
  br label %bb67
bb59:
  %t201 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t201, ptr %l15, !tbaa !27
  store i64 0, ptr %l16, !tbaa !24
  %t203 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t205 = extractvalue { i64, ptr } %t203, 0
  store i64 %t205, ptr %l17, !tbaa !24
  br label %bb60
bb60:
  %t207 = load i64, ptr %l16, !tbaa !24
  %t208 = load i64, ptr %l17, !tbaa !24
  %t211 = icmp slt i64 %t207, %t208
  %t213 = xor i1 %t211, true
  br i1 %t213, label %bb61, label %bb62
bb61:
  br label %bb66
bb62:
  br label %bb63
bb63:
  %t215 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t215, ptr %l128, !tbaa !27
  %t216 = load i64, ptr %l16, !tbaa !24
  %t218 = getelementptr { i64, ptr }, ptr %l128, i32 0, i32 1
  %t219 = load ptr, ptr %t218, !tbaa !27
  %t220 = getelementptr ptr, ptr %t219, i64 %t216
  %t221 = load ptr, ptr %t220, !tbaa !39
  %t223 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3atypeFinder_2eexpr(ptr %v0, ptr %v1, ptr %t223, ptr %t221)
  br label %bb64
bb64:
  br label %bb65
bb65:
  %t228 = load i64, ptr %l16, !tbaa !24
  %t230 = add i64 %t228, 1
  store i64 %t230, ptr %l16, !tbaa !24
  br label %bb60
bb66:
  br label %bb133
bb67:
  %t232 = load ptr, ptr %l1, !tbaa !29
  store ptr %t232, ptr %l136, !tbaa !29
  store i1 false, ptr %l137, !tbaa !21
  %t233 = load ptr, ptr %l136, !tbaa !29
  %t234 = icmp ne ptr %t233, null
  br i1 %t234, label %bb68, label %bb69
bb68:
  %t236 = load ptr, ptr %l136, !tbaa !29
  %t237 = load i64, ptr %t236, !range !{i64 0, i64 18}
  %t239 = icmp eq i64 %t237, 10
  store i1 %t239, ptr %l137, !tbaa !21
  br label %bb69
bb69:
  %t240 = load i1, ptr %l137, !tbaa !21
  br i1 %t240, label %bb70, label %bb71
bb70:
  %t241 = load ptr, ptr %l1, !tbaa !29
  %t243 = getelementptr { i64, [5 x i64] }, ptr %t241, i32 0, i32 1
  %t244 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t243, i32 0, i32 2
  %t245 = load ptr, ptr %t244
  store ptr %t245, ptr %l19, !tbaa !29
  br label %bb72
bb71:
  br label %bb74
bb72:
  %t247 = load ptr, ptr %l0, !tbaa !29
  %t248 = load ptr, ptr %l19, !tbaa !29
  %t250 = getelementptr %"compiler/typed:Slice", ptr %t248, i32 0, i32 0
  %t251 = load ptr, ptr %t250, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3atypeFinder_2eplace(ptr %v0, ptr %v1, ptr %t247, ptr %t251)
  br label %bb73
bb73:
  br label %bb133
bb74:
  %t255 = load ptr, ptr %l1, !tbaa !29
  store ptr %t255, ptr %l146, !tbaa !29
  store i1 false, ptr %l147, !tbaa !21
  %t256 = load ptr, ptr %l146, !tbaa !29
  %t257 = icmp ne ptr %t256, null
  br i1 %t257, label %bb75, label %bb76
bb75:
  %t259 = load ptr, ptr %l146, !tbaa !29
  %t260 = load i64, ptr %t259, !range !{i64 0, i64 18}
  %t262 = icmp eq i64 %t260, 11
  store i1 %t262, ptr %l147, !tbaa !21
  br label %bb76
bb76:
  %t263 = load i1, ptr %l147, !tbaa !21
  br i1 %t263, label %bb77, label %bb78
bb77:
  %t264 = load ptr, ptr %l1, !tbaa !29
  %t266 = getelementptr { i64, [5 x i64] }, ptr %t264, i32 0, i32 1
  %t267 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t266, i32 0, i32 2
  %t268 = load ptr, ptr %t267
  store ptr %t268, ptr %l20, !tbaa !29
  br label %bb79
bb78:
  br label %bb83
bb79:
  %t270 = load ptr, ptr %l0, !tbaa !29
  %t271 = load ptr, ptr %l20, !tbaa !29
  %t273 = getelementptr %"compiler/typed:Cond", ptr %t271, i32 0, i32 0
  %t274 = load ptr, ptr %t273, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3atypeFinder_2eexpr(ptr %v0, ptr %v1, ptr %t270, ptr %t274)
  br label %bb80
bb80:
  %t278 = load ptr, ptr %l0, !tbaa !29
  %t279 = load ptr, ptr %l20, !tbaa !29
  %t281 = getelementptr %"compiler/typed:Cond", ptr %t279, i32 0, i32 1
  %t282 = load ptr, ptr %t281, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3atypeFinder_2eexpr(ptr %v0, ptr %v1, ptr %t278, ptr %t282)
  br label %bb81
bb81:
  %t285 = load ptr, ptr %l0, !tbaa !29
  %t286 = load ptr, ptr %l20, !tbaa !29
  %t288 = getelementptr %"compiler/typed:Cond", ptr %t286, i32 0, i32 2
  %t289 = load ptr, ptr %t288, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3atypeFinder_2eexpr(ptr %v0, ptr %v1, ptr %t285, ptr %t289)
  br label %bb82
bb82:
  br label %bb133
bb83:
  %t293 = load ptr, ptr %l1, !tbaa !29
  store ptr %t293, ptr %l163, !tbaa !29
  store i1 false, ptr %l164, !tbaa !21
  %t294 = load ptr, ptr %l163, !tbaa !29
  %t295 = icmp ne ptr %t294, null
  br i1 %t295, label %bb84, label %bb85
bb84:
  %t297 = load ptr, ptr %l163, !tbaa !29
  %t298 = load i64, ptr %t297, !range !{i64 0, i64 18}
  %t300 = icmp eq i64 %t298, 12
  store i1 %t300, ptr %l164, !tbaa !21
  br label %bb85
bb85:
  %t301 = load i1, ptr %l164, !tbaa !21
  br i1 %t301, label %bb86, label %bb87
bb86:
  %t302 = load ptr, ptr %l1, !tbaa !29
  %t304 = getelementptr { i64, [5 x i64] }, ptr %t302, i32 0, i32 1
  %t305 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t304, i32 0, i32 2
  %t306 = load ptr, ptr %t305
  store ptr %t306, ptr %l21, !tbaa !29
  br label %bb88
bb87:
  br label %bb97
bb88:
  %t308 = load ptr, ptr %l21, !tbaa !29
  %t310 = getelementptr %"compiler/typed:Seq", ptr %t308, i32 0, i32 0
  %t311 = load { i64, ptr }, ptr %t310, !tbaa !27
  store { i64, ptr } %t311, ptr %l22, !tbaa !27
  store i64 0, ptr %l23, !tbaa !24
  %t313 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t315 = extractvalue { i64, ptr } %t313, 0
  store i64 %t315, ptr %l24, !tbaa !24
  br label %bb89
bb89:
  %t317 = load i64, ptr %l23, !tbaa !24
  %t318 = load i64, ptr %l24, !tbaa !24
  %t321 = icmp slt i64 %t317, %t318
  %t323 = xor i1 %t321, true
  br i1 %t323, label %bb90, label %bb91
bb90:
  br label %bb95
bb91:
  br label %bb92
bb92:
  %t325 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t325, ptr %l177, !tbaa !27
  %t326 = load i64, ptr %l23, !tbaa !24
  %t328 = getelementptr { i64, ptr }, ptr %l177, i32 0, i32 1
  %t329 = load ptr, ptr %t328, !tbaa !27
  %t330 = getelementptr ptr, ptr %t329, i64 %t326
  %t331 = load ptr, ptr %t330, !tbaa !39
  %t333 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3atypeFinder_2estmt(ptr %v0, ptr %v1, ptr %t333, ptr %t331)
  br label %bb93
bb93:
  br label %bb94
bb94:
  %t338 = load i64, ptr %l23, !tbaa !24
  %t340 = add i64 %t338, 1
  store i64 %t340, ptr %l23, !tbaa !24
  br label %bb89
bb95:
  %t342 = load ptr, ptr %l0, !tbaa !29
  %t343 = load ptr, ptr %l21, !tbaa !29
  %t345 = getelementptr %"compiler/typed:Seq", ptr %t343, i32 0, i32 1
  %t346 = load ptr, ptr %t345, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3atypeFinder_2eexpr(ptr %v0, ptr %v1, ptr %t342, ptr %t346)
  br label %bb96
bb96:
  br label %bb133
bb97:
  %t349 = load ptr, ptr %l1, !tbaa !29
  store ptr %t349, ptr %l188, !tbaa !29
  store i1 false, ptr %l189, !tbaa !21
  %t350 = load ptr, ptr %l188, !tbaa !29
  %t351 = icmp ne ptr %t350, null
  br i1 %t351, label %bb98, label %bb99
bb98:
  %t353 = load ptr, ptr %l188, !tbaa !29
  %t354 = load i64, ptr %t353, !range !{i64 0, i64 18}
  %t356 = icmp eq i64 %t354, 14
  store i1 %t356, ptr %l189, !tbaa !21
  br label %bb99
bb99:
  %t357 = load i1, ptr %l189, !tbaa !21
  br i1 %t357, label %bb100, label %bb101
bb100:
  %t358 = load ptr, ptr %l1, !tbaa !29
  %t360 = getelementptr { i64, [5 x i64] }, ptr %t358, i32 0, i32 1
  %t361 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t360, i32 0, i32 2
  %t362 = load ptr, ptr %t361
  store ptr %t362, ptr %l26, !tbaa !29
  br label %bb102
bb101:
  br label %bb104
bb102:
  %t364 = load ptr, ptr %l0, !tbaa !29
  %t365 = load ptr, ptr %l26, !tbaa !29
  %t367 = getelementptr %"compiler/typed:Try", ptr %t365, i32 0, i32 0
  %t368 = load ptr, ptr %t367, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3atypeFinder_2eexpr(ptr %v0, ptr %v1, ptr %t364, ptr %t368)
  br label %bb103
bb103:
  br label %bb133
bb104:
  %t371 = load ptr, ptr %l1, !tbaa !29
  store ptr %t371, ptr %l197, !tbaa !29
  store i1 false, ptr %l198, !tbaa !21
  %t372 = load ptr, ptr %l197, !tbaa !29
  %t373 = icmp ne ptr %t372, null
  br i1 %t373, label %bb105, label %bb106
bb105:
  %t375 = load ptr, ptr %l197, !tbaa !29
  %t376 = load i64, ptr %t375, !range !{i64 0, i64 18}
  %t378 = icmp eq i64 %t376, 16
  store i1 %t378, ptr %l198, !tbaa !21
  br label %bb106
bb106:
  %t379 = load i1, ptr %l198, !tbaa !21
  br i1 %t379, label %bb107, label %bb108
bb107:
  %t380 = load ptr, ptr %l1, !tbaa !29
  %t382 = getelementptr { i64, [5 x i64] }, ptr %t380, i32 0, i32 1
  %t383 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t382, i32 0, i32 2
  %t384 = load ptr, ptr %t383
  store ptr %t384, ptr %l27, !tbaa !29
  br label %bb109
bb108:
  br label %bb128
bb109:
  %t386 = load ptr, ptr %l27, !tbaa !29
  %t388 = getelementptr %"compiler/typed:Text", ptr %t386, i32 0, i32 0
  %t389 = load { i64, ptr }, ptr %t388, !tbaa !27
  store { i64, ptr } %t389, ptr %l28, !tbaa !27
  store i64 0, ptr %l29, !tbaa !24
  %t391 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t393 = extractvalue { i64, ptr } %t391, 0
  store i64 %t393, ptr %l30, !tbaa !24
  br label %bb110
bb110:
  %t395 = load i64, ptr %l29, !tbaa !24
  %t396 = load i64, ptr %l30, !tbaa !24
  %t399 = icmp slt i64 %t395, %t396
  %t401 = xor i1 %t399, true
  br i1 %t401, label %bb111, label %bb112
bb111:
  br label %bb127
bb112:
  br label %bb113
bb113:
  %t403 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t403, ptr %l211, !tbaa !27
  %t404 = load i64, ptr %l29, !tbaa !24
  %t406 = getelementptr { i64, ptr }, ptr %l211, i32 0, i32 1
  %t407 = load ptr, ptr %t406, !tbaa !27
  %t408 = getelementptr ptr, ptr %t407, i64 %t404
  %t409 = load ptr, ptr %t408, !tbaa !39
  store ptr %t409, ptr %l31, !tbaa !29
  %t411 = load ptr, ptr %l31, !tbaa !29
  store ptr %t411, ptr %l214, !tbaa !29
  store i1 false, ptr %l215, !tbaa !21
  %t412 = load ptr, ptr %l214, !tbaa !29
  %t413 = icmp ne ptr %t412, null
  br i1 %t413, label %bb114, label %bb115
bb114:
  %t415 = load ptr, ptr %l214, !tbaa !29
  %t416 = load i64, ptr %t415, !range !{i64 0, i64 2}
  %t418 = icmp eq i64 %t416, 1
  store i1 %t418, ptr %l215, !tbaa !21
  br label %bb115
bb115:
  %t419 = load i1, ptr %l215, !tbaa !21
  br i1 %t419, label %bb116, label %bb117
bb116:
  %t420 = load ptr, ptr %l31, !tbaa !29
  %t422 = getelementptr { i64, [2 x i64] }, ptr %t420, i32 0, i32 1
  %t423 = getelementptr { ptr }, ptr %t422, i32 0, i32 0
  %t424 = load ptr, ptr %t423
  store ptr %t424, ptr %l32, !tbaa !29
  br label %bb118
bb117:
  br label %bb120
bb118:
  %t426 = load ptr, ptr %l0, !tbaa !29
  %t427 = load ptr, ptr %l32, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3atypeFinder_2eexpr(ptr %v0, ptr %v1, ptr %t426, ptr %t427)
  br label %bb119
bb119:
  br label %bb125
bb120:
  br i1 true, label %bb121, label %bb122
bb121:
  br label %bb123
bb122:
  br label %bb124
bb123:
  br label %bb125
bb124:
  call void @__olang_check_failed(ptr @olang_loc_df797fad9b49105d_2a8f7c5ad36c2889)
  unreachable
bb125:
  br label %bb126
bb126:
  %t431 = load i64, ptr %l29, !tbaa !24
  %t433 = add i64 %t431, 1
  store i64 %t433, ptr %l29, !tbaa !24
  br label %bb110
bb127:
  br label %bb133
bb128:
  br i1 true, label %bb129, label %bb130
bb129:
  br label %bb131
bb130:
  br label %bb132
bb131:
  br label %bb133
bb132:
  call void @__olang_check_failed(ptr @olang_loc_d2b15075f36d8dac_250aaa3debc302b8)
  unreachable
bb133:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fsession_2ecompiler_2fsession_3atypeFinder_2eplace(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l9 = alloca ptr
  %l11 = alloca %"compiler/source:Span"
  %l13 = alloca i32
  %l14 = alloca ptr
  %l15 = alloca i1
  %l23 = alloca ptr
  %l24 = alloca i1
  %l32 = alloca ptr
  %l33 = alloca i1
  %l46 = alloca ptr
  %l47 = alloca i1
  %l56 = alloca ptr
  %l57 = alloca i1
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
  %t5 = load ptr, ptr %l0, !tbaa !29
  store ptr %t5, ptr %l9, !tbaa !29
  %t6 = load ptr, ptr %l1, !tbaa !29
  %t8 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eSpan(ptr %v1, ptr %t6)
  store %"compiler/source:Span" %t8, ptr %l11
  br label %bb4
bb4:
  %t9 = load ptr, ptr %l1, !tbaa !29
  %t11 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t9)
  store i32 %t11, ptr %l13
  br label %bb5
bb5:
  %t12 = load ptr, ptr %l9, !tbaa !29
  %t13 = load %"compiler/source:Span", ptr %l11
  %t14 = load i32, ptr %l13, !tbaa !23
  call void @compiler_2fsession_2ecompiler_2fsession_3atypeFinder_2etake(ptr %v0, ptr %t12, %"compiler/source:Span" %t13, i32 %t14)
  br label %bb6
bb6:
  %t15 = load ptr, ptr %l1, !tbaa !29
  store ptr %t15, ptr %l14, !tbaa !29
  store i1 false, ptr %l15, !tbaa !21
  %t16 = load ptr, ptr %l14, !tbaa !29
  %t17 = icmp ne ptr %t16, null
  br i1 %t17, label %bb7, label %bb8
bb7:
  %t19 = load ptr, ptr %l14, !tbaa !29
  %t20 = load i64, ptr %t19, !range !{i64 0, i64 8}
  %t22 = icmp eq i64 %t20, 2
  store i1 %t22, ptr %l15, !tbaa !21
  br label %bb8
bb8:
  %t23 = load i1, ptr %l15, !tbaa !21
  br i1 %t23, label %bb9, label %bb10
bb9:
  %t24 = load ptr, ptr %l1, !tbaa !29
  %t26 = getelementptr { i64, [4 x i64] }, ptr %t24, i32 0, i32 1
  %t27 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t26, i32 0, i32 2
  %t28 = load ptr, ptr %t27
  store ptr %t28, ptr %l2, !tbaa !29
  br label %bb11
bb10:
  br label %bb13
bb11:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3atypeFinder_2eexpr(ptr %v0, ptr %v1, ptr %t30, ptr %t31)
  br label %bb12
bb12:
  br label %bb47
bb13:
  %t35 = load ptr, ptr %l1, !tbaa !29
  store ptr %t35, ptr %l23, !tbaa !29
  store i1 false, ptr %l24, !tbaa !21
  %t36 = load ptr, ptr %l23, !tbaa !29
  %t37 = icmp ne ptr %t36, null
  br i1 %t37, label %bb14, label %bb15
bb14:
  %t39 = load ptr, ptr %l23, !tbaa !29
  %t40 = load i64, ptr %t39, !range !{i64 0, i64 8}
  %t42 = icmp eq i64 %t40, 3
  store i1 %t42, ptr %l24, !tbaa !21
  br label %bb15
bb15:
  %t43 = load i1, ptr %l24, !tbaa !21
  br i1 %t43, label %bb16, label %bb17
bb16:
  %t44 = load ptr, ptr %l1, !tbaa !29
  %t46 = getelementptr { i64, [4 x i64] }, ptr %t44, i32 0, i32 1
  %t47 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t46, i32 0, i32 2
  %t48 = load ptr, ptr %t47
  store ptr %t48, ptr %l3, !tbaa !29
  br label %bb18
bb17:
  br label %bb20
bb18:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t51 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3atypeFinder_2eplace(ptr %v0, ptr %v1, ptr %t50, ptr %t51)
  br label %bb19
bb19:
  br label %bb47
bb20:
  %t55 = load ptr, ptr %l1, !tbaa !29
  store ptr %t55, ptr %l32, !tbaa !29
  store i1 false, ptr %l33, !tbaa !21
  %t56 = load ptr, ptr %l32, !tbaa !29
  %t57 = icmp ne ptr %t56, null
  br i1 %t57, label %bb21, label %bb22
bb21:
  %t59 = load ptr, ptr %l32, !tbaa !29
  %t60 = load i64, ptr %t59, !range !{i64 0, i64 8}
  %t62 = icmp eq i64 %t60, 4
  store i1 %t62, ptr %l33, !tbaa !21
  br label %bb22
bb22:
  %t63 = load i1, ptr %l33, !tbaa !21
  br i1 %t63, label %bb23, label %bb24
bb23:
  %t64 = load ptr, ptr %l1, !tbaa !29
  %t66 = getelementptr { i64, [4 x i64] }, ptr %t64, i32 0, i32 1
  %t67 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t66, i32 0, i32 2
  %t68 = load ptr, ptr %t67
  store ptr %t68, ptr %l4, !tbaa !29
  br label %bb25
bb24:
  br label %bb28
bb25:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t71 = load ptr, ptr %l4, !tbaa !29
  %t73 = getelementptr %"compiler/typed:Elem", ptr %t71, i32 0, i32 0
  %t74 = load ptr, ptr %t73, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3atypeFinder_2eplace(ptr %v0, ptr %v1, ptr %t70, ptr %t74)
  br label %bb26
bb26:
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t79 = load ptr, ptr %l4, !tbaa !29
  %t81 = getelementptr %"compiler/typed:Elem", ptr %t79, i32 0, i32 1
  %t82 = load ptr, ptr %t81, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3atypeFinder_2eexpr(ptr %v0, ptr %v1, ptr %t78, ptr %t82)
  br label %bb27
bb27:
  br label %bb47
bb28:
  %t86 = load ptr, ptr %l1, !tbaa !29
  store ptr %t86, ptr %l46, !tbaa !29
  store i1 false, ptr %l47, !tbaa !21
  %t87 = load ptr, ptr %l46, !tbaa !29
  %t88 = icmp ne ptr %t87, null
  br i1 %t88, label %bb29, label %bb30
bb29:
  %t90 = load ptr, ptr %l46, !tbaa !29
  %t91 = load i64, ptr %t90, !range !{i64 0, i64 8}
  %t93 = icmp eq i64 %t91, 5
  store i1 %t93, ptr %l47, !tbaa !21
  br label %bb30
bb30:
  %t94 = load i1, ptr %l47, !tbaa !21
  br i1 %t94, label %bb31, label %bb32
bb31:
  %t95 = load ptr, ptr %l1, !tbaa !29
  %t97 = getelementptr { i64, [4 x i64] }, ptr %t95, i32 0, i32 1
  %t98 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t97, i32 0, i32 2
  %t99 = load ptr, ptr %t98
  store ptr %t99, ptr %l5, !tbaa !29
  br label %bb33
bb32:
  br label %bb35
bb33:
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t102 = load ptr, ptr %l5, !tbaa !29
  %t104 = getelementptr %"compiler/typed:Payload", ptr %t102, i32 0, i32 0
  %t105 = load ptr, ptr %t104, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3atypeFinder_2eplace(ptr %v0, ptr %v1, ptr %t101, ptr %t105)
  br label %bb34
bb34:
  br label %bb47
bb35:
  %t109 = load ptr, ptr %l1, !tbaa !29
  store ptr %t109, ptr %l56, !tbaa !29
  store i1 false, ptr %l57, !tbaa !21
  %t110 = load ptr, ptr %l56, !tbaa !29
  %t111 = icmp ne ptr %t110, null
  br i1 %t111, label %bb36, label %bb37
bb36:
  %t113 = load ptr, ptr %l56, !tbaa !29
  %t114 = load i64, ptr %t113, !range !{i64 0, i64 8}
  %t116 = icmp eq i64 %t114, 6
  store i1 %t116, ptr %l57, !tbaa !21
  br label %bb37
bb37:
  %t117 = load i1, ptr %l57, !tbaa !21
  br i1 %t117, label %bb38, label %bb39
bb38:
  %t118 = load ptr, ptr %l1, !tbaa !29
  %t120 = getelementptr { i64, [4 x i64] }, ptr %t118, i32 0, i32 1
  %t121 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t120, i32 0, i32 2
  %t122 = load ptr, ptr %t121
  store ptr %t122, ptr %l6, !tbaa !29
  br label %bb40
bb39:
  br label %bb42
bb40:
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t125 = load ptr, ptr %l6, !tbaa !29
  call void @compiler_2fsession_2ecompiler_2fsession_3atypeFinder_2eexpr(ptr %v0, ptr %v1, ptr %t124, ptr %t125)
  br label %bb41
bb41:
  br label %bb47
bb42:
  br i1 true, label %bb43, label %bb44
bb43:
  br label %bb45
bb44:
  br label %bb46
bb45:
  br label %bb47
bb46:
  call void @__olang_check_failed(ptr @olang_loc_8ea8ca70496d6921_977884330ce8ec6d)
  unreachable
bb47:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fsession_2ecompiler_2fsession_3atypeFinder_2etake(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca i32
  %l3 = alloca i64
  %l9 = alloca i1
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 1
  %t2 = load i32, ptr %t1, !tbaa !23
  %t4 = sext i32 %t2 to i64
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/session:typeFinder", ptr %t5, i32 0, i32 0
  %t8 = load i64, ptr %t7, !tbaa !24
  %t11 = icmp ne i64 %t4, %t8
  br i1 %t11, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb3
bb2:
  %t13 = load i32, ptr %l2, !tbaa !23
  %t14 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t17 = icmp eq i32 %t13, %t14
  store i1 %t17, ptr %l9, !tbaa !21
  br label %bb3
bb3:
  %t19 = load i1, ptr %l9, !tbaa !21
  br i1 %t19, label %bb4, label %bb5
bb4:
  br label %ret
bb5:
  br label %bb6
bb6:
  %t20 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 1
  %t21 = load i32, ptr %t20, !tbaa !23
  %t23 = sext i32 %t21 to i64
  %t24 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t25 = load i32, ptr %t24, !tbaa !23
  %t27 = sext i32 %t25 to i64
  %t30 = sub i64 %t23, %t27
  store i64 %t30, ptr %l3, !tbaa !24
  %t32 = load i64, ptr %l3, !tbaa !24
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/session:typeFinder", ptr %t33, i32 0, i32 2
  %t36 = load i64, ptr %t35, !tbaa !24
  %t39 = icmp sgt i64 %t32, %t36
  br i1 %t39, label %bb7, label %bb8
bb7:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t42 = load i64, ptr %l3, !tbaa !24
  %t45 = getelementptr %"compiler/session:typeFinder", ptr %t41, i32 0, i32 2
  store i64 %t42, ptr %t45, !tbaa !24
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = load i32, ptr %l2, !tbaa !23
  %t50 = getelementptr %"compiler/session:typeFinder", ptr %t46, i32 0, i32 1
  store i32 %t47, ptr %t50, !tbaa !23
  br label %bb9
bb8:
  br label %bb9
bb9:
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fsession_2efirstLine(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i32
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d42, i32 0, i32 1) })
  %t4 = extractvalue { i32, i64 } %t3, 1
  %t5 = extractvalue { i32, i64 } %t3, 0
  store i32 %t5, ptr %l5
  %t6 = icmp ne i32 %t5, 0
  br i1 %t6, label %bb2, label %ok.7, !prof !99
ok.7:
  store i64 %t4, ptr %l4
  br label %bb1
bb1:
  %t8 = load i64, ptr %l4, !tbaa !24
  store i64 %t8, ptr %l2, !tbaa !24
  br label %bb4
bb2:
  br label %bb3
bb3:
  %t9 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t9, 0
  store i64 %t11, ptr %l2, !tbaa !24
  br label %bb4
bb4:
  %t13 = load i64, ptr %l2, !tbaa !24
  %t14 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t14, ptr %l8, !tbaa !27
  store i64 %t13, ptr %l9, !tbaa !24
  %t16 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t17 = extractvalue { i64, ptr } %t16, 0
  store i64 %t17, ptr %l10, !tbaa !24
  %t18 = icmp sge i64 0, 0
  br i1 %t18, label %bb5, label %bb6
bb5:
  %t20 = load i64, ptr %l9, !tbaa !24
  %t21 = icmp sle i64 0, %t20
  br i1 %t21, label %bb7, label %bb8
bb6:
  call void @__olang_check_failed(ptr @olang_loc_806fd3d74c9283ca_adf24a445d28962e)
  unreachable
bb7:
  %t23 = load i64, ptr %l9, !tbaa !24
  %t24 = load i64, ptr %l10, !tbaa !24
  %t25 = icmp sle i64 %t23, %t24
  br i1 %t25, label %bb9, label %bb10
bb8:
  call void @__olang_check_failed(ptr @olang_loc_806fd3d74c9283ca_adf24a445d28962e)
  unreachable
bb9:
  %t27 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !27
  %t29 = load i64, ptr %l9, !tbaa !24
  %t30 = getelementptr i8, ptr %t28, i64 0
  %t31 = sub i64 %t29, 0
  %t32 = insertvalue { i64, ptr } undef, i64 %t31, 0
  %t33 = insertvalue { i64, ptr } %t32, ptr %t30, 1
  %t35 = extractvalue { i64, ptr } %t33, 1
  %t36 = extractvalue { i64, ptr } %t33, 0
  %t37 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t36)
  call void @olang_textcopy(ptr %t37, ptr %t35, i64 %t36)
  %t38 = insertvalue { i64, ptr } undef, i64 %t36, 0
  %t39 = insertvalue { i64, ptr } %t38, ptr %t37, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t39, ptr %rv
  br label %ret
bb10:
  call void @__olang_check_failed(ptr @olang_loc_806fd3d74c9283ca_adf24a445d28962e)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fsession_2ehover(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca %"std/prelude/text:StringBuilder"
  %l3 = alloca %"std/prelude/text:StringBuilder"
  %l4 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l10 = alloca i1
  %l17 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t1, ptr %l3
  br label %bb1
bb1:
  %t2 = load %"std/prelude/text:StringBuilder", ptr %l3
  store %"std/prelude/text:StringBuilder" %t2, ptr %l2
  store ptr %l2, ptr %l4, !tbaa !29
  %t5 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrimEnd(ptr %v0, ptr %s0, { i64, ptr } %a0)
  store { i64, ptr } %t5, ptr %l6
  br label %bb2
bb2:
  %t6 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d43, i32 0, i32 1) }, 1
  %t7 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d43, i32 0, i32 1) }, 0
  %t8 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t8, 1
  %t10 = extractvalue { i64, ptr } %t8, 0
  %t11 = add i64 %t7, %t10
  %t12 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d44, i32 0, i32 1) }, 1
  %t13 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d44, i32 0, i32 1) }, 0
  %t14 = add i64 %t11, %t13
  %t15 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t14)
  call void @olang_textcopy(ptr %t15, ptr %t6, i64 %t7)
  %t16 = getelementptr i8, ptr %t15, i64 %t7
  call void @olang_textcopy(ptr %t16, ptr %t9, i64 %t10)
  %t17 = getelementptr i8, ptr %t16, i64 %t10
  call void @olang_textcopy(ptr %t17, ptr %t12, i64 %t13)
  %t18 = insertvalue { i64, ptr } undef, i64 %t14, 0
  %t19 = insertvalue { i64, ptr } %t18, ptr %t15, 1
  %t21 = extractvalue { i64, ptr } %t19, 0
  %t22 = extractvalue { i64, ptr } %t19, 1
  %t23 = mul i64 %t21, 1
  %t24 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t23)
  call void @llvm.memcpy.p0.p0.i64(ptr %t24, ptr %t22, i64 %t23, i1 false)
  %t25 = insertvalue { i64, ptr } undef, i64 %t21, 0
  %t26 = insertvalue { i64, ptr } %t25, ptr %t24, 1
  %t27 = load ptr, ptr %l4, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t27, { i64, ptr } %t26)
  br label %bb3
bb3:
  %t29 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t31 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t29, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d45, i32 0, i32 1) })
  store i1 %t31, ptr %l10
  br label %bb4
bb4:
  %t32 = load i1, ptr %l10, !tbaa !21
  %t33 = xor i1 %t32, true
  br i1 %t33, label %bb5, label %bb6
bb5:
  store %olang.scope zeroinitializer, ptr %s2
  %t35 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t36 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d46, i32 0, i32 1) }, 1
  %t37 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d46, i32 0, i32 1) }, 0
  %t39 = extractvalue { i64, ptr } %t35, 1
  %t40 = extractvalue { i64, ptr } %t35, 0
  %t41 = add i64 %t37, %t40
  %t42 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t41)
  call void @olang_textcopy(ptr %t42, ptr %t36, i64 %t37)
  %t43 = getelementptr i8, ptr %t42, i64 %t37
  call void @olang_textcopy(ptr %t43, ptr %t39, i64 %t40)
  %t44 = insertvalue { i64, ptr } undef, i64 %t41, 0
  %t45 = insertvalue { i64, ptr } %t44, ptr %t42, 1
  %t47 = extractvalue { i64, ptr } %t45, 0
  %t48 = extractvalue { i64, ptr } %t45, 1
  %t49 = mul i64 %t47, 1
  %t50 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t49)
  call void @llvm.memcpy.p0.p0.i64(ptr %t50, ptr %t48, i64 %t49, i1 false)
  %t51 = insertvalue { i64, ptr } undef, i64 %t47, 0
  %t52 = insertvalue { i64, ptr } %t51, ptr %t50, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s2, ptr %l2, { i64, ptr } %t52)
  br label %bb7
bb6:
  br label %bb8
bb7:
  call void @__olang_scope_close(ptr %s2)
  br label %bb8
bb8:
  %t56 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v2, ptr %l2)
  store { i64, ptr } %t56, ptr %l17
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s0)
  %t57 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t57, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i64 @compiler_2fsession_2enameIn(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1, { i64, ptr } %a2) #0 {
entry:
  %l1 = alloca i64
  %l3 = alloca i64
  %l7 = alloca i64
  %l10 = alloca i64
  %rv = alloca i64
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load i64, ptr %l1, !tbaa !24
  %t7 = call i64 @compiler_2fdoc_2eWordIn(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %t2, { i64, ptr } %a2)
  store i64 %t7, ptr %l7
  br label %bb1
bb1:
  %t8 = load i64, ptr %l7, !tbaa !24
  store i64 %t8, ptr %l3, !tbaa !24
  %t9 = load i64, ptr %l3, !tbaa !24
  %t11 = icmp slt i64 %t9, 0
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load i64, ptr %l1, !tbaa !24
  store i64 %t13, ptr %l10, !tbaa !24
  br label %bb4
bb3:
  %t15 = load i64, ptr %l3, !tbaa !24
  store i64 %t15, ptr %l10, !tbaa !24
  br label %bb4
bb4:
  %t17 = load i64, ptr %l10, !tbaa !24
  store i64 %t17, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2fsession_2estdModules(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l6 = alloca [2 x { i64, ptr }]
  %l7 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca { i64, ptr }
  %l13 = alloca [2 x { i64, ptr }]
  %l14 = alloca { i64, ptr }
  %l27 = alloca i1
  %l29 = alloca { i64, ptr }
  %l35 = alloca { i64, ptr }
  %l38 = alloca { i64, ptr }
  %l40 = alloca { i64, ptr }
  %l41 = alloca i32
  %l43 = alloca i1
  %l53 = alloca { i64, ptr }
  %l57 = alloca i1
  %l58 = alloca ptr
  %l59 = alloca i64
  %l66 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s7 = alloca %olang.scope
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call { i64, ptr } @compiler_2fload_2eStdDir(ptr %s0)
  store { i64, ptr } %t1, ptr %l14
  br label %bb1
bb1:
  %t2 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t2, ptr %l1, !tbaa !27
  store %olang.scope zeroinitializer, ptr %s1
  %t3 = insertvalue [2 x { i64, ptr }] undef, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d47, i32 0, i32 1) }, 0
  %t4 = insertvalue [2 x { i64, ptr }] %t3, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d48, i32 0, i32 1) }, 1
  %t6 = call ptr @__olang_scope_alloc_a(ptr %s1, i64 32, i64 8)
  store [2 x { i64, ptr }] %t4, ptr %t6
  store ptr %t6, ptr %l2
  store i64 0, ptr %l3, !tbaa !24
  %t8 = load ptr, ptr %l2
  store i64 2, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  store %olang.scope zeroinitializer, ptr %s2
  %t11 = load i64, ptr %l3, !tbaa !24
  %t12 = load i64, ptr %l4, !tbaa !24
  %t15 = icmp slt i64 %t11, %t12
  %t17 = xor i1 %t15, true
  br i1 %t17, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s2)
  br label %bb32
bb4:
  br label %bb5
bb5:
  %t19 = load ptr, ptr %l2
  %t20 = load i64, ptr %l3, !tbaa !24
  %t23 = getelementptr [2 x { i64, ptr }], ptr %t19, i64 0, i64 %t20
  %t24 = load { i64, ptr }, ptr %t23, !tbaa !37
  store { i64, ptr } %t24, ptr %l5, !tbaa !27
  %t26 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t27 = load ptr, ptr @__olang_prog_scope
  %t29 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %t27, ptr %s2, { i64, ptr } %t26, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d49, i32 0, i32 1) })
  store i1 %t29, ptr %l27
  br label %bb6
bb6:
  %t30 = load i1, ptr %l27, !tbaa !21
  %t31 = xor i1 %t30, true
  br i1 %t31, label %bb7, label %bb8
bb7:
  %t33 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t34 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t36 = insertvalue [2 x { i64, ptr }] undef, { i64, ptr } %t33, 0
  %t38 = insertvalue [2 x { i64, ptr }] %t36, { i64, ptr } %t34, 1
  store [2 x { i64, ptr }] %t38, ptr %l6
  %t41 = insertvalue { i64, ptr } undef, i64 2, 0
  %t42 = insertvalue { i64, ptr } %t41, ptr %l6, 1
  %t44 = call { i64, ptr } @std_2ffilepath_2eJoin(ptr %s2, ptr %s2, { i64, ptr } %t42)
  store { i64, ptr } %t44, ptr %l35
  br label %bb9
bb8:
  %t45 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t47 = extractvalue { i64, ptr } %t45, 1
  %t48 = extractvalue { i64, ptr } %t45, 0
  %t49 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t48)
  call void @olang_textcopy(ptr %t49, ptr %t47, i64 %t48)
  %t50 = insertvalue { i64, ptr } undef, i64 %t48, 0
  %t51 = insertvalue { i64, ptr } %t50, ptr %t49, 1
  store { i64, ptr } %t51, ptr %l29, !tbaa !27
  br label %bb10
bb9:
  %t53 = load { i64, ptr }, ptr %l35, !tbaa !27
  store { i64, ptr } %t53, ptr %l29, !tbaa !27
  br label %bb10
bb10:
  %t54 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t54, ptr %l7, !tbaa !27
  %t55 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t57 = call { i32, { i64, ptr } } @std_2fos_2eReadDir(ptr %s2, ptr %s2, { i64, ptr } %t55)
  %t58 = extractvalue { i32, { i64, ptr } } %t57, 1
  %t59 = extractvalue { i32, { i64, ptr } } %t57, 0
  store i32 %t59, ptr %l41
  %t60 = icmp ne i32 %t59, 0
  br i1 %t60, label %bb12, label %ok.61, !prof !99
ok.61:
  store { i64, ptr } %t58, ptr %l40
  br label %bb11
bb11:
  %t62 = load { i64, ptr }, ptr %l40, !tbaa !27
  store { i64, ptr } %t62, ptr %l38, !tbaa !27
  br label %bb16
bb12:
  %t63 = load i32, ptr %l41, !tbaa !23
  %t64 = ashr i32 %t63, 16
  %t66 = icmp eq i32 %t64, 1
  store i1 %t66, ptr %l43, !tbaa !21
  %t67 = load i32, ptr %l41, !tbaa !23
  %t68 = ashr i32 %t67, 16
  %t70 = icmp eq i32 %t68, 1
  br i1 %t70, label %bb13, label %bb14
bb13:
  call void @__olang_errpay_pop()
  br label %bb14
bb14:
  br label %bb15
bb15:
  call void @__olang_scope_close(ptr %s2)
  br label %bb31
bb16:
  %t72 = load { i64, ptr }, ptr %l38, !tbaa !27
  store { i64, ptr } %t72, ptr %l9, !tbaa !27
  store i64 0, ptr %l10, !tbaa !24
  %t75 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t77 = extractvalue { i64, ptr } %t75, 0
  store i64 %t77, ptr %l11, !tbaa !24
  br label %bb17
bb17:
  store %olang.scope zeroinitializer, ptr %s6
  %t79 = load i64, ptr %l10, !tbaa !24
  %t80 = load i64, ptr %l11, !tbaa !24
  %t83 = icmp slt i64 %t79, %t80
  %t85 = xor i1 %t83, true
  br i1 %t85, label %bb18, label %bb19
bb18:
  call void @__olang_scope_close(ptr %s6)
  br label %bb30
bb19:
  br label %bb20
bb20:
  %t87 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t87, ptr %l53, !tbaa !27
  %t88 = load i64, ptr %l10, !tbaa !24
  %t90 = getelementptr { i64, ptr }, ptr %l53, i32 0, i32 1
  %t91 = load ptr, ptr %t90, !tbaa !27
  %t92 = getelementptr { i64, ptr }, ptr %t91, i64 %t88
  %t93 = load { i64, ptr }, ptr %t92, !tbaa !37
  store { i64, ptr } %t93, ptr %l12, !tbaa !27
  %t95 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t97 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %s2, ptr %s6, { i64, ptr } %t95, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d50, i32 0, i32 1) })
  store i1 %t97, ptr %l57
  br label %bb21
bb21:
  %t98 = load i1, ptr %l57, !tbaa !21
  br i1 %t98, label %bb22, label %bb23
bb22:
  store %olang.scope zeroinitializer, ptr %s7
  store ptr %a0, ptr %l58, !tbaa !29
  %t100 = ptrtoint ptr %v0 to i64
  store i64 %t100, ptr %l59, !tbaa !24
  %t101 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t101, label %bb24, label %bb25
bb23:
  br label %bb28
bb24:
  %t103 = call ptr @__olang_region_make(ptr %v0)
  %t104 = ptrtoint ptr %t103 to i64
  store i64 %t104, ptr %l59, !tbaa !24
  br label %bb25
bb25:
  %t105 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t106 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t108 = insertvalue [2 x { i64, ptr }] undef, { i64, ptr } %t105, 0
  %t110 = insertvalue [2 x { i64, ptr }] %t108, { i64, ptr } %t106, 1
  store [2 x { i64, ptr }] %t110, ptr %l13
  %t113 = insertvalue { i64, ptr } undef, i64 2, 0
  %t114 = insertvalue { i64, ptr } %t113, ptr %l13, 1
  %t115 = load i64, ptr %l59
  %t116 = inttoptr i64 %t115 to ptr
  %t118 = call { i64, ptr } @std_2ffilepath_2eJoin(ptr %s7, ptr %t116, { i64, ptr } %t114)
  store { i64, ptr } %t118, ptr %l66
  br label %bb26
bb26:
  %t119 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t120 = load i64, ptr %l59
  %t121 = inttoptr i64 %t120 to ptr
  %t122 = extractvalue { i64, ptr } %t119, 0
  %t123 = extractvalue { i64, ptr } %t119, 1
  %t124 = mul i64 %t122, 1
  %t125 = call ptr @__olang_scope_alloc(ptr %t121, i64 %t124)
  call void @llvm.memcpy.p0.p0.i64(ptr %t125, ptr %t123, i64 %t124, i1 false)
  %t126 = insertvalue { i64, ptr } undef, i64 %t122, 0
  %t127 = insertvalue { i64, ptr } %t126, ptr %t125, 1
  %t128 = load ptr, ptr %l58, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t128, { i64, ptr } %t127)
  br label %bb27
bb27:
  call void @__olang_scope_close(ptr %s7)
  br label %bb28
bb28:
  call void @__olang_scope_close(ptr %s6)
  br label %bb29
bb29:
  %t130 = load i64, ptr %l10, !tbaa !24
  %t132 = add i64 %t130, 1
  store i64 %t132, ptr %l10, !tbaa !24
  br label %bb17
bb30:
  call void @__olang_scope_close(ptr %s2)
  br label %bb31
bb31:
  %t134 = load i64, ptr %l3, !tbaa !24
  %t136 = add i64 %t134, 1
  store i64 %t136, ptr %l3, !tbaa !24
  br label %bb2
bb32:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/session:Reader" @compiler_2fsession_3aReader_2ector(ptr %v0, i32 %a0) #0 {
entry:
  %l1 = alloca i32
  %l5 = alloca i64
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"compiler/session:Reader"
  br label %start
start:
  br label %bb0
bb0:
  store i32 %a0, ptr %l1, !tbaa !23
  %t3 = ptrtoint ptr %v0 to i64
  store i64 %t3, ptr %l5, !tbaa !24
  %t4 = load i1, ptr @olang_2esole_2ecompiler_2fsession_3aReader_2e1
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = call ptr @__olang_region_make(ptr %v0)
  %t7 = ptrtoint ptr %t6 to i64
  store i64 %t7, ptr %l5, !tbaa !24
  br label %bb2
bb2:
  %t8 = load i64, ptr %l5
  %t9 = inttoptr i64 %t8 to ptr
  %t10 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cU8_3e_2ector(ptr %t9, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %l7
  br label %bb3
bb3:
  %t11 = load i1, ptr @olang_2esole_2ecompiler_2fsession_3aReader_2e1
  br i1 %t11, label %bb4, label %bb5
bb4:
  %t13 = load i64, ptr %l5
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7, i32 0, i32 0
  %t16 = load { i64, ptr }, ptr %t15
  %t17 = extractvalue { i64, ptr } %t16, 1
  %t18 = call ptr @__olang_region_or(ptr %t17, ptr null)
  %t19 = icmp ne ptr %t18, null
  %t20 = select i1 %t19, ptr %t18, ptr null
  %t21 = icmp eq ptr %t20, %t14
  call void @__olang_region_settle(ptr %t14, i1 %t21)
  br label %bb5
bb5:
  %t22 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  %t23 = load i32, ptr %l1, !tbaa !23
  %t24 = insertvalue %"compiler/session:Reader" undef, i32 %t23, 0
  %t26 = insertvalue %"compiler/session:Reader" %t24, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t22, 1
  %t28 = insertvalue %"compiler/session:Reader" %t26, i1 false, 2
  store %"compiler/session:Reader" %t28, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/session:Reader", ptr %rv
  ret %"compiler/session:Reader" %rr
}

define dso_local %"compiler/session:Use" @compiler_2fsession_3aUse_2ector(ptr %v0, ptr %v1, i64 %a0, i64 %a1, { i64, ptr } %a2) #0 {
entry:
  %rv = alloca %"compiler/session:Use"
  br label %start
start:
  br label %bb0
bb0:
  %t8 = insertvalue %"compiler/session:Use" undef, i64 %a0, 0
  %t10 = insertvalue %"compiler/session:Use" %t8, i64 %a1, 1
  %t12 = insertvalue %"compiler/session:Use" %t10, { i64, ptr } %a2, 2
  store %"compiler/session:Use" %t12, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/session:Use", ptr %rv
  ret %"compiler/session:Use" %rr
}

@olang_2esole_2ecompiler_2ffetch_3aFetcher_2e0 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
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
@olang_2esole_2ecompiler_2ffetch_3aFetcher_2e1 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffetch_3aFetcher_2e2 = weak hidden constant i1 false
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
@olang_2esole_2ecompiler_2fload_3aLoader_2e0 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fload_3aLoader_2e19 = weak hidden constant i1 false
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
declare void @__olang_region_release(ptr) noinline
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
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
@olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20st_Ha3f33385783b00c3f13cf90b683d8670 = weak hidden constant i1 false
@olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20st_Ha3f33285783aff10f13cf80b683d8c03 = weak hidden constant i1 false
@.d0 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"loaded " }>, align 8
@.d1 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" (" }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d2 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c" modules) in " }>, align 8
@.d3 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" ms" }>, align 8
@.d4 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"checked in " }>, align 8
@.d5 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" ms" }>, align 8
@olang_2esole_2estd_2fprelude_2fmap_3aMapIter_3cstd_2fprelude_2ftext_3aString_26_2c_20std_Hae258982e94f82c7c4916579e261fcef = weak hidden constant i1 false
declare void @__olang_check_failed(ptr) cold noreturn
declare i32 @close(i32)
declare void @_exit(i32)
declare i32 @fork()
declare i64 @signal(i32, i64)
@.d6 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"OLANG_TOOL_LOG" }>, align 8
declare void @__olang_errpay_pop()
@.d7 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d8 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d9 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"olang: " }>, align 8
@.d10 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
declare i32 @pipe(ptr)
define linkonce_odr %"<poll.h>:pollfd" @olang_2emir_2eHelperKind_2eZero_2e_3cpoll_2eh_3e_3apollfd() #0 {
entry:
  %l0 = alloca %"<poll.h>:pollfd"
  %rv = alloca %"<poll.h>:pollfd"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr @__olang_prog_scope
  %t2 = call %"<poll.h>:pollfd" @_3cpoll_2eh_3e_3apollfd_2ector(ptr %t1)
  store %"<poll.h>:pollfd" %t2, ptr %l0
  br label %bb1
bb1:
  %t3 = load %"<poll.h>:pollfd", ptr %l0
  store %"<poll.h>:pollfd" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"<poll.h>:pollfd", ptr %rv
  ret %"<poll.h>:pollfd" %rr
}

declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
declare i32 @poll(ptr, i64, i32)
declare i32 @waitpid(i32, ptr, i32)
@.d11 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"Content-Length: " }>, align 8
@.d12 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"\0D\0A\0D\0A" }>, align 8
@.d13 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d14 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"no type" }>, align 8
@.d15 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"completion after a '.' at " }>, align 8
@.d16 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
@.d17 = private constant <{ i64, [59 x i8] }> <{ i64 0, [59 x i8] c" - handing on a value instead would let it go with its step" }>, align 8
@.d18 = private constant <{ i64, [62 x i8] }> <{ i64 0, [62 x i8] c" - a copy of what is kept ('$x') would let it go with its turn" }>, align 8
@olang_2esole_2ecompiler_2fsession_3aUse_2e2 = weak hidden constant i1 false
@.d19 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d20 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2fsession_3aFound_2e1 = weak hidden constant i1 false
@.d21 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d22 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@olang_2esole_2ecompiler_2fsession_3aFound_2e0 = weak hidden constant i1 false
@.d23 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d24 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"parameter " }>, align 8
@.d25 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d26 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d27 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d28 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d29 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"import \22" }>, align 8
@.d30 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\22" }>, align 8
declare ptr @__olang_scope_of(ptr, ptr) noinline
@.d31 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2estd_2fprelude_2ftext_3aLineIter_2e0 = weak hidden constant i1 false
@.d32 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d33 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d34 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d35 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"{\22start\22:{\22line\22:" }>, align 8
@.d36 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c",\22character\22:" }>, align 8
@.d37 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"},\22end\22:{\22line\22:" }>, align 8
@.d38 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"}}" }>, align 8
@.d39 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d40 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d41 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d42 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d43 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"```olang\0A" }>, align 8
@.d44 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"\0A```" }>, align 8
@.d45 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d46 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"\0A\0A" }>, align 8
@.d47 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d48 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"prelude" }>, align 8
@__olang_prog_scope = external thread_local(initialexec) global ptr
@.d49 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d50 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c".olang" }>, align 8
@olang_2esole_2ecompiler_2fsession_3aReader_2e1 = weak hidden constant i1 false
declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
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
declare { i64, ptr } @compiler_2fload_2eLockPath(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i64, ptr } @compiler_2ffetch_2eCacheDir(ptr %v0)
declare { i64, ptr } @compiler_2ffetch_2eGitBase(ptr %v0)
declare void @compiler_2ffetch_3aFetcher_2ector(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, i1 %a3, i1 %a4)
declare %"compiler/source:Names" @compiler_2fsource_3aNames_2ector(ptr %v0)
declare { i64, ptr } @compiler_2fload_2eStdDir(ptr %v0)
declare void @compiler_2fload_3aLoader_2ector(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, { i64, ptr } %a0, ptr %a1, ptr %a2, ptr %a3, ptr %a4)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eCFlags(ptr %v0, ptr %v1, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H233962476a3191cb30d917b30cae0288(ptr %v0, ptr %v1, ptr %a0)
declare { i32, %"std/prelude/map:MapEntry.c7dad01dbd7dd6cd22e9701676806c15" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapIter_3cstd_2fprelude_2ftext_3aString_26_2_H2ebf6f1d68886862a568a520c713bfce(ptr %v0, ptr %v1, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6f7a2f8d839c49b6e7a19c287d4b190c(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare i64 @std_2ftime_2eNow()
declare i64 @compiler_2fload_2ecompiler_2fload_3aLoader_2eLoad(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %a0)
declare i64 @std_2ftime_2eSince(i64 %a0)
declare %"compiler/session:Analysis" @compiler_2fsession_3aAnalysis_2ector(ptr %v0, ptr %v1, ptr %a0)
declare i1 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eHasFatal(ptr %v0, ptr %a0)
declare void @compiler_2fviews_3aKept_2ector(ptr %out, ptr %v0)
declare void @compiler_2finterp_2eAnalyze(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %a0, i1 %a1, ptr %a2)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e_2ector(ptr %v0)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrors(ptr %v0, ptr %a0)
declare i64 @compiler_2finterp_2eDecideValues(ptr %v0, ptr %a0)
declare i64 @compiler_2finterp_2eDecideAsserts(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @compiler_2finterp_2eBake(ptr %v0, ptr %v1, ptr %a0)
declare void @compiler_2fsession_2eHold(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fdiag_2eColorWanted()
declare void @compiler_2fdiag_3aDiagnostics_2ector(ptr %out, ptr %v0, i1 %a0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20std_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0)
declare { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eRender(ptr %v0, ptr %v1, ptr %a0)
declare void @compiler_2fsession_2esay(ptr %v0, { i64, ptr } %a0)
declare { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eSummary(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_955cfaf9738e6bc2_e48fc09138963b26 = external constant [0 x i8]
declare { i64, ptr } @compiler_2fexplain_2eCaps(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_eb449e3906b36447_37ec3fcb8d3ba1cb = external constant [0 x i8]
declare { i32, { i64, ptr } } @std_2fos_2eEnv(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i32 @std_2fio_2ePrintErr(ptr %v0, { i64, ptr } %a0)
@olang_loc_6afc88ea1ac145e8_494a63ded86193f4 = external constant [0 x i8]
@G_2e_3cpoll_2eh_3e_2ePOLLIN = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@olang_loc_cd9998fc5b6bf5d5_fa43d55bb2deeb01 = external constant [0 x i8]
@G_2e_3cpoll_2eh_3e_2ePOLLERR = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\08\00\00\00" }>, align 8
@G_2e_3cpoll_2eh_3e_2ePOLLHUP = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\10\00\00\00" }>, align 8
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %a0)
declare i32 @std_2fio_2eWrite(ptr %v0, i32 %a0, { i64, ptr } %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsession_3aUse_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2eTextOf(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fdoc_2eDeprecatedNames(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @compiler_2fdoc_2eLineEnd(ptr %v0, { i64, ptr } %a0, i64 %a1)
@olang_loc_7ada9cad4f5dae06_e1e48e82a4e1a6ca = external constant [0 x i8]
declare i64 @compiler_2fdoc_2eCommentColumn(ptr %v0, { i64, ptr } %a0)
@olang_loc_7b32137e1a8558e3_9274687faf6829a7 = external constant [0 x i8]
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H0127831368543eff3b7740d7d3240080(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
declare i64 @compiler_2fdoc_2eLineStart(ptr %v0, { i64, ptr } %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsession_3aUse_3e_2ePush_3ccompiler_2fsession_3aUse_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/session:Use" %a1)
declare %"compiler/source:Span" @compiler_2fsession_2eWordAt(ptr %v0, { i64, ptr } %a0, i64 %a1)
@olang_loc_3178b68d0296f164_92041ef9c14564d0 = external constant [0 x i8]
declare %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
@olang_loc_d917d39333aa2133_631bc7dad212aa2f = external constant [0 x i8]
declare %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eMember(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare void @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2emoduleNames(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2, i1 %a3)
@olang_loc_8be86b180d8510f2_8625cf113e27a67e = external constant [0 x i8]
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclFor(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSelfType(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_ed36df340d76a819_440492e817778325 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBuildersOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_307b77a6237c26a0_78f1120d888a7954 = external constant [0 x i8]
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_2c3c8769e2b258bf_eca2de7a2a110a63 = external constant [0 x i8]
declare { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2fdoc_2eExported(ptr %v0, { i64, ptr } %a0)
@olang_loc_ee4e27bc8cc2960e_c3e4091da57c70e2 = external constant [0 x i8]
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2fsession_2eCompMethod = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@olang_loc_fedfdbf81449d1b5_cf51e30466ace149 = external constant [0 x i8]
declare { i64, ptr } @compiler_2fexplain_2eFnText(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i64 %a2)
declare i1 @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2edeprecatedAt(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i1 %a3)
declare void @compiler_2fsession_2ecompiler_2fsession_3aItems_2eAddDep(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i64 %a2, { i64, ptr } %a3, i1 %a4)
declare i32 @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2etypeEndingAt(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@olang_loc_5913a88474c7905c_bf4494fdd85d3108 = external constant [0 x i8]
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eTy(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_270f5d4da41f712e_3815e2adbc47561a = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ePlacements(ptr %v0, ptr %v1, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aPlacement_3e_2eLen__H4d2672aa7d845ec0c6fc38a004384ece(ptr %v0, ptr %a0)
declare %"compiler/scope:Placement" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aPlacement_3e_2eAt_3ccompiler_2fscope_3aPlacement_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_34b5353ec7fa6306_74a43705b3ad61d2 = external constant [0 x i8]
declare { i32, { i64, ptr } } @compiler_2fexplain_2eItem(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, ptr %a2, i64 %a3, { i64, ptr } %a4)
@olang_loc_36d5ca6fa18785ed_2ca50b1ef1b0ebf9 = external constant [0 x i8]
declare i64 @compiler_2fsession_2edeclOf(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2)
declare { i64, ptr } @compiler_2fdoc_2eComment(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1, i1 %a2)
@olang_loc_913972385efaf6d8_94fc87626a418744 = external constant [0 x i8]
declare { i64, ptr } @compiler_2fsession_2eexampleText(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, { i64, ptr } %a2)
declare %"compiler/session:Found" @compiler_2fsession_3aFound_2ector(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1, i64 %a2)
@olang_loc_50b486dff56c46f7_6641abdfc6e3fb13 = external constant [0 x i8]
@olang_loc_e9f7bb5439d2c10a_6c9ebd98d3e3d5ee = external constant [0 x i8]
@olang_loc_f7a7bb63ca62da11_77899a051c081195 = external constant [0 x i8]
declare i1 @compiler_2fast_2ecompiler_2fast_3aFunc_2eIsBuilder(ptr %v0, ptr %a0)
@olang_loc_6d2a6542ebcc5b1c_c6866a22acbc6980 = external constant [0 x i8]
declare { i64, ptr } @compiler_2fast_2eOwnerTarget(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare { i64, ptr } @compiler_2fdoc_2eReceiverName(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_9453126c7f8f920b_6892400c5eb9861f = external constant [0 x i8]
@olang_loc_9fba17dd33d652ce_1e95afa29dd6ec2a = external constant [0 x i8]
declare { i64, ptr } @compiler_2fdoc_2eAbove(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1)
declare { i32, %"compiler/session:memberInfo" } @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2efield(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i64 %a2)
@olang_loc_8be95a0084a275_27fb33976f90d831 = external constant [0 x i8]
@olang_loc_62de0451ac433905_e234825e46030f99 = external constant [0 x i8]
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_4b7568962893615e_80e60e4246117872 = external constant [0 x i8]
@olang_loc_2674ac92e3c24a8f_ce1576bd6c3688b3 = external constant [0 x i8]
declare { i64, ptr } @compiler_2fdoc_2eModuleDoc(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_3b23b9b6a905edf7_80e5cdf9542388b = external constant [0 x i8]
@olang_loc_93ae806d7d0351b8_8e59b8ae3d0673ac = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_9641f0facc09fdd7_c62ff0c79521a99b = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %a0)
@olang_loc_c5788a2fa1963e6_4f790674132263da = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_c84a3880e9ad3dcd_a55c78b5e4758561 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eTextOf(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_ba93316a311e09f4_9951ae939e9d3a90 = external constant [0 x i8]
@olang_loc_655ed1db7681c96b_c757f347e4ac2c7 = external constant [0 x i8]
@G_2ecompiler_2fsession_2eCompField = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
@olang_loc_284eaf45fbe9e9ea_494071f23c61296 = external constant [0 x i8]
@olang_loc_3355c36425226bea_fe115d6500f3a7ee = external constant [0 x i8]
declare { i64, ptr } @compiler_2fdoc_2eDeprecation(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_9d5a0cb699faa7f1_8fc39d14917e395 = external constant [0 x i8]
@olang_loc_f7c6bb339a0b1bfc_57f909eed9cc3b80 = external constant [0 x i8]
@olang_loc_9563e15fbc6eea92_8818e5f6fc0bf866 = external constant [0 x i8]
@olang_loc_d513bc439d44d6f6_9aa74f14fc08fdfa = external constant [0 x i8]
@olang_loc_78ada93836b36c6b_7d0979891c04300f = external constant [0 x i8]
@olang_loc_f729b95fcb28e588_e9118b2581b5934c = external constant [0 x i8]
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fnames_3aTable_26_3e_2_Hc2ccbbc5952c057a60f016e9cc1626d2(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/names:Entry" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eAt_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/source:Span" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eLocalSpan(ptr %v0, ptr %a0, i64 %a1)
declare %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20" @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2elocalAt(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
@olang_loc_1e357a262dddcdbe_92aa1b1cb004b7e2 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eLen_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %a0)
@olang_loc_a3b4800e6d7209ba_290fe7f1ef38ac36 = external constant [0 x i8]
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnNamed(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
@olang_loc_a3b0521b63c0fd41_ee4db74cec265b9d = external constant [0 x i8]
@olang_loc_f548539da9e2e40c_6a57728f427e36c8 = external constant [0 x i8]
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAllFns(ptr %v0, ptr %a0)
@olang_loc_6ddc0e45a6ad667b_c7aac46097de5ae7 = external constant [0 x i8]
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnCount(ptr %v0, ptr %a0)
@olang_loc_be0af37330f35afe_68a0a057b8d4cca2 = external constant [0 x i8]
@olang_loc_7be9b74a0a4337a5_af051c2067e0d709 = external constant [0 x i8]
@olang_loc_a0e32d5552598bb5_d1b40570995ef0d1 = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aStmt_2eSpan(ptr %v0, ptr %a0)
@olang_loc_90517919cad2500e_b5e04c9858b7f7ca = external constant [0 x i8]
@olang_loc_ce3fd8c720c212bf_60e6469ff90569cb = external constant [0 x i8]
declare %"compiler/session:finder" @compiler_2fsession_3afinder_2ector(ptr %v0, ptr %v1, ptr %v2, i64 %a0, i64 %a1, { i64, ptr } %a2, ptr %a3)
@olang_loc_d27ec903618be0a0_36ec6c4f051caedc = external constant [0 x i8]
@olang_loc_65524a0775fa0c24_67802a16d5ac44c0 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_183418cbaaa3b5f3_579c8efa30db605f = external constant [0 x i8]
@olang_loc_269369d36ae436b2_2e7a039021f1ff2e = external constant [0 x i8]
@olang_loc_2bc7afddf58147d9_c9ac3d0f6598ded5 = external constant [0 x i8]
@olang_loc_843b58ccd5037a60_511f1c08fd361084 = external constant [0 x i8]
@olang_loc_237e374d945d777f_399ab2bb28be7e53 = external constant [0 x i8]
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_276794097286b2ce_71d39dea21084d12 = external constant [0 x i8]
@olang_loc_883965863f350275_cecb497c93815139 = external constant [0 x i8]
declare i1 @compiler_2fsession_2esameShape(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
@olang_loc_f4d7e16f2a7cbb1c_8fb96f5d8af1db38 = external constant [0 x i8]
@olang_loc_1c008e98be3ff20b_924cdfead9f88757 = external constant [0 x i8]
@olang_loc_b55c87bfcca1c8bf_5b30a336320e23 = external constant [0 x i8]
declare { i64, i64 } @compiler_2fsession_2ecompiler_2fsession_3aPositions_2ePos(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @compiler_2fsession_2ecompiler_2fsession_3afinder_2estmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fsession_2ecompiler_2fsession_3afinder_2ecallee(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
@olang_loc_6c2d06947719abd6_25c6135ab70ee42 = external constant [0 x i8]
@olang_loc_a4411270f97f17bd_30632737f0d2da29 = external constant [0 x i8]
@olang_loc_e2f597d466b9781f_44eca8a2d4aa1b5b = external constant [0 x i8]
@olang_loc_7a96973d190d0d9e_4b6d703943f97c5a = external constant [0 x i8]
@olang_loc_d73c626185112279_563eb35624dc00ed = external constant [0 x i8]
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v0, ptr %a0)
@olang_loc_f2f4caf0087f76e9_23d5843dfc5c1e5 = external constant [0 x i8]
@G_2ecompiler_2fsession_2eKindField = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\08\00\00\00\00\00\00\00" }>, align 8
declare void @compiler_2fsession_2ecompiler_2fsession_3asymWriter_2eleaf(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, { i64, ptr } %a2, i64 %a3, i64 %a4, i64 %a5, i64 %a6, i64 %a7, { i64, ptr } %a8)
@G_2ecompiler_2fsession_2eKindEnumMember = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\16\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fsession_2eKindMethod = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\06\00\00\00\00\00\00\00" }>, align 8
@olang_loc_59453385dbeab0f1_a10e94e6ba58edc5 = external constant [0 x i8]
declare void @compiler_2fsession_2ecompiler_2fsession_3atypeFinder_2estmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v0, ptr %a0)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v0, ptr %a0)
@olang_loc_df797fad9b49105d_2a8f7c5ad36c2889 = external constant [0 x i8]
@olang_loc_d2b15075f36d8dac_250aaa3debc302b8 = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eSpan(ptr %v0, ptr %a0)
@olang_loc_8ea8ca70496d6921_977884330ce8ec6d = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_806fd3d74c9283ca_adf24a445d28962e = external constant [0 x i8]
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrimEnd(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare i64 @compiler_2fdoc_2eWordIn(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1, { i64, ptr } %a2)
declare { i64, ptr } @std_2ffilepath_2eJoin(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i32, { i64, ptr } } @std_2fos_2eReadDir(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cU8_3e_2ector(ptr %v0, i64 %a0)
declare %"<poll.h>:pollfd" @_3cpoll_2eh_3e_3apollfd_2ector(ptr %v0)

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
