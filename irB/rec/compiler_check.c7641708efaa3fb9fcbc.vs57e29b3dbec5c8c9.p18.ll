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
%"compiler/check:b5aWalk" = type { i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"compiler/source:Span" = type { i32, i32 }
%"compiler/check:Checker" = type { ptr, ptr, i1, i1, i1, i1, i64, i64, i1, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, { i64, [3 x i64] }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i32, i64, %"compiler/source:Span", i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/source:Span", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i32, i1, i1, %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, i32, i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, i64, i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/text:StringBuilder", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/ast:Func" = type { %"compiler/source:Span", ptr, i32, ptr, { i64, ptr }, { i64, ptr }, i1, i1, { i64, ptr }, ptr, i32 }
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr } }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/check:frame" = type { i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/generic:Context", i32, i32, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i32, i64, i64, i64, i1, i64, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, i64, i64, i64, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/source:Span", i64, i1 }
%"compiler/generic:Context" = type { i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/source:Source" = type { { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/typed:Local" = type { i32, %"compiler/source:Span", i32, i32, i32, { i64, [1 x i64] }, i1, i1 }
%"compiler/typed:Make" = type { i32, i64, { i64, ptr }, ptr, i32, i32, i1 }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/ast:Sig" = type { { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, i1, ptr, i1, i1, { i64, ptr } }
%"compiler/ast:Param" = type { %"compiler/source:Span", i32, ptr, ptr, { i64, ptr } }
%"compiler/check:factsCopy" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/check:factsMark" = type { i64, i64, i64 }
%"compiler/typed:Seq" = type { { i64, ptr }, ptr, i1 }
%"compiler/typed:Clause" = type { %"compiler/source:Span", { i64, ptr }, i1, ptr, { i64, ptr }, i64, i32 }
%"compiler/typed:Try" = type { ptr, { i64, ptr }, i1, i1, i1 }
%"compiler/check:laneNode" = type { i64, i32, %"compiler/source:Span", %"compiler/source:Span", i64, i64, i64, ptr, i32, i64, i32 }
%"compiler/check:litv" = type { i1, i1, i1, i64, double, i1, i1, i1, i128 }
%"compiler/names:Ref" = type { i32, i64, i64 }
%"compiler/ast:Catch" = type { %"compiler/source:Span", { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i32, %"compiler/source:Span" }
%"compiler/ast:Path" = type { %"compiler/source:Span", { i64, ptr } }
%"compiler/check:elemsShape" = type { { i64, ptr }, i64 }
%"compiler/ast:TopIf" = type { ptr, ptr, ptr, ptr }
%"compiler/ast:TopBranch" = type { %"compiler/source:Span", { i64, ptr }, i64 }
%"compiler/ast:TypeDecl" = type { i32, { i64, ptr }, i1, ptr, { i64, ptr }, i32, i1 }
%"compiler/ast:StructBody" = type { { i64, ptr }, ptr, { i64, ptr }, %"compiler/source:Span", { i64, ptr }, { i64, ptr } }
%"compiler/ast:CaseDecl" = type { %"compiler/source:Span", i32, { i64, ptr }, i1, ptr, { i64, ptr } }
%"compiler/generic:AnyTable" = type { i32, i32, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/ast:If" = type { ptr, ptr, ptr }
%"compiler/ast:Branch" = type { %"compiler/source:Span", { i64, ptr }, i64 }
%"compiler/check:atRec" = type { i64, i64, ptr, i32 }
%"compiler/check:reflVal" = type { i1, i64, i64, { i64, ptr }, i32 }
define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aNamed(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l8 = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l2, !tbaa !24
  %t3 = load ptr, ptr %l1, !tbaa !29
  %t5 = getelementptr %"compiler/check:b5aWalk", ptr %t3, i32 0, i32 2
  %t9 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %v1, ptr %t5, i64 %t1)
  store i1 %t9, ptr %l8
  br label %bb1
bb1:
  %t10 = load i1, ptr %l8, !tbaa !21
  %t11 = xor i1 %t10, true
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load ptr, ptr %l1, !tbaa !29
  %t15 = getelementptr %"compiler/check:b5aWalk", ptr %t13, i32 0, i32 2
  %t16 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t15, i64 %t16)
  br label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb5
bb5:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebareOwner(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i32
  %l12 = alloca ptr
  %l18 = alloca ptr
  %l19 = alloca i1
  %l29 = alloca i1
  %l36 = alloca { i64, ptr }
  %l38 = alloca i64
  %l45 = alloca i32
  %l49 = alloca ptr
  %l50 = alloca ptr
  %l51 = alloca i64
  %l55 = alloca i32
  %l61 = alloca %"compiler/source:Span"
  %l62 = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t5 = load i64, ptr %l1, !tbaa !24
  %t8 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t4, i64 %t5)
  store ptr %t8, ptr %l12
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l12, !tbaa !29
  store ptr %t9, ptr %l3, !tbaa !29
  %t10 = load ptr, ptr %l3, !tbaa !29
  %t12 = getelementptr %"compiler/ast:Func", ptr %t10, i32 0, i32 9
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t15 = icmp eq ptr %t13, null
  br i1 %t15, label %bb2, label %bb3
bb2:
  call void @__olang_check_failed(ptr @olang_loc_93067ddbc597bc89_6a29d3985cd7da15)
  unreachable
bb3:
  br label %bb4
bb4:
  %t17 = load ptr, ptr %l3, !tbaa !29
  %t19 = getelementptr %"compiler/ast:Func", ptr %t17, i32 0, i32 9
  %t20 = load ptr, ptr %t19, !tbaa !29
  store ptr %t20, ptr %l4, !tbaa !29
  %t22 = load ptr, ptr %l4, !tbaa !29
  store ptr %t22, ptr %l18, !tbaa !29
  store i1 false, ptr %l19, !tbaa !21
  %t23 = load ptr, ptr %l18, !tbaa !29
  %t24 = icmp ne ptr %t23, null
  br i1 %t24, label %bb5, label %bb6
bb5:
  %t26 = load ptr, ptr %l18, !tbaa !29
  %t27 = load i64, ptr %t26, !range !{i64 0, i64 8}
  %t29 = icmp eq i64 %t27, 0
  store i1 %t29, ptr %l19, !tbaa !21
  br label %bb6
bb6:
  %t30 = load i1, ptr %l19, !tbaa !21
  br i1 %t30, label %bb7, label %bb8
bb7:
  %t31 = load ptr, ptr %l4, !tbaa !29
  %t33 = getelementptr { i64, [5 x i64] }, ptr %t31, i32 0, i32 1
  %t34 = getelementptr { %"compiler/source:Span", { i64, ptr }, { i64, ptr } }, ptr %t33, i32 0, i32 1
  %t35 = load { i64, ptr }, ptr %t34
  store { i64, ptr } %t35, ptr %l5, !tbaa !27
  %t37 = load ptr, ptr %l4, !tbaa !29
  %t39 = getelementptr { i64, [5 x i64] }, ptr %t37, i32 0, i32 1
  %t40 = getelementptr { %"compiler/source:Span", { i64, ptr }, { i64, ptr } }, ptr %t39, i32 0, i32 2
  %t41 = load { i64, ptr }, ptr %t40
  store { i64, ptr } %t41, ptr %l6, !tbaa !27
  br label %bb9
bb8:
  br label %bb28
bb9:
  %t43 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t45 = extractvalue { i64, ptr } %t43, 0
  %t47 = icmp eq i64 %t45, 1
  br i1 %t47, label %bb10, label %bb11
bb10:
  %t49 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t51 = extractvalue { i64, ptr } %t49, 0
  %t53 = icmp eq i64 %t51, 0
  store i1 %t53, ptr %l29, !tbaa !21
  br label %bb12
bb11:
  store i1 false, ptr %l29, !tbaa !21
  br label %bb12
bb12:
  %t55 = load i1, ptr %l29, !tbaa !21
  br i1 %t55, label %bb13, label %bb14
bb13:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/check:Checker", ptr %t56, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !29
  %t60 = load i64, ptr %l2, !tbaa !24
  %t61 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t61, ptr %l36, !tbaa !27
  %t62 = getelementptr { i64, ptr }, ptr %l36, i32 0, i32 1
  %t63 = load ptr, ptr %t62, !tbaa !27
  %t64 = getelementptr i32, ptr %t63, i64 0
  %t65 = load i32, ptr %t64, !tbaa !33
  %t69 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeEntry(ptr %v0, ptr %t59, i64 %t60, i32 %t65)
  store i64 %t69, ptr %l38
  br label %bb15
bb14:
  br label %bb28
bb15:
  %t70 = load i64, ptr %l38, !tbaa !24
  store i64 %t70, ptr %l7, !tbaa !24
  %t71 = load i64, ptr %l7, !tbaa !24
  %t73 = icmp slt i64 %t71, 0
  br i1 %t73, label %bb16, label %bb17
bb16:
  br label %ret
bb17:
  br label %bb18
bb18:
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t77 = getelementptr %"compiler/check:Checker", ptr %t75, i32 0, i32 1
  %t78 = load ptr, ptr %t77, !tbaa !29
  %t79 = load i64, ptr %l2, !tbaa !24
  %t80 = load i64, ptr %l7, !tbaa !24
  %t84 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclFor(ptr %v0, ptr %t78, i64 %t79, i64 %t80)
  store i32 %t84, ptr %l45
  br label %bb19
bb19:
  %t85 = load i32, ptr %l45, !tbaa !23
  store i32 %t85, ptr %l8, !tbaa !23
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t87 = load i64, ptr %l2, !tbaa !24
  %t88 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t92 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epush(ptr %v0, ptr %v0, ptr %t86, i64 -1, i64 %t87, i32 %t88, i32 0)
  store ptr %t92, ptr %l49
  br label %bb20
bb20:
  %t93 = load ptr, ptr %l0, !tbaa !29
  store ptr %t93, ptr %l50, !tbaa !29
  %t94 = load i64, ptr %l1, !tbaa !24
  store i64 %t94, ptr %l51, !tbaa !24
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t97 = getelementptr %"compiler/check:Checker", ptr %t95, i32 0, i32 1
  %t98 = load ptr, ptr %t97, !tbaa !29
  %t99 = load i32, ptr %l8, !tbaa !23
  %t102 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSelfType(ptr %v0, ptr %t98, i32 %t99)
  store i32 %t102, ptr %l55
  br label %bb21
bb21:
  %t103 = load ptr, ptr %l3, !tbaa !29
  %t105 = getelementptr %"compiler/ast:Func", ptr %t103, i32 0, i32 9
  %t106 = load ptr, ptr %t105, !tbaa !29
  %t108 = icmp eq ptr %t106, null
  br i1 %t108, label %bb22, label %bb23
bb22:
  call void @__olang_check_failed(ptr @olang_loc_4ca20213168bb222_5f3ef72c14b39e6e)
  unreachable
bb23:
  br label %bb24
bb24:
  %t110 = load ptr, ptr %l3, !tbaa !29
  %t112 = getelementptr %"compiler/ast:Func", ptr %t110, i32 0, i32 9
  %t113 = load ptr, ptr %t112, !tbaa !29
  %t115 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v0, ptr %t113)
  store %"compiler/source:Span" %t115, ptr %l61
  br label %bb25
bb25:
  %t116 = load ptr, ptr %l50, !tbaa !29
  %t117 = load i64, ptr %l51, !tbaa !24
  %t118 = load i32, ptr %l55, !tbaa !23
  %t119 = load %"compiler/source:Span", ptr %l61
  %t120 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eownerWritten(ptr %v0, ptr %t116, i64 %t117, i32 %t118, %"compiler/source:Span" %t119)
  store i1 %t120, ptr %l62
  br label %bb26
bb26:
  %t121 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %t121)
  br label %bb27
bb27:
  br label %bb33
bb28:
  br i1 true, label %bb29, label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb32
bb31:
  br label %bb33
bb32:
  call void @__olang_check_failed(ptr @olang_loc_655cd9fc1ffcaf3a_248026af04f8d7e6)
  unreachable
bb33:
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecallValue(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, ptr %a3, { i64, ptr } %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca i32
  %l6 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l12 = alloca i32
  %l20 = alloca ptr
  %l25 = alloca i1
  %l26 = alloca ptr
  %l28 = alloca %"compiler/source:Span"
  %l29 = alloca ptr
  %l31 = alloca %"compiler/source:Span"
  %l32 = alloca { i64, ptr }
  %l35 = alloca { i64, ptr }
  %l36 = alloca { i64, ptr }
  %l37 = alloca ptr
  %l39 = alloca %"compiler/source:Span"
  %l40 = alloca { i64, ptr }
  %l41 = alloca { i64, ptr }
  %l43 = alloca %"compiler/diagmsg:Msg"
  %l44 = alloca i64
  %l49 = alloca i32
  %l54 = alloca i32
  %l57 = alloca ptr
  %l58 = alloca %"compiler/source:Span"
  %l59 = alloca %"compiler/source:Span"
  %l60 = alloca i32
  %l63 = alloca ptr
  %l64 = alloca { i64, ptr }
  %l68 = alloca ptr
  %l70 = alloca ptr
  %l73 = alloca i32
  %l78 = alloca i32
  %l79 = alloca i64
  %l83 = alloca ptr
  %l86 = alloca i32
  %l91 = alloca i32
  %l92 = alloca i64
  %l93 = alloca ptr
  %l94 = alloca i64
  %l95 = alloca i32
  %l96 = alloca %"compiler/source:Span"
  %l99 = alloca { i64, ptr }
  %l100 = alloca { i64, ptr }
  %l102 = alloca i1
  %l105 = alloca ptr
  %l106 = alloca %"compiler/source:Span"
  %l107 = alloca %"compiler/source:Span"
  %l108 = alloca i64
  %l110 = alloca ptr
  %l111 = alloca { i64, ptr }
  %l114 = alloca { i64, ptr }
  %l118 = alloca ptr
  %l122 = alloca ptr
  %l124 = alloca ptr
  %l127 = alloca ptr
  %l140 = alloca i1
  %l141 = alloca { i64, ptr }
  %l150 = alloca i1
  %l151 = alloca { i64, ptr }
  %l156 = alloca i1
  %l157 = alloca { i64, ptr }
  %l161 = alloca ptr
  %l165 = alloca %"compiler/source:Span"
  %l166 = alloca %"compiler/diagmsg:Msg"
  %l167 = alloca i64
  %l172 = alloca ptr
  %l175 = alloca i1
  %l176 = alloca { i64, ptr }
  %l182 = alloca i1
  %l185 = alloca i32
  %l187 = alloca i32
  %l189 = alloca i1
  %l190 = alloca { i64, ptr }
  %l195 = alloca ptr
  %l198 = alloca %"compiler/source:Span"
  %l199 = alloca %"compiler/diagmsg:Msg"
  %l200 = alloca i64
  %l205 = alloca ptr
  %l206 = alloca ptr
  %l207 = alloca %"compiler/source:Span"
  %l210 = alloca { i64, ptr }
  %l212 = alloca %"compiler/diagmsg:Msg"
  %l213 = alloca i64
  %l218 = alloca ptr
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %rv = alloca ptr
  %t111 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store %"compiler/source:Span" %a2, ptr %l2
  store ptr %a3, ptr %l3
  store { i64, ptr } %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l3, !tbaa !29
  %t4 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t1)
  store i32 %t4, ptr %l12
  br label %bb1
bb1:
  %t5 = load i32, ptr %l12, !tbaa !23
  store i32 %t5, ptr %l5, !tbaa !23
  %t6 = load i32, ptr %l5, !tbaa !23
  %t7 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t10 = icmp eq i32 %t6, %t7
  br i1 %t10, label %bb2, label %bb3
bb2:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t13 = load { i64, ptr }, ptr %l4, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v2, ptr %t12, { i64, ptr } %t13)
  br label %bb4
bb3:
  br label %bb6
bb4:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load %"compiler/source:Span", ptr %l1
  %t20 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t16, %"compiler/source:Span" %t17)
  store ptr %t20, ptr %l20
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s0)
  %t21 = load ptr, ptr %l20, !tbaa !29
  store ptr %t21, ptr %rv
  br label %ret
bb6:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/check:Checker", ptr %t22, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t27 = getelementptr %"compiler/generic:Program", ptr %t25, i32 0, i32 2
  %t28 = load i32, ptr %l5, !tbaa !23
  %t31 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFuncNullable(ptr %v0, ptr %t27, i32 %t28)
  store i1 %t31, ptr %l25
  br label %bb7
bb7:
  %t32 = load i1, ptr %l25, !tbaa !21
  br i1 %t32, label %bb8, label %bb9
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t33 = load ptr, ptr %l0, !tbaa !29
  store ptr %t33, ptr %l26, !tbaa !29
  %t34 = load ptr, ptr %l3, !tbaa !29
  %t36 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t34)
  store %"compiler/source:Span" %t36, ptr %l28
  br label %bb10
bb9:
  br label %bb20
bb10:
  %t37 = load ptr, ptr %l0, !tbaa !29
  store ptr %t37, ptr %l29, !tbaa !29
  %t38 = load ptr, ptr %l3, !tbaa !29
  %t40 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t38)
  store %"compiler/source:Span" %t40, ptr %l31
  br label %bb11
bb11:
  %t41 = load ptr, ptr %l29, !tbaa !29
  %t42 = load %"compiler/source:Span", ptr %l31
  %t43 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t41, %"compiler/source:Span" %t42)
  store { i64, ptr } %t43, ptr %l32
  br label %bb12
bb12:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t45 = load i32, ptr %l5, !tbaa !23
  %t48 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s2, ptr %t44, i32 %t45)
  store { i64, ptr } %t48, ptr %l35
  br label %bb13
bb13:
  %t49 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t50 = extractvalue { i64, ptr } %t49, 0
  %t51 = extractvalue { i64, ptr } %t49, 1
  %t52 = mul i64 %t50, 1
  %t53 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t52)
  call void @llvm.memcpy.p0.p0.i64(ptr %t53, ptr %t51, i64 %t52, i1 false)
  %t54 = insertvalue { i64, ptr } undef, i64 %t50, 0
  %t55 = insertvalue { i64, ptr } %t54, ptr %t53, 1
  store { i64, ptr } %t55, ptr %l36, !tbaa !27
  %t56 = load ptr, ptr %l0, !tbaa !29
  store ptr %t56, ptr %l37, !tbaa !29
  %t57 = load ptr, ptr %l3, !tbaa !29
  %t59 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t57)
  store %"compiler/source:Span" %t59, ptr %l39
  br label %bb14
bb14:
  %t60 = load ptr, ptr %l37, !tbaa !29
  %t61 = load %"compiler/source:Span", ptr %l39
  %t62 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t60, %"compiler/source:Span" %t61)
  store { i64, ptr } %t62, ptr %l40
  br label %bb15
bb15:
  %t63 = load { i64, ptr }, ptr %l40, !tbaa !27
  %t64 = call { i64, ptr } @compiler_2fcheck_2ebangOf(ptr %v0, ptr %s2, { i64, ptr } %t63)
  store { i64, ptr } %t64, ptr %l41
  br label %bb16
bb16:
  %t65 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t66 = extractvalue { i64, ptr } %t65, 0
  %t67 = extractvalue { i64, ptr } %t65, 1
  %t68 = mul i64 %t66, 1
  %t69 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t68)
  call void @llvm.memcpy.p0.p0.i64(ptr %t69, ptr %t67, i64 %t68, i1 false)
  %t70 = insertvalue { i64, ptr } undef, i64 %t66, 0
  %t71 = insertvalue { i64, ptr } %t70, ptr %t69, 1
  %t72 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t73 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t75 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReadMaybeNull(ptr %v0, ptr %s2, ptr %s2, ptr %s2, { i64, ptr } %t72, { i64, ptr } %t73, { i64, ptr } %t71)
  store %"compiler/diagmsg:Msg" %t75, ptr %l43
  br label %bb17
bb17:
  %t76 = load ptr, ptr %l26, !tbaa !29
  %t77 = load %"compiler/source:Span", ptr %l28
  %t78 = load %"compiler/diagmsg:Msg", ptr %l43
  %t79 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s2, ptr %t76, %"compiler/source:Span" %t77, %"compiler/diagmsg:Msg" %t78)
  store i64 %t79, ptr %l44
  br label %bb18
bb18:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"compiler/check:Checker", ptr %t80, i32 0, i32 1
  %t83 = load ptr, ptr %t82, !tbaa !29
  %t85 = getelementptr %"compiler/generic:Program", ptr %t83, i32 0, i32 2
  %t86 = load i32, ptr %l5, !tbaa !23
  %t89 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNonNull(ptr %v0, ptr %t85, i32 %t86)
  store i32 %t89, ptr %l49
  br label %bb19
bb19:
  %t90 = load i32, ptr %l49, !tbaa !23
  store i32 %t90, ptr %l5, !tbaa !23
  call void @__olang_scope_close(ptr %s2)
  br label %bb20
bb20:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t93 = getelementptr %"compiler/check:Checker", ptr %t91, i32 0, i32 1
  %t94 = load ptr, ptr %t93, !tbaa !29
  %t96 = getelementptr %"compiler/generic:Program", ptr %t94, i32 0, i32 2
  %t97 = load i32, ptr %l5, !tbaa !23
  %t100 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t96, i32 %t97)
  store i32 %t100, ptr %l54
  br label %bb21
bb21:
  %t101 = load i32, ptr %l54, !range !{i32 0, i32 33}
  %t103 = trunc i64 21 to i32
  %t104 = icmp eq i32 %t101, %t103
  br i1 %t104, label %bb22, label %bb23
bb22:
  %t106 = load ptr, ptr %l0, !tbaa !29
  store ptr %t106, ptr %l57, !tbaa !29
  %t107 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t107, ptr %l58
  %t108 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t108, ptr %l59
  %t109 = load i32, ptr %l5, !tbaa !23
  store i32 %t109, ptr %l60, !tbaa !23
  %t110 = load ptr, ptr %l3, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t111
  %t112 = getelementptr { i64, [3 x i64] }, ptr %t111, i32 0, i32 0
  store i64 2, ptr %t112
  %t114 = insertvalue { ptr } undef, ptr %t110, 0
  %t115 = getelementptr { i64, [3 x i64] }, ptr %t111, i32 0, i32 1
  store { ptr } %t114, ptr %t115
  %t116 = load { i64, [3 x i64] }, ptr %t111
  %t118 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 32, i64 8)
  store { i64, [3 x i64] } %t116, ptr %t118
  store ptr %t118, ptr %l63, !tbaa !29
  %t119 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t119, ptr %l64, !tbaa !27
  %t120 = icmp sge i64 0, 0
  br i1 %t120, label %bb24, label %bb25
bb23:
  br label %bb29
bb24:
  %t122 = icmp sle i64 0, 1152921504606846975
  br i1 %t122, label %bb26, label %bb27
bb25:
  call void @__olang_check_failed(ptr @olang_loc_c23231398495940d_3184fca2d3133de9)
  unreachable
bb26:
  %t124 = mul i64 0, 8
  %t125 = insertvalue { i64, ptr } undef, i64 0, 0
  %t126 = insertvalue { i64, ptr } %t125, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t127 = load ptr, ptr %l57, !tbaa !29
  %t128 = load %"compiler/source:Span", ptr %l58
  %t129 = load %"compiler/source:Span", ptr %l59
  %t130 = load i32, ptr %l60, !tbaa !23
  %t131 = load ptr, ptr %l63, !tbaa !29
  %t132 = load { i64, ptr }, ptr %l64, !tbaa !27
  %t134 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecallBody(ptr %v0, ptr %v3, ptr %v0, ptr %v2, ptr %v0, ptr %v3, ptr %t127, %"compiler/source:Span" %t128, %"compiler/source:Span" %t129, i32 %t130, ptr %t131, i64 -1, ptr null, { i64, ptr } %t132, { i64, ptr } %t126)
  store ptr %t134, ptr %l68
  br label %bb28
bb27:
  call void @__olang_check_failed(ptr @olang_loc_c23231398495940d_3184fca2d3133de9)
  unreachable
bb28:
  call void @__olang_scope_close(ptr %s0)
  %t135 = load ptr, ptr %l68, !tbaa !29
  store ptr %t135, ptr %rv
  br label %ret
bb29:
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t138 = getelementptr %"compiler/check:Checker", ptr %t136, i32 0, i32 1
  %t139 = load ptr, ptr %t138, !tbaa !29
  store ptr %t139, ptr %l70, !tbaa !29
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t141 = load i32, ptr %l5, !tbaa !23
  %t144 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t140, i32 %t141)
  store i32 %t144, ptr %l73
  br label %bb30
bb30:
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t147 = getelementptr %"compiler/check:Checker", ptr %t145, i32 0, i32 1
  %t148 = load ptr, ptr %t147, !tbaa !29
  %t150 = getelementptr %"compiler/generic:Program", ptr %t148, i32 0, i32 0
  %t151 = load ptr, ptr %t150, !tbaa !29
  %t153 = getelementptr %"compiler/load:Loader", ptr %t151, i32 0, i32 3
  %t154 = load ptr, ptr %t153, !tbaa !29
  %t156 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %s0, ptr %t154, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d0, i32 0, i32 1) })
  store i32 %t156, ptr %l78
  br label %bb31
bb31:
  %t157 = load ptr, ptr %l70, !tbaa !29
  %t158 = load i32, ptr %l73, !tbaa !23
  %t159 = load i32, ptr %l78, !tbaa !23
  %t160 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v0, ptr %t157, i32 %t158, i32 %t159)
  store i64 %t160, ptr %l79
  br label %bb32
bb32:
  %t161 = load i64, ptr %l79, !tbaa !24
  store i64 %t161, ptr %l6, !tbaa !24
  %t162 = load i64, ptr %l6, !tbaa !24
  %t164 = icmp slt i64 %t162, 0
  br i1 %t164, label %bb33, label %bb34
bb33:
  store %olang.scope zeroinitializer, ptr %s4
  %t166 = load ptr, ptr %l0, !tbaa !29
  %t168 = getelementptr %"compiler/check:Checker", ptr %t166, i32 0, i32 1
  %t169 = load ptr, ptr %t168, !tbaa !29
  store ptr %t169, ptr %l83, !tbaa !29
  %t170 = load ptr, ptr %l0, !tbaa !29
  %t171 = load i32, ptr %l5, !tbaa !23
  %t174 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t170, i32 %t171)
  store i32 %t174, ptr %l86
  br label %bb35
bb34:
  br label %bb38
bb35:
  %t175 = load ptr, ptr %l0, !tbaa !29
  %t177 = getelementptr %"compiler/check:Checker", ptr %t175, i32 0, i32 1
  %t178 = load ptr, ptr %t177, !tbaa !29
  %t180 = getelementptr %"compiler/generic:Program", ptr %t178, i32 0, i32 0
  %t181 = load ptr, ptr %t180, !tbaa !29
  %t183 = getelementptr %"compiler/load:Loader", ptr %t181, i32 0, i32 3
  %t184 = load ptr, ptr %t183, !tbaa !29
  %t186 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %s4, ptr %t184, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d1, i32 0, i32 1) })
  store i32 %t186, ptr %l91
  br label %bb36
bb36:
  %t187 = load ptr, ptr %l83, !tbaa !29
  %t188 = load i32, ptr %l86, !tbaa !23
  %t189 = load i32, ptr %l91, !tbaa !23
  %t190 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v0, ptr %t187, i32 %t188, i32 %t189)
  store i64 %t190, ptr %l92
  br label %bb37
bb37:
  %t191 = load i64, ptr %l92, !tbaa !24
  store i64 %t191, ptr %l6, !tbaa !24
  call void @__olang_scope_close(ptr %s4)
  br label %bb38
bb38:
  %t192 = load ptr, ptr %l0, !tbaa !29
  store ptr %t192, ptr %l93, !tbaa !29
  %t193 = load i64, ptr %l6, !tbaa !24
  store i64 %t193, ptr %l94, !tbaa !24
  %t194 = load i32, ptr %l5, !tbaa !23
  store i32 %t194, ptr %l95, !tbaa !23
  %t195 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t195, ptr %l96
  %t196 = load ptr, ptr %l0, !tbaa !29
  %t197 = load %"compiler/source:Span", ptr %l2
  %t200 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t196, %"compiler/source:Span" %t197)
  store { i64, ptr } %t200, ptr %l99
  br label %bb39
bb39:
  %t201 = load { i64, ptr }, ptr %l99, !tbaa !27
  %t202 = call { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %s0, { i64, ptr } %t201)
  store { i64, ptr } %t202, ptr %l100
  br label %bb40
bb40:
  %t203 = load { i64, ptr }, ptr %l100, !tbaa !27
  %t204 = extractvalue { i64, ptr } %t203, 0
  %t205 = extractvalue { i64, ptr } %t203, 1
  %t206 = mul i64 %t204, 1
  %t207 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t206)
  call void @llvm.memcpy.p0.p0.i64(ptr %t207, ptr %t205, i64 %t206, i1 false)
  %t208 = insertvalue { i64, ptr } undef, i64 %t204, 0
  %t209 = insertvalue { i64, ptr } %t208, ptr %t207, 1
  %t210 = load ptr, ptr %l93, !tbaa !29
  %t211 = load i64, ptr %l94, !tbaa !24
  %t212 = load i32, ptr %l95, !tbaa !23
  %t213 = load %"compiler/source:Span", ptr %l96
  %t215 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprivateRole(ptr %v0, ptr %s0, ptr %s0, ptr %t210, i64 %t211, i32 %t212, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d2, i32 0, i32 1) }, %"compiler/source:Span" %t213, { i64, ptr } %t209)
  store i1 %t215, ptr %l102
  br label %bb41
bb41:
  %t216 = load i64, ptr %l6, !tbaa !24
  %t218 = icmp sge i64 %t216, 0
  br i1 %t218, label %bb42, label %bb43
bb42:
  %t220 = load ptr, ptr %l0, !tbaa !29
  store ptr %t220, ptr %l105, !tbaa !29
  %t221 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t221, ptr %l106
  %t222 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t222, ptr %l107
  %t223 = load i64, ptr %l6, !tbaa !24
  store i64 %t223, ptr %l108, !tbaa !24
  %t224 = load ptr, ptr %l3, !tbaa !29
  store ptr %t224, ptr %l110, !tbaa !29
  %t226 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t226, ptr %l111, !tbaa !27
  %t227 = icmp sge i64 0, 0
  br i1 %t227, label %bb44, label %bb45
bb43:
  br label %bb53
bb44:
  %t229 = icmp sle i64 0, 1152921504606846975
  br i1 %t229, label %bb46, label %bb47
bb45:
  call void @__olang_check_failed(ptr @olang_loc_dec816aeadd109e0_adcbe0bcced90c1c)
  unreachable
bb46:
  %t231 = mul i64 0, 8
  %t232 = insertvalue { i64, ptr } undef, i64 0, 0
  %t233 = insertvalue { i64, ptr } %t232, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t233, ptr %l114, !tbaa !27
  %t234 = icmp sge i64 0, 0
  br i1 %t234, label %bb48, label %bb49
bb47:
  call void @__olang_check_failed(ptr @olang_loc_dec816aeadd109e0_adcbe0bcced90c1c)
  unreachable
bb48:
  %t236 = icmp sle i64 0, 2305843009213693951
  br i1 %t236, label %bb50, label %bb51
bb49:
  call void @__olang_check_failed(ptr @olang_loc_98ffdf46f6e43303_7907d8ed59f5817f)
  unreachable
bb50:
  %t238 = mul i64 0, 4
  %t239 = insertvalue { i64, ptr } undef, i64 0, 0
  %t240 = insertvalue { i64, ptr } %t239, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t241 = load ptr, ptr %l105, !tbaa !29
  %t242 = load %"compiler/source:Span", ptr %l106
  %t243 = load %"compiler/source:Span", ptr %l107
  %t244 = load i64, ptr %l108, !tbaa !24
  %t245 = load ptr, ptr %l110, !tbaa !29
  %t246 = load { i64, ptr }, ptr %l111, !tbaa !27
  %t247 = load { i64, ptr }, ptr %l114, !tbaa !27
  %t249 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einvoke(ptr %v0, ptr %v1, ptr %v2, ptr %v0, ptr %v3, ptr %v3, ptr %t241, %"compiler/source:Span" %t242, %"compiler/source:Span" %t243, i64 %t244, ptr %t245, { i64, ptr } %t246, { i64, ptr } %t247, { i64, ptr } %t240)
  store ptr %t249, ptr %l118
  br label %bb52
bb51:
  call void @__olang_check_failed(ptr @olang_loc_98ffdf46f6e43303_7907d8ed59f5817f)
  unreachable
bb52:
  call void @__olang_scope_close(ptr %s0)
  %t250 = load ptr, ptr %l118, !tbaa !29
  store ptr %t250, ptr %rv
  br label %ret
bb53:
  %t251 = load ptr, ptr %l0, !tbaa !29
  %t253 = getelementptr %"compiler/check:Checker", ptr %t251, i32 0, i32 1
  %t254 = load ptr, ptr %t253, !tbaa !29
  %t256 = getelementptr %"compiler/generic:Program", ptr %t254, i32 0, i32 0
  %t257 = load ptr, ptr %t256, !tbaa !29
  %t259 = getelementptr %"compiler/load:Loader", ptr %t257, i32 0, i32 10
  store ptr %t259, ptr %l122, !tbaa !29
  %t260 = load ptr, ptr %l0, !tbaa !29
  %t262 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t260)
  store ptr %t262, ptr %l124
  br label %bb54
bb54:
  %t263 = load ptr, ptr %l124, !tbaa !29
  %t265 = getelementptr %"compiler/check:frame", ptr %t263, i32 0, i32 1
  %t266 = load i64, ptr %t265, !tbaa !24
  %t267 = load ptr, ptr %l122, !tbaa !29
  %t269 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t267, i64 %t266)
  store ptr %t269, ptr %l127
  br label %bb55
bb55:
  %t270 = load ptr, ptr %l127, !tbaa !29
  %t272 = getelementptr %"compiler/load:Module", ptr %t270, i32 0, i32 6
  %t273 = load ptr, ptr %t272, !tbaa !29
  store ptr %t273, ptr %l7, !tbaa !29
  %t275 = load ptr, ptr %l7, !tbaa !29
  %t277 = icmp eq ptr %t275, null
  br i1 %t277, label %bb56, label %bb57
bb56:
  call void @__olang_check_failed(ptr @olang_loc_4b3a1421aaa5396_3ffde41a88bcce4a)
  unreachable
bb57:
  br label %bb58
bb58:
  %t279 = load ptr, ptr %l7, !tbaa !29
  %t282 = getelementptr %"compiler/source:Source", ptr %t279, i32 0, i32 1
  %t283 = load { i64, ptr }, ptr %t282, !tbaa !27
  store { i64, ptr } %t283, ptr %l8, !tbaa !27
  %t285 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t286 = load i32, ptr %t285, !tbaa !23
  %t288 = sext i32 %t286 to i64
  %t290 = sub i64 %t288, 1
  store i64 %t290, ptr %l9, !tbaa !24
  br label %bb59
bb59:
  %t292 = load i64, ptr %l9, !tbaa !24
  %t294 = icmp sgt i64 %t292, 0
  br i1 %t294, label %bb60, label %bb61
bb60:
  %t296 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t296, ptr %l141, !tbaa !27
  %t297 = load i64, ptr %l9, !tbaa !24
  %t299 = getelementptr { i64, ptr }, ptr %l141, i32 0, i32 1
  %t300 = load ptr, ptr %t299, !tbaa !27
  %t301 = getelementptr i8, ptr %t300, i64 %t297
  %t302 = load i8, ptr %t301, !tbaa !32
  %t304 = icmp eq i8 %t302, 32
  store i1 %t304, ptr %l140, !tbaa !21
  br label %bb62
bb61:
  store i1 false, ptr %l140, !tbaa !21
  br label %bb62
bb62:
  %t306 = load i1, ptr %l140, !tbaa !21
  %t307 = xor i1 %t306, true
  br i1 %t307, label %bb63, label %bb64
bb63:
  br label %bb67
bb64:
  br label %bb65
bb65:
  %t309 = load i64, ptr %l9, !tbaa !24
  %t311 = sub i64 %t309, 1
  store i64 %t311, ptr %l9, !tbaa !24
  br label %bb66
bb66:
  br label %bb59
bb67:
  %t313 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t314 = load i32, ptr %t313, !tbaa !23
  %t316 = icmp sgt i32 %t314, 0
  br i1 %t316, label %bb68, label %bb69
bb68:
  %t318 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t318, ptr %l151, !tbaa !27
  %t319 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t320 = load i32, ptr %t319, !tbaa !23
  %t322 = sext i32 %t320 to i64
  %t324 = getelementptr { i64, ptr }, ptr %l151, i32 0, i32 1
  %t325 = load ptr, ptr %t324, !tbaa !27
  %t326 = getelementptr i8, ptr %t325, i64 %t322
  %t327 = load i8, ptr %t326, !tbaa !32
  %t329 = icmp eq i8 %t327, 40
  store i1 %t329, ptr %l150, !tbaa !21
  br label %bb70
bb69:
  store i1 false, ptr %l150, !tbaa !21
  br label %bb70
bb70:
  %t331 = load i1, ptr %l150, !tbaa !21
  br i1 %t331, label %bb71, label %bb72
bb71:
  %t332 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t332, ptr %l157, !tbaa !27
  %t333 = load i64, ptr %l9, !tbaa !24
  %t335 = getelementptr { i64, ptr }, ptr %l157, i32 0, i32 1
  %t336 = load ptr, ptr %t335, !tbaa !27
  %t337 = getelementptr i8, ptr %t336, i64 %t333
  %t338 = load i8, ptr %t337, !tbaa !32
  %t340 = icmp eq i8 %t338, 34
  store i1 %t340, ptr %l156, !tbaa !21
  br label %bb73
bb72:
  store i1 false, ptr %l156, !tbaa !21
  br label %bb73
bb73:
  %t342 = load i1, ptr %l156, !tbaa !21
  br i1 %t342, label %bb74, label %bb75
bb74:
  store %olang.scope zeroinitializer, ptr %s7
  %t343 = load ptr, ptr %l0, !tbaa !29
  store ptr %t343, ptr %l161, !tbaa !29
  %t344 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t345 = load i32, ptr %t344, !tbaa !23
  %t346 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t347 = load i32, ptr %t346, !tbaa !23
  %t349 = add i32 %t347, 1
  %t352 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s7, i32 %t345, i32 %t349)
  store %"compiler/source:Span" %t352, ptr %l165
  br label %bb76
bb75:
  br label %bb81
bb76:
  %t353 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eJoinPieceCalled(ptr %s7)
  store %"compiler/diagmsg:Msg" %t353, ptr %l166
  br label %bb77
bb77:
  %t354 = load ptr, ptr %l161, !tbaa !29
  %t355 = load %"compiler/source:Span", ptr %l165
  %t356 = load %"compiler/diagmsg:Msg", ptr %l166
  %t357 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s7, ptr %t354, %"compiler/source:Span" %t355, %"compiler/diagmsg:Msg" %t356)
  store i64 %t357, ptr %l167
  br label %bb78
bb78:
  %t358 = load ptr, ptr %l0, !tbaa !29
  %t359 = load { i64, ptr }, ptr %l4, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v2, ptr %t358, { i64, ptr } %t359)
  br label %bb79
bb79:
  %t362 = load ptr, ptr %l0, !tbaa !29
  %t363 = load %"compiler/source:Span", ptr %l1
  %t366 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t362, %"compiler/source:Span" %t363)
  store ptr %t366, ptr %l172
  br label %bb80
bb80:
  call void @__olang_scope_close(ptr %s7)
  call void @__olang_scope_close(ptr %s0)
  %t367 = load ptr, ptr %l172, !tbaa !29
  store ptr %t367, ptr %rv
  br label %ret
bb81:
  %t368 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t369 = load i32, ptr %t368, !tbaa !23
  %t371 = icmp sgt i32 %t369, 0
  br i1 %t371, label %bb82, label %bb83
bb82:
  %t373 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t373, ptr %l176, !tbaa !27
  %t374 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t375 = load i32, ptr %t374, !tbaa !23
  %t377 = sext i32 %t375 to i64
  %t379 = sub i64 %t377, 1
  %t381 = getelementptr { i64, ptr }, ptr %l176, i32 0, i32 1
  %t382 = load ptr, ptr %t381, !tbaa !27
  %t383 = getelementptr i8, ptr %t382, i64 %t379
  %t384 = load i8, ptr %t383, !tbaa !32
  %t386 = icmp eq i8 %t384, 36
  br i1 %t386, label %bb84, label %bb85
bb83:
  store i1 false, ptr %l175, !tbaa !21
  br label %bb92
bb84:
  %t388 = load ptr, ptr %l0, !tbaa !29
  %t389 = load i32, ptr %l5, !tbaa !23
  %t392 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t388, i32 %t389)
  store i32 %t392, ptr %l185
  br label %bb86
bb85:
  store i1 false, ptr %l182, !tbaa !21
  br label %bb88
bb86:
  %t393 = load ptr, ptr %l0, !tbaa !29
  %t395 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextType(ptr %v0, ptr %t393)
  store i32 %t395, ptr %l187
  br label %bb87
bb87:
  %t396 = load i32, ptr %l185, !tbaa !23
  %t397 = load i32, ptr %l187, !tbaa !23
  %t398 = icmp eq i32 %t396, %t397
  store i1 %t398, ptr %l182, !tbaa !21
  br label %bb88
bb88:
  %t400 = load i1, ptr %l182, !tbaa !21
  br i1 %t400, label %bb89, label %bb90
bb89:
  store i1 true, ptr %l189, !tbaa !21
  br label %bb91
bb90:
  %t401 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t401, ptr %l190, !tbaa !27
  %t402 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t403 = load i32, ptr %t402, !tbaa !23
  %t405 = sext i32 %t403 to i64
  %t407 = getelementptr { i64, ptr }, ptr %l190, i32 0, i32 1
  %t408 = load ptr, ptr %t407, !tbaa !27
  %t409 = getelementptr i8, ptr %t408, i64 %t405
  %t410 = load i8, ptr %t409, !tbaa !32
  %t412 = icmp eq i8 %t410, 34
  store i1 %t412, ptr %l189, !tbaa !21
  br label %bb91
bb91:
  %t414 = load i1, ptr %l189, !tbaa !21
  store i1 %t414, ptr %l175, !tbaa !21
  br label %bb92
bb92:
  %t415 = load i1, ptr %l175, !tbaa !21
  br i1 %t415, label %bb93, label %bb94
bb93:
  store %olang.scope zeroinitializer, ptr %s8
  %t416 = load ptr, ptr %l0, !tbaa !29
  store ptr %t416, ptr %l195, !tbaa !29
  %t417 = load ptr, ptr %l0, !tbaa !29
  %t418 = load %"compiler/source:Span", ptr %l2
  %t421 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopAfter(ptr %v0, ptr %t417, %"compiler/source:Span" %t418, i64 1)
  store %"compiler/source:Span" %t421, ptr %l198
  br label %bb95
bb94:
  br label %bb100
bb95:
  %t422 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eJoinPieceCalled(ptr %s8)
  store %"compiler/diagmsg:Msg" %t422, ptr %l199
  br label %bb96
bb96:
  %t423 = load ptr, ptr %l195, !tbaa !29
  %t424 = load %"compiler/source:Span", ptr %l198
  %t425 = load %"compiler/diagmsg:Msg", ptr %l199
  %t426 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s8, ptr %t423, %"compiler/source:Span" %t424, %"compiler/diagmsg:Msg" %t425)
  store i64 %t426, ptr %l200
  br label %bb97
bb97:
  %t427 = load ptr, ptr %l0, !tbaa !29
  %t428 = load { i64, ptr }, ptr %l4, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v2, ptr %t427, { i64, ptr } %t428)
  br label %bb98
bb98:
  %t431 = load ptr, ptr %l0, !tbaa !29
  %t432 = load %"compiler/source:Span", ptr %l1
  %t435 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t431, %"compiler/source:Span" %t432)
  store ptr %t435, ptr %l205
  br label %bb99
bb99:
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s0)
  %t436 = load ptr, ptr %l205, !tbaa !29
  store ptr %t436, ptr %rv
  br label %ret
bb100:
  %t437 = load ptr, ptr %l0, !tbaa !29
  store ptr %t437, ptr %l206, !tbaa !29
  %t438 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t438, ptr %l207
  %t439 = load ptr, ptr %l0, !tbaa !29
  %t440 = load i32, ptr %l5, !tbaa !23
  %t443 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s0, ptr %t439, i32 %t440)
  store { i64, ptr } %t443, ptr %l210
  br label %bb101
bb101:
  %t444 = load { i64, ptr }, ptr %l210, !tbaa !27
  %t445 = extractvalue { i64, ptr } %t444, 0
  %t446 = extractvalue { i64, ptr } %t444, 1
  %t447 = mul i64 %t445, 1
  %t448 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t447)
  call void @llvm.memcpy.p0.p0.i64(ptr %t448, ptr %t446, i64 %t447, i1 false)
  %t449 = insertvalue { i64, ptr } undef, i64 %t445, 0
  %t450 = insertvalue { i64, ptr } %t449, ptr %t448, 1
  %t452 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNotCallable(ptr %s0, ptr %s0, { i64, ptr } %t450)
  store %"compiler/diagmsg:Msg" %t452, ptr %l212
  br label %bb102
bb102:
  %t453 = load ptr, ptr %l206, !tbaa !29
  %t454 = load %"compiler/source:Span", ptr %l207
  %t455 = load %"compiler/diagmsg:Msg", ptr %l212
  %t456 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s0, ptr %t453, %"compiler/source:Span" %t454, %"compiler/diagmsg:Msg" %t455)
  store i64 %t456, ptr %l213
  br label %bb103
bb103:
  %t457 = load ptr, ptr %l0, !tbaa !29
  %t458 = load { i64, ptr }, ptr %l4, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v2, ptr %t457, { i64, ptr } %t458)
  br label %bb104
bb104:
  %t461 = load ptr, ptr %l0, !tbaa !29
  %t462 = load %"compiler/source:Span", ptr %l1
  %t465 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t461, %"compiler/source:Span" %t462)
  store ptr %t465, ptr %l218
  br label %bb105
bb105:
  call void @__olang_scope_close(ptr %s0)
  %t466 = load ptr, ptr %l218, !tbaa !29
  store ptr %t466, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local { ptr, i32, i32 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseValue(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, i32 %a3, i32 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca ptr
  %l16 = alloca i1
  %l20 = alloca i1
  %l23 = alloca i1
  %l28 = alloca ptr
  %l30 = alloca i32
  %l35 = alloca ptr
  %l43 = alloca i1
  %l46 = alloca i32
  %l49 = alloca i1
  %l52 = alloca i32
  %l59 = alloca i32
  %l64 = alloca i64
  %l69 = alloca i64
  %l70 = alloca ptr
  %l71 = alloca ptr
  %l72 = alloca i32
  %l74 = alloca %"compiler/source:Span"
  %l75 = alloca ptr
  %l84 = alloca i64
  %l97 = alloca ptr
  %l99 = alloca %"compiler/source:Span"
  %rv = alloca { ptr, i32, i32 }
  store ptr %a0, ptr %l0
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store i32 %a3, ptr %l5, !tbaa !23
  store i32 %a4, ptr %l6, !tbaa !23
  %t5 = load i32, ptr %l6, !tbaa !23
  %t6 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t9 = icmp eq i32 %t5, %t6
  br i1 %t9, label %bb1, label %bb2
bb1:
  %t11 = load i32, ptr %l5, !tbaa !23
  %t12 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t15 = icmp ne i32 %t11, %t12
  store i1 %t15, ptr %l16, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l16, !tbaa !21
  br label %bb3
bb3:
  %t17 = load i1, ptr %l16, !tbaa !21
  br i1 %t17, label %bb4, label %bb5
bb4:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t19 = load ptr, ptr %l2, !tbaa !29
  %t22 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitLike(ptr %v0, ptr %v2, ptr %t18, ptr %t19)
  store i1 %t22, ptr %l23
  br label %bb6
bb5:
  store i1 false, ptr %l20, !tbaa !21
  br label %bb7
bb6:
  %t23 = load i1, ptr %l23, !tbaa !21
  store i1 %t23, ptr %l20, !tbaa !21
  br label %bb7
bb7:
  %t24 = load i1, ptr %l20, !tbaa !21
  br i1 %t24, label %bb8, label %bb9
bb8:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t26 = load ptr, ptr %l2, !tbaa !29
  %t28 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t32 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v2, ptr %v0, ptr %t25, ptr %t26, i32 %t28)
  store ptr %t32, ptr %l28
  br label %bb10
bb9:
  br label %bb12
bb10:
  %t33 = load ptr, ptr %l28, !tbaa !29
  %t35 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t33)
  store i32 %t35, ptr %l30
  br label %bb11
bb11:
  %t36 = load i32, ptr %l30, !tbaa !23
  store i32 %t36, ptr %l6, !tbaa !23
  br label %bb12
bb12:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load ptr, ptr %l2, !tbaa !29
  %t40 = load i32, ptr %l5, !tbaa !23
  %t44 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v2, ptr %v3, ptr %t37, ptr %t38, i32 %t40)
  store ptr %t44, ptr %l35
  br label %bb13
bb13:
  %t45 = load ptr, ptr %l35, !tbaa !29
  store ptr %t45, ptr %l7, !tbaa !29
  %t46 = load i32, ptr %l6, !tbaa !23
  %t47 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t50 = icmp eq i32 %t46, %t47
  br i1 %t50, label %bb14, label %bb15
bb14:
  %t52 = load i32, ptr %l5, !tbaa !23
  store i32 %t52, ptr %l6, !tbaa !23
  br label %bb16
bb15:
  br label %bb16
bb16:
  %t54 = load i32, ptr %l5, !tbaa !23
  %t55 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t58 = icmp eq i32 %t54, %t55
  br i1 %t58, label %bb17, label %bb18
bb17:
  %t60 = load ptr, ptr %l7, !tbaa !29
  %t63 = call i32 @compiler_2fcheck_2etypeOf(ptr %v3, ptr %t60)
  store i32 %t63, ptr %l46
  br label %bb19
bb18:
  store i1 false, ptr %l43, !tbaa !21
  br label %bb20
bb19:
  %t64 = load i32, ptr @G_2ecompiler_2ftypes_2eNullT, !tbaa !23
  %t65 = load i32, ptr %l46, !tbaa !23
  %t67 = icmp ne i32 %t65, %t64
  store i1 %t67, ptr %l43, !tbaa !21
  br label %bb20
bb20:
  %t69 = load i1, ptr %l43, !tbaa !21
  br i1 %t69, label %bb21, label %bb22
bb21:
  %t70 = load ptr, ptr %l7, !tbaa !29
  %t73 = call i32 @compiler_2fcheck_2etypeOf(ptr %v3, ptr %t70)
  store i32 %t73, ptr %l52
  br label %bb23
bb22:
  store i1 false, ptr %l49, !tbaa !21
  br label %bb24
bb23:
  %t74 = load i32, ptr @G_2ecompiler_2ftypes_2eNoreturnT, !tbaa !23
  %t75 = load i32, ptr %l52, !tbaa !23
  %t77 = icmp ne i32 %t75, %t74
  store i1 %t77, ptr %l49, !tbaa !21
  br label %bb24
bb24:
  %t79 = load i1, ptr %l49, !tbaa !21
  br i1 %t79, label %bb25, label %bb26
bb25:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = load ptr, ptr %l7, !tbaa !29
  %t83 = load ptr, ptr %l2, !tbaa !29
  %t88 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efirstValueType(ptr %v0, ptr %v1, ptr %v3, ptr %v2, ptr %t80, ptr %a1, ptr %t82, ptr %t83)
  store i32 %t88, ptr %l59
  br label %bb27
bb26:
  br label %bb28
bb27:
  %t89 = load i32, ptr %l59, !tbaa !23
  store i32 %t89, ptr %l5, !tbaa !23
  br label %bb28
bb28:
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t92 = getelementptr %"compiler/check:Checker", ptr %t90, i32 0, i32 1
  %t93 = load ptr, ptr %t92, !tbaa !29
  %t95 = getelementptr %"compiler/generic:Program", ptr %t93, i32 0, i32 0
  %t96 = load ptr, ptr %t95, !tbaa !29
  %t98 = getelementptr %"compiler/load:Loader", ptr %t96, i32 0, i32 4
  %t99 = load ptr, ptr %t98, !tbaa !29
  %t101 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eCount(ptr %v0, ptr %t99)
  store i64 %t101, ptr %l64
  br label %bb29
bb29:
  %t102 = load i64, ptr %l64, !tbaa !24
  store i64 %t102, ptr %l8, !tbaa !24
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t105 = getelementptr %"compiler/check:Checker", ptr %t103, i32 0, i32 1
  %t106 = load ptr, ptr %t105, !tbaa !29
  %t108 = getelementptr %"compiler/generic:Program", ptr %t106, i32 0, i32 0
  %t109 = load ptr, ptr %t108, !tbaa !29
  %t111 = getelementptr %"compiler/load:Loader", ptr %t109, i32 0, i32 4
  %t112 = load ptr, ptr %t111, !tbaa !29
  %t114 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eHold(ptr %v0, ptr %t112)
  store i64 %t114, ptr %l69
  br label %bb30
bb30:
  %t115 = load i64, ptr %l69, !tbaa !24
  store i64 %t115, ptr %l9, !tbaa !24
  %t116 = load ptr, ptr %l0, !tbaa !29
  store ptr %t116, ptr %l70, !tbaa !29
  %t117 = load ptr, ptr %l7, !tbaa !29
  store ptr %t117, ptr %l71, !tbaa !29
  %t118 = load i32, ptr %l5, !tbaa !23
  store i32 %t118, ptr %l72, !tbaa !23
  %t119 = load ptr, ptr %l2, !tbaa !29
  %t121 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %t119)
  store %"compiler/source:Span" %t121, ptr %l74
  br label %bb31
bb31:
  %t122 = load ptr, ptr %l70, !tbaa !29
  %t123 = load ptr, ptr %l71, !tbaa !29
  %t124 = load i32, ptr %l72, !tbaa !23
  %t125 = load %"compiler/source:Span", ptr %l74
  %t126 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v3, ptr %v3, ptr %t122, ptr %t123, i32 %t124, %"compiler/source:Span" %t125)
  store ptr %t126, ptr %l75
  br label %bb32
bb32:
  %t127 = load ptr, ptr %l75, !tbaa !29
  store ptr %t127, ptr %l10, !tbaa !29
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t130 = getelementptr %"compiler/check:Checker", ptr %t128, i32 0, i32 1
  %t131 = load ptr, ptr %t130, !tbaa !29
  %t133 = getelementptr %"compiler/generic:Program", ptr %t131, i32 0, i32 0
  %t134 = load ptr, ptr %t133, !tbaa !29
  %t136 = getelementptr %"compiler/load:Loader", ptr %t134, i32 0, i32 4
  %t137 = load ptr, ptr %t136, !tbaa !29
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eEndHold(ptr %v0, ptr %t137)
  br label %bb33
bb33:
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t141 = getelementptr %"compiler/check:Checker", ptr %t139, i32 0, i32 1
  %t142 = load ptr, ptr %t141, !tbaa !29
  %t144 = getelementptr %"compiler/generic:Program", ptr %t142, i32 0, i32 0
  %t145 = load ptr, ptr %t144, !tbaa !29
  %t147 = getelementptr %"compiler/load:Loader", ptr %t145, i32 0, i32 4
  %t148 = load ptr, ptr %t147, !tbaa !29
  %t150 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eCount(ptr %v0, ptr %t148)
  store i64 %t150, ptr %l84
  br label %bb34
bb34:
  %t151 = load i64, ptr %l8, !tbaa !24
  %t152 = load i64, ptr %l84, !tbaa !24
  %t154 = icmp eq i64 %t152, %t151
  br i1 %t154, label %bb35, label %bb36
bb35:
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t158 = getelementptr %"compiler/check:Checker", ptr %t156, i32 0, i32 1
  %t159 = load ptr, ptr %t158, !tbaa !29
  %t161 = getelementptr %"compiler/generic:Program", ptr %t159, i32 0, i32 0
  %t162 = load ptr, ptr %t161, !tbaa !29
  %t164 = getelementptr %"compiler/load:Loader", ptr %t162, i32 0, i32 4
  %t165 = load ptr, ptr %t164, !tbaa !29
  %t166 = load i64, ptr %l9, !tbaa !24
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eChoose(ptr %v0, ptr %t165, i64 %t166)
  br label %bb37
bb36:
  %t169 = load ptr, ptr %l0, !tbaa !29
  %t171 = getelementptr %"compiler/check:Checker", ptr %t169, i32 0, i32 1
  %t172 = load ptr, ptr %t171, !tbaa !29
  %t174 = getelementptr %"compiler/generic:Program", ptr %t172, i32 0, i32 0
  %t175 = load ptr, ptr %t174, !tbaa !29
  %t177 = getelementptr %"compiler/load:Loader", ptr %t175, i32 0, i32 4
  %t178 = load ptr, ptr %t177, !tbaa !29
  %t179 = load i64, ptr %l9, !tbaa !24
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eDrop(ptr %v0, ptr %t178, i64 %t179)
  br label %bb38
bb37:
  br label %bb41
bb38:
  %t182 = load ptr, ptr %l0, !tbaa !29
  store ptr %t182, ptr %l97, !tbaa !29
  %t183 = load ptr, ptr %l2, !tbaa !29
  %t185 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %t183)
  store %"compiler/source:Span" %t185, ptr %l99
  br label %bb39
bb39:
  %t186 = load i32, ptr %l6, !tbaa !23
  %t187 = load i32, ptr %l5, !tbaa !23
  %t188 = load ptr, ptr %l10, !tbaa !29
  %t189 = load ptr, ptr %l97, !tbaa !29
  %t190 = load %"compiler/source:Span", ptr %l99
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ematchValueMismatch(ptr %v0, ptr %v3, ptr %t189, %"compiler/source:Span" %t190, i32 %t186, i32 %t187, ptr %t188)
  br label %bb40
bb40:
  br label %bb41
bb41:
  %t194 = load ptr, ptr %l10, !tbaa !29
  %t195 = load i32, ptr %l5, !tbaa !23
  %t196 = load i32, ptr %l6, !tbaa !23
  %t198 = insertvalue { ptr, i32, i32 } undef, ptr %t194, 0
  %t200 = insertvalue { ptr, i32, i32 } %t198, i32 %t195, 1
  %t202 = insertvalue { ptr, i32, i32 } %t200, i32 %t196, 2
  store { ptr, i32, i32 } %t202, ptr %rv
  br label %ret
ret:
  %rr = load { ptr, i32, i32 }, ptr %rv
  ret { ptr, i32, i32 } %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaught(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i32
  %l14 = alloca i32
  %l15 = alloca ptr
  %l16 = alloca i64
  %l19 = alloca ptr
  %l20 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l24 = alloca i64
  %l28 = alloca i64
  %l31 = alloca i64
  %l52 = alloca i32
  %l61 = alloca i32
  %l75 = alloca i64
  %l77 = alloca i64
  %l82 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t1)
  store ptr %t3, ptr %l19
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l19, !tbaa !29
  store ptr %t4, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %l20
  br label %bb2
bb2:
  %t6 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l20
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %l6
  %t7 = load i64, ptr %l1, !tbaa !24
  store i64 %t7, ptr %l7, !tbaa !24
  %t9 = load ptr, ptr %l4, !tbaa !29
  %t11 = getelementptr %"compiler/check:frame", ptr %t9, i32 0, i32 28
  %t13 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t11)
  store i64 %t13, ptr %l24
  br label %bb3
bb3:
  %t14 = load i64, ptr %l24, !tbaa !24
  store i64 %t14, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t15 = load i64, ptr %l8, !tbaa !24
  %t16 = load i64, ptr %l7, !tbaa !24
  %t19 = icmp sgt i64 %t15, %t16
  br i1 %t19, label %bb4, label %bb5
bb4:
  %t21 = load i64, ptr %l9, !tbaa !24
  %t23 = icmp sgt i64 %t21, 0
  br i1 %t23, label %bb6, label %bb7
bb5:
  store i64 0, ptr %l28, !tbaa !24
  br label %bb9
bb6:
  %t25 = load i64, ptr %l8, !tbaa !24
  %t26 = load i64, ptr %l7, !tbaa !24
  %t29 = sub i64 %t25, %t26
  %t30 = load i64, ptr %l9, !tbaa !24
  %t33 = add i64 %t29, %t30
  %t35 = sub i64 %t33, 1
  %t36 = load i64, ptr %l9, !tbaa !24
  %t39 = sdiv i64 %t35, %t36
  store i64 %t39, ptr %l31, !tbaa !24
  br label %bb8
bb7:
  store i64 0, ptr %l31, !tbaa !24
  br label %bb8
bb8:
  %t41 = load i64, ptr %l31, !tbaa !24
  store i64 %t41, ptr %l28, !tbaa !24
  br label %bb9
bb9:
  %t42 = load i64, ptr %l28, !tbaa !24
  store i64 %t42, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb10
bb10:
  %t43 = load i64, ptr %l11, !tbaa !24
  %t44 = load i64, ptr %l10, !tbaa !24
  %t47 = icmp slt i64 %t43, %t44
  %t49 = xor i1 %t47, true
  br i1 %t49, label %bb11, label %bb12
bb11:
  br label %bb25
bb12:
  br label %bb13
bb13:
  %t51 = load i64, ptr %l7, !tbaa !24
  %t52 = load i64, ptr %l11, !tbaa !24
  %t53 = load i64, ptr %l9, !tbaa !24
  %t56 = mul i64 %t52, %t53
  %t59 = add i64 %t51, %t56
  store i64 %t59, ptr %l12, !tbaa !24
  %t61 = load ptr, ptr %l4, !tbaa !29
  %t63 = getelementptr %"compiler/check:frame", ptr %t61, i32 0, i32 28
  %t64 = load i64, ptr %l12, !tbaa !24
  %t67 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t63, i64 %t64)
  store i32 %t67, ptr %l52
  br label %bb14
bb14:
  %t68 = load i32, ptr %l52, !tbaa !23
  store i32 %t68, ptr %l13, !tbaa !23
  %t69 = load i64, ptr %l12, !tbaa !24
  %t73 = icmp sge i64 %t69, %a2
  br i1 %t73, label %bb15, label %bb16
bb15:
  %t75 = load i32, ptr %l13, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %l6, i32 %t75)
  br label %bb17
bb16:
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t79 = load i32, ptr %l13, !tbaa !23
  %t84 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eleft(ptr %v0, ptr %v1, ptr %t78, i32 %t79, ptr %a3)
  store i32 %t84, ptr %l61
  br label %bb18
bb17:
  br label %bb23
bb18:
  %t85 = load i32, ptr %l61, !tbaa !23
  store i32 %t85, ptr %l14, !tbaa !23
  %t86 = load i32, ptr %l14, !tbaa !23
  %t87 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t90 = icmp ne i32 %t86, %t87
  br i1 %t90, label %bb19, label %bb20
bb19:
  %t92 = load i32, ptr %l14, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %l6, i32 %t92)
  br label %bb21
bb20:
  br label %bb22
bb21:
  %t95 = load i64, ptr %l5, !tbaa !24
  %t97 = add i64 %t95, 1
  store i64 %t97, ptr %l5, !tbaa !24
  br label %bb22
bb22:
  br label %bb23
bb23:
  br label %bb24
bb24:
  %t99 = load i64, ptr %l11, !tbaa !24
  %t101 = add i64 %t99, 1
  store i64 %t101, ptr %l11, !tbaa !24
  br label %bb10
bb25:
  %t103 = load ptr, ptr %l4, !tbaa !29
  %t105 = getelementptr %"compiler/check:frame", ptr %t103, i32 0, i32 28
  %t106 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eTruncate_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t105, i64 %t106)
  br label %bb26
bb26:
  store ptr %l6, ptr %l15, !tbaa !29
  store i64 0, ptr %l16, !tbaa !24
  br label %bb27
bb27:
  %t110 = load i64, ptr %l16, !tbaa !24
  store i64 %t110, ptr %l75, !tbaa !24
  %t111 = load ptr, ptr %l15, !tbaa !29
  %t113 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %t111)
  store i64 %t113, ptr %l77
  br label %bb28
bb28:
  %t114 = load i64, ptr %l75, !tbaa !24
  %t115 = load i64, ptr %l77, !tbaa !24
  %t116 = icmp slt i64 %t114, %t115
  %t118 = xor i1 %t116, true
  br i1 %t118, label %bb29, label %bb30
bb29:
  br label %bb35
bb30:
  br label %bb31
bb31:
  %t120 = load ptr, ptr %l15, !tbaa !29
  %t121 = load i64, ptr %l16, !tbaa !24
  %t124 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %t120, i64 %t121)
  store i32 %t124, ptr %l82
  br label %bb32
bb32:
  %t125 = load i32, ptr %l82, !tbaa !23
  %t126 = load ptr, ptr %l4, !tbaa !29
  %t128 = getelementptr %"compiler/check:frame", ptr %t126, i32 0, i32 28
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t128, i32 %t125)
  br label %bb33
bb33:
  br label %bb34
bb34:
  %t132 = load i64, ptr %l16, !tbaa !24
  %t134 = add i64 %t132, 1
  store i64 %t134, ptr %l16, !tbaa !24
  br label %bb27
bb35:
  %t136 = load i64, ptr %l5, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t136, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecolumnsFields(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca %"compiler/source:Span"
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca ptr
  %lp17 = alloca ptr
  %l18 = alloca i64
  %l22 = alloca i32
  %l24 = alloca ptr
  %l26 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l28 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l30 = alloca i64
  %l32 = alloca i1
  %l35 = alloca i1
  %l37 = alloca i1
  %l41 = alloca i1
  %l44 = alloca i32
  %l47 = alloca i32
  %l50 = alloca ptr
  %l52 = alloca i32
  %l53 = alloca %"compiler/typed:Local"
  %l57 = alloca ptr
  %l62 = alloca i32
  %l63 = alloca { i64, ptr }
  %l67 = alloca { i64, ptr }
  %l70 = alloca ptr
  %l75 = alloca i32
  %l76 = alloca { i64, ptr }
  %l81 = alloca i64
  %l84 = alloca i64
  %l88 = alloca i64
  %l91 = alloca i64
  %l109 = alloca ptr
  %l110 = alloca %"compiler/source:Span"
  %l111 = alloca %"compiler/source:Span"
  %l112 = alloca { i64, ptr }
  %l114 = alloca i32
  %l115 = alloca %"compiler/source:Span"
  %l118 = alloca i32
  %l127 = alloca ptr
  %l129 = alloca { i64, ptr }
  %l132 = alloca i1
  %l139 = alloca i1
  %l140 = alloca %"compiler/source:Span"
  %l141 = alloca { i64, ptr }
  %l143 = alloca i32
  %l144 = alloca i32
  %l147 = alloca { i64, ptr }
  %l151 = alloca ptr
  %l152 = alloca ptr
  %l156 = alloca i32
  %l158 = alloca %"compiler/typed:Make"
  %l165 = alloca { i64, ptr }
  %l170 = alloca i64
  %l180 = alloca ptr
  %s0 = alloca %olang.scope
  %t198 = alloca { i64, [4 x i64] }, align 8
  %t211 = alloca { i64, [4 x i64] }, align 8
  %t289 = alloca { i64, [5 x i64] }, align 8
  %t317 = alloca { i64, [1 x i64] }, align 8
  %t335 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t5 = load i32, ptr %l1, !tbaa !23
  %t8 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eColumnsRow(ptr %v0, ptr %t4, i32 %t5)
  store i32 %t8, ptr %l22
  br label %bb1
bb1:
  %t9 = load i32, ptr %l22, !tbaa !23
  store i32 %t9, ptr %l2, !tbaa !23
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t10)
  store ptr %t12, ptr %l24
  br label %bb2
bb2:
  %t13 = load ptr, ptr %l24, !tbaa !29
  %t15 = getelementptr %"compiler/typed:Body", ptr %t13, i32 0, i32 5
  %t16 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t15
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t16, ptr %l26
  %t18 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e(ptr %s0, ptr %l26)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t18, ptr %l28
  br label %bb3
bb3:
  %t19 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l28
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t19, ptr %l3
  %t21 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %s0, ptr %l3)
  store i64 %t21, ptr %l30
  br label %bb4
bb4:
  %t22 = load i64, ptr %l30, !tbaa !24
  %t23 = icmp slt i64 %t22, 2
  br i1 %t23, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l32, !tbaa !21
  br label %bb8
bb6:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t26 = load i32, ptr %l2, !tbaa !23
  %t29 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisStruct(ptr %v0, ptr %t25, i32 %t26)
  store i1 %t29, ptr %l35
  br label %bb7
bb7:
  %t30 = load i1, ptr %l35, !tbaa !21
  %t31 = xor i1 %t30, true
  store i1 %t31, ptr %l32, !tbaa !21
  br label %bb8
bb8:
  %t33 = load i1, ptr %l32, !tbaa !21
  br i1 %t33, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l37, !tbaa !21
  br label %bb12
bb10:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/check:Checker", ptr %t34, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !29
  %t38 = load i32, ptr %l2, !tbaa !23
  %t41 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %t37, i32 %t38)
  store i1 %t41, ptr %l41
  br label %bb11
bb11:
  %t42 = load i1, ptr %l41, !tbaa !21
  %t43 = xor i1 %t42, true
  store i1 %t43, ptr %l37, !tbaa !21
  br label %bb12
bb12:
  %t45 = load i1, ptr %l37, !tbaa !21
  br i1 %t45, label %bb13, label %bb14
bb13:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb14:
  br label %bb15
bb15:
  %t47 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %s0, ptr %l3, i64 0)
  store i32 %t47, ptr %l44
  br label %bb16
bb16:
  %t48 = load i32, ptr %l44, !tbaa !23
  %t49 = sext i32 %t48 to i64
  store i64 %t49, ptr %l4, !tbaa !24
  %t52 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %s0, ptr %l3, i64 1)
  store i32 %t52, ptr %l47
  br label %bb17
bb17:
  %t53 = load i32, ptr %l47, !tbaa !23
  %t54 = sext i32 %t53 to i64
  store i64 %t54, ptr %l5, !tbaa !24
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t56)
  store ptr %t58, ptr %l50
  br label %bb18
bb18:
  %t60 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %s0, ptr %l3, i64 0)
  store i32 %t60, ptr %l52
  br label %bb19
bb19:
  %t61 = load ptr, ptr %l50, !tbaa !29
  %t62 = load i32, ptr %l52, !tbaa !23
  %t63 = call %"compiler/typed:Local" @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eLocal(ptr %v0, ptr %t61, i32 %t62)
  store %"compiler/typed:Local" %t63, ptr %l53
  br label %bb20
bb20:
  %t64 = getelementptr %"compiler/typed:Local", ptr %l53, i32 0, i32 1
  %t65 = load %"compiler/source:Span", ptr %t64
  store %"compiler/source:Span" %t65, ptr %l6
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr %"compiler/check:Checker", ptr %t67, i32 0, i32 1
  %t70 = load ptr, ptr %t69, !tbaa !29
  %t72 = getelementptr %"compiler/generic:Program", ptr %t70, i32 0, i32 2
  store ptr %t72, ptr %l57, !tbaa !29
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/check:Checker", ptr %t73, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !29
  %t78 = getelementptr %"compiler/generic:Program", ptr %t76, i32 0, i32 2
  %t79 = load i32, ptr %l1, !tbaa !23
  %t82 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t78, i32 %t79)
  store i32 %t82, ptr %l62
  br label %bb21
bb21:
  %t83 = load ptr, ptr %l57, !tbaa !29
  %t84 = load i32, ptr %l62, !tbaa !23
  %t85 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t83, i32 %t84)
  store { i64, ptr } %t85, ptr %l63
  br label %bb22
bb22:
  %t86 = load { i64, ptr }, ptr %l63, !tbaa !27
  store { i64, ptr } %t86, ptr %l7, !tbaa !27
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr %"compiler/check:Checker", ptr %t87, i32 0, i32 1
  %t90 = load ptr, ptr %t89, !tbaa !29
  %t91 = load i32, ptr %l1, !tbaa !23
  %t94 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFieldNames(ptr %v0, ptr %s0, ptr %t90, i32 %t91)
  store { i64, ptr } %t94, ptr %l67
  br label %bb23
bb23:
  %t95 = load { i64, ptr }, ptr %l67, !tbaa !27
  store { i64, ptr } %t95, ptr %l8, !tbaa !27
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t98 = getelementptr %"compiler/check:Checker", ptr %t96, i32 0, i32 1
  %t99 = load ptr, ptr %t98, !tbaa !29
  %t101 = getelementptr %"compiler/generic:Program", ptr %t99, i32 0, i32 2
  store ptr %t101, ptr %l70, !tbaa !29
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t104 = getelementptr %"compiler/check:Checker", ptr %t102, i32 0, i32 1
  %t105 = load ptr, ptr %t104, !tbaa !29
  %t107 = getelementptr %"compiler/generic:Program", ptr %t105, i32 0, i32 2
  %t108 = load i32, ptr %l2, !tbaa !23
  %t111 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t107, i32 %t108)
  store i32 %t111, ptr %l75
  br label %bb24
bb24:
  %t112 = load ptr, ptr %l70, !tbaa !29
  %t113 = load i32, ptr %l75, !tbaa !23
  %t114 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t112, i32 %t113)
  store { i64, ptr } %t114, ptr %l76
  br label %bb25
bb25:
  %t115 = load { i64, ptr }, ptr %l76, !tbaa !27
  store { i64, ptr } %t115, ptr %l9, !tbaa !27
  store i64 0, ptr %l10, !tbaa !24
  %t116 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t118 = extractvalue { i64, ptr } %t116, 0
  %t119 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t121 = extractvalue { i64, ptr } %t119, 0
  %t124 = call i64 @std_2fprelude_2fnumber_2eI64_2eMin_3cI64_3e(i64 %t118, i64 %t121)
  store i64 %t124, ptr %l81
  br label %bb26
bb26:
  %t125 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t127 = extractvalue { i64, ptr } %t125, 0
  %t128 = load i64, ptr %l81, !tbaa !24
  %t130 = call i64 @std_2fprelude_2fnumber_2eI64_2eMin_3cI64_3e(i64 %t128, i64 %t127)
  store i64 %t130, ptr %l84
  br label %bb27
bb27:
  %t131 = load i64, ptr %l84, !tbaa !24
  store i64 %t131, ptr %l11, !tbaa !24
  store i64 1, ptr %l12, !tbaa !24
  %t132 = load i64, ptr %l11, !tbaa !24
  %t133 = load i64, ptr %l10, !tbaa !24
  %t136 = icmp sgt i64 %t132, %t133
  br i1 %t136, label %bb28, label %bb29
bb28:
  %t138 = load i64, ptr %l12, !tbaa !24
  %t140 = icmp sgt i64 %t138, 0
  br i1 %t140, label %bb30, label %bb31
bb29:
  store i64 0, ptr %l88, !tbaa !24
  br label %bb33
bb30:
  %t142 = load i64, ptr %l11, !tbaa !24
  %t143 = load i64, ptr %l10, !tbaa !24
  %t146 = sub i64 %t142, %t143
  %t147 = load i64, ptr %l12, !tbaa !24
  %t150 = add i64 %t146, %t147
  %t152 = sub i64 %t150, 1
  %t153 = load i64, ptr %l12, !tbaa !24
  %t156 = sdiv i64 %t152, %t153
  store i64 %t156, ptr %l91, !tbaa !24
  br label %bb32
bb31:
  store i64 0, ptr %l91, !tbaa !24
  br label %bb32
bb32:
  %t158 = load i64, ptr %l91, !tbaa !24
  store i64 %t158, ptr %l88, !tbaa !24
  br label %bb33
bb33:
  %t159 = load i64, ptr %l88, !tbaa !24
  store i64 %t159, ptr %l13, !tbaa !24
  store i64 0, ptr %l14, !tbaa !24
  br label %bb34
bb34:
  %t160 = load i64, ptr %l14, !tbaa !24
  %t161 = load i64, ptr %l13, !tbaa !24
  %t164 = icmp slt i64 %t160, %t161
  %t166 = xor i1 %t164, true
  br i1 %t166, label %bb35, label %bb36
bb35:
  br label %bb55
bb36:
  br label %bb37
bb37:
  %t168 = load i64, ptr %l10, !tbaa !24
  %t169 = load i64, ptr %l14, !tbaa !24
  %t170 = load i64, ptr %l12, !tbaa !24
  %t173 = mul i64 %t169, %t170
  %t176 = add i64 %t168, %t173
  store i64 %t176, ptr %l15, !tbaa !24
  %t178 = load ptr, ptr %l0, !tbaa !29
  store ptr %t178, ptr %l109, !tbaa !29
  %t179 = load %"compiler/source:Span", ptr %l6
  store %"compiler/source:Span" %t179, ptr %l110
  %t180 = load %"compiler/source:Span", ptr %l6
  store %"compiler/source:Span" %t180, ptr %l111
  %t181 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t181, ptr %l112, !tbaa !27
  %t182 = load i64, ptr %l15, !tbaa !24
  %t184 = getelementptr { i64, ptr }, ptr %l112, i32 0, i32 1
  %t185 = load ptr, ptr %t184, !tbaa !27
  %t186 = getelementptr i32, ptr %t185, i64 %t182
  %t187 = load i32, ptr %t186, !tbaa !33
  store i32 %t187, ptr %l114, !tbaa !23
  %t188 = load %"compiler/source:Span", ptr %l6
  store %"compiler/source:Span" %t188, ptr %l115
  %t189 = load ptr, ptr %l0, !tbaa !29
  %t190 = load i64, ptr %l5, !tbaa !24
  %t193 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalType(ptr %v0, ptr %t189, i64 %t190)
  store i32 %t193, ptr %l118
  br label %bb38
bb38:
  %t194 = load i64, ptr %l5, !tbaa !24
  %t196 = trunc i64 %t194 to i32
  store { i64, [4 x i64] } zeroinitializer, ptr %t198
  %t199 = getelementptr { i64, [4 x i64] }, ptr %t198, i32 0, i32 0
  store i64 0, ptr %t199
  %t200 = load %"compiler/source:Span", ptr %l115
  %t201 = insertvalue { %"compiler/source:Span", i32, i32 } undef, %"compiler/source:Span" %t200, 0
  %t202 = load i32, ptr %l118, !tbaa !23
  %t203 = insertvalue { %"compiler/source:Span", i32, i32 } %t201, i32 %t202, 1
  %t205 = insertvalue { %"compiler/source:Span", i32, i32 } %t203, i32 %t196, 2
  %t206 = getelementptr { i64, [4 x i64] }, ptr %t198, i32 0, i32 1
  store { %"compiler/source:Span", i32, i32 } %t205, ptr %t206
  %t207 = load { i64, [4 x i64] }, ptr %t198
  %t209 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store { i64, [4 x i64] } %t207, ptr %t209
  %t210 = load i64, ptr %l15, !tbaa !24
  store { i64, [4 x i64] } zeroinitializer, ptr %t211
  %t212 = getelementptr { i64, [4 x i64] }, ptr %t211, i32 0, i32 0
  store i64 3, ptr %t212
  %t213 = load %"compiler/source:Span", ptr %l111
  %t214 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } undef, %"compiler/source:Span" %t213, 0
  %t215 = load i32, ptr %l114, !tbaa !23
  %t216 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t214, i32 %t215, 1
  %t218 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t216, ptr %t209, 2
  %t220 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t218, i64 %t210, 3
  %t221 = getelementptr { i64, [4 x i64] }, ptr %t211, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr, i64 } %t220, ptr %t221
  %t222 = load { i64, [4 x i64] }, ptr %t211
  %t224 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store { i64, [4 x i64] } %t222, ptr %t224
  %t225 = load ptr, ptr %l109, !tbaa !29
  %t226 = load %"compiler/source:Span", ptr %l110
  %t228 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v0, ptr %v0, ptr %t225, %"compiler/source:Span" %t226, ptr %t224)
  store ptr %t228, ptr %l127
  br label %bb39
bb39:
  %t229 = load ptr, ptr %l127, !tbaa !29
  store ptr %t229, ptr %l16, !tbaa !29
  %t230 = load ptr, ptr %l0, !tbaa !29
  %t231 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t231, ptr %l129, !tbaa !27
  %t232 = load i64, ptr %l15, !tbaa !24
  %t234 = getelementptr { i64, ptr }, ptr %l129, i32 0, i32 1
  %t235 = load ptr, ptr %t234, !tbaa !27
  %t236 = getelementptr i32, ptr %t235, i64 %t232
  %t237 = load i32, ptr %t236, !tbaa !33
  %t240 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t230, i32 %t237)
  store i1 %t240, ptr %l132
  br label %bb40
bb40:
  %t241 = load i1, ptr %l132, !tbaa !21
  %t242 = xor i1 %t241, true
  br i1 %t242, label %bb41, label %bb42
bb41:
  %t244 = load ptr, ptr %l0, !tbaa !29
  %t245 = load ptr, ptr %l16, !tbaa !29
  %t247 = load %"compiler/source:Span", ptr %l6
  %t248 = load i64, ptr @G_2ecompiler_2fcheck_2eRoStored, !tbaa !24
  %t253 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroStore(ptr %v0, ptr %v0, ptr %t244, ptr %t245, %"compiler/source:Span" %t247, i64 %t248)
  store i1 %t253, ptr %l139
  br label %bb43
bb42:
  br label %bb44
bb43:
  br label %bb44
bb44:
  %t254 = load %"compiler/source:Span", ptr %l6
  store %"compiler/source:Span" %t254, ptr %l140
  %t255 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t255, ptr %l141, !tbaa !27
  %t256 = load i64, ptr %l15, !tbaa !24
  %t258 = getelementptr { i64, ptr }, ptr %l141, i32 0, i32 1
  %t259 = load ptr, ptr %t258, !tbaa !27
  %t260 = getelementptr i32, ptr %t259, i64 %t256
  %t261 = load i32, ptr %t260, !tbaa !33
  store i32 %t261, ptr %l143, !tbaa !23
  store i32 3, ptr %l144
  %t262 = load ptr, ptr %l0, !tbaa !29
  %t263 = load ptr, ptr %l16, !tbaa !29
  %t266 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eone(ptr %v0, ptr %v0, ptr %v0, ptr %t262, ptr %t263)
  store { i64, ptr } %t266, ptr %l147
  br label %bb45
bb45:
  %t267 = load ptr, ptr %l0, !tbaa !29
  %t268 = load %"compiler/source:Span", ptr %l6
  %t269 = load i64, ptr %l4, !tbaa !24
  %t273 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t267, %"compiler/source:Span" %t268, i64 %t269)
  store ptr %t273, ptr %l151
  br label %bb46
bb46:
  %t274 = load ptr, ptr %l151, !tbaa !29
  store ptr %t274, ptr %l152, !tbaa !29
  %t275 = load ptr, ptr %l0, !tbaa !29
  %t276 = load %"compiler/source:Span", ptr %l6
  %t280 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esite(ptr %v0, ptr %t275, i32 1, %"compiler/source:Span" %t276)
  store i32 %t280, ptr %l156
  br label %bb47
bb47:
  %t281 = load i32, ptr %l144, !range !{i32 0, i32 5}
  %t282 = load { i64, ptr }, ptr %l147, !tbaa !27
  %t283 = load ptr, ptr %l152, !tbaa !29
  %t284 = load i32, ptr %l156, !tbaa !23
  %t286 = call %"compiler/typed:Make" @compiler_2ftyped_3aMake_2ector(ptr %v0, ptr %v0, ptr %v0, i32 %t281, i64 0, { i64, ptr } %t282, ptr %t283, i32 %t284, i32 1, i1 false)
  store %"compiler/typed:Make" %t286, ptr %l158
  br label %bb48
bb48:
  %t287 = load %"compiler/typed:Make", ptr %l158
  %t288 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 56, i64 8)
  store %"compiler/typed:Make" %t287, ptr %t288
  store { i64, [5 x i64] } zeroinitializer, ptr %t289
  %t290 = getelementptr { i64, [5 x i64] }, ptr %t289, i32 0, i32 0
  store i64 7, ptr %t290
  %t291 = load %"compiler/source:Span", ptr %l140
  %t292 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t291, 0
  %t293 = load i32, ptr %l143, !tbaa !23
  %t294 = insertvalue { %"compiler/source:Span", i32, ptr } %t292, i32 %t293, 1
  %t296 = insertvalue { %"compiler/source:Span", i32, ptr } %t294, ptr %t288, 2
  %t297 = getelementptr { i64, [5 x i64] }, ptr %t289, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t296, ptr %t297
  %t298 = load { i64, [5 x i64] }, ptr %t289
  %t299 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 48, i64 8)
  store ptr %t299, ptr %lp17
  %t301 = load ptr, ptr %lp17
  store { i64, [5 x i64] } %t298, ptr %t301
  %t302 = load ptr, ptr %l0, !tbaa !29
  %t303 = load i64, ptr %l15, !tbaa !24
  %t305 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t306 = load ptr, ptr %t305, !tbaa !27
  %t307 = getelementptr i32, ptr %t306, i64 %t303
  %t308 = load i32, ptr %t307, !tbaa !33
  %t309 = load %"compiler/source:Span", ptr %l6
  %t310 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t310, ptr %l165, !tbaa !27
  %t311 = load i64, ptr %l15, !tbaa !24
  %t313 = getelementptr { i64, ptr }, ptr %l165, i32 0, i32 1
  %t314 = load ptr, ptr %t313, !tbaa !27
  %t315 = getelementptr i32, ptr %t314, i64 %t311
  %t316 = load i32, ptr %t315, !tbaa !33
  store { i64, [1 x i64] } zeroinitializer, ptr %t317
  %t318 = getelementptr { i64, [1 x i64] }, ptr %t317, i32 0, i32 0
  store i64 4, ptr %t318
  %t319 = load { i64, [1 x i64] }, ptr %t317
  %t326 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocal(ptr %v0, ptr %t302, i32 %t308, %"compiler/source:Span" %t309, i32 %t316, i32 6, { i64, [1 x i64] } %t319)
  store i64 %t326, ptr %l170
  br label %bb49
bb49:
  %t327 = load i64, ptr %l170, !tbaa !24
  store i64 %t327, ptr %l18, !tbaa !24
  %t328 = load ptr, ptr %l0, !tbaa !29
  %t329 = load %"compiler/source:Span", ptr %l6
  %t330 = load i64, ptr %l18, !tbaa !24
  %t332 = trunc i64 %t330 to i32
  %t334 = load ptr, ptr %lp17
  store { i64, [3 x i64] } zeroinitializer, ptr %t335
  %t336 = getelementptr { i64, [3 x i64] }, ptr %t335, i32 0, i32 0
  store i64 0, ptr %t336
  %t338 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t329, 0
  %t340 = insertvalue { %"compiler/source:Span", i32, ptr } %t338, i32 %t332, 1
  %t342 = insertvalue { %"compiler/source:Span", i32, ptr } %t340, ptr %t334, 2
  %t343 = getelementptr { i64, [3 x i64] }, ptr %t335, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t342, ptr %t343
  %t344 = load { i64, [3 x i64] }, ptr %t335
  %t346 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t344, ptr %t346
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t328, ptr %t346)
  br label %bb50
bb50:
  %t349 = load ptr, ptr %l0, !tbaa !29
  %t351 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t349)
  store ptr %t351, ptr %l180
  br label %bb51
bb51:
  %t352 = load ptr, ptr %l180, !tbaa !29
  %t354 = getelementptr %"compiler/typed:Body", ptr %t352, i32 0, i32 10
  %t355 = load i64, ptr %l18, !tbaa !24
  %t357 = trunc i64 %t355 to i32
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2ePush_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t354, i32 %t357)
  br label %bb52
bb52:
  %t361 = load ptr, ptr %l0, !tbaa !29
  %t362 = load i64, ptr %l18, !tbaa !24
  %t363 = load %"compiler/source:Span", ptr %l6
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropOnExit(ptr %v0, ptr %t361, i64 %t362, %"compiler/source:Span" %t363, i1 true)
  br label %bb53
bb53:
  br label %bb54
bb54:
  %t367 = load i64, ptr %l14, !tbaa !24
  %t369 = add i64 %t367, 1
  store i64 %t369, ptr %l14, !tbaa !24
  br label %bb34
bb55:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econvertedPlace(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca i1
  %l6 = alloca ptr
  %l7 = alloca i1
  %l10 = alloca i1
  %l12 = alloca ptr
  %l13 = alloca i1
  %l21 = alloca ptr
  %l22 = alloca i1
  %l25 = alloca i1
  %l27 = alloca ptr
  %l28 = alloca i1
  %l36 = alloca i1
  %l38 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
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
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
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
  %t19 = load i64, ptr %t18, !range !{i64 0, i64 18}
  %t21 = icmp eq i64 %t19, 9
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
  %t24 = load ptr, ptr %l1, !tbaa !29
  %t26 = getelementptr { i64, [4 x i64] }, ptr %t24, i32 0, i32 1
  %t27 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t26, i32 0, i32 2
  %t28 = load ptr, ptr %t27
  %t30 = getelementptr { i64, [5 x i64] }, ptr %t28, i32 0, i32 1
  %t31 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t30, i32 0, i32 2
  %t32 = load i32, ptr %t31, !range !{i32 0, i32 52}
  store i32 %t32, ptr %l3
  br label %bb10
bb9:
  br label %bb11
bb10:
  %t34 = load i32, ptr %l3, !range !{i32 0, i32 52}
  %t36 = trunc i64 20 to i32
  %t37 = icmp eq i32 %t34, %t36
  store i1 %t37, ptr %l5, !tbaa !21
  br label %bb31
bb11:
  %t39 = load ptr, ptr %l1, !tbaa !29
  store ptr %t39, ptr %l21, !tbaa !29
  store i1 false, ptr %l22, !tbaa !21
  %t40 = load ptr, ptr %l21, !tbaa !29
  %t41 = icmp ne ptr %t40, null
  br i1 %t41, label %bb12, label %bb13
bb12:
  %t43 = load ptr, ptr %l21, !tbaa !29
  %t44 = load i64, ptr %t43, !range !{i64 0, i64 8}
  %t46 = icmp eq i64 %t44, 2
  store i1 %t46, ptr %l22, !tbaa !21
  br label %bb13
bb13:
  %t47 = load i1, ptr %l22, !tbaa !21
  br i1 %t47, label %bb14, label %bb15
bb14:
  %t48 = load ptr, ptr %l1, !tbaa !29
  %t50 = getelementptr { i64, [4 x i64] }, ptr %t48, i32 0, i32 1
  %t51 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t50, i32 0, i32 2
  %t52 = load ptr, ptr %t51
  store ptr %t52, ptr %l27, !tbaa !29
  store i1 false, ptr %l28, !tbaa !21
  %t53 = load ptr, ptr %l27, !tbaa !29
  %t54 = icmp ne ptr %t53, null
  br i1 %t54, label %bb16, label %bb17
bb15:
  store i1 false, ptr %l25, !tbaa !21
  br label %bb18
bb16:
  %t56 = load ptr, ptr %l27, !tbaa !29
  %t57 = load i64, ptr %t56, !range !{i64 0, i64 18}
  %t59 = icmp eq i64 %t57, 9
  store i1 %t59, ptr %l28, !tbaa !21
  br label %bb17
bb17:
  %t60 = load i1, ptr %l28, !tbaa !21
  store i1 %t60, ptr %l25, !tbaa !21
  br label %bb18
bb18:
  %t61 = load i1, ptr %l25, !tbaa !21
  br i1 %t61, label %bb19, label %bb20
bb19:
  %t62 = load ptr, ptr %l1, !tbaa !29
  %t64 = getelementptr { i64, [4 x i64] }, ptr %t62, i32 0, i32 1
  %t65 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t64, i32 0, i32 2
  %t66 = load ptr, ptr %t65
  %t68 = getelementptr { i64, [5 x i64] }, ptr %t66, i32 0, i32 1
  %t69 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t68, i32 0, i32 2
  %t70 = load i32, ptr %t69, !range !{i32 0, i32 52}
  store i32 %t70, ptr %l4
  br label %bb21
bb20:
  br label %bb26
bb21:
  %t72 = load i32, ptr %l4, !range !{i32 0, i32 52}
  %t74 = trunc i64 20 to i32
  %t75 = icmp eq i32 %t72, %t74
  br i1 %t75, label %bb22, label %bb23
bb22:
  %t79 = call i1 @compiler_2fcheck_2eisCallExpr(ptr %v2, ptr %a2)
  store i1 %t79, ptr %l38
  br label %bb24
bb23:
  store i1 false, ptr %l36, !tbaa !21
  br label %bb25
bb24:
  %t80 = load i1, ptr %l38, !tbaa !21
  store i1 %t80, ptr %l36, !tbaa !21
  br label %bb25
bb25:
  %t81 = load i1, ptr %l36, !tbaa !21
  store i1 %t81, ptr %l5, !tbaa !21
  br label %bb31
bb26:
  br i1 true, label %bb27, label %bb28
bb27:
  br label %bb29
bb28:
  br label %bb30
bb29:
  store i1 false, ptr %l5, !tbaa !21
  br label %bb31
bb30:
  call void @__olang_check_failed(ptr @olang_loc_f8af5d5c89bab054_38683d7e2233a658)
  unreachable
bb31:
  %t82 = load i1, ptr %l5, !tbaa !21
  store i1 %t82, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edefaultArg(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i64 %a2, i64 %a3, i1 %a4, i32 %a5, i32 %a6) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca i64
  %l3 = alloca i64
  %l5 = alloca i32
  %l7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca ptr
  %l13 = alloca ptr
  %l14 = alloca ptr
  %l15 = alloca ptr
  %l16 = alloca i64
  %l23 = alloca ptr
  %l27 = alloca ptr
  %l29 = alloca i1
  %l34 = alloca i64
  %l43 = alloca i1
  %l46 = alloca i1
  %l53 = alloca i1
  %l56 = alloca { i64, ptr }
  %l66 = alloca i64
  %l71 = alloca ptr
  %l72 = alloca %"compiler/source:Span"
  %l73 = alloca i64
  %l76 = alloca { i64, ptr }
  %l78 = alloca %"compiler/diagmsg:Msg"
  %l79 = alloca i64
  %l82 = alloca ptr
  %l86 = alloca i64
  %l88 = alloca ptr
  %l92 = alloca ptr
  %l98 = alloca ptr
  %l99 = alloca ptr
  %l100 = alloca i64
  %l106 = alloca %"compiler/generic:Context"
  %l108 = alloca %"compiler/generic:Context"
  %l113 = alloca ptr
  %l116 = alloca { i64, ptr }
  %l124 = alloca ptr
  %l129 = alloca ptr
  %s2 = alloca %olang.scope
  %rv = alloca ptr
  %t186 = alloca %"compiler/generic:Context", align 8
  %t348 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store i64 %a2, ptr %l2
  store i64 %a3, ptr %l3
  store i32 %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l2, !tbaa !24
  %t3 = icmp slt i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t6 = load %"compiler/source:Span", ptr %l1
  %t7 = load i64, ptr %l3, !tbaa !24
  %t8 = load i32, ptr %l5, !tbaa !23
  %t13 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectorDefault(ptr %v0, ptr %v1, ptr %t5, %"compiler/source:Span" %t6, i64 %t7, i32 %t8)
  store ptr %t13, ptr %l23
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t14 = load ptr, ptr %l23, !tbaa !29
  store ptr %t14, ptr %rv
  br label %ret
bb4:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/check:Checker", ptr %t15, i32 0, i32 1
  %t18 = load ptr, ptr %t17, !tbaa !29
  %t19 = load i64, ptr %l2, !tbaa !24
  %t22 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v1, ptr %t18, i64 %t19)
  store ptr %t22, ptr %l27
  br label %bb5
bb5:
  %t23 = load ptr, ptr %l27, !tbaa !29
  store ptr %t23, ptr %l7, !tbaa !29
  br i1 %a4, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l29, !tbaa !21
  br label %bb8
bb7:
  %t26 = load ptr, ptr %l7, !tbaa !29
  %t28 = getelementptr %"compiler/ast:Func", ptr %t26, i32 0, i32 1
  %t29 = load ptr, ptr %t28, !tbaa !29
  %t31 = icmp eq ptr %t29, null
  %t33 = xor i1 %t31, true
  store i1 %t33, ptr %l29, !tbaa !21
  br label %bb8
bb8:
  %t35 = load i1, ptr %l29, !tbaa !21
  br i1 %t35, label %bb9, label %bb10
bb9:
  %t36 = load i64, ptr %l3, !tbaa !24
  %t38 = sub i64 %t36, 1
  store i64 %t38, ptr %l34, !tbaa !24
  br label %bb11
bb10:
  %t40 = load i64, ptr %l3, !tbaa !24
  store i64 %t40, ptr %l34, !tbaa !24
  br label %bb11
bb11:
  %t42 = load i64, ptr %l34, !tbaa !24
  store i64 %t42, ptr %l8, !tbaa !24
  %t43 = load ptr, ptr %l7, !tbaa !29
  %t45 = getelementptr %"compiler/ast:Func", ptr %t43, i32 0, i32 3
  %t46 = load ptr, ptr %t45, !tbaa !29
  %t48 = getelementptr %"compiler/ast:Sig", ptr %t46, i32 0, i32 0
  %t49 = load { i64, ptr }, ptr %t48, !tbaa !27
  %t51 = extractvalue { i64, ptr } %t49, 0
  %t53 = icmp eq i64 %t51, 0
  br i1 %t53, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l43, !tbaa !21
  br label %bb14
bb13:
  %t55 = load i64, ptr %l8, !tbaa !24
  %t57 = icmp slt i64 %t55, 0
  store i1 %t57, ptr %l43, !tbaa !21
  br label %bb14
bb14:
  %t59 = load i1, ptr %l43, !tbaa !21
  br i1 %t59, label %bb15, label %bb16
bb15:
  store i1 true, ptr %l46, !tbaa !21
  br label %bb17
bb16:
  %t60 = load i64, ptr %l8, !tbaa !24
  %t61 = load ptr, ptr %l7, !tbaa !29
  %t63 = getelementptr %"compiler/ast:Func", ptr %t61, i32 0, i32 3
  %t64 = load ptr, ptr %t63, !tbaa !29
  %t66 = getelementptr %"compiler/ast:Sig", ptr %t64, i32 0, i32 0
  %t67 = load { i64, ptr }, ptr %t66, !tbaa !27
  %t69 = extractvalue { i64, ptr } %t67, 0
  %t72 = icmp sge i64 %t60, %t69
  store i1 %t72, ptr %l46, !tbaa !21
  br label %bb17
bb17:
  %t74 = load i1, ptr %l46, !tbaa !21
  br i1 %t74, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l53, !tbaa !21
  br label %bb20
bb19:
  %t75 = load ptr, ptr %l7, !tbaa !29
  %t77 = getelementptr %"compiler/ast:Func", ptr %t75, i32 0, i32 3
  %t78 = load ptr, ptr %t77, !tbaa !29
  %t80 = getelementptr %"compiler/ast:Sig", ptr %t78, i32 0, i32 0
  %t81 = load { i64, ptr }, ptr %t80, !tbaa !27
  store { i64, ptr } %t81, ptr %l56, !tbaa !27
  %t82 = load i64, ptr %l8, !tbaa !24
  %t84 = getelementptr { i64, ptr }, ptr %l56, i32 0, i32 1
  %t85 = load ptr, ptr %t84, !tbaa !27
  %t86 = getelementptr ptr, ptr %t85, i64 %t82
  %t87 = load ptr, ptr %t86, !tbaa !39
  %t89 = getelementptr %"compiler/ast:Param", ptr %t87, i32 0, i32 3
  %t90 = load ptr, ptr %t89, !tbaa !29
  %t92 = icmp eq ptr %t90, null
  store i1 %t92, ptr %l53, !tbaa !21
  br label %bb20
bb20:
  %t94 = load i1, ptr %l53, !tbaa !21
  br i1 %t94, label %bb21, label %bb22
bb21:
  store %olang.scope zeroinitializer, ptr %s2
  %t95 = load ptr, ptr %l7, !tbaa !29
  %t97 = getelementptr %"compiler/ast:Func", ptr %t95, i32 0, i32 3
  %t98 = load ptr, ptr %t97, !tbaa !29
  %t100 = getelementptr %"compiler/ast:Sig", ptr %t98, i32 0, i32 0
  %t101 = load { i64, ptr }, ptr %t100, !tbaa !27
  %t103 = extractvalue { i64, ptr } %t101, 0
  %t105 = icmp sgt i64 %t103, 0
  br i1 %t105, label %bb23, label %bb24
bb22:
  br label %bb32
bb23:
  %t107 = load ptr, ptr %l7, !tbaa !29
  %t109 = getelementptr %"compiler/ast:Func", ptr %t107, i32 0, i32 3
  %t110 = load ptr, ptr %t109, !tbaa !29
  %t112 = getelementptr %"compiler/ast:Sig", ptr %t110, i32 0, i32 0
  %t113 = load { i64, ptr }, ptr %t112, !tbaa !27
  %t115 = extractvalue { i64, ptr } %t113, 0
  store i64 %t115, ptr %l66, !tbaa !24
  br label %bb25
bb24:
  store i64 0, ptr %l66, !tbaa !24
  br label %bb25
bb25:
  %t117 = load i64, ptr %l66, !tbaa !24
  store i64 %t117, ptr %l9, !tbaa !24
  %t118 = load ptr, ptr %l0, !tbaa !29
  store ptr %t118, ptr %l71, !tbaa !29
  %t119 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t119, ptr %l72
  %t120 = load i64, ptr %l9, !tbaa !24
  store i64 %t120, ptr %l73, !tbaa !24
  %t121 = load i64, ptr %l9, !tbaa !24
  %t123 = icmp eq i64 %t121, 1
  br i1 %t123, label %bb26, label %bb27
bb26:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) }, ptr %l76, !tbaa !27
  br label %bb28
bb27:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) }, ptr %l76, !tbaa !27
  br label %bb28
bb28:
  %t125 = load i64, ptr %l8, !tbaa !24
  %t126 = load i64, ptr %l73, !tbaa !24
  %t127 = load { i64, ptr }, ptr %l76, !tbaa !27
  %t129 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eArgCount(ptr %s2, ptr %s2, i64 %t126, { i64, ptr } %t127, i64 %t125)
  store %"compiler/diagmsg:Msg" %t129, ptr %l78
  br label %bb29
bb29:
  %t130 = load ptr, ptr %l71, !tbaa !29
  %t131 = load %"compiler/source:Span", ptr %l72
  %t132 = load %"compiler/diagmsg:Msg", ptr %l78
  %t133 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s2, ptr %t130, %"compiler/source:Span" %t131, %"compiler/diagmsg:Msg" %t132)
  store i64 %t133, ptr %l79
  br label %bb30
bb30:
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t135 = load %"compiler/source:Span", ptr %l1
  %t138 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v1, ptr %t134, %"compiler/source:Span" %t135)
  store ptr %t138, ptr %l82
  br label %bb31
bb31:
  call void @__olang_scope_close(ptr %s2)
  %t139 = load ptr, ptr %l82, !tbaa !29
  store ptr %t139, ptr %rv
  br label %ret
bb32:
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t142 = getelementptr %"compiler/check:Checker", ptr %t140, i32 0, i32 1
  %t143 = load ptr, ptr %t142, !tbaa !29
  %t144 = load i64, ptr %l2, !tbaa !24
  %t147 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t143, i64 %t144)
  store i64 %t147, ptr %l86
  br label %bb33
bb33:
  %t148 = load i64, ptr %l86, !tbaa !24
  store i64 %t148, ptr %l10, !tbaa !24
  %t149 = load ptr, ptr %l0, !tbaa !29
  %t151 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t149)
  store ptr %t151, ptr %l88
  br label %bb34
bb34:
  %t152 = load ptr, ptr %l88, !tbaa !29
  %t154 = getelementptr %"compiler/check:frame", ptr %t152, i32 0, i32 2
  %t155 = load i64, ptr %t154, !tbaa !24
  store i64 %t155, ptr %l11, !tbaa !24
  %t157 = load ptr, ptr %l0, !tbaa !29
  %t159 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t157)
  store ptr %t159, ptr %l92
  br label %bb35
bb35:
  %t160 = load ptr, ptr %l92, !tbaa !29
  store ptr %t160, ptr %l12, !tbaa !29
  %t161 = load ptr, ptr %l0, !tbaa !29
  %t162 = load ptr, ptr %l12, !tbaa !29
  %t164 = getelementptr %"compiler/check:frame", ptr %t162, i32 0, i32 0
  %t165 = load i64, ptr %t164, !tbaa !24
  %t166 = load i64, ptr %l10, !tbaa !24
  %t167 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t172 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epush(ptr %v0, ptr %v0, ptr %t161, i64 %t165, i64 %t166, i32 %t167, i32 0)
  store ptr %t172, ptr %l98
  br label %bb36
bb36:
  %t173 = load ptr, ptr %l98, !tbaa !29
  store ptr %t173, ptr %l13, !tbaa !29
  %t174 = load ptr, ptr %l13, !tbaa !29
  store ptr %t174, ptr %l99, !tbaa !29
  %t175 = ptrtoint ptr %v0 to i64
  store i64 %t175, ptr %l100, !tbaa !24
  %t176 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t176, label %bb37, label %bb38
bb37:
  %t178 = call ptr @__olang_region_make(ptr %v0)
  %t179 = ptrtoint ptr %t178 to i64
  store i64 %t179, ptr %l100, !tbaa !24
  br label %bb38
bb38:
  %t180 = load ptr, ptr %l0, !tbaa !29
  %t182 = getelementptr %"compiler/check:Checker", ptr %t180, i32 0, i32 1
  %t183 = load ptr, ptr %t182, !tbaa !29
  %t184 = load i64, ptr %l2, !tbaa !24
  %t187 = load i64, ptr %l100
  %t188 = inttoptr i64 %t187 to ptr
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnContext(ptr %t186, ptr %v0, ptr %t188, ptr %t183, i64 %t184, i32 %a6)
  call void @llvm.memmove.p0.p0.i64(ptr %l106, ptr %t186, i64 160, i1 false)
  br label %bb39
bb39:
  %t192 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t192, label %bb40, label %bb41
bb40:
  %t194 = load i64, ptr %l100
  %t195 = inttoptr i64 %t194 to ptr
  %t196 = getelementptr %"compiler/generic:Context", ptr %l106, i32 0, i32 3
  %t197 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t196, i32 0, i32 2
  %t198 = load { i64, ptr }, ptr %t197
  %t199 = extractvalue { i64, ptr } %t198, 1
  %t200 = call ptr @__olang_region_or(ptr %t199, ptr null)
  %t201 = icmp ne ptr %t200, null
  %t202 = select i1 %t201, ptr %t200, ptr null
  %t203 = getelementptr %"compiler/generic:Context", ptr %l106, i32 0, i32 3
  %t204 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t203, i32 0, i32 1
  %t205 = load { i64, ptr }, ptr %t204
  %t206 = extractvalue { i64, ptr } %t205, 1
  %t207 = call ptr @__olang_region_or(ptr %t206, ptr null)
  %t208 = icmp ne ptr %t207, null
  %t209 = select i1 %t208, ptr %t207, ptr %t202
  %t210 = getelementptr %"compiler/generic:Context", ptr %l106, i32 0, i32 3
  %t211 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t210, i32 0, i32 0
  %t212 = load { i64, ptr }, ptr %t211
  %t213 = extractvalue { i64, ptr } %t212, 1
  %t214 = call ptr @__olang_region_or(ptr %t213, ptr null)
  %t215 = icmp ne ptr %t214, null
  %t216 = select i1 %t215, ptr %t214, ptr %t209
  %t217 = getelementptr %"compiler/generic:Context", ptr %l106, i32 0, i32 2
  %t218 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t217, i32 0, i32 2
  %t219 = load { i64, ptr }, ptr %t218
  %t220 = extractvalue { i64, ptr } %t219, 1
  %t221 = call ptr @__olang_region_or(ptr %t220, ptr null)
  %t222 = icmp ne ptr %t221, null
  %t223 = select i1 %t222, ptr %t221, ptr %t216
  %t224 = getelementptr %"compiler/generic:Context", ptr %l106, i32 0, i32 2
  %t225 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t224, i32 0, i32 1
  %t226 = load { i64, ptr }, ptr %t225
  %t227 = extractvalue { i64, ptr } %t226, 1
  %t228 = call ptr @__olang_region_or(ptr %t227, ptr null)
  %t229 = icmp ne ptr %t228, null
  %t230 = select i1 %t229, ptr %t228, ptr %t223
  %t231 = getelementptr %"compiler/generic:Context", ptr %l106, i32 0, i32 2
  %t232 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t231, i32 0, i32 0
  %t233 = load { i64, ptr }, ptr %t232
  %t234 = extractvalue { i64, ptr } %t233, 1
  %t235 = call ptr @__olang_region_or(ptr %t234, ptr null)
  %t236 = icmp ne ptr %t235, null
  %t237 = select i1 %t236, ptr %t235, ptr %t230
  %t238 = icmp eq ptr %t237, %t195
  call void @__olang_region_settle(ptr %t195, i1 %t238)
  br label %bb41
bb41:
  %t239 = load ptr, ptr %l99, !tbaa !29
  %t240 = getelementptr %"compiler/check:frame", ptr %t239, i32 0, i32 4
  call void @llvm.memmove.p0.p0.i64(ptr %l108, ptr %t240, i64 160, i1 false)
  %t241 = load ptr, ptr %l99, !tbaa !29
  %t242 = getelementptr %"compiler/check:frame", ptr %t241, i32 0, i32 4
  call void @llvm.memmove.p0.p0.i64(ptr %t242, ptr %l106, i64 160, i1 false)
  %t243 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t243, label %bb42, label %bb43
bb42:
  %t245 = getelementptr %"compiler/generic:Context", ptr %l108, i32 0, i32 3
  %t246 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t245, i32 0, i32 2
  %t247 = load { i64, ptr }, ptr %t246
  %t248 = extractvalue { i64, ptr } %t247, 1
  %t249 = call ptr @__olang_region_or(ptr %t248, ptr null)
  %t250 = icmp ne ptr %t249, null
  %t251 = select i1 %t250, ptr %t249, ptr null
  %t252 = getelementptr %"compiler/generic:Context", ptr %l108, i32 0, i32 3
  %t253 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t252, i32 0, i32 1
  %t254 = load { i64, ptr }, ptr %t253
  %t255 = extractvalue { i64, ptr } %t254, 1
  %t256 = call ptr @__olang_region_or(ptr %t255, ptr null)
  %t257 = icmp ne ptr %t256, null
  %t258 = select i1 %t257, ptr %t256, ptr %t251
  %t259 = getelementptr %"compiler/generic:Context", ptr %l108, i32 0, i32 3
  %t260 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t259, i32 0, i32 0
  %t261 = load { i64, ptr }, ptr %t260
  %t262 = extractvalue { i64, ptr } %t261, 1
  %t263 = call ptr @__olang_region_or(ptr %t262, ptr null)
  %t264 = icmp ne ptr %t263, null
  %t265 = select i1 %t264, ptr %t263, ptr %t258
  %t266 = getelementptr %"compiler/generic:Context", ptr %l108, i32 0, i32 2
  %t267 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t266, i32 0, i32 2
  %t268 = load { i64, ptr }, ptr %t267
  %t269 = extractvalue { i64, ptr } %t268, 1
  %t270 = call ptr @__olang_region_or(ptr %t269, ptr null)
  %t271 = icmp ne ptr %t270, null
  %t272 = select i1 %t271, ptr %t270, ptr %t265
  %t273 = getelementptr %"compiler/generic:Context", ptr %l108, i32 0, i32 2
  %t274 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t273, i32 0, i32 1
  %t275 = load { i64, ptr }, ptr %t274
  %t276 = extractvalue { i64, ptr } %t275, 1
  %t277 = call ptr @__olang_region_or(ptr %t276, ptr null)
  %t278 = icmp ne ptr %t277, null
  %t279 = select i1 %t278, ptr %t277, ptr %t272
  %t280 = getelementptr %"compiler/generic:Context", ptr %l108, i32 0, i32 2
  %t281 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t280, i32 0, i32 0
  %t282 = load { i64, ptr }, ptr %t281
  %t283 = extractvalue { i64, ptr } %t282, 1
  %t284 = call ptr @__olang_region_or(ptr %t283, ptr null)
  %t285 = icmp ne ptr %t284, null
  %t286 = select i1 %t285, ptr %t284, ptr %t279
  call void @__olang_region_drop(ptr %t286)
  store %"compiler/generic:Context" zeroinitializer, ptr %l108
  br label %bb43
bb43:
  %t287 = load ptr, ptr %l13, !tbaa !29
  %t288 = load ptr, ptr %l12, !tbaa !29
  %t290 = getelementptr %"compiler/check:frame", ptr %t288, i32 0, i32 7
  %t291 = load i64, ptr %t290, !tbaa !24
  %t294 = getelementptr %"compiler/check:frame", ptr %t287, i32 0, i32 7
  store i64 %t291, ptr %t294, !tbaa !24
  %t295 = load ptr, ptr %l0, !tbaa !29
  store ptr %t295, ptr %l113, !tbaa !29
  %t296 = load ptr, ptr %l7, !tbaa !29
  %t298 = getelementptr %"compiler/ast:Func", ptr %t296, i32 0, i32 3
  %t299 = load ptr, ptr %t298, !tbaa !29
  %t301 = getelementptr %"compiler/ast:Sig", ptr %t299, i32 0, i32 0
  %t302 = load { i64, ptr }, ptr %t301, !tbaa !27
  store { i64, ptr } %t302, ptr %l116, !tbaa !27
  %t303 = load i64, ptr %l8, !tbaa !24
  %t305 = getelementptr { i64, ptr }, ptr %l116, i32 0, i32 1
  %t306 = load ptr, ptr %t305, !tbaa !27
  %t307 = getelementptr ptr, ptr %t306, i64 %t303
  %t308 = load ptr, ptr %t307, !tbaa !39
  %t310 = getelementptr %"compiler/ast:Param", ptr %t308, i32 0, i32 3
  %t311 = load ptr, ptr %t310, !tbaa !29
  store ptr %t311, ptr %l14, !tbaa !29
  %t313 = load ptr, ptr %l14, !tbaa !29
  %t315 = icmp eq ptr %t313, null
  br i1 %t315, label %bb44, label %bb45
bb44:
  call void @__olang_check_failed(ptr @olang_loc_573d6efe4eadca3f_fa49b5af8bd78213)
  unreachable
bb45:
  br label %bb46
bb46:
  %t317 = load ptr, ptr %l14, !tbaa !29
  %t318 = load i32, ptr %l5, !tbaa !23
  %t319 = load ptr, ptr %l113, !tbaa !29
  %t322 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexprTo(ptr %v0, ptr %v1, ptr %v1, ptr %t319, ptr %t317, i32 %t318)
  store ptr %t322, ptr %l124
  br label %bb47
bb47:
  %t323 = load ptr, ptr %l124, !tbaa !29
  store ptr %t323, ptr %l15, !tbaa !29
  %t324 = load ptr, ptr %l0, !tbaa !29
  %t325 = load ptr, ptr %l15, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edefaultReads(ptr %v0, ptr %v1, ptr %t324, ptr %t325)
  br label %bb48
bb48:
  %t329 = load ptr, ptr %l0, !tbaa !29
  %t331 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t329)
  store ptr %t331, ptr %l129
  br label %bb49
bb49:
  %t332 = load ptr, ptr %l129, !tbaa !29
  %t334 = getelementptr %"compiler/check:frame", ptr %t332, i32 0, i32 2
  %t335 = load i64, ptr %t334, !tbaa !24
  store i64 %t335, ptr %l16, !tbaa !24
  %t337 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %t337)
  br label %bb50
bb50:
  %t339 = load i64, ptr %l16, !tbaa !24
  %t340 = load i64, ptr %l11, !tbaa !24
  %t343 = icmp ne i64 %t339, %t340
  br i1 %t343, label %bb51, label %bb52
bb51:
  %t345 = load %"compiler/source:Span", ptr %l1
  %t346 = load i64, ptr %l16, !tbaa !24
  %t347 = load ptr, ptr %l15, !tbaa !29
  store { i64, [5 x i64] } zeroinitializer, ptr %t348
  %t349 = getelementptr { i64, [5 x i64] }, ptr %t348, i32 0, i32 0
  store i64 17, ptr %t349
  %t351 = insertvalue { %"compiler/source:Span", i64, ptr } undef, %"compiler/source:Span" %t345, 0
  %t353 = insertvalue { %"compiler/source:Span", i64, ptr } %t351, i64 %t346, 1
  %t355 = insertvalue { %"compiler/source:Span", i64, ptr } %t353, ptr %t347, 2
  %t356 = getelementptr { i64, [5 x i64] }, ptr %t348, i32 0, i32 1
  store { %"compiler/source:Span", i64, ptr } %t355, ptr %t356
  %t357 = load { i64, [5 x i64] }, ptr %t348
  %t359 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 48, i64 8)
  store { i64, [5 x i64] } %t357, ptr %t359
  store ptr %t359, ptr %rv
  br label %ret
bb52:
  br label %bb53
bb53:
  %t361 = load ptr, ptr %l15, !tbaa !29
  store ptr %t361, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeferStmt(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i1 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %lp4 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca { i64, i64, i64 }
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca ptr
  %l15 = alloca ptr
  %l17 = alloca ptr
  %l19 = alloca ptr
  %l23 = alloca %"compiler/check:factsCopy"
  %l25 = alloca ptr
  %l27 = alloca i64
  %l29 = alloca ptr
  %l35 = alloca ptr
  %l37 = alloca { i64, ptr }
  %l39 = alloca ptr
  %l41 = alloca i64
  %l43 = alloca ptr
  %l46 = alloca i64
  %l47 = alloca i64
  %l52 = alloca ptr
  %l53 = alloca %"compiler/check:factsMark"
  %l57 = alloca i64
  %l58 = alloca ptr
  %l60 = alloca i32
  %l64 = alloca { i64, i64, i64 }
  %l69 = alloca ptr
  %l73 = alloca ptr
  %l77 = alloca ptr
  %l78 = alloca ptr
  %l80 = alloca ptr
  %l83 = alloca i64
  %l85 = alloca ptr
  %l86 = alloca ptr
  %l88 = alloca ptr
  %l91 = alloca i64
  %l96 = alloca ptr
  %l100 = alloca ptr
  %l108 = alloca ptr
  %s1 = alloca %olang.scope
  %t206 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t1)
  store ptr %t3, ptr %l15
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l15, !tbaa !29
  %t6 = getelementptr %"compiler/check:frame", ptr %t4, i32 0, i32 22
  store ptr %t6, ptr %l17, !tbaa !29
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t7)
  store ptr %t9, ptr %l19
  br label %bb2
bb2:
  %t10 = load ptr, ptr %l19, !tbaa !29
  %t12 = getelementptr %"compiler/check:frame", ptr %t10, i32 0, i32 7
  %t13 = load i64, ptr %t12, !tbaa !24
  %t14 = load ptr, ptr %l17, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t14, i64 %t13)
  br label %bb3
bb3:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = call %"compiler/check:factsCopy" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efactsCopied(ptr %v0, ptr %v0, ptr %t16)
  store %"compiler/check:factsCopy" %t18, ptr %l23
  br label %bb4
bb4:
  %t19 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 96, i64 8)
  store ptr %t19, ptr %lp4
  %t20 = load %"compiler/check:factsCopy", ptr %l23
  %t21 = load ptr, ptr %lp4
  store %"compiler/check:factsCopy" %t20, ptr %t21
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t22)
  store ptr %t24, ptr %l25
  br label %bb5
bb5:
  %t25 = load ptr, ptr %l25, !tbaa !29
  %t27 = getelementptr %"compiler/check:frame", ptr %t25, i32 0, i32 52
  %t28 = load i64, ptr %t27, !tbaa !24
  store i64 %t28, ptr %l27, !tbaa !24
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t29)
  store ptr %t31, ptr %l29
  br label %bb6
bb6:
  %t32 = load ptr, ptr %l29, !tbaa !29
  %t34 = getelementptr %"compiler/check:frame", ptr %t32, i32 0, i32 51
  %t35 = load { i64, ptr }, ptr %t34, !tbaa !27
  %t37 = extractvalue { i64, ptr } %t35, 0
  %t38 = load i64, ptr %l27, !tbaa !24
  %t40 = icmp slt i64 %t38, %t37
  br i1 %t40, label %bb7, label %bb8
bb7:
  store %olang.scope zeroinitializer, ptr %s1
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t42)
  store ptr %t44, ptr %l35
  br label %bb9
bb8:
  br label %bb20
bb9:
  %t45 = load ptr, ptr %l35, !tbaa !29
  %t47 = getelementptr %"compiler/check:frame", ptr %t45, i32 0, i32 51
  %t48 = load { i64, ptr }, ptr %t47, !tbaa !27
  store { i64, ptr } %t48, ptr %l37, !tbaa !27
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t49)
  store ptr %t51, ptr %l39
  br label %bb10
bb10:
  %t52 = load ptr, ptr %l39, !tbaa !29
  %t54 = getelementptr %"compiler/check:frame", ptr %t52, i32 0, i32 52
  %t55 = load i64, ptr %t54, !tbaa !24
  store i64 %t55, ptr %l41, !tbaa !24
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t56)
  store ptr %t58, ptr %l43
  br label %bb11
bb11:
  %t59 = load ptr, ptr %l43, !tbaa !29
  %t61 = getelementptr %"compiler/check:frame", ptr %t59, i32 0, i32 51
  %t62 = load { i64, ptr }, ptr %t61, !tbaa !27
  %t64 = extractvalue { i64, ptr } %t62, 0
  store i64 %t64, ptr %l46, !tbaa !24
  %t65 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t66 = extractvalue { i64, ptr } %t65, 0
  store i64 %t66, ptr %l47, !tbaa !24
  %t67 = load i64, ptr %l41, !tbaa !24
  %t68 = icmp sge i64 %t67, 0
  br i1 %t68, label %bb12, label %bb13
bb12:
  %t70 = load i64, ptr %l41, !tbaa !24
  %t71 = load i64, ptr %l46, !tbaa !24
  %t72 = icmp sle i64 %t70, %t71
  br i1 %t72, label %bb14, label %bb15
bb13:
  call void @__olang_check_failed(ptr @olang_loc_45d73a08c1eee64c_a811f88d32b1fa78)
  unreachable
bb14:
  %t74 = load i64, ptr %l46, !tbaa !24
  %t75 = load i64, ptr %l47, !tbaa !24
  %t76 = icmp sle i64 %t74, %t75
  br i1 %t76, label %bb16, label %bb17
bb15:
  call void @__olang_check_failed(ptr @olang_loc_45d73a08c1eee64c_a811f88d32b1fa78)
  unreachable
bb16:
  %t78 = getelementptr { i64, ptr }, ptr %l37, i32 0, i32 1
  %t79 = load ptr, ptr %t78, !tbaa !27
  %t80 = load i64, ptr %l41, !tbaa !24
  %t81 = load i64, ptr %l46, !tbaa !24
  %t82 = getelementptr ptr, ptr %t79, i64 %t80
  %t83 = sub i64 %t81, %t80
  %t84 = insertvalue { i64, ptr } undef, i64 %t83, 0
  %t85 = insertvalue { i64, ptr } %t84, ptr %t82, 1
  store { i64, ptr } %t85, ptr %l5, !tbaa !27
  %t87 = load ptr, ptr %l0, !tbaa !29
  store ptr %t87, ptr %l52, !tbaa !29
  %t88 = call %"compiler/check:factsMark" @compiler_2fcheck_3afactsMark_2ector(ptr %s1, i64 0, i64 0, i64 0)
  store %"compiler/check:factsMark" %t88, ptr %l53
  br label %bb18
bb17:
  call void @__olang_check_failed(ptr @olang_loc_45d73a08c1eee64c_a811f88d32b1fa78)
  unreachable
bb18:
  %t89 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t90 = load ptr, ptr %l52, !tbaa !29
  %t91 = load %"compiler/check:factsMark", ptr %l53
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ekillAssigned(ptr %v0, ptr %v0, ptr %t90, %"compiler/check:factsMark" %t91, { i64, ptr } %t89)
  br label %bb19
bb19:
  call void @__olang_scope_close(ptr %s1)
  br label %bb20
bb20:
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t95 = getelementptr %"compiler/check:Checker", ptr %t93, i32 0, i32 37
  %t97 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t95)
  store i64 %t97, ptr %l57
  br label %bb21
bb21:
  %t98 = load i64, ptr %l57, !tbaa !24
  store i64 %t98, ptr %l6, !tbaa !24
  %t99 = load ptr, ptr %l0, !tbaa !29
  store ptr %t99, ptr %l58, !tbaa !29
  br i1 %a3, label %bb22, label %bb23
bb22:
  store i32 7, ptr %l60
  br label %bb24
bb23:
  store i32 6, ptr %l60
  br label %bb24
bb24:
  %t104 = load %"compiler/source:Span", ptr %l1
  %t105 = load ptr, ptr %l58, !tbaa !29
  %t106 = load i32, ptr %l60, !range !{i32 0, i32 10}
  %t108 = call { i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopen(ptr %v0, ptr %t105, i32 %t106, %"compiler/source:Span" %t104)
  store { i64, i64, i64 } %t108, ptr %l64
  br label %bb25
bb25:
  %t109 = load { i64, i64, i64 }, ptr %l64
  store { i64, i64, i64 } %t109, ptr %l7
  %t110 = getelementptr { i64, i64, i64 }, ptr %l7, i32 0, i32 0
  %t111 = load i64, ptr %t110, !tbaa !24
  store i64 %t111, ptr %l8, !tbaa !24
  %t113 = getelementptr { i64, i64, i64 }, ptr %l7, i32 0, i32 1
  %t114 = load i64, ptr %t113, !tbaa !24
  store i64 %t114, ptr %l9, !tbaa !24
  %t116 = getelementptr { i64, i64, i64 }, ptr %l7, i32 0, i32 2
  %t117 = load i64, ptr %t116, !tbaa !24
  store i64 %t117, ptr %l10, !tbaa !24
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t121 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t119)
  store ptr %t121, ptr %l69
  br label %bb26
bb26:
  %t122 = load ptr, ptr %l69, !tbaa !29
  %t124 = getelementptr %"compiler/check:frame", ptr %t122, i32 0, i32 34
  %t125 = load i64, ptr %t124, !tbaa !24
  store i64 %t125, ptr %l11, !tbaa !24
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t129 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t127)
  store ptr %t129, ptr %l73
  br label %bb27
bb27:
  %t130 = load ptr, ptr %l73, !tbaa !29
  %t132 = getelementptr %"compiler/check:frame", ptr %t130, i32 0, i32 37
  %t133 = load i64, ptr %t132, !tbaa !24
  store i64 %t133, ptr %l12, !tbaa !24
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t137 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t135)
  store ptr %t137, ptr %l77
  br label %bb28
bb28:
  %t138 = load ptr, ptr %l77, !tbaa !29
  store ptr %t138, ptr %l78, !tbaa !29
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t141 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t139)
  store ptr %t141, ptr %l80
  br label %bb29
bb29:
  %t142 = load ptr, ptr %l80, !tbaa !29
  %t144 = getelementptr %"compiler/check:frame", ptr %t142, i32 0, i32 10
  %t146 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t144)
  store i64 %t146, ptr %l83
  br label %bb30
bb30:
  %t147 = load i64, ptr %l83, !tbaa !24
  %t148 = load ptr, ptr %l78, !tbaa !29
  %t149 = getelementptr %"compiler/check:frame", ptr %t148, i32 0, i32 34
  store i64 %t147, ptr %t149, !tbaa !24
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t152 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t150)
  store ptr %t152, ptr %l85
  br label %bb31
bb31:
  %t153 = load ptr, ptr %l85, !tbaa !29
  store ptr %t153, ptr %l86, !tbaa !29
  %t154 = load ptr, ptr %l0, !tbaa !29
  %t156 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t154)
  store ptr %t156, ptr %l88
  br label %bb32
bb32:
  %t157 = load ptr, ptr %l88, !tbaa !29
  %t159 = getelementptr %"compiler/check:frame", ptr %t157, i32 0, i32 38
  %t161 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t159)
  store i64 %t161, ptr %l91
  br label %bb33
bb33:
  %t162 = load i64, ptr %l91, !tbaa !24
  %t163 = load ptr, ptr %l86, !tbaa !29
  %t164 = getelementptr %"compiler/check:frame", ptr %t163, i32 0, i32 37
  store i64 %t162, ptr %t164, !tbaa !24
  %t165 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estmt(ptr %v0, ptr %v1, ptr %t165, ptr %a2)
  br label %bb34
bb34:
  %t170 = load ptr, ptr %l0, !tbaa !29
  %t172 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t170)
  store ptr %t172, ptr %l96
  br label %bb35
bb35:
  %t173 = load ptr, ptr %l96, !tbaa !29
  %t174 = load i64, ptr %l11, !tbaa !24
  %t177 = getelementptr %"compiler/check:frame", ptr %t173, i32 0, i32 34
  store i64 %t174, ptr %t177, !tbaa !24
  %t178 = load ptr, ptr %l0, !tbaa !29
  %t180 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t178)
  store ptr %t180, ptr %l100
  br label %bb36
bb36:
  %t181 = load ptr, ptr %l100, !tbaa !29
  %t182 = load i64, ptr %l12, !tbaa !24
  %t185 = getelementptr %"compiler/check:frame", ptr %t181, i32 0, i32 37
  store i64 %t182, ptr %t185, !tbaa !24
  %t186 = load ptr, ptr %l0, !tbaa !29
  %t187 = load i64, ptr %l8, !tbaa !24
  %t188 = load i64, ptr %l9, !tbaa !24
  %t189 = load i64, ptr %l10, !tbaa !24
  %t190 = load i64, ptr %l6, !tbaa !24
  %t196 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclose(ptr %v0, ptr %v0, ptr %t186, i64 %t187, i64 %t188, i64 %t189, i64 %t190)
  store ptr %t196, ptr %l108
  br label %bb37
bb37:
  %t197 = load ptr, ptr %l108, !tbaa !29
  store ptr %t197, ptr %l13, !tbaa !29
  %t198 = load ptr, ptr %l0, !tbaa !29
  %t199 = load ptr, ptr %lp4
  %t200 = load %"compiler/check:factsCopy", ptr %t199
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efactsRestored(ptr %v0, ptr %v0, ptr %t198, %"compiler/check:factsCopy" %t200)
  br label %bb38
bb38:
  %t203 = load ptr, ptr %l0, !tbaa !29
  %t204 = load %"compiler/source:Span", ptr %l1
  %t205 = load ptr, ptr %l13, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t206
  %t207 = getelementptr { i64, [3 x i64] }, ptr %t206, i32 0, i32 0
  store i64 12, ptr %t207
  %t209 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t204, 0
  %t211 = insertvalue { %"compiler/source:Span", ptr } %t209, ptr %t205, 1
  %t212 = getelementptr { i64, [3 x i64] }, ptr %t206, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t211, ptr %t212
  %t213 = load { i64, [3 x i64] }, ptr %t206
  %t215 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t213, ptr %t215
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t203, ptr %t215)
  br label %bb39
bb39:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrAmong(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i32
  %l7 = alloca i64
  %l9 = alloca i64
  %l14 = alloca i32
  %l19 = alloca i32
  %l24 = alloca i32
  %l26 = alloca i1
  %l31 = alloca i64
  %l36 = alloca i64
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a2, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb1
bb1:
  %t3 = load i64, ptr %l4, !tbaa !24
  store i64 %t3, ptr %l7, !tbaa !24
  %t4 = load ptr, ptr %l3, !tbaa !29
  %t6 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v1, ptr %t4)
  store i64 %t6, ptr %l9
  br label %bb2
bb2:
  %t7 = load i64, ptr %l7, !tbaa !24
  %t8 = load i64, ptr %l9, !tbaa !24
  %t9 = icmp slt i64 %t7, %t8
  %t11 = xor i1 %t9, true
  br i1 %t11, label %bb3, label %bb4
bb3:
  br label %bb18
bb4:
  br label %bb5
bb5:
  %t13 = load ptr, ptr %l3, !tbaa !29
  %t14 = load i64, ptr %l4, !tbaa !24
  %t17 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v1, ptr %t13, i64 %t14)
  store i32 %t17, ptr %l14
  br label %bb6
bb6:
  %t18 = load i32, ptr %l14, !tbaa !23
  store i32 %t18, ptr %l5, !tbaa !23
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/check:Checker", ptr %t19, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !29
  %t24 = getelementptr %"compiler/generic:Program", ptr %t22, i32 0, i32 2
  %t25 = load i32, ptr %l5, !tbaa !23
  %t28 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t24, i32 %t25)
  store i32 %t28, ptr %l19
  br label %bb7
bb7:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/check:Checker", ptr %t29, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !29
  %t34 = getelementptr %"compiler/generic:Program", ptr %t32, i32 0, i32 2
  %t35 = load i32, ptr %l1, !tbaa !23
  %t38 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t34, i32 %t35)
  store i32 %t38, ptr %l24
  br label %bb8
bb8:
  %t39 = load i32, ptr %l19, !tbaa !23
  %t40 = load i32, ptr %l24, !tbaa !23
  %t41 = icmp eq i32 %t39, %t40
  br i1 %t41, label %bb9, label %bb10
bb9:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/check:Checker", ptr %t43, i32 0, i32 1
  %t46 = load ptr, ptr %t45, !tbaa !29
  %t48 = getelementptr %"compiler/generic:Program", ptr %t46, i32 0, i32 2
  %t49 = load i32, ptr %l5, !tbaa !23
  %t52 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrMask(ptr %v0, ptr %t48, i32 %t49)
  store i64 %t52, ptr %l31
  br label %bb11
bb10:
  store i1 false, ptr %l26, !tbaa !21
  br label %bb13
bb11:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/check:Checker", ptr %t53, i32 0, i32 1
  %t56 = load ptr, ptr %t55, !tbaa !29
  %t58 = getelementptr %"compiler/generic:Program", ptr %t56, i32 0, i32 2
  %t59 = load i32, ptr %l1, !tbaa !23
  %t62 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrMask(ptr %v0, ptr %t58, i32 %t59)
  store i64 %t62, ptr %l36
  br label %bb12
bb12:
  %t63 = load i64, ptr %l31, !tbaa !65
  %t64 = load i64, ptr %l36, !tbaa !65
  %t65 = and i64 %t63, %t64
  %t67 = icmp ne i64 %t65, 0
  store i1 %t67, ptr %l26, !tbaa !21
  br label %bb13
bb13:
  %t69 = load i1, ptr %l26, !tbaa !21
  br i1 %t69, label %bb14, label %bb15
bb14:
  store i1 true, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  br label %bb17
bb17:
  %t71 = load i64, ptr %l4, !tbaa !24
  %t73 = add i64 %t71, 1
  store i64 %t73, ptr %l4, !tbaa !24
  br label %bb1
bb18:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexportRules(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, [3 x i64] }
  %l7 = alloca i32
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i32
  %l16 = alloca %"compiler/source:Span"
  %l17 = alloca i32
  %l21 = alloca ptr
  %l25 = alloca i64
  %l31 = alloca ptr
  %l37 = alloca { i64, ptr }
  %l54 = alloca ptr
  %l55 = alloca { i64, [3 x i64] }
  %l56 = alloca %"compiler/diagmsg:Msg"
  %l57 = alloca i64
  %l62 = alloca i1
  %l64 = alloca ptr
  %l66 = alloca i64
  %l67 = alloca i64
  %l72 = alloca ptr
  %l73 = alloca { i64, [3 x i64] }
  %l74 = alloca %"compiler/diagmsg:Msg"
  %l75 = alloca i64
  %l77 = alloca i1
  %l78 = alloca i1
  %l80 = alloca i1
  %l84 = alloca ptr
  %l85 = alloca { i64, [3 x i64] }
  %l87 = alloca { i64, ptr }
  %l89 = alloca %"compiler/diagmsg:Msg"
  %l90 = alloca i64
  %l94 = alloca i32
  %l97 = alloca ptr
  %l102 = alloca i32
  %l103 = alloca { i64, ptr }
  %l111 = alloca i64
  %l114 = alloca i64
  %l136 = alloca { i64, ptr }
  %l142 = alloca i1
  %l145 = alloca i1
  %l148 = alloca { i64, ptr }
  %l155 = alloca ptr
  %l156 = alloca i64
  %l158 = alloca i64
  %l160 = alloca i64
  %l164 = alloca { i64, ptr }
  %l168 = alloca { i64, ptr }
  %l171 = alloca { i64, [3 x i64] }
  %l174 = alloca { i64, ptr }
  %l176 = alloca %"compiler/diagmsg:Msg"
  %l177 = alloca i64
  %l184 = alloca i32
  %l188 = alloca i1
  %l192 = alloca i1
  %l203 = alloca i1
  %l206 = alloca i1
  %l207 = alloca i1
  %l210 = alloca i1
  %l215 = alloca ptr
  %l216 = alloca i64
  %l219 = alloca { i64, ptr }
  %l221 = alloca %"compiler/source:Span"
  %l223 = alloca i64
  %l226 = alloca { i64, ptr }
  %l233 = alloca %"compiler/source:Span"
  %l236 = alloca { i64, [3 x i64] }
  %l239 = alloca { i64, ptr }
  %l241 = alloca %"compiler/diagmsg:Msg"
  %l242 = alloca i64
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %t63 = alloca { i64, [3 x i64] }, align 8
  %t349 = alloca { i64, [3 x i64] }, align 8
  %t503 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t5 = load i64, ptr %l1, !tbaa !24
  %t8 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t4, i64 %t5)
  store ptr %t8, ptr %l21
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l21, !tbaa !29
  store ptr %t9, ptr %l2, !tbaa !29
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/check:Checker", ptr %t10, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t14 = load i64, ptr %l1, !tbaa !24
  %t17 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t13, i64 %t14)
  store i64 %t17, ptr %l25
  br label %bb2
bb2:
  %t18 = load i64, ptr %l25, !tbaa !24
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/check:Checker", ptr %t19, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !29
  %t24 = getelementptr %"compiler/generic:Program", ptr %t22, i32 0, i32 0
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t27 = getelementptr %"compiler/load:Loader", ptr %t25, i32 0, i32 10
  %t31 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t27, i64 %t18)
  store ptr %t31, ptr %l31
  br label %bb3
bb3:
  %t32 = load ptr, ptr %l31, !tbaa !29
  %t34 = getelementptr %"compiler/load:Module", ptr %t32, i32 0, i32 4
  %t35 = load i64, ptr %t34, !tbaa !24
  store i64 %t35, ptr %l4, !tbaa !24
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load ptr, ptr %l2, !tbaa !29
  %t40 = getelementptr %"compiler/ast:Func", ptr %t38, i32 0, i32 2
  %t41 = load i32, ptr %t40, !tbaa !23
  %t44 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t37, i32 %t41)
  store { i64, ptr } %t44, ptr %l37
  br label %bb4
bb4:
  %t45 = load { i64, ptr }, ptr %l37, !tbaa !27
  store { i64, ptr } %t45, ptr %l5, !tbaa !27
  %t46 = load i64, ptr %l4, !tbaa !24
  %t47 = load ptr, ptr %l2, !tbaa !29
  %t49 = getelementptr %"compiler/ast:Func", ptr %t47, i32 0, i32 0
  %t50 = getelementptr %"compiler/source:Span", ptr %t49, i32 0, i32 0
  %t51 = load i32, ptr %t50, !tbaa !23
  %t53 = sext i32 %t51 to i64
  %t54 = load ptr, ptr %l2, !tbaa !29
  %t56 = getelementptr %"compiler/ast:Func", ptr %t54, i32 0, i32 0
  %t57 = getelementptr %"compiler/source:Span", ptr %t56, i32 0, i32 0
  %t58 = load i32, ptr %t57, !tbaa !23
  %t60 = sext i32 %t58 to i64
  %t62 = add i64 %t60, 6
  store { i64, [3 x i64] } zeroinitializer, ptr %t63
  %t64 = getelementptr { i64, [3 x i64] }, ptr %t63, i32 0, i32 0
  store i64 3, ptr %t64
  %t66 = insertvalue { i64, i64, i64 } undef, i64 %t46, 0
  %t68 = insertvalue { i64, i64, i64 } %t66, i64 %t53, 1
  %t70 = insertvalue { i64, i64, i64 } %t68, i64 %t62, 2
  %t71 = getelementptr { i64, [3 x i64] }, ptr %t63, i32 0, i32 1
  store { i64, i64, i64 } %t70, ptr %t71
  %t72 = load { i64, [3 x i64] }, ptr %t63
  store { i64, [3 x i64] } %t72, ptr %l6
  %t74 = load ptr, ptr %l2, !tbaa !29
  %t76 = getelementptr %"compiler/ast:Func", ptr %t74, i32 0, i32 1
  %t77 = load ptr, ptr %t76, !tbaa !29
  %t79 = icmp eq ptr %t77, null
  %t81 = xor i1 %t79, true
  br i1 %t81, label %bb5, label %bb6
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr %"compiler/check:Checker", ptr %t83, i32 0, i32 1
  %t86 = load ptr, ptr %t85, !tbaa !29
  %t88 = getelementptr %"compiler/generic:Program", ptr %t86, i32 0, i32 0
  %t89 = load ptr, ptr %t88, !tbaa !29
  %t91 = getelementptr %"compiler/load:Loader", ptr %t89, i32 0, i32 4
  %t92 = load ptr, ptr %t91, !tbaa !29
  store ptr %t92, ptr %l54, !tbaa !29
  %t93 = load { i64, [3 x i64] }, ptr %l6
  store { i64, [3 x i64] } %t93, ptr %l55
  %t94 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eExportMethod(ptr %s1)
  store %"compiler/diagmsg:Msg" %t94, ptr %l56
  br label %bb7
bb6:
  br label %bb9
bb7:
  %t95 = load ptr, ptr %l54, !tbaa !29
  %t96 = load { i64, [3 x i64] }, ptr %l55
  %t97 = load %"compiler/diagmsg:Msg", ptr %l56
  %t98 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %s1, ptr %t95, { i64, [3 x i64] } %t96, %"compiler/diagmsg:Msg" %t97)
  store i64 %t98, ptr %l57
  br label %bb8
bb8:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb9:
  %t99 = load ptr, ptr %l2, !tbaa !29
  %t101 = getelementptr %"compiler/ast:Func", ptr %t99, i32 0, i32 5
  %t102 = load { i64, ptr }, ptr %t101, !tbaa !27
  %t104 = extractvalue { i64, ptr } %t102, 0
  %t106 = icmp sgt i64 %t104, 0
  br i1 %t106, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l62, !tbaa !21
  br label %bb14
bb11:
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t110 = getelementptr %"compiler/check:Checker", ptr %t108, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !29
  store ptr %t111, ptr %l64, !tbaa !29
  %t112 = load i64, ptr %l1, !tbaa !24
  %t114 = call i64 @compiler_2fgeneric_2eFnOwner(i64 %t112)
  store i64 %t114, ptr %l66
  br label %bb12
bb12:
  %t115 = load ptr, ptr %l64, !tbaa !29
  %t116 = load i64, ptr %l66, !tbaa !24
  %t117 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %t115, i64 %t116)
  store i64 %t117, ptr %l67
  br label %bb13
bb13:
  %t118 = load i64, ptr %l67, !tbaa !24
  %t119 = icmp sgt i64 %t118, 0
  store i1 %t119, ptr %l62, !tbaa !21
  br label %bb14
bb14:
  %t121 = load i1, ptr %l62, !tbaa !21
  br i1 %t121, label %bb15, label %bb16
bb15:
  store %olang.scope zeroinitializer, ptr %s2
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t124 = getelementptr %"compiler/check:Checker", ptr %t122, i32 0, i32 1
  %t125 = load ptr, ptr %t124, !tbaa !29
  %t127 = getelementptr %"compiler/generic:Program", ptr %t125, i32 0, i32 0
  %t128 = load ptr, ptr %t127, !tbaa !29
  %t130 = getelementptr %"compiler/load:Loader", ptr %t128, i32 0, i32 4
  %t131 = load ptr, ptr %t130, !tbaa !29
  store ptr %t131, ptr %l72, !tbaa !29
  %t132 = load { i64, [3 x i64] }, ptr %l6
  store { i64, [3 x i64] } %t132, ptr %l73
  %t133 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eExportGeneric(ptr %s2)
  store %"compiler/diagmsg:Msg" %t133, ptr %l74
  br label %bb17
bb16:
  br label %bb19
bb17:
  %t134 = load ptr, ptr %l72, !tbaa !29
  %t135 = load { i64, [3 x i64] }, ptr %l73
  %t136 = load %"compiler/diagmsg:Msg", ptr %l74
  %t137 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %s2, ptr %t134, { i64, [3 x i64] } %t135, %"compiler/diagmsg:Msg" %t136)
  store i64 %t137, ptr %l75
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb19:
  %t138 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t140 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t138, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d5, i32 0, i32 1) })
  store i1 %t140, ptr %l77
  br label %bb20
bb20:
  %t141 = load i1, ptr %l77, !tbaa !21
  br i1 %t141, label %bb21, label %bb22
bb21:
  store i1 true, ptr %l78, !tbaa !21
  br label %bb24
bb22:
  %t142 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t144 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t142, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d6, i32 0, i32 1) })
  store i1 %t144, ptr %l80
  br label %bb23
bb23:
  %t145 = load i1, ptr %l80, !tbaa !21
  store i1 %t145, ptr %l78, !tbaa !21
  br label %bb24
bb24:
  %t146 = load i1, ptr %l78, !tbaa !21
  br i1 %t146, label %bb25, label %bb26
bb25:
  store %olang.scope zeroinitializer, ptr %s3
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t149 = getelementptr %"compiler/check:Checker", ptr %t147, i32 0, i32 1
  %t150 = load ptr, ptr %t149, !tbaa !29
  %t152 = getelementptr %"compiler/generic:Program", ptr %t150, i32 0, i32 0
  %t153 = load ptr, ptr %t152, !tbaa !29
  %t155 = getelementptr %"compiler/load:Loader", ptr %t153, i32 0, i32 4
  %t156 = load ptr, ptr %t155, !tbaa !29
  store ptr %t156, ptr %l84, !tbaa !29
  %t157 = load { i64, [3 x i64] }, ptr %l6
  store { i64, [3 x i64] } %t157, ptr %l85
  %t158 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t160 = call { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %s3, { i64, ptr } %t158)
  store { i64, ptr } %t160, ptr %l87
  br label %bb27
bb26:
  br label %bb30
bb27:
  %t161 = load { i64, ptr }, ptr %l87, !tbaa !27
  %t162 = extractvalue { i64, ptr } %t161, 0
  %t163 = extractvalue { i64, ptr } %t161, 1
  %t164 = mul i64 %t162, 1
  %t165 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t164)
  call void @llvm.memcpy.p0.p0.i64(ptr %t165, ptr %t163, i64 %t164, i1 false)
  %t166 = insertvalue { i64, ptr } undef, i64 %t162, 0
  %t167 = insertvalue { i64, ptr } %t166, ptr %t165, 1
  %t169 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eExportName(ptr %s3, ptr %s3, { i64, ptr } %t167)
  store %"compiler/diagmsg:Msg" %t169, ptr %l89
  br label %bb28
bb28:
  %t170 = load ptr, ptr %l84, !tbaa !29
  %t171 = load { i64, [3 x i64] }, ptr %l85
  %t172 = load %"compiler/diagmsg:Msg", ptr %l89
  %t173 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %s3, ptr %t170, { i64, [3 x i64] } %t171, %"compiler/diagmsg:Msg" %t172)
  store i64 %t173, ptr %l90
  br label %bb29
bb29:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb30:
  %t174 = load ptr, ptr %l0, !tbaa !29
  %t176 = getelementptr %"compiler/check:Checker", ptr %t174, i32 0, i32 1
  %t177 = load ptr, ptr %t176, !tbaa !29
  %t178 = load i64, ptr %l1, !tbaa !24
  %t181 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %t177, i64 %t178)
  store i32 %t181, ptr %l94
  br label %bb31
bb31:
  %t182 = load i32, ptr %l94, !tbaa !23
  store i32 %t182, ptr %l7, !tbaa !23
  %t183 = load ptr, ptr %l0, !tbaa !29
  %t185 = getelementptr %"compiler/check:Checker", ptr %t183, i32 0, i32 1
  %t186 = load ptr, ptr %t185, !tbaa !29
  %t188 = getelementptr %"compiler/generic:Program", ptr %t186, i32 0, i32 2
  store ptr %t188, ptr %l97, !tbaa !29
  %t189 = load ptr, ptr %l0, !tbaa !29
  %t191 = getelementptr %"compiler/check:Checker", ptr %t189, i32 0, i32 1
  %t192 = load ptr, ptr %t191, !tbaa !29
  %t194 = getelementptr %"compiler/generic:Program", ptr %t192, i32 0, i32 2
  %t195 = load i32, ptr %l7, !tbaa !23
  %t198 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t194, i32 %t195)
  store i32 %t198, ptr %l102
  br label %bb32
bb32:
  %t199 = load ptr, ptr %l97, !tbaa !29
  %t200 = load i32, ptr %l102, !tbaa !23
  %t201 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t199, i32 %t200)
  store { i64, ptr } %t201, ptr %l103
  br label %bb33
bb33:
  %t202 = load { i64, ptr }, ptr %l103, !tbaa !27
  store { i64, ptr } %t202, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t203 = load ptr, ptr %l2, !tbaa !29
  %t205 = getelementptr %"compiler/ast:Func", ptr %t203, i32 0, i32 3
  %t206 = load ptr, ptr %t205, !tbaa !29
  %t208 = getelementptr %"compiler/ast:Sig", ptr %t206, i32 0, i32 0
  %t209 = load { i64, ptr }, ptr %t208, !tbaa !27
  %t211 = extractvalue { i64, ptr } %t209, 0
  store i64 %t211, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t213 = load i64, ptr %l10, !tbaa !24
  %t214 = load i64, ptr %l9, !tbaa !24
  %t217 = icmp sgt i64 %t213, %t214
  br i1 %t217, label %bb34, label %bb35
bb34:
  %t219 = load i64, ptr %l11, !tbaa !24
  %t221 = icmp sgt i64 %t219, 0
  br i1 %t221, label %bb36, label %bb37
bb35:
  store i64 0, ptr %l111, !tbaa !24
  br label %bb39
bb36:
  %t223 = load i64, ptr %l10, !tbaa !24
  %t224 = load i64, ptr %l9, !tbaa !24
  %t227 = sub i64 %t223, %t224
  %t228 = load i64, ptr %l11, !tbaa !24
  %t231 = add i64 %t227, %t228
  %t233 = sub i64 %t231, 1
  %t234 = load i64, ptr %l11, !tbaa !24
  %t237 = sdiv i64 %t233, %t234
  store i64 %t237, ptr %l114, !tbaa !24
  br label %bb38
bb37:
  store i64 0, ptr %l114, !tbaa !24
  br label %bb38
bb38:
  %t239 = load i64, ptr %l114, !tbaa !24
  store i64 %t239, ptr %l111, !tbaa !24
  br label %bb39
bb39:
  %t240 = load i64, ptr %l111, !tbaa !24
  store i64 %t240, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb40
bb40:
  store %olang.scope zeroinitializer, ptr %s5
  %t241 = load i64, ptr %l13, !tbaa !24
  %t242 = load i64, ptr %l12, !tbaa !24
  %t245 = icmp slt i64 %t241, %t242
  %t247 = xor i1 %t245, true
  br i1 %t247, label %bb41, label %bb42
bb41:
  call void @__olang_scope_close(ptr %s5)
  br label %bb59
bb42:
  br label %bb43
bb43:
  %t249 = load i64, ptr %l9, !tbaa !24
  %t250 = load i64, ptr %l13, !tbaa !24
  %t251 = load i64, ptr %l11, !tbaa !24
  %t254 = mul i64 %t250, %t251
  %t257 = add i64 %t249, %t254
  store i64 %t257, ptr %l14, !tbaa !24
  %t259 = load i64, ptr %l14, !tbaa !24
  %t260 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t262 = extractvalue { i64, ptr } %t260, 0
  %t265 = icmp sge i64 %t259, %t262
  br i1 %t265, label %bb44, label %bb45
bb44:
  call void @__olang_scope_close(ptr %s5)
  br label %bb59
bb45:
  br label %bb46
bb46:
  %t267 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t267, ptr %l136, !tbaa !27
  %t268 = load i64, ptr %l14, !tbaa !24
  %t270 = getelementptr { i64, ptr }, ptr %l136, i32 0, i32 1
  %t271 = load ptr, ptr %t270, !tbaa !27
  %t272 = getelementptr i32, ptr %t271, i64 %t268
  %t273 = load i32, ptr %t272, !tbaa !33
  store i32 %t273, ptr %l15, !tbaa !23
  %t275 = load i32, ptr %l15, !tbaa !23
  %t276 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t279 = icmp eq i32 %t275, %t276
  br i1 %t279, label %bb47, label %bb48
bb47:
  store i1 true, ptr %l142, !tbaa !21
  br label %bb50
bb48:
  %t281 = load ptr, ptr %l0, !tbaa !29
  %t282 = load i32, ptr %l15, !tbaa !23
  %t285 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexportParam(ptr %v0, ptr %t281, i32 %t282)
  store i1 %t285, ptr %l145
  br label %bb49
bb49:
  %t286 = load i1, ptr %l145, !tbaa !21
  store i1 %t286, ptr %l142, !tbaa !21
  br label %bb50
bb50:
  %t287 = load i1, ptr %l142, !tbaa !21
  br i1 %t287, label %bb51, label %bb52
bb51:
  call void @__olang_scope_close(ptr %s5)
  br label %bb58
bb52:
  br label %bb53
bb53:
  %t288 = load ptr, ptr %l2, !tbaa !29
  %t290 = getelementptr %"compiler/ast:Func", ptr %t288, i32 0, i32 3
  %t291 = load ptr, ptr %t290, !tbaa !29
  %t293 = getelementptr %"compiler/ast:Sig", ptr %t291, i32 0, i32 0
  %t294 = load { i64, ptr }, ptr %t293, !tbaa !27
  store { i64, ptr } %t294, ptr %l148, !tbaa !27
  %t295 = load i64, ptr %l14, !tbaa !24
  %t297 = getelementptr { i64, ptr }, ptr %l148, i32 0, i32 1
  %t298 = load ptr, ptr %t297, !tbaa !27
  %t299 = getelementptr ptr, ptr %t298, i64 %t295
  %t300 = load ptr, ptr %t299, !tbaa !39
  %t302 = getelementptr %"compiler/ast:Param", ptr %t300, i32 0, i32 0
  %t303 = load %"compiler/source:Span", ptr %t302
  store %"compiler/source:Span" %t303, ptr %l16
  %t305 = load ptr, ptr %l0, !tbaa !29
  %t307 = getelementptr %"compiler/check:Checker", ptr %t305, i32 0, i32 1
  %t308 = load ptr, ptr %t307, !tbaa !29
  %t310 = getelementptr %"compiler/generic:Program", ptr %t308, i32 0, i32 0
  %t311 = load ptr, ptr %t310, !tbaa !29
  %t313 = getelementptr %"compiler/load:Loader", ptr %t311, i32 0, i32 4
  %t314 = load ptr, ptr %t313, !tbaa !29
  store ptr %t314, ptr %l155, !tbaa !29
  %t315 = load i64, ptr %l4, !tbaa !24
  store i64 %t315, ptr %l156, !tbaa !24
  %t316 = getelementptr %"compiler/source:Span", ptr %l16, i32 0, i32 0
  %t317 = load i32, ptr %t316, !tbaa !23
  %t319 = sext i32 %t317 to i64
  store i64 %t319, ptr %l158, !tbaa !24
  %t320 = getelementptr %"compiler/source:Span", ptr %l16, i32 0, i32 0
  %t321 = load i32, ptr %t320, !tbaa !23
  %t323 = sext i32 %t321 to i64
  store i64 %t323, ptr %l160, !tbaa !24
  %t324 = load ptr, ptr %l0, !tbaa !29
  %t325 = load ptr, ptr %l2, !tbaa !29
  %t327 = getelementptr %"compiler/ast:Func", ptr %t325, i32 0, i32 3
  %t328 = load ptr, ptr %t327, !tbaa !29
  %t330 = getelementptr %"compiler/ast:Sig", ptr %t328, i32 0, i32 0
  %t331 = load { i64, ptr }, ptr %t330, !tbaa !27
  store { i64, ptr } %t331, ptr %l164, !tbaa !27
  %t332 = load i64, ptr %l14, !tbaa !24
  %t334 = getelementptr { i64, ptr }, ptr %l164, i32 0, i32 1
  %t335 = load ptr, ptr %t334, !tbaa !27
  %t336 = getelementptr ptr, ptr %t335, i64 %t332
  %t337 = load ptr, ptr %t336, !tbaa !39
  %t339 = getelementptr %"compiler/ast:Param", ptr %t337, i32 0, i32 1
  %t340 = load i32, ptr %t339, !tbaa !23
  %t343 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s5, ptr %t324, i32 %t340)
  store { i64, ptr } %t343, ptr %l168
  br label %bb54
bb54:
  %t344 = load { i64, ptr }, ptr %l168, !tbaa !27
  %t345 = extractvalue { i64, ptr } %t344, 0
  %t346 = load i64, ptr %l160, !tbaa !24
  %t348 = add i64 %t346, %t345
  store { i64, [3 x i64] } zeroinitializer, ptr %t349
  %t350 = getelementptr { i64, [3 x i64] }, ptr %t349, i32 0, i32 0
  store i64 3, ptr %t350
  %t351 = load i64, ptr %l156, !tbaa !24
  %t352 = insertvalue { i64, i64, i64 } undef, i64 %t351, 0
  %t353 = load i64, ptr %l158, !tbaa !24
  %t354 = insertvalue { i64, i64, i64 } %t352, i64 %t353, 1
  %t356 = insertvalue { i64, i64, i64 } %t354, i64 %t348, 2
  %t357 = getelementptr { i64, [3 x i64] }, ptr %t349, i32 0, i32 1
  store { i64, i64, i64 } %t356, ptr %t357
  %t358 = load { i64, [3 x i64] }, ptr %t349
  store { i64, [3 x i64] } %t358, ptr %l171
  %t359 = load ptr, ptr %l0, !tbaa !29
  %t360 = load i32, ptr %l15, !tbaa !23
  %t363 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s5, ptr %t359, i32 %t360)
  store { i64, ptr } %t363, ptr %l174
  br label %bb55
bb55:
  %t364 = load { i64, ptr }, ptr %l174, !tbaa !27
  %t365 = extractvalue { i64, ptr } %t364, 0
  %t366 = extractvalue { i64, ptr } %t364, 1
  %t367 = mul i64 %t365, 1
  %t368 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t367)
  call void @llvm.memcpy.p0.p0.i64(ptr %t368, ptr %t366, i64 %t367, i1 false)
  %t369 = insertvalue { i64, ptr } undef, i64 %t365, 0
  %t370 = insertvalue { i64, ptr } %t369, ptr %t368, 1
  %t372 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eExportType(ptr %s5, ptr %s5, { i64, ptr } %t370)
  store %"compiler/diagmsg:Msg" %t372, ptr %l176
  br label %bb56
bb56:
  %t373 = load ptr, ptr %l155, !tbaa !29
  %t374 = load { i64, [3 x i64] }, ptr %l171
  %t375 = load %"compiler/diagmsg:Msg", ptr %l176
  %t376 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %s5, ptr %t373, { i64, [3 x i64] } %t374, %"compiler/diagmsg:Msg" %t375)
  store i64 %t376, ptr %l177
  br label %bb57
bb57:
  call void @__olang_scope_close(ptr %s5)
  br label %bb58
bb58:
  %t377 = load i64, ptr %l13, !tbaa !24
  %t379 = add i64 %t377, 1
  store i64 %t379, ptr %l13, !tbaa !24
  br label %bb40
bb59:
  %t381 = load ptr, ptr %l0, !tbaa !29
  %t383 = getelementptr %"compiler/check:Checker", ptr %t381, i32 0, i32 1
  %t384 = load ptr, ptr %t383, !tbaa !29
  %t386 = getelementptr %"compiler/generic:Program", ptr %t384, i32 0, i32 2
  %t387 = load i32, ptr %l7, !tbaa !23
  %t390 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t386, i32 %t387)
  store i32 %t390, ptr %l184
  br label %bb60
bb60:
  %t391 = load i32, ptr %l184, !tbaa !23
  store i32 %t391, ptr %l17, !tbaa !23
  %t392 = load i32, ptr %l17, !tbaa !23
  %t393 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t396 = icmp eq i32 %t392, %t393
  br i1 %t396, label %bb61, label %bb62
bb61:
  store i1 true, ptr %l188, !tbaa !21
  br label %bb63
bb62:
  %t398 = load i32, ptr %l17, !tbaa !23
  %t399 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t402 = icmp eq i32 %t398, %t399
  store i1 %t402, ptr %l188, !tbaa !21
  br label %bb63
bb63:
  %t404 = load i1, ptr %l188, !tbaa !21
  br i1 %t404, label %bb64, label %bb65
bb64:
  store i1 true, ptr %l192, !tbaa !21
  br label %bb66
bb65:
  %t405 = load ptr, ptr %l2, !tbaa !29
  %t407 = getelementptr %"compiler/ast:Func", ptr %t405, i32 0, i32 3
  %t408 = load ptr, ptr %t407, !tbaa !29
  %t410 = getelementptr %"compiler/ast:Sig", ptr %t408, i32 0, i32 1
  %t411 = load { i64, ptr }, ptr %t410, !tbaa !27
  %t413 = extractvalue { i64, ptr } %t411, 0
  %t415 = icmp eq i64 %t413, 0
  store i1 %t415, ptr %l192, !tbaa !21
  br label %bb66
bb66:
  %t417 = load i1, ptr %l192, !tbaa !21
  br i1 %t417, label %bb67, label %bb68
bb67:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb68:
  br label %bb69
bb69:
  %t418 = load ptr, ptr %l2, !tbaa !29
  %t420 = getelementptr %"compiler/ast:Func", ptr %t418, i32 0, i32 3
  %t421 = load ptr, ptr %t420, !tbaa !29
  %t423 = getelementptr %"compiler/ast:Sig", ptr %t421, i32 0, i32 1
  %t424 = load { i64, ptr }, ptr %t423, !tbaa !27
  %t426 = extractvalue { i64, ptr } %t424, 0
  %t428 = icmp sgt i64 %t426, 1
  br i1 %t428, label %bb70, label %bb71
bb70:
  store i1 true, ptr %l203, !tbaa !21
  br label %bb77
bb71:
  %t430 = load ptr, ptr %l0, !tbaa !29
  %t431 = load i32, ptr %l17, !tbaa !23
  %t434 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexternValue(ptr %v0, ptr %t430, i32 %t431)
  store i1 %t434, ptr %l206
  br label %bb72
bb72:
  %t435 = load i1, ptr %l206, !tbaa !21
  br i1 %t435, label %bb73, label %bb74
bb73:
  store i1 true, ptr %l207, !tbaa !21
  br label %bb76
bb74:
  %t436 = load ptr, ptr %l0, !tbaa !29
  %t437 = load i32, ptr %l17, !tbaa !23
  %t440 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexportArray(ptr %v0, ptr %t436, i32 %t437)
  store i1 %t440, ptr %l210
  br label %bb75
bb75:
  %t441 = load i1, ptr %l210, !tbaa !21
  store i1 %t441, ptr %l207, !tbaa !21
  br label %bb76
bb76:
  %t442 = load i1, ptr %l207, !tbaa !21
  %t443 = xor i1 %t442, true
  store i1 %t443, ptr %l203, !tbaa !21
  br label %bb77
bb77:
  %t445 = load i1, ptr %l203, !tbaa !21
  br i1 %t445, label %bb78, label %bb79
bb78:
  store %olang.scope zeroinitializer, ptr %s10
  %t446 = load ptr, ptr %l0, !tbaa !29
  %t448 = getelementptr %"compiler/check:Checker", ptr %t446, i32 0, i32 1
  %t449 = load ptr, ptr %t448, !tbaa !29
  %t451 = getelementptr %"compiler/generic:Program", ptr %t449, i32 0, i32 0
  %t452 = load ptr, ptr %t451, !tbaa !29
  %t454 = getelementptr %"compiler/load:Loader", ptr %t452, i32 0, i32 4
  %t455 = load ptr, ptr %t454, !tbaa !29
  store ptr %t455, ptr %l215, !tbaa !29
  %t456 = load i64, ptr %l4, !tbaa !24
  store i64 %t456, ptr %l216, !tbaa !24
  %t457 = load ptr, ptr %l2, !tbaa !29
  %t459 = getelementptr %"compiler/ast:Func", ptr %t457, i32 0, i32 3
  %t460 = load ptr, ptr %t459, !tbaa !29
  %t462 = getelementptr %"compiler/ast:Sig", ptr %t460, i32 0, i32 1
  %t463 = load { i64, ptr }, ptr %t462, !tbaa !27
  store { i64, ptr } %t463, ptr %l219, !tbaa !27
  %t464 = getelementptr { i64, ptr }, ptr %l219, i32 0, i32 1
  %t465 = load ptr, ptr %t464, !tbaa !27
  %t466 = getelementptr ptr, ptr %t465, i64 0
  %t467 = load ptr, ptr %t466, !tbaa !39
  %t469 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v0, ptr %t467)
  store %"compiler/source:Span" %t469, ptr %l221
  br label %bb80
bb79:
  br label %bb85
bb80:
  %t470 = getelementptr %"compiler/source:Span", ptr %l221, i32 0, i32 0
  %t471 = load i32, ptr %t470, !tbaa !23
  %t473 = sext i32 %t471 to i64
  store i64 %t473, ptr %l223, !tbaa !24
  %t474 = load ptr, ptr %l2, !tbaa !29
  %t476 = getelementptr %"compiler/ast:Func", ptr %t474, i32 0, i32 3
  %t477 = load ptr, ptr %t476, !tbaa !29
  %t479 = getelementptr %"compiler/ast:Sig", ptr %t477, i32 0, i32 1
  %t480 = load { i64, ptr }, ptr %t479, !tbaa !27
  store { i64, ptr } %t480, ptr %l226, !tbaa !27
  %t481 = load ptr, ptr %l2, !tbaa !29
  %t483 = getelementptr %"compiler/ast:Func", ptr %t481, i32 0, i32 3
  %t484 = load ptr, ptr %t483, !tbaa !29
  %t486 = getelementptr %"compiler/ast:Sig", ptr %t484, i32 0, i32 1
  %t487 = load { i64, ptr }, ptr %t486, !tbaa !27
  %t489 = extractvalue { i64, ptr } %t487, 0
  %t491 = sub i64 %t489, 1
  %t493 = getelementptr { i64, ptr }, ptr %l226, i32 0, i32 1
  %t494 = load ptr, ptr %t493, !tbaa !27
  %t495 = getelementptr ptr, ptr %t494, i64 %t491
  %t496 = load ptr, ptr %t495, !tbaa !39
  %t498 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v0, ptr %t496)
  store %"compiler/source:Span" %t498, ptr %l233
  br label %bb81
bb81:
  %t499 = getelementptr %"compiler/source:Span", ptr %l233, i32 0, i32 1
  %t500 = load i32, ptr %t499, !tbaa !23
  %t502 = sext i32 %t500 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t503
  %t504 = getelementptr { i64, [3 x i64] }, ptr %t503, i32 0, i32 0
  store i64 3, ptr %t504
  %t505 = load i64, ptr %l216, !tbaa !24
  %t506 = insertvalue { i64, i64, i64 } undef, i64 %t505, 0
  %t507 = load i64, ptr %l223, !tbaa !24
  %t508 = insertvalue { i64, i64, i64 } %t506, i64 %t507, 1
  %t510 = insertvalue { i64, i64, i64 } %t508, i64 %t502, 2
  %t511 = getelementptr { i64, [3 x i64] }, ptr %t503, i32 0, i32 1
  store { i64, i64, i64 } %t510, ptr %t511
  %t512 = load { i64, [3 x i64] }, ptr %t503
  store { i64, [3 x i64] } %t512, ptr %l236
  %t513 = load ptr, ptr %l0, !tbaa !29
  %t514 = load i32, ptr %l17, !tbaa !23
  %t517 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s10, ptr %t513, i32 %t514)
  store { i64, ptr } %t517, ptr %l239
  br label %bb82
bb82:
  %t518 = load { i64, ptr }, ptr %l239, !tbaa !27
  %t519 = extractvalue { i64, ptr } %t518, 0
  %t520 = extractvalue { i64, ptr } %t518, 1
  %t521 = mul i64 %t519, 1
  %t522 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t521)
  call void @llvm.memcpy.p0.p0.i64(ptr %t522, ptr %t520, i64 %t521, i1 false)
  %t523 = insertvalue { i64, ptr } undef, i64 %t519, 0
  %t524 = insertvalue { i64, ptr } %t523, ptr %t522, 1
  %t526 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eExportResult(ptr %s10, ptr %s10, { i64, ptr } %t524)
  store %"compiler/diagmsg:Msg" %t526, ptr %l241
  br label %bb83
bb83:
  %t527 = load ptr, ptr %l215, !tbaa !29
  %t528 = load { i64, [3 x i64] }, ptr %l236
  %t529 = load %"compiler/diagmsg:Msg", ptr %l241
  %t530 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %s10, ptr %t527, { i64, [3 x i64] } %t528, %"compiler/diagmsg:Msg" %t529)
  store i64 %t530, ptr %l242
  br label %bb84
bb84:
  call void @__olang_scope_close(ptr %s10)
  br label %bb85
bb85:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexternValue(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l5 = alloca i32
  %l8 = alloca i1
  %l9 = alloca i1
  %l16 = alloca i1
  %l22 = alloca i1
  %l25 = alloca i1
  %l29 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %t1, i32 %t2)
  store i32 %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load i32, ptr %l5, !tbaa !23
  store i32 %t6, ptr %l2, !tbaa !23
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load i32, ptr %l2, !tbaa !23
  %t11 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecNumber(ptr %v0, ptr %t7, i32 %t8)
  store i1 %t11, ptr %l8
  br label %bb2
bb2:
  %t12 = load i1, ptr %l8, !tbaa !21
  br i1 %t12, label %bb3, label %bb4
bb3:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb5
bb4:
  %t13 = load i32, ptr %l2, !tbaa !23
  %t14 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t17 = icmp eq i32 %t13, %t14
  store i1 %t17, ptr %l9, !tbaa !21
  br label %bb5
bb5:
  %t19 = load i1, ptr %l9, !tbaa !21
  br i1 %t19, label %bb6, label %bb7
bb6:
  store i1 true, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = load i32, ptr %l1, !tbaa !23
  %t25 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eforeignRef(ptr %v0, ptr %t21, i32 %t22)
  store i1 %t25, ptr %l16
  br label %bb9
bb9:
  %t26 = load i1, ptr %l16, !tbaa !21
  br i1 %t26, label %bb10, label %bb11
bb10:
  store i1 true, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/check:Checker", ptr %t28, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t33 = getelementptr %"compiler/generic:Program", ptr %t31, i32 0, i32 2
  %t34 = load i32, ptr %l2, !tbaa !23
  %t37 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePacked(ptr %v0, ptr %t33, i32 %t34)
  store i1 %t37, ptr %l22
  br label %bb13
bb13:
  %t38 = load i1, ptr %l22, !tbaa !21
  br i1 %t38, label %bb14, label %bb15
bb14:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t40 = load i32, ptr %l2, !tbaa !23
  %t43 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eholdsFloat(ptr %v0, ptr %t39, i32 %t40)
  store i1 %t43, ptr %l25
  br label %bb16
bb15:
  br label %bb17
bb16:
  %t44 = load i1, ptr %l25, !tbaa !21
  %t45 = xor i1 %t44, true
  store i1 %t45, ptr %rv
  br label %ret
bb17:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t48 = load i32, ptr %l1, !tbaa !23
  %t51 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplainStruct(ptr %v0, ptr %t47, i32 %t48, i64 0)
  store i1 %t51, ptr %l29
  br label %bb18
bb18:
  %t52 = load i1, ptr %l29, !tbaa !21
  store i1 %t52, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"compiler/check:factsMark" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efactsHeld(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca ptr
  %l3 = alloca ptr
  %l6 = alloca i64
  %l9 = alloca i64
  %l12 = alloca i64
  %l13 = alloca %"compiler/check:factsMark"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/check:factsMark"
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %a0)
  store ptr %t3, ptr %l3
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l3, !tbaa !29
  store ptr %t4, ptr %l1, !tbaa !29
  %t5 = load ptr, ptr %l1, !tbaa !29
  %t7 = getelementptr %"compiler/check:frame", ptr %t5, i32 0, i32 50
  %t9 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anullNarrow_3e_2eLen_H4b13e48b0a317e727dbe35330ad8712a(ptr %v0, ptr %t7)
  store i64 %t9, ptr %l6
  br label %bb2
bb2:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr %"compiler/check:frame", ptr %t10, i32 0, i32 46
  %t14 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anarrowed_3e_2eLen_3ccompiler_2fcheck_3anarrowed_3e(ptr %v0, ptr %t12)
  store i64 %t14, ptr %l9
  br label %bb3
bb3:
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t17 = getelementptr %"compiler/check:frame", ptr %t15, i32 0, i32 59
  %t19 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aerrNarrow_3e_2eLen__H3cdfcddd9c493bd8bcefc7b766e0438b(ptr %v0, ptr %t17)
  store i64 %t19, ptr %l12
  br label %bb4
bb4:
  %t20 = load i64, ptr %l6, !tbaa !24
  %t21 = load i64, ptr %l9, !tbaa !24
  %t22 = load i64, ptr %l12, !tbaa !24
  %t23 = call %"compiler/check:factsMark" @compiler_2fcheck_3afactsMark_2ector(ptr %s0, i64 %t20, i64 %t21, i64 %t22)
  store %"compiler/check:factsMark" %t23, ptr %l13
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s0)
  %t24 = load %"compiler/check:factsMark", ptr %l13
  store %"compiler/check:factsMark" %t24, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:factsMark", ptr %rv
  ret %"compiler/check:factsMark" %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efitsTest(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca i64
  %lp6 = alloca ptr
  %l7 = alloca i64
  %lp8 = alloca ptr
  %l9 = alloca i64
  %lp10 = alloca ptr
  %l13 = alloca i32
  %l16 = alloca i32
  %l19 = alloca i32
  %l21 = alloca i1
  %l25 = alloca { i64, ptr }
  %l31 = alloca ptr
  %l34 = alloca i64
  %l38 = alloca %"compiler/source:Span"
  %l39 = alloca i32
  %l40 = alloca i32
  %l41 = alloca i32
  %l45 = alloca { i64, ptr }
  %l49 = alloca i64
  %l56 = alloca %"compiler/source:Span"
  %l57 = alloca i32
  %l61 = alloca { i64, ptr }
  %l65 = alloca ptr
  %l67 = alloca %"compiler/typed:Seq"
  %l72 = alloca i64
  %l74 = alloca ptr
  %l78 = alloca ptr
  %l79 = alloca %"compiler/source:Span"
  %l80 = alloca i64
  %l84 = alloca { i64, ptr }
  %l88 = alloca { i64, ptr }
  %l89 = alloca %"compiler/typed:Clause"
  %l90 = alloca %"compiler/source:Span"
  %l91 = alloca i32
  %l94 = alloca { i64, ptr }
  %l95 = alloca %"compiler/typed:Try"
  %s0 = alloca %olang.scope
  %rv = alloca ptr
  %t62 = alloca { i64, [5 x i64] }, align 8
  %t90 = alloca { i64, [3 x i64] }, align 8
  %t124 = alloca { i64, [5 x i64] }, align 8
  %t201 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  store i32 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t4 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t1)
  store i32 %t4, ptr %l13
  br label %bb1
bb1:
  %t5 = load i32, ptr %l13, !tbaa !23
  store i32 %t5, ptr %l4, !tbaa !23
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t7 = load i32, ptr %l4, !tbaa !23
  %t10 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %t6, i32 %t7)
  store i32 %t10, ptr %l16
  br label %bb2
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load i32, ptr %l3, !tbaa !23
  %t15 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %t11, i32 %t12)
  store i32 %t15, ptr %l19
  br label %bb3
bb3:
  %t16 = load i32, ptr %l16, !tbaa !23
  %t17 = load i32, ptr %l19, !tbaa !23
  %t18 = icmp eq i32 %t16, %t17
  br i1 %t18, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l21, !tbaa !21
  br label %bb7
bb5:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load i32, ptr %l4, !tbaa !23
  %t22 = load i32, ptr %l3, !tbaa !23
  %t26 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econvWords(ptr %v0, ptr %s0, ptr %t20, i32 %t21, i32 %t22)
  store { i64, ptr } %t26, ptr %l25
  br label %bb6
bb6:
  %t27 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t28 = extractvalue { i64, ptr } %t27, 0
  %t30 = icmp eq i64 %t28, 0
  store i1 %t30, ptr %l21, !tbaa !21
  br label %bb7
bb7:
  %t32 = load i1, ptr %l21, !tbaa !21
  br i1 %t32, label %bb8, label %bb9
bb8:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t34 = load %"compiler/source:Span", ptr %l1
  %t35 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t39 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v2, ptr %t33, %"compiler/source:Span" %t34, i32 %t35, i64 1)
  store ptr %t39, ptr %l31
  br label %bb10
bb9:
  br label %bb11
bb10:
  call void @__olang_scope_close(ptr %s0)
  %t40 = load ptr, ptr %l31, !tbaa !29
  store ptr %t40, ptr %rv
  br label %ret
bb11:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/check:Checker", ptr %t41, i32 0, i32 36
  %t45 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t43)
  store i64 %t45, ptr %l34
  br label %bb12
bb12:
  %t46 = load i64, ptr %l34, !tbaa !24
  store i64 %t46, ptr %l5, !tbaa !24
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/check:Checker", ptr %t47, i32 0, i32 36
  %t50 = load ptr, ptr %l2, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %t49, ptr %t50)
  br label %bb13
bb13:
  %t53 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t53, ptr %l38
  %t54 = load i32, ptr %l3, !tbaa !23
  store i32 %t54, ptr %l39, !tbaa !23
  store i32 20, ptr %l40
  store i32 2, ptr %l41
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/check:Checker", ptr %t55, i32 0, i32 36
  %t58 = load i64, ptr %l5, !tbaa !24
  %t61 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v2, ptr %t57, i64 %t58)
  store { i64, ptr } %t61, ptr %l45
  br label %bb14
bb14:
  store { i64, [5 x i64] } zeroinitializer, ptr %t62
  %t63 = getelementptr { i64, [5 x i64] }, ptr %t62, i32 0, i32 0
  store i64 9, ptr %t63
  %t64 = load %"compiler/source:Span", ptr %l38
  %t65 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } undef, %"compiler/source:Span" %t64, 0
  %t66 = load i32, ptr %l39, !tbaa !23
  %t67 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t65, i32 %t66, 1
  %t68 = load i32, ptr %l40, !range !{i32 0, i32 52}
  %t69 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t67, i32 %t68, 2
  %t70 = load i32, ptr %l41, !range !{i32 0, i32 3}
  %t71 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t69, i32 %t70, 3
  %t72 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t73 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t71, { i64, ptr } %t72, 4
  %t74 = getelementptr { i64, [5 x i64] }, ptr %t62, i32 0, i32 1
  store { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t73, ptr %t74
  %t75 = load { i64, [5 x i64] }, ptr %t62
  %t76 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store ptr %t76, ptr %lp6
  %t78 = load ptr, ptr %lp6
  store { i64, [5 x i64] } %t75, ptr %t78
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"compiler/check:Checker", ptr %t79, i32 0, i32 37
  %t83 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t81)
  store i64 %t83, ptr %l49
  br label %bb15
bb15:
  %t84 = load i64, ptr %l49, !tbaa !24
  store i64 %t84, ptr %l7, !tbaa !24
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = getelementptr %"compiler/check:Checker", ptr %t85, i32 0, i32 37
  %t88 = load %"compiler/source:Span", ptr %l1
  %t89 = load ptr, ptr %lp6
  store { i64, [3 x i64] } zeroinitializer, ptr %t90
  %t91 = getelementptr { i64, [3 x i64] }, ptr %t90, i32 0, i32 0
  store i64 2, ptr %t91
  %t93 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t88, 0
  %t95 = insertvalue { %"compiler/source:Span", ptr } %t93, ptr %t89, 1
  %t96 = getelementptr { i64, [3 x i64] }, ptr %t90, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t95, ptr %t96
  %t97 = load { i64, [3 x i64] }, ptr %t90
  %t99 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t97, ptr %t99
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t87, ptr %t99)
  br label %bb16
bb16:
  %t102 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t102, ptr %l56
  %t103 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t103, ptr %l57, !tbaa !23
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t106 = getelementptr %"compiler/check:Checker", ptr %t104, i32 0, i32 37
  %t107 = load i64, ptr %l7, !tbaa !24
  %t110 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t106, i64 %t107)
  store { i64, ptr } %t110, ptr %l61
  br label %bb17
bb17:
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t112 = load %"compiler/source:Span", ptr %l1
  %t113 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t117 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v2, ptr %t111, %"compiler/source:Span" %t112, i32 %t113, i64 1)
  store ptr %t117, ptr %l65
  br label %bb18
bb18:
  %t118 = load ptr, ptr %l65, !tbaa !29
  %t119 = load { i64, ptr }, ptr %l61, !tbaa !27
  %t121 = call %"compiler/typed:Seq" @compiler_2ftyped_3aSeq_2ector(ptr %v0, ptr %v2, ptr %v2, { i64, ptr } %t119, ptr %t118, i1 false)
  store %"compiler/typed:Seq" %t121, ptr %l67
  br label %bb19
bb19:
  %t122 = load %"compiler/typed:Seq", ptr %l67
  %t123 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store %"compiler/typed:Seq" %t122, ptr %t123
  store { i64, [5 x i64] } zeroinitializer, ptr %t124
  %t125 = getelementptr { i64, [5 x i64] }, ptr %t124, i32 0, i32 0
  store i64 12, ptr %t125
  %t126 = load %"compiler/source:Span", ptr %l56
  %t127 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t126, 0
  %t128 = load i32, ptr %l57, !tbaa !23
  %t129 = insertvalue { %"compiler/source:Span", i32, ptr } %t127, i32 %t128, 1
  %t131 = insertvalue { %"compiler/source:Span", i32, ptr } %t129, ptr %t123, 2
  %t132 = getelementptr { i64, [5 x i64] }, ptr %t124, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t131, ptr %t132
  %t133 = load { i64, [5 x i64] }, ptr %t124
  %t134 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store ptr %t134, ptr %lp8
  %t136 = load ptr, ptr %lp8
  store { i64, [5 x i64] } %t133, ptr %t136
  %t137 = load ptr, ptr %l0, !tbaa !29
  %t139 = getelementptr %"compiler/check:Checker", ptr %t137, i32 0, i32 36
  %t141 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t139)
  store i64 %t141, ptr %l72
  br label %bb20
bb20:
  %t142 = load i64, ptr %l72, !tbaa !24
  store i64 %t142, ptr %l9, !tbaa !24
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t145 = getelementptr %"compiler/check:Checker", ptr %t143, i32 0, i32 36
  store ptr %t145, ptr %l74, !tbaa !29
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t147 = load %"compiler/source:Span", ptr %l1
  %t148 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t152 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v0, ptr %t146, %"compiler/source:Span" %t147, i32 %t148, i64 0)
  store ptr %t152, ptr %l78
  br label %bb21
bb21:
  %t153 = load ptr, ptr %l74, !tbaa !29
  %t154 = load ptr, ptr %l78, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t153, ptr %t154)
  br label %bb22
bb22:
  %t155 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t155, ptr %l79
  %t156 = ptrtoint ptr %v2 to i64
  store i64 %t156, ptr %l80, !tbaa !24
  %t157 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aClause_2e1
  br i1 %t157, label %bb23, label %bb24
bb23:
  %t159 = call ptr @__olang_region_make(ptr %v2)
  %t160 = ptrtoint ptr %t159 to i64
  store i64 %t160, ptr %l80, !tbaa !24
  br label %bb24
bb24:
  %t161 = icmp sge i64 0, 0
  br i1 %t161, label %bb25, label %bb26
bb25:
  %t163 = icmp sle i64 0, 576460752303423487
  br i1 %t163, label %bb27, label %bb28
bb26:
  call void @__olang_check_failed(ptr @olang_loc_ce45aa27b33b13c4_efb6d2bad65aad00)
  unreachable
bb27:
  %t165 = mul i64 0, 16
  %t166 = load i64, ptr %l80
  %t167 = inttoptr i64 %t166 to ptr
  %t168 = insertvalue { i64, ptr } undef, i64 0, 0
  %t169 = insertvalue { i64, ptr } %t168, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t169, ptr %l84, !tbaa !27
  %t170 = load ptr, ptr %l0, !tbaa !29
  %t172 = getelementptr %"compiler/check:Checker", ptr %t170, i32 0, i32 36
  %t173 = load i64, ptr %l9, !tbaa !24
  %t176 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t172, i64 %t173)
  store { i64, ptr } %t176, ptr %l88
  br label %bb29
bb28:
  call void @__olang_check_failed(ptr @olang_loc_ce45aa27b33b13c4_efb6d2bad65aad00)
  unreachable
bb29:
  %t177 = load %"compiler/source:Span", ptr %l79
  %t178 = load { i64, ptr }, ptr %l84, !tbaa !27
  %t179 = load { i64, ptr }, ptr %l88, !tbaa !27
  %t180 = call %"compiler/typed:Clause" @compiler_2ftyped_3aClause_2ector(ptr %v2, ptr %v2, ptr %v0, ptr %v2, %"compiler/source:Span" %t177, { i64, ptr } %t178, i1 true, ptr null, { i64, ptr } %t179, i64 -1, i32 0)
  store %"compiler/typed:Clause" %t180, ptr %l89
  br label %bb30
bb30:
  %t181 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 72, i64 8)
  store ptr %t181, ptr %lp10
  %t182 = load %"compiler/typed:Clause", ptr %l89
  %t183 = load ptr, ptr %lp10
  store %"compiler/typed:Clause" %t182, ptr %t183
  %t184 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t184, ptr %l90
  %t185 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t185, ptr %l91, !tbaa !23
  %t186 = load ptr, ptr %lp8
  %t187 = load ptr, ptr %lp10
  %t188 = mul i64 1, 8
  %t189 = call ptr @__olang_scope_alloc_zeroed(ptr %v2, i64 %t188)
  %t190 = insertvalue { i64, ptr } undef, i64 1, 0
  %t191 = insertvalue { i64, ptr } %t190, ptr %t189, 1
  store { i64, ptr } %t191, ptr %l94, !tbaa !27
  %t193 = getelementptr { i64, ptr }, ptr %l94, i32 0, i32 1
  %t194 = load ptr, ptr %t193, !tbaa !27
  %t195 = getelementptr ptr, ptr %t194, i64 0
  store ptr %t187, ptr %t195, !tbaa !39
  %t197 = load { i64, ptr }, ptr %l94, !tbaa !27
  %t198 = call %"compiler/typed:Try" @compiler_2ftyped_3aTry_2ector(ptr %v2, ptr %v2, ptr %v2, ptr %t186, { i64, ptr } %t197, i1 false, i1 false, i1 true)
  store %"compiler/typed:Try" %t198, ptr %l95
  br label %bb31
bb31:
  %t199 = load %"compiler/typed:Try", ptr %l95
  %t200 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store %"compiler/typed:Try" %t199, ptr %t200
  store { i64, [5 x i64] } zeroinitializer, ptr %t201
  %t202 = getelementptr { i64, [5 x i64] }, ptr %t201, i32 0, i32 0
  store i64 14, ptr %t202
  %t203 = load %"compiler/source:Span", ptr %l90
  %t204 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t203, 0
  %t205 = load i32, ptr %l91, !tbaa !23
  %t206 = insertvalue { %"compiler/source:Span", i32, ptr } %t204, i32 %t205, 1
  %t208 = insertvalue { %"compiler/source:Span", i32, ptr } %t206, ptr %t200, 2
  %t209 = getelementptr { i64, [5 x i64] }, ptr %t201, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t208, ptr %t209
  %t210 = load { i64, [5 x i64] }, ptr %t201
  %t212 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t210, ptr %t212
  call void @__olang_scope_close(ptr %s0)
  store ptr %t212, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einPlaceCopied(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, %"compiler/source:Span" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l6 = alloca ptr
  %l11 = alloca { i64, ptr }
  %l16 = alloca ptr
  %l17 = alloca { i64, ptr }
  %l21 = alloca i1
  %l22 = alloca { i64, ptr }
  %l23 = alloca { i64, ptr }
  %l29 = alloca { i64, ptr }
  %l30 = alloca i32
  %l31 = alloca { i64, ptr }
  %l34 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t1)
  store ptr %t3, ptr %l6
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l6, !tbaa !29
  %t6 = getelementptr %"compiler/check:frame", ptr %t4, i32 0, i32 2
  %t7 = load i64, ptr %t6, !tbaa !24
  store i64 %t7, ptr %l3, !tbaa !24
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load i64, ptr %l3, !tbaa !24
  %t13 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efileIdentity(ptr %v0, ptr %s0, ptr %t9, i64 %t10)
  store { i64, ptr } %t13, ptr %l11
  br label %bb2
bb2:
  %t14 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t15 = load i32, ptr %t14, !tbaa !23
  %t16 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d7, i32 0, i32 1) }, 1
  %t17 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d7, i32 0, i32 1) }, 0
  %t18 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t19 = extractvalue { i64, ptr } %t18, 1
  %t20 = extractvalue { i64, ptr } %t18, 0
  %t21 = add i64 %t17, %t20
  %t22 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d8, i32 0, i32 1) }, 1
  %t23 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d8, i32 0, i32 1) }, 0
  %t24 = add i64 %t21, %t23
  %t26 = sext i32 %t15 to i64
  %t27 = call i64 @__olang_fmt_i64(ptr null, i64 %t26)
  %t28 = add i64 %t24, %t27
  %t29 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t28)
  call void @olang_textcopy(ptr %t29, ptr %t16, i64 %t17)
  %t30 = getelementptr i8, ptr %t29, i64 %t17
  call void @olang_textcopy(ptr %t30, ptr %t19, i64 %t20)
  %t31 = getelementptr i8, ptr %t30, i64 %t20
  call void @olang_textcopy(ptr %t31, ptr %t22, i64 %t23)
  %t32 = getelementptr i8, ptr %t31, i64 %t23
  %t33 = call i64 @__olang_fmt_i64(ptr %t32, i64 %t26)
  %t34 = insertvalue { i64, ptr } undef, i64 %t28, 0
  %t35 = insertvalue { i64, ptr } %t34, ptr %t29, 1
  store { i64, ptr } %t35, ptr %l4, !tbaa !27
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/check:Checker", ptr %t37, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !29
  %t42 = getelementptr %"compiler/generic:Program", ptr %t40, i32 0, i32 3
  store ptr %t42, ptr %l16, !tbaa !29
  %t43 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t43, ptr %l17, !tbaa !27
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/check:Checker", ptr %t44, i32 0, i32 71
  %t50 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6b5ccacad8db807339a3579aa8c82ff8(ptr %v0, ptr %v1, ptr %t46, { i64, ptr } %a1)
  store i1 %t50, ptr %l21
  br label %bb3
bb3:
  %t51 = load i1, ptr %l21, !tbaa !21
  br i1 %t51, label %bb4, label %bb5
bb4:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d9, i32 0, i32 1) }, ptr %l22, !tbaa !27
  br label %bb6
bb5:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d10, i32 0, i32 1) }, ptr %l22, !tbaa !27
  br label %bb6
bb6:
  %t52 = load ptr, ptr %l16, !tbaa !29
  %t53 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t54 = load { i64, ptr }, ptr %l22, !tbaa !27
  call void @compiler_2ffacts_2ecompiler_2ffacts_3aTable_2eDecide(ptr %v0, ptr %s0, ptr %s0, ptr %t52, { i64, ptr } %t53, { i64, ptr } %t54, i1 false)
  br label %bb7
bb7:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/check:Checker", ptr %t55, i32 0, i32 1
  %t58 = load ptr, ptr %t57, !tbaa !29
  %t60 = getelementptr %"compiler/generic:Program", ptr %t58, i32 0, i32 3
  %t61 = load i64, ptr %l3, !tbaa !24
  %t62 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t66 = call { i32, { i64, ptr } } @compiler_2ffacts_2ecompiler_2ffacts_3aTable_2eRead(ptr %v0, ptr %s0, ptr %s0, ptr %t60, i64 %t61, { i64, ptr } %t62)
  %t67 = extractvalue { i32, { i64, ptr } } %t66, 1
  %t68 = extractvalue { i32, { i64, ptr } } %t66, 0
  store i32 %t68, ptr %l30
  %t69 = icmp ne i32 %t68, 0
  br i1 %t69, label %bb9, label %ok.70, !prof !99
ok.70:
  store { i64, ptr } %t67, ptr %l29
  br label %bb8
bb8:
  %t71 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t71, ptr %l23, !tbaa !27
  br label %bb11
bb9:
  br label %bb10
bb10:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d11, i32 0, i32 1) }, ptr %l31, !tbaa !27
  %t72 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t72, ptr %l23, !tbaa !27
  br label %bb11
bb11:
  %t74 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t75 = extractvalue { i64, ptr } %t74, 0
  %t76 = extractvalue { i64, ptr } %t74, 1
  %t77 = mul i64 %t75, 1
  %t78 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t77)
  call void @llvm.memcpy.p0.p0.i64(ptr %t78, ptr %t76, i64 %t77, i1 false)
  %t79 = insertvalue { i64, ptr } undef, i64 %t75, 0
  %t80 = insertvalue { i64, ptr } %t79, ptr %t78, 1
  %t82 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t80, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d12, i32 0, i32 1) })
  store i1 %t82, ptr %l34
  br label %bb12
bb12:
  call void @__olang_scope_close(ptr %s0)
  %t83 = load i1, ptr %l34, !tbaa !21
  store i1 %t83, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einferReturn(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca { i64, ptr }
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca ptr
  %l13 = alloca i32
  %l14 = alloca { i64, ptr }
  %l15 = alloca ptr
  %l17 = alloca ptr
  %l30 = alloca i64
  %l32 = alloca i64
  %l41 = alloca i64
  %l44 = alloca i64
  %l62 = alloca ptr
  %l64 = alloca { i64, ptr }
  %l69 = alloca ptr
  %l70 = alloca { i64, ptr }
  %l73 = alloca %"compiler/source:Span"
  %l74 = alloca ptr
  %l77 = alloca i32
  %l81 = alloca i1
  %l85 = alloca ptr
  %l86 = alloca { i64, ptr }
  %l89 = alloca %"compiler/source:Span"
  %l90 = alloca %"compiler/diagmsg:Msg"
  %l91 = alloca i64
  %l97 = alloca { i64, ptr }
  %l101 = alloca i32
  %l105 = alloca ptr
  %l106 = alloca ptr
  %l107 = alloca ptr
  %l108 = alloca i32
  %l109 = alloca { i64, ptr }
  %l112 = alloca %"compiler/source:Span"
  %l113 = alloca ptr
  %l119 = alloca { i64, ptr }
  %l125 = alloca { i64, ptr }
  %l127 = alloca i32
  %l129 = alloca i32
  %l131 = alloca i1
  %l132 = alloca ptr
  %l135 = alloca i32
  %l136 = alloca i1
  %l144 = alloca ptr
  %l151 = alloca ptr
  %l154 = alloca ptr
  %l159 = alloca i32
  %l160 = alloca i32
  %l161 = alloca ptr
  %l162 = alloca %"compiler/source:Span"
  %l163 = alloca %"compiler/source:Span"
  %l165 = alloca i32
  %l169 = alloca %"compiler/typed:Make"
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %t21 = alloca { i64, [3 x i64] }, align 8
  %t277 = alloca { i64, [4 x i64] }, align 8
  %t298 = alloca { i64, [3 x i64] }, align 8
  %t347 = alloca { i64, [5 x i64] }, align 8
  %t359 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t1)
  store ptr %t3, ptr %l17
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l17, !tbaa !29
  store ptr %t4, ptr %l3, !tbaa !29
  %t5 = load ptr, ptr %l3, !tbaa !29
  %t7 = getelementptr %"compiler/check:frame", ptr %t5, i32 0, i32 25
  store i1 false, ptr %t7, !tbaa !21
  %t8 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t8, 0
  %t12 = icmp eq i64 %t10, 0
  br i1 %t12, label %bb2, label %bb3
bb2:
  %t14 = load ptr, ptr %l3, !tbaa !29
  %t15 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t18 = getelementptr %"compiler/check:frame", ptr %t14, i32 0, i32 5
  store i32 %t15, ptr %t18, !tbaa !23
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t20 = load %"compiler/source:Span", ptr %l1
  store { i64, [3 x i64] } zeroinitializer, ptr %t21
  %t22 = getelementptr { i64, [3 x i64] }, ptr %t21, i32 0, i32 0
  store i64 6, ptr %t22
  %t24 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t20, 0
  %t25 = insertvalue { %"compiler/source:Span", ptr } %t24, ptr null, 1
  %t26 = getelementptr { i64, [3 x i64] }, ptr %t21, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t25, ptr %t26
  %t27 = load { i64, [3 x i64] }, ptr %t21
  %t29 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t27, ptr %t29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t19, ptr %t29)
  br label %bb4
bb3:
  br label %bb5
bb4:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb5:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/check:Checker", ptr %t32, i32 0, i32 36
  %t36 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t34)
  store i64 %t36, ptr %l30
  br label %bb6
bb6:
  %t37 = load i64, ptr %l30, !tbaa !24
  store i64 %t37, ptr %l4, !tbaa !24
  %t38 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t40 = extractvalue { i64, ptr } %t38, 0
  store i64 %t40, ptr %l32, !tbaa !24
  %t41 = load i64, ptr %l32, !tbaa !24
  %t42 = icmp sge i64 %t41, 0
  br i1 %t42, label %bb7, label %bb8
bb7:
  %t44 = load i64, ptr %l32, !tbaa !24
  %t45 = icmp sle i64 %t44, 2305843009213693951
  br i1 %t45, label %bb9, label %bb10
bb8:
  call void @__olang_check_failed(ptr @olang_loc_a6a18c8586cf83c4_fafef84db4cc6ad8)
  unreachable
bb9:
  %t47 = load i64, ptr %l32, !tbaa !24
  %t48 = mul i64 %t47, 4
  %t49 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t48)
  %t50 = insertvalue { i64, ptr } undef, i64 %t47, 0
  %t51 = insertvalue { i64, ptr } %t50, ptr %t49, 1
  store { i64, ptr } %t51, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t53 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t55 = extractvalue { i64, ptr } %t53, 0
  store i64 %t55, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t57 = load i64, ptr %l7, !tbaa !24
  %t58 = load i64, ptr %l6, !tbaa !24
  %t61 = icmp sgt i64 %t57, %t58
  br i1 %t61, label %bb11, label %bb12
bb10:
  call void @__olang_check_failed(ptr @olang_loc_a6a18c8586cf83c4_fafef84db4cc6ad8)
  unreachable
bb11:
  %t63 = load i64, ptr %l8, !tbaa !24
  %t65 = icmp sgt i64 %t63, 0
  br i1 %t65, label %bb13, label %bb14
bb12:
  store i64 0, ptr %l41, !tbaa !24
  br label %bb16
bb13:
  %t67 = load i64, ptr %l7, !tbaa !24
  %t68 = load i64, ptr %l6, !tbaa !24
  %t71 = sub i64 %t67, %t68
  %t72 = load i64, ptr %l8, !tbaa !24
  %t75 = add i64 %t71, %t72
  %t77 = sub i64 %t75, 1
  %t78 = load i64, ptr %l8, !tbaa !24
  %t81 = sdiv i64 %t77, %t78
  store i64 %t81, ptr %l44, !tbaa !24
  br label %bb15
bb14:
  store i64 0, ptr %l44, !tbaa !24
  br label %bb15
bb15:
  %t83 = load i64, ptr %l44, !tbaa !24
  store i64 %t83, ptr %l41, !tbaa !24
  br label %bb16
bb16:
  %t84 = load i64, ptr %l41, !tbaa !24
  store i64 %t84, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb17
bb17:
  %t85 = load i64, ptr %l10, !tbaa !24
  %t86 = load i64, ptr %l9, !tbaa !24
  %t89 = icmp slt i64 %t85, %t86
  %t91 = xor i1 %t89, true
  br i1 %t91, label %bb18, label %bb19
bb18:
  br label %bb42
bb19:
  br label %bb20
bb20:
  %t93 = load i64, ptr %l6, !tbaa !24
  %t94 = load i64, ptr %l10, !tbaa !24
  %t95 = load i64, ptr %l8, !tbaa !24
  %t98 = mul i64 %t94, %t95
  %t101 = add i64 %t93, %t98
  store i64 %t101, ptr %l11, !tbaa !24
  %t103 = load ptr, ptr %l0, !tbaa !29
  store ptr %t103, ptr %l62, !tbaa !29
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t105 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t105, ptr %l64, !tbaa !27
  %t106 = load i64, ptr %l11, !tbaa !24
  %t108 = getelementptr { i64, ptr }, ptr %l64, i32 0, i32 1
  %t109 = load ptr, ptr %t108, !tbaa !27
  %t110 = getelementptr ptr, ptr %t109, i64 %t106
  %t111 = load ptr, ptr %t110, !tbaa !39
  %t113 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t117 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v0, ptr %t104, ptr %t111, i32 %t113)
  store ptr %t117, ptr %l69
  br label %bb21
bb21:
  %t118 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t118, ptr %l70, !tbaa !27
  %t119 = load i64, ptr %l11, !tbaa !24
  %t121 = getelementptr { i64, ptr }, ptr %l70, i32 0, i32 1
  %t122 = load ptr, ptr %t121, !tbaa !27
  %t123 = getelementptr ptr, ptr %t122, i64 %t119
  %t124 = load ptr, ptr %t123, !tbaa !39
  %t126 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t124)
  store %"compiler/source:Span" %t126, ptr %l73
  br label %bb22
bb22:
  %t127 = load ptr, ptr %l62, !tbaa !29
  %t128 = load ptr, ptr %l69, !tbaa !29
  %t129 = load %"compiler/source:Span", ptr %l73
  %t130 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalue(ptr %v0, ptr %v0, ptr %v0, ptr %t127, ptr %t128, %"compiler/source:Span" %t129)
  store ptr %t130, ptr %l74
  br label %bb23
bb23:
  %t131 = load ptr, ptr %l74, !tbaa !29
  store ptr %t131, ptr %l12, !tbaa !29
  %t132 = load ptr, ptr %l12, !tbaa !29
  %t135 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t132)
  store i32 %t135, ptr %l77
  br label %bb24
bb24:
  %t136 = load i32, ptr %l77, !tbaa !23
  store i32 %t136, ptr %l13, !tbaa !23
  %t137 = load i32, ptr %l13, !tbaa !23
  %t138 = load i32, ptr @G_2ecompiler_2ftypes_2eNullT, !tbaa !23
  %t141 = icmp eq i32 %t137, %t138
  br i1 %t141, label %bb25, label %bb26
bb25:
  store i1 true, ptr %l81, !tbaa !21
  br label %bb27
bb26:
  %t143 = load i32, ptr %l13, !tbaa !23
  %t144 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t147 = icmp eq i32 %t143, %t144
  store i1 %t147, ptr %l81, !tbaa !21
  br label %bb27
bb27:
  %t149 = load i1, ptr %l81, !tbaa !21
  br i1 %t149, label %bb28, label %bb29
bb28:
  store %olang.scope zeroinitializer, ptr %s4
  %t150 = load ptr, ptr %l0, !tbaa !29
  store ptr %t150, ptr %l85, !tbaa !29
  %t151 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t151, ptr %l86, !tbaa !27
  %t152 = load i64, ptr %l11, !tbaa !24
  %t154 = getelementptr { i64, ptr }, ptr %l86, i32 0, i32 1
  %t155 = load ptr, ptr %t154, !tbaa !27
  %t156 = getelementptr ptr, ptr %t155, i64 %t152
  %t157 = load ptr, ptr %t156, !tbaa !39
  %t159 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t157)
  store %"compiler/source:Span" %t159, ptr %l89
  br label %bb30
bb29:
  %t160 = load i32, ptr %l13, !tbaa !23
  %t161 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t164 = icmp ne i32 %t160, %t161
  br i1 %t164, label %bb33, label %bb34
bb30:
  %t166 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLambdaResultUninferable(ptr %s4)
  store %"compiler/diagmsg:Msg" %t166, ptr %l90
  br label %bb31
bb31:
  %t167 = load ptr, ptr %l85, !tbaa !29
  %t168 = load %"compiler/source:Span", ptr %l89
  %t169 = load %"compiler/diagmsg:Msg", ptr %l90
  %t170 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s4, ptr %t167, %"compiler/source:Span" %t168, %"compiler/diagmsg:Msg" %t169)
  store i64 %t170, ptr %l91
  br label %bb32
bb32:
  %t171 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t171, ptr %l13, !tbaa !23
  call void @__olang_scope_close(ptr %s4)
  br label %bb37
bb33:
  %t173 = load ptr, ptr %l0, !tbaa !29
  %t174 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t174, ptr %l97, !tbaa !27
  %t175 = load i64, ptr %l11, !tbaa !24
  %t177 = getelementptr { i64, ptr }, ptr %l97, i32 0, i32 1
  %t178 = load ptr, ptr %t177, !tbaa !27
  %t179 = getelementptr ptr, ptr %t178, i64 %t175
  %t180 = load ptr, ptr %t179, !tbaa !39
  %t181 = load ptr, ptr %l12, !tbaa !29
  %t185 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einferred(ptr %v0, ptr %v1, ptr %v0, ptr %t173, ptr %t180, ptr %t181, i1 false)
  store i32 %t185, ptr %l101
  br label %bb35
bb34:
  br label %bb36
bb35:
  %t186 = load i32, ptr %l101, !tbaa !23
  store i32 %t186, ptr %l13, !tbaa !23
  br label %bb36
bb36:
  br label %bb37
bb37:
  %t187 = load i64, ptr %l11, !tbaa !24
  %t188 = load i32, ptr %l13, !tbaa !23
  %t191 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t192 = load ptr, ptr %t191, !tbaa !27
  %t193 = getelementptr i32, ptr %t192, i64 %t187
  store i32 %t188, ptr %t193, !tbaa !33
  %t194 = load ptr, ptr %l0, !tbaa !29
  %t196 = getelementptr %"compiler/check:Checker", ptr %t194, i32 0, i32 36
  store ptr %t196, ptr %l105, !tbaa !29
  %t197 = load ptr, ptr %l0, !tbaa !29
  store ptr %t197, ptr %l106, !tbaa !29
  %t198 = load ptr, ptr %l12, !tbaa !29
  store ptr %t198, ptr %l107, !tbaa !29
  %t199 = load i32, ptr %l13, !tbaa !23
  store i32 %t199, ptr %l108, !tbaa !23
  %t200 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t200, ptr %l109, !tbaa !27
  %t201 = load i64, ptr %l11, !tbaa !24
  %t203 = getelementptr { i64, ptr }, ptr %l109, i32 0, i32 1
  %t204 = load ptr, ptr %t203, !tbaa !27
  %t205 = getelementptr ptr, ptr %t204, i64 %t201
  %t206 = load ptr, ptr %t205, !tbaa !39
  %t208 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t206)
  store %"compiler/source:Span" %t208, ptr %l112
  br label %bb38
bb38:
  %t209 = load ptr, ptr %l106, !tbaa !29
  %t210 = load ptr, ptr %l107, !tbaa !29
  %t211 = load i32, ptr %l108, !tbaa !23
  %t212 = load %"compiler/source:Span", ptr %l112
  %t213 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v0, ptr %v0, ptr %t209, ptr %t210, i32 %t211, %"compiler/source:Span" %t212)
  store ptr %t213, ptr %l113
  br label %bb39
bb39:
  %t214 = load ptr, ptr %l105, !tbaa !29
  %t215 = load ptr, ptr %l113, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t214, ptr %t215)
  br label %bb40
bb40:
  br label %bb41
bb41:
  %t216 = load i64, ptr %l10, !tbaa !24
  %t218 = add i64 %t216, 1
  store i64 %t218, ptr %l10, !tbaa !24
  br label %bb17
bb42:
  %t220 = load ptr, ptr %l0, !tbaa !29
  %t222 = getelementptr %"compiler/check:Checker", ptr %t220, i32 0, i32 36
  %t223 = load i64, ptr %l4, !tbaa !24
  %t226 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t222, i64 %t223)
  store { i64, ptr } %t226, ptr %l119
  br label %bb43
bb43:
  %t227 = load { i64, ptr }, ptr %l119, !tbaa !27
  store { i64, ptr } %t227, ptr %l14, !tbaa !27
  %t228 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t230 = extractvalue { i64, ptr } %t228, 0
  %t232 = icmp eq i64 %t230, 1
  br i1 %t232, label %bb44, label %bb45
bb44:
  %t234 = load ptr, ptr %l3, !tbaa !29
  %t235 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t236 = load ptr, ptr %t235, !tbaa !27
  %t237 = getelementptr i32, ptr %t236, i64 0
  %t238 = load i32, ptr %t237, !tbaa !33
  %t241 = getelementptr %"compiler/check:frame", ptr %t234, i32 0, i32 5
  store i32 %t238, ptr %t241, !tbaa !23
  %t242 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t242, ptr %l125, !tbaa !27
  %t243 = getelementptr { i64, ptr }, ptr %l125, i32 0, i32 1
  %t244 = load ptr, ptr %t243, !tbaa !27
  %t245 = getelementptr ptr, ptr %t244, i64 0
  %t246 = load ptr, ptr %t245, !tbaa !39
  store ptr %t246, ptr %l15, !tbaa !29
  %t248 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t249 = load ptr, ptr %t248, !tbaa !27
  %t250 = getelementptr i32, ptr %t249, i64 0
  %t251 = load i32, ptr %t250, !tbaa !33
  store i32 %t251, ptr %l127, !tbaa !23
  %t252 = load ptr, ptr %l0, !tbaa !29
  %t254 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextType(ptr %v0, ptr %t252)
  store i32 %t254, ptr %l129
  br label %bb46
bb45:
  br label %bb57
bb46:
  %t255 = load i32, ptr %l127, !tbaa !23
  %t256 = load i32, ptr %l129, !tbaa !23
  %t257 = icmp eq i32 %t255, %t256
  br i1 %t257, label %bb47, label %bb48
bb47:
  %t259 = load ptr, ptr %l0, !tbaa !29
  store ptr %t259, ptr %l132, !tbaa !29
  %t260 = load ptr, ptr %l15, !tbaa !29
  %t263 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t260)
  store i32 %t263, ptr %l135
  br label %bb49
bb48:
  store i1 false, ptr %l131, !tbaa !21
  br label %bb51
bb49:
  %t264 = load ptr, ptr %l132, !tbaa !29
  %t265 = load i32, ptr %l135, !tbaa !23
  %t266 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t264, i32 %t265)
  store i1 %t266, ptr %l136
  br label %bb50
bb50:
  %t267 = load i1, ptr %l136, !tbaa !21
  store i1 %t267, ptr %l131, !tbaa !21
  br label %bb51
bb51:
  %t268 = load i1, ptr %l131, !tbaa !21
  br i1 %t268, label %bb52, label %bb53
bb52:
  %t269 = load ptr, ptr %l0, !tbaa !29
  %t270 = load %"compiler/source:Span", ptr %l1
  %t271 = load %"compiler/source:Span", ptr %l1
  %t272 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t273 = load ptr, ptr %t272, !tbaa !27
  %t274 = getelementptr i32, ptr %t273, i64 0
  %t275 = load i32, ptr %t274, !tbaa !33
  %t276 = load ptr, ptr %l15, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t277
  %t278 = getelementptr { i64, [4 x i64] }, ptr %t277, i32 0, i32 0
  store i64 2, ptr %t278
  %t280 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t271, 0
  %t282 = insertvalue { %"compiler/source:Span", i32, ptr } %t280, i32 %t275, 1
  %t284 = insertvalue { %"compiler/source:Span", i32, ptr } %t282, ptr %t276, 2
  %t285 = getelementptr { i64, [4 x i64] }, ptr %t277, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t284, ptr %t285
  %t286 = load { i64, [4 x i64] }, ptr %t277
  %t288 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store { i64, [4 x i64] } %t286, ptr %t288
  %t292 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v0, ptr %v0, ptr %t269, %"compiler/source:Span" %t270, ptr %t288)
  store ptr %t292, ptr %l144
  br label %bb54
bb53:
  br label %bb55
bb54:
  %t293 = load ptr, ptr %l144, !tbaa !29
  store ptr %t293, ptr %l15, !tbaa !29
  br label %bb55
bb55:
  %t294 = load ptr, ptr %l0, !tbaa !29
  %t295 = load %"compiler/source:Span", ptr %l1
  %t296 = load ptr, ptr %l15, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t298
  %t299 = getelementptr { i64, [3 x i64] }, ptr %t298, i32 0, i32 0
  store i64 6, ptr %t299
  %t301 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t295, 0
  %t303 = insertvalue { %"compiler/source:Span", ptr } %t301, ptr %t296, 1
  %t304 = getelementptr { i64, [3 x i64] }, ptr %t298, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t303, ptr %t304
  %t305 = load { i64, [3 x i64] }, ptr %t298
  %t307 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t305, ptr %t307
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t294, ptr %t307)
  br label %bb56
bb56:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb57:
  %t310 = load ptr, ptr %l3, !tbaa !29
  store ptr %t310, ptr %l151, !tbaa !29
  %t311 = load ptr, ptr %l0, !tbaa !29
  %t313 = getelementptr %"compiler/check:Checker", ptr %t311, i32 0, i32 1
  %t314 = load ptr, ptr %t313, !tbaa !29
  %t316 = getelementptr %"compiler/generic:Program", ptr %t314, i32 0, i32 2
  store ptr %t316, ptr %l154, !tbaa !29
  %t317 = load ptr, ptr %l0, !tbaa !29
  %t319 = getelementptr %"compiler/check:Checker", ptr %t317, i32 0, i32 1
  %t320 = load ptr, ptr %t319, !tbaa !29
  %t322 = getelementptr %"compiler/generic:Program", ptr %t320, i32 0, i32 2
  %t323 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t326 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s0, ptr %t322, { i64, ptr } %t323)
  store i32 %t326, ptr %l159
  br label %bb58
bb58:
  %t327 = load ptr, ptr %l154, !tbaa !29
  %t328 = load i32, ptr %l159, !tbaa !23
  %t329 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eTuple(ptr %v0, ptr %t327, i32 %t328)
  store i32 %t329, ptr %l160
  br label %bb59
bb59:
  %t330 = load i32, ptr %l160, !tbaa !23
  %t331 = load ptr, ptr %l151, !tbaa !29
  %t332 = getelementptr %"compiler/check:frame", ptr %t331, i32 0, i32 5
  store i32 %t330, ptr %t332, !tbaa !23
  %t333 = load ptr, ptr %l0, !tbaa !29
  store ptr %t333, ptr %l161, !tbaa !29
  %t334 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t334, ptr %l162
  %t335 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t335, ptr %l163
  %t336 = load ptr, ptr %l3, !tbaa !29
  %t338 = getelementptr %"compiler/check:frame", ptr %t336, i32 0, i32 5
  %t339 = load i32, ptr %t338, !tbaa !23
  store i32 %t339, ptr %l165, !tbaa !23
  %t340 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t344 = call %"compiler/typed:Make" @compiler_2ftyped_3aMake_2ector(ptr %v0, ptr %v0, ptr %v0, i32 0, i64 0, { i64, ptr } %t340, ptr null, i32 -1, i32 0, i1 false)
  store %"compiler/typed:Make" %t344, ptr %l169
  br label %bb60
bb60:
  %t345 = load %"compiler/typed:Make", ptr %l169
  %t346 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 56, i64 8)
  store %"compiler/typed:Make" %t345, ptr %t346
  store { i64, [5 x i64] } zeroinitializer, ptr %t347
  %t348 = getelementptr { i64, [5 x i64] }, ptr %t347, i32 0, i32 0
  store i64 7, ptr %t348
  %t349 = load %"compiler/source:Span", ptr %l163
  %t350 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t349, 0
  %t351 = load i32, ptr %l165, !tbaa !23
  %t352 = insertvalue { %"compiler/source:Span", i32, ptr } %t350, i32 %t351, 1
  %t354 = insertvalue { %"compiler/source:Span", i32, ptr } %t352, ptr %t346, 2
  %t355 = getelementptr { i64, [5 x i64] }, ptr %t347, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t354, ptr %t355
  %t356 = load { i64, [5 x i64] }, ptr %t347
  %t358 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 48, i64 8)
  store { i64, [5 x i64] } %t356, ptr %t358
  store { i64, [3 x i64] } zeroinitializer, ptr %t359
  %t360 = getelementptr { i64, [3 x i64] }, ptr %t359, i32 0, i32 0
  store i64 6, ptr %t360
  %t361 = load %"compiler/source:Span", ptr %l162
  %t362 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t361, 0
  %t364 = insertvalue { %"compiler/source:Span", ptr } %t362, ptr %t358, 1
  %t365 = getelementptr { i64, [3 x i64] }, ptr %t359, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t364, ptr %t365
  %t366 = load { i64, [3 x i64] }, ptr %t359
  %t368 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t366, ptr %t368
  %t369 = load ptr, ptr %l161, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t369, ptr %t368)
  br label %bb61
bb61:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einstField(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l3 = alloca i64
  %lp5 = alloca ptr
  %l7 = alloca ptr
  %l15 = alloca i32
  %l16 = alloca %"compiler/source:Span"
  %l21 = alloca i32
  %l25 = alloca ptr
  %l32 = alloca ptr
  %rv = alloca ptr
  %t38 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t1)
  store ptr %t3, ptr %l7
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l7, !tbaa !29
  %t6 = getelementptr %"compiler/check:frame", ptr %t4, i32 0, i32 31
  %t7 = load i64, ptr %t6, !tbaa !24
  store i64 %t7, ptr %l3, !tbaa !24
  %t9 = load i64, ptr %l3, !tbaa !24
  %t11 = icmp slt i64 %t9, 0
  br i1 %t11, label %bb2, label %bb3
bb2:
  store ptr null, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t15 = load i64, ptr %l3, !tbaa !24
  %t18 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalType(ptr %v0, ptr %t14, i64 %t15)
  store i32 %t18, ptr %l15
  br label %bb5
bb5:
  %t19 = load i32, ptr %l15, !tbaa !23
  %t20 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t20, ptr %l16
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/check:Checker", ptr %t21, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !29
  %t26 = getelementptr %"compiler/generic:Program", ptr %t24, i32 0, i32 2
  %t30 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t26, i32 %t19)
  store i32 %t30, ptr %l21
  br label %bb6
bb6:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load %"compiler/source:Span", ptr %l1
  %t33 = load i64, ptr %l3, !tbaa !24
  %t37 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v1, ptr %t31, %"compiler/source:Span" %t32, i64 %t33)
  store ptr %t37, ptr %l25
  br label %bb7
bb7:
  store { i64, [4 x i64] } zeroinitializer, ptr %t38
  %t39 = getelementptr { i64, [4 x i64] }, ptr %t38, i32 0, i32 0
  store i64 2, ptr %t39
  %t40 = load %"compiler/source:Span", ptr %l16
  %t41 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t40, 0
  %t42 = load i32, ptr %l21, !tbaa !23
  %t43 = insertvalue { %"compiler/source:Span", i32, ptr } %t41, i32 %t42, 1
  %t44 = load ptr, ptr %l25, !tbaa !29
  %t45 = insertvalue { %"compiler/source:Span", i32, ptr } %t43, ptr %t44, 2
  %t46 = getelementptr { i64, [4 x i64] }, ptr %t38, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t45, ptr %t46
  %t47 = load { i64, [4 x i64] }, ptr %t38
  %t48 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store ptr %t48, ptr %lp5
  %t50 = load ptr, ptr %lp5
  store { i64, [4 x i64] } %t47, ptr %t50
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t52 = load %"compiler/source:Span", ptr %l1
  %t53 = load %"compiler/source:Span", ptr %l1
  %t54 = load ptr, ptr %lp5
  %t61 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efield(ptr %v0, ptr %v1, ptr %v1, ptr %t51, %"compiler/source:Span" %t52, %"compiler/source:Span" %t53, ptr %t54, i32 %a2)
  store ptr %t61, ptr %l32
  br label %bb8
bb8:
  %t62 = load ptr, ptr %l32, !tbaa !29
  store ptr %t62, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneLeaves(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca %"compiler/check:laneNode"
  %l7 = alloca %"compiler/check:laneNode"
  %l11 = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 39
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call %"compiler/check:laneNode" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alaneNode_3e_2eAt_3ccompiler_2fcheck_3alaneNode_3e(ptr %v0, ptr %v0, ptr %t3, i64 %t4)
  store %"compiler/check:laneNode" %t7, ptr %l7
  br label %bb1
bb1:
  %t8 = load %"compiler/check:laneNode", ptr %l7
  store %"compiler/check:laneNode" %t8, ptr %l3
  %t9 = getelementptr %"compiler/check:laneNode", ptr %l3, i32 0, i32 0
  %t10 = load i64, ptr %t9, !tbaa !24
  %t11 = load i64, ptr @G_2ecompiler_2fcheck_2eLaneArr, !tbaa !24
  %t14 = icmp eq i64 %t10, %t11
  br i1 %t14, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l11, !tbaa !21
  br label %bb4
bb3:
  %t16 = getelementptr %"compiler/check:laneNode", ptr %l3, i32 0, i32 0
  %t17 = load i64, ptr %t16, !tbaa !24
  %t18 = load i64, ptr @G_2ecompiler_2fcheck_2eLaneScalar, !tbaa !24
  %t21 = icmp eq i64 %t17, %t18
  store i1 %t21, ptr %l11, !tbaa !21
  br label %bb4
bb4:
  %t23 = load i1, ptr %l11, !tbaa !21
  br i1 %t23, label %bb5, label %bb6
bb5:
  %t24 = load ptr, ptr %l2, !tbaa !29
  %t25 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t24, i64 %t25)
  br label %bb7
bb6:
  br label %bb8
bb7:
  br label %ret
bb8:
  %t28 = getelementptr %"compiler/check:laneNode", ptr %l3, i32 0, i32 4
  %t29 = load i64, ptr %t28, !tbaa !24
  %t31 = icmp sge i64 %t29, 0
  br i1 %t31, label %bb9, label %bb10
bb9:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/check:laneNode", ptr %l3, i32 0, i32 4
  %t35 = load i64, ptr %t34, !tbaa !24
  %t36 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneLeaves(ptr %v0, ptr %v1, ptr %t33, i64 %t35, ptr %t36)
  br label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb12
bb12:
  %t40 = getelementptr %"compiler/check:laneNode", ptr %l3, i32 0, i32 5
  %t41 = load i64, ptr %t40, !tbaa !24
  %t43 = icmp sge i64 %t41, 0
  br i1 %t43, label %bb13, label %bb14
bb13:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/check:laneNode", ptr %l3, i32 0, i32 5
  %t47 = load i64, ptr %t46, !tbaa !24
  %t48 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneLeaves(ptr %v0, ptr %v1, ptr %t45, i64 %t47, ptr %t48)
  br label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb16
bb16:
  %t52 = getelementptr %"compiler/check:laneNode", ptr %l3, i32 0, i32 6
  %t53 = load i64, ptr %t52, !tbaa !24
  %t55 = icmp sge i64 %t53, 0
  br i1 %t55, label %bb17, label %bb18
bb17:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/check:laneNode", ptr %l3, i32 0, i32 6
  %t59 = load i64, ptr %t58, !tbaa !24
  %t60 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneLeaves(ptr %v0, ptr %v1, ptr %t57, i64 %t59, ptr %t60)
  br label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb20
bb20:
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneMethodCalled(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"compiler/check:laneNode"
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %lp7 = alloca ptr
  %l8 = alloca i32
  %l12 = alloca %"compiler/check:laneNode"
  %l16 = alloca i1
  %l20 = alloca { i64, ptr }
  %l21 = alloca { i64, ptr }
  %l22 = alloca i64
  %l23 = alloca { i64, ptr }
  %l42 = alloca { i64, ptr }
  %l44 = alloca i1
  %l50 = alloca %"compiler/check:laneNode"
  %l55 = alloca i1
  %l58 = alloca i1
  %l60 = alloca i1
  %l63 = alloca i1
  %l64 = alloca i1
  %l68 = alloca i1
  %l73 = alloca { i64, ptr }
  %l75 = alloca { i64, ptr }
  %l77 = alloca { i64, ptr }
  %l79 = alloca i64
  %l80 = alloca { i64, ptr }
  %l83 = alloca { i64, ptr }
  %l84 = alloca { i64, ptr }
  %l85 = alloca i64
  %l86 = alloca { i64, ptr }
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 39
  %t7 = call %"compiler/check:laneNode" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alaneNode_3e_2eAt_3ccompiler_2fcheck_3alaneNode_3e(ptr %v0, ptr %v0, ptr %t3, i64 %a1)
  store %"compiler/check:laneNode" %t7, ptr %l12
  br label %bb1
bb1:
  %t8 = load %"compiler/check:laneNode", ptr %l12
  store %"compiler/check:laneNode" %t8, ptr %l2
  %t9 = getelementptr %"compiler/check:laneNode", ptr %l2, i32 0, i32 0
  %t10 = load i64, ptr %t9, !tbaa !24
  %t11 = load i64, ptr @G_2ecompiler_2fcheck_2eLaneArr, !tbaa !24
  %t14 = icmp eq i64 %t10, %t11
  br i1 %t14, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l16, !tbaa !21
  br label %bb4
bb3:
  %t16 = getelementptr %"compiler/check:laneNode", ptr %l2, i32 0, i32 0
  %t17 = load i64, ptr %t16, !tbaa !24
  %t18 = load i64, ptr @G_2ecompiler_2fcheck_2eLaneScalar, !tbaa !24
  %t21 = icmp eq i64 %t17, %t18
  store i1 %t21, ptr %l16, !tbaa !21
  br label %bb4
bb4:
  %t23 = load i1, ptr %l16, !tbaa !21
  br i1 %t23, label %bb5, label %bb6
bb5:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d13, i32 0, i32 1) }, ptr %l20, !tbaa !27
  %t24 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t24, ptr %l21, !tbaa !27
  %t25 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t26 = extractvalue { i64, ptr } %t25, 0
  store i64 %t26, ptr %l22, !tbaa !24
  %t27 = load i64, ptr %l22, !tbaa !24
  %t28 = mul i64 %t27, 1
  %t29 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t28)
  %t30 = insertvalue { i64, ptr } undef, i64 %t27, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  store { i64, ptr } %t31, ptr %l23, !tbaa !27
  %t32 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t33 = load ptr, ptr %t32, !tbaa !27
  %t34 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t35 = load ptr, ptr %t34, !tbaa !27
  %t36 = load i64, ptr %l22, !tbaa !24
  %t37 = mul i64 %t36, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t33, ptr %t35, i64 %t37, i1 false)
  %t38 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t38, ptr %l21, !tbaa !27
  %t39 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t39, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  store %olang.scope zeroinitializer, ptr %s2
  %t40 = getelementptr %"compiler/check:laneNode", ptr %l2, i32 0, i32 4
  %t41 = load i64, ptr %t40, !tbaa !24
  %t42 = getelementptr %"compiler/check:laneNode", ptr %l2, i32 0, i32 5
  %t43 = load i64, ptr %t42, !tbaa !24
  %t44 = getelementptr %"compiler/check:laneNode", ptr %l2, i32 0, i32 6
  %t45 = load i64, ptr %t44, !tbaa !24
  %t47 = insertvalue [3 x i64] undef, i64 %t41, 0
  %t49 = insertvalue [3 x i64] %t47, i64 %t43, 1
  %t51 = insertvalue [3 x i64] %t49, i64 %t45, 2
  %t53 = call ptr @__olang_scope_alloc_a(ptr %s2, i64 24, i64 8)
  store [3 x i64] %t51, ptr %t53
  store ptr %t53, ptr %l3
  store i64 0, ptr %l4, !tbaa !24
  %t55 = load ptr, ptr %l3
  store i64 3, ptr %l5, !tbaa !24
  br label %bb8
bb8:
  store %olang.scope zeroinitializer, ptr %s3
  %t58 = load i64, ptr %l4, !tbaa !24
  %t59 = load i64, ptr %l5, !tbaa !24
  %t62 = icmp slt i64 %t58, %t59
  %t64 = xor i1 %t62, true
  br i1 %t64, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s3)
  br label %bb41
bb10:
  br label %bb11
bb11:
  %t66 = load ptr, ptr %l3
  %t67 = load i64, ptr %l4, !tbaa !24
  %t70 = getelementptr [3 x i64], ptr %t66, i64 0, i64 %t67
  %t71 = load i64, ptr %t70, !tbaa !34
  store i64 %t71, ptr %l6, !tbaa !24
  %t73 = load i64, ptr %l6, !tbaa !24
  %t75 = icmp slt i64 %t73, 0
  br i1 %t75, label %bb12, label %bb13
bb12:
  call void @__olang_scope_close(ptr %s3)
  br label %bb40
bb13:
  br label %bb14
bb14:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t78 = load i64, ptr %l6, !tbaa !24
  %t81 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneMethodCalled(ptr %v0, ptr %v1, ptr %t77, i64 %t78)
  store { i64, ptr } %t81, ptr %l42
  br label %bb15
bb15:
  %t82 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t82, ptr %lp7
  %t83 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t84 = load ptr, ptr %lp7
  store { i64, ptr } %t83, ptr %t84, !tbaa !27
  %t85 = load ptr, ptr %lp7
  %t86 = load { i64, ptr }, ptr %t85, !tbaa !27
  %t88 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s3, { i64, ptr } %t86, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d14, i32 0, i32 1) })
  store i1 %t88, ptr %l44
  br label %bb16
bb16:
  %t89 = load i1, ptr %l44, !tbaa !21
  %t90 = xor i1 %t89, true
  br i1 %t90, label %bb17, label %bb18
bb17:
  %t92 = load ptr, ptr %lp7
  %t93 = load { i64, ptr }, ptr %t92, !tbaa !27
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s2)
  store { i64, ptr } %t93, ptr %rv
  br label %ret
bb18:
  br label %bb19
bb19:
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t97 = getelementptr %"compiler/check:Checker", ptr %t95, i32 0, i32 39
  %t98 = load i64, ptr %l6, !tbaa !24
  %t101 = call %"compiler/check:laneNode" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alaneNode_3e_2eAt_3ccompiler_2fcheck_3alaneNode_3e(ptr %v0, ptr %s3, ptr %t97, i64 %t98)
  store %"compiler/check:laneNode" %t101, ptr %l50
  br label %bb20
bb20:
  %t102 = getelementptr %"compiler/check:laneNode", ptr %l50, i32 0, i32 8
  %t103 = load i32, ptr %t102, !tbaa !23
  store i32 %t103, ptr %l8, !tbaa !23
  %t105 = load i32, ptr %l8, !tbaa !23
  %t106 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t109 = icmp ne i32 %t105, %t106
  br i1 %t109, label %bb21, label %bb22
bb21:
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t112 = load i32, ptr %l8, !tbaa !23
  %t115 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %t111, i32 %t112)
  store i1 %t115, ptr %l58
  br label %bb23
bb22:
  store i1 false, ptr %l55, !tbaa !21
  br label %bb32
bb23:
  %t116 = load i1, ptr %l58, !tbaa !21
  %t117 = xor i1 %t116, true
  br i1 %t117, label %bb24, label %bb25
bb24:
  store i1 true, ptr %l60, !tbaa !21
  br label %bb31
bb25:
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t120 = load i32, ptr %l8, !tbaa !23
  %t123 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t119, i32 %t120)
  store i1 %t123, ptr %l63
  br label %bb26
bb26:
  %t124 = load i1, ptr %l63, !tbaa !21
  br i1 %t124, label %bb27, label %bb28
bb27:
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t127 = getelementptr %"compiler/check:Checker", ptr %t125, i32 0, i32 1
  %t128 = load ptr, ptr %t127, !tbaa !29
  %t129 = load i32, ptr %l8, !tbaa !23
  %t132 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eExtends(ptr %v0, ptr %t128, i32 %t129)
  store i1 %t132, ptr %l68
  br label %bb29
bb28:
  store i1 false, ptr %l64, !tbaa !21
  br label %bb30
bb29:
  %t133 = load i1, ptr %l68, !tbaa !21
  %t134 = xor i1 %t133, true
  store i1 %t134, ptr %l64, !tbaa !21
  br label %bb30
bb30:
  %t136 = load i1, ptr %l64, !tbaa !21
  store i1 %t136, ptr %l60, !tbaa !21
  br label %bb31
bb31:
  %t137 = load i1, ptr %l60, !tbaa !21
  store i1 %t137, ptr %l55, !tbaa !21
  br label %bb32
bb32:
  %t138 = load i1, ptr %l55, !tbaa !21
  br i1 %t138, label %bb33, label %bb34
bb33:
  store %olang.scope zeroinitializer, ptr %s6
  %t139 = getelementptr %"compiler/check:laneNode", ptr %l2, i32 0, i32 0
  %t140 = load i64, ptr %t139, !tbaa !24
  %t141 = load i64, ptr @G_2ecompiler_2fcheck_2eLaneBin, !tbaa !24
  %t144 = icmp eq i64 %t140, %t141
  br i1 %t144, label %bb35, label %bb36
bb34:
  br label %bb39
bb35:
  %t146 = getelementptr %"compiler/check:laneNode", ptr %l2, i32 0, i32 1
  %t147 = load i32, ptr %t146, !range !{i32 0, i32 114}
  %t149 = call { i64, ptr } @compiler_2fcheck_2eoperatorName(ptr %s6, i32 %t147)
  store { i64, ptr } %t149, ptr %l75
  br label %bb37
bb36:
  store { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d15, i32 0, i32 1) }, ptr %l77, !tbaa !27
  %t150 = load { i64, ptr }, ptr %l77, !tbaa !27
  store { i64, ptr } %t150, ptr %l73, !tbaa !27
  br label %bb38
bb37:
  %t152 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t153 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  %t154 = load { i64, ptr }, ptr %l75, !tbaa !27
  %t155 = extractvalue { i64, ptr } %t154, 1
  %t156 = extractvalue { i64, ptr } %t154, 0
  %t157 = add i64 %t153, %t156
  %t158 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t159 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  %t160 = add i64 %t157, %t159
  %t161 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t160)
  call void @olang_textcopy(ptr %t161, ptr %t152, i64 %t153)
  %t162 = getelementptr i8, ptr %t161, i64 %t153
  call void @olang_textcopy(ptr %t162, ptr %t155, i64 %t156)
  %t163 = getelementptr i8, ptr %t162, i64 %t156
  call void @olang_textcopy(ptr %t163, ptr %t158, i64 %t159)
  %t164 = insertvalue { i64, ptr } undef, i64 %t160, 0
  %t165 = insertvalue { i64, ptr } %t164, ptr %t161, 1
  store { i64, ptr } %t165, ptr %l73, !tbaa !27
  br label %bb38
bb38:
  %t167 = load { i64, ptr }, ptr %l73, !tbaa !27
  %t168 = extractvalue { i64, ptr } %t167, 0
  store i64 %t168, ptr %l79, !tbaa !24
  %t169 = load i64, ptr %l79, !tbaa !24
  %t170 = mul i64 %t169, 1
  %t171 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t170)
  %t172 = insertvalue { i64, ptr } undef, i64 %t169, 0
  %t173 = insertvalue { i64, ptr } %t172, ptr %t171, 1
  store { i64, ptr } %t173, ptr %l80, !tbaa !27
  %t174 = getelementptr { i64, ptr }, ptr %l80, i32 0, i32 1
  %t175 = load ptr, ptr %t174, !tbaa !27
  %t176 = getelementptr { i64, ptr }, ptr %l73, i32 0, i32 1
  %t177 = load ptr, ptr %t176, !tbaa !27
  %t178 = load i64, ptr %l79, !tbaa !24
  %t179 = mul i64 %t178, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t175, ptr %t177, i64 %t179, i1 false)
  %t180 = load { i64, ptr }, ptr %l80, !tbaa !27
  store { i64, ptr } %t180, ptr %l73, !tbaa !27
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s2)
  %t181 = load { i64, ptr }, ptr %l73, !tbaa !27
  store { i64, ptr } %t181, ptr %rv
  br label %ret
bb39:
  call void @__olang_scope_close(ptr %s3)
  br label %bb40
bb40:
  %t182 = load i64, ptr %l4, !tbaa !24
  %t184 = add i64 %t182, 1
  store i64 %t184, ptr %l4, !tbaa !24
  br label %bb8
bb41:
  call void @__olang_scope_close(ptr %s2)
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d17, i32 0, i32 1) }, ptr %l83, !tbaa !27
  %t186 = load { i64, ptr }, ptr %l83, !tbaa !27
  store { i64, ptr } %t186, ptr %l84, !tbaa !27
  %t187 = load { i64, ptr }, ptr %l84, !tbaa !27
  %t188 = extractvalue { i64, ptr } %t187, 0
  store i64 %t188, ptr %l85, !tbaa !24
  %t189 = load i64, ptr %l85, !tbaa !24
  %t190 = mul i64 %t189, 1
  %t191 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t190)
  %t192 = insertvalue { i64, ptr } undef, i64 %t189, 0
  %t193 = insertvalue { i64, ptr } %t192, ptr %t191, 1
  store { i64, ptr } %t193, ptr %l86, !tbaa !27
  %t194 = getelementptr { i64, ptr }, ptr %l86, i32 0, i32 1
  %t195 = load ptr, ptr %t194, !tbaa !27
  %t196 = getelementptr { i64, ptr }, ptr %l84, i32 0, i32 1
  %t197 = load ptr, ptr %t196, !tbaa !27
  %t198 = load i64, ptr %l85, !tbaa !24
  %t199 = mul i64 %t198, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t195, ptr %t197, i64 %t199, i1 false)
  %t200 = load { i64, ptr }, ptr %l86, !tbaa !27
  store { i64, ptr } %t200, ptr %l84, !tbaa !27
  %t201 = load { i64, ptr }, ptr %l84, !tbaa !27
  store { i64, ptr } %t201, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitFloat(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/check:litv"
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l9 = alloca %"compiler/check:litv"
  %l12 = alloca ptr
  %l13 = alloca i1
  %l20 = alloca i1
  %l21 = alloca ptr
  %l22 = alloca i1
  %l31 = alloca i1
  %l32 = alloca i1
  %l35 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t6 = call %"compiler/check:litv" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efold(ptr %v0, ptr %v1, ptr %t1, ptr %t2)
  store %"compiler/check:litv" %t6, ptr %l9
  br label %bb1
bb1:
  %t7 = load %"compiler/check:litv", ptr %l9
  store %"compiler/check:litv" %t7, ptr %l2
  %t8 = getelementptr %"compiler/check:litv", ptr %l2, i32 0, i32 0
  %t9 = load i1, ptr %t8, !tbaa !21
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = getelementptr %"compiler/check:litv", ptr %l2, i32 0, i32 1
  %t12 = load i1, ptr %t11, !tbaa !21
  store i1 %t12, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t14 = load ptr, ptr %l1, !tbaa !29
  store ptr %t14, ptr %l12, !tbaa !29
  store i1 false, ptr %l13, !tbaa !21
  %t15 = load ptr, ptr %l12, !tbaa !29
  %t16 = icmp ne ptr %t15, null
  br i1 %t16, label %bb5, label %bb6
bb5:
  %t18 = load ptr, ptr %l12, !tbaa !29
  %t19 = load i64, ptr %t18, !range !{i64 0, i64 30}
  %t21 = icmp eq i64 %t19, 2
  store i1 %t21, ptr %l13, !tbaa !21
  br label %bb6
bb6:
  %t22 = load i1, ptr %l13, !tbaa !21
  br i1 %t22, label %bb7, label %bb8
bb7:
  %t23 = load ptr, ptr %l1, !tbaa !29
  %t25 = getelementptr { i64, [4 x i64] }, ptr %t23, i32 0, i32 1
  %t26 = getelementptr { %"compiler/source:Span", ptr }, ptr %t25, i32 0, i32 1
  %t27 = load ptr, ptr %t26
  store ptr %t27, ptr %l3, !tbaa !29
  br label %bb9
bb8:
  br label %bb11
bb9:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t30 = load ptr, ptr %l3, !tbaa !29
  %t33 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitFloat(ptr %v0, ptr %v1, ptr %t29, ptr %t30)
  store i1 %t33, ptr %l20
  br label %bb10
bb10:
  %t34 = load i1, ptr %l20, !tbaa !21
  store i1 %t34, ptr %rv
  br label %ret
bb11:
  %t35 = load ptr, ptr %l1, !tbaa !29
  store ptr %t35, ptr %l21, !tbaa !29
  store i1 false, ptr %l22, !tbaa !21
  %t36 = load ptr, ptr %l21, !tbaa !29
  %t37 = icmp ne ptr %t36, null
  br i1 %t37, label %bb12, label %bb13
bb12:
  %t39 = load ptr, ptr %l21, !tbaa !29
  %t40 = load i64, ptr %t39, !range !{i64 0, i64 30}
  %t42 = icmp eq i64 %t40, 8
  store i1 %t42, ptr %l22, !tbaa !21
  br label %bb13
bb13:
  %t43 = load i1, ptr %l22, !tbaa !21
  br i1 %t43, label %bb14, label %bb15
bb14:
  %t44 = load ptr, ptr %l1, !tbaa !29
  %t46 = getelementptr { i64, [4 x i64] }, ptr %t44, i32 0, i32 1
  %t47 = getelementptr { %"compiler/source:Span", ptr, ptr, ptr }, ptr %t46, i32 0, i32 1
  %t48 = load ptr, ptr %t47
  store ptr %t48, ptr %l4, !tbaa !29
  %t50 = load ptr, ptr %l1, !tbaa !29
  %t52 = getelementptr { i64, [4 x i64] }, ptr %t50, i32 0, i32 1
  %t53 = getelementptr { %"compiler/source:Span", ptr, ptr, ptr }, ptr %t52, i32 0, i32 3
  %t54 = load ptr, ptr %t53
  store ptr %t54, ptr %l5, !tbaa !29
  br label %bb16
bb15:
  br label %bb22
bb16:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t57 = load ptr, ptr %l4, !tbaa !29
  %t60 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitFloat(ptr %v0, ptr %v1, ptr %t56, ptr %t57)
  store i1 %t60, ptr %l31
  br label %bb17
bb17:
  %t61 = load i1, ptr %l31, !tbaa !21
  br i1 %t61, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l32, !tbaa !21
  br label %bb21
bb19:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t63 = load ptr, ptr %l5, !tbaa !29
  %t66 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitFloat(ptr %v0, ptr %v1, ptr %t62, ptr %t63)
  store i1 %t66, ptr %l35
  br label %bb20
bb20:
  %t67 = load i1, ptr %l35, !tbaa !21
  store i1 %t67, ptr %l32, !tbaa !21
  br label %bb21
bb21:
  %t68 = load i1, ptr %l32, !tbaa !21
  store i1 %t68, ptr %rv
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
  call void @__olang_check_failed(ptr @olang_loc_742d7ba0854a02e0_30f006efbe908ac)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eloneBinding(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l5 = alloca i1
  %l10 = alloca i1
  %l12 = alloca { i64, ptr }
  %l18 = alloca ptr
  %l21 = alloca ptr
  %l23 = alloca ptr
  %l27 = alloca { i64, ptr }
  %l30 = alloca %"compiler/names:Ref"
  %l32 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/ast:Catch", ptr %t1, i32 0, i32 5
  %t4 = load i32, ptr %t3, !tbaa !23
  %t6 = icmp ne i32 %t4, 0
  br i1 %t6, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l5, !tbaa !21
  br label %bb3
bb2:
  %t8 = load ptr, ptr %l1, !tbaa !29
  %t10 = getelementptr %"compiler/ast:Catch", ptr %t8, i32 0, i32 1
  %t11 = load { i64, ptr }, ptr %t10, !tbaa !27
  %t13 = extractvalue { i64, ptr } %t11, 0
  %t15 = icmp ne i64 %t13, 1
  store i1 %t15, ptr %l5, !tbaa !21
  br label %bb3
bb3:
  %t17 = load i1, ptr %l5, !tbaa !21
  br i1 %t17, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l10, !tbaa !21
  br label %bb6
bb5:
  %t18 = load ptr, ptr %l1, !tbaa !29
  %t20 = getelementptr %"compiler/ast:Catch", ptr %t18, i32 0, i32 1
  %t21 = load { i64, ptr }, ptr %t20, !tbaa !27
  store { i64, ptr } %t21, ptr %l12, !tbaa !27
  %t22 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !27
  %t24 = getelementptr ptr, ptr %t23, i64 0
  %t25 = load ptr, ptr %t24, !tbaa !39
  %t27 = getelementptr %"compiler/ast:Path", ptr %t25, i32 0, i32 1
  %t28 = load { i64, ptr }, ptr %t27, !tbaa !27
  %t30 = extractvalue { i64, ptr } %t28, 0
  %t32 = icmp ne i64 %t30, 1
  store i1 %t32, ptr %l10, !tbaa !21
  br label %bb6
bb6:
  %t34 = load i1, ptr %l10, !tbaa !21
  br i1 %t34, label %bb7, label %bb8
bb7:
  store i1 false, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t36 = load ptr, ptr %l1, !tbaa !29
  store ptr %t36, ptr %l18, !tbaa !29
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/check:Checker", ptr %t37, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !29
  %t42 = getelementptr %"compiler/generic:Program", ptr %t40, i32 0, i32 1
  %t43 = load ptr, ptr %t42, !tbaa !29
  store ptr %t43, ptr %l21, !tbaa !29
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t44)
  store ptr %t46, ptr %l23
  br label %bb10
bb10:
  %t47 = load ptr, ptr %l23, !tbaa !29
  %t49 = getelementptr %"compiler/check:frame", ptr %t47, i32 0, i32 2
  %t50 = load i64, ptr %t49, !tbaa !24
  %t51 = load ptr, ptr %l1, !tbaa !29
  %t53 = getelementptr %"compiler/ast:Catch", ptr %t51, i32 0, i32 1
  %t54 = load { i64, ptr }, ptr %t53, !tbaa !27
  store { i64, ptr } %t54, ptr %l27, !tbaa !27
  %t55 = getelementptr { i64, ptr }, ptr %l27, i32 0, i32 1
  %t56 = load ptr, ptr %t55, !tbaa !27
  %t57 = getelementptr ptr, ptr %t56, i64 0
  %t58 = load ptr, ptr %t57, !tbaa !39
  %t60 = getelementptr %"compiler/ast:Path", ptr %t58, i32 0, i32 0
  %t61 = getelementptr %"compiler/source:Span", ptr %t60, i32 0, i32 0
  %t62 = load i32, ptr %t61, !tbaa !23
  %t63 = load ptr, ptr %l21, !tbaa !29
  %t66 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %t63, i64 %t50, i32 %t62)
  store %"compiler/names:Ref" %t66, ptr %l30
  br label %bb11
bb11:
  %t67 = getelementptr %"compiler/names:Ref", ptr %l30, i32 0, i32 0
  %t68 = load i32, ptr %t67, !range !{i32 0, i32 9}
  %t69 = load ptr, ptr %l18, !tbaa !29
  %t71 = call i1 @compiler_2fnames_2eLoneCatchName(ptr %v1, ptr %t69, i32 %t68)
  store i1 %t71, ptr %l32
  br label %bb12
bb12:
  %t72 = load i1, ptr %l32, !tbaa !21
  store i1 %t72, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emutBefore(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca ptr
  %l5 = alloca i1
  %l6 = alloca ptr
  %l7 = alloca i1
  %l18 = alloca %"compiler/source:Span"
  %l21 = alloca i1
  %l22 = alloca %"compiler/source:Span"
  %l26 = alloca i1
  %l29 = alloca i1
  %l30 = alloca i1
  %l35 = alloca i32
  %l38 = alloca %"compiler/source:Span"
  %l42 = alloca i1
  %l44 = alloca %"compiler/source:Span"
  %l49 = alloca i1
  %l52 = alloca i1
  %l53 = alloca %"compiler/source:Span"
  %l57 = alloca %"compiler/source:Span"
  %l58 = alloca %"compiler/source:Span"
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %rv = alloca %"compiler/source:Span"
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l6, !tbaa !29
  store i1 false, ptr %l7, !tbaa !21
  %t2 = load ptr, ptr %l6, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l6, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 4
  store i1 %t8, ptr %l7, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l7, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", ptr, i1 }, ptr %t12, i32 0, i32 0
  %t14 = load %"compiler/source:Span", ptr %t13
  store %"compiler/source:Span" %t14, ptr %l3
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [5 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", ptr, i1 }, ptr %t18, i32 0, i32 1
  %t20 = load ptr, ptr %t19
  store ptr %t20, ptr %l4, !tbaa !29
  %t22 = load ptr, ptr %l1, !tbaa !29
  %t24 = getelementptr { i64, [5 x i64] }, ptr %t22, i32 0, i32 1
  %t25 = getelementptr { %"compiler/source:Span", ptr, i1 }, ptr %t24, i32 0, i32 2
  %t26 = load i1, ptr %t25
  store i1 %t26, ptr %l5, !tbaa !21
  br label %bb5
bb4:
  br label %bb40
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t28 = load i1, ptr %l5, !tbaa !21
  %t30 = xor i1 %t28, true
  br i1 %t30, label %bb6, label %bb7
bb6:
  store %olang.scope zeroinitializer, ptr %s2
  %t32 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s2, i32 -1, i32 -1)
  store %"compiler/source:Span" %t32, ptr %l18
  br label %bb8
bb7:
  br label %bb9
bb8:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s1)
  %t33 = load %"compiler/source:Span", ptr %l18
  store %"compiler/source:Span" %t33, ptr %rv
  br label %ret
bb9:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t35 = load ptr, ptr %l4, !tbaa !29
  %t38 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enamesTypeVar(ptr %v0, ptr %v1, ptr %t34, ptr %t35)
  store i1 %t38, ptr %l21
  br label %bb10
bb10:
  %t39 = load i1, ptr %l21, !tbaa !21
  br i1 %t39, label %bb11, label %bb12
bb11:
  store %olang.scope zeroinitializer, ptr %s3
  %t40 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s3, i32 -1, i32 -1)
  store %"compiler/source:Span" %t40, ptr %l22
  br label %bb13
bb12:
  br label %bb14
bb13:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s1)
  %t41 = load %"compiler/source:Span", ptr %l22
  store %"compiler/source:Span" %t41, ptr %rv
  br label %ret
bb14:
  %t42 = load i32, ptr %l2, !tbaa !23
  %t43 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t46 = icmp ne i32 %t42, %t43
  br i1 %t46, label %bb15, label %bb16
bb15:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t49 = load i32, ptr %l2, !tbaa !23
  %t52 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t48, i32 %t49)
  store i1 %t52, ptr %l29
  br label %bb17
bb16:
  store i1 false, ptr %l26, !tbaa !21
  br label %bb22
bb17:
  %t53 = load i1, ptr %l29, !tbaa !21
  br i1 %t53, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l30, !tbaa !21
  br label %bb21
bb19:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/check:Checker", ptr %t54, i32 0, i32 1
  %t57 = load ptr, ptr %t56, !tbaa !29
  %t59 = getelementptr %"compiler/generic:Program", ptr %t57, i32 0, i32 2
  %t60 = load i32, ptr %l2, !tbaa !23
  %t63 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t59, i32 %t60)
  store i32 %t63, ptr %l35
  br label %bb20
bb20:
  %t64 = load i32, ptr %l35, !range !{i32 0, i32 33}
  %t66 = trunc i64 25 to i32
  %t67 = icmp eq i32 %t64, %t66
  store i1 %t67, ptr %l30, !tbaa !21
  br label %bb21
bb21:
  %t69 = load i1, ptr %l30, !tbaa !21
  store i1 %t69, ptr %l26, !tbaa !21
  br label %bb22
bb22:
  %t70 = load i1, ptr %l26, !tbaa !21
  br i1 %t70, label %bb23, label %bb24
bb23:
  store %olang.scope zeroinitializer, ptr %s4
  %t71 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s4, i32 -1, i32 -1)
  store %"compiler/source:Span" %t71, ptr %l38
  br label %bb25
bb24:
  br label %bb26
bb25:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s1)
  %t72 = load %"compiler/source:Span", ptr %l38
  store %"compiler/source:Span" %t72, ptr %rv
  br label %ret
bb26:
  %t73 = load i32, ptr %l2, !tbaa !23
  %t74 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t77 = icmp eq i32 %t73, %t74
  br i1 %t77, label %bb27, label %bb28
bb27:
  %t79 = load ptr, ptr %l1, !tbaa !29
  %t81 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v1, ptr %t79)
  store %"compiler/source:Span" %t81, ptr %l44
  br label %bb29
bb28:
  store i1 false, ptr %l42, !tbaa !21
  br label %bb30
bb29:
  %t82 = getelementptr %"compiler/source:Span", ptr %l44, i32 0, i32 1
  %t83 = load i32, ptr %t82, !tbaa !23
  %t84 = getelementptr %"compiler/source:Span", ptr %l3, i32 0, i32 0
  %t85 = load i32, ptr %t84, !tbaa !23
  %t87 = add i32 %t85, 3
  %t90 = icmp sgt i32 %t83, %t87
  store i1 %t90, ptr %l42, !tbaa !21
  br label %bb30
bb30:
  %t92 = load i1, ptr %l42, !tbaa !21
  br i1 %t92, label %bb31, label %bb32
bb31:
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t94 = load ptr, ptr %l1, !tbaa !29
  %t97 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewrittenRefOrVar(ptr %v0, ptr %v1, ptr %t93, ptr %t94)
  store i1 %t97, ptr %l52
  br label %bb33
bb32:
  store i1 false, ptr %l49, !tbaa !21
  br label %bb34
bb33:
  %t98 = load i1, ptr %l52, !tbaa !21
  store i1 %t98, ptr %l49, !tbaa !21
  br label %bb34
bb34:
  %t99 = load i1, ptr %l49, !tbaa !21
  br i1 %t99, label %bb35, label %bb36
bb35:
  store %olang.scope zeroinitializer, ptr %s5
  %t100 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s5, i32 -1, i32 -1)
  store %"compiler/source:Span" %t100, ptr %l53
  br label %bb37
bb36:
  br label %bb38
bb37:
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s1)
  %t101 = load %"compiler/source:Span", ptr %l53
  store %"compiler/source:Span" %t101, ptr %rv
  br label %ret
bb38:
  %t102 = getelementptr %"compiler/source:Span", ptr %l3, i32 0, i32 0
  %t103 = load i32, ptr %t102, !tbaa !23
  %t104 = getelementptr %"compiler/source:Span", ptr %l3, i32 0, i32 0
  %t105 = load i32, ptr %t104, !tbaa !23
  %t107 = add i32 %t105, 3
  %t110 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s1, i32 %t103, i32 %t107)
  store %"compiler/source:Span" %t110, ptr %l57
  br label %bb39
bb39:
  call void @__olang_scope_close(ptr %s1)
  %t111 = load %"compiler/source:Span", ptr %l57
  store %"compiler/source:Span" %t111, ptr %rv
  br label %ret
bb40:
  br i1 true, label %bb41, label %bb42
bb41:
  br label %bb43
bb42:
  br label %bb45
bb43:
  store %olang.scope zeroinitializer, ptr %s6
  %t112 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s6, i32 -1, i32 -1)
  store %"compiler/source:Span" %t112, ptr %l58
  br label %bb44
bb44:
  call void @__olang_scope_close(ptr %s6)
  %t113 = load %"compiler/source:Span", ptr %l58
  store %"compiler/source:Span" %t113, ptr %rv
  br label %ret
bb45:
  call void @__olang_check_failed(ptr @olang_loc_5a62b0635aab9a02_96142af7f6ac351e)
  unreachable
ret:
  %rr = load %"compiler/source:Span", ptr %rv
  ret %"compiler/source:Span" %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emutOnValue(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca ptr
  %l4 = alloca i1
  %l5 = alloca ptr
  %l6 = alloca i1
  %l17 = alloca i1
  %l18 = alloca ptr
  %l22 = alloca i1
  %l24 = alloca ptr
  %l28 = alloca %"compiler/source:Span"
  %l29 = alloca ptr
  %l31 = alloca ptr
  %l33 = alloca ptr
  %l37 = alloca i32
  %l38 = alloca { i64, ptr }
  %l40 = alloca %"compiler/diagmsg:Msg"
  %l41 = alloca i64
  %s1 = alloca %olang.scope
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
  %t8 = icmp eq i64 %t6, 4
  store i1 %t8, ptr %l6, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l6, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", ptr, i1 }, ptr %t12, i32 0, i32 0
  %t14 = load %"compiler/source:Span", ptr %t13
  store %"compiler/source:Span" %t14, ptr %l2
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [5 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", ptr, i1 }, ptr %t18, i32 0, i32 1
  %t20 = load ptr, ptr %t19
  store ptr %t20, ptr %l3, !tbaa !29
  %t22 = load ptr, ptr %l1, !tbaa !29
  %t24 = getelementptr { i64, [5 x i64] }, ptr %t22, i32 0, i32 1
  %t25 = getelementptr { %"compiler/source:Span", ptr, i1 }, ptr %t24, i32 0, i32 2
  %t26 = load i1, ptr %t25
  store i1 %t26, ptr %l4, !tbaa !21
  br label %bb5
bb4:
  br label %bb22
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t28 = load i1, ptr %l4, !tbaa !21
  %t30 = xor i1 %t28, true
  br i1 %t30, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l17, !tbaa !21
  br label %bb12
bb7:
  %t32 = load ptr, ptr %l0, !tbaa !29
  store ptr %t32, ptr %l18, !tbaa !29
  %t33 = load ptr, ptr %l3, !tbaa !29
  %t35 = icmp eq ptr %t33, null
  br i1 %t35, label %bb8, label %bb9
bb8:
  call void @__olang_check_failed(ptr @olang_loc_3bd31798abdf2684_ea9ddda83177a8c8)
  unreachable
bb9:
  br label %bb10
bb10:
  %t37 = load ptr, ptr %l3, !tbaa !29
  %t38 = load ptr, ptr %l18, !tbaa !29
  %t40 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erefWritten(ptr %v0, ptr %v1, ptr %t38, ptr %t37)
  store i1 %t40, ptr %l22
  br label %bb11
bb11:
  %t41 = load i1, ptr %l22, !tbaa !21
  store i1 %t41, ptr %l17, !tbaa !21
  br label %bb12
bb12:
  %t42 = load i1, ptr %l17, !tbaa !21
  br i1 %t42, label %bb13, label %bb14
bb13:
  call void @__olang_scope_close(ptr %s1)
  store i1 false, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t44 = load ptr, ptr %l0, !tbaa !29
  store ptr %t44, ptr %l24, !tbaa !29
  %t45 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t46 = load i32, ptr %t45, !tbaa !23
  %t47 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t48 = load i32, ptr %t47, !tbaa !23
  %t50 = add i32 %t48, 3
  %t53 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s1, i32 %t46, i32 %t50)
  store %"compiler/source:Span" %t53, ptr %l28
  br label %bb16
bb16:
  %t54 = load ptr, ptr %l0, !tbaa !29
  store ptr %t54, ptr %l29, !tbaa !29
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/check:Checker", ptr %t55, i32 0, i32 1
  %t58 = load ptr, ptr %t57, !tbaa !29
  store ptr %t58, ptr %l31, !tbaa !29
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t59)
  store ptr %t61, ptr %l33
  br label %bb17
bb17:
  %t62 = load ptr, ptr %l33, !tbaa !29
  %t64 = getelementptr %"compiler/check:frame", ptr %t62, i32 0, i32 4
  %t65 = load ptr, ptr %l3, !tbaa !29
  %t66 = load ptr, ptr %l31, !tbaa !29
  %t69 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %v0, ptr %v1, ptr %t66, ptr %t64, ptr %t65)
  store i32 %t69, ptr %l37
  br label %bb18
bb18:
  %t70 = load ptr, ptr %l29, !tbaa !29
  %t71 = load i32, ptr %l37, !tbaa !23
  %t72 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s1, ptr %t70, i32 %t71)
  store { i64, ptr } %t72, ptr %l38
  br label %bb19
bb19:
  %t73 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t74 = extractvalue { i64, ptr } %t73, 0
  %t75 = extractvalue { i64, ptr } %t73, 1
  %t76 = mul i64 %t74, 1
  %t77 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t76)
  call void @llvm.memcpy.p0.p0.i64(ptr %t77, ptr %t75, i64 %t76, i1 false)
  %t78 = insertvalue { i64, ptr } undef, i64 %t74, 0
  %t79 = insertvalue { i64, ptr } %t78, ptr %t77, 1
  %t81 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMutOnValueType(ptr %s1, ptr %s1, { i64, ptr } %t79)
  store %"compiler/diagmsg:Msg" %t81, ptr %l40
  br label %bb20
bb20:
  %t82 = load ptr, ptr %l24, !tbaa !29
  %t83 = load %"compiler/source:Span", ptr %l28
  %t84 = load %"compiler/diagmsg:Msg", ptr %l40
  %t85 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s1, ptr %t82, %"compiler/source:Span" %t83, %"compiler/diagmsg:Msg" %t84)
  store i64 %t85, ptr %l41
  br label %bb21
bb21:
  call void @__olang_scope_close(ptr %s1)
  store i1 true, ptr %rv
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
  call void @__olang_check_failed(ptr @olang_loc_7a28fcbf35f9c2ea_43c4b143baba89fe)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enamedNotHere(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i1 %a2) #0 {
entry:
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca %"compiler/source:Span"
  %l15 = alloca { i64, ptr }
  %l18 = alloca ptr
  %l19 = alloca i1
  %l24 = alloca ptr
  %l25 = alloca %"compiler/source:Span"
  %l27 = alloca %"compiler/diagmsg:Msg"
  %l28 = alloca %"compiler/diagmsg:Msg"
  %l29 = alloca %"compiler/diagmsg:Msg"
  %l30 = alloca i64
  %s3 = alloca %olang.scope
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } %a1, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t3 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t5 = extractvalue { i64, ptr } %t3, 0
  store i64 %t5, ptr %l5, !tbaa !24
  br label %bb1
bb1:
  %t7 = load i64, ptr %l4, !tbaa !24
  %t8 = load i64, ptr %l5, !tbaa !24
  %t11 = icmp slt i64 %t7, %t8
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb2, label %bb3
bb2:
  br label %bb23
bb3:
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t15, ptr %l15, !tbaa !27
  %t16 = load i64, ptr %l4, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr ptr, ptr %t19, i64 %t16
  %t21 = load ptr, ptr %t20, !tbaa !39
  store ptr %t21, ptr %l6, !tbaa !29
  %t23 = load ptr, ptr %l6, !tbaa !29
  store ptr %t23, ptr %l18, !tbaa !29
  store i1 false, ptr %l19, !tbaa !21
  %t24 = load ptr, ptr %l18, !tbaa !29
  %t25 = icmp ne ptr %t24, null
  br i1 %t25, label %bb5, label %bb6
bb5:
  %t27 = load ptr, ptr %l18, !tbaa !29
  %t28 = load i64, ptr %t27, !range !{i64 0, i64 30}
  %t30 = icmp eq i64 %t28, 26
  store i1 %t30, ptr %l19, !tbaa !21
  br label %bb6
bb6:
  %t31 = load i1, ptr %l19, !tbaa !21
  br i1 %t31, label %bb7, label %bb8
bb7:
  %t32 = load ptr, ptr %l6, !tbaa !29
  %t34 = getelementptr { i64, [4 x i64] }, ptr %t32, i32 0, i32 1
  %t35 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t34, i32 0, i32 0
  %t36 = load %"compiler/source:Span", ptr %t35
  store %"compiler/source:Span" %t36, ptr %l7
  br label %bb9
bb8:
  br label %bb16
bb9:
  store %olang.scope zeroinitializer, ptr %s3
  store ptr %a0, ptr %l24, !tbaa !29
  %t39 = load %"compiler/source:Span", ptr %l7
  store %"compiler/source:Span" %t39, ptr %l25
  br i1 %a2, label %bb10, label %bb11
bb10:
  %t42 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNamedArgThroughValue(ptr %s3)
  store %"compiler/diagmsg:Msg" %t42, ptr %l28
  br label %bb12
bb11:
  %t43 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNamedArgNotHere(ptr %s3)
  store %"compiler/diagmsg:Msg" %t43, ptr %l29
  br label %bb13
bb12:
  %t44 = load %"compiler/diagmsg:Msg", ptr %l28
  store %"compiler/diagmsg:Msg" %t44, ptr %l27
  br label %bb14
bb13:
  %t45 = load %"compiler/diagmsg:Msg", ptr %l29
  store %"compiler/diagmsg:Msg" %t45, ptr %l27
  br label %bb14
bb14:
  %t46 = load ptr, ptr %l24, !tbaa !29
  %t47 = load %"compiler/source:Span", ptr %l25
  %t48 = load %"compiler/diagmsg:Msg", ptr %l27
  %t49 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s3, ptr %t46, %"compiler/source:Span" %t47, %"compiler/diagmsg:Msg" %t48)
  store i64 %t49, ptr %l30
  br label %bb15
bb15:
  call void @__olang_scope_close(ptr %s3)
  store i1 true, ptr %rv
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
  call void @__olang_check_failed(ptr @olang_loc_4e5845802cf8d66b_a292c07c3dfd6e9f)
  unreachable
bb21:
  br label %bb22
bb22:
  %t51 = load i64, ptr %l4, !tbaa !24
  %t53 = add i64 %t51, 1
  store i64 %t53, ptr %l4, !tbaa !24
  br label %bb1
bb23:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eoverrideClash(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i32
  %l3 = alloca { i64, ptr }
  %l4 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca i32
  %l8 = alloca { i64, ptr }
  %l9 = alloca i1
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i32
  %l20 = alloca i32
  %l23 = alloca ptr
  %l28 = alloca i32
  %l29 = alloca { i64, ptr }
  %l34 = alloca { i64, ptr }
  %l36 = alloca i32
  %l39 = alloca i1
  %l41 = alloca i1
  %l46 = alloca i1
  %l51 = alloca ptr
  %l57 = alloca i64
  %l60 = alloca i1
  %l67 = alloca i32
  %l70 = alloca ptr
  %l75 = alloca i32
  %l76 = alloca { i64, ptr }
  %l87 = alloca i64
  %l90 = alloca i64
  %l113 = alloca { i64, ptr }
  %l116 = alloca i1
  %l117 = alloca i1
  %l121 = alloca { i64, ptr }
  %l124 = alloca { i64, ptr }
  %l127 = alloca i1
  %l135 = alloca i32
  %l137 = alloca i1
  %l142 = alloca i1
  %l143 = alloca i1
  %l146 = alloca ptr
  %l147 = alloca i32
  %l152 = alloca i32
  %l153 = alloca i1
  %l156 = alloca ptr
  %l160 = alloca i64
  %l162 = alloca ptr
  %l163 = alloca ptr
  %l166 = alloca %"compiler/source:Span"
  %l170 = alloca { i64, ptr }
  %l171 = alloca %"compiler/diagmsg:Msg"
  %l172 = alloca i64
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t5 = load i64, ptr %l1, !tbaa !24
  %t8 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %t4, i64 %t5)
  store i32 %t8, ptr %l20
  br label %bb1
bb1:
  %t9 = load i32, ptr %l20, !tbaa !23
  store i32 %t9, ptr %l2, !tbaa !23
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/check:Checker", ptr %t10, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t15 = getelementptr %"compiler/generic:Program", ptr %t13, i32 0, i32 2
  store ptr %t15, ptr %l23, !tbaa !29
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/check:Checker", ptr %t16, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !29
  %t21 = getelementptr %"compiler/generic:Program", ptr %t19, i32 0, i32 2
  %t22 = load i32, ptr %l2, !tbaa !23
  %t25 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t21, i32 %t22)
  store i32 %t25, ptr %l28
  br label %bb2
bb2:
  %t26 = load ptr, ptr %l23, !tbaa !29
  %t27 = load i32, ptr %l28, !tbaa !23
  %t28 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t26, i32 %t27)
  store { i64, ptr } %t28, ptr %l29
  br label %bb3
bb3:
  %t29 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t29, ptr %l3, !tbaa !27
  %t30 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t32 = extractvalue { i64, ptr } %t30, 0
  %t34 = icmp eq i64 %t32, 0
  br i1 %t34, label %bb4, label %bb5
bb4:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb5:
  br label %bb6
bb6:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t37 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t37, ptr %l34, !tbaa !27
  %t38 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t39 = load ptr, ptr %t38, !tbaa !27
  %t40 = getelementptr i32, ptr %t39, i64 0
  %t41 = load i32, ptr %t40, !tbaa !33
  %t44 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t36, i32 %t41)
  store i32 %t44, ptr %l36
  br label %bb7
bb7:
  %t45 = load i32, ptr %l36, !tbaa !23
  store i32 %t45, ptr %l4, !tbaa !23
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = load i32, ptr %l4, !tbaa !23
  %t50 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t46, i32 %t47)
  store i1 %t50, ptr %l39
  br label %bb8
bb8:
  %t51 = load i1, ptr %l39, !tbaa !21
  %t52 = xor i1 %t51, true
  br i1 %t52, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l41, !tbaa !21
  br label %bb12
bb10:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/check:Checker", ptr %t54, i32 0, i32 1
  %t57 = load ptr, ptr %t56, !tbaa !29
  %t59 = getelementptr %"compiler/generic:Program", ptr %t57, i32 0, i32 2
  %t60 = load i32, ptr %l4, !tbaa !23
  %t63 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eClosed(ptr %v0, ptr %t59, i32 %t60)
  store i1 %t63, ptr %l46
  br label %bb11
bb11:
  %t64 = load i1, ptr %l46, !tbaa !21
  %t65 = xor i1 %t64, true
  store i1 %t65, ptr %l41, !tbaa !21
  br label %bb12
bb12:
  %t67 = load i1, ptr %l41, !tbaa !21
  br i1 %t67, label %bb13, label %bb14
bb13:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb14:
  br label %bb15
bb15:
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/check:Checker", ptr %t68, i32 0, i32 1
  %t71 = load ptr, ptr %t70, !tbaa !29
  %t72 = load i64, ptr %l1, !tbaa !24
  %t75 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t71, i64 %t72)
  store ptr %t75, ptr %l51
  br label %bb16
bb16:
  %t76 = load ptr, ptr %l51, !tbaa !29
  store ptr %t76, ptr %l5, !tbaa !29
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/check:Checker", ptr %t77, i32 0, i32 1
  %t80 = load ptr, ptr %t79, !tbaa !29
  %t81 = load i32, ptr %l4, !tbaa !23
  %t82 = load ptr, ptr %l5, !tbaa !29
  %t84 = getelementptr %"compiler/ast:Func", ptr %t82, i32 0, i32 2
  %t85 = load i32, ptr %t84, !tbaa !23
  %t89 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDefaultMethod(ptr %v0, ptr %t80, i32 %t81, i32 %t85)
  store i64 %t89, ptr %l57
  br label %bb17
bb17:
  %t90 = load i64, ptr %l57, !tbaa !24
  store i64 %t90, ptr %l6, !tbaa !24
  %t91 = load i64, ptr %l6, !tbaa !24
  %t93 = icmp slt i64 %t91, 0
  br i1 %t93, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l60, !tbaa !21
  br label %bb20
bb19:
  %t95 = load i64, ptr %l6, !tbaa !24
  %t96 = load i64, ptr %l1, !tbaa !24
  %t99 = icmp eq i64 %t95, %t96
  store i1 %t99, ptr %l60, !tbaa !21
  br label %bb20
bb20:
  %t101 = load i1, ptr %l60, !tbaa !21
  br i1 %t101, label %bb21, label %bb22
bb21:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb22:
  br label %bb23
bb23:
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t104 = getelementptr %"compiler/check:Checker", ptr %t102, i32 0, i32 1
  %t105 = load ptr, ptr %t104, !tbaa !29
  %t106 = load i64, ptr %l6, !tbaa !24
  %t109 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %t105, i64 %t106)
  store i32 %t109, ptr %l67
  br label %bb24
bb24:
  %t110 = load i32, ptr %l67, !tbaa !23
  store i32 %t110, ptr %l7, !tbaa !23
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t113 = getelementptr %"compiler/check:Checker", ptr %t111, i32 0, i32 1
  %t114 = load ptr, ptr %t113, !tbaa !29
  %t116 = getelementptr %"compiler/generic:Program", ptr %t114, i32 0, i32 2
  store ptr %t116, ptr %l70, !tbaa !29
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t119 = getelementptr %"compiler/check:Checker", ptr %t117, i32 0, i32 1
  %t120 = load ptr, ptr %t119, !tbaa !29
  %t122 = getelementptr %"compiler/generic:Program", ptr %t120, i32 0, i32 2
  %t123 = load i32, ptr %l7, !tbaa !23
  %t126 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t122, i32 %t123)
  store i32 %t126, ptr %l75
  br label %bb25
bb25:
  %t127 = load ptr, ptr %l70, !tbaa !29
  %t128 = load i32, ptr %l75, !tbaa !23
  %t129 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t127, i32 %t128)
  store { i64, ptr } %t129, ptr %l76
  br label %bb26
bb26:
  %t130 = load { i64, ptr }, ptr %l76, !tbaa !27
  store { i64, ptr } %t130, ptr %l8, !tbaa !27
  %t131 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t133 = extractvalue { i64, ptr } %t131, 0
  %t134 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t136 = extractvalue { i64, ptr } %t134, 0
  %t139 = icmp eq i64 %t133, %t136
  store i1 %t139, ptr %l9, !tbaa !21
  store i64 1, ptr %l10, !tbaa !24
  %t141 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t143 = extractvalue { i64, ptr } %t141, 0
  store i64 %t143, ptr %l11, !tbaa !24
  store i64 1, ptr %l12, !tbaa !24
  %t145 = load i64, ptr %l11, !tbaa !24
  %t146 = load i64, ptr %l10, !tbaa !24
  %t149 = icmp sgt i64 %t145, %t146
  br i1 %t149, label %bb27, label %bb28
bb27:
  %t151 = load i64, ptr %l12, !tbaa !24
  %t153 = icmp sgt i64 %t151, 0
  br i1 %t153, label %bb29, label %bb30
bb28:
  store i64 0, ptr %l87, !tbaa !24
  br label %bb32
bb29:
  %t155 = load i64, ptr %l11, !tbaa !24
  %t156 = load i64, ptr %l10, !tbaa !24
  %t159 = sub i64 %t155, %t156
  %t160 = load i64, ptr %l12, !tbaa !24
  %t163 = add i64 %t159, %t160
  %t165 = sub i64 %t163, 1
  %t166 = load i64, ptr %l12, !tbaa !24
  %t169 = sdiv i64 %t165, %t166
  store i64 %t169, ptr %l90, !tbaa !24
  br label %bb31
bb30:
  store i64 0, ptr %l90, !tbaa !24
  br label %bb31
bb31:
  %t171 = load i64, ptr %l90, !tbaa !24
  store i64 %t171, ptr %l87, !tbaa !24
  br label %bb32
bb32:
  %t172 = load i64, ptr %l87, !tbaa !24
  store i64 %t172, ptr %l13, !tbaa !24
  store i64 0, ptr %l14, !tbaa !24
  br label %bb33
bb33:
  %t173 = load i64, ptr %l14, !tbaa !24
  %t174 = load i64, ptr %l13, !tbaa !24
  %t177 = icmp slt i64 %t173, %t174
  %t179 = xor i1 %t177, true
  br i1 %t179, label %bb34, label %bb35
bb34:
  br label %bb49
bb35:
  br label %bb36
bb36:
  %t181 = load i64, ptr %l10, !tbaa !24
  %t182 = load i64, ptr %l14, !tbaa !24
  %t183 = load i64, ptr %l12, !tbaa !24
  %t186 = mul i64 %t182, %t183
  %t189 = add i64 %t181, %t186
  store i64 %t189, ptr %l15, !tbaa !24
  %t191 = load i1, ptr %l9, !tbaa !21
  %t193 = xor i1 %t191, true
  br i1 %t193, label %bb37, label %bb38
bb37:
  br label %bb49
bb38:
  br label %bb39
bb39:
  %t195 = load ptr, ptr %l0, !tbaa !29
  %t197 = getelementptr %"compiler/check:Checker", ptr %t195, i32 0, i32 1
  %t198 = load ptr, ptr %t197, !tbaa !29
  %t200 = getelementptr %"compiler/generic:Program", ptr %t198, i32 0, i32 2
  %t201 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t201, ptr %l113, !tbaa !27
  %t202 = load i64, ptr %l15, !tbaa !24
  %t204 = getelementptr { i64, ptr }, ptr %l113, i32 0, i32 1
  %t205 = load ptr, ptr %t204, !tbaa !27
  %t206 = getelementptr i32, ptr %t205, i64 %t202
  %t207 = load i32, ptr %t206, !tbaa !33
  %t210 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eClosed(ptr %v0, ptr %t200, i32 %t207)
  store i1 %t210, ptr %l116
  br label %bb40
bb40:
  %t211 = load i1, ptr %l116, !tbaa !21
  br i1 %t211, label %bb41, label %bb42
bb41:
  %t212 = load ptr, ptr %l0, !tbaa !29
  %t214 = getelementptr %"compiler/check:Checker", ptr %t212, i32 0, i32 1
  %t215 = load ptr, ptr %t214, !tbaa !29
  %t217 = getelementptr %"compiler/generic:Program", ptr %t215, i32 0, i32 2
  %t218 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t218, ptr %l121, !tbaa !27
  %t219 = load i64, ptr %l15, !tbaa !24
  %t221 = getelementptr { i64, ptr }, ptr %l121, i32 0, i32 1
  %t222 = load ptr, ptr %t221, !tbaa !27
  %t223 = getelementptr i32, ptr %t222, i64 %t219
  %t224 = load i32, ptr %t223, !tbaa !33
  %t225 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t225, ptr %l124, !tbaa !27
  %t226 = load i64, ptr %l15, !tbaa !24
  %t228 = getelementptr { i64, ptr }, ptr %l124, i32 0, i32 1
  %t229 = load ptr, ptr %t228, !tbaa !27
  %t230 = getelementptr i32, ptr %t229, i64 %t226
  %t231 = load i32, ptr %t230, !tbaa !33
  %t235 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t217, i32 %t224, i32 %t231)
  store i1 %t235, ptr %l127
  br label %bb43
bb42:
  store i1 false, ptr %l117, !tbaa !21
  br label %bb44
bb43:
  %t236 = load i1, ptr %l127, !tbaa !21
  %t237 = xor i1 %t236, true
  store i1 %t237, ptr %l117, !tbaa !21
  br label %bb44
bb44:
  %t239 = load i1, ptr %l117, !tbaa !21
  br i1 %t239, label %bb45, label %bb46
bb45:
  store i1 false, ptr %l9, !tbaa !21
  br label %bb47
bb46:
  br label %bb47
bb47:
  br label %bb48
bb48:
  %t240 = load i64, ptr %l14, !tbaa !24
  %t242 = add i64 %t240, 1
  store i64 %t242, ptr %l14, !tbaa !24
  br label %bb33
bb49:
  %t244 = load ptr, ptr %l0, !tbaa !29
  %t246 = getelementptr %"compiler/check:Checker", ptr %t244, i32 0, i32 1
  %t247 = load ptr, ptr %t246, !tbaa !29
  %t249 = getelementptr %"compiler/generic:Program", ptr %t247, i32 0, i32 2
  %t250 = load i32, ptr %l7, !tbaa !23
  %t253 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t249, i32 %t250)
  store i32 %t253, ptr %l135
  br label %bb50
bb50:
  %t254 = load i32, ptr %l135, !tbaa !23
  store i32 %t254, ptr %l16, !tbaa !23
  %t255 = load i1, ptr %l9, !tbaa !21
  br i1 %t255, label %bb51, label %bb52
bb51:
  %t257 = load ptr, ptr %l0, !tbaa !29
  %t259 = getelementptr %"compiler/check:Checker", ptr %t257, i32 0, i32 1
  %t260 = load ptr, ptr %t259, !tbaa !29
  %t262 = getelementptr %"compiler/generic:Program", ptr %t260, i32 0, i32 2
  %t263 = load i32, ptr %l16, !tbaa !23
  %t266 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eClosed(ptr %v0, ptr %t262, i32 %t263)
  store i1 %t266, ptr %l142
  br label %bb53
bb52:
  store i1 false, ptr %l137, !tbaa !21
  br label %bb54
bb53:
  %t267 = load i1, ptr %l142, !tbaa !21
  store i1 %t267, ptr %l137, !tbaa !21
  br label %bb54
bb54:
  %t268 = load i1, ptr %l137, !tbaa !21
  br i1 %t268, label %bb55, label %bb56
bb55:
  %t269 = load ptr, ptr %l0, !tbaa !29
  %t271 = getelementptr %"compiler/check:Checker", ptr %t269, i32 0, i32 1
  %t272 = load ptr, ptr %t271, !tbaa !29
  %t274 = getelementptr %"compiler/generic:Program", ptr %t272, i32 0, i32 2
  store ptr %t274, ptr %l146, !tbaa !29
  %t275 = load i32, ptr %l16, !tbaa !23
  store i32 %t275, ptr %l147, !tbaa !23
  %t276 = load ptr, ptr %l0, !tbaa !29
  %t278 = getelementptr %"compiler/check:Checker", ptr %t276, i32 0, i32 1
  %t279 = load ptr, ptr %t278, !tbaa !29
  %t281 = getelementptr %"compiler/generic:Program", ptr %t279, i32 0, i32 2
  %t282 = load i32, ptr %l2, !tbaa !23
  %t285 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t281, i32 %t282)
  store i32 %t285, ptr %l152
  br label %bb57
bb56:
  store i1 false, ptr %l143, !tbaa !21
  br label %bb59
bb57:
  %t286 = load ptr, ptr %l146, !tbaa !29
  %t287 = load i32, ptr %l147, !tbaa !23
  %t288 = load i32, ptr %l152, !tbaa !23
  %t289 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t286, i32 %t287, i32 %t288)
  store i1 %t289, ptr %l153
  br label %bb58
bb58:
  %t290 = load i1, ptr %l153, !tbaa !21
  %t291 = xor i1 %t290, true
  store i1 %t291, ptr %l143, !tbaa !21
  br label %bb59
bb59:
  %t293 = load i1, ptr %l143, !tbaa !21
  br i1 %t293, label %bb60, label %bb61
bb60:
  store i1 false, ptr %l9, !tbaa !21
  br label %bb62
bb61:
  br label %bb62
bb62:
  %t294 = load i1, ptr %l9, !tbaa !21
  br i1 %t294, label %bb63, label %bb64
bb63:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb64:
  br label %bb65
bb65:
  %t296 = load ptr, ptr %l0, !tbaa !29
  store ptr %t296, ptr %l156, !tbaa !29
  %t297 = load ptr, ptr %l0, !tbaa !29
  %t299 = getelementptr %"compiler/check:Checker", ptr %t297, i32 0, i32 1
  %t300 = load ptr, ptr %t299, !tbaa !29
  %t301 = load i64, ptr %l1, !tbaa !24
  %t304 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t300, i64 %t301)
  store i64 %t304, ptr %l160
  br label %bb66
bb66:
  %t305 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t306 = load ptr, ptr %l156, !tbaa !29
  %t307 = load i64, ptr %l160, !tbaa !24
  %t309 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epush(ptr %v0, ptr %v0, ptr %t306, i64 -1, i64 %t307, i32 %t305, i32 0)
  store ptr %t309, ptr %l162
  br label %bb67
bb67:
  %t310 = load ptr, ptr %l0, !tbaa !29
  store ptr %t310, ptr %l163, !tbaa !29
  %t311 = load ptr, ptr %l0, !tbaa !29
  %t312 = load ptr, ptr %l5, !tbaa !29
  %t315 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enameSpan(ptr %v0, ptr %v0, ptr %t311, ptr %t312)
  store %"compiler/source:Span" %t315, ptr %l166
  br label %bb68
bb68:
  %t316 = load ptr, ptr %l0, !tbaa !29
  %t317 = load ptr, ptr %l5, !tbaa !29
  %t319 = getelementptr %"compiler/ast:Func", ptr %t317, i32 0, i32 2
  %t320 = load i32, ptr %t319, !tbaa !23
  %t323 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t316, i32 %t320)
  store { i64, ptr } %t323, ptr %l170
  br label %bb69
bb69:
  %t324 = load { i64, ptr }, ptr %l170, !tbaa !27
  %t325 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eOverrideSignature(ptr %v0, ptr %s0, { i64, ptr } %t324)
  store %"compiler/diagmsg:Msg" %t325, ptr %l171
  br label %bb70
bb70:
  %t326 = load ptr, ptr %l163, !tbaa !29
  %t327 = load %"compiler/source:Span", ptr %l166
  %t328 = load %"compiler/diagmsg:Msg", ptr %l171
  %t329 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s0, ptr %t326, %"compiler/source:Span" %t327, %"compiler/diagmsg:Msg" %t328)
  store i64 %t329, ptr %l172
  br label %bb71
bb71:
  %t330 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %t330)
  br label %bb72
bb72:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erawsOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l8 = alloca i32
  %l13 = alloca i1
  %l14 = alloca ptr
  %l19 = alloca ptr
  %l20 = alloca i32
  %l23 = alloca ptr
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t6, i32 %a1)
  store i32 %t10, ptr %l8
  br label %bb1
bb1:
  %t11 = load i32, ptr %l8, !tbaa !23
  store i32 %t11, ptr %l2, !tbaa !23
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/check:Checker", ptr %t12, i32 0, i32 53
  %t15 = load i32, ptr %l2, !tbaa !23
  %t17 = sext i32 %t15 to i64
  %t20 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fcheck_3arawTable_2_H63c69eede5e7cc65b54d8ce1ed292a98(ptr %v0, ptr %t14, i64 %t17)
  store i1 %t20, ptr %l13
  br label %bb2
bb2:
  %t21 = load i1, ptr %l13, !tbaa !21
  br i1 %t21, label %bb3, label %bb4
bb3:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/check:Checker", ptr %t22, i32 0, i32 53
  %t25 = load i32, ptr %l2, !tbaa !23
  %t27 = sext i32 %t25 to i64
  %t30 = call { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fcheck_3arawTable_2_Hc06038cfd2a883d900a989353ba26a88(ptr %v0, ptr %v1, ptr %t24, i64 %t27)
  %t31 = extractvalue { i32, ptr } %t30, 1
  %t32 = extractvalue { i32, ptr } %t30, 0
  store i32 %t32, ptr %l20
  %t33 = icmp ne i32 %t32, 0
  br i1 %t33, label %bb6, label %ok.34, !prof !99
ok.34:
  store ptr %t31, ptr %l19
  br label %bb5
bb4:
  br label %bb9
bb5:
  %t35 = load ptr, ptr %l19, !tbaa !29
  store ptr %t35, ptr %l14, !tbaa !29
  br label %bb8
bb6:
  br label %bb7
bb7:
  call void @__olang_check_failed(ptr @olang_loc_4c4a12b05c2c1d31_444cdf7465594545)
  unreachable
bb8:
  %t36 = load ptr, ptr %l14, !tbaa !29
  store ptr %t36, ptr %rv
  br label %ret
bb9:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load i32, ptr %l2, !tbaa !23
  %t41 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erawTable(ptr %v0, ptr %v1, ptr %t37, i32 %t38, i1 false)
  store ptr %t41, ptr %l23
  br label %bb10
bb10:
  %t42 = load ptr, ptr %l23, !tbaa !29
  store ptr %t42, ptr %l3, !tbaa !29
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/check:Checker", ptr %t43, i32 0, i32 53
  %t46 = load i32, ptr %l2, !tbaa !23
  %t48 = sext i32 %t46 to i64
  %t49 = load ptr, ptr %l3, !tbaa !29
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fcheck_3arawTable_2_Hfe32448d245bb62a962210add151a121(ptr %v0, ptr %v1, ptr %t45, i64 %t48, ptr %t49)
  br label %bb11
bb11:
  %t53 = load ptr, ptr %l3, !tbaa !29
  store ptr %t53, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eseqRows(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca ptr
  %l8 = alloca ptr
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
  %l25 = alloca i64
  %l27 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l30 = alloca i64
  %l32 = alloca i64
  %l37 = alloca { i64, ptr }
  %l39 = alloca { i64, ptr }
  %l41 = alloca i1
  %l42 = alloca ptr
  %l43 = alloca { i64, ptr }
  %l48 = alloca { i64, ptr }
  %l50 = alloca { i64, ptr }
  %l52 = alloca ptr
  %l56 = alloca i1
  %l60 = alloca i1
  %l66 = alloca i1
  %l70 = alloca i1
  %l77 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l85 = alloca i64
  %l88 = alloca i64
  %l112 = alloca { i64, ptr }
  %l124 = alloca i64
  %l127 = alloca i64
  %l145 = alloca ptr
  %l147 = alloca { i64, ptr }
  %l150 = alloca %"compiler/source:Span"
  %l162 = alloca i64
  %l165 = alloca i64
  %l184 = alloca { i64, ptr }
  %l189 = alloca ptr
  %l191 = alloca { i64, ptr }
  %rv = alloca ptr
  %t259 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fast_3aPattern_26_3e_26_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l27
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l27
  %t3 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %t3
  store ptr %t3, ptr %l3, !tbaa !29
  store ptr %a1, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb2
bb2:
  %t7 = load i64, ptr %l5, !tbaa !24
  store i64 %t7, ptr %l30, !tbaa !24
  %t8 = load ptr, ptr %l4, !tbaa !29
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fast_3aPattern_26_3e_H06f4ae43b564aa38800728c5b9a6edfe(ptr %v1, ptr %t8)
  store i64 %t10, ptr %l32
  br label %bb3
bb3:
  %t11 = load i64, ptr %l30, !tbaa !24
  %t12 = load i64, ptr %l32, !tbaa !24
  %t13 = icmp slt i64 %t11, %t12
  %t15 = xor i1 %t13, true
  br i1 %t15, label %bb4, label %bb5
bb4:
  br label %bb81
bb5:
  br label %bb6
bb6:
  %t17 = load ptr, ptr %l4, !tbaa !29
  %t18 = load i64, ptr %l5, !tbaa !24
  %t21 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fast_3aPattern_26_3e_Hb04d670045d084ea2498d9030c4fbba9(ptr %v1, ptr %v1, ptr %t17, i64 %t18)
  store { i64, ptr } %t21, ptr %l37
  br label %bb7
bb7:
  %t22 = load { i64, ptr }, ptr %l37, !tbaa !27
  store { i64, ptr } %t22, ptr %l6, !tbaa !27
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t24, ptr %l39, !tbaa !27
  %t25 = getelementptr { i64, ptr }, ptr %l39, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !27
  %t27 = getelementptr ptr, ptr %t26, i64 0
  %t28 = load ptr, ptr %t27, !tbaa !39
  %t31 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epatWild(ptr %v0, ptr %v1, ptr %t23, ptr %t28)
  store i1 %t31, ptr %l41
  br label %bb8
bb8:
  %t32 = load i1, ptr %l41, !tbaa !21
  br i1 %t32, label %bb9, label %bb10
bb9:
  %t33 = load ptr, ptr %l3, !tbaa !29
  store ptr %t33, ptr %l42, !tbaa !29
  %t34 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t34, ptr %l43, !tbaa !27
  %t35 = icmp sge i64 0, 0
  br i1 %t35, label %bb11, label %bb12
bb10:
  br label %bb17
bb11:
  %t37 = icmp sle i64 0, 1152921504606846975
  br i1 %t37, label %bb13, label %bb14
bb12:
  call void @__olang_check_failed(ptr @olang_loc_e4bef59f129059d8_aff2623e63fdc5dc)
  unreachable
bb13:
  %t39 = mul i64 0, 8
  %t40 = insertvalue { i64, ptr } undef, i64 0, 0
  %t41 = insertvalue { i64, ptr } %t40, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t42 = load i64, ptr %l2, !tbaa !24
  %t43 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t46 = call { i64, ptr } @compiler_2fcheck_2epatTail(ptr %v1, ptr %v1, ptr %v1, { i64, ptr } %t43, { i64, ptr } %t41, i64 %t42)
  store { i64, ptr } %t46, ptr %l48
  br label %bb15
bb14:
  call void @__olang_check_failed(ptr @olang_loc_e4bef59f129059d8_aff2623e63fdc5dc)
  unreachable
bb15:
  %t47 = load ptr, ptr %l42, !tbaa !29
  %t48 = load { i64, ptr }, ptr %l48, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fast_3aPattern_26_3e_H19842cc3f9f17801919cd111c108caa0(ptr %v2, ptr %v1, ptr %t47, { i64, ptr } %t48)
  br label %bb16
bb16:
  br label %bb80
bb17:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t50 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t50, ptr %l50, !tbaa !27
  %t51 = getelementptr { i64, ptr }, ptr %l50, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !27
  %t53 = getelementptr ptr, ptr %t52, i64 0
  %t54 = load ptr, ptr %t53, !tbaa !39
  %t57 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eshapeOf(ptr %v0, ptr %v1, ptr %v2, ptr %t49, ptr %t54)
  store ptr %t57, ptr %l52
  br label %bb18
bb18:
  %t58 = load ptr, ptr %l52, !tbaa !29
  store ptr %t58, ptr %l7, !tbaa !29
  %t59 = load ptr, ptr %l7, !tbaa !29
  %t61 = getelementptr %"compiler/check:elemsShape", ptr %t59, i32 0, i32 1
  %t62 = load i64, ptr %t61, !tbaa !24
  %t64 = icmp eq i64 %t62, -2
  br i1 %t64, label %bb19, label %bb20
bb19:
  store i1 true, ptr %l56, !tbaa !21
  br label %bb24
bb20:
  %t66 = load ptr, ptr %l7, !tbaa !29
  %t68 = getelementptr %"compiler/check:elemsShape", ptr %t66, i32 0, i32 1
  %t69 = load i64, ptr %t68, !tbaa !24
  %t71 = icmp eq i64 %t69, -1
  br i1 %t71, label %bb21, label %bb22
bb21:
  %t73 = load ptr, ptr %l7, !tbaa !29
  %t75 = getelementptr %"compiler/check:elemsShape", ptr %t73, i32 0, i32 0
  %t76 = load { i64, ptr }, ptr %t75, !tbaa !27
  %t78 = extractvalue { i64, ptr } %t76, 0
  %t79 = load i64, ptr %l2, !tbaa !24
  %t82 = icmp ne i64 %t78, %t79
  store i1 %t82, ptr %l60, !tbaa !21
  br label %bb23
bb22:
  store i1 false, ptr %l60, !tbaa !21
  br label %bb23
bb23:
  %t84 = load i1, ptr %l60, !tbaa !21
  store i1 %t84, ptr %l56, !tbaa !21
  br label %bb24
bb24:
  %t85 = load i1, ptr %l56, !tbaa !21
  br i1 %t85, label %bb25, label %bb26
bb25:
  store i1 true, ptr %l66, !tbaa !21
  br label %bb30
bb26:
  %t86 = load ptr, ptr %l7, !tbaa !29
  %t88 = getelementptr %"compiler/check:elemsShape", ptr %t86, i32 0, i32 1
  %t89 = load i64, ptr %t88, !tbaa !24
  %t91 = icmp sge i64 %t89, 0
  br i1 %t91, label %bb27, label %bb28
bb27:
  %t93 = load ptr, ptr %l7, !tbaa !29
  %t95 = getelementptr %"compiler/check:elemsShape", ptr %t93, i32 0, i32 0
  %t96 = load { i64, ptr }, ptr %t95, !tbaa !27
  %t98 = extractvalue { i64, ptr } %t96, 0
  %t100 = sub i64 %t98, 1
  %t101 = load i64, ptr %l2, !tbaa !24
  %t104 = icmp sgt i64 %t100, %t101
  store i1 %t104, ptr %l70, !tbaa !21
  br label %bb29
bb28:
  store i1 false, ptr %l70, !tbaa !21
  br label %bb29
bb29:
  %t106 = load i1, ptr %l70, !tbaa !21
  store i1 %t106, ptr %l66, !tbaa !21
  br label %bb30
bb30:
  %t107 = load i1, ptr %l66, !tbaa !21
  br i1 %t107, label %bb31, label %bb32
bb31:
  br label %bb80
bb32:
  br label %bb33
bb33:
  %t108 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPattern_26_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t108, ptr %l77
  br label %bb34
bb34:
  %t109 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l77
  %t110 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t109, ptr %t110
  store ptr %t110, ptr %l8, !tbaa !29
  store i64 0, ptr %l9, !tbaa !24
  %t112 = load ptr, ptr %l7, !tbaa !29
  %t114 = getelementptr %"compiler/check:elemsShape", ptr %t112, i32 0, i32 0
  %t115 = load { i64, ptr }, ptr %t114, !tbaa !27
  %t117 = extractvalue { i64, ptr } %t115, 0
  store i64 %t117, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t119 = load i64, ptr %l10, !tbaa !24
  %t120 = load i64, ptr %l9, !tbaa !24
  %t123 = icmp sgt i64 %t119, %t120
  br i1 %t123, label %bb35, label %bb36
bb35:
  %t125 = load i64, ptr %l11, !tbaa !24
  %t127 = icmp sgt i64 %t125, 0
  br i1 %t127, label %bb37, label %bb38
bb36:
  store i64 0, ptr %l85, !tbaa !24
  br label %bb40
bb37:
  %t129 = load i64, ptr %l10, !tbaa !24
  %t130 = load i64, ptr %l9, !tbaa !24
  %t133 = sub i64 %t129, %t130
  %t134 = load i64, ptr %l11, !tbaa !24
  %t137 = add i64 %t133, %t134
  %t139 = sub i64 %t137, 1
  %t140 = load i64, ptr %l11, !tbaa !24
  %t143 = sdiv i64 %t139, %t140
  store i64 %t143, ptr %l88, !tbaa !24
  br label %bb39
bb38:
  store i64 0, ptr %l88, !tbaa !24
  br label %bb39
bb39:
  %t145 = load i64, ptr %l88, !tbaa !24
  store i64 %t145, ptr %l85, !tbaa !24
  br label %bb40
bb40:
  %t146 = load i64, ptr %l85, !tbaa !24
  store i64 %t146, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb41
bb41:
  %t147 = load i64, ptr %l13, !tbaa !24
  %t148 = load i64, ptr %l12, !tbaa !24
  %t151 = icmp slt i64 %t147, %t148
  %t153 = xor i1 %t151, true
  br i1 %t153, label %bb42, label %bb43
bb42:
  br label %bb64
bb43:
  br label %bb44
bb44:
  %t155 = load i64, ptr %l9, !tbaa !24
  %t156 = load i64, ptr %l13, !tbaa !24
  %t157 = load i64, ptr %l11, !tbaa !24
  %t160 = mul i64 %t156, %t157
  %t163 = add i64 %t155, %t160
  store i64 %t163, ptr %l14, !tbaa !24
  %t165 = load i64, ptr %l14, !tbaa !24
  %t166 = load ptr, ptr %l7, !tbaa !29
  %t168 = getelementptr %"compiler/check:elemsShape", ptr %t166, i32 0, i32 1
  %t169 = load i64, ptr %t168, !tbaa !24
  %t172 = icmp ne i64 %t165, %t169
  br i1 %t172, label %bb45, label %bb46
bb45:
  %t174 = load ptr, ptr %l8, !tbaa !29
  %t175 = load ptr, ptr %l7, !tbaa !29
  %t177 = getelementptr %"compiler/check:elemsShape", ptr %t175, i32 0, i32 0
  %t178 = load { i64, ptr }, ptr %t177, !tbaa !27
  store { i64, ptr } %t178, ptr %l112, !tbaa !27
  %t179 = load i64, ptr %l14, !tbaa !24
  %t181 = getelementptr { i64, ptr }, ptr %l112, i32 0, i32 1
  %t182 = load ptr, ptr %t181, !tbaa !27
  %t183 = getelementptr ptr, ptr %t182, i64 %t179
  %t184 = load ptr, ptr %t183, !tbaa !39
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPattern_26_3e_2ePush_3ccompiler_2fast_3aPattern_26_3e(ptr %v2, ptr %v2, ptr %t174, ptr %t184)
  br label %bb47
bb46:
  br label %bb48
bb47:
  br label %bb63
bb48:
  store i64 0, ptr %l15, !tbaa !24
  %t187 = load i64, ptr %l2, !tbaa !24
  %t188 = load ptr, ptr %l7, !tbaa !29
  %t190 = getelementptr %"compiler/check:elemsShape", ptr %t188, i32 0, i32 0
  %t191 = load { i64, ptr }, ptr %t190, !tbaa !27
  %t193 = extractvalue { i64, ptr } %t191, 0
  %t195 = sub i64 %t193, 1
  %t198 = sub i64 %t187, %t195
  store i64 %t198, ptr %l16, !tbaa !24
  store i64 1, ptr %l17, !tbaa !24
  %t200 = load i64, ptr %l16, !tbaa !24
  %t201 = load i64, ptr %l15, !tbaa !24
  %t204 = icmp sgt i64 %t200, %t201
  br i1 %t204, label %bb49, label %bb50
bb49:
  %t206 = load i64, ptr %l17, !tbaa !24
  %t208 = icmp sgt i64 %t206, 0
  br i1 %t208, label %bb51, label %bb52
bb50:
  store i64 0, ptr %l124, !tbaa !24
  br label %bb54
bb51:
  %t210 = load i64, ptr %l16, !tbaa !24
  %t211 = load i64, ptr %l15, !tbaa !24
  %t214 = sub i64 %t210, %t211
  %t215 = load i64, ptr %l17, !tbaa !24
  %t218 = add i64 %t214, %t215
  %t220 = sub i64 %t218, 1
  %t221 = load i64, ptr %l17, !tbaa !24
  %t224 = sdiv i64 %t220, %t221
  store i64 %t224, ptr %l127, !tbaa !24
  br label %bb53
bb52:
  store i64 0, ptr %l127, !tbaa !24
  br label %bb53
bb53:
  %t226 = load i64, ptr %l127, !tbaa !24
  store i64 %t226, ptr %l124, !tbaa !24
  br label %bb54
bb54:
  %t227 = load i64, ptr %l124, !tbaa !24
  store i64 %t227, ptr %l18, !tbaa !24
  store i64 0, ptr %l19, !tbaa !24
  br label %bb55
bb55:
  %t228 = load i64, ptr %l19, !tbaa !24
  %t229 = load i64, ptr %l18, !tbaa !24
  %t232 = icmp slt i64 %t228, %t229
  %t234 = xor i1 %t232, true
  br i1 %t234, label %bb56, label %bb57
bb56:
  br label %bb62
bb57:
  br label %bb58
bb58:
  %t236 = load i64, ptr %l15, !tbaa !24
  %t237 = load i64, ptr %l19, !tbaa !24
  %t238 = load i64, ptr %l17, !tbaa !24
  %t241 = mul i64 %t237, %t238
  %t244 = add i64 %t236, %t241
  store i64 %t244, ptr %l20, !tbaa !24
  %t246 = load ptr, ptr %l8, !tbaa !29
  store ptr %t246, ptr %l145, !tbaa !29
  %t247 = load ptr, ptr %l7, !tbaa !29
  %t249 = getelementptr %"compiler/check:elemsShape", ptr %t247, i32 0, i32 0
  %t250 = load { i64, ptr }, ptr %t249, !tbaa !27
  store { i64, ptr } %t250, ptr %l147, !tbaa !27
  %t251 = load i64, ptr %l14, !tbaa !24
  %t253 = getelementptr { i64, ptr }, ptr %l147, i32 0, i32 1
  %t254 = load ptr, ptr %t253, !tbaa !27
  %t255 = getelementptr ptr, ptr %t254, i64 %t251
  %t256 = load ptr, ptr %t255, !tbaa !39
  %t258 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aPattern_2eSpan(ptr %v2, ptr %t256)
  store %"compiler/source:Span" %t258, ptr %l150
  br label %bb59
bb59:
  store { i64, [4 x i64] } zeroinitializer, ptr %t259
  %t260 = getelementptr { i64, [4 x i64] }, ptr %t259, i32 0, i32 0
  store i64 0, ptr %t260
  %t261 = load %"compiler/source:Span", ptr %l150
  %t262 = insertvalue { %"compiler/source:Span" } undef, %"compiler/source:Span" %t261, 0
  %t263 = getelementptr { i64, [4 x i64] }, ptr %t259, i32 0, i32 1
  store { %"compiler/source:Span" } %t262, ptr %t263
  %t264 = load { i64, [4 x i64] }, ptr %t259
  %t266 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t264, ptr %t266
  %t267 = load ptr, ptr %l145, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPattern_26_3e_2ePush_3ccompiler_2fast_3aPattern_26_3e(ptr %v2, ptr %v2, ptr %t267, ptr %t266)
  br label %bb60
bb60:
  br label %bb61
bb61:
  %t269 = load i64, ptr %l19, !tbaa !24
  %t271 = add i64 %t269, 1
  store i64 %t271, ptr %l19, !tbaa !24
  br label %bb55
bb62:
  br label %bb63
bb63:
  %t273 = load i64, ptr %l13, !tbaa !24
  %t275 = add i64 %t273, 1
  store i64 %t275, ptr %l13, !tbaa !24
  br label %bb41
bb64:
  store i64 1, ptr %l21, !tbaa !24
  %t277 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t279 = extractvalue { i64, ptr } %t277, 0
  store i64 %t279, ptr %l22, !tbaa !24
  store i64 1, ptr %l23, !tbaa !24
  %t281 = load i64, ptr %l22, !tbaa !24
  %t282 = load i64, ptr %l21, !tbaa !24
  %t285 = icmp sgt i64 %t281, %t282
  br i1 %t285, label %bb65, label %bb66
bb65:
  %t287 = load i64, ptr %l23, !tbaa !24
  %t289 = icmp sgt i64 %t287, 0
  br i1 %t289, label %bb67, label %bb68
bb66:
  store i64 0, ptr %l162, !tbaa !24
  br label %bb70
bb67:
  %t291 = load i64, ptr %l22, !tbaa !24
  %t292 = load i64, ptr %l21, !tbaa !24
  %t295 = sub i64 %t291, %t292
  %t296 = load i64, ptr %l23, !tbaa !24
  %t299 = add i64 %t295, %t296
  %t301 = sub i64 %t299, 1
  %t302 = load i64, ptr %l23, !tbaa !24
  %t305 = sdiv i64 %t301, %t302
  store i64 %t305, ptr %l165, !tbaa !24
  br label %bb69
bb68:
  store i64 0, ptr %l165, !tbaa !24
  br label %bb69
bb69:
  %t307 = load i64, ptr %l165, !tbaa !24
  store i64 %t307, ptr %l162, !tbaa !24
  br label %bb70
bb70:
  %t308 = load i64, ptr %l162, !tbaa !24
  store i64 %t308, ptr %l24, !tbaa !24
  store i64 0, ptr %l25, !tbaa !24
  br label %bb71
bb71:
  %t309 = load i64, ptr %l25, !tbaa !24
  %t310 = load i64, ptr %l24, !tbaa !24
  %t313 = icmp slt i64 %t309, %t310
  %t315 = xor i1 %t313, true
  br i1 %t315, label %bb72, label %bb73
bb72:
  br label %bb77
bb73:
  br label %bb74
bb74:
  %t317 = load i64, ptr %l21, !tbaa !24
  %t318 = load i64, ptr %l25, !tbaa !24
  %t319 = load i64, ptr %l23, !tbaa !24
  %t322 = mul i64 %t318, %t319
  %t325 = add i64 %t317, %t322
  %t327 = load ptr, ptr %l8, !tbaa !29
  %t328 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t328, ptr %l184, !tbaa !27
  %t331 = getelementptr { i64, ptr }, ptr %l184, i32 0, i32 1
  %t332 = load ptr, ptr %t331, !tbaa !27
  %t333 = getelementptr ptr, ptr %t332, i64 %t325
  %t334 = load ptr, ptr %t333, !tbaa !39
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPattern_26_3e_2ePush_3ccompiler_2fast_3aPattern_26_3e(ptr %v2, ptr %v1, ptr %t327, ptr %t334)
  br label %bb75
bb75:
  br label %bb76
bb76:
  %t337 = load i64, ptr %l25, !tbaa !24
  %t339 = add i64 %t337, 1
  store i64 %t339, ptr %l25, !tbaa !24
  br label %bb71
bb77:
  %t341 = load ptr, ptr %l3, !tbaa !29
  store ptr %t341, ptr %l189, !tbaa !29
  %t342 = load ptr, ptr %l8, !tbaa !29
  %t344 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPattern_26_3e_2eToArr_H3d785ef7fade1f29078b6e80f1d617ba(ptr %v2, ptr %v2, ptr %t342)
  store { i64, ptr } %t344, ptr %l191
  br label %bb78
bb78:
  %t345 = load ptr, ptr %l189, !tbaa !29
  %t346 = load { i64, ptr }, ptr %l191, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fast_3aPattern_26_3e_H19842cc3f9f17801919cd111c108caa0(ptr %v2, ptr %v2, ptr %t345, { i64, ptr } %t346)
  br label %bb79
bb79:
  br label %bb80
bb80:
  %t347 = load i64, ptr %l5, !tbaa !24
  %t349 = add i64 %t347, 1
  store i64 %t349, ptr %l5, !tbaa !24
  br label %bb2
bb81:
  %t351 = load ptr, ptr %l3, !tbaa !29
  store ptr %t351, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eshapeErr(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, { i64, ptr } %a3, %"compiler/diagmsg:Msg" %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l3 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l10 = alloca i64
  %l14 = alloca { i64, ptr }
  %l17 = alloca i1
  %l22 = alloca ptr
  %l23 = alloca i64
  %l26 = alloca { i64, [3 x i64] }
  %l30 = alloca %"compiler/diagmsg:Msg"
  %s1 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store { i64, ptr } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load %"compiler/source:Span", ptr %l1
  %t7 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v3, ptr %t1, %"compiler/source:Span" %t2, %"compiler/diagmsg:Msg" %a4)
  store i64 %t7, ptr %l10
  br label %bb1
bb1:
  %t8 = load i64, ptr %l10, !tbaa !24
  store i64 %t8, ptr %l5, !tbaa !24
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/ast:Func", ptr %a2, i32 0, i32 2
  %t13 = load i32, ptr %t12, !tbaa !23
  %t16 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t9, i32 %t13)
  store { i64, ptr } %t16, ptr %l14
  br label %bb2
bb2:
  %t17 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t17, ptr %l6, !tbaa !27
  %t18 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t19 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t22 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v2, { i64, ptr } %t18, { i64, ptr } %t19)
  store i1 %t22, ptr %l17
  br label %bb3
bb3:
  %t23 = load i1, ptr %l17, !tbaa !21
  %t24 = xor i1 %t23, true
  br i1 %t24, label %bb4, label %bb5
bb4:
  store %olang.scope zeroinitializer, ptr %s1
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/check:Checker", ptr %t26, i32 0, i32 1
  %t29 = load ptr, ptr %t28, !tbaa !29
  %t31 = getelementptr %"compiler/generic:Program", ptr %t29, i32 0, i32 0
  %t32 = load ptr, ptr %t31, !tbaa !29
  %t34 = getelementptr %"compiler/load:Loader", ptr %t32, i32 0, i32 4
  %t35 = load ptr, ptr %t34, !tbaa !29
  store ptr %t35, ptr %l22, !tbaa !29
  %t36 = load i64, ptr %l5, !tbaa !24
  store i64 %t36, ptr %l23, !tbaa !24
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load %"compiler/source:Span", ptr %l1
  %t41 = call { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eat(ptr %v0, ptr %t37, %"compiler/source:Span" %t38)
  store { i64, [3 x i64] } %t41, ptr %l26
  br label %bb6
bb5:
  br label %bb9
bb6:
  %t42 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t43 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t44 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t48 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteProtocolSpelling(ptr %v0, ptr %v2, ptr %v2, ptr %s1, { i64, ptr } %t42, { i64, ptr } %t43, { i64, ptr } %t44)
  store %"compiler/diagmsg:Msg" %t48, ptr %l30
  br label %bb7
bb7:
  %t49 = load ptr, ptr %l22, !tbaa !29
  %t50 = load i64, ptr %l23, !tbaa !24
  %t51 = load { i64, [3 x i64] }, ptr %l26
  %t52 = load %"compiler/diagmsg:Msg", ptr %l30
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %s1, ptr %t49, i64 %t50, { i64, [3 x i64] } %t51, %"compiler/diagmsg:Msg" %t52)
  br label %bb8
bb8:
  call void @__olang_scope_close(ptr %s1)
  br label %bb9
bb9:
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esliceLength(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, ptr %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i1
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca i64
  %l9 = alloca i32
  %l10 = alloca i64
  %l11 = alloca i32
  %l12 = alloca ptr
  %l13 = alloca ptr
  %l14 = alloca i32
  %l22 = alloca i32
  %l29 = alloca i64
  %l36 = alloca i32
  %l39 = alloca i1
  %l44 = alloca i32
  %l53 = alloca i64
  %l58 = alloca i32
  %l61 = alloca ptr
  %l63 = alloca i32
  %l65 = alloca i32
  %l69 = alloca i32
  %l76 = alloca i64
  %l81 = alloca i32
  %l84 = alloca ptr
  %l86 = alloca i32
  %l88 = alloca i32
  %l92 = alloca ptr
  %l93 = alloca i1
  %l106 = alloca i1
  %l107 = alloca i32
  %l110 = alloca i32
  %l113 = alloca i1
  %l114 = alloca i32
  %l117 = alloca i32
  %l120 = alloca i1
  %l125 = alloca i64
  %l129 = alloca ptr
  %l131 = alloca i32
  %l136 = alloca i64
  %l137 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store ptr %a2, ptr %l2
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l4, !tbaa !24
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  store i1 %t3, ptr %l5, !tbaa !21
  %t5 = load ptr, ptr %l2, !tbaa !29
  %t7 = icmp eq ptr %t5, null
  %t9 = xor i1 %t7, true
  br i1 %t9, label %bb1, label %bb2
bb1:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load ptr, ptr %l2, !tbaa !29
  %t15 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eknownInt(ptr %v0, ptr %v1, ptr %t11, ptr %t12)
  store i32 %t15, ptr %l22
  br label %bb3
bb2:
  br label %bb8
bb3:
  %t16 = load i32, ptr %l22, !tbaa !23
  store i32 %t16, ptr %l6, !tbaa !23
  %t17 = load i32, ptr %l6, !tbaa !23
  %t19 = icmp sge i32 %t17, 0
  br i1 %t19, label %bb4, label %bb5
bb4:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/check:Checker", ptr %t21, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !29
  %t26 = getelementptr %"compiler/generic:Program", ptr %t24, i32 0, i32 2
  %t27 = load i32, ptr %l6, !tbaa !23
  %t30 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %t26, i32 %t27)
  store i64 %t30, ptr %l29
  br label %bb6
bb5:
  br label %bb7
bb6:
  %t31 = load i64, ptr %l29, !tbaa !24
  store i64 %t31, ptr %l4, !tbaa !24
  store i1 true, ptr %l5, !tbaa !21
  br label %bb7
bb7:
  br label %bb8
bb8:
  %t32 = load ptr, ptr %l3, !tbaa !29
  %t34 = icmp eq ptr %t32, null
  br i1 %t34, label %bb9, label %bb10
bb9:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/check:Checker", ptr %t36, i32 0, i32 1
  %t39 = load ptr, ptr %t38, !tbaa !29
  %t41 = getelementptr %"compiler/generic:Program", ptr %t39, i32 0, i32 2
  %t45 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t41, i32 %a1)
  store i32 %t45, ptr %l36
  br label %bb11
bb10:
  br label %bb25
bb11:
  %t46 = load i32, ptr %l36, !tbaa !23
  store i32 %t46, ptr %l7, !tbaa !23
  %t47 = load i1, ptr %l5, !tbaa !21
  %t49 = xor i1 %t47, true
  br i1 %t49, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l39, !tbaa !21
  br label %bb15
bb13:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"compiler/check:Checker", ptr %t51, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !29
  %t56 = getelementptr %"compiler/generic:Program", ptr %t54, i32 0, i32 2
  %t57 = load i32, ptr %l7, !tbaa !23
  %t60 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t56, i32 %t57)
  store i32 %t60, ptr %l44
  br label %bb14
bb14:
  %t61 = load i32, ptr %l44, !range !{i32 0, i32 33}
  %t63 = trunc i64 26 to i32
  %t64 = icmp eq i32 %t61, %t63
  %t66 = xor i1 %t64, true
  store i1 %t66, ptr %l39, !tbaa !21
  br label %bb15
bb15:
  %t68 = load i1, ptr %l39, !tbaa !21
  br i1 %t68, label %bb16, label %bb17
bb16:
  store i32 0, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/check:Checker", ptr %t70, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !29
  %t75 = getelementptr %"compiler/generic:Program", ptr %t73, i32 0, i32 2
  %t76 = load i32, ptr %l7, !tbaa !23
  %t79 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %t75, i32 %t76)
  store i64 %t79, ptr %l53
  br label %bb19
bb19:
  %t80 = load i64, ptr %l4, !tbaa !24
  %t81 = load i64, ptr %l53, !tbaa !24
  %t83 = sub i64 %t81, %t80
  store i64 %t83, ptr %l8, !tbaa !24
  %t85 = load i64, ptr %l8, !tbaa !24
  %t87 = icmp sge i64 %t85, 0
  br i1 %t87, label %bb20, label %bb21
bb20:
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t91 = getelementptr %"compiler/check:Checker", ptr %t89, i32 0, i32 1
  %t92 = load ptr, ptr %t91, !tbaa !29
  %t94 = getelementptr %"compiler/generic:Program", ptr %t92, i32 0, i32 2
  store ptr %t94, ptr %l61, !tbaa !29
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t97 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t95)
  store i32 %t97, ptr %l63
  br label %bb22
bb21:
  store i32 0, ptr %l58, !tbaa !23
  br label %bb24
bb22:
  %t98 = load i64, ptr %l8, !tbaa !24
  %t99 = load ptr, ptr %l61, !tbaa !29
  %t100 = load i32, ptr %l63, !tbaa !23
  %t102 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConst(ptr %v0, ptr %t99, i32 %t100, i64 %t98)
  store i32 %t102, ptr %l65
  br label %bb23
bb23:
  %t103 = load i32, ptr %l65, !tbaa !23
  store i32 %t103, ptr %l58, !tbaa !23
  br label %bb24
bb24:
  %t104 = load i32, ptr %l58, !tbaa !23
  store i32 %t104, ptr %rv
  br label %ret
bb25:
  %t105 = load i1, ptr %l5, !tbaa !21
  br i1 %t105, label %bb26, label %bb27
bb26:
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t108 = load ptr, ptr %l3, !tbaa !29
  %t111 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eknownInt(ptr %v0, ptr %v2, ptr %t107, ptr %t108)
  store i32 %t111, ptr %l69
  br label %bb28
bb27:
  br label %bb38
bb28:
  %t112 = load i32, ptr %l69, !tbaa !23
  store i32 %t112, ptr %l9, !tbaa !23
  %t113 = load i32, ptr %l9, !tbaa !23
  %t115 = icmp sge i32 %t113, 0
  br i1 %t115, label %bb29, label %bb30
bb29:
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t119 = getelementptr %"compiler/check:Checker", ptr %t117, i32 0, i32 1
  %t120 = load ptr, ptr %t119, !tbaa !29
  %t122 = getelementptr %"compiler/generic:Program", ptr %t120, i32 0, i32 2
  %t123 = load i32, ptr %l9, !tbaa !23
  %t126 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %t122, i32 %t123)
  store i64 %t126, ptr %l76
  br label %bb31
bb30:
  br label %bb37
bb31:
  %t127 = load i64, ptr %l4, !tbaa !24
  %t128 = load i64, ptr %l76, !tbaa !24
  %t130 = sub i64 %t128, %t127
  store i64 %t130, ptr %l10, !tbaa !24
  %t132 = load i64, ptr %l10, !tbaa !24
  %t134 = icmp sge i64 %t132, 0
  br i1 %t134, label %bb32, label %bb33
bb32:
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t138 = getelementptr %"compiler/check:Checker", ptr %t136, i32 0, i32 1
  %t139 = load ptr, ptr %t138, !tbaa !29
  %t141 = getelementptr %"compiler/generic:Program", ptr %t139, i32 0, i32 2
  store ptr %t141, ptr %l84, !tbaa !29
  %t142 = load ptr, ptr %l0, !tbaa !29
  %t144 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t142)
  store i32 %t144, ptr %l86
  br label %bb34
bb33:
  store i32 0, ptr %l81, !tbaa !23
  br label %bb36
bb34:
  %t145 = load i64, ptr %l10, !tbaa !24
  %t146 = load ptr, ptr %l84, !tbaa !29
  %t147 = load i32, ptr %l86, !tbaa !23
  %t149 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConst(ptr %v0, ptr %t146, i32 %t147, i64 %t145)
  store i32 %t149, ptr %l88
  br label %bb35
bb35:
  %t150 = load i32, ptr %l88, !tbaa !23
  store i32 %t150, ptr %l81, !tbaa !23
  br label %bb36
bb36:
  %t151 = load i32, ptr %l81, !tbaa !23
  store i32 %t151, ptr %rv
  br label %ret
bb37:
  br label %bb38
bb38:
  %t152 = load ptr, ptr %l2, !tbaa !29
  %t154 = icmp eq ptr %t152, null
  %t156 = xor i1 %t154, true
  br i1 %t156, label %bb39, label %bb40
bb39:
  %t158 = load ptr, ptr %l3, !tbaa !29
  store ptr %t158, ptr %l92, !tbaa !29
  store i1 false, ptr %l93, !tbaa !21
  %t159 = load ptr, ptr %l92, !tbaa !29
  %t160 = icmp ne ptr %t159, null
  br i1 %t160, label %bb41, label %bb42
bb40:
  br label %bb74
bb41:
  %t162 = load ptr, ptr %l92, !tbaa !29
  %t163 = load i64, ptr %t162, !range !{i64 0, i64 30}
  %t165 = icmp eq i64 %t163, 5
  store i1 %t165, ptr %l93, !tbaa !21
  br label %bb42
bb42:
  %t166 = load i1, ptr %l93, !tbaa !21
  br i1 %t166, label %bb43, label %bb44
bb43:
  %t167 = load ptr, ptr %l3, !tbaa !29
  %t169 = getelementptr { i64, [4 x i64] }, ptr %t167, i32 0, i32 1
  %t170 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t169, i32 0, i32 1
  %t171 = load i32, ptr %t170, !range !{i32 0, i32 114}
  store i32 %t171, ptr %l11
  %t173 = load ptr, ptr %l3, !tbaa !29
  %t175 = getelementptr { i64, [4 x i64] }, ptr %t173, i32 0, i32 1
  %t176 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t175, i32 0, i32 2
  %t177 = load ptr, ptr %t176
  store ptr %t177, ptr %l12, !tbaa !29
  %t179 = load ptr, ptr %l3, !tbaa !29
  %t181 = getelementptr { i64, [4 x i64] }, ptr %t179, i32 0, i32 1
  %t182 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t181, i32 0, i32 3
  %t183 = load ptr, ptr %t182
  store ptr %t183, ptr %l13, !tbaa !29
  br label %bb45
bb44:
  br label %bb68
bb45:
  %t185 = load i32, ptr %l11, !range !{i32 0, i32 114}
  %t187 = trunc i64 68 to i32
  %t188 = icmp eq i32 %t185, %t187
  br i1 %t188, label %bb46, label %bb47
bb46:
  %t190 = load ptr, ptr %l12, !tbaa !29
  %t191 = load ptr, ptr %l2, !tbaa !29
  %t194 = call i1 @compiler_2fcheck_2esameRead(ptr %v2, ptr %v1, ptr %t190, ptr %t191)
  store i1 %t194, ptr %l106
  br label %bb48
bb47:
  br label %bb68
bb48:
  %t195 = load i1, ptr %l106, !tbaa !21
  br i1 %t195, label %bb49, label %bb50
bb49:
  %t196 = load ptr, ptr %l0, !tbaa !29
  %t197 = load ptr, ptr %l13, !tbaa !29
  %t200 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eknownInt(ptr %v0, ptr %v2, ptr %t196, ptr %t197)
  store i32 %t200, ptr %l110
  br label %bb51
bb50:
  %t201 = load ptr, ptr %l13, !tbaa !29
  %t202 = load ptr, ptr %l2, !tbaa !29
  %t205 = call i1 @compiler_2fcheck_2esameRead(ptr %v2, ptr %v1, ptr %t201, ptr %t202)
  store i1 %t205, ptr %l113
  br label %bb52
bb51:
  %t206 = load i32, ptr %l110, !tbaa !23
  store i32 %t206, ptr %l107, !tbaa !23
  br label %bb57
bb52:
  %t207 = load i1, ptr %l113, !tbaa !21
  br i1 %t207, label %bb53, label %bb54
bb53:
  %t208 = load ptr, ptr %l0, !tbaa !29
  %t209 = load ptr, ptr %l12, !tbaa !29
  %t212 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eknownInt(ptr %v0, ptr %v2, ptr %t208, ptr %t209)
  store i32 %t212, ptr %l117
  br label %bb55
bb54:
  store i32 -1, ptr %l114, !tbaa !23
  br label %bb56
bb55:
  %t213 = load i32, ptr %l117, !tbaa !23
  store i32 %t213, ptr %l114, !tbaa !23
  br label %bb56
bb56:
  %t214 = load i32, ptr %l114, !tbaa !23
  store i32 %t214, ptr %l107, !tbaa !23
  br label %bb57
bb57:
  %t215 = load i32, ptr %l107, !tbaa !23
  store i32 %t215, ptr %l14, !tbaa !23
  %t216 = load i32, ptr %l14, !tbaa !23
  %t218 = icmp sge i32 %t216, 0
  br i1 %t218, label %bb58, label %bb59
bb58:
  %t220 = load ptr, ptr %l0, !tbaa !29
  %t222 = getelementptr %"compiler/check:Checker", ptr %t220, i32 0, i32 1
  %t223 = load ptr, ptr %t222, !tbaa !29
  %t225 = getelementptr %"compiler/generic:Program", ptr %t223, i32 0, i32 2
  %t226 = load i32, ptr %l14, !tbaa !23
  %t229 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %t225, i32 %t226)
  store i64 %t229, ptr %l125
  br label %bb60
bb59:
  store i1 false, ptr %l120, !tbaa !21
  br label %bb61
bb60:
  %t230 = load i64, ptr %l125, !tbaa !24
  %t231 = icmp sge i64 %t230, 0
  store i1 %t231, ptr %l120, !tbaa !21
  br label %bb61
bb61:
  %t233 = load i1, ptr %l120, !tbaa !21
  br i1 %t233, label %bb62, label %bb63
bb62:
  %t234 = load ptr, ptr %l0, !tbaa !29
  %t236 = getelementptr %"compiler/check:Checker", ptr %t234, i32 0, i32 1
  %t237 = load ptr, ptr %t236, !tbaa !29
  %t239 = getelementptr %"compiler/generic:Program", ptr %t237, i32 0, i32 2
  store ptr %t239, ptr %l129, !tbaa !29
  %t240 = load ptr, ptr %l0, !tbaa !29
  %t242 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t240)
  store i32 %t242, ptr %l131
  br label %bb64
bb63:
  br label %bb67
bb64:
  %t243 = load ptr, ptr %l0, !tbaa !29
  %t245 = getelementptr %"compiler/check:Checker", ptr %t243, i32 0, i32 1
  %t246 = load ptr, ptr %t245, !tbaa !29
  %t248 = getelementptr %"compiler/generic:Program", ptr %t246, i32 0, i32 2
  %t249 = load i32, ptr %l14, !tbaa !23
  %t252 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %t248, i32 %t249)
  store i64 %t252, ptr %l136
  br label %bb65
bb65:
  %t253 = load ptr, ptr %l129, !tbaa !29
  %t254 = load i32, ptr %l131, !tbaa !23
  %t255 = load i64, ptr %l136, !tbaa !24
  %t256 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConst(ptr %v0, ptr %t253, i32 %t254, i64 %t255)
  store i32 %t256, ptr %l137
  br label %bb66
bb66:
  %t257 = load i32, ptr %l137, !tbaa !23
  store i32 %t257, ptr %rv
  br label %ret
bb67:
  br label %bb73
bb68:
  br i1 true, label %bb69, label %bb70
bb69:
  br label %bb71
bb70:
  br label %bb72
bb71:
  br label %bb73
bb72:
  call void @__olang_check_failed(ptr @olang_loc_559e4e58cbe133ef_379910d256e310bb)
  unreachable
bb73:
  br label %bb74
bb74:
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etopSetChain(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, ptr %a2, i32 %a3, %"compiler/source:Span" %a4, i64 %a5, i64 %a6) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca i64
  %l6 = alloca i64
  %l10 = alloca i1
  %l15 = alloca ptr
  %l16 = alloca i64
  %l26 = alloca ptr
  %l31 = alloca ptr
  %l32 = alloca i64
  %l43 = alloca ptr
  %l48 = alloca i1
  %l53 = alloca ptr
  %l54 = alloca i64
  %l64 = alloca ptr
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store ptr %a2, ptr %l2
  store i32 %a3, ptr %l3
  store %"compiler/source:Span" %a4, ptr %l4
  store i64 %a5, ptr %l5
  store i64 %a6, ptr %l6
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l5, !tbaa !24
  %t2 = load i64, ptr %l6, !tbaa !24
  %t5 = icmp eq i64 %t1, %t2
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load ptr, ptr %l2, !tbaa !29
  %t9 = getelementptr %"compiler/ast:TopIf", ptr %t7, i32 0, i32 1
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = icmp eq ptr %t10, null
  %t14 = xor i1 %t12, true
  store i1 %t14, ptr %l10, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l10, !tbaa !21
  br label %bb3
bb3:
  %t16 = load i1, ptr %l10, !tbaa !21
  br i1 %t16, label %bb4, label %bb5
bb4:
  %t17 = load ptr, ptr %l0, !tbaa !29
  store ptr %t17, ptr %l15, !tbaa !29
  %t18 = load i64, ptr %l1, !tbaa !24
  store i64 %t18, ptr %l16, !tbaa !24
  %t19 = load ptr, ptr %l2, !tbaa !29
  %t21 = getelementptr %"compiler/ast:TopIf", ptr %t19, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !29
  %t24 = icmp eq ptr %t22, null
  br i1 %t24, label %bb6, label %bb7
bb5:
  br label %bb10
bb6:
  call void @__olang_check_failed(ptr @olang_loc_3abf79bd2d930994_9d8386a02bbd2360)
  unreachable
bb7:
  br label %bb8
bb8:
  %t26 = load ptr, ptr %l2, !tbaa !29
  %t28 = getelementptr %"compiler/ast:TopIf", ptr %t26, i32 0, i32 1
  %t29 = load ptr, ptr %t28, !tbaa !29
  %t32 = getelementptr %"compiler/ast:TopBranch", ptr %t29, i32 0, i32 1
  %t33 = load { i64, ptr }, ptr %t32, !tbaa !27
  %t34 = load i32, ptr %l3, !tbaa !23
  %t35 = load %"compiler/source:Span", ptr %l4
  %t36 = load ptr, ptr %l15, !tbaa !29
  %t37 = load i64, ptr %l16, !tbaa !24
  %t41 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etopSetIn(ptr %v0, ptr %v1, ptr %v2, ptr %t36, i64 %t37, { i64, ptr } %t33, i32 %t34, %"compiler/source:Span" %t35, i1 true)
  store ptr %t41, ptr %l26
  br label %bb9
bb9:
  %t42 = load ptr, ptr %l26, !tbaa !29
  store ptr %t42, ptr %rv
  br label %ret
bb10:
  %t43 = load ptr, ptr %l2, !tbaa !29
  %t45 = getelementptr %"compiler/ast:TopIf", ptr %t43, i32 0, i32 2
  %t46 = load ptr, ptr %t45, !tbaa !29
  %t48 = icmp eq ptr %t46, null
  %t50 = xor i1 %t48, true
  br i1 %t50, label %bb11, label %bb12
bb11:
  %t52 = load ptr, ptr %l0, !tbaa !29
  store ptr %t52, ptr %l31, !tbaa !29
  %t53 = load i64, ptr %l1, !tbaa !24
  store i64 %t53, ptr %l32, !tbaa !24
  %t54 = load ptr, ptr %l2, !tbaa !29
  %t56 = getelementptr %"compiler/ast:TopIf", ptr %t54, i32 0, i32 2
  %t57 = load ptr, ptr %t56, !tbaa !29
  %t59 = icmp eq ptr %t57, null
  br i1 %t59, label %bb13, label %bb14
bb12:
  br label %bb17
bb13:
  call void @__olang_check_failed(ptr @olang_loc_f6b550b5113b54a3_3cc66520eb17207f)
  unreachable
bb14:
  br label %bb15
bb15:
  %t61 = load ptr, ptr %l2, !tbaa !29
  %t63 = getelementptr %"compiler/ast:TopIf", ptr %t61, i32 0, i32 2
  %t64 = load ptr, ptr %t63, !tbaa !29
  %t65 = load i32, ptr %l3, !tbaa !23
  %t66 = load %"compiler/source:Span", ptr %l4
  %t67 = load i64, ptr %l5, !tbaa !24
  %t68 = load i64, ptr %l6, !tbaa !24
  %t70 = add i64 %t68, 1
  %t71 = load ptr, ptr %l31, !tbaa !29
  %t72 = load i64, ptr %l32, !tbaa !24
  %t78 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etopSetChain(ptr %v0, ptr %v1, ptr %v2, ptr %t71, i64 %t72, ptr %t64, i32 %t65, %"compiler/source:Span" %t66, i64 %t67, i64 %t70)
  store ptr %t78, ptr %l43
  br label %bb16
bb16:
  %t79 = load ptr, ptr %l43, !tbaa !29
  store ptr %t79, ptr %rv
  br label %ret
bb17:
  %t80 = load ptr, ptr %l2, !tbaa !29
  %t82 = getelementptr %"compiler/ast:TopIf", ptr %t80, i32 0, i32 3
  %t83 = load ptr, ptr %t82, !tbaa !29
  %t85 = icmp eq ptr %t83, null
  %t87 = xor i1 %t85, true
  br i1 %t87, label %bb18, label %bb19
bb18:
  %t89 = load i64, ptr %l5, !tbaa !24
  %t90 = load i64, ptr %l6, !tbaa !24
  %t92 = add i64 %t90, 1
  %t95 = icmp eq i64 %t89, %t92
  store i1 %t95, ptr %l48, !tbaa !21
  br label %bb20
bb19:
  store i1 false, ptr %l48, !tbaa !21
  br label %bb20
bb20:
  %t97 = load i1, ptr %l48, !tbaa !21
  br i1 %t97, label %bb21, label %bb22
bb21:
  %t98 = load ptr, ptr %l0, !tbaa !29
  store ptr %t98, ptr %l53, !tbaa !29
  %t99 = load i64, ptr %l1, !tbaa !24
  store i64 %t99, ptr %l54, !tbaa !24
  %t100 = load ptr, ptr %l2, !tbaa !29
  %t102 = getelementptr %"compiler/ast:TopIf", ptr %t100, i32 0, i32 3
  %t103 = load ptr, ptr %t102, !tbaa !29
  %t105 = icmp eq ptr %t103, null
  br i1 %t105, label %bb23, label %bb24
bb22:
  br label %bb27
bb23:
  call void @__olang_check_failed(ptr @olang_loc_32bdab6b89cf3022_40afc1dcc9405bce)
  unreachable
bb24:
  br label %bb25
bb25:
  %t107 = load ptr, ptr %l2, !tbaa !29
  %t109 = getelementptr %"compiler/ast:TopIf", ptr %t107, i32 0, i32 3
  %t110 = load ptr, ptr %t109, !tbaa !29
  %t113 = getelementptr %"compiler/ast:TopBranch", ptr %t110, i32 0, i32 1
  %t114 = load { i64, ptr }, ptr %t113, !tbaa !27
  %t115 = load i32, ptr %l3, !tbaa !23
  %t116 = load %"compiler/source:Span", ptr %l4
  %t117 = load ptr, ptr %l53, !tbaa !29
  %t118 = load i64, ptr %l54, !tbaa !24
  %t122 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etopSetIn(ptr %v0, ptr %v1, ptr %v2, ptr %t117, i64 %t118, { i64, ptr } %t114, i32 %t115, %"compiler/source:Span" %t116, i1 true)
  store ptr %t122, ptr %l64
  br label %bb26
bb26:
  %t123 = load ptr, ptr %l64, !tbaa !29
  store ptr %t123, ptr %rv
  br label %ret
bb27:
  store ptr null, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euniqueRules(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca %"compiler/source:Span"
  %l8 = alloca { i64, ptr }
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca i64
  %l16 = alloca { i64, ptr }
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca ptr
  %l20 = alloca i32
  %l21 = alloca i64
  %l25 = alloca i32
  %l28 = alloca { i64, ptr }
  %l32 = alloca i64
  %l34 = alloca i64
  %l35 = alloca i32
  %l45 = alloca %"compiler/source:Span"
  %l48 = alloca { i64, ptr }
  %l50 = alloca i1
  %l52 = alloca ptr
  %l53 = alloca %"compiler/source:Span"
  %l55 = alloca %"compiler/diagmsg:Msg"
  %l56 = alloca i64
  %l59 = alloca i1
  %l60 = alloca ptr
  %l61 = alloca %"compiler/source:Span"
  %l62 = alloca %"compiler/diagmsg:Msg"
  %l63 = alloca i64
  %l65 = alloca i1
  %l66 = alloca i1
  %l70 = alloca i1
  %l71 = alloca ptr
  %l72 = alloca %"compiler/source:Span"
  %l75 = alloca { i64, ptr }
  %l77 = alloca %"compiler/diagmsg:Msg"
  %l78 = alloca i64
  %l81 = alloca ptr
  %l82 = alloca i1
  %l90 = alloca i1
  %l91 = alloca ptr
  %l92 = alloca i32
  %l94 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l100 = alloca i1
  %l105 = alloca i1
  %l110 = alloca i1
  %l112 = alloca i1
  %l116 = alloca i1
  %l118 = alloca ptr
  %l124 = alloca %"compiler/source:Span"
  %l128 = alloca { i64, ptr }
  %l129 = alloca %"compiler/diagmsg:Msg"
  %l130 = alloca i64
  %l131 = alloca ptr
  %l132 = alloca i1
  %l140 = alloca i1
  %l142 = alloca i1
  %l145 = alloca ptr
  %l150 = alloca i32
  %l151 = alloca { i64, ptr }
  %l154 = alloca i1
  %l158 = alloca i1
  %l167 = alloca { i64, ptr }
  %l178 = alloca { i64, ptr }
  %l182 = alloca ptr
  %l184 = alloca ptr
  %l189 = alloca i32
  %l192 = alloca i1
  %l193 = alloca i1
  %l197 = alloca i1
  %l199 = alloca ptr
  %l201 = alloca i32
  %l203 = alloca i32
  %l207 = alloca { i64, ptr }
  %l211 = alloca %"compiler/source:Span"
  %l214 = alloca { i64, ptr }
  %l215 = alloca { i64, ptr }
  %l218 = alloca { i64, ptr }
  %l220 = alloca %"compiler/diagmsg:Msg"
  %l221 = alloca i64
  %l226 = alloca ptr
  %l227 = alloca i1
  %l233 = alloca i1
  %l235 = alloca ptr
  %l240 = alloca i32
  %l241 = alloca i1
  %l242 = alloca i64
  %l244 = alloca i64
  %l245 = alloca i32
  %l246 = alloca ptr
  %l256 = alloca %"compiler/source:Span"
  %l257 = alloca %"compiler/diagmsg:Msg"
  %l258 = alloca i64
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %s19 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t8 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSelfType(ptr %v0, ptr %t4, i32 %a3)
  store i32 %t8, ptr %l25
  br label %bb1
bb1:
  %t9 = load i32, ptr %l25, !tbaa !23
  store i32 %t9, ptr %l4, !tbaa !23
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = load %"compiler/source:Span", ptr %l1
  %t14 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t10, %"compiler/source:Span" %t11)
  store { i64, ptr } %t14, ptr %l28
  br label %bb2
bb2:
  %t15 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t15, ptr %l5, !tbaa !27
  %t16 = load ptr, ptr %l2, !tbaa !29
  %t18 = getelementptr %"compiler/ast:TypeDecl", ptr %t16, i32 0, i32 5
  %t19 = load i32, ptr %t18, !range !{i32 0, i32 3}
  %t21 = trunc i64 2 to i32
  %t22 = icmp eq i32 %t19, %t21
  br i1 %t22, label %bb3, label %bb4
bb3:
  store %olang.scope zeroinitializer, ptr %s1
  %t24 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t26 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %s1, { i64, ptr } %t24, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d18, i32 0, i32 1) })
  %t27 = extractvalue { i32, i64 } %t26, 1
  %t28 = extractvalue { i32, i64 } %t26, 0
  store i32 %t28, ptr %l35
  %t29 = icmp ne i32 %t28, 0
  br i1 %t29, label %bb6, label %ok.30, !prof !99
ok.30:
  store i64 %t27, ptr %l34
  br label %bb5
bb4:
  br label %bb34
bb5:
  %t31 = load i64, ptr %l34, !tbaa !24
  store i64 %t31, ptr %l32, !tbaa !24
  br label %bb8
bb6:
  br label %bb7
bb7:
  store i64 0, ptr %l32, !tbaa !24
  br label %bb8
bb8:
  %t32 = load i64, ptr %l32, !tbaa !24
  store i64 %t32, ptr %l6, !tbaa !24
  %t33 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t34 = load i32, ptr %t33, !tbaa !23
  %t35 = load i64, ptr %l6, !tbaa !24
  %t37 = trunc i64 %t35 to i32
  %t40 = add i32 %t34, %t37
  %t41 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t42 = load i32, ptr %t41, !tbaa !23
  %t43 = load i64, ptr %l6, !tbaa !24
  %t45 = add i64 %t43, 6
  %t47 = trunc i64 %t45 to i32
  %t50 = add i32 %t42, %t47
  %t53 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s1, i32 %t40, i32 %t50)
  store %"compiler/source:Span" %t53, ptr %l45
  br label %bb9
bb9:
  %t54 = load %"compiler/source:Span", ptr %l45
  store %"compiler/source:Span" %t54, ptr %l7
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t56 = load ptr, ptr %l2, !tbaa !29
  %t59 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euniqueOn(ptr %v0, ptr %v1, ptr %s1, ptr %t55, ptr %t56)
  store { i64, ptr } %t59, ptr %l48
  br label %bb10
bb10:
  %t60 = load { i64, ptr }, ptr %l48, !tbaa !27
  store { i64, ptr } %t60, ptr %l8, !tbaa !27
  %t61 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t63 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s1, ptr %s1, { i64, ptr } %t61, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d19, i32 0, i32 1) })
  store i1 %t63, ptr %l50
  br label %bb11
bb11:
  %t64 = load i1, ptr %l50, !tbaa !21
  %t65 = xor i1 %t64, true
  br i1 %t65, label %bb12, label %bb13
bb12:
  store %olang.scope zeroinitializer, ptr %s2
  %t67 = load ptr, ptr %l0, !tbaa !29
  store ptr %t67, ptr %l52, !tbaa !29
  %t68 = load %"compiler/source:Span", ptr %l7
  store %"compiler/source:Span" %t68, ptr %l53
  %t69 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t71 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUniqueKind(ptr %s1, ptr %s2, { i64, ptr } %t69)
  store %"compiler/diagmsg:Msg" %t71, ptr %l55
  br label %bb14
bb13:
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t73 = load ptr, ptr %l2, !tbaa !29
  %t76 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eoverImmut(ptr %v0, ptr %v1, ptr %t72, ptr %t73)
  store i1 %t76, ptr %l59
  br label %bb16
bb14:
  %t77 = load ptr, ptr %l52, !tbaa !29
  %t78 = load %"compiler/source:Span", ptr %l53
  %t79 = load %"compiler/diagmsg:Msg", ptr %l55
  %t80 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s2, ptr %t77, %"compiler/source:Span" %t78, %"compiler/diagmsg:Msg" %t79)
  store i64 %t80, ptr %l56
  br label %bb15
bb15:
  call void @__olang_scope_close(ptr %s2)
  br label %bb22
bb16:
  %t81 = load i1, ptr %l59, !tbaa !21
  br i1 %t81, label %bb17, label %bb18
bb17:
  store %olang.scope zeroinitializer, ptr %s4
  %t82 = load ptr, ptr %l0, !tbaa !29
  store ptr %t82, ptr %l60, !tbaa !29
  %t83 = load %"compiler/source:Span", ptr %l7
  store %"compiler/source:Span" %t83, ptr %l61
  %t84 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUniqueImmut(ptr %s4)
  store %"compiler/diagmsg:Msg" %t84, ptr %l62
  br label %bb19
bb18:
  br label %bb21
bb19:
  %t85 = load ptr, ptr %l60, !tbaa !29
  %t86 = load %"compiler/source:Span", ptr %l61
  %t87 = load %"compiler/diagmsg:Msg", ptr %l62
  %t88 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s4, ptr %t85, %"compiler/source:Span" %t86, %"compiler/diagmsg:Msg" %t87)
  store i64 %t88, ptr %l63
  br label %bb20
bb20:
  call void @__olang_scope_close(ptr %s4)
  br label %bb21
bb21:
  br label %bb22
bb22:
  %t89 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t91 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s1, ptr %s1, { i64, ptr } %t89, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d20, i32 0, i32 1) })
  store i1 %t91, ptr %l65
  br label %bb23
bb23:
  %t92 = load i1, ptr %l65, !tbaa !21
  br i1 %t92, label %bb24, label %bb25
bb24:
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t95 = getelementptr %"compiler/check:Checker", ptr %t93, i32 0, i32 1
  %t96 = load ptr, ptr %t95, !tbaa !29
  %t97 = load i32, ptr %l4, !tbaa !23
  %t100 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eGenerational(ptr %v0, ptr %t96, i32 %t97)
  store i1 %t100, ptr %l70
  br label %bb26
bb25:
  store i1 false, ptr %l66, !tbaa !21
  br label %bb27
bb26:
  %t101 = load i1, ptr %l70, !tbaa !21
  store i1 %t101, ptr %l66, !tbaa !21
  br label %bb27
bb27:
  %t102 = load i1, ptr %l66, !tbaa !21
  br i1 %t102, label %bb28, label %bb29
bb28:
  store %olang.scope zeroinitializer, ptr %s5
  %t103 = load ptr, ptr %l0, !tbaa !29
  store ptr %t103, ptr %l71, !tbaa !29
  %t104 = load %"compiler/source:Span", ptr %l7
  store %"compiler/source:Span" %t104, ptr %l72
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t106 = load i32, ptr %l4, !tbaa !23
  %t109 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s5, ptr %t105, i32 %t106)
  store { i64, ptr } %t109, ptr %l75
  br label %bb30
bb29:
  br label %bb33
bb30:
  %t110 = load { i64, ptr }, ptr %l75, !tbaa !27
  %t111 = extractvalue { i64, ptr } %t110, 0
  %t112 = extractvalue { i64, ptr } %t110, 1
  %t113 = mul i64 %t111, 1
  %t114 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t113)
  call void @llvm.memcpy.p0.p0.i64(ptr %t114, ptr %t112, i64 %t113, i1 false)
  %t115 = insertvalue { i64, ptr } undef, i64 %t111, 0
  %t116 = insertvalue { i64, ptr } %t115, ptr %t114, 1
  %t118 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eGenUnique(ptr %s5, ptr %s5, { i64, ptr } %t116)
  store %"compiler/diagmsg:Msg" %t118, ptr %l77
  br label %bb31
bb31:
  %t119 = load ptr, ptr %l71, !tbaa !29
  %t120 = load %"compiler/source:Span", ptr %l72
  %t121 = load %"compiler/diagmsg:Msg", ptr %l77
  %t122 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s5, ptr %t119, %"compiler/source:Span" %t120, %"compiler/diagmsg:Msg" %t121)
  store i64 %t122, ptr %l78
  br label %bb32
bb32:
  call void @__olang_scope_close(ptr %s5)
  br label %bb33
bb33:
  call void @__olang_scope_close(ptr %s1)
  br label %bb34
bb34:
  %t123 = load ptr, ptr %l2, !tbaa !29
  %t125 = getelementptr %"compiler/ast:TypeDecl", ptr %t123, i32 0, i32 3
  %t126 = load ptr, ptr %t125, !tbaa !29
  store ptr %t126, ptr %l9, !tbaa !29
  %t128 = load ptr, ptr %l9, !tbaa !29
  store ptr %t128, ptr %l81, !tbaa !29
  store i1 false, ptr %l82, !tbaa !21
  %t129 = load ptr, ptr %l81, !tbaa !29
  %t130 = icmp ne ptr %t129, null
  br i1 %t130, label %bb35, label %bb36
bb35:
  %t132 = load ptr, ptr %l81, !tbaa !29
  %t133 = load i64, ptr %t132, !range !{i64 0, i64 5}
  %t135 = icmp eq i64 %t133, 0
  store i1 %t135, ptr %l82, !tbaa !21
  br label %bb36
bb36:
  %t136 = load i1, ptr %l82, !tbaa !21
  br i1 %t136, label %bb37, label %bb38
bb37:
  %t137 = load ptr, ptr %l9, !tbaa !29
  %t139 = getelementptr { i64, [6 x i64] }, ptr %t137, i32 0, i32 1
  %t140 = getelementptr { ptr }, ptr %t139, i32 0, i32 0
  %t141 = load ptr, ptr %t140
  store ptr %t141, ptr %l10, !tbaa !29
  br label %bb39
bb38:
  br label %bb64
bb39:
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t145 = getelementptr %"compiler/check:Checker", ptr %t143, i32 0, i32 1
  %t146 = load ptr, ptr %t145, !tbaa !29
  %t147 = load i32, ptr %l4, !tbaa !23
  %t150 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eImmut(ptr %v0, ptr %t146, i32 %t147)
  store i1 %t150, ptr %l90
  br label %bb40
bb40:
  %t151 = load i1, ptr %l90, !tbaa !21
  br i1 %t151, label %bb41, label %bb42
bb41:
  store %olang.scope zeroinitializer, ptr %s7
  %t152 = load ptr, ptr %l0, !tbaa !29
  store ptr %t152, ptr %l91, !tbaa !29
  %t153 = load i32, ptr %l4, !tbaa !23
  store i32 %t153, ptr %l92, !tbaa !23
  %t154 = load ptr, ptr %l10, !tbaa !29
  %t156 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2efieldSpans(ptr %v1, ptr %s7, ptr %t154)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t156, ptr %l94
  br label %bb43
bb42:
  br label %bb45
bb43:
  %t157 = load ptr, ptr %l91, !tbaa !29
  %t158 = load i32, ptr %l92, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eimmutHoldsUnique(ptr %v0, ptr %s7, ptr %t157, i32 %t158, ptr %l94)
  br label %bb44
bb44:
  call void @__olang_scope_close(ptr %s7)
  br label %bb45
bb45:
  %t160 = load ptr, ptr %l10, !tbaa !29
  %t162 = getelementptr %"compiler/ast:StructBody", ptr %t160, i32 0, i32 4
  %t163 = load { i64, ptr }, ptr %t162, !tbaa !27
  %t165 = extractvalue { i64, ptr } %t163, 0
  %t167 = icmp sgt i64 %t165, 0
  br i1 %t167, label %bb46, label %bb47
bb46:
  %t169 = load ptr, ptr %l2, !tbaa !29
  %t171 = getelementptr %"compiler/ast:TypeDecl", ptr %t169, i32 0, i32 5
  %t172 = load i32, ptr %t171, !range !{i32 0, i32 3}
  %t174 = trunc i64 2 to i32
  %t175 = icmp eq i32 %t172, %t174
  %t177 = xor i1 %t175, true
  store i1 %t177, ptr %l100, !tbaa !21
  br label %bb48
bb47:
  store i1 false, ptr %l100, !tbaa !21
  br label %bb48
bb48:
  %t179 = load i1, ptr %l100, !tbaa !21
  br i1 %t179, label %bb49, label %bb50
bb49:
  %t180 = load ptr, ptr %l0, !tbaa !29
  %t182 = getelementptr %"compiler/check:Checker", ptr %t180, i32 0, i32 1
  %t183 = load ptr, ptr %t182, !tbaa !29
  %t185 = getelementptr %"compiler/generic:Program", ptr %t183, i32 0, i32 2
  %t186 = load i32, ptr %l4, !tbaa !23
  %t189 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eEnds(ptr %v0, ptr %t185, i32 %t186)
  store i1 %t189, ptr %l110
  br label %bb51
bb50:
  store i1 false, ptr %l105, !tbaa !21
  br label %bb52
bb51:
  %t190 = load i1, ptr %l110, !tbaa !21
  %t191 = xor i1 %t190, true
  store i1 %t191, ptr %l105, !tbaa !21
  br label %bb52
bb52:
  %t193 = load i1, ptr %l105, !tbaa !21
  br i1 %t193, label %bb53, label %bb54
bb53:
  %t194 = load ptr, ptr %l0, !tbaa !29
  %t196 = getelementptr %"compiler/check:Checker", ptr %t194, i32 0, i32 1
  %t197 = load ptr, ptr %t196, !tbaa !29
  %t198 = load i32, ptr %l4, !tbaa !23
  %t201 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eGenerational(ptr %v0, ptr %t197, i32 %t198)
  store i1 %t201, ptr %l116
  br label %bb55
bb54:
  store i1 false, ptr %l112, !tbaa !21
  br label %bb56
bb55:
  %t202 = load i1, ptr %l116, !tbaa !21
  %t203 = xor i1 %t202, true
  store i1 %t203, ptr %l112, !tbaa !21
  br label %bb56
bb56:
  %t205 = load i1, ptr %l112, !tbaa !21
  br i1 %t205, label %bb57, label %bb58
bb57:
  store %olang.scope zeroinitializer, ptr %s8
  %t206 = load ptr, ptr %l0, !tbaa !29
  store ptr %t206, ptr %l118, !tbaa !29
  %t207 = load ptr, ptr %l10, !tbaa !29
  %t209 = getelementptr %"compiler/ast:StructBody", ptr %t207, i32 0, i32 3
  %t210 = getelementptr %"compiler/source:Span", ptr %t209, i32 0, i32 0
  %t211 = load i32, ptr %t210, !tbaa !23
  %t212 = load ptr, ptr %l10, !tbaa !29
  %t214 = getelementptr %"compiler/ast:StructBody", ptr %t212, i32 0, i32 3
  %t215 = getelementptr %"compiler/source:Span", ptr %t214, i32 0, i32 0
  %t216 = load i32, ptr %t215, !tbaa !23
  %t218 = add i32 %t216, 8
  %t221 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s8, i32 %t211, i32 %t218)
  store %"compiler/source:Span" %t221, ptr %l124
  br label %bb59
bb58:
  br label %bb63
bb59:
  %t222 = load ptr, ptr %l0, !tbaa !29
  %t223 = load ptr, ptr %l2, !tbaa !29
  %t225 = getelementptr %"compiler/ast:TypeDecl", ptr %t223, i32 0, i32 0
  %t226 = load i32, ptr %t225, !tbaa !23
  %t229 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t222, i32 %t226)
  store { i64, ptr } %t229, ptr %l128
  br label %bb60
bb60:
  %t230 = load { i64, ptr }, ptr %l128, !tbaa !27
  %t231 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDestructNotUnique(ptr %v0, ptr %s8, { i64, ptr } %t230)
  store %"compiler/diagmsg:Msg" %t231, ptr %l129
  br label %bb61
bb61:
  %t232 = load ptr, ptr %l118, !tbaa !29
  %t233 = load %"compiler/source:Span", ptr %l124
  %t234 = load %"compiler/diagmsg:Msg", ptr %l129
  %t235 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s8, ptr %t232, %"compiler/source:Span" %t233, %"compiler/diagmsg:Msg" %t234)
  store i64 %t235, ptr %l130
  br label %bb62
bb62:
  call void @__olang_scope_close(ptr %s8)
  br label %bb63
bb63:
  br label %bb137
bb64:
  %t236 = load ptr, ptr %l9, !tbaa !29
  store ptr %t236, ptr %l131, !tbaa !29
  store i1 false, ptr %l132, !tbaa !21
  %t237 = load ptr, ptr %l131, !tbaa !29
  %t238 = icmp ne ptr %t237, null
  br i1 %t238, label %bb65, label %bb66
bb65:
  %t240 = load ptr, ptr %l131, !tbaa !29
  %t241 = load i64, ptr %t240, !range !{i64 0, i64 5}
  %t243 = icmp eq i64 %t241, 1
  store i1 %t243, ptr %l132, !tbaa !21
  br label %bb66
bb66:
  %t244 = load i1, ptr %l132, !tbaa !21
  br i1 %t244, label %bb67, label %bb68
bb67:
  %t245 = load ptr, ptr %l9, !tbaa !29
  %t247 = getelementptr { i64, [6 x i64] }, ptr %t245, i32 0, i32 1
  %t248 = getelementptr { { i64, ptr }, ptr }, ptr %t247, i32 0, i32 0
  %t249 = load { i64, ptr }, ptr %t248
  store { i64, ptr } %t249, ptr %l11, !tbaa !27
  br label %bb69
bb68:
  br label %bb111
bb69:
  store %olang.scope zeroinitializer, ptr %s9
  %t251 = load ptr, ptr %l0, !tbaa !29
  %t253 = getelementptr %"compiler/check:Checker", ptr %t251, i32 0, i32 1
  %t254 = load ptr, ptr %t253, !tbaa !29
  %t255 = load i32, ptr %l4, !tbaa !23
  %t258 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eImmut(ptr %v0, ptr %t254, i32 %t255)
  store i1 %t258, ptr %l140
  br label %bb70
bb70:
  %t259 = load i1, ptr %l140, !tbaa !21
  %t260 = xor i1 %t259, true
  br i1 %t260, label %bb71, label %bb72
bb71:
  store i1 true, ptr %l142, !tbaa !21
  br label %bb75
bb72:
  %t262 = load ptr, ptr %l0, !tbaa !29
  %t264 = getelementptr %"compiler/check:Checker", ptr %t262, i32 0, i32 1
  %t265 = load ptr, ptr %t264, !tbaa !29
  %t267 = getelementptr %"compiler/generic:Program", ptr %t265, i32 0, i32 2
  store ptr %t267, ptr %l145, !tbaa !29
  %t268 = load ptr, ptr %l0, !tbaa !29
  %t270 = getelementptr %"compiler/check:Checker", ptr %t268, i32 0, i32 1
  %t271 = load ptr, ptr %t270, !tbaa !29
  %t273 = getelementptr %"compiler/generic:Program", ptr %t271, i32 0, i32 2
  %t274 = load i32, ptr %l4, !tbaa !23
  %t277 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %t273, i32 %t274)
  store i32 %t277, ptr %l150
  br label %bb73
bb73:
  %t278 = load ptr, ptr %l145, !tbaa !29
  %t279 = load i32, ptr %l150, !tbaa !23
  %t280 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s9, ptr %t278, i32 %t279)
  store { i64, ptr } %t280, ptr %l151
  br label %bb74
bb74:
  %t281 = load { i64, ptr }, ptr %l151, !tbaa !27
  %t282 = extractvalue { i64, ptr } %t281, 0
  %t284 = icmp sgt i64 %t282, 0
  store i1 %t284, ptr %l142, !tbaa !21
  br label %bb75
bb75:
  %t286 = load i1, ptr %l142, !tbaa !21
  br i1 %t286, label %bb76, label %bb77
bb76:
  store i1 true, ptr %l154, !tbaa !21
  br label %bb79
bb77:
  %t287 = load ptr, ptr %l0, !tbaa !29
  %t289 = getelementptr %"compiler/check:Checker", ptr %t287, i32 0, i32 1
  %t290 = load ptr, ptr %t289, !tbaa !29
  %t291 = load i32, ptr %l4, !tbaa !23
  %t294 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %t290, i32 %t291)
  store i1 %t294, ptr %l158
  br label %bb78
bb78:
  %t295 = load i1, ptr %l158, !tbaa !21
  %t296 = xor i1 %t295, true
  store i1 %t296, ptr %l154, !tbaa !21
  br label %bb79
bb79:
  %t298 = load i1, ptr %l154, !tbaa !21
  br i1 %t298, label %bb80, label %bb81
bb80:
  call void @__olang_scope_close(ptr %s9)
  br label %ret
bb81:
  br label %bb82
bb82:
  %t299 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t299, ptr %l12, !tbaa !27
  store i64 0, ptr %l13, !tbaa !24
  %t301 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t303 = extractvalue { i64, ptr } %t301, 0
  store i64 %t303, ptr %l14, !tbaa !24
  br label %bb83
bb83:
  %t305 = load i64, ptr %l13, !tbaa !24
  %t306 = load i64, ptr %l14, !tbaa !24
  %t309 = icmp slt i64 %t305, %t306
  %t311 = xor i1 %t309, true
  br i1 %t311, label %bb84, label %bb85
bb84:
  br label %bb110
bb85:
  br label %bb86
bb86:
  %t313 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t313, ptr %l167, !tbaa !27
  %t314 = load i64, ptr %l13, !tbaa !24
  %t316 = getelementptr { i64, ptr }, ptr %l167, i32 0, i32 1
  %t317 = load ptr, ptr %t316, !tbaa !27
  %t318 = getelementptr ptr, ptr %t317, i64 %t314
  %t319 = load ptr, ptr %t318, !tbaa !39
  %t323 = getelementptr %"compiler/ast:CaseDecl", ptr %t319, i32 0, i32 2
  %t324 = load { i64, ptr }, ptr %t323, !tbaa !27
  store { i64, ptr } %t324, ptr %l16, !tbaa !27
  store i64 0, ptr %l17, !tbaa !24
  %t326 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t328 = extractvalue { i64, ptr } %t326, 0
  store i64 %t328, ptr %l18, !tbaa !24
  br label %bb87
bb87:
  store %olang.scope zeroinitializer, ptr %s14
  %t330 = load i64, ptr %l17, !tbaa !24
  %t331 = load i64, ptr %l18, !tbaa !24
  %t334 = icmp slt i64 %t330, %t331
  %t336 = xor i1 %t334, true
  br i1 %t336, label %bb88, label %bb89
bb88:
  call void @__olang_scope_close(ptr %s14)
  br label %bb108
bb89:
  br label %bb90
bb90:
  %t338 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t338, ptr %l178, !tbaa !27
  %t339 = load i64, ptr %l17, !tbaa !24
  %t341 = getelementptr { i64, ptr }, ptr %l178, i32 0, i32 1
  %t342 = load ptr, ptr %t341, !tbaa !27
  %t343 = getelementptr ptr, ptr %t342, i64 %t339
  %t344 = load ptr, ptr %t343, !tbaa !39
  store ptr %t344, ptr %l19, !tbaa !29
  %t346 = load ptr, ptr %l0, !tbaa !29
  %t348 = getelementptr %"compiler/check:Checker", ptr %t346, i32 0, i32 1
  %t349 = load ptr, ptr %t348, !tbaa !29
  store ptr %t349, ptr %l182, !tbaa !29
  %t350 = load ptr, ptr %l0, !tbaa !29
  %t352 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t350)
  store ptr %t352, ptr %l184
  br label %bb91
bb91:
  %t353 = load ptr, ptr %l184, !tbaa !29
  %t355 = getelementptr %"compiler/check:frame", ptr %t353, i32 0, i32 4
  %t356 = load ptr, ptr %l19, !tbaa !29
  %t358 = getelementptr %"compiler/ast:Param", ptr %t356, i32 0, i32 2
  %t359 = load ptr, ptr %t358, !tbaa !29
  %t360 = load ptr, ptr %l182, !tbaa !29
  %t363 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %v0, ptr %v1, ptr %t360, ptr %t355, ptr %t359)
  store i32 %t363, ptr %l189
  br label %bb92
bb92:
  %t364 = load i32, ptr %l189, !tbaa !23
  store i32 %t364, ptr %l20, !tbaa !23
  %t365 = load ptr, ptr %l0, !tbaa !29
  %t366 = load i32, ptr %l20, !tbaa !23
  %t369 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t365, i32 %t366)
  store i1 %t369, ptr %l192
  br label %bb93
bb93:
  %t370 = load i1, ptr %l192, !tbaa !21
  br i1 %t370, label %bb94, label %bb95
bb94:
  store i1 true, ptr %l193, !tbaa !21
  br label %bb97
bb95:
  %t371 = load ptr, ptr %l0, !tbaa !29
  %t373 = getelementptr %"compiler/check:Checker", ptr %t371, i32 0, i32 1
  %t374 = load ptr, ptr %t373, !tbaa !29
  %t375 = load i32, ptr %l20, !tbaa !23
  %t378 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnique(ptr %v0, ptr %t374, i32 %t375)
  store i1 %t378, ptr %l197
  br label %bb96
bb96:
  %t379 = load i1, ptr %l197, !tbaa !21
  %t380 = xor i1 %t379, true
  store i1 %t380, ptr %l193, !tbaa !21
  br label %bb97
bb97:
  %t382 = load i1, ptr %l193, !tbaa !21
  br i1 %t382, label %bb98, label %bb99
bb98:
  call void @__olang_scope_close(ptr %s14)
  br label %bb107
bb99:
  br label %bb100
bb100:
  %t383 = load ptr, ptr %l0, !tbaa !29
  store ptr %t383, ptr %l199, !tbaa !29
  %t384 = load ptr, ptr %l19, !tbaa !29
  %t386 = getelementptr %"compiler/ast:Param", ptr %t384, i32 0, i32 0
  %t387 = getelementptr %"compiler/source:Span", ptr %t386, i32 0, i32 0
  %t388 = load i32, ptr %t387, !tbaa !23
  store i32 %t388, ptr %l201, !tbaa !23
  %t389 = load ptr, ptr %l19, !tbaa !29
  %t391 = getelementptr %"compiler/ast:Param", ptr %t389, i32 0, i32 0
  %t392 = getelementptr %"compiler/source:Span", ptr %t391, i32 0, i32 0
  %t393 = load i32, ptr %t392, !tbaa !23
  store i32 %t393, ptr %l203, !tbaa !23
  %t394 = load ptr, ptr %l0, !tbaa !29
  %t395 = load ptr, ptr %l19, !tbaa !29
  %t397 = getelementptr %"compiler/ast:Param", ptr %t395, i32 0, i32 1
  %t398 = load i32, ptr %t397, !tbaa !23
  %t401 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s14, ptr %t394, i32 %t398)
  store { i64, ptr } %t401, ptr %l207
  br label %bb101
bb101:
  %t402 = load { i64, ptr }, ptr %l207, !tbaa !27
  %t403 = extractvalue { i64, ptr } %t402, 0
  %t405 = trunc i64 %t403 to i32
  %t406 = load i32, ptr %l203, !tbaa !23
  %t408 = add i32 %t406, %t405
  %t409 = load i32, ptr %l201, !tbaa !23
  %t411 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s14, i32 %t409, i32 %t408)
  store %"compiler/source:Span" %t411, ptr %l211
  br label %bb102
bb102:
  %t412 = load ptr, ptr %l0, !tbaa !29
  %t413 = load i32, ptr %l4, !tbaa !23
  %t416 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s14, ptr %t412, i32 %t413)
  store { i64, ptr } %t416, ptr %l214
  br label %bb103
bb103:
  %t417 = load { i64, ptr }, ptr %l214, !tbaa !27
  %t418 = extractvalue { i64, ptr } %t417, 0
  %t419 = extractvalue { i64, ptr } %t417, 1
  %t420 = mul i64 %t418, 1
  %t421 = call ptr @__olang_scope_alloc(ptr %s14, i64 %t420)
  call void @llvm.memcpy.p0.p0.i64(ptr %t421, ptr %t419, i64 %t420, i1 false)
  %t422 = insertvalue { i64, ptr } undef, i64 %t418, 0
  %t423 = insertvalue { i64, ptr } %t422, ptr %t421, 1
  store { i64, ptr } %t423, ptr %l215, !tbaa !27
  %t424 = load ptr, ptr %l0, !tbaa !29
  %t425 = load i32, ptr %l20, !tbaa !23
  %t428 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s14, ptr %t424, i32 %t425)
  store { i64, ptr } %t428, ptr %l218
  br label %bb104
bb104:
  %t429 = load { i64, ptr }, ptr %l218, !tbaa !27
  %t430 = extractvalue { i64, ptr } %t429, 0
  %t431 = extractvalue { i64, ptr } %t429, 1
  %t432 = mul i64 %t430, 1
  %t433 = call ptr @__olang_scope_alloc(ptr %s14, i64 %t432)
  call void @llvm.memcpy.p0.p0.i64(ptr %t433, ptr %t431, i64 %t432, i1 false)
  %t434 = insertvalue { i64, ptr } undef, i64 %t430, 0
  %t435 = insertvalue { i64, ptr } %t434, ptr %t433, 1
  %t436 = load { i64, ptr }, ptr %l215, !tbaa !27
  %t438 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUniqueImmutPart(ptr %s14, ptr %s14, ptr %s14, { i64, ptr } %t436, { i64, ptr } %t435)
  store %"compiler/diagmsg:Msg" %t438, ptr %l220
  br label %bb105
bb105:
  %t439 = load ptr, ptr %l199, !tbaa !29
  %t440 = load %"compiler/source:Span", ptr %l211
  %t441 = load %"compiler/diagmsg:Msg", ptr %l220
  %t442 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s14, ptr %t439, %"compiler/source:Span" %t440, %"compiler/diagmsg:Msg" %t441)
  store i64 %t442, ptr %l221
  br label %bb106
bb106:
  call void @__olang_scope_close(ptr %s14)
  call void @__olang_scope_close(ptr %s9)
  br label %ret
bb107:
  %t443 = load i64, ptr %l17, !tbaa !24
  %t445 = add i64 %t443, 1
  store i64 %t445, ptr %l17, !tbaa !24
  br label %bb87
bb108:
  br label %bb109
bb109:
  %t447 = load i64, ptr %l13, !tbaa !24
  %t449 = add i64 %t447, 1
  store i64 %t449, ptr %l13, !tbaa !24
  br label %bb83
bb110:
  call void @__olang_scope_close(ptr %s9)
  br label %bb137
bb111:
  %t451 = load ptr, ptr %l9, !tbaa !29
  store ptr %t451, ptr %l226, !tbaa !29
  store i1 false, ptr %l227, !tbaa !21
  %t452 = load ptr, ptr %l226, !tbaa !29
  %t453 = icmp ne ptr %t452, null
  br i1 %t453, label %bb112, label %bb113
bb112:
  %t455 = load ptr, ptr %l226, !tbaa !29
  %t456 = load i64, ptr %t455, !range !{i64 0, i64 5}
  %t458 = icmp eq i64 %t456, 3
  store i1 %t458, ptr %l227, !tbaa !21
  br label %bb113
bb113:
  %t459 = load i1, ptr %l227, !tbaa !21
  br i1 %t459, label %bb114, label %bb115
bb114:
  br label %bb116
bb115:
  br label %bb132
bb116:
  %t460 = load ptr, ptr %l2, !tbaa !29
  %t462 = getelementptr %"compiler/ast:TypeDecl", ptr %t460, i32 0, i32 5
  %t463 = load i32, ptr %t462, !range !{i32 0, i32 3}
  %t465 = trunc i64 1 to i32
  %t466 = icmp eq i32 %t463, %t465
  br i1 %t466, label %bb117, label %bb118
bb117:
  %t468 = load ptr, ptr %l0, !tbaa !29
  %t470 = getelementptr %"compiler/check:Checker", ptr %t468, i32 0, i32 1
  %t471 = load ptr, ptr %t470, !tbaa !29
  store ptr %t471, ptr %l235, !tbaa !29
  %t472 = load ptr, ptr %l0, !tbaa !29
  %t474 = getelementptr %"compiler/check:Checker", ptr %t472, i32 0, i32 1
  %t475 = load ptr, ptr %t474, !tbaa !29
  %t477 = getelementptr %"compiler/generic:Program", ptr %t475, i32 0, i32 2
  %t478 = load i32, ptr %l4, !tbaa !23
  %t481 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %t477, i32 %t478)
  store i32 %t481, ptr %l240
  br label %bb119
bb118:
  store i1 false, ptr %l233, !tbaa !21
  br label %bb121
bb119:
  %t482 = load ptr, ptr %l235, !tbaa !29
  %t483 = load i32, ptr %l240, !tbaa !23
  %t484 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnique(ptr %v0, ptr %t482, i32 %t483)
  store i1 %t484, ptr %l241
  br label %bb120
bb120:
  %t485 = load i1, ptr %l241, !tbaa !21
  store i1 %t485, ptr %l233, !tbaa !21
  br label %bb121
bb121:
  %t486 = load i1, ptr %l233, !tbaa !21
  br i1 %t486, label %bb122, label %bb123
bb122:
  store %olang.scope zeroinitializer, ptr %s19
  %t487 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t489 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %s19, { i64, ptr } %t487, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d21, i32 0, i32 1) })
  %t490 = extractvalue { i32, i64 } %t489, 1
  %t491 = extractvalue { i32, i64 } %t489, 0
  store i32 %t491, ptr %l245
  %t492 = icmp ne i32 %t491, 0
  br i1 %t492, label %bb125, label %ok.493, !prof !99
ok.493:
  store i64 %t490, ptr %l244
  br label %bb124
bb123:
  br label %bb131
bb124:
  %t494 = load i64, ptr %l244, !tbaa !24
  store i64 %t494, ptr %l242, !tbaa !24
  br label %bb127
bb125:
  br label %bb126
bb126:
  store i64 0, ptr %l242, !tbaa !24
  br label %bb127
bb127:
  %t495 = load i64, ptr %l242, !tbaa !24
  store i64 %t495, ptr %l21, !tbaa !24
  %t496 = load ptr, ptr %l0, !tbaa !29
  store ptr %t496, ptr %l246, !tbaa !29
  %t497 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t498 = load i32, ptr %t497, !tbaa !23
  %t499 = load i64, ptr %l21, !tbaa !24
  %t501 = trunc i64 %t499 to i32
  %t504 = add i32 %t498, %t501
  %t505 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t506 = load i32, ptr %t505, !tbaa !23
  %t507 = load i64, ptr %l21, !tbaa !24
  %t509 = add i64 %t507, 5
  %t511 = trunc i64 %t509 to i32
  %t514 = add i32 %t506, %t511
  %t517 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s19, i32 %t504, i32 %t514)
  store %"compiler/source:Span" %t517, ptr %l256
  br label %bb128
bb128:
  %t518 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUniqueImmut(ptr %s19)
  store %"compiler/diagmsg:Msg" %t518, ptr %l257
  br label %bb129
bb129:
  %t519 = load ptr, ptr %l246, !tbaa !29
  %t520 = load %"compiler/source:Span", ptr %l256
  %t521 = load %"compiler/diagmsg:Msg", ptr %l257
  %t522 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s19, ptr %t519, %"compiler/source:Span" %t520, %"compiler/diagmsg:Msg" %t521)
  store i64 %t522, ptr %l258
  br label %bb130
bb130:
  call void @__olang_scope_close(ptr %s19)
  br label %bb131
bb131:
  br label %bb137
bb132:
  br i1 true, label %bb133, label %bb134
bb133:
  br label %bb135
bb134:
  br label %bb136
bb135:
  br label %bb137
bb136:
  call void @__olang_check_failed(ptr @olang_loc_70c8011105e0c36f_6781db067586194b)
  unreachable
bb137:
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalue(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, %"compiler/source:Span" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i32
  %l4 = alloca i32
  %l7 = alloca i32
  %l10 = alloca i1
  %l15 = alloca i32
  %l18 = alloca i1
  %l19 = alloca i1
  %l30 = alloca ptr
  %rv = alloca ptr
  %t41 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store %"compiler/source:Span" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t4 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t1)
  store i32 %t4, ptr %l7
  br label %bb1
bb1:
  %t5 = load i32, ptr %l7, !tbaa !23
  store i32 %t5, ptr %l3, !tbaa !23
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t7 = load i32, ptr %l3, !tbaa !23
  %t10 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t6, i32 %t7)
  store i1 %t10, ptr %l10
  br label %bb2
bb2:
  %t11 = load i1, ptr %l10, !tbaa !21
  br i1 %t11, label %bb3, label %bb4
bb3:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/check:Checker", ptr %t12, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t17 = getelementptr %"compiler/generic:Program", ptr %t15, i32 0, i32 2
  %t18 = load i32, ptr %l3, !tbaa !23
  %t21 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t17, i32 %t18)
  store i32 %t21, ptr %l15
  br label %bb5
bb4:
  br label %bb14
bb5:
  %t22 = load i32, ptr %l15, !tbaa !23
  store i32 %t22, ptr %l4, !tbaa !23
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load i32, ptr %l4, !tbaa !23
  %t27 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %t23, i32 %t24)
  store i1 %t27, ptr %l18
  br label %bb6
bb6:
  %t28 = load i1, ptr %l18, !tbaa !21
  br i1 %t28, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l19, !tbaa !21
  br label %bb9
bb8:
  %t29 = load i32, ptr %l4, !tbaa !23
  %t30 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t33 = icmp eq i32 %t29, %t30
  store i1 %t33, ptr %l19, !tbaa !21
  br label %bb9
bb9:
  %t35 = load i1, ptr %l19, !tbaa !21
  br i1 %t35, label %bb10, label %bb11
bb10:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t37 = load %"compiler/source:Span", ptr %l2
  %t38 = load %"compiler/source:Span", ptr %l2
  %t39 = load i32, ptr %l4, !tbaa !23
  %t40 = load ptr, ptr %l1, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t41
  %t42 = getelementptr { i64, [4 x i64] }, ptr %t41, i32 0, i32 0
  store i64 2, ptr %t42
  %t44 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t38, 0
  %t46 = insertvalue { %"compiler/source:Span", i32, ptr } %t44, i32 %t39, 1
  %t48 = insertvalue { %"compiler/source:Span", i32, ptr } %t46, ptr %t40, 2
  %t49 = getelementptr { i64, [4 x i64] }, ptr %t41, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t48, ptr %t49
  %t50 = load { i64, [4 x i64] }, ptr %t41
  %t52 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t50, ptr %t52
  %t56 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v2, ptr %v2, ptr %t36, %"compiler/source:Span" %t37, ptr %t52)
  store ptr %t56, ptr %l30
  br label %bb12
bb11:
  br label %bb13
bb12:
  %t57 = load ptr, ptr %l30, !tbaa !29
  store ptr %t57, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  %t58 = load ptr, ptr %l1, !tbaa !29
  store ptr %t58, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evarArg(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/check:litv"
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca i64
  %l9 = alloca i32
  %l13 = alloca %"compiler/check:litv"
  %l16 = alloca i32
  %l20 = alloca i32
  %l22 = alloca i32
  %l26 = alloca i32
  %l29 = alloca i1
  %l32 = alloca i32
  %l36 = alloca i32
  %l38 = alloca i32
  %l43 = alloca ptr
  %l48 = alloca ptr
  %l51 = alloca i32
  %l60 = alloca i32
  %l65 = alloca i32
  %l70 = alloca i1
  %l75 = alloca i64
  %l78 = alloca ptr
  %l80 = alloca %"compiler/source:Span"
  %l81 = alloca ptr
  %l85 = alloca i32
  %l86 = alloca ptr
  %l89 = alloca i1
  %l92 = alloca ptr
  %l95 = alloca %"compiler/source:Span"
  %l98 = alloca { i64, ptr }
  %l100 = alloca %"compiler/diagmsg:Msg"
  %l101 = alloca i64
  %l102 = alloca ptr
  %l104 = alloca %"compiler/source:Span"
  %l105 = alloca ptr
  %l108 = alloca i1
  %l111 = alloca i1
  %l114 = alloca ptr
  %l116 = alloca %"compiler/source:Span"
  %l117 = alloca ptr
  %l122 = alloca i1
  %l123 = alloca i32
  %l127 = alloca i32
  %l129 = alloca i32
  %l130 = alloca ptr
  %l134 = alloca ptr
  %l135 = alloca ptr
  %l137 = alloca %"compiler/source:Span"
  %l140 = alloca ptr
  %l146 = alloca i1
  %l150 = alloca ptr
  %l152 = alloca %"compiler/source:Span"
  %l153 = alloca ptr
  %l157 = alloca i32
  %l158 = alloca ptr
  %l162 = alloca ptr
  %l163 = alloca ptr
  %l165 = alloca %"compiler/source:Span"
  %l168 = alloca ptr
  %l172 = alloca i1
  %l173 = alloca i32
  %l178 = alloca i32
  %l182 = alloca i1
  %l183 = alloca i1
  %l186 = alloca ptr
  %l191 = alloca i32
  %l192 = alloca i32
  %l196 = alloca ptr
  %l199 = alloca %"compiler/source:Span"
  %l202 = alloca { i64, ptr }
  %l204 = alloca %"compiler/diagmsg:Msg"
  %l205 = alloca i64
  %l206 = alloca ptr
  %l208 = alloca %"compiler/source:Span"
  %l209 = alloca ptr
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t6 = call %"compiler/check:litv" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efold(ptr %v0, ptr %v1, ptr %t1, ptr %t2)
  store %"compiler/check:litv" %t6, ptr %l13
  br label %bb1
bb1:
  %t7 = load %"compiler/check:litv", ptr %l13
  store %"compiler/check:litv" %t7, ptr %l2
  %t8 = getelementptr %"compiler/check:litv", ptr %l2, i32 0, i32 0
  %t9 = load i1, ptr %t8, !tbaa !21
  br i1 %t9, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t11 = getelementptr %"compiler/check:litv", ptr %l2, i32 0, i32 1
  %t12 = load i1, ptr %t11, !tbaa !21
  br i1 %t12, label %bb4, label %bb5
bb3:
  br label %bb21
bb4:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/check:Checker", ptr %t14, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !29
  %t19 = getelementptr %"compiler/generic:Program", ptr %t17, i32 0, i32 2
  %t21 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s1, ptr %t19, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d22, i32 0, i32 1) })
  store i32 %t21, ptr %l20
  br label %bb6
bb5:
  %t22 = getelementptr %"compiler/check:litv", ptr %l2, i32 0, i32 2
  %t23 = load i1, ptr %t22, !tbaa !21
  br i1 %t23, label %bb7, label %bb8
bb6:
  %t25 = load i32, ptr %l20, !tbaa !23
  store i32 %t25, ptr %l16, !tbaa !23
  br label %bb19
bb7:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/check:Checker", ptr %t26, i32 0, i32 1
  %t29 = load ptr, ptr %t28, !tbaa !29
  %t31 = getelementptr %"compiler/generic:Program", ptr %t29, i32 0, i32 2
  %t33 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s1, ptr %t31, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d23, i32 0, i32 1) })
  store i32 %t33, ptr %l26
  br label %bb9
bb8:
  %t34 = getelementptr %"compiler/check:litv", ptr %l2, i32 0, i32 3
  %t35 = load i64, ptr %t34, !tbaa !24
  %t37 = icmp sge i64 %t35, -2147483648
  br i1 %t37, label %bb10, label %bb11
bb9:
  %t39 = load i32, ptr %l26, !tbaa !23
  store i32 %t39, ptr %l22, !tbaa !23
  br label %bb18
bb10:
  %t40 = getelementptr %"compiler/check:litv", ptr %l2, i32 0, i32 3
  %t41 = load i64, ptr %t40, !tbaa !24
  %t43 = icmp sle i64 %t41, 2147483647
  store i1 %t43, ptr %l29, !tbaa !21
  br label %bb12
bb11:
  store i1 false, ptr %l29, !tbaa !21
  br label %bb12
bb12:
  %t45 = load i1, ptr %l29, !tbaa !21
  br i1 %t45, label %bb13, label %bb14
bb13:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/check:Checker", ptr %t46, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !29
  %t51 = getelementptr %"compiler/generic:Program", ptr %t49, i32 0, i32 2
  %t53 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s1, ptr %t51, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d24, i32 0, i32 1) })
  store i32 %t53, ptr %l36
  br label %bb15
bb14:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t54)
  store i32 %t56, ptr %l38
  br label %bb16
bb15:
  %t57 = load i32, ptr %l36, !tbaa !23
  store i32 %t57, ptr %l32, !tbaa !23
  br label %bb17
bb16:
  %t58 = load i32, ptr %l38, !tbaa !23
  store i32 %t58, ptr %l32, !tbaa !23
  br label %bb17
bb17:
  %t59 = load i32, ptr %l32, !tbaa !23
  store i32 %t59, ptr %l22, !tbaa !23
  br label %bb18
bb18:
  %t60 = load i32, ptr %l22, !tbaa !23
  store i32 %t60, ptr %l16, !tbaa !23
  br label %bb19
bb19:
  %t61 = load i32, ptr %l16, !tbaa !23
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t63 = load ptr, ptr %l1, !tbaa !29
  %t69 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %t62, ptr %t63, i32 %t61)
  store ptr %t69, ptr %l43
  br label %bb20
bb20:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t70 = load ptr, ptr %l43, !tbaa !29
  store ptr %t70, ptr %rv
  br label %ret
bb21:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t72 = load ptr, ptr %l1, !tbaa !29
  %t74 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t78 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %t71, ptr %t72, i32 %t74)
  store ptr %t78, ptr %l48
  br label %bb22
bb22:
  %t79 = load ptr, ptr %l48, !tbaa !29
  store ptr %t79, ptr %l4, !tbaa !29
  %t80 = load ptr, ptr %l4, !tbaa !29
  %t83 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %t80)
  store i32 %t83, ptr %l51
  br label %bb23
bb23:
  %t84 = load i32, ptr %l51, !tbaa !23
  store i32 %t84, ptr %l5, !tbaa !23
  %t85 = load i32, ptr %l5, !tbaa !23
  %t86 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t89 = icmp eq i32 %t85, %t86
  br i1 %t89, label %bb24, label %bb25
bb24:
  %t91 = load ptr, ptr %l4, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t91, ptr %rv
  br label %ret
bb25:
  br label %bb26
bb26:
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t95 = getelementptr %"compiler/check:Checker", ptr %t93, i32 0, i32 1
  %t96 = load ptr, ptr %t95, !tbaa !29
  %t98 = getelementptr %"compiler/generic:Program", ptr %t96, i32 0, i32 2
  %t99 = load i32, ptr %l5, !tbaa !23
  %t102 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t98, i32 %t99)
  store i32 %t102, ptr %l60
  br label %bb27
bb27:
  %t103 = load i32, ptr %l60, !tbaa !23
  store i32 %t103, ptr %l6, !tbaa !23
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t106 = getelementptr %"compiler/check:Checker", ptr %t104, i32 0, i32 1
  %t107 = load ptr, ptr %t106, !tbaa !29
  %t109 = getelementptr %"compiler/generic:Program", ptr %t107, i32 0, i32 2
  %t110 = load i32, ptr %l6, !tbaa !23
  %t113 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t109, i32 %t110)
  store i32 %t113, ptr %l65
  br label %bb28
bb28:
  %t114 = load i32, ptr %l65, !range !{i32 0, i32 33}
  store i32 %t114, ptr %l7
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t117 = getelementptr %"compiler/check:Checker", ptr %t115, i32 0, i32 1
  %t118 = load ptr, ptr %t117, !tbaa !29
  %t120 = getelementptr %"compiler/generic:Program", ptr %t118, i32 0, i32 2
  %t121 = load i32, ptr %l6, !tbaa !23
  %t124 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %v0, ptr %t120, i32 %t121)
  store i1 %t124, ptr %l70
  br label %bb29
bb29:
  %t125 = load i1, ptr %l70, !tbaa !21
  br i1 %t125, label %bb30, label %bb31
bb30:
  %t126 = load ptr, ptr %l0, !tbaa !29
  %t128 = getelementptr %"compiler/check:Checker", ptr %t126, i32 0, i32 1
  %t129 = load ptr, ptr %t128, !tbaa !29
  %t131 = getelementptr %"compiler/generic:Program", ptr %t129, i32 0, i32 2
  %t132 = load i32, ptr %l6, !tbaa !23
  %t135 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %t131, i32 %t132)
  store i64 %t135, ptr %l75
  br label %bb32
bb31:
  br label %bb73
bb32:
  %t136 = load i64, ptr %l75, !tbaa !24
  store i64 %t136, ptr %l8, !tbaa !24
  %t137 = load i64, ptr %l8, !tbaa !24
  %t139 = icmp slt i64 %t137, 32
  br i1 %t139, label %bb33, label %bb34
bb33:
  store %olang.scope zeroinitializer, ptr %s4
  %t141 = load ptr, ptr %l0, !tbaa !29
  store ptr %t141, ptr %l78, !tbaa !29
  %t142 = load ptr, ptr %l1, !tbaa !29
  %t144 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t142)
  store %"compiler/source:Span" %t144, ptr %l80
  br label %bb35
bb34:
  br label %bb38
bb35:
  %t145 = load ptr, ptr %l4, !tbaa !29
  store ptr %t145, ptr %l81, !tbaa !29
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t148 = getelementptr %"compiler/check:Checker", ptr %t146, i32 0, i32 1
  %t149 = load ptr, ptr %t148, !tbaa !29
  %t151 = getelementptr %"compiler/generic:Program", ptr %t149, i32 0, i32 2
  %t153 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s4, ptr %t151, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d25, i32 0, i32 1) })
  store i32 %t153, ptr %l85
  br label %bb36
bb36:
  %t154 = load ptr, ptr %l78, !tbaa !29
  %t155 = load %"compiler/source:Span", ptr %l80
  %t156 = load ptr, ptr %l81, !tbaa !29
  %t157 = load i32, ptr %l85, !tbaa !23
  %t158 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econvert(ptr %v0, ptr %v2, ptr %v2, ptr %t154, %"compiler/source:Span" %t155, ptr %t156, i32 %t157)
  store ptr %t158, ptr %l86
  br label %bb37
bb37:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  %t159 = load ptr, ptr %l86, !tbaa !29
  store ptr %t159, ptr %rv
  br label %ret
bb38:
  %t160 = load i32, ptr %l7, !range !{i32 0, i32 33}
  %t162 = trunc i64 31 to i32
  %t163 = icmp eq i32 %t160, %t162
  br i1 %t163, label %bb39, label %bb40
bb39:
  %t165 = load i64, ptr %l8, !tbaa !24
  %t167 = icmp sgt i64 %t165, 64
  store i1 %t167, ptr %l89, !tbaa !21
  br label %bb41
bb40:
  store i1 false, ptr %l89, !tbaa !21
  br label %bb41
bb41:
  %t169 = load i1, ptr %l89, !tbaa !21
  br i1 %t169, label %bb42, label %bb43
bb42:
  store %olang.scope zeroinitializer, ptr %s5
  %t170 = load ptr, ptr %l0, !tbaa !29
  store ptr %t170, ptr %l92, !tbaa !29
  %t171 = load ptr, ptr %l0, !tbaa !29
  %t172 = load ptr, ptr %l1, !tbaa !29
  %t175 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eargSpan(ptr %v0, ptr %v1, ptr %t171, ptr %t172)
  store %"compiler/source:Span" %t175, ptr %l95
  br label %bb44
bb43:
  br label %bb50
bb44:
  %t176 = load ptr, ptr %l0, !tbaa !29
  %t177 = load i32, ptr %l5, !tbaa !23
  %t180 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s5, ptr %t176, i32 %t177)
  store { i64, ptr } %t180, ptr %l98
  br label %bb45
bb45:
  %t181 = load { i64, ptr }, ptr %l98, !tbaa !27
  %t182 = extractvalue { i64, ptr } %t181, 0
  %t183 = extractvalue { i64, ptr } %t181, 1
  %t184 = mul i64 %t182, 1
  %t185 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t184)
  call void @llvm.memcpy.p0.p0.i64(ptr %t185, ptr %t183, i64 %t184, i1 false)
  %t186 = insertvalue { i64, ptr } undef, i64 %t182, 0
  %t187 = insertvalue { i64, ptr } %t186, ptr %t185, 1
  %t189 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eVarArgWide(ptr %s5, ptr %s5, { i64, ptr } %t187)
  store %"compiler/diagmsg:Msg" %t189, ptr %l100
  br label %bb46
bb46:
  %t190 = load ptr, ptr %l92, !tbaa !29
  %t191 = load %"compiler/source:Span", ptr %l95
  %t192 = load %"compiler/diagmsg:Msg", ptr %l100
  %t193 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s5, ptr %t190, %"compiler/source:Span" %t191, %"compiler/diagmsg:Msg" %t192)
  store i64 %t193, ptr %l101
  br label %bb47
bb47:
  %t194 = load ptr, ptr %l0, !tbaa !29
  store ptr %t194, ptr %l102, !tbaa !29
  %t195 = load ptr, ptr %l1, !tbaa !29
  %t197 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t195)
  store %"compiler/source:Span" %t197, ptr %l104
  br label %bb48
bb48:
  %t198 = load ptr, ptr %l102, !tbaa !29
  %t199 = load %"compiler/source:Span", ptr %l104
  %t200 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t198, %"compiler/source:Span" %t199)
  store ptr %t200, ptr %l105
  br label %bb49
bb49:
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  %t201 = load ptr, ptr %l105, !tbaa !29
  store ptr %t201, ptr %rv
  br label %ret
bb50:
  %t202 = load i32, ptr %l7, !range !{i32 0, i32 33}
  %t204 = trunc i64 31 to i32
  %t205 = icmp eq i32 %t202, %t204
  br i1 %t205, label %bb51, label %bb52
bb51:
  %t207 = load i64, ptr %l8, !tbaa !24
  %t209 = icmp ne i64 %t207, 32
  store i1 %t209, ptr %l108, !tbaa !21
  br label %bb53
bb52:
  store i1 false, ptr %l108, !tbaa !21
  br label %bb53
bb53:
  %t211 = load i1, ptr %l108, !tbaa !21
  br i1 %t211, label %bb54, label %bb55
bb54:
  %t212 = load i64, ptr %l8, !tbaa !24
  %t214 = icmp ne i64 %t212, 64
  store i1 %t214, ptr %l111, !tbaa !21
  br label %bb56
bb55:
  store i1 false, ptr %l111, !tbaa !21
  br label %bb56
bb56:
  %t216 = load i1, ptr %l111, !tbaa !21
  br i1 %t216, label %bb57, label %bb58
bb57:
  store %olang.scope zeroinitializer, ptr %s6
  %t217 = load ptr, ptr %l0, !tbaa !29
  store ptr %t217, ptr %l114, !tbaa !29
  %t218 = load ptr, ptr %l1, !tbaa !29
  %t220 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t218)
  store %"compiler/source:Span" %t220, ptr %l116
  br label %bb59
bb58:
  br label %bb67
bb59:
  %t221 = load ptr, ptr %l4, !tbaa !29
  store ptr %t221, ptr %l117, !tbaa !29
  %t222 = load ptr, ptr %l0, !tbaa !29
  %t224 = getelementptr %"compiler/check:Checker", ptr %t222, i32 0, i32 1
  %t225 = load ptr, ptr %t224, !tbaa !29
  %t227 = getelementptr %"compiler/generic:Program", ptr %t225, i32 0, i32 2
  %t228 = load i32, ptr %l6, !tbaa !23
  %t231 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %t227, i32 %t228)
  store i1 %t231, ptr %l122
  br label %bb60
bb60:
  %t232 = load i1, ptr %l122, !tbaa !21
  br i1 %t232, label %bb61, label %bb62
bb61:
  %t233 = load ptr, ptr %l0, !tbaa !29
  %t235 = getelementptr %"compiler/check:Checker", ptr %t233, i32 0, i32 1
  %t236 = load ptr, ptr %t235, !tbaa !29
  %t238 = getelementptr %"compiler/generic:Program", ptr %t236, i32 0, i32 2
  %t240 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s6, ptr %t238, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d26, i32 0, i32 1) })
  store i32 %t240, ptr %l127
  br label %bb63
bb62:
  %t241 = load ptr, ptr %l0, !tbaa !29
  %t243 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t241)
  store i32 %t243, ptr %l129
  br label %bb64
bb63:
  %t244 = load i32, ptr %l127, !tbaa !23
  store i32 %t244, ptr %l123, !tbaa !23
  br label %bb65
bb64:
  %t245 = load i32, ptr %l129, !tbaa !23
  store i32 %t245, ptr %l123, !tbaa !23
  br label %bb65
bb65:
  %t246 = load ptr, ptr %l114, !tbaa !29
  %t247 = load %"compiler/source:Span", ptr %l116
  %t248 = load ptr, ptr %l117, !tbaa !29
  %t249 = load i32, ptr %l123, !tbaa !23
  %t250 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econvert(ptr %v0, ptr %v2, ptr %v2, ptr %t246, %"compiler/source:Span" %t247, ptr %t248, i32 %t249)
  store ptr %t250, ptr %l130
  br label %bb66
bb66:
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s0)
  %t251 = load ptr, ptr %l130, !tbaa !29
  store ptr %t251, ptr %rv
  br label %ret
bb67:
  %t252 = load i32, ptr %l6, !tbaa !23
  %t253 = load i32, ptr %l5, !tbaa !23
  %t256 = icmp ne i32 %t252, %t253
  br i1 %t256, label %bb68, label %bb69
bb68:
  %t258 = load ptr, ptr %l0, !tbaa !29
  store ptr %t258, ptr %l135, !tbaa !29
  %t259 = load ptr, ptr %l1, !tbaa !29
  %t261 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t259)
  store %"compiler/source:Span" %t261, ptr %l137
  br label %bb70
bb69:
  %t262 = load ptr, ptr %l4, !tbaa !29
  store ptr %t262, ptr %l134, !tbaa !29
  br label %bb72
bb70:
  %t264 = load ptr, ptr %l4, !tbaa !29
  %t265 = load i32, ptr %l6, !tbaa !23
  %t266 = load ptr, ptr %l135, !tbaa !29
  %t267 = load %"compiler/source:Span", ptr %l137
  %t270 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econvert(ptr %v0, ptr %v2, ptr %v2, ptr %t266, %"compiler/source:Span" %t267, ptr %t264, i32 %t265)
  store ptr %t270, ptr %l140
  br label %bb71
bb71:
  %t271 = load ptr, ptr %l140, !tbaa !29
  store ptr %t271, ptr %l134, !tbaa !29
  br label %bb72
bb72:
  call void @__olang_scope_close(ptr %s0)
  %t272 = load ptr, ptr %l134, !tbaa !29
  store ptr %t272, ptr %rv
  br label %ret
bb73:
  %t273 = load ptr, ptr %l0, !tbaa !29
  %t275 = getelementptr %"compiler/check:Checker", ptr %t273, i32 0, i32 1
  %t276 = load ptr, ptr %t275, !tbaa !29
  %t278 = getelementptr %"compiler/generic:Program", ptr %t276, i32 0, i32 2
  %t279 = load i32, ptr %l6, !tbaa !23
  %t282 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsFloat(ptr %v0, ptr %t278, i32 %t279)
  store i1 %t282, ptr %l146
  br label %bb74
bb74:
  %t283 = load i1, ptr %l146, !tbaa !21
  br i1 %t283, label %bb75, label %bb76
bb75:
  %t284 = load i32, ptr %l7, !range !{i32 0, i32 33}
  %t286 = trunc i64 14 to i32
  %t287 = icmp eq i32 %t284, %t286
  %t289 = xor i1 %t287, true
  br i1 %t289, label %bb77, label %bb78
bb76:
  br label %bb88
bb77:
  store %olang.scope zeroinitializer, ptr %s8
  %t291 = load ptr, ptr %l0, !tbaa !29
  store ptr %t291, ptr %l150, !tbaa !29
  %t292 = load ptr, ptr %l1, !tbaa !29
  %t294 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t292)
  store %"compiler/source:Span" %t294, ptr %l152
  br label %bb79
bb78:
  br label %bb82
bb79:
  %t295 = load ptr, ptr %l4, !tbaa !29
  store ptr %t295, ptr %l153, !tbaa !29
  %t296 = load ptr, ptr %l0, !tbaa !29
  %t298 = getelementptr %"compiler/check:Checker", ptr %t296, i32 0, i32 1
  %t299 = load ptr, ptr %t298, !tbaa !29
  %t301 = getelementptr %"compiler/generic:Program", ptr %t299, i32 0, i32 2
  %t303 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s8, ptr %t301, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d27, i32 0, i32 1) })
  store i32 %t303, ptr %l157
  br label %bb80
bb80:
  %t304 = load ptr, ptr %l150, !tbaa !29
  %t305 = load %"compiler/source:Span", ptr %l152
  %t306 = load ptr, ptr %l153, !tbaa !29
  %t307 = load i32, ptr %l157, !tbaa !23
  %t308 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econvert(ptr %v0, ptr %v2, ptr %v2, ptr %t304, %"compiler/source:Span" %t305, ptr %t306, i32 %t307)
  store ptr %t308, ptr %l158
  br label %bb81
bb81:
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s0)
  %t309 = load ptr, ptr %l158, !tbaa !29
  store ptr %t309, ptr %rv
  br label %ret
bb82:
  %t310 = load i32, ptr %l6, !tbaa !23
  %t311 = load i32, ptr %l5, !tbaa !23
  %t314 = icmp ne i32 %t310, %t311
  br i1 %t314, label %bb83, label %bb84
bb83:
  %t316 = load ptr, ptr %l0, !tbaa !29
  store ptr %t316, ptr %l163, !tbaa !29
  %t317 = load ptr, ptr %l1, !tbaa !29
  %t319 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t317)
  store %"compiler/source:Span" %t319, ptr %l165
  br label %bb85
bb84:
  %t320 = load ptr, ptr %l4, !tbaa !29
  store ptr %t320, ptr %l162, !tbaa !29
  br label %bb87
bb85:
  %t322 = load ptr, ptr %l4, !tbaa !29
  %t323 = load i32, ptr %l6, !tbaa !23
  %t324 = load ptr, ptr %l163, !tbaa !29
  %t325 = load %"compiler/source:Span", ptr %l165
  %t328 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econvert(ptr %v0, ptr %v2, ptr %v2, ptr %t324, %"compiler/source:Span" %t325, ptr %t322, i32 %t323)
  store ptr %t328, ptr %l168
  br label %bb86
bb86:
  %t329 = load ptr, ptr %l168, !tbaa !29
  store ptr %t329, ptr %l162, !tbaa !29
  br label %bb87
bb87:
  call void @__olang_scope_close(ptr %s0)
  %t330 = load ptr, ptr %l162, !tbaa !29
  store ptr %t330, ptr %rv
  br label %ret
bb88:
  %t331 = load ptr, ptr %l0, !tbaa !29
  %t332 = load i32, ptr %l6, !tbaa !23
  %t335 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t331, i32 %t332)
  store i1 %t335, ptr %l172
  br label %bb89
bb89:
  %t336 = load i1, ptr %l172, !tbaa !21
  br i1 %t336, label %bb90, label %bb91
bb90:
  %t337 = load ptr, ptr %l0, !tbaa !29
  %t339 = getelementptr %"compiler/check:Checker", ptr %t337, i32 0, i32 1
  %t340 = load ptr, ptr %t339, !tbaa !29
  %t342 = getelementptr %"compiler/generic:Program", ptr %t340, i32 0, i32 2
  %t343 = load i32, ptr %l6, !tbaa !23
  %t346 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t342, i32 %t343)
  store i32 %t346, ptr %l178
  br label %bb92
bb91:
  %t347 = load i32, ptr %l6, !tbaa !23
  store i32 %t347, ptr %l173, !tbaa !23
  br label %bb93
bb92:
  %t349 = load i32, ptr %l178, !tbaa !23
  store i32 %t349, ptr %l173, !tbaa !23
  br label %bb93
bb93:
  %t350 = load i32, ptr %l173, !tbaa !23
  store i32 %t350, ptr %l9, !tbaa !23
  %t351 = load ptr, ptr %l0, !tbaa !29
  %t352 = load i32, ptr %l6, !tbaa !23
  %t355 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t351, i32 %t352)
  store i1 %t355, ptr %l182
  br label %bb94
bb94:
  %t356 = load i1, ptr %l182, !tbaa !21
  br i1 %t356, label %bb95, label %bb96
bb95:
  store i1 true, ptr %l183, !tbaa !21
  br label %bb99
bb96:
  %t357 = load ptr, ptr %l0, !tbaa !29
  %t359 = getelementptr %"compiler/check:Checker", ptr %t357, i32 0, i32 1
  %t360 = load ptr, ptr %t359, !tbaa !29
  %t362 = getelementptr %"compiler/generic:Program", ptr %t360, i32 0, i32 2
  store ptr %t362, ptr %l186, !tbaa !29
  %t363 = load ptr, ptr %l0, !tbaa !29
  %t365 = getelementptr %"compiler/check:Checker", ptr %t363, i32 0, i32 1
  %t366 = load ptr, ptr %t365, !tbaa !29
  %t368 = getelementptr %"compiler/generic:Program", ptr %t366, i32 0, i32 2
  %t369 = load i32, ptr %l9, !tbaa !23
  %t372 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t368, i32 %t369)
  store i32 %t372, ptr %l191
  br label %bb97
bb97:
  %t373 = load ptr, ptr %l186, !tbaa !29
  %t374 = load i32, ptr %l191, !tbaa !23
  %t375 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t373, i32 %t374)
  store i32 %t375, ptr %l192
  br label %bb98
bb98:
  %t376 = load i32, ptr %l192, !range !{i32 0, i32 33}
  %t378 = trunc i64 19 to i32
  %t379 = icmp eq i32 %t376, %t378
  store i1 %t379, ptr %l183, !tbaa !21
  br label %bb99
bb99:
  %t381 = load i1, ptr %l183, !tbaa !21
  br i1 %t381, label %bb100, label %bb101
bb100:
  %t382 = load ptr, ptr %l4, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t382, ptr %rv
  br label %ret
bb101:
  br label %bb102
bb102:
  %t384 = load ptr, ptr %l0, !tbaa !29
  store ptr %t384, ptr %l196, !tbaa !29
  %t385 = load ptr, ptr %l0, !tbaa !29
  %t386 = load ptr, ptr %l1, !tbaa !29
  %t389 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eargSpan(ptr %v0, ptr %v1, ptr %t385, ptr %t386)
  store %"compiler/source:Span" %t389, ptr %l199
  br label %bb103
bb103:
  %t390 = load ptr, ptr %l0, !tbaa !29
  %t391 = load i32, ptr %l5, !tbaa !23
  %t394 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s0, ptr %t390, i32 %t391)
  store { i64, ptr } %t394, ptr %l202
  br label %bb104
bb104:
  %t395 = load { i64, ptr }, ptr %l202, !tbaa !27
  %t396 = extractvalue { i64, ptr } %t395, 0
  %t397 = extractvalue { i64, ptr } %t395, 1
  %t398 = mul i64 %t396, 1
  %t399 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t398)
  call void @llvm.memcpy.p0.p0.i64(ptr %t399, ptr %t397, i64 %t398, i1 false)
  %t400 = insertvalue { i64, ptr } undef, i64 %t396, 0
  %t401 = insertvalue { i64, ptr } %t400, ptr %t399, 1
  %t403 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eVarArgType(ptr %s0, ptr %s0, { i64, ptr } %t401)
  store %"compiler/diagmsg:Msg" %t403, ptr %l204
  br label %bb105
bb105:
  %t404 = load ptr, ptr %l196, !tbaa !29
  %t405 = load %"compiler/source:Span", ptr %l199
  %t406 = load %"compiler/diagmsg:Msg", ptr %l204
  %t407 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s0, ptr %t404, %"compiler/source:Span" %t405, %"compiler/diagmsg:Msg" %t406)
  store i64 %t407, ptr %l205
  br label %bb106
bb106:
  %t408 = load ptr, ptr %l0, !tbaa !29
  store ptr %t408, ptr %l206, !tbaa !29
  %t409 = load ptr, ptr %l1, !tbaa !29
  %t411 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t409)
  store %"compiler/source:Span" %t411, ptr %l208
  br label %bb107
bb107:
  %t412 = load ptr, ptr %l206, !tbaa !29
  %t413 = load %"compiler/source:Span", ptr %l208
  %t414 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t412, %"compiler/source:Span" %t413)
  store ptr %t414, ptr %l209
  br label %bb108
bb108:
  call void @__olang_scope_close(ptr %s0)
  %t415 = load ptr, ptr %l209, !tbaa !29
  store ptr %t415, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewakeThunks(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i1
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca { i64, [2 x i64] }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca i64
  %l11 = alloca i64
  %l17 = alloca i64
  %l21 = alloca ptr
  %l29 = alloca ptr
  %l31 = alloca ptr
  %l36 = alloca %"compiler/generic:AnyTable"
  %l39 = alloca i64
  %l40 = alloca i1
  %l44 = alloca ptr
  %l46 = alloca ptr
  %l47 = alloca i64
  %l58 = alloca %"compiler/typed:Body"
  %l69 = alloca i32
  %s2 = alloca %olang.scope
  %rv = alloca i1
  %t106 = alloca %"compiler/typed:Body", align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i1 false, ptr %l1, !tbaa !21
  store i64 0, ptr %l2, !tbaa !24
  br label %bb1
bb1:
  %t1 = load i64, ptr %l2, !tbaa !24
  store i64 %t1, ptr %l8, !tbaa !24
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"compiler/check:Checker", ptr %t2, i32 0, i32 157
  %t6 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t4)
  store i64 %t6, ptr %l11
  br label %bb2
bb2:
  %t7 = load i64, ptr %l8, !tbaa !24
  %t8 = load i64, ptr %l11, !tbaa !24
  %t9 = icmp slt i64 %t7, %t8
  %t11 = xor i1 %t9, true
  br i1 %t11, label %bb3, label %bb4
bb3:
  br label %bb38
bb4:
  br label %bb5
bb5:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/check:Checker", ptr %t13, i32 0, i32 157
  %t16 = load i64, ptr %l2, !tbaa !24
  %t19 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t15, i64 %t16)
  store i64 %t19, ptr %l17
  br label %bb6
bb6:
  %t20 = load i64, ptr %l17, !tbaa !24
  store i64 %t20, ptr %l3, !tbaa !24
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/check:Checker", ptr %t21, i32 0, i32 14
  %t24 = load i64, ptr %l3, !tbaa !24
  %t27 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t23, i64 %t24)
  store ptr %t27, ptr %l21
  br label %bb7
bb7:
  %t28 = load ptr, ptr %l21, !tbaa !29
  %t30 = getelementptr %"compiler/typed:Body", ptr %t28, i32 0, i32 1
  %t31 = load { i64, [2 x i64] }, ptr %t30
  store { i64, [2 x i64] } %t31, ptr %l4
  %t33 = load { i64, [2 x i64] }, ptr %l4
  %t35 = extractvalue { i64, [2 x i64] } %t33, 0
  %t36 = icmp eq i64 %t35, 9
  br i1 %t36, label %bb8, label %bb9
bb8:
  %t38 = getelementptr { i64, [2 x i64] }, ptr %l4, i32 0, i32 1
  %t39 = getelementptr { i64, i64 }, ptr %t38, i32 0, i32 0
  %t40 = load i64, ptr %t39
  store i64 %t40, ptr %l5, !tbaa !24
  %t42 = getelementptr { i64, [2 x i64] }, ptr %l4, i32 0, i32 1
  %t43 = getelementptr { i64, i64 }, ptr %t42, i32 0, i32 1
  %t44 = load i64, ptr %t43
  store i64 %t44, ptr %l6, !tbaa !24
  br label %bb10
bb9:
  br label %bb31
bb10:
  store %olang.scope zeroinitializer, ptr %s2
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/check:Checker", ptr %t46, i32 0, i32 156
  store ptr %t48, ptr %l29, !tbaa !29
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/check:Checker", ptr %t49, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !29
  store ptr %t52, ptr %l31, !tbaa !29
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/check:Checker", ptr %t53, i32 0, i32 1
  %t56 = load ptr, ptr %t55, !tbaa !29
  %t58 = getelementptr %"compiler/generic:Program", ptr %t56, i32 0, i32 61
  %t59 = load i64, ptr %l5, !tbaa !24
  %t62 = call %"compiler/generic:AnyTable" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3aAnyTable_3e_2eAt__He9601a52fe5cfa5abe1b41d520aed001(ptr %v0, ptr %s2, ptr %t58, i64 %t59)
  store %"compiler/generic:AnyTable" %t62, ptr %l36
  br label %bb11
bb11:
  %t63 = getelementptr %"compiler/generic:AnyTable", ptr %l36, i32 0, i32 1
  %t64 = load i32, ptr %t63, !tbaa !23
  %t65 = load i64, ptr %l6, !tbaa !24
  %t66 = load ptr, ptr %l31, !tbaa !29
  %t69 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSlotKey(ptr %v0, ptr %t66, i32 %t64, i64 %t65)
  store i64 %t69, ptr %l39
  br label %bb12
bb12:
  %t70 = load ptr, ptr %l29, !tbaa !29
  %t71 = load i64, ptr %l39, !tbaa !24
  %t72 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fdiag_3aWhere_3e_2e_Had7920a3eff3220b2e12299d961f9124(ptr %v0, ptr %t70, i64 %t71)
  store i1 %t72, ptr %l40
  br label %bb13
bb13:
  %t73 = load i1, ptr %l40, !tbaa !21
  br i1 %t73, label %bb14, label %bb15
bb14:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr %"compiler/check:Checker", ptr %t74, i32 0, i32 14
  %t77 = load i64, ptr %l3, !tbaa !24
  %t80 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t76, i64 %t77)
  store ptr %t80, ptr %l44
  br label %bb16
bb15:
  br label %bb30
bb16:
  %t81 = load ptr, ptr %l44, !tbaa !29
  store ptr %t81, ptr %l7, !tbaa !29
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t84 = getelementptr %"compiler/check:Checker", ptr %t82, i32 0, i32 14
  store ptr %t84, ptr %l46, !tbaa !29
  %t85 = load i64, ptr %l3, !tbaa !24
  store i64 %t85, ptr %l47, !tbaa !24
  %t86 = load ptr, ptr %l7, !tbaa !29
  %t88 = getelementptr %"compiler/typed:Body", ptr %t86, i32 0, i32 0
  %t89 = load i32, ptr %t88, !tbaa !23
  %t90 = load ptr, ptr %l7, !tbaa !29
  %t92 = getelementptr %"compiler/typed:Body", ptr %t90, i32 0, i32 1
  %t93 = load { i64, [2 x i64] }, ptr %t92
  %t94 = load ptr, ptr %l7, !tbaa !29
  %t96 = getelementptr %"compiler/typed:Body", ptr %t94, i32 0, i32 2
  %t97 = load i32, ptr %t96, !tbaa !23
  %t98 = load ptr, ptr %l7, !tbaa !29
  %t100 = getelementptr %"compiler/typed:Body", ptr %t98, i32 0, i32 3
  %t101 = load i64, ptr %t100, !tbaa !24
  %t102 = load ptr, ptr %l7, !tbaa !29
  %t104 = getelementptr %"compiler/typed:Body", ptr %t102, i32 0, i32 4
  %t105 = load %"compiler/source:Span", ptr %t104
  call void @compiler_2ftyped_3aBody_2ector(ptr %t106, ptr %v0, i32 %t89, { i64, [2 x i64] } %t93, i32 %t97, i64 %t101, %"compiler/source:Span" %t105)
  call void @llvm.memmove.p0.p0.i64(ptr %l58, ptr %t106, i64 408, i1 false)
  br label %bb17
bb17:
  %t112 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 408, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t112, ptr %l58, i64 408, i1 false)
  %t113 = load ptr, ptr %l46, !tbaa !29
  %t114 = load i64, ptr %l47, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_H84397c9e89cd48160670049091ea20f1(ptr %v0, ptr %v0, ptr %t113, i64 %t114, ptr %t112)
  br label %bb18
bb18:
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t118 = getelementptr %"compiler/check:Checker", ptr %t116, i32 0, i32 19
  %t119 = load i64, ptr %l3, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t118, i64 %t119, i64 0)
  br label %bb19
bb19:
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t124 = getelementptr %"compiler/check:Checker", ptr %t122, i32 0, i32 17
  %t125 = load i64, ptr %l3, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t124, i64 %t125)
  br label %bb20
bb20:
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t130 = getelementptr %"compiler/check:Checker", ptr %t128, i32 0, i32 157
  %t131 = load i64, ptr %l2, !tbaa !24
  %t134 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eRemoveAt_3cI64_3e(ptr %v0, ptr %t130, i64 %t131)
  store i32 %t134, ptr %l69
  %t135 = icmp ne i32 %t134, 0
  br i1 %t135, label %bb22, label %ok.136, !prof !99
ok.136:
  br label %bb21
bb21:
  br label %bb29
bb22:
  %t137 = load i32, ptr %l69, !tbaa !23
  %t138 = icmp eq i32 %t137, 65536
  br i1 %t138, label %bb23, label %bb24
bb23:
  call void @__olang_bang_failed_plain(ptr @olang_loc_73788fcff98f9805_b41ea2f3f6de2ed1)
  unreachable
bb24:
  %t140 = load i32, ptr %l69, !tbaa !23
  %t141 = icmp eq i32 %t140, 65537
  br i1 %t141, label %bb25, label %bb26
bb25:
  call void @__olang_bang_failed_plain(ptr @olang_loc_c2b8ccded0b87422_4b497586bdf0fd3e)
  unreachable
bb26:
  %t143 = load i32, ptr %l69, !tbaa !23
  %t144 = icmp eq i32 %t143, 65538
  br i1 %t144, label %bb27, label %bb28
bb27:
  call void @__olang_bang_failed_plain(ptr @olang_loc_c457ecfc87e57822_ebd31f6668a566ee)
  unreachable
bb28:
  call void @__olang_bang_failed_plain(ptr @olang_loc_c596147ee3c3620c_9098292257d7bbb8)
  unreachable
bb29:
  store i1 true, ptr %l1, !tbaa !21
  call void @__olang_scope_close(ptr %s2)
  br label %bb37
bb30:
  call void @__olang_scope_close(ptr %s2)
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
  call void @__olang_check_failed(ptr @olang_loc_cde66c6c8e102014_3203f82d8b2f03c0)
  unreachable
bb36:
  %t146 = load i64, ptr %l2, !tbaa !24
  %t148 = add i64 %t146, 1
  store i64 %t148, ptr %l2, !tbaa !24
  br label %bb37
bb37:
  br label %bb1
bb38:
  %t150 = load i1, ptr %l1, !tbaa !21
  store i1 %t150, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eweakFresh(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i32
  %l6 = alloca ptr
  %l7 = alloca i1
  %l15 = alloca ptr
  %l16 = alloca ptr
  %l18 = alloca i32
  %l19 = alloca i32
  %l21 = alloca i1
  %l25 = alloca i32
  %l29 = alloca ptr
  %l31 = alloca %"compiler/source:Span"
  %l34 = alloca { i64, ptr }
  %l36 = alloca %"compiler/diagmsg:Msg"
  %l37 = alloca i64
  %s3 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l6, !tbaa !29
  store i1 false, ptr %l7, !tbaa !21
  %t2 = load ptr, ptr %l6, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l6, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 3
  store i1 %t8, ptr %l7, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l7, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l3, !tbaa !29
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [4 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t18, i32 0, i32 3
  %t20 = load i64, ptr %t19
  store i64 %t20, ptr %l4, !tbaa !24
  br label %bb5
bb4:
  br label %bb20
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/check:Checker", ptr %t22, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !29
  store ptr %t25, ptr %l15, !tbaa !29
  %t26 = load ptr, ptr %l0, !tbaa !29
  store ptr %t26, ptr %l16, !tbaa !29
  %t27 = load ptr, ptr %l3, !tbaa !29
  %t29 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t27)
  store i32 %t29, ptr %l18
  br label %bb6
bb6:
  %t30 = load ptr, ptr %l16, !tbaa !29
  %t31 = load i32, ptr %l18, !tbaa !23
  %t32 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t30, i32 %t31)
  store i32 %t32, ptr %l19
  br label %bb7
bb7:
  %t33 = load i64, ptr %l4, !tbaa !24
  %t34 = load ptr, ptr %l15, !tbaa !29
  %t35 = load i32, ptr %l19, !tbaa !23
  %t37 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eWeakField(ptr %v0, ptr %t34, i32 %t35, i64 %t33)
  store i1 %t37, ptr %l21
  br label %bb8
bb8:
  %t38 = load i1, ptr %l21, !tbaa !21
  %t39 = xor i1 %t38, true
  br i1 %t39, label %bb9, label %bb10
bb9:
  br label %ret
bb10:
  br label %bb11
bb11:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t42 = load ptr, ptr %l2, !tbaa !29
  %t45 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enewInstance(ptr %v0, ptr %v2, ptr %t41, ptr %t42)
  store i32 %t45, ptr %l25
  br label %bb12
bb12:
  %t46 = load i32, ptr %l25, !tbaa !23
  store i32 %t46, ptr %l5, !tbaa !23
  %t47 = load i32, ptr %l5, !tbaa !23
  %t48 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t51 = icmp ne i32 %t47, %t48
  br i1 %t51, label %bb13, label %bb14
bb13:
  store %olang.scope zeroinitializer, ptr %s3
  %t53 = load ptr, ptr %l0, !tbaa !29
  store ptr %t53, ptr %l29, !tbaa !29
  %t54 = load ptr, ptr %l2, !tbaa !29
  %t56 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %t54)
  store %"compiler/source:Span" %t56, ptr %l31
  br label %bb15
bb14:
  br label %bb19
bb15:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t58 = load i32, ptr %l5, !tbaa !23
  %t61 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s3, ptr %t57, i32 %t58)
  store { i64, ptr } %t61, ptr %l34
  br label %bb16
bb16:
  %t62 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t63 = extractvalue { i64, ptr } %t62, 0
  %t64 = extractvalue { i64, ptr } %t62, 1
  %t65 = mul i64 %t63, 1
  %t66 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t65)
  call void @llvm.memcpy.p0.p0.i64(ptr %t66, ptr %t64, i64 %t65, i1 false)
  %t67 = insertvalue { i64, ptr } undef, i64 %t63, 0
  %t68 = insertvalue { i64, ptr } %t67, ptr %t66, 1
  %t70 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eWeakFresh(ptr %s3, ptr %s3, { i64, ptr } %t68)
  store %"compiler/diagmsg:Msg" %t70, ptr %l36
  br label %bb17
bb17:
  %t71 = load ptr, ptr %l29, !tbaa !29
  %t72 = load %"compiler/source:Span", ptr %l31
  %t73 = load %"compiler/diagmsg:Msg", ptr %l36
  %t74 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s3, ptr %t71, %"compiler/source:Span" %t72, %"compiler/diagmsg:Msg" %t73)
  store i64 %t74, ptr %l37
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s3)
  br label %bb19
bb19:
  br label %bb25
bb20:
  br i1 true, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb24
bb23:
  br label %bb25
bb24:
  call void @__olang_check_failed(ptr @olang_loc_66d123f9d043212d_a02c798f90017b81)
  unreachable
bb25:
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eweakTargetWhat(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca i1
  %l8 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca { i64, ptr }
  %l12 = alloca ptr
  %l13 = alloca i1
  %l16 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l18 = alloca i64
  %l19 = alloca { i64, ptr }
  %l22 = alloca i1
  %l23 = alloca { i64, ptr }
  %l24 = alloca { i64, ptr }
  %l25 = alloca i64
  %l26 = alloca { i64, ptr }
  %l28 = alloca ptr
  %l30 = alloca ptr
  %l35 = alloca i32
  %l39 = alloca i1
  %l42 = alloca i1
  %l43 = alloca i1
  %l46 = alloca i1
  %l47 = alloca { i64, ptr }
  %l48 = alloca { i64, ptr }
  %l49 = alloca i64
  %l50 = alloca { i64, ptr }
  %l55 = alloca i32
  %l56 = alloca { i64, ptr }
  %l59 = alloca { i64, ptr }
  %l63 = alloca { i64, ptr }
  %l67 = alloca { i64, ptr }
  %l69 = alloca { i64, ptr }
  %l71 = alloca i64
  %l72 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
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
  %t8 = icmp eq i64 %t6, 1
  store i1 %t8, ptr %l5, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l5, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb6
bb5:
  store { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d28, i32 0, i32 1) }, ptr %l8, !tbaa !27
  %t10 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t10, ptr %l9, !tbaa !27
  %t11 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t11, 0
  store i64 %t12, ptr %l10, !tbaa !24
  %t13 = load i64, ptr %l10, !tbaa !24
  %t14 = mul i64 %t13, 1
  %t15 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t14)
  %t16 = insertvalue { i64, ptr } undef, i64 %t13, 0
  %t17 = insertvalue { i64, ptr } %t16, ptr %t15, 1
  store { i64, ptr } %t17, ptr %l11, !tbaa !27
  %t18 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !27
  %t22 = load i64, ptr %l10, !tbaa !24
  %t23 = mul i64 %t22, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t19, ptr %t21, i64 %t23, i1 false)
  %t24 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t24, ptr %l9, !tbaa !27
  %t25 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t25, ptr %rv
  br label %ret
bb6:
  %t26 = load ptr, ptr %l1, !tbaa !29
  store ptr %t26, ptr %l12, !tbaa !29
  store i1 false, ptr %l13, !tbaa !21
  %t27 = load ptr, ptr %l12, !tbaa !29
  %t28 = icmp ne ptr %t27, null
  br i1 %t28, label %bb7, label %bb8
bb7:
  %t30 = load ptr, ptr %l12, !tbaa !29
  %t31 = load i64, ptr %t30, !range !{i64 0, i64 8}
  %t33 = icmp eq i64 %t31, 5
  store i1 %t33, ptr %l13, !tbaa !21
  br label %bb8
bb8:
  %t34 = load i1, ptr %l13, !tbaa !21
  br i1 %t34, label %bb9, label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb12
bb11:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d29, i32 0, i32 1) }, ptr %l16, !tbaa !27
  %t35 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t35, ptr %l17, !tbaa !27
  %t36 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t37 = extractvalue { i64, ptr } %t36, 0
  store i64 %t37, ptr %l18, !tbaa !24
  %t38 = load i64, ptr %l18, !tbaa !24
  %t39 = mul i64 %t38, 1
  %t40 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t39)
  %t41 = insertvalue { i64, ptr } undef, i64 %t38, 0
  %t42 = insertvalue { i64, ptr } %t41, ptr %t40, 1
  store { i64, ptr } %t42, ptr %l19, !tbaa !27
  %t43 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t44 = load ptr, ptr %t43, !tbaa !27
  %t45 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t46 = load ptr, ptr %t45, !tbaa !27
  %t47 = load i64, ptr %l18, !tbaa !24
  %t48 = mul i64 %t47, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t44, ptr %t46, i64 %t48, i1 false)
  %t49 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t49, ptr %l17, !tbaa !27
  %t50 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t50, ptr %rv
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
  call void @__olang_check_failed(ptr @olang_loc_f342226b8bcffe86_cb7cec1b8bc140d2)
  unreachable
bb17:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t52 = load ptr, ptr %l1, !tbaa !29
  %t55 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eforeignNamed(ptr %v0, ptr %v1, ptr %t51, ptr %t52)
  store i1 %t55, ptr %l22
  br label %bb18
bb18:
  %t56 = load i1, ptr %l22, !tbaa !21
  br i1 %t56, label %bb19, label %bb20
bb19:
  store { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d30, i32 0, i32 1) }, ptr %l23, !tbaa !27
  %t57 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t57, ptr %l24, !tbaa !27
  %t58 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t59 = extractvalue { i64, ptr } %t58, 0
  store i64 %t59, ptr %l25, !tbaa !24
  %t60 = load i64, ptr %l25, !tbaa !24
  %t61 = mul i64 %t60, 1
  %t62 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t61)
  %t63 = insertvalue { i64, ptr } undef, i64 %t60, 0
  %t64 = insertvalue { i64, ptr } %t63, ptr %t62, 1
  store { i64, ptr } %t64, ptr %l26, !tbaa !27
  %t65 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t66 = load ptr, ptr %t65, !tbaa !27
  %t67 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t68 = load ptr, ptr %t67, !tbaa !27
  %t69 = load i64, ptr %l25, !tbaa !24
  %t70 = mul i64 %t69, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t66, ptr %t68, i64 %t70, i1 false)
  %t71 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t71, ptr %l24, !tbaa !27
  %t72 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t72, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/check:Checker", ptr %t73, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !29
  store ptr %t76, ptr %l28, !tbaa !29
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t77)
  store ptr %t79, ptr %l30
  br label %bb22
bb22:
  %t80 = load ptr, ptr %l30, !tbaa !29
  %t82 = getelementptr %"compiler/check:frame", ptr %t80, i32 0, i32 4
  %t83 = load ptr, ptr %l1, !tbaa !29
  %t85 = load ptr, ptr %l28, !tbaa !29
  %t88 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %v0, ptr %v1, ptr %t85, ptr %t82, ptr %t83)
  store i32 %t88, ptr %l35
  br label %bb23
bb23:
  %t89 = load i32, ptr %l35, !tbaa !23
  store i32 %t89, ptr %l2, !tbaa !23
  %t90 = load i32, ptr %l2, !tbaa !23
  %t91 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t94 = icmp eq i32 %t90, %t91
  br i1 %t94, label %bb24, label %bb25
bb24:
  store i1 true, ptr %l39, !tbaa !21
  br label %bb27
bb25:
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t97 = load i32, ptr %l2, !tbaa !23
  %t100 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisStruct(ptr %v0, ptr %t96, i32 %t97)
  store i1 %t100, ptr %l42
  br label %bb26
bb26:
  %t101 = load i1, ptr %l42, !tbaa !21
  store i1 %t101, ptr %l39, !tbaa !21
  br label %bb27
bb27:
  %t102 = load i1, ptr %l39, !tbaa !21
  br i1 %t102, label %bb28, label %bb29
bb28:
  store i1 true, ptr %l43, !tbaa !21
  br label %bb31
bb29:
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t104 = load i32, ptr %l2, !tbaa !23
  %t107 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisEnum(ptr %v0, ptr %t103, i32 %t104)
  store i1 %t107, ptr %l46
  br label %bb30
bb30:
  %t108 = load i1, ptr %l46, !tbaa !21
  store i1 %t108, ptr %l43, !tbaa !21
  br label %bb31
bb31:
  %t109 = load i1, ptr %l43, !tbaa !21
  br i1 %t109, label %bb32, label %bb33
bb32:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d31, i32 0, i32 1) }, ptr %l47, !tbaa !27
  %t110 = load { i64, ptr }, ptr %l47, !tbaa !27
  store { i64, ptr } %t110, ptr %l48, !tbaa !27
  %t111 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t112 = extractvalue { i64, ptr } %t111, 0
  store i64 %t112, ptr %l49, !tbaa !24
  %t113 = load i64, ptr %l49, !tbaa !24
  %t114 = mul i64 %t113, 1
  %t115 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t114)
  %t116 = insertvalue { i64, ptr } undef, i64 %t113, 0
  %t117 = insertvalue { i64, ptr } %t116, ptr %t115, 1
  store { i64, ptr } %t117, ptr %l50, !tbaa !27
  %t118 = getelementptr { i64, ptr }, ptr %l50, i32 0, i32 1
  %t119 = load ptr, ptr %t118, !tbaa !27
  %t120 = getelementptr { i64, ptr }, ptr %l48, i32 0, i32 1
  %t121 = load ptr, ptr %t120, !tbaa !27
  %t122 = load i64, ptr %l49, !tbaa !24
  %t123 = mul i64 %t122, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t119, ptr %t121, i64 %t123, i1 false)
  %t124 = load { i64, ptr }, ptr %l50, !tbaa !27
  store { i64, ptr } %t124, ptr %l48, !tbaa !27
  %t125 = load { i64, ptr }, ptr %l48, !tbaa !27
  store { i64, ptr } %t125, ptr %rv
  br label %ret
bb33:
  br label %bb34
bb34:
  %t126 = load ptr, ptr %l0, !tbaa !29
  %t128 = getelementptr %"compiler/check:Checker", ptr %t126, i32 0, i32 1
  %t129 = load ptr, ptr %t128, !tbaa !29
  %t131 = getelementptr %"compiler/generic:Program", ptr %t129, i32 0, i32 2
  %t132 = load i32, ptr %l2, !tbaa !23
  %t135 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t131, i32 %t132)
  store i32 %t135, ptr %l55
  br label %bb35
bb35:
  %t136 = load i32, ptr %l55, !range !{i32 0, i32 33}
  store i32 %t136, ptr %l3
  %t137 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t139 = trunc i64 25 to i32
  %t140 = icmp eq i32 %t137, %t139
  br i1 %t140, label %bb36, label %bb37
bb36:
  br label %bb38
bb37:
  br label %bb39
bb38:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d32, i32 0, i32 1) }, ptr %l59, !tbaa !27
  %t142 = load { i64, ptr }, ptr %l59, !tbaa !27
  store { i64, ptr } %t142, ptr %l56, !tbaa !27
  br label %bb52
bb39:
  %t144 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t146 = trunc i64 19 to i32
  %t147 = icmp eq i32 %t144, %t146
  br i1 %t147, label %bb40, label %bb41
bb40:
  br label %bb42
bb41:
  br label %bb43
bb42:
  store { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d33, i32 0, i32 1) }, ptr %l63, !tbaa !27
  %t149 = load { i64, ptr }, ptr %l63, !tbaa !27
  store { i64, ptr } %t149, ptr %l56, !tbaa !27
  br label %bb52
bb43:
  %t151 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t153 = trunc i64 21 to i32
  %t154 = icmp eq i32 %t151, %t153
  br i1 %t154, label %bb44, label %bb45
bb44:
  br label %bb46
bb45:
  br label %bb47
bb46:
  store { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d34, i32 0, i32 1) }, ptr %l67, !tbaa !27
  %t156 = load { i64, ptr }, ptr %l67, !tbaa !27
  store { i64, ptr } %t156, ptr %l56, !tbaa !27
  br label %bb52
bb47:
  br i1 true, label %bb48, label %bb49
bb48:
  br label %bb50
bb49:
  br label %bb51
bb50:
  store { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d35, i32 0, i32 1) }, ptr %l69, !tbaa !27
  %t158 = load { i64, ptr }, ptr %l69, !tbaa !27
  store { i64, ptr } %t158, ptr %l56, !tbaa !27
  br label %bb52
bb51:
  call void @__olang_check_failed(ptr @olang_loc_a797700ef8100967_b92f0bde838bc4d3)
  unreachable
bb52:
  %t160 = load { i64, ptr }, ptr %l56, !tbaa !27
  %t161 = extractvalue { i64, ptr } %t160, 0
  store i64 %t161, ptr %l71, !tbaa !24
  %t162 = load i64, ptr %l71, !tbaa !24
  %t163 = mul i64 %t162, 1
  %t164 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t163)
  %t165 = insertvalue { i64, ptr } undef, i64 %t162, 0
  %t166 = insertvalue { i64, ptr } %t165, ptr %t164, 1
  store { i64, ptr } %t166, ptr %l72, !tbaa !27
  %t167 = getelementptr { i64, ptr }, ptr %l72, i32 0, i32 1
  %t168 = load ptr, ptr %t167, !tbaa !27
  %t169 = getelementptr { i64, ptr }, ptr %l56, i32 0, i32 1
  %t170 = load ptr, ptr %t169, !tbaa !27
  %t171 = load i64, ptr %l71, !tbaa !24
  %t172 = mul i64 %t171, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t168, ptr %t170, i64 %t172, i1 false)
  %t173 = load { i64, ptr }, ptr %l72, !tbaa !27
  store { i64, ptr } %t173, ptr %l56, !tbaa !27
  %t174 = load { i64, ptr }, ptr %l56, !tbaa !27
  store { i64, ptr } %t174, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ezero(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca i32
  %l4 = alloca i64
  %l5 = alloca i32
  %l6 = alloca { i64, ptr }
  %l7 = alloca ptr
  %l8 = alloca { i64, ptr }
  %l9 = alloca ptr
  %l10 = alloca ptr
  %lp11 = alloca ptr
  %l12 = alloca i32
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i1
  %l20 = alloca { i64, [3 x i64] }
  %l21 = alloca i32
  %l22 = alloca { i64, ptr }
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i32
  %l27 = alloca ptr
  %l28 = alloca i64
  %l32 = alloca i1
  %l33 = alloca ptr
  %l34 = alloca %"compiler/source:Span"
  %l37 = alloca { i64, ptr }
  %l38 = alloca { i64, ptr }
  %l39 = alloca ptr
  %l44 = alloca i32
  %l45 = alloca { i64, ptr }
  %l47 = alloca %"compiler/diagmsg:Msg"
  %l48 = alloca i64
  %l53 = alloca ptr
  %l56 = alloca i1
  %l60 = alloca ptr
  %l63 = alloca i1
  %l66 = alloca i64
  %l70 = alloca i32
  %l74 = alloca { i64, ptr }
  %l77 = alloca ptr
  %l82 = alloca i32
  %l83 = alloca { i64, ptr }
  %l88 = alloca ptr
  %l93 = alloca i32
  %l94 = alloca ptr
  %l101 = alloca i1
  %l108 = alloca ptr
  %l109 = alloca i1
  %l117 = alloca i64
  %l120 = alloca ptr
  %l133 = alloca i64
  %l136 = alloca i64
  %l157 = alloca i1
  %l162 = alloca i1
  %l163 = alloca { i64, ptr }
  %l174 = alloca i1
  %l179 = alloca ptr
  %l180 = alloca ptr
  %l182 = alloca ptr
  %l187 = alloca i32
  %l188 = alloca i64
  %l189 = alloca { i64, ptr }
  %l192 = alloca ptr
  %l194 = alloca { i64, [3 x i64] }
  %l195 = alloca i64
  %l197 = alloca ptr
  %l201 = alloca { i64, ptr }
  %l204 = alloca ptr
  %l207 = alloca { i64, ptr }
  %l210 = alloca ptr
  %l222 = alloca ptr
  %l225 = alloca i1
  %l226 = alloca i1
  %l229 = alloca i1
  %l234 = alloca i32
  %l240 = alloca ptr
  %l245 = alloca i32
  %l246 = alloca { i64, ptr }
  %l253 = alloca { i64, ptr }
  %l258 = alloca i1
  %l259 = alloca ptr
  %l260 = alloca %"compiler/source:Span"
  %l263 = alloca { i64, ptr }
  %l264 = alloca { i64, ptr }
  %l265 = alloca ptr
  %l270 = alloca i32
  %l271 = alloca { i64, ptr }
  %l273 = alloca %"compiler/diagmsg:Msg"
  %l274 = alloca i64
  %l279 = alloca ptr
  %l286 = alloca ptr
  %l293 = alloca i1
  %l296 = alloca i64
  %l299 = alloca ptr
  %l302 = alloca ptr
  %l306 = alloca i32
  %l307 = alloca i32
  %l308 = alloca { i64, ptr }
  %l309 = alloca { i64, ptr }
  %l311 = alloca ptr
  %l312 = alloca %"compiler/source:Span"
  %l313 = alloca i32
  %l314 = alloca i64
  %l315 = alloca ptr
  %l319 = alloca ptr
  %l320 = alloca { i64, ptr }
  %l321 = alloca ptr
  %l325 = alloca ptr
  %s1 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %rv = alloca ptr
  %t215 = alloca i64
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l2, !tbaa !23
  %t5 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eneverNull(ptr %v0, ptr %t1, i32 %t2)
  store i1 %t5, ptr %l32
  br label %bb1
bb1:
  %t6 = load i1, ptr %l32, !tbaa !21
  br i1 %t6, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t7 = load ptr, ptr %l0, !tbaa !29
  store ptr %t7, ptr %l33, !tbaa !29
  %t8 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t8, ptr %l34
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load i32, ptr %l2, !tbaa !23
  %t13 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s1, ptr %t9, i32 %t10)
  store { i64, ptr } %t13, ptr %l37
  br label %bb4
bb3:
  br label %bb11
bb4:
  %t14 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t15 = extractvalue { i64, ptr } %t14, 0
  %t16 = extractvalue { i64, ptr } %t14, 1
  %t17 = mul i64 %t15, 1
  %t18 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t17)
  call void @llvm.memcpy.p0.p0.i64(ptr %t18, ptr %t16, i64 %t17, i1 false)
  %t19 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t20 = insertvalue { i64, ptr } %t19, ptr %t18, 1
  store { i64, ptr } %t20, ptr %l38, !tbaa !27
  %t21 = load ptr, ptr %l0, !tbaa !29
  store ptr %t21, ptr %l39, !tbaa !29
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/check:Checker", ptr %t22, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t27 = getelementptr %"compiler/generic:Program", ptr %t25, i32 0, i32 2
  %t28 = load i32, ptr %l2, !tbaa !23
  %t31 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOrNull(ptr %v0, ptr %t27, i32 %t28)
  store i32 %t31, ptr %l44
  br label %bb5
bb5:
  %t32 = load ptr, ptr %l39, !tbaa !29
  %t33 = load i32, ptr %l44, !tbaa !23
  %t34 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s1, ptr %t32, i32 %t33)
  store { i64, ptr } %t34, ptr %l45
  br label %bb6
bb6:
  %t35 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t36 = extractvalue { i64, ptr } %t35, 0
  %t37 = extractvalue { i64, ptr } %t35, 1
  %t38 = mul i64 %t36, 1
  %t39 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t38)
  call void @llvm.memcpy.p0.p0.i64(ptr %t39, ptr %t37, i64 %t38, i1 false)
  %t40 = insertvalue { i64, ptr } undef, i64 %t36, 0
  %t41 = insertvalue { i64, ptr } %t40, ptr %t39, 1
  %t42 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoZeroNonNull(ptr %s1, ptr %s1, ptr %s1, { i64, ptr } %t42, { i64, ptr } %t41)
  store %"compiler/diagmsg:Msg" %t44, ptr %l47
  br label %bb7
bb7:
  %t45 = load ptr, ptr %l33, !tbaa !29
  %t46 = load %"compiler/source:Span", ptr %l34
  %t47 = load %"compiler/diagmsg:Msg", ptr %l47
  %t48 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s1, ptr %t45, %"compiler/source:Span" %t46, %"compiler/diagmsg:Msg" %t47)
  store i64 %t48, ptr %l48
  br label %bb8
bb8:
  %t49 = load i64, ptr %l48, !tbaa !24
  %t50 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclNote(ptr %v0, ptr %t50, i64 %t49)
  br label %bb9
bb9:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t55 = load %"compiler/source:Span", ptr %l1
  %t58 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v1, ptr %t54, %"compiler/source:Span" %t55)
  store ptr %t58, ptr %l53
  br label %bb10
bb10:
  call void @__olang_scope_close(ptr %s1)
  %t59 = load ptr, ptr %l53, !tbaa !29
  store ptr %t59, ptr %rv
  br label %ret
bb11:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t61 = load i32, ptr %l2, !tbaa !23
  %t64 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enullableArray(ptr %v0, ptr %t60, i32 %t61)
  store i1 %t64, ptr %l56
  br label %bb12
bb12:
  %t65 = load i1, ptr %l56, !tbaa !21
  br i1 %t65, label %bb13, label %bb14
bb13:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t67 = load %"compiler/source:Span", ptr %l1
  %t68 = load i32, ptr %l2, !tbaa !23
  %t72 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enullOf(ptr %v0, ptr %v1, ptr %t66, %"compiler/source:Span" %t67, i32 %t68)
  store ptr %t72, ptr %l60
  br label %bb15
bb14:
  br label %bb16
bb15:
  %t73 = load ptr, ptr %l60, !tbaa !29
  store ptr %t73, ptr %rv
  br label %ret
bb16:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t75 = load i32, ptr %l2, !tbaa !23
  %t78 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisStruct(ptr %v0, ptr %t74, i32 %t75)
  store i1 %t78, ptr %l63
  br label %bb17
bb17:
  %t79 = load i1, ptr %l63, !tbaa !21
  br i1 %t79, label %bb18, label %bb19
bb18:
  store %olang.scope zeroinitializer, ptr %s3
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t81 = load i32, ptr %l2, !tbaa !23
  %t84 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectorBody(ptr %v0, ptr %t80, i32 %t81)
  store i64 %t84, ptr %l66
  br label %bb20
bb19:
  br label %bb92
bb20:
  %t85 = load i64, ptr %l66, !tbaa !24
  store i64 %t85, ptr %l4, !tbaa !24
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = getelementptr %"compiler/check:Checker", ptr %t86, i32 0, i32 1
  %t89 = load ptr, ptr %t88, !tbaa !29
  %t90 = load i32, ptr %l2, !tbaa !23
  %t93 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCtorSig(ptr %v0, ptr %t89, i32 %t90)
  store i32 %t93, ptr %l70
  br label %bb21
bb21:
  %t94 = load i32, ptr %l70, !tbaa !23
  store i32 %t94, ptr %l5, !tbaa !23
  %t95 = load i32, ptr %l5, !tbaa !23
  %t96 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t99 = icmp ne i32 %t95, %t96
  br i1 %t99, label %bb22, label %bb23
bb22:
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t103 = getelementptr %"compiler/check:Checker", ptr %t101, i32 0, i32 1
  %t104 = load ptr, ptr %t103, !tbaa !29
  %t106 = getelementptr %"compiler/generic:Program", ptr %t104, i32 0, i32 2
  store ptr %t106, ptr %l77, !tbaa !29
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t109 = getelementptr %"compiler/check:Checker", ptr %t107, i32 0, i32 1
  %t110 = load ptr, ptr %t109, !tbaa !29
  %t112 = getelementptr %"compiler/generic:Program", ptr %t110, i32 0, i32 2
  %t113 = load i32, ptr %l5, !tbaa !23
  %t116 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t112, i32 %t113)
  store i32 %t116, ptr %l82
  br label %bb24
bb23:
  %t117 = icmp sge i64 0, 0
  br i1 %t117, label %bb26, label %bb27
bb24:
  %t119 = load ptr, ptr %l77, !tbaa !29
  %t120 = load i32, ptr %l82, !tbaa !23
  %t121 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s3, ptr %t119, i32 %t120)
  store { i64, ptr } %t121, ptr %l83
  br label %bb25
bb25:
  %t122 = load { i64, ptr }, ptr %l83, !tbaa !27
  store { i64, ptr } %t122, ptr %l74, !tbaa !27
  br label %bb30
bb26:
  %t123 = icmp sle i64 0, 2305843009213693951
  br i1 %t123, label %bb28, label %bb29
bb27:
  call void @__olang_check_failed(ptr @olang_loc_39114b2b59f3c1de_f97787d703923df2)
  unreachable
bb28:
  %t125 = mul i64 0, 4
  %t126 = insertvalue { i64, ptr } undef, i64 0, 0
  %t127 = insertvalue { i64, ptr } %t126, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t127, ptr %l74, !tbaa !27
  br label %bb30
bb29:
  call void @__olang_check_failed(ptr @olang_loc_39114b2b59f3c1de_f97787d703923df2)
  unreachable
bb30:
  %t129 = load { i64, ptr }, ptr %l74, !tbaa !27
  store { i64, ptr } %t129, ptr %l6, !tbaa !27
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t132 = getelementptr %"compiler/check:Checker", ptr %t130, i32 0, i32 1
  %t133 = load ptr, ptr %t132, !tbaa !29
  store ptr %t133, ptr %l88, !tbaa !29
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t136 = getelementptr %"compiler/check:Checker", ptr %t134, i32 0, i32 1
  %t137 = load ptr, ptr %t136, !tbaa !29
  %t139 = getelementptr %"compiler/generic:Program", ptr %t137, i32 0, i32 2
  %t140 = load i32, ptr %l2, !tbaa !23
  %t143 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t139, i32 %t140)
  store i32 %t143, ptr %l93
  br label %bb31
bb31:
  %t144 = load ptr, ptr %l88, !tbaa !29
  %t145 = load i32, ptr %l93, !tbaa !23
  %t146 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeDecl(ptr %v0, ptr %v0, ptr %t144, i32 %t145)
  store ptr %t146, ptr %l94
  br label %bb32
bb32:
  %t147 = load ptr, ptr %l94, !tbaa !29
  store ptr %t147, ptr %l7, !tbaa !29
  %t148 = icmp sge i64 0, 0
  br i1 %t148, label %bb33, label %bb34
bb33:
  %t150 = icmp sle i64 0, 1152921504606846975
  br i1 %t150, label %bb35, label %bb36
bb34:
  call void @__olang_check_failed(ptr @olang_loc_bfa34a8929429713_51639094391671e7)
  unreachable
bb35:
  %t152 = mul i64 0, 8
  %t153 = insertvalue { i64, ptr } undef, i64 0, 0
  %t154 = insertvalue { i64, ptr } %t153, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t154, ptr %l8, !tbaa !27
  %t156 = load ptr, ptr %l7, !tbaa !29
  %t158 = icmp eq ptr %t156, null
  %t160 = xor i1 %t158, true
  br i1 %t160, label %bb37, label %bb38
bb36:
  call void @__olang_check_failed(ptr @olang_loc_bfa34a8929429713_51639094391671e7)
  unreachable
bb37:
  %t162 = load ptr, ptr %l7, !tbaa !29
  %t164 = getelementptr %"compiler/ast:TypeDecl", ptr %t162, i32 0, i32 3
  %t165 = load ptr, ptr %t164, !tbaa !29
  %t167 = icmp eq ptr %t165, null
  %t169 = xor i1 %t167, true
  store i1 %t169, ptr %l101, !tbaa !21
  br label %bb39
bb38:
  store i1 false, ptr %l101, !tbaa !21
  br label %bb39
bb39:
  %t171 = load i1, ptr %l101, !tbaa !21
  br i1 %t171, label %bb40, label %bb41
bb40:
  %t172 = load ptr, ptr %l7, !tbaa !29
  %t174 = getelementptr %"compiler/ast:TypeDecl", ptr %t172, i32 0, i32 3
  %t175 = load ptr, ptr %t174, !tbaa !29
  store ptr %t175, ptr %l9, !tbaa !29
  %t177 = load ptr, ptr %l9, !tbaa !29
  store ptr %t177, ptr %l108, !tbaa !29
  store i1 false, ptr %l109, !tbaa !21
  %t178 = load ptr, ptr %l108, !tbaa !29
  %t179 = icmp ne ptr %t178, null
  br i1 %t179, label %bb42, label %bb43
bb41:
  br label %bb53
bb42:
  %t181 = load ptr, ptr %l108, !tbaa !29
  %t182 = load i64, ptr %t181, !range !{i64 0, i64 5}
  %t184 = icmp eq i64 %t182, 0
  store i1 %t184, ptr %l109, !tbaa !21
  br label %bb43
bb43:
  %t185 = load i1, ptr %l109, !tbaa !21
  br i1 %t185, label %bb44, label %bb45
bb44:
  %t186 = load ptr, ptr %l9, !tbaa !29
  %t188 = getelementptr { i64, [6 x i64] }, ptr %t186, i32 0, i32 1
  %t189 = getelementptr { ptr }, ptr %t188, i32 0, i32 0
  %t190 = load ptr, ptr %t189
  store ptr %t190, ptr %l10, !tbaa !29
  br label %bb46
bb45:
  br label %bb47
bb46:
  %t192 = load ptr, ptr %l10, !tbaa !29
  %t194 = getelementptr %"compiler/ast:StructBody", ptr %t192, i32 0, i32 0
  %t195 = load { i64, ptr }, ptr %t194, !tbaa !27
  store { i64, ptr } %t195, ptr %l8, !tbaa !27
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
  call void @__olang_check_failed(ptr @olang_loc_37a2617a6fdca52f_9113ce984ee2ba6b)
  unreachable
bb52:
  br label %bb53
bb53:
  %t197 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t199 = extractvalue { i64, ptr } %t197, 0
  store i64 %t199, ptr %l117, !tbaa !24
  %t200 = load ptr, ptr %l0, !tbaa !29
  %t201 = load %"compiler/source:Span", ptr %l1
  %t204 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehole(ptr %v0, ptr %v1, ptr %t200, %"compiler/source:Span" %t201)
  store ptr %t204, ptr %l120
  br label %bb54
bb54:
  %t205 = load i64, ptr %l117, !tbaa !24
  %t206 = icmp sge i64 %t205, 0
  br i1 %t206, label %bb55, label %bb56
bb55:
  %t208 = load i64, ptr %l117, !tbaa !24
  %t209 = icmp sle i64 %t208, 1152921504606846975
  br i1 %t209, label %bb57, label %bb58
bb56:
  call void @__olang_check_failed(ptr @olang_loc_cffeba9c7beed71d_692ce8f7e2902011)
  unreachable
bb57:
  %t211 = load i64, ptr %l117, !tbaa !24
  %t212 = mul i64 %t211, 8
  %t213 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t212)
  %t214 = load ptr, ptr %l120, !tbaa !29
  store i64 0, ptr %t215
  br label %fill.216
fill.216:
  %t219 = load i64, ptr %t215
  %t220 = icmp slt i64 %t219, %t211
  br i1 %t220, label %fillb.217, label %filld.218
fillb.217:
  %t221 = getelementptr ptr, ptr %t213, i64 %t219
  store ptr %t214, ptr %t221
  %t222 = add i64 %t219, 1
  store i64 %t222, ptr %t215
  br label %fill.216
filld.218:
  %t223 = insertvalue { i64, ptr } undef, i64 %t211, 0
  %t224 = insertvalue { i64, ptr } %t223, ptr %t213, 1
  %t225 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t225, ptr %lp11
  %t227 = load ptr, ptr %lp11
  store { i64, ptr } %t224, ptr %t227, !tbaa !27
  %t228 = load ptr, ptr %l0, !tbaa !29
  %t230 = getelementptr %"compiler/check:Checker", ptr %t228, i32 0, i32 23
  %t231 = load i32, ptr %t230, !tbaa !23
  store i32 %t231, ptr %l12, !tbaa !23
  %t233 = load ptr, ptr %l0, !tbaa !29
  %t234 = load i32, ptr %l2, !tbaa !23
  %t237 = getelementptr %"compiler/check:Checker", ptr %t233, i32 0, i32 23
  store i32 %t234, ptr %t237, !tbaa !23
  store i64 0, ptr %l13, !tbaa !24
  %t238 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t240 = extractvalue { i64, ptr } %t238, 0
  store i64 %t240, ptr %l14, !tbaa !24
  store i64 1, ptr %l15, !tbaa !24
  %t242 = load i64, ptr %l14, !tbaa !24
  %t243 = load i64, ptr %l13, !tbaa !24
  %t246 = icmp sgt i64 %t242, %t243
  br i1 %t246, label %bb59, label %bb60
bb58:
  call void @__olang_check_failed(ptr @olang_loc_cffeba9c7beed71d_692ce8f7e2902011)
  unreachable
bb59:
  %t248 = load i64, ptr %l15, !tbaa !24
  %t250 = icmp sgt i64 %t248, 0
  br i1 %t250, label %bb61, label %bb62
bb60:
  store i64 0, ptr %l133, !tbaa !24
  br label %bb64
bb61:
  %t252 = load i64, ptr %l14, !tbaa !24
  %t253 = load i64, ptr %l13, !tbaa !24
  %t256 = sub i64 %t252, %t253
  %t257 = load i64, ptr %l15, !tbaa !24
  %t260 = add i64 %t256, %t257
  %t262 = sub i64 %t260, 1
  %t263 = load i64, ptr %l15, !tbaa !24
  %t266 = sdiv i64 %t262, %t263
  store i64 %t266, ptr %l136, !tbaa !24
  br label %bb63
bb62:
  store i64 0, ptr %l136, !tbaa !24
  br label %bb63
bb63:
  %t268 = load i64, ptr %l136, !tbaa !24
  store i64 %t268, ptr %l133, !tbaa !24
  br label %bb64
bb64:
  %t269 = load i64, ptr %l133, !tbaa !24
  store i64 %t269, ptr %l16, !tbaa !24
  store i64 0, ptr %l17, !tbaa !24
  br label %bb65
bb65:
  %t270 = load i64, ptr %l17, !tbaa !24
  %t271 = load i64, ptr %l16, !tbaa !24
  %t274 = icmp slt i64 %t270, %t271
  %t276 = xor i1 %t274, true
  br i1 %t276, label %bb66, label %bb67
bb66:
  br label %bb90
bb67:
  br label %bb68
bb68:
  %t278 = load i64, ptr %l13, !tbaa !24
  %t279 = load i64, ptr %l17, !tbaa !24
  %t280 = load i64, ptr %l15, !tbaa !24
  %t283 = mul i64 %t279, %t280
  %t286 = add i64 %t278, %t283
  store i64 %t286, ptr %l18, !tbaa !24
  %t288 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t290 = extractvalue { i64, ptr } %t288, 0
  %t292 = icmp sgt i64 %t290, 0
  br i1 %t292, label %bb69, label %bb70
bb69:
  %t294 = load i64, ptr %l18, !tbaa !24
  %t295 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t297 = extractvalue { i64, ptr } %t295, 0
  %t300 = icmp slt i64 %t294, %t297
  store i1 %t300, ptr %l157, !tbaa !21
  br label %bb71
bb70:
  store i1 false, ptr %l157, !tbaa !21
  br label %bb71
bb71:
  %t302 = load i1, ptr %l157, !tbaa !21
  br i1 %t302, label %bb72, label %bb73
bb72:
  %t303 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t303, ptr %l163, !tbaa !27
  %t304 = load i64, ptr %l18, !tbaa !24
  %t306 = getelementptr { i64, ptr }, ptr %l163, i32 0, i32 1
  %t307 = load ptr, ptr %t306, !tbaa !27
  %t308 = getelementptr ptr, ptr %t307, i64 %t304
  %t309 = load ptr, ptr %t308, !tbaa !39
  %t311 = getelementptr %"compiler/ast:Param", ptr %t309, i32 0, i32 3
  %t312 = load ptr, ptr %t311, !tbaa !29
  %t314 = icmp eq ptr %t312, null
  %t316 = xor i1 %t314, true
  store i1 %t316, ptr %l162, !tbaa !21
  br label %bb74
bb73:
  store i1 false, ptr %l162, !tbaa !21
  br label %bb74
bb74:
  %t318 = load i1, ptr %l162, !tbaa !21
  store i1 %t318, ptr %l19, !tbaa !21
  %t319 = load ptr, ptr %l0, !tbaa !29
  %t321 = getelementptr %"compiler/check:Checker", ptr %t319, i32 0, i32 13
  %t322 = load { i64, [3 x i64] }, ptr %t321
  store { i64, [3 x i64] } %t322, ptr %l20
  %t324 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t326 = extractvalue { i64, ptr } %t324, 0
  %t328 = icmp sgt i64 %t326, 0
  br i1 %t328, label %bb75, label %bb76
bb75:
  %t330 = load i64, ptr %l18, !tbaa !24
  %t331 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t333 = extractvalue { i64, ptr } %t331, 0
  %t336 = icmp slt i64 %t330, %t333
  store i1 %t336, ptr %l174, !tbaa !21
  br label %bb77
bb76:
  store i1 false, ptr %l174, !tbaa !21
  br label %bb77
bb77:
  %t338 = load i1, ptr %l174, !tbaa !21
  br i1 %t338, label %bb78, label %bb79
bb78:
  %t339 = load ptr, ptr %l0, !tbaa !29
  store ptr %t339, ptr %l179, !tbaa !29
  %t340 = load ptr, ptr %l0, !tbaa !29
  store ptr %t340, ptr %l180, !tbaa !29
  %t341 = load ptr, ptr %l0, !tbaa !29
  %t343 = getelementptr %"compiler/check:Checker", ptr %t341, i32 0, i32 1
  %t344 = load ptr, ptr %t343, !tbaa !29
  store ptr %t344, ptr %l182, !tbaa !29
  %t345 = load ptr, ptr %l0, !tbaa !29
  %t347 = getelementptr %"compiler/check:Checker", ptr %t345, i32 0, i32 1
  %t348 = load ptr, ptr %t347, !tbaa !29
  %t350 = getelementptr %"compiler/generic:Program", ptr %t348, i32 0, i32 2
  %t351 = load i32, ptr %l2, !tbaa !23
  %t354 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t350, i32 %t351)
  store i32 %t354, ptr %l187
  br label %bb80
bb79:
  br label %bb83
bb80:
  %t355 = load ptr, ptr %l182, !tbaa !29
  %t356 = load i32, ptr %l187, !tbaa !23
  %t357 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclModule(ptr %v0, ptr %t355, i32 %t356)
  store i64 %t357, ptr %l188
  br label %bb81
bb81:
  %t358 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t358, ptr %l189, !tbaa !27
  %t359 = load i64, ptr %l18, !tbaa !24
  %t361 = getelementptr { i64, ptr }, ptr %l189, i32 0, i32 1
  %t362 = load ptr, ptr %t361, !tbaa !27
  %t363 = getelementptr ptr, ptr %t362, i64 %t359
  %t364 = load ptr, ptr %t363, !tbaa !39
  %t366 = getelementptr %"compiler/ast:Param", ptr %t364, i32 0, i32 2
  %t367 = load ptr, ptr %t366, !tbaa !29
  store ptr %t367, ptr %l192, !tbaa !29
  %t368 = load ptr, ptr %l192, !tbaa !29
  %t369 = call ptr @__olang_scope_of(ptr %t368, ptr null)
  %t370 = ptrtoint ptr %t369 to i64
  %t372 = inttoptr i64 %t370 to ptr
  %t373 = load ptr, ptr %l180, !tbaa !29
  %t374 = load i64, ptr %l188, !tbaa !24
  %t375 = load ptr, ptr %l192, !tbaa !29
  %t376 = call { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emarkAt(ptr %v0, ptr %t372, ptr %t373, i64 %t374, ptr %t375)
  store { i64, [3 x i64] } %t376, ptr %l194
  br label %bb82
bb82:
  %t377 = load { i64, [3 x i64] }, ptr %l194
  %t378 = load ptr, ptr %l179, !tbaa !29
  %t379 = getelementptr %"compiler/check:Checker", ptr %t378, i32 0, i32 13
  store { i64, [3 x i64] } %t377, ptr %t379
  br label %bb83
bb83:
  %t380 = load i64, ptr %l18, !tbaa !24
  store i64 %t380, ptr %l195, !tbaa !24
  %t381 = load i1, ptr %l19, !tbaa !21
  br i1 %t381, label %bb84, label %bb85
bb84:
  %t383 = load ptr, ptr %l0, !tbaa !29
  %t384 = load %"compiler/source:Span", ptr %l1
  %t385 = load i64, ptr %l18, !tbaa !24
  %t386 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t386, ptr %l201, !tbaa !27
  %t387 = load i64, ptr %l18, !tbaa !24
  %t389 = getelementptr { i64, ptr }, ptr %l201, i32 0, i32 1
  %t390 = load ptr, ptr %t389, !tbaa !27
  %t391 = getelementptr i32, ptr %t390, i64 %t387
  %t392 = load i32, ptr %t391, !tbaa !33
  %t397 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectorDefault(ptr %v0, ptr %v1, ptr %t383, %"compiler/source:Span" %t384, i64 %t385, i32 %t392)
  store ptr %t397, ptr %l204
  br label %bb86
bb85:
  %t398 = load ptr, ptr %l0, !tbaa !29
  %t399 = load %"compiler/source:Span", ptr %l1
  %t400 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t400, ptr %l207, !tbaa !27
  %t401 = load i64, ptr %l18, !tbaa !24
  %t403 = getelementptr { i64, ptr }, ptr %l207, i32 0, i32 1
  %t404 = load ptr, ptr %t403, !tbaa !27
  %t405 = getelementptr i32, ptr %t404, i64 %t401
  %t406 = load i32, ptr %t405, !tbaa !33
  %t410 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ezero(ptr %v0, ptr %v1, ptr %t398, %"compiler/source:Span" %t399, i32 %t406)
  store ptr %t410, ptr %l210
  br label %bb87
bb86:
  %t411 = load ptr, ptr %l204, !tbaa !29
  store ptr %t411, ptr %l197, !tbaa !29
  br label %bb88
bb87:
  %t412 = load ptr, ptr %l210, !tbaa !29
  store ptr %t412, ptr %l197, !tbaa !29
  br label %bb88
bb88:
  %t413 = load ptr, ptr %l197, !tbaa !29
  %t414 = load ptr, ptr %lp11
  %t415 = load i64, ptr %l195, !tbaa !24
  %t416 = getelementptr { i64, ptr }, ptr %t414, i32 0, i32 1
  %t417 = load ptr, ptr %t416, !tbaa !27
  %t418 = getelementptr ptr, ptr %t417, i64 %t415
  store ptr %t413, ptr %t418, !tbaa !39
  %t419 = load ptr, ptr %l0, !tbaa !29
  %t420 = load { i64, [3 x i64] }, ptr %l20
  %t423 = getelementptr %"compiler/check:Checker", ptr %t419, i32 0, i32 13
  store { i64, [3 x i64] } %t420, ptr %t423
  br label %bb89
bb89:
  %t424 = load i64, ptr %l17, !tbaa !24
  %t426 = add i64 %t424, 1
  store i64 %t426, ptr %l17, !tbaa !24
  br label %bb65
bb90:
  %t428 = load ptr, ptr %l0, !tbaa !29
  %t429 = load i32, ptr %l12, !tbaa !23
  %t432 = getelementptr %"compiler/check:Checker", ptr %t428, i32 0, i32 23
  store i32 %t429, ptr %t432, !tbaa !23
  %t433 = load ptr, ptr %l0, !tbaa !29
  %t434 = load %"compiler/source:Span", ptr %l1
  %t435 = load i32, ptr %l2, !tbaa !23
  %t436 = load i64, ptr %l4, !tbaa !24
  %t437 = load ptr, ptr %lp11
  %t438 = load { i64, ptr }, ptr %t437, !tbaa !27
  %t444 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecallOfBody(ptr %v0, ptr %v1, ptr %v1, ptr %t433, %"compiler/source:Span" %t434, i32 %t435, i64 %t436, { i64, ptr } %t438, i1 true)
  store ptr %t444, ptr %l222
  br label %bb91
bb91:
  call void @__olang_scope_close(ptr %s3)
  %t445 = load ptr, ptr %l222, !tbaa !29
  store ptr %t445, ptr %rv
  br label %ret
bb92:
  %t446 = load ptr, ptr %l0, !tbaa !29
  %t447 = load i32, ptr %l2, !tbaa !23
  %t450 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisEnum(ptr %v0, ptr %t446, i32 %t447)
  store i1 %t450, ptr %l225
  br label %bb93
bb93:
  %t451 = load i1, ptr %l225, !tbaa !21
  br i1 %t451, label %bb94, label %bb95
bb94:
  %t452 = load ptr, ptr %l0, !tbaa !29
  %t453 = load i32, ptr %l2, !tbaa !23
  %t456 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t452, i32 %t453)
  store i1 %t456, ptr %l229
  br label %bb96
bb95:
  store i1 false, ptr %l226, !tbaa !21
  br label %bb97
bb96:
  %t457 = load i1, ptr %l229, !tbaa !21
  %t458 = xor i1 %t457, true
  store i1 %t458, ptr %l226, !tbaa !21
  br label %bb97
bb97:
  %t460 = load i1, ptr %l226, !tbaa !21
  br i1 %t460, label %bb98, label %bb99
bb98:
  %t461 = load ptr, ptr %l0, !tbaa !29
  %t463 = getelementptr %"compiler/check:Checker", ptr %t461, i32 0, i32 1
  %t464 = load ptr, ptr %t463, !tbaa !29
  %t465 = load i32, ptr %l2, !tbaa !23
  %t468 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCaseSig(ptr %v0, ptr %t464, i32 %t465, i64 0)
  store i32 %t468, ptr %l234
  br label %bb100
bb99:
  br label %bb127
bb100:
  %t469 = load i32, ptr %l234, !tbaa !23
  store i32 %t469, ptr %l21, !tbaa !23
  %t470 = load i32, ptr %l21, !tbaa !23
  %t471 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t474 = icmp ne i32 %t470, %t471
  br i1 %t474, label %bb101, label %bb102
bb101:
  %t476 = load ptr, ptr %l0, !tbaa !29
  %t478 = getelementptr %"compiler/check:Checker", ptr %t476, i32 0, i32 1
  %t479 = load ptr, ptr %t478, !tbaa !29
  %t481 = getelementptr %"compiler/generic:Program", ptr %t479, i32 0, i32 2
  store ptr %t481, ptr %l240, !tbaa !29
  %t482 = load ptr, ptr %l0, !tbaa !29
  %t484 = getelementptr %"compiler/check:Checker", ptr %t482, i32 0, i32 1
  %t485 = load ptr, ptr %t484, !tbaa !29
  %t487 = getelementptr %"compiler/generic:Program", ptr %t485, i32 0, i32 2
  %t488 = load i32, ptr %l21, !tbaa !23
  %t491 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t487, i32 %t488)
  store i32 %t491, ptr %l245
  br label %bb103
bb102:
  br label %bb126
bb103:
  %t492 = load ptr, ptr %l240, !tbaa !29
  %t493 = load i32, ptr %l245, !tbaa !23
  %t494 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t492, i32 %t493)
  store { i64, ptr } %t494, ptr %l246
  br label %bb104
bb104:
  %t495 = load { i64, ptr }, ptr %l246, !tbaa !27
  store { i64, ptr } %t495, ptr %l22, !tbaa !27
  store i64 0, ptr %l23, !tbaa !24
  %t496 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t498 = extractvalue { i64, ptr } %t496, 0
  store i64 %t498, ptr %l24, !tbaa !24
  br label %bb105
bb105:
  %t500 = load i64, ptr %l23, !tbaa !24
  %t501 = load i64, ptr %l24, !tbaa !24
  %t504 = icmp slt i64 %t500, %t501
  %t506 = xor i1 %t504, true
  br i1 %t506, label %bb106, label %bb107
bb106:
  br label %bb121
bb107:
  br label %bb108
bb108:
  %t508 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t508, ptr %l253, !tbaa !27
  %t509 = load i64, ptr %l23, !tbaa !24
  %t511 = getelementptr { i64, ptr }, ptr %l253, i32 0, i32 1
  %t512 = load ptr, ptr %t511, !tbaa !27
  %t513 = getelementptr i32, ptr %t512, i64 %t509
  %t514 = load i32, ptr %t513, !tbaa !33
  store i32 %t514, ptr %l25, !tbaa !23
  %t516 = load ptr, ptr %l0, !tbaa !29
  %t517 = load i32, ptr %l25, !tbaa !23
  %t520 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eneverNull(ptr %v0, ptr %t516, i32 %t517)
  store i1 %t520, ptr %l258
  br label %bb109
bb109:
  %t521 = load i1, ptr %l258, !tbaa !21
  br i1 %t521, label %bb110, label %bb111
bb110:
  store %olang.scope zeroinitializer, ptr %s15
  %t522 = load ptr, ptr %l0, !tbaa !29
  store ptr %t522, ptr %l259, !tbaa !29
  %t523 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t523, ptr %l260
  %t524 = load ptr, ptr %l0, !tbaa !29
  %t525 = load i32, ptr %l25, !tbaa !23
  %t528 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s15, ptr %t524, i32 %t525)
  store { i64, ptr } %t528, ptr %l263
  br label %bb112
bb111:
  br label %bb119
bb112:
  %t529 = load { i64, ptr }, ptr %l263, !tbaa !27
  %t530 = extractvalue { i64, ptr } %t529, 0
  %t531 = extractvalue { i64, ptr } %t529, 1
  %t532 = mul i64 %t530, 1
  %t533 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t532)
  call void @llvm.memcpy.p0.p0.i64(ptr %t533, ptr %t531, i64 %t532, i1 false)
  %t534 = insertvalue { i64, ptr } undef, i64 %t530, 0
  %t535 = insertvalue { i64, ptr } %t534, ptr %t533, 1
  store { i64, ptr } %t535, ptr %l264, !tbaa !27
  %t536 = load ptr, ptr %l0, !tbaa !29
  store ptr %t536, ptr %l265, !tbaa !29
  %t537 = load ptr, ptr %l0, !tbaa !29
  %t539 = getelementptr %"compiler/check:Checker", ptr %t537, i32 0, i32 1
  %t540 = load ptr, ptr %t539, !tbaa !29
  %t542 = getelementptr %"compiler/generic:Program", ptr %t540, i32 0, i32 2
  %t543 = load i32, ptr %l25, !tbaa !23
  %t546 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOrNull(ptr %v0, ptr %t542, i32 %t543)
  store i32 %t546, ptr %l270
  br label %bb113
bb113:
  %t547 = load ptr, ptr %l265, !tbaa !29
  %t548 = load i32, ptr %l270, !tbaa !23
  %t549 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s15, ptr %t547, i32 %t548)
  store { i64, ptr } %t549, ptr %l271
  br label %bb114
bb114:
  %t550 = load { i64, ptr }, ptr %l271, !tbaa !27
  %t551 = extractvalue { i64, ptr } %t550, 0
  %t552 = extractvalue { i64, ptr } %t550, 1
  %t553 = mul i64 %t551, 1
  %t554 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t553)
  call void @llvm.memcpy.p0.p0.i64(ptr %t554, ptr %t552, i64 %t553, i1 false)
  %t555 = insertvalue { i64, ptr } undef, i64 %t551, 0
  %t556 = insertvalue { i64, ptr } %t555, ptr %t554, 1
  %t557 = load { i64, ptr }, ptr %l264, !tbaa !27
  %t559 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoZeroNonNull(ptr %s15, ptr %s15, ptr %s15, { i64, ptr } %t557, { i64, ptr } %t556)
  store %"compiler/diagmsg:Msg" %t559, ptr %l273
  br label %bb115
bb115:
  %t560 = load ptr, ptr %l259, !tbaa !29
  %t561 = load %"compiler/source:Span", ptr %l260
  %t562 = load %"compiler/diagmsg:Msg", ptr %l273
  %t563 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s15, ptr %t560, %"compiler/source:Span" %t561, %"compiler/diagmsg:Msg" %t562)
  store i64 %t563, ptr %l274
  br label %bb116
bb116:
  %t564 = load i64, ptr %l274, !tbaa !24
  %t565 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclNote(ptr %v0, ptr %t565, i64 %t564)
  br label %bb117
bb117:
  %t569 = load ptr, ptr %l0, !tbaa !29
  %t570 = load %"compiler/source:Span", ptr %l1
  %t573 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v1, ptr %t569, %"compiler/source:Span" %t570)
  store ptr %t573, ptr %l279
  br label %bb118
bb118:
  call void @__olang_scope_close(ptr %s15)
  %t574 = load ptr, ptr %l279, !tbaa !29
  store ptr %t574, ptr %rv
  br label %ret
bb119:
  br label %bb120
bb120:
  %t575 = load i64, ptr %l23, !tbaa !24
  %t577 = add i64 %t575, 1
  store i64 %t577, ptr %l23, !tbaa !24
  br label %bb105
bb121:
  %t579 = load ptr, ptr %l0, !tbaa !29
  %t580 = load %"compiler/source:Span", ptr %l1
  %t581 = load i32, ptr %l2, !tbaa !23
  %t582 = load i32, ptr %l21, !tbaa !23
  %t587 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseZero(ptr %v0, ptr %v1, ptr %t579, %"compiler/source:Span" %t580, i32 %t581, i32 %t582)
  store ptr %t587, ptr %l286
  br label %bb122
bb122:
  %t588 = load ptr, ptr %l286, !tbaa !29
  store ptr %t588, ptr %l27, !tbaa !29
  %t589 = load ptr, ptr %l27, !tbaa !29
  %t591 = icmp eq ptr %t589, null
  %t593 = xor i1 %t591, true
  br i1 %t593, label %bb123, label %bb124
bb123:
  %t595 = load ptr, ptr %l27, !tbaa !29
  store ptr %t595, ptr %rv
  br label %ret
bb124:
  br label %bb125
bb125:
  br label %bb126
bb126:
  br label %bb127
bb127:
  %t597 = load ptr, ptr %l0, !tbaa !29
  %t598 = load i32, ptr %l2, !tbaa !23
  %t601 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ezeroCalls(ptr %v0, ptr %t597, i32 %t598)
  store i1 %t601, ptr %l293
  br label %bb128
bb128:
  %t602 = load i1, ptr %l293, !tbaa !21
  br i1 %t602, label %bb129, label %bb130
bb129:
  store %olang.scope zeroinitializer, ptr %s18
  %t603 = load ptr, ptr %l0, !tbaa !29
  %t604 = load i32, ptr %l2, !tbaa !23
  %t607 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectorBody(ptr %v0, ptr %t603, i32 %t604)
  store i64 %t607, ptr %l296
  br label %bb131
bb130:
  br label %bb138
bb131:
  %t608 = load i64, ptr %l296, !tbaa !24
  store i64 %t608, ptr %l28, !tbaa !24
  %t609 = load ptr, ptr %l0, !tbaa !29
  %t611 = getelementptr %"compiler/check:Checker", ptr %t609, i32 0, i32 1
  %t612 = load ptr, ptr %t611, !tbaa !29
  %t614 = getelementptr %"compiler/generic:Program", ptr %t612, i32 0, i32 2
  store ptr %t614, ptr %l299, !tbaa !29
  %t615 = load ptr, ptr %l0, !tbaa !29
  %t617 = getelementptr %"compiler/check:Checker", ptr %t615, i32 0, i32 1
  %t618 = load ptr, ptr %t617, !tbaa !29
  %t620 = getelementptr %"compiler/generic:Program", ptr %t618, i32 0, i32 2
  store ptr %t620, ptr %l302, !tbaa !29
  %t621 = load ptr, ptr %l0, !tbaa !29
  %t623 = getelementptr %"compiler/check:Checker", ptr %t621, i32 0, i32 1
  %t624 = load ptr, ptr %t623, !tbaa !29
  %t625 = load i32, ptr %l2, !tbaa !23
  %t628 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCtorSig(ptr %v0, ptr %t624, i32 %t625)
  store i32 %t628, ptr %l306
  br label %bb132
bb132:
  %t629 = load ptr, ptr %l302, !tbaa !29
  %t630 = load i32, ptr %l306, !tbaa !23
  %t631 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t629, i32 %t630)
  store i32 %t631, ptr %l307
  br label %bb133
bb133:
  %t632 = load ptr, ptr %l299, !tbaa !29
  %t633 = load i32, ptr %l307, !tbaa !23
  %t634 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s18, ptr %t632, i32 %t633)
  store { i64, ptr } %t634, ptr %l308
  br label %bb134
bb134:
  %t635 = load { i64, ptr }, ptr %l308, !tbaa !27
  store { i64, ptr } %t635, ptr %l309, !tbaa !27
  %t636 = getelementptr { i64, ptr }, ptr %l309, i32 0, i32 1
  %t637 = load ptr, ptr %t636, !tbaa !27
  %t638 = getelementptr i32, ptr %t637, i64 0
  %t639 = load i32, ptr %t638, !tbaa !33
  %t641 = load ptr, ptr %l0, !tbaa !29
  store ptr %t641, ptr %l311, !tbaa !29
  %t642 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t642, ptr %l312
  %t643 = load i32, ptr %l2, !tbaa !23
  store i32 %t643, ptr %l313, !tbaa !23
  %t644 = load i64, ptr %l28, !tbaa !24
  store i64 %t644, ptr %l314, !tbaa !24
  %t645 = load ptr, ptr %l0, !tbaa !29
  store ptr %t645, ptr %l315, !tbaa !29
  %t646 = load ptr, ptr %l0, !tbaa !29
  %t647 = load %"compiler/source:Span", ptr %l1
  %t652 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ezero(ptr %v0, ptr %v0, ptr %t646, %"compiler/source:Span" %t647, i32 %t639)
  store ptr %t652, ptr %l319
  br label %bb135
bb135:
  %t653 = load ptr, ptr %l315, !tbaa !29
  %t654 = load ptr, ptr %l319, !tbaa !29
  %t655 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eone(ptr %v0, ptr %v0, ptr %v0, ptr %t653, ptr %t654)
  store { i64, ptr } %t655, ptr %l320
  br label %bb136
bb136:
  %t656 = load ptr, ptr %l311, !tbaa !29
  %t657 = load %"compiler/source:Span", ptr %l312
  %t658 = load i32, ptr %l313, !tbaa !23
  %t659 = load i64, ptr %l314, !tbaa !24
  %t660 = load { i64, ptr }, ptr %l320, !tbaa !27
  %t661 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecallOfBody(ptr %v0, ptr %v0, ptr %v1, ptr %t656, %"compiler/source:Span" %t657, i32 %t658, i64 %t659, { i64, ptr } %t660, i1 true)
  store ptr %t661, ptr %l321
  br label %bb137
bb137:
  call void @__olang_scope_close(ptr %s18)
  %t662 = load ptr, ptr %l321, !tbaa !29
  store ptr %t662, ptr %rv
  br label %ret
bb138:
  %t663 = load ptr, ptr %l0, !tbaa !29
  %t664 = load %"compiler/source:Span", ptr %l1
  %t665 = load i32, ptr %l2, !tbaa !23
  %t669 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v1, ptr %t663, %"compiler/source:Span" %t664, i32 %t665, i64 0)
  store ptr %t669, ptr %l325
  br label %bb139
bb139:
  %t670 = load ptr, ptr %l325, !tbaa !29
  store ptr %t670, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2fcheck_2estoredIf(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/ast:If", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t5 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2estoredExpr(ptr %v0, ptr %v1, ptr %t4, ptr %t5)
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/ast:If", ptr %t8, i32 0, i32 1
  %t11 = load ptr, ptr %t10, !tbaa !29
  %t13 = icmp eq ptr %t11, null
  %t15 = xor i1 %t13, true
  br i1 %t15, label %bb2, label %bb3
bb2:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/ast:If", ptr %t17, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !29
  %t22 = icmp eq ptr %t20, null
  br i1 %t22, label %bb4, label %bb5
bb3:
  br label %bb8
bb4:
  call void @__olang_check_failed(ptr @olang_loc_b4de3dcccf9032b4_264e366d03c66670)
  unreachable
bb5:
  br label %bb6
bb6:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/ast:If", ptr %t24, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !29
  %t30 = getelementptr %"compiler/ast:Branch", ptr %t27, i32 0, i32 1
  %t31 = load { i64, ptr }, ptr %t30, !tbaa !27
  %t32 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2estoredIn(ptr %v0, ptr %v1, { i64, ptr } %t31, ptr %t32)
  br label %bb7
bb7:
  br label %bb8
bb8:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/ast:If", ptr %t35, i32 0, i32 2
  %t38 = load ptr, ptr %t37, !tbaa !29
  %t39 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2estoredStmt(ptr %v0, ptr %v1, ptr %t38, ptr %t39)
  br label %bb9
bb9:
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/check:atRec" @compiler_2fcheck_3aatRec_2ector(ptr %v0, ptr %v1, i64 %a0, i64 %a1, ptr %a2, i32 %a3) #0 {
entry:
  %rv = alloca %"compiler/check:atRec"
  br label %start
start:
  br label %bb0
bb0:
  %t10 = insertvalue %"compiler/check:atRec" undef, i64 %a0, 0
  %t12 = insertvalue %"compiler/check:atRec" %t10, i64 %a1, 1
  %t14 = insertvalue %"compiler/check:atRec" %t12, ptr %a2, 2
  %t16 = insertvalue %"compiler/check:atRec" %t14, i32 %a3, 3
  store %"compiler/check:atRec" %t16, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:atRec", ptr %rv
  ret %"compiler/check:atRec" %rr
}

define dso_local %"compiler/check:factsCopy" @compiler_2fcheck_3afactsCopy_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a0, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a2) #0 {
entry:
  %rv = alloca %"compiler/check:factsCopy"
  br label %start
start:
  br label %bb0
bb0:
  %t8 = insertvalue %"compiler/check:factsCopy" undef, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a0, 0
  %t10 = insertvalue %"compiler/check:factsCopy" %t8, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1, 1
  %t12 = insertvalue %"compiler/check:factsCopy" %t10, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a2, 2
  store %"compiler/check:factsCopy" %t12, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:factsCopy", ptr %rv
  ret %"compiler/check:factsCopy" %rr
}

define dso_local %"compiler/check:reflVal" @compiler_2fcheck_3areflVal_2ector(ptr %v0, ptr %v1, i1 %a0, i64 %a1, i64 %a2, { i64, ptr } %a3, i32 %a4) #0 {
entry:
  %rv = alloca %"compiler/check:reflVal"
  br label %start
start:
  br label %bb0
bb0:
  %t12 = insertvalue %"compiler/check:reflVal" undef, i1 %a0, 0
  %t14 = insertvalue %"compiler/check:reflVal" %t12, i64 %a1, 1
  %t16 = insertvalue %"compiler/check:reflVal" %t14, i64 %a2, 2
  %t18 = insertvalue %"compiler/check:reflVal" %t16, { i64, ptr } %a3, 3
  %t20 = insertvalue %"compiler/check:reflVal" %t18, i32 %a4, 4
  store %"compiler/check:reflVal" %t20, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:reflVal", ptr %rv
  ret %"compiler/check:reflVal" %rr
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
@__olang_empty_array = external constant [16 x i64]
@.d0 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Call" }>, align 8
@.d1 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"call" }>, align 8
@.d2 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Call" }>, align 8
define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0) #0 {
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

@.d3 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d4 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"s" }>, align 8
@olang_2esole_2ecompiler_2fcheck_3aframe_2e4 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
declare void @__olang_region_drop(ptr) noinline
@.d5 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"main" }>, align 8
@.d6 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"__olang_" }>, align 8
@olang_2esole_2ecompiler_2ftyped_3aClause_2e1 = weak hidden constant i1 false
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
@.d7 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"E31b " }>, align 8
@.d8 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"@" }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
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
@.d9 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"copy" }>, align 8
@.d10 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"place" }>, align 8
@.d11 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d12 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"copy" }>, align 8
@.d13 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d14 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d15 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"operator method" }>, align 8
@.d16 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d17 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d18 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"unique" }>, align 8
@.d19 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d20 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d21 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"immut" }>, align 8
@.d22 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"F64" }>, align 8
@.d23 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"U64" }>, align 8
@.d24 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I32" }>, align 8
@.d25 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I32" }>, align 8
@.d26 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"U64" }>, align 8
@.d27 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"F64" }>, align 8
declare void @__olang_bang_failed_plain(ptr) cold noreturn
@.d28 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"a function type" }>, align 8
@.d29 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"an any" }>, align 8
@.d30 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"an extern type" }>, align 8
@.d31 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d32 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d33 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"an array" }>, align 8
@.d34 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"a function type" }>, align 8
@.d35 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"no struct or enum" }>, align 8
declare ptr @__olang_scope_of(ptr, ptr) noinline
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
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_93067ddbc597bc89_6a29d3985cd7da15 = external constant [0 x i8]
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeEntry(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclFor(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
@G_2ecompiler_2ftypes_2eVoidT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epush(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, i32 %a3, i32 %a4)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSelfType(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_4ca20213168bb222_5f3ef72c14b39e6e = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v0, ptr %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eownerWritten(ptr %v0, ptr %a0, i64 %a1, i32 %a2, %"compiler/source:Span" %a3)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %a0)
@olang_loc_655cd9fc1ffcaf3a_248026af04f8d7e6 = external constant [0 x i8]
declare i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %a0)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFuncNullable(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v0, ptr %a0)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fcheck_2ebangOf(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReadMaybeNull(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, %"compiler/diagmsg:Msg" %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNonNull(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_c23231398495940d_3184fca2d3133de9 = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecallBody(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i32 %a3, ptr %a4, i64 %a5, ptr %a6, { i64, ptr } %a7, { i64, ptr } %a8)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprivateRole(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, i32 %a2, { i64, ptr } %a3, %"compiler/source:Span" %a4, { i64, ptr } %a5)
@olang_loc_dec816aeadd109e0_adcbe0bcced90c1c = external constant [0 x i8]
@olang_loc_98ffdf46f6e43303_7907d8ed59f5817f = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einvoke(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i64 %a3, ptr %a4, { i64, ptr } %a5, { i64, ptr } %a6, { i64, ptr } %a7)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v1, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_4b3a1421aaa5396_3ffde41a88bcce4a = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eJoinPieceCalled(ptr %v0)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextType(ptr %v0, ptr %a0)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopAfter(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i64 %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNotCallable(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitLike(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
@G_2ecompiler_2ftypes_2eNullT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\0F\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eNoreturnT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\11\00\00\00" }>, align 8
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efirstValueType(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eCount(ptr %v0, ptr %a0)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eHold(ptr %v0, ptr %a0)
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3)
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eEndHold(ptr %v0, ptr %a0)
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eChoose(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eDrop(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ematchValueMismatch(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i32 %a3, ptr %a4)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %v0, i64 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eleft(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eTruncate_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eColumnsRow(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v1, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisStruct(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %a0, i32 %a1)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/typed:Local" @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eLocal(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFieldNames(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fnumber_2eI64_2eMin_3cI64_3e(i64 %a0, i64 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalType(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2fcheck_2eRoStored = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroStore(ptr %v0, ptr %v1, ptr %a0, ptr %a1, %"compiler/source:Span" %a2, i64 %a3)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eone(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i64 %a2)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esite(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
declare %"compiler/typed:Make" @compiler_2ftyped_3aMake_2ector(ptr %v0, ptr %v1, ptr %v2, i32 %a0, i64 %a1, { i64, ptr } %a2, ptr %a3, i32 %a4, i32 %a5, i1 %a6)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocal(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2, i32 %a3, i32 %a4, { i64, [1 x i64] } %a5)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2ePush_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropOnExit(ptr %v0, ptr %a0, i64 %a1, %"compiler/source:Span" %a2, i1 %a3)
declare i1 @compiler_2fcheck_2eisCallExpr(ptr %v0, ptr %a0)
@olang_loc_f8af5d5c89bab054_38683d7e2233a658 = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectorDefault(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i64 %a2, i32 %a3)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eArgCount(ptr %v0, ptr %v1, i64 %a0, { i64, ptr } %a1, i64 %a2)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnContext(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2)
@olang_loc_573d6efe4eadca3f_fa49b5af8bd78213 = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexprTo(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edefaultReads(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/check:factsCopy" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efactsCopied(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_45d73a08c1eee64c_a811f88d32b1fa78 = external constant [0 x i8]
declare %"compiler/check:factsMark" @compiler_2fcheck_3afactsMark_2ector(ptr %v0, i64 %a0, i64 %a1, i64 %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ekillAssigned(ptr %v0, ptr %v1, ptr %a0, %"compiler/check:factsMark" %a1, { i64, ptr } %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %a0)
declare { i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopen(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclose(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, i64 %a3, i64 %a4)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efactsRestored(ptr %v0, ptr %v1, ptr %a0, %"compiler/check:factsCopy" %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrMask(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eExportMethod(ptr %v0)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2)
declare i64 @compiler_2fgeneric_2eFnOwner(i64 %a0)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eExportGeneric(ptr %v0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eExportName(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexportParam(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eExportType(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexportArray(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eExportResult(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecNumber(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eBoolT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eforeignRef(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePacked(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eholdsFloat(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplainStruct(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anullNarrow_3e_2eLen_H4b13e48b0a317e727dbe35330ad8712a(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anarrowed_3e_2eLen_3ccompiler_2fcheck_3anarrowed_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aerrNarrow_3e_2eLen__H3cdfcddd9c493bd8bcefc7b766e0438b(ptr %v0, ptr %a0)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econvWords(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i64 %a3)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/typed:Seq" @compiler_2ftyped_3aSeq_2ector(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, ptr %a1, i1 %a2)
@olang_loc_ce45aa27b33b13c4_efb6d2bad65aad00 = external constant [0 x i8]
declare %"compiler/typed:Clause" @compiler_2ftyped_3aClause_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, %"compiler/source:Span" %a0, { i64, ptr } %a1, i1 %a2, ptr %a3, { i64, ptr } %a4, i64 %a5, i32 %a6)
declare %"compiler/typed:Try" @compiler_2ftyped_3aTry_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i1 %a2, i1 %a3, i1 %a4)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efileIdentity(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6b5ccacad8db807339a3579aa8c82ff8(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @compiler_2ffacts_2ecompiler_2ffacts_3aTable_2eDecide(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, i1 %a3)
declare { i32, { i64, ptr } } @compiler_2ffacts_2ecompiler_2ffacts_3aTable_2eRead(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, { i64, ptr } %a2)
@olang_loc_a6a18c8586cf83c4_fafef84db4cc6ad8 = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLambdaResultUninferable(ptr %v0)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einferred(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i1 %a3)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eTuple(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efield(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, ptr %a3, i32 %a4)
declare %"compiler/check:laneNode" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alaneNode_3e_2eAt_3ccompiler_2fcheck_3alaneNode_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@G_2ecompiler_2fcheck_2eLaneArr = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fcheck_2eLaneScalar = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eExtends(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2fcheck_2eLaneBin = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
declare { i64, ptr } @compiler_2fcheck_2eoperatorName(ptr %v0, i32 %a0)
declare %"compiler/check:litv" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efold(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_742d7ba0854a02e0_30f006efbe908ac = external constant [0 x i8]
declare %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i1 @compiler_2fnames_2eLoneCatchName(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enamesTypeVar(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewrittenRefOrVar(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_5a62b0635aab9a02_96142af7f6ac351e = external constant [0 x i8]
@olang_loc_3bd31798abdf2684_ea9ddda83177a8c8 = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erefWritten(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMutOnValueType(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_7a28fcbf35f9c2ea_43c4b143baba89fe = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNamedArgThroughValue(ptr %v0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNamedArgNotHere(ptr %v0)
@olang_loc_4e5845802cf8d66b_a292c07c3dfd6e9f = external constant [0 x i8]
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eClosed(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDefaultMethod(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enameSpan(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eOverrideSignature(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fcheck_3arawTable_2_H63c69eede5e7cc65b54d8ce1ed292a98(ptr %v0, ptr %a0, i64 %a1)
declare { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fcheck_3arawTable_2_Hc06038cfd2a883d900a989353ba26a88(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_4c4a12b05c2c1d31_444cdf7465594545 = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erawTable(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i1 %a2)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fcheck_3arawTable_2_Hfe32448d245bb62a962210add151a121(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fast_3aPattern_26_3e_26_3e_2ector(ptr %v0, i64 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fast_3aPattern_26_3e_H06f4ae43b564aa38800728c5b9a6edfe(ptr %v0, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fast_3aPattern_26_3e_Hb04d670045d084ea2498d9030c4fbba9(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epatWild(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_e4bef59f129059d8_aff2623e63fdc5dc = external constant [0 x i8]
declare { i64, ptr } @compiler_2fcheck_2epatTail(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1, i64 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fast_3aPattern_26_3e_H19842cc3f9f17801919cd111c108caa0(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eshapeOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPattern_26_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPattern_26_3e_2ePush_3ccompiler_2fast_3aPattern_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aPattern_2eSpan(ptr %v0, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPattern_26_3e_2eToArr_H3d785ef7fade1f29078b6e80f1d617ba(ptr %v0, ptr %v1, ptr %a0)
declare { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eat(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteProtocolSpelling(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, [3 x i64] } %a2, %"compiler/diagmsg:Msg" %a3)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eknownInt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConst(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i1 @compiler_2fcheck_2esameRead(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_559e4e58cbe133ef_379910d256e310bb = external constant [0 x i8]
@olang_loc_3abf79bd2d930994_9d8386a02bbd2360 = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etopSetIn(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, { i64, ptr } %a2, i32 %a3, %"compiler/source:Span" %a4, i1 %a5)
@olang_loc_f6b550b5113b54a3_3cc66520eb17207f = external constant [0 x i8]
@olang_loc_32bdab6b89cf3022_40afc1dcc9405bce = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euniqueOn(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUniqueKind(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eoverImmut(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUniqueImmut(ptr %v0)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eGenerational(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eGenUnique(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eImmut(ptr %v0, ptr %a0, i32 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2efieldSpans(ptr %v0, ptr %v1, ptr %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eimmutHoldsUnique(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eEnds(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDestructNotUnique(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnique(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUniqueImmutPart(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_70c8011105e0c36f_6781db067586194b = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econvert(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i32 %a3)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eargSpan(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eVarArgWide(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsFloat(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eVarArgType(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/generic:AnyTable" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3aAnyTable_3e_2eAt__He9601a52fe5cfa5abe1b41d520aed001(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSlotKey(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fdiag_3aWhere_3e_2e_Had7920a3eff3220b2e12299d961f9124(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2ftyped_3aBody_2ector(ptr %out, ptr %v0, i32 %a0, { i64, [2 x i64] } %a1, i32 %a2, i64 %a3, %"compiler/source:Span" %a4)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_H84397c9e89cd48160670049091ea20f1(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eRemoveAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_73788fcff98f9805_b41ea2f3f6de2ed1 = external constant [0 x i8]
@olang_loc_c2b8ccded0b87422_4b497586bdf0fd3e = external constant [0 x i8]
@olang_loc_c457ecfc87e57822_ebd31f6668a566ee = external constant [0 x i8]
@olang_loc_c596147ee3c3620c_9098292257d7bbb8 = external constant [0 x i8]
@olang_loc_cde66c6c8e102014_3203f82d8b2f03c0 = external constant [0 x i8]
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v0, ptr %a0)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eWeakField(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enewInstance(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eWeakFresh(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_66d123f9d043212d_a02c798f90017b81 = external constant [0 x i8]
@olang_loc_f342226b8bcffe86_cb7cec1b8bc140d2 = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eforeignNamed(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisEnum(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_a797700ef8100967_b92f0bde838bc4d3 = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eneverNull(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOrNull(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoZeroNonNull(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclNote(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enullableArray(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enullOf(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectorBody(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCtorSig(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_39114b2b59f3c1de_f97787d703923df2 = external constant [0 x i8]
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeDecl(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_bfa34a8929429713_51639094391671e7 = external constant [0 x i8]
@olang_loc_37a2617a6fdca52f_9113ce984ee2ba6b = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehole(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
@olang_loc_cffeba9c7beed71d_692ce8f7e2902011 = external constant [0 x i8]
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclModule(ptr %v0, ptr %a0, i32 %a1)
declare { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emarkAt(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecallOfBody(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i64 %a3, { i64, ptr } %a4, i1 %a5)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCaseSig(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseZero(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i32 %a3)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ezeroCalls(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fcheck_2estoredExpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_b4de3dcccf9032b4_264e366d03c66670 = external constant [0 x i8]
declare void @compiler_2fcheck_2estoredIn(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1)
declare void @compiler_2fcheck_2estoredStmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)

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
