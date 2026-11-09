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
%"compiler/ast:Catch" = type { %"compiler/source:Span", { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i32, %"compiler/source:Span" }
%"compiler/source:Span" = type { i32, i32 }
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr } }
%"compiler/check:Checker" = type { ptr, ptr, i1, i1, i1, i1, i64, i64, i1, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, { i64, [3 x i64] }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i32, i64, %"compiler/source:Span", i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/source:Span", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i32, i1, i1, %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, i32, i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, i64, i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/text:StringBuilder", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/check:altsCovered" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, i1 }
%"compiler/ast:Match" = type { %"compiler/source:Span", ptr, i1, { i64, ptr } }
%"compiler/check:frame" = type { i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/generic:Context", i32, i32, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i32, i64, i64, i64, i1, i64, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, i64, i64, i64, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/source:Span", i64, i1 }
%"compiler/generic:Context" = type { i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/ast:Case" = type { %"compiler/source:Span", { i64, ptr }, { i64, ptr }, ptr, { i64, ptr }, ptr }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/ast:Func" = type { %"compiler/source:Span", ptr, i32, ptr, { i64, ptr }, { i64, ptr }, i1, i1, { i64, ptr }, ptr, i32 }
%"compiler/ast:Param" = type { %"compiler/source:Span", i32, ptr, ptr, { i64, ptr } }
%"compiler/ast:Sig" = type { { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, i1, ptr, i1, i1, { i64, ptr } }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" = type { { ptr, ptr } }
%"compiler/ast:TypeDecl" = type { i32, { i64, ptr }, i1, ptr, { i64, ptr }, i32, i1 }
%"compiler/ast:VarDecl" = type { { i64, ptr }, { i64, ptr }, ptr, { i64, ptr }, i1, i1, { i64, ptr }, i1 }
%"compiler/ast:CaseDecl" = type { %"compiler/source:Span", i32, { i64, ptr }, i1, ptr, { i64, ptr } }
%"compiler/generic:Binding" = type { i64, i64, { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/typed:Local" = type { i32, %"compiler/source:Span", i32, i32, i32, { i64, [1 x i64] }, i1, i1 }
%"compiler/typed:Elem" = type { ptr, ptr, i32 }
%"compiler/typed:Payload" = type { ptr, i64, i32 }
%"compiler/names:Ref" = type { i32, i64, i64 }
%"compiler/check:fixedInit" = type { ptr, i32 }
%"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" = type { i64, i64 }
%"std/pair:Pair.1eb2466213689e002f25e81e83536e78" = type { i64, ptr }
%"compiler/ast:ForIn" = type { i32, i32, ptr, i1, { i64, ptr }, { i64, ptr }, i1 }
%"compiler/typed:Call" = type { ptr, { i64, ptr }, i32, i1, i1 }
%"compiler/check:litv" = type { i1, i1, i1, i64, double, i1, i1, i1, i128 }
%"compiler/check:roFn" = type { i64, i64, { i64, [3 x i64] }, { i64, ptr } }
define dso_local i1 @compiler_2fcheck_2eclausesAssign(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca ptr
  %l17 = alloca { i64, ptr }
  %l23 = alloca i1
  %l24 = alloca i1
  %l28 = alloca i1
  %rv = alloca i1
  store { i64, ptr } %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp eq i64 %t3, 0
  br i1 %t5, label %bb1, label %bb2
bb1:
  store i1 false, ptr %rv
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
  br label %bb17
bb6:
  br label %bb7
bb7:
  %t22 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t22, ptr %l17, !tbaa !27
  %t23 = load i64, ptr %l3, !tbaa !24
  %t25 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !27
  %t27 = getelementptr ptr, ptr %t26, i64 %t23
  %t28 = load ptr, ptr %t27, !tbaa !39
  store ptr %t28, ptr %l5, !tbaa !29
  %t30 = load ptr, ptr %l5, !tbaa !29
  %t32 = getelementptr %"compiler/ast:Catch", ptr %t30, i32 0, i32 2
  %t33 = load { i64, ptr }, ptr %t32, !tbaa !27
  %t34 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t37 = call i1 @compiler_2fcheck_2eassignsName(ptr %v0, ptr %v1, { i64, ptr } %t33, { i64, ptr } %t34)
  store i1 %t37, ptr %l23
  br label %bb8
bb8:
  %t38 = load i1, ptr %l23, !tbaa !21
  br i1 %t38, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l24, !tbaa !21
  br label %bb12
bb10:
  %t39 = load ptr, ptr %l5, !tbaa !29
  %t41 = getelementptr %"compiler/ast:Catch", ptr %t39, i32 0, i32 3
  %t42 = load { i64, ptr }, ptr %t41, !tbaa !27
  %t43 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t46 = call i1 @compiler_2fcheck_2eexprsAssign(ptr %v0, ptr %v1, { i64, ptr } %t42, { i64, ptr } %t43)
  store i1 %t46, ptr %l28
  br label %bb11
bb11:
  %t47 = load i1, ptr %l28, !tbaa !21
  store i1 %t47, ptr %l24, !tbaa !21
  br label %bb12
bb12:
  %t48 = load i1, ptr %l24, !tbaa !21
  br i1 %t48, label %bb13, label %bb14
bb13:
  store i1 true, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  br label %bb16
bb16:
  %t50 = load i64, ptr %l3, !tbaa !24
  %t52 = add i64 %t50, 1
  store i64 %t52, ptr %l3, !tbaa !24
  br label %bb4
bb17:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eInfersErrors(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l4 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einfersErrs(ptr %v0, ptr %a0, i32 %a1)
  store i1 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i1, ptr %l4, !tbaa !21
  store i1 %t6, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earrayCall(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, { i64, ptr } %a3, i32 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca ptr
  %l7 = alloca i32
  %l11 = alloca i1
  %l15 = alloca ptr
  %l16 = alloca %"compiler/source:Span"
  %l19 = alloca %"compiler/diagmsg:Msg"
  %l20 = alloca i64
  %l23 = alloca ptr
  %l26 = alloca i1
  %l31 = alloca ptr
  %l35 = alloca i32
  %l43 = alloca ptr
  %l46 = alloca i1
  %l48 = alloca i1
  %l57 = alloca ptr
  %l59 = alloca { i64, ptr }
  %l63 = alloca ptr
  %l66 = alloca i32
  %l71 = alloca i32
  %l74 = alloca i1
  %l79 = alloca i32
  %l81 = alloca i1
  %l84 = alloca ptr
  %l89 = alloca i32
  %l92 = alloca ptr
  %l95 = alloca i32
  %l96 = alloca i32
  %l97 = alloca i1
  %l105 = alloca ptr
  %l109 = alloca ptr
  %l110 = alloca %"compiler/source:Span"
  %l111 = alloca i32
  %l112 = alloca { i64, ptr }
  %l113 = alloca i32
  %l114 = alloca ptr
  %l115 = alloca ptr
  %l116 = alloca i32
  %l117 = alloca { i64, ptr }
  %l119 = alloca %"compiler/source:Span"
  %l120 = alloca ptr
  %l122 = alloca ptr
  %l123 = alloca ptr
  %l124 = alloca { i64, ptr }
  %l125 = alloca ptr
  %l127 = alloca i32
  %l128 = alloca ptr
  %l131 = alloca ptr
  %s1 = alloca %olang.scope
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  store i32 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp slt i64 %t3, 1
  br i1 %t5, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l11, !tbaa !21
  br label %bb3
bb2:
  %t7 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t7, 0
  %t11 = icmp sgt i64 %t9, 2
  store i1 %t11, ptr %l11, !tbaa !21
  br label %bb3
bb3:
  %t13 = load i1, ptr %l11, !tbaa !21
  br i1 %t13, label %bb4, label %bb5
bb4:
  store %olang.scope zeroinitializer, ptr %s1
  %t14 = load ptr, ptr %l0, !tbaa !29
  store ptr %t14, ptr %l15, !tbaa !29
  %t15 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t15, ptr %l16
  %t16 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t18 = extractvalue { i64, ptr } %t16, 0
  %t20 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eArgCountRange(ptr %s1, i64 1, i64 2, i64 %t18)
  store %"compiler/diagmsg:Msg" %t20, ptr %l19
  br label %bb6
bb5:
  br label %bb9
bb6:
  %t21 = load ptr, ptr %l15, !tbaa !29
  %t22 = load %"compiler/source:Span", ptr %l16
  %t23 = load %"compiler/diagmsg:Msg", ptr %l19
  %t24 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s1, ptr %t21, %"compiler/source:Span" %t22, %"compiler/diagmsg:Msg" %t23)
  store i64 %t24, ptr %l20
  br label %bb7
bb7:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t26 = load %"compiler/source:Span", ptr %l1
  %t29 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t25, %"compiler/source:Span" %t26)
  store ptr %t29, ptr %l23
  br label %bb8
bb8:
  call void @__olang_scope_close(ptr %s1)
  %t30 = load ptr, ptr %l23, !tbaa !29
  store ptr %t30, ptr %rv
  br label %ret
bb9:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load ptr, ptr %l2, !tbaa !29
  %t35 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emutOnValue(ptr %v0, ptr %v1, ptr %t31, ptr %t32)
  store i1 %t35, ptr %l26
  br label %bb10
bb10:
  %t36 = load i1, ptr %l26, !tbaa !21
  br i1 %t36, label %bb11, label %bb12
bb11:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load { i64, ptr }, ptr %l3, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v2, ptr %t37, { i64, ptr } %t38)
  br label %bb13
bb12:
  br label %bb15
bb13:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t42 = load %"compiler/source:Span", ptr %l1
  %t45 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t41, %"compiler/source:Span" %t42)
  store ptr %t45, ptr %l31
  br label %bb14
bb14:
  %t46 = load ptr, ptr %l31, !tbaa !29
  store ptr %t46, ptr %rv
  br label %ret
bb15:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t48 = load ptr, ptr %l2, !tbaa !29
  %t52 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eresolve(ptr %v0, ptr %v1, ptr %t47, ptr %t48)
  store i32 %t52, ptr %l35
  br label %bb16
bb16:
  %t53 = load i32, ptr %l35, !tbaa !23
  store i32 %t53, ptr %l5, !tbaa !23
  %t54 = load i32, ptr %l5, !tbaa !23
  %t55 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t58 = icmp eq i32 %t54, %t55
  br i1 %t58, label %bb17, label %bb18
bb17:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t61 = load { i64, ptr }, ptr %l3, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v2, ptr %t60, { i64, ptr } %t61)
  br label %bb19
bb18:
  br label %bb21
bb19:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t65 = load %"compiler/source:Span", ptr %l1
  %t68 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t64, %"compiler/source:Span" %t65)
  store ptr %t68, ptr %l43
  br label %bb20
bb20:
  %t69 = load ptr, ptr %l43, !tbaa !29
  store ptr %t69, ptr %rv
  br label %ret
bb21:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t71 = load i32, ptr %l5, !tbaa !23
  %t74 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erunArrayValue(ptr %v0, ptr %t70, i32 %t71)
  store i1 %t74, ptr %l46
  br label %bb22
bb22:
  %t75 = load i1, ptr %l46, !tbaa !21
  %t76 = xor i1 %t75, true
  br i1 %t76, label %bb23, label %bb24
bb23:
  store i1 true, ptr %l48, !tbaa !21
  br label %bb25
bb24:
  %t78 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t80 = extractvalue { i64, ptr } %t78, 0
  %t82 = icmp ne i64 %t80, 2
  store i1 %t82, ptr %l48, !tbaa !21
  br label %bb25
bb25:
  %t84 = load i1, ptr %l48, !tbaa !21
  br i1 %t84, label %bb26, label %bb27
bb26:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t86 = load %"compiler/source:Span", ptr %l1
  %t87 = load i32, ptr %l5, !tbaa !23
  %t88 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t89 = load i32, ptr %l4, !tbaa !23
  %t95 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earrayMake(ptr %v0, ptr %v2, ptr %v0, ptr %v3, ptr %t85, %"compiler/source:Span" %t86, i32 %t87, { i64, ptr } %t88, i32 %t89, ptr null)
  store ptr %t95, ptr %l57
  br label %bb28
bb27:
  br label %bb29
bb28:
  %t96 = load ptr, ptr %l57, !tbaa !29
  store ptr %t96, ptr %rv
  br label %ret
bb29:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t98 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t98, ptr %l59, !tbaa !27
  %t99 = getelementptr { i64, ptr }, ptr %l59, i32 0, i32 1
  %t100 = load ptr, ptr %t99, !tbaa !27
  %t101 = getelementptr ptr, ptr %t100, i64 1
  %t102 = load ptr, ptr %t101, !tbaa !39
  %t104 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t108 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v2, ptr %v3, ptr %t97, ptr %t102, i32 %t104)
  store ptr %t108, ptr %l63
  br label %bb30
bb30:
  %t109 = load ptr, ptr %l63, !tbaa !29
  store ptr %t109, ptr %l6, !tbaa !29
  %t110 = load ptr, ptr %l6, !tbaa !29
  %t113 = call i32 @compiler_2fcheck_2etypeOf(ptr %v3, ptr %t110)
  store i32 %t113, ptr %l66
  br label %bb31
bb31:
  %t114 = load i32, ptr %l66, !tbaa !23
  store i32 %t114, ptr %l7, !tbaa !23
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t117 = getelementptr %"compiler/check:Checker", ptr %t115, i32 0, i32 1
  %t118 = load ptr, ptr %t117, !tbaa !29
  %t120 = getelementptr %"compiler/generic:Program", ptr %t118, i32 0, i32 2
  %t121 = load i32, ptr %l7, !tbaa !23
  %t124 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t120, i32 %t121)
  store i32 %t124, ptr %l71
  br label %bb32
bb32:
  %t125 = load i32, ptr %l71, !range !{i32 0, i32 33}
  %t127 = trunc i64 19 to i32
  %t128 = icmp eq i32 %t125, %t127
  br i1 %t128, label %bb33, label %bb34
bb33:
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t132 = getelementptr %"compiler/check:Checker", ptr %t130, i32 0, i32 1
  %t133 = load ptr, ptr %t132, !tbaa !29
  %t135 = getelementptr %"compiler/generic:Program", ptr %t133, i32 0, i32 2
  %t136 = load i32, ptr %l7, !tbaa !23
  %t139 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t135, i32 %t136)
  store i32 %t139, ptr %l79
  br label %bb35
bb34:
  store i1 false, ptr %l74, !tbaa !21
  br label %bb36
bb35:
  %t140 = load i32, ptr %l79, !tbaa !23
  %t141 = icmp ne i32 %t140, 0
  store i1 %t141, ptr %l74, !tbaa !21
  br label %bb36
bb36:
  %t143 = load i1, ptr %l74, !tbaa !21
  br i1 %t143, label %bb37, label %bb38
bb37:
  %t144 = load ptr, ptr %l0, !tbaa !29
  %t146 = getelementptr %"compiler/check:Checker", ptr %t144, i32 0, i32 1
  %t147 = load ptr, ptr %t146, !tbaa !29
  %t149 = getelementptr %"compiler/generic:Program", ptr %t147, i32 0, i32 2
  store ptr %t149, ptr %l84, !tbaa !29
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t152 = getelementptr %"compiler/check:Checker", ptr %t150, i32 0, i32 1
  %t153 = load ptr, ptr %t152, !tbaa !29
  %t155 = getelementptr %"compiler/generic:Program", ptr %t153, i32 0, i32 2
  %t156 = load i32, ptr %l7, !tbaa !23
  %t159 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t155, i32 %t156)
  store i32 %t159, ptr %l89
  br label %bb39
bb38:
  store i1 false, ptr %l81, !tbaa !21
  br label %bb43
bb39:
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t162 = getelementptr %"compiler/check:Checker", ptr %t160, i32 0, i32 1
  %t163 = load ptr, ptr %t162, !tbaa !29
  %t165 = getelementptr %"compiler/generic:Program", ptr %t163, i32 0, i32 2
  store ptr %t165, ptr %l92, !tbaa !29
  %t166 = load ptr, ptr %l0, !tbaa !29
  %t167 = load i32, ptr %l5, !tbaa !23
  %t170 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %t166, i32 %t167)
  store i32 %t170, ptr %l95
  br label %bb40
bb40:
  %t171 = load ptr, ptr %l92, !tbaa !29
  %t172 = load i32, ptr %l95, !tbaa !23
  %t173 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t171, i32 %t172)
  store i32 %t173, ptr %l96
  br label %bb41
bb41:
  %t174 = load ptr, ptr %l84, !tbaa !29
  %t175 = load i32, ptr %l89, !tbaa !23
  %t176 = load i32, ptr %l96, !tbaa !23
  %t177 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t174, i32 %t175, i32 %t176)
  store i1 %t177, ptr %l97
  br label %bb42
bb42:
  %t178 = load i1, ptr %l97, !tbaa !21
  store i1 %t178, ptr %l81, !tbaa !21
  br label %bb43
bb43:
  %t179 = load i1, ptr %l81, !tbaa !21
  br i1 %t179, label %bb44, label %bb45
bb44:
  %t180 = load ptr, ptr %l0, !tbaa !29
  %t181 = load %"compiler/source:Span", ptr %l1
  %t182 = load i32, ptr %l7, !tbaa !23
  %t183 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t184 = load i32, ptr %l4, !tbaa !23
  %t185 = load ptr, ptr %l6, !tbaa !29
  %t193 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earrayMake(ptr %v0, ptr %v2, ptr %v3, ptr %v3, ptr %t180, %"compiler/source:Span" %t181, i32 %t182, { i64, ptr } %t183, i32 %t184, ptr %t185)
  store ptr %t193, ptr %l105
  br label %bb46
bb45:
  br label %bb47
bb46:
  %t194 = load ptr, ptr %l105, !tbaa !29
  store ptr %t194, ptr %rv
  br label %ret
bb47:
  %t195 = load i32, ptr %l7, !tbaa !23
  %t196 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t199 = icmp ne i32 %t195, %t196
  br i1 %t199, label %bb48, label %bb49
bb48:
  %t201 = load ptr, ptr %l0, !tbaa !29
  store ptr %t201, ptr %l109, !tbaa !29
  %t202 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t202, ptr %l110
  %t203 = load i32, ptr %l5, !tbaa !23
  store i32 %t203, ptr %l111, !tbaa !23
  %t204 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t204, ptr %l112, !tbaa !27
  %t205 = load i32, ptr %l4, !tbaa !23
  store i32 %t205, ptr %l113, !tbaa !23
  %t206 = load ptr, ptr %l0, !tbaa !29
  store ptr %t206, ptr %l114, !tbaa !29
  %t207 = load ptr, ptr %l6, !tbaa !29
  store ptr %t207, ptr %l115, !tbaa !29
  %t208 = load i32, ptr %l5, !tbaa !23
  store i32 %t208, ptr %l116, !tbaa !23
  %t209 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t209, ptr %l117, !tbaa !27
  %t210 = getelementptr { i64, ptr }, ptr %l117, i32 0, i32 1
  %t211 = load ptr, ptr %t210, !tbaa !27
  %t212 = getelementptr ptr, ptr %t211, i64 1
  %t213 = load ptr, ptr %t212, !tbaa !39
  %t215 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %t213)
  store %"compiler/source:Span" %t215, ptr %l119
  br label %bb50
bb49:
  br label %bb53
bb50:
  %t216 = load ptr, ptr %l114, !tbaa !29
  %t217 = load ptr, ptr %l115, !tbaa !29
  %t218 = load i32, ptr %l116, !tbaa !23
  %t219 = load %"compiler/source:Span", ptr %l119
  %t220 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v3, ptr %v0, ptr %t216, ptr %t217, i32 %t218, %"compiler/source:Span" %t219)
  store ptr %t220, ptr %l120
  br label %bb51
bb51:
  %t221 = load ptr, ptr %l120, !tbaa !29
  %t222 = load ptr, ptr %l109, !tbaa !29
  %t223 = load %"compiler/source:Span", ptr %l110
  %t224 = load i32, ptr %l111, !tbaa !23
  %t225 = load { i64, ptr }, ptr %l112, !tbaa !27
  %t226 = load i32, ptr %l113, !tbaa !23
  %t228 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earrayMake(ptr %v0, ptr %v2, ptr %v0, ptr %v3, ptr %t222, %"compiler/source:Span" %t223, i32 %t224, { i64, ptr } %t225, i32 %t226, ptr %t221)
  store ptr %t228, ptr %l122
  br label %bb52
bb52:
  %t229 = load ptr, ptr %l122, !tbaa !29
  store ptr %t229, ptr %rv
  br label %ret
bb53:
  %t230 = load ptr, ptr %l0, !tbaa !29
  store ptr %t230, ptr %l123, !tbaa !29
  %t231 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t231, ptr %l124, !tbaa !27
  %t232 = getelementptr { i64, ptr }, ptr %l124, i32 0, i32 1
  %t233 = load ptr, ptr %t232, !tbaa !27
  %t234 = getelementptr ptr, ptr %t233, i64 0
  %t235 = load ptr, ptr %t234, !tbaa !39
  store ptr %t235, ptr %l125, !tbaa !29
  %t236 = load ptr, ptr %l0, !tbaa !29
  %t238 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t236)
  store i32 %t238, ptr %l127
  br label %bb54
bb54:
  %t239 = load ptr, ptr %l123, !tbaa !29
  %t240 = load ptr, ptr %l125, !tbaa !29
  %t241 = load i32, ptr %l127, !tbaa !23
  %t242 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexprTo(ptr %v0, ptr %v2, ptr %v0, ptr %t239, ptr %t240, i32 %t241)
  store ptr %t242, ptr %l128
  br label %bb55
bb55:
  %t243 = load ptr, ptr %l0, !tbaa !29
  %t244 = load %"compiler/source:Span", ptr %l1
  %t247 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t243, %"compiler/source:Span" %t244)
  store ptr %t247, ptr %l131
  br label %bb56
bb56:
  %t248 = load ptr, ptr %l131, !tbaa !29
  store ptr %t248, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecallPattern(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, { i64, ptr } %a3, ptr %a4, i32 %a5, i32 %a6) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca %"compiler/source:Span"
  %l8 = alloca ptr
  %l9 = alloca i32
  %l10 = alloca i32
  %lp11 = alloca ptr
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca ptr
  %l16 = alloca ptr
  %l17 = alloca %"compiler/source:Span"
  %l18 = alloca i32
  %l19 = alloca ptr
  %l20 = alloca ptr
  %l21 = alloca i1
  %l32 = alloca i32
  %l35 = alloca i1
  %l36 = alloca i1
  %l39 = alloca i1
  %l44 = alloca i32
  %l49 = alloca i32
  %l53 = alloca ptr
  %l58 = alloca i32
  %l63 = alloca i32
  %l64 = alloca i1
  %l66 = alloca i1
  %l69 = alloca i1
  %l70 = alloca ptr
  %l71 = alloca %"compiler/source:Span"
  %l74 = alloca { i64, ptr }
  %l75 = alloca { i64, ptr }
  %l78 = alloca { i64, ptr }
  %l80 = alloca %"compiler/diagmsg:Msg"
  %l81 = alloca i64
  %l85 = alloca ptr
  %l86 = alloca ptr
  %l87 = alloca %"compiler/source:Span"
  %l90 = alloca { i64, ptr }
  %l92 = alloca %"compiler/source:Span"
  %l96 = alloca %"compiler/diagmsg:Msg"
  %l97 = alloca i64
  %l101 = alloca ptr
  %l102 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l110 = alloca { i64, ptr }
  %l113 = alloca ptr
  %l114 = alloca i1
  %l119 = alloca ptr
  %l120 = alloca i1
  %l127 = alloca ptr
  %l128 = alloca i1
  %l131 = alloca i1
  %l133 = alloca ptr
  %l134 = alloca i1
  %l150 = alloca ptr
  %l152 = alloca %"compiler/source:Span"
  %l156 = alloca ptr
  %l159 = alloca ptr
  %l160 = alloca %"compiler/source:Span"
  %l161 = alloca ptr
  %l162 = alloca %"compiler/source:Span"
  %l163 = alloca ptr
  %l165 = alloca { i64, ptr }
  %l169 = alloca ptr
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %rv = alloca ptr
  %t291 = alloca { i64, [4 x i64] }, align 8
  %t331 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  store i32 %a6, ptr %l6
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  store ptr %t1, ptr %l20, !tbaa !29
  store i1 false, ptr %l21, !tbaa !21
  %t2 = load ptr, ptr %l20, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l20, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 30}
  %t8 = icmp eq i64 %t6, 14
  store i1 %t8, ptr %l21, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l21, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l2, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t12, i32 0, i32 0
  %t14 = load %"compiler/source:Span", ptr %t13
  store %"compiler/source:Span" %t14, ptr %l7
  %t16 = load ptr, ptr %l2, !tbaa !29
  %t18 = getelementptr { i64, [4 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t18, i32 0, i32 1
  %t20 = load ptr, ptr %t19
  store ptr %t20, ptr %l8, !tbaa !29
  %t22 = load ptr, ptr %l2, !tbaa !29
  %t24 = getelementptr { i64, [4 x i64] }, ptr %t22, i32 0, i32 1
  %t25 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t24, i32 0, i32 2
  %t26 = load i32, ptr %t25
  store i32 %t26, ptr %l9, !tbaa !23
  br label %bb5
bb4:
  br label %bb39
bb5:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t29 = load ptr, ptr %l8, !tbaa !29
  %t32 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeNamed(ptr %v0, ptr %v1, ptr %t28, ptr %t29)
  store i32 %t32, ptr %l32
  br label %bb6
bb6:
  %t33 = load i32, ptr %l32, !tbaa !23
  store i32 %t33, ptr %l10, !tbaa !23
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t35 = load i32, ptr %l6, !tbaa !23
  %t38 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisEnum(ptr %v0, ptr %t34, i32 %t35)
  store i1 %t38, ptr %l35
  br label %bb7
bb7:
  %t39 = load i1, ptr %l35, !tbaa !21
  br i1 %t39, label %bb8, label %bb9
bb8:
  %t40 = load i32, ptr %l10, !tbaa !23
  %t42 = icmp sge i32 %t40, 0
  store i1 %t42, ptr %l36, !tbaa !21
  br label %bb10
bb9:
  store i1 false, ptr %l36, !tbaa !21
  br label %bb10
bb10:
  %t44 = load i1, ptr %l36, !tbaa !21
  br i1 %t44, label %bb11, label %bb12
bb11:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/check:Checker", ptr %t45, i32 0, i32 1
  %t48 = load ptr, ptr %t47, !tbaa !29
  %t50 = getelementptr %"compiler/generic:Program", ptr %t48, i32 0, i32 2
  %t51 = load i32, ptr %l10, !tbaa !23
  %t54 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t50, i32 %t51)
  store i32 %t54, ptr %l44
  br label %bb13
bb12:
  store i1 false, ptr %l39, !tbaa !21
  br label %bb15
bb13:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/check:Checker", ptr %t55, i32 0, i32 1
  %t58 = load ptr, ptr %t57, !tbaa !29
  %t60 = getelementptr %"compiler/generic:Program", ptr %t58, i32 0, i32 2
  %t61 = load i32, ptr %l6, !tbaa !23
  %t64 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t60, i32 %t61)
  store i32 %t64, ptr %l49
  br label %bb14
bb14:
  %t65 = load i32, ptr %l44, !tbaa !23
  %t66 = load i32, ptr %l49, !tbaa !23
  %t67 = icmp eq i32 %t65, %t66
  store i1 %t67, ptr %l39, !tbaa !21
  br label %bb15
bb15:
  %t69 = load i1, ptr %l39, !tbaa !21
  br i1 %t69, label %bb16, label %bb17
bb16:
  store %olang.scope zeroinitializer, ptr %s2
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/check:Checker", ptr %t70, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !29
  %t75 = getelementptr %"compiler/generic:Program", ptr %t73, i32 0, i32 2
  store ptr %t75, ptr %l53, !tbaa !29
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = getelementptr %"compiler/check:Checker", ptr %t76, i32 0, i32 1
  %t79 = load ptr, ptr %t78, !tbaa !29
  %t81 = getelementptr %"compiler/generic:Program", ptr %t79, i32 0, i32 2
  %t82 = load i32, ptr %l10, !tbaa !23
  %t85 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t81, i32 %t82)
  store i32 %t85, ptr %l58
  br label %bb18
bb17:
  br label %bb38
bb18:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = getelementptr %"compiler/check:Checker", ptr %t86, i32 0, i32 1
  %t89 = load ptr, ptr %t88, !tbaa !29
  %t91 = getelementptr %"compiler/generic:Program", ptr %t89, i32 0, i32 2
  %t92 = load i32, ptr %l6, !tbaa !23
  %t95 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t91, i32 %t92)
  store i32 %t95, ptr %l63
  br label %bb19
bb19:
  %t96 = load ptr, ptr %l53, !tbaa !29
  %t97 = load i32, ptr %l58, !tbaa !23
  %t98 = load i32, ptr %l63, !tbaa !23
  %t99 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t96, i32 %t97, i32 %t98)
  store i1 %t99, ptr %l64
  br label %bb20
bb20:
  %t100 = load i1, ptr %l64, !tbaa !21
  %t101 = xor i1 %t100, true
  br i1 %t101, label %bb21, label %bb22
bb21:
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t104 = load ptr, ptr %l2, !tbaa !29
  %t107 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseWritten(ptr %v0, ptr %v1, ptr %t103, ptr %t104)
  store i1 %t107, ptr %l69
  br label %bb23
bb22:
  store i1 false, ptr %l66, !tbaa !21
  br label %bb24
bb23:
  %t108 = load i1, ptr %l69, !tbaa !21
  store i1 %t108, ptr %l66, !tbaa !21
  br label %bb24
bb24:
  %t109 = load i1, ptr %l66, !tbaa !21
  br i1 %t109, label %bb25, label %bb26
bb25:
  store %olang.scope zeroinitializer, ptr %s3
  %t110 = load ptr, ptr %l0, !tbaa !29
  store ptr %t110, ptr %l70, !tbaa !29
  %t111 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t111, ptr %l71
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t113 = load i32, ptr %l6, !tbaa !23
  %t116 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s3, ptr %t112, i32 %t113)
  store { i64, ptr } %t116, ptr %l74
  br label %bb27
bb26:
  br label %bb32
bb27:
  %t117 = load { i64, ptr }, ptr %l74, !tbaa !27
  %t118 = extractvalue { i64, ptr } %t117, 0
  %t119 = extractvalue { i64, ptr } %t117, 1
  %t120 = mul i64 %t118, 1
  %t121 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t120)
  call void @llvm.memcpy.p0.p0.i64(ptr %t121, ptr %t119, i64 %t120, i1 false)
  %t122 = insertvalue { i64, ptr } undef, i64 %t118, 0
  %t123 = insertvalue { i64, ptr } %t122, ptr %t121, 1
  store { i64, ptr } %t123, ptr %l75, !tbaa !27
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t125 = load i32, ptr %l10, !tbaa !23
  %t128 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s3, ptr %t124, i32 %t125)
  store { i64, ptr } %t128, ptr %l78
  br label %bb28
bb28:
  %t129 = load { i64, ptr }, ptr %l78, !tbaa !27
  %t130 = extractvalue { i64, ptr } %t129, 0
  %t131 = extractvalue { i64, ptr } %t129, 1
  %t132 = mul i64 %t130, 1
  %t133 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t132)
  call void @llvm.memcpy.p0.p0.i64(ptr %t133, ptr %t131, i64 %t132, i1 false)
  %t134 = insertvalue { i64, ptr } undef, i64 %t130, 0
  %t135 = insertvalue { i64, ptr } %t134, ptr %t133, 1
  %t136 = load { i64, ptr }, ptr %l75, !tbaa !27
  %t138 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCaseValueType(ptr %s3, ptr %s3, ptr %s3, { i64, ptr } %t136, { i64, ptr } %t135)
  store %"compiler/diagmsg:Msg" %t138, ptr %l80
  br label %bb29
bb29:
  %t139 = load ptr, ptr %l70, !tbaa !29
  %t140 = load %"compiler/source:Span", ptr %l71
  %t141 = load %"compiler/diagmsg:Msg", ptr %l80
  %t142 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s3, ptr %t139, %"compiler/source:Span" %t140, %"compiler/diagmsg:Msg" %t141)
  store i64 %t142, ptr %l81
  br label %bb30
bb30:
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t144 = load %"compiler/source:Span", ptr %l1
  %t145 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t149 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v4, ptr %t143, %"compiler/source:Span" %t144, i32 %t145, i64 0)
  store ptr %t149, ptr %l85
  br label %bb31
bb31:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s2)
  %t150 = load ptr, ptr %l85, !tbaa !29
  store ptr %t150, ptr %rv
  br label %ret
bb32:
  %t151 = load ptr, ptr %l0, !tbaa !29
  store ptr %t151, ptr %l86, !tbaa !29
  %t152 = load %"compiler/source:Span", ptr %l7
  store %"compiler/source:Span" %t152, ptr %l87
  %t153 = load ptr, ptr %l0, !tbaa !29
  %t154 = load i32, ptr %l9, !tbaa !23
  %t157 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s2, ptr %t153, i32 %t154)
  store { i64, ptr } %t157, ptr %l90
  br label %bb33
bb33:
  %t158 = load { i64, ptr }, ptr %l90, !tbaa !27
  %t159 = extractvalue { i64, ptr } %t158, 0
  %t160 = load %"compiler/source:Span", ptr %l87
  %t162 = call %"compiler/source:Span" @compiler_2fcheck_2ememberSpan(%"compiler/source:Span" %t160, i64 %t159)
  store %"compiler/source:Span" %t162, ptr %l92
  br label %bb34
bb34:
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t164 = load i32, ptr %l6, !tbaa !23
  %t165 = load i32, ptr %l9, !tbaa !23
  %t169 = call %"compiler/diagmsg:Msg" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enoCase(ptr %v0, ptr %s2, ptr %t163, i32 %t164, i32 %t165)
  store %"compiler/diagmsg:Msg" %t169, ptr %l96
  br label %bb35
bb35:
  %t170 = load ptr, ptr %l86, !tbaa !29
  %t171 = load %"compiler/source:Span", ptr %l92
  %t172 = load %"compiler/diagmsg:Msg", ptr %l96
  %t173 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s2, ptr %t170, %"compiler/source:Span" %t171, %"compiler/diagmsg:Msg" %t172)
  store i64 %t173, ptr %l97
  br label %bb36
bb36:
  %t174 = load ptr, ptr %l0, !tbaa !29
  %t175 = load %"compiler/source:Span", ptr %l1
  %t176 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t180 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v4, ptr %t174, %"compiler/source:Span" %t175, i32 %t176, i64 0)
  store ptr %t180, ptr %l101
  br label %bb37
bb37:
  call void @__olang_scope_close(ptr %s2)
  %t181 = load ptr, ptr %l101, !tbaa !29
  store ptr %t181, ptr %rv
  br label %ret
bb38:
  br label %bb44
bb39:
  br i1 true, label %bb40, label %bb41
bb40:
  br label %bb42
bb41:
  br label %bb43
bb42:
  br label %bb44
bb43:
  call void @__olang_check_failed(ptr @olang_loc_1ea07ba70e71bd73_64b4b6dffcea6d07)
  unreachable
bb44:
  %t182 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2ector(ptr %v4, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t182, ptr %l102
  br label %bb45
bb45:
  %t183 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 32, i64 8)
  store ptr %t183, ptr %lp11
  %t184 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l102
  %t185 = load ptr, ptr %lp11
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t184, ptr %t185
  store { i64, ptr } %a3, ptr %l12, !tbaa !27
  store i64 0, ptr %l13, !tbaa !24
  %t188 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t190 = extractvalue { i64, ptr } %t188, 0
  store i64 %t190, ptr %l14, !tbaa !24
  br label %bb46
bb46:
  %t192 = load i64, ptr %l13, !tbaa !24
  %t193 = load i64, ptr %l14, !tbaa !24
  %t196 = icmp slt i64 %t192, %t193
  %t198 = xor i1 %t196, true
  br i1 %t198, label %bb47, label %bb48
bb47:
  br label %bb82
bb48:
  br label %bb49
bb49:
  %t200 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t200, ptr %l110, !tbaa !27
  %t201 = load i64, ptr %l13, !tbaa !24
  %t203 = getelementptr { i64, ptr }, ptr %l110, i32 0, i32 1
  %t204 = load ptr, ptr %t203, !tbaa !27
  %t205 = getelementptr ptr, ptr %t204, i64 %t201
  %t206 = load ptr, ptr %t205, !tbaa !39
  store ptr %t206, ptr %l15, !tbaa !29
  %t208 = load ptr, ptr %l15, !tbaa !29
  store ptr %t208, ptr %l113, !tbaa !29
  store i1 false, ptr %l114, !tbaa !21
  %t209 = load ptr, ptr %l113, !tbaa !29
  %t210 = icmp ne ptr %t209, null
  br i1 %t210, label %bb50, label %bb51
bb50:
  %t212 = load ptr, ptr %l113, !tbaa !29
  %t213 = load i64, ptr %t212, !range !{i64 0, i64 9}
  %t215 = icmp eq i64 %t213, 4
  store i1 %t215, ptr %l114, !tbaa !21
  br label %bb51
bb51:
  %t216 = load i1, ptr %l114, !tbaa !21
  br i1 %t216, label %bb52, label %bb53
bb52:
  %t217 = load ptr, ptr %l15, !tbaa !29
  %t219 = getelementptr { i64, [4 x i64] }, ptr %t217, i32 0, i32 1
  %t220 = getelementptr { %"compiler/source:Span", ptr }, ptr %t219, i32 0, i32 1
  %t221 = load ptr, ptr %t220
  store ptr %t221, ptr %l16, !tbaa !29
  br label %bb58
bb53:
  %t223 = load ptr, ptr %l15, !tbaa !29
  store ptr %t223, ptr %l119, !tbaa !29
  store i1 false, ptr %l120, !tbaa !21
  %t224 = load ptr, ptr %l119, !tbaa !29
  %t225 = icmp ne ptr %t224, null
  br i1 %t225, label %bb54, label %bb55
bb54:
  %t227 = load ptr, ptr %l119, !tbaa !29
  %t228 = load i64, ptr %t227, !range !{i64 0, i64 9}
  %t230 = icmp eq i64 %t228, 1
  store i1 %t230, ptr %l120, !tbaa !21
  br label %bb55
bb55:
  %t231 = load i1, ptr %l120, !tbaa !21
  br i1 %t231, label %bb56, label %bb57
bb56:
  %t232 = load ptr, ptr %l15, !tbaa !29
  %t234 = getelementptr { i64, [4 x i64] }, ptr %t232, i32 0, i32 1
  %t235 = getelementptr { %"compiler/source:Span", ptr }, ptr %t234, i32 0, i32 1
  %t236 = load ptr, ptr %t235
  store ptr %t236, ptr %l16, !tbaa !29
  br label %bb58
bb57:
  br label %bb60
bb58:
  %t238 = load ptr, ptr %lp11
  %t239 = load ptr, ptr %l16, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2ePush_3ccompiler_2fast_3aExpr_26_3e(ptr %v4, ptr %v2, ptr %t238, ptr %t239)
  br label %bb59
bb59:
  br label %bb80
bb60:
  %t242 = load ptr, ptr %l15, !tbaa !29
  store ptr %t242, ptr %l127, !tbaa !29
  store i1 false, ptr %l128, !tbaa !21
  %t243 = load ptr, ptr %l127, !tbaa !29
  %t244 = icmp ne ptr %t243, null
  br i1 %t244, label %bb61, label %bb62
bb61:
  %t246 = load ptr, ptr %l127, !tbaa !29
  %t247 = load i64, ptr %t246, !range !{i64 0, i64 9}
  %t249 = icmp eq i64 %t247, 8
  store i1 %t249, ptr %l128, !tbaa !21
  br label %bb62
bb62:
  %t250 = load i1, ptr %l128, !tbaa !21
  br i1 %t250, label %bb63, label %bb64
bb63:
  %t251 = load ptr, ptr %l15, !tbaa !29
  %t253 = getelementptr { i64, [4 x i64] }, ptr %t251, i32 0, i32 1
  %t254 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t253, i32 0, i32 2
  %t255 = load ptr, ptr %t254
  store ptr %t255, ptr %l133, !tbaa !29
  store i1 false, ptr %l134, !tbaa !21
  %t256 = load ptr, ptr %l133, !tbaa !29
  %t257 = icmp ne ptr %t256, null
  br i1 %t257, label %bb65, label %bb66
bb64:
  store i1 false, ptr %l131, !tbaa !21
  br label %bb67
bb65:
  %t259 = load ptr, ptr %l133, !tbaa !29
  %t260 = load i64, ptr %t259, !range !{i64 0, i64 9}
  %t262 = icmp eq i64 %t260, 4
  store i1 %t262, ptr %l134, !tbaa !21
  br label %bb66
bb66:
  %t263 = load i1, ptr %l134, !tbaa !21
  store i1 %t263, ptr %l131, !tbaa !21
  br label %bb67
bb67:
  %t264 = load i1, ptr %l131, !tbaa !21
  br i1 %t264, label %bb68, label %bb69
bb68:
  %t265 = load ptr, ptr %l15, !tbaa !29
  %t267 = getelementptr { i64, [4 x i64] }, ptr %t265, i32 0, i32 1
  %t268 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t267, i32 0, i32 0
  %t269 = load %"compiler/source:Span", ptr %t268
  store %"compiler/source:Span" %t269, ptr %l17
  %t271 = load ptr, ptr %l15, !tbaa !29
  %t273 = getelementptr { i64, [4 x i64] }, ptr %t271, i32 0, i32 1
  %t274 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t273, i32 0, i32 1
  %t275 = load i32, ptr %t274
  store i32 %t275, ptr %l18, !tbaa !23
  %t277 = load ptr, ptr %l15, !tbaa !29
  %t279 = getelementptr { i64, [4 x i64] }, ptr %t277, i32 0, i32 1
  %t280 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t279, i32 0, i32 2
  %t281 = load ptr, ptr %t280
  %t283 = getelementptr { i64, [4 x i64] }, ptr %t281, i32 0, i32 1
  %t284 = getelementptr { %"compiler/source:Span", ptr }, ptr %t283, i32 0, i32 1
  %t285 = load ptr, ptr %t284
  store ptr %t285, ptr %l19, !tbaa !29
  br label %bb70
bb69:
  br label %bb72
bb70:
  %t287 = load ptr, ptr %lp11
  %t288 = load %"compiler/source:Span", ptr %l17
  %t289 = load i32, ptr %l18, !tbaa !23
  %t290 = load ptr, ptr %l19, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t291
  %t292 = getelementptr { i64, [4 x i64] }, ptr %t291, i32 0, i32 0
  store i64 26, ptr %t292
  %t294 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t288, 0
  %t296 = insertvalue { %"compiler/source:Span", i32, ptr } %t294, i32 %t289, 1
  %t298 = insertvalue { %"compiler/source:Span", i32, ptr } %t296, ptr %t290, 2
  %t299 = getelementptr { i64, [4 x i64] }, ptr %t291, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t298, ptr %t299
  %t300 = load { i64, [4 x i64] }, ptr %t291
  %t302 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 40, i64 8)
  store { i64, [4 x i64] } %t300, ptr %t302
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2ePush_3ccompiler_2fast_3aExpr_26_3e(ptr %v4, ptr %v4, ptr %t287, ptr %t302)
  br label %bb71
bb71:
  br label %bb80
bb72:
  br i1 true, label %bb73, label %bb74
bb73:
  br label %bb75
bb74:
  br label %bb79
bb75:
  store %olang.scope zeroinitializer, ptr %s9
  %t305 = load ptr, ptr %l0, !tbaa !29
  store ptr %t305, ptr %l150, !tbaa !29
  %t306 = load ptr, ptr %l15, !tbaa !29
  %t308 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aPattern_2eSpan(ptr %v2, ptr %t306)
  store %"compiler/source:Span" %t308, ptr %l152
  br label %bb76
bb76:
  %t309 = load ptr, ptr %l150, !tbaa !29
  %t310 = load %"compiler/source:Span", ptr %l152
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %s9, ptr %t309, %"compiler/source:Span" %t310, { i64, ptr } { i64 46, ptr getelementptr inbounds (<{ i64, [46 x i8] }>, ptr @.d0, i32 0, i32 1) })
  br label %bb77
bb77:
  %t311 = load ptr, ptr %l0, !tbaa !29
  %t312 = load %"compiler/source:Span", ptr %l1
  %t313 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t317 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v4, ptr %t311, %"compiler/source:Span" %t312, i32 %t313, i64 0)
  store ptr %t317, ptr %l156
  br label %bb78
bb78:
  call void @__olang_scope_close(ptr %s9)
  %t318 = load ptr, ptr %l156, !tbaa !29
  store ptr %t318, ptr %rv
  br label %ret
bb79:
  call void @__olang_check_failed(ptr @olang_loc_be381b70f49fc8f2_3328b3c24d360da6)
  unreachable
bb80:
  br label %bb81
bb81:
  %t319 = load i64, ptr %l13, !tbaa !24
  %t321 = add i64 %t319, 1
  store i64 %t321, ptr %l13, !tbaa !24
  br label %bb46
bb82:
  %t323 = load ptr, ptr %l0, !tbaa !29
  store ptr %t323, ptr %l159, !tbaa !29
  %t324 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t324, ptr %l160
  store ptr %a4, ptr %l161, !tbaa !29
  %t326 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t326, ptr %l162
  %t327 = load ptr, ptr %l2, !tbaa !29
  store ptr %t327, ptr %l163, !tbaa !29
  %t328 = load ptr, ptr %lp11
  %t330 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2eToArray_3ccompiler_2fast_3aExpr_26_3e(ptr %v4, ptr %v0, ptr %t328)
  store { i64, ptr } %t330, ptr %l165
  br label %bb83
bb83:
  store { i64, [4 x i64] } zeroinitializer, ptr %t331
  %t332 = getelementptr { i64, [4 x i64] }, ptr %t331, i32 0, i32 0
  store i64 12, ptr %t332
  %t333 = load %"compiler/source:Span", ptr %l162
  %t334 = insertvalue { %"compiler/source:Span", ptr, { i64, ptr } } undef, %"compiler/source:Span" %t333, 0
  %t335 = load ptr, ptr %l163, !tbaa !29
  %t336 = insertvalue { %"compiler/source:Span", ptr, { i64, ptr } } %t334, ptr %t335, 1
  %t337 = load { i64, ptr }, ptr %l165, !tbaa !27
  %t338 = insertvalue { %"compiler/source:Span", ptr, { i64, ptr } } %t336, { i64, ptr } %t337, 2
  %t339 = getelementptr { i64, [4 x i64] }, ptr %t331, i32 0, i32 1
  store { %"compiler/source:Span", ptr, { i64, ptr } } %t338, ptr %t339
  %t340 = load { i64, [4 x i64] }, ptr %t331
  %t342 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store { i64, [4 x i64] } %t340, ptr %t342
  %t344 = load ptr, ptr %l159, !tbaa !29
  %t345 = load %"compiler/source:Span", ptr %l160
  %t346 = load ptr, ptr %l161, !tbaa !29
  %t349 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalueTest(ptr %v0, ptr %v3, ptr %v0, ptr %v4, ptr %t344, %"compiler/source:Span" %t345, ptr %t346, ptr %t342, i32 %a5)
  store ptr %t349, ptr %l169
  br label %bb84
bb84:
  %t350 = load ptr, ptr %l169, !tbaa !29
  store ptr %t350, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local { i32, i1 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtCases(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca i1
  %l7 = alloca i32
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca i1
  %l10 = alloca i1
  %l11 = alloca i1
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l18 = alloca ptr
  %l19 = alloca %"compiler/check:altsCovered"
  %l20 = alloca i1
  %l21 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l22 = alloca { i64, ptr }
  %l24 = alloca ptr
  %l25 = alloca ptr
  %l28 = alloca %"compiler/source:Span"
  %l29 = alloca { i64, ptr }
  %l34 = alloca i32
  %l37 = alloca ptr
  %l38 = alloca i32
  %l41 = alloca ptr
  %l42 = alloca ptr
  %l45 = alloca i64
  %l46 = alloca i32
  %l47 = alloca i32
  %l48 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l49 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l53 = alloca i64
  %l55 = alloca i1
  %l56 = alloca ptr
  %l57 = alloca i32
  %l61 = alloca i1
  %l65 = alloca i64
  %l69 = alloca ptr
  %l72 = alloca ptr
  %l76 = alloca i32
  %l77 = alloca i32
  %l78 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l79 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l84 = alloca i64
  %l86 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l96 = alloca i64
  %l99 = alloca i64
  %l118 = alloca { i64, ptr }
  %l122 = alloca i1
  %l126 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l128 = alloca i64
  %l130 = alloca i1
  %l132 = alloca ptr
  %l134 = alloca %"compiler/source:Span"
  %l136 = alloca %"compiler/diagmsg:Msg"
  %l137 = alloca i64
  %l145 = alloca %"compiler/check:altsCovered"
  %l152 = alloca i1
  %l155 = alloca i64
  %l157 = alloca ptr
  %l159 = alloca ptr
  %l163 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l165 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l167 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l173 = alloca i1
  %l177 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l179 = alloca i64
  %l181 = alloca i1
  %l184 = alloca i1
  %l190 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l192 = alloca i64
  %l194 = alloca { i64, ptr }
  %l197 = alloca { i64, ptr }
  %l200 = alloca i64
  %l202 = alloca i1
  %l208 = alloca ptr
  %l212 = alloca %"compiler/source:Span"
  %l214 = alloca %"compiler/diagmsg:Msg"
  %l215 = alloca i64
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %rv = alloca { i32, i1 }
  %t106 = alloca i64
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t1)
  store ptr %t3, ptr %l24
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l24, !tbaa !29
  store ptr %t4, ptr %l3, !tbaa !29
  %t5 = load ptr, ptr %l0, !tbaa !29
  store ptr %t5, ptr %l25, !tbaa !29
  %t6 = load ptr, ptr %l2, !tbaa !29
  %t8 = getelementptr %"compiler/ast:Match", ptr %t6, i32 0, i32 1
  %t9 = load ptr, ptr %t8, !tbaa !29
  %t11 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t9)
  store %"compiler/source:Span" %t11, ptr %l28
  br label %bb2
bb2:
  %t12 = load ptr, ptr %l25, !tbaa !29
  %t13 = load %"compiler/source:Span", ptr %l28
  %t14 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %s0, ptr %t12, %"compiler/source:Span" %t13)
  store { i64, ptr } %t14, ptr %l29
  br label %bb3
bb3:
  %t15 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d1, i32 0, i32 1) }, 1
  %t16 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d1, i32 0, i32 1) }, 0
  %t17 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t18 = extractvalue { i64, ptr } %t17, 1
  %t19 = extractvalue { i64, ptr } %t17, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d1, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d1, i32 0, i32 1) }, 0
  %t23 = add i64 %t20, %t22
  %t24 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t23)
  call void @olang_textcopy(ptr %t24, ptr %t15, i64 %t16)
  %t25 = getelementptr i8, ptr %t24, i64 %t16
  call void @olang_textcopy(ptr %t25, ptr %t18, i64 %t19)
  %t26 = getelementptr i8, ptr %t25, i64 %t19
  call void @olang_textcopy(ptr %t26, ptr %t21, i64 %t22)
  %t27 = insertvalue { i64, ptr } undef, i64 %t23, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t24, 1
  store { i64, ptr } %t28, ptr %l4, !tbaa !27
  store i1 true, ptr %l6, !tbaa !21
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load ptr, ptr %l2, !tbaa !29
  %t33 = getelementptr %"compiler/ast:Match", ptr %t31, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !29
  %t37 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrLocalName(ptr %v0, ptr %v1, ptr %t30, ptr %t34)
  store i32 %t37, ptr %l34
  br label %bb4
bb4:
  %t38 = load i32, ptr %l34, !tbaa !23
  store i32 %t38, ptr %l7, !tbaa !23
  %t39 = load i32, ptr %l7, !tbaa !23
  %t41 = icmp ne i32 %t39, 0
  br i1 %t41, label %bb5, label %bb6
bb5:
  store %olang.scope zeroinitializer, ptr %s2
  %t43 = load ptr, ptr %l0, !tbaa !29
  store ptr %t43, ptr %l37, !tbaa !29
  %t44 = load i32, ptr %l7, !tbaa !23
  store i32 %t44, ptr %l38, !tbaa !23
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/check:Checker", ptr %t45, i32 0, i32 1
  %t48 = load ptr, ptr %t47, !tbaa !29
  %t50 = getelementptr %"compiler/generic:Program", ptr %t48, i32 0, i32 2
  store ptr %t50, ptr %l41, !tbaa !29
  %t51 = load ptr, ptr %l0, !tbaa !29
  store ptr %t51, ptr %l42, !tbaa !29
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t53 = load i32, ptr %l7, !tbaa !23
  %t56 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalNamed(ptr %v0, ptr %t52, i32 %t53)
  store i64 %t56, ptr %l45
  br label %bb7
bb6:
  %t57 = load ptr, ptr %l0, !tbaa !29
  store ptr %t57, ptr %l69, !tbaa !29
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/check:Checker", ptr %t58, i32 0, i32 1
  %t61 = load ptr, ptr %t60, !tbaa !29
  %t63 = getelementptr %"compiler/generic:Program", ptr %t61, i32 0, i32 2
  store ptr %t63, ptr %l72, !tbaa !29
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t65 = load ptr, ptr %l3, !tbaa !29
  %t67 = getelementptr %"compiler/check:frame", ptr %t65, i32 0, i32 61
  %t68 = load i64, ptr %t67, !tbaa !24
  %t71 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalType(ptr %v0, ptr %t64, i64 %t68)
  store i32 %t71, ptr %l76
  br label %bb27
bb7:
  %t72 = load ptr, ptr %l42, !tbaa !29
  %t73 = load i64, ptr %l45, !tbaa !24
  %t74 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalType(ptr %v0, ptr %t72, i64 %t73)
  store i32 %t74, ptr %l46
  br label %bb8
bb8:
  %t75 = load ptr, ptr %l41, !tbaa !29
  %t76 = load i32, ptr %l46, !tbaa !23
  %t77 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrValItems(ptr %v0, ptr %t75, i32 %t76)
  store i32 %t77, ptr %l47
  br label %bb9
bb9:
  %t78 = load ptr, ptr %l37, !tbaa !29
  %t79 = load i32, ptr %l38, !tbaa !23
  %t80 = load i32, ptr %l47, !tbaa !23
  %t81 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrNow(ptr %v0, ptr %s0, ptr %t78, i32 %t79, i32 %t80)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t81, ptr %l48
  br label %bb10
bb10:
  %t82 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t82, ptr %l49
  %t83 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l48
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t83, ptr %l5
  %t84 = load i1, ptr @olang_2esole_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2e0
  br i1 %t84, label %bb11, label %bb12
bb11:
  %t86 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l49, i32 0, i32 0
  %t87 = load { i64, ptr }, ptr %t86
  %t88 = extractvalue { i64, ptr } %t87, 1
  call void @__olang_region_release(ptr %t88)
  store { i64, ptr } zeroinitializer, ptr %t86
  br label %bb12
bb12:
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t90 = load i32, ptr %l7, !tbaa !23
  %t93 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtNamed(ptr %v0, ptr %t89, i32 %t90)
  store i64 %t93, ptr %l53
  br label %bb13
bb13:
  %t94 = load i64, ptr %l53, !tbaa !24
  %t95 = icmp slt i64 %t94, 0
  br i1 %t95, label %bb14, label %bb15
bb14:
  %t97 = load ptr, ptr %l0, !tbaa !29
  store ptr %t97, ptr %l56, !tbaa !29
  %t98 = load i32, ptr %l7, !tbaa !23
  store i32 %t98, ptr %l57, !tbaa !23
  %t99 = icmp sge i64 1, 0
  br i1 %t99, label %bb16, label %bb17
bb15:
  store i1 false, ptr %l55, !tbaa !21
  br label %bb21
bb16:
  %t101 = icmp sle i64 1, 2305843009213693951
  br i1 %t101, label %bb18, label %bb19
bb17:
  call void @__olang_check_failed(ptr @olang_loc_fc394d3abb705b3d_774ad654d23301b9)
  unreachable
bb18:
  %t103 = mul i64 1, 4
  %t104 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t103)
  %t105 = load i32, ptr %l57, !tbaa !23
  store i64 0, ptr %t106
  br label %fill.107
fill.107:
  %t110 = load i64, ptr %t106
  %t111 = icmp slt i64 %t110, 1
  br i1 %t111, label %fillb.108, label %filld.109
fillb.108:
  %t112 = getelementptr i32, ptr %t104, i64 %t110
  store i32 %t105, ptr %t112
  %t113 = add i64 %t110, 1
  store i64 %t113, ptr %t106
  br label %fill.107
filld.109:
  %t114 = insertvalue { i64, ptr } undef, i64 1, 0
  %t115 = insertvalue { i64, ptr } %t114, ptr %t104, 1
  %t116 = load ptr, ptr %l56, !tbaa !29
  %t118 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enullKnown(ptr %v0, ptr %s2, ptr %t116, { i64, ptr } %t115)
  store i1 %t118, ptr %l61
  br label %bb20
bb19:
  call void @__olang_check_failed(ptr @olang_loc_fc394d3abb705b3d_774ad654d23301b9)
  unreachable
bb20:
  %t119 = load i1, ptr %l61, !tbaa !21
  %t120 = xor i1 %t119, true
  store i1 %t120, ptr %l55, !tbaa !21
  br label %bb21
bb21:
  %t122 = load i1, ptr %l55, !tbaa !21
  store i1 %t122, ptr %l6, !tbaa !21
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t124 = load i32, ptr %l7, !tbaa !23
  %t127 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtNamed(ptr %v0, ptr %t123, i32 %t124)
  store i64 %t127, ptr %l65
  br label %bb22
bb22:
  %t128 = load i64, ptr %l65, !tbaa !24
  %t129 = icmp sge i64 %t128, 0
  br i1 %t129, label %bb23, label %bb24
bb23:
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t132 = load i32, ptr %l7, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtUsed(ptr %v0, ptr %t131, i32 %t132)
  br label %bb25
bb24:
  br label %bb26
bb25:
  br label %bb26
bb26:
  call void @__olang_scope_close(ptr %s2)
  br label %bb32
bb27:
  %t135 = load ptr, ptr %l72, !tbaa !29
  %t136 = load i32, ptr %l76, !tbaa !23
  %t137 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrValItems(ptr %v0, ptr %t135, i32 %t136)
  store i32 %t137, ptr %l77
  br label %bb28
bb28:
  %t138 = load ptr, ptr %l69, !tbaa !29
  %t139 = load i32, ptr %l77, !tbaa !23
  %t140 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetItems(ptr %v0, ptr %s0, ptr %t138, i32 %t139)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t140, ptr %l78
  br label %bb29
bb29:
  %t141 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t141, ptr %l79
  %t142 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l78
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t142, ptr %l5
  %t143 = load i1, ptr @olang_2esole_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2e0
  br i1 %t143, label %bb30, label %bb31
bb30:
  %t145 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l79, i32 0, i32 0
  %t146 = load { i64, ptr }, ptr %t145
  %t147 = extractvalue { i64, ptr } %t146, 1
  call void @__olang_region_release(ptr %t147)
  store { i64, ptr } zeroinitializer, ptr %t145
  br label %bb31
bb31:
  %t148 = load ptr, ptr %l3, !tbaa !29
  %t150 = getelementptr %"compiler/check:frame", ptr %t148, i32 0, i32 62
  %t151 = load i1, ptr %t150, !tbaa !21
  %t153 = xor i1 %t151, true
  store i1 %t153, ptr %l6, !tbaa !21
  br label %bb32
bb32:
  %t155 = ptrtoint ptr %s0 to i64
  store i64 %t155, ptr %l84, !tbaa !24
  %t156 = load i1, ptr @olang_2esole_2ecompiler__2fcheck__2ecompiler__2fcheck__3aChecker__2ecaughtCases_2elocal_2e8
  br i1 %t156, label %bb33, label %bb34
bb33:
  %t158 = call ptr @__olang_region_make(ptr %s0)
  %t159 = ptrtoint ptr %t158 to i64
  store i64 %t159, ptr %l84, !tbaa !24
  br label %bb34
bb34:
  %t160 = load i64, ptr %l84
  %t161 = inttoptr i64 %t160 to ptr
  %t162 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %t161, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t162, ptr %l86
  br label %bb35
bb35:
  %t163 = load i1, ptr @olang_2esole_2ecompiler__2fcheck__2ecompiler__2fcheck__3aChecker__2ecaughtCases_2elocal_2e8
  br i1 %t163, label %bb36, label %bb37
bb36:
  %t165 = load i64, ptr %l84
  %t166 = inttoptr i64 %t165 to ptr
  %t167 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l86, i32 0, i32 0
  %t168 = load { i64, ptr }, ptr %t167
  %t169 = extractvalue { i64, ptr } %t168, 1
  %t170 = call ptr @__olang_region_or(ptr %t169, ptr null)
  %t171 = icmp ne ptr %t170, null
  %t172 = select i1 %t171, ptr %t170, ptr null
  %t173 = icmp eq ptr %t172, %t166
  call void @__olang_region_settle(ptr %t166, i1 %t173)
  br label %bb37
bb37:
  %t174 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l86
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t174, ptr %l8
  %t175 = load i1, ptr %l6, !tbaa !21
  %t177 = xor i1 %t175, true
  store i1 %t177, ptr %l9, !tbaa !21
  store i1 true, ptr %l10, !tbaa !21
  store i1 false, ptr %l11, !tbaa !21
  store i64 0, ptr %l12, !tbaa !24
  %t179 = load ptr, ptr %l2, !tbaa !29
  %t181 = getelementptr %"compiler/ast:Match", ptr %t179, i32 0, i32 3
  %t182 = load { i64, ptr }, ptr %t181, !tbaa !27
  %t184 = extractvalue { i64, ptr } %t182, 0
  store i64 %t184, ptr %l13, !tbaa !24
  store i64 1, ptr %l14, !tbaa !24
  %t186 = load i64, ptr %l13, !tbaa !24
  %t187 = load i64, ptr %l12, !tbaa !24
  %t190 = icmp sgt i64 %t186, %t187
  br i1 %t190, label %bb38, label %bb39
bb38:
  %t192 = load i64, ptr %l14, !tbaa !24
  %t194 = icmp sgt i64 %t192, 0
  br i1 %t194, label %bb40, label %bb41
bb39:
  store i64 0, ptr %l96, !tbaa !24
  br label %bb43
bb40:
  %t196 = load i64, ptr %l13, !tbaa !24
  %t197 = load i64, ptr %l12, !tbaa !24
  %t200 = sub i64 %t196, %t197
  %t201 = load i64, ptr %l14, !tbaa !24
  %t204 = add i64 %t200, %t201
  %t206 = sub i64 %t204, 1
  %t207 = load i64, ptr %l14, !tbaa !24
  %t210 = sdiv i64 %t206, %t207
  store i64 %t210, ptr %l99, !tbaa !24
  br label %bb42
bb41:
  store i64 0, ptr %l99, !tbaa !24
  br label %bb42
bb42:
  %t212 = load i64, ptr %l99, !tbaa !24
  store i64 %t212, ptr %l96, !tbaa !24
  br label %bb43
bb43:
  %t213 = load i64, ptr %l96, !tbaa !24
  store i64 %t213, ptr %l15, !tbaa !24
  store i64 0, ptr %l16, !tbaa !24
  br label %bb44
bb44:
  store %olang.scope zeroinitializer, ptr %s6
  %t214 = load i64, ptr %l16, !tbaa !24
  %t215 = load i64, ptr %l15, !tbaa !24
  %t218 = icmp slt i64 %t214, %t215
  %t220 = xor i1 %t218, true
  br i1 %t220, label %bb45, label %bb46
bb45:
  call void @__olang_scope_close(ptr %s6)
  br label %bb86
bb46:
  br label %bb47
bb47:
  %t222 = load i64, ptr %l12, !tbaa !24
  %t223 = load i64, ptr %l16, !tbaa !24
  %t224 = load i64, ptr %l14, !tbaa !24
  %t227 = mul i64 %t223, %t224
  %t230 = add i64 %t222, %t227
  %t232 = load ptr, ptr %l2, !tbaa !29
  %t234 = getelementptr %"compiler/ast:Match", ptr %t232, i32 0, i32 3
  %t235 = load { i64, ptr }, ptr %t234, !tbaa !27
  store { i64, ptr } %t235, ptr %l118, !tbaa !27
  %t238 = getelementptr { i64, ptr }, ptr %l118, i32 0, i32 1
  %t239 = load ptr, ptr %t238, !tbaa !27
  %t240 = getelementptr ptr, ptr %t239, i64 %t230
  %t241 = load ptr, ptr %t240, !tbaa !39
  store ptr %t241, ptr %l18, !tbaa !29
  %t243 = load i1, ptr %l11, !tbaa !21
  br i1 %t243, label %bb48, label %bb49
bb48:
  store i1 true, ptr %l122, !tbaa !21
  br label %bb55
bb49:
  %t245 = load ptr, ptr %l0, !tbaa !29
  %t249 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetLess(ptr %v0, ptr %s0, ptr %s0, ptr %s6, ptr %t245, ptr %l5, ptr %l8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t249, ptr %l126
  br label %bb50
bb50:
  %t251 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %s6, ptr %l126)
  store i64 %t251, ptr %l128
  br label %bb51
bb51:
  %t252 = load i64, ptr %l128, !tbaa !24
  %t253 = icmp eq i64 %t252, 0
  br i1 %t253, label %bb52, label %bb53
bb52:
  %t255 = load i1, ptr %l9, !tbaa !21
  store i1 %t255, ptr %l130, !tbaa !21
  br label %bb54
bb53:
  store i1 false, ptr %l130, !tbaa !21
  br label %bb54
bb54:
  %t257 = load i1, ptr %l130, !tbaa !21
  store i1 %t257, ptr %l122, !tbaa !21
  br label %bb55
bb55:
  %t258 = load i1, ptr %l122, !tbaa !21
  br i1 %t258, label %bb56, label %bb57
bb56:
  store %olang.scope zeroinitializer, ptr %s7
  %t259 = load ptr, ptr %l0, !tbaa !29
  store ptr %t259, ptr %l132, !tbaa !29
  %t260 = load ptr, ptr %l18, !tbaa !29
  %t262 = getelementptr %"compiler/ast:Case", ptr %t260, i32 0, i32 0
  %t263 = load %"compiler/source:Span", ptr %t262
  store %"compiler/source:Span" %t263, ptr %l134
  %t264 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t266 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCaughtCaseNever(ptr %s0, ptr %s7, { i64, ptr } %t264)
  store %"compiler/diagmsg:Msg" %t266, ptr %l136
  br label %bb58
bb57:
  br label %bb60
bb58:
  %t267 = load ptr, ptr %l132, !tbaa !29
  %t268 = load %"compiler/source:Span", ptr %l134
  %t269 = load %"compiler/diagmsg:Msg", ptr %l136
  %t270 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s7, ptr %t267, %"compiler/source:Span" %t268, %"compiler/diagmsg:Msg" %t269)
  store i64 %t270, ptr %l137
  br label %bb59
bb59:
  store i1 false, ptr %l10, !tbaa !21
  call void @__olang_scope_close(ptr %s7)
  call void @__olang_scope_close(ptr %s6)
  br label %bb85
bb60:
  %t271 = load ptr, ptr %l0, !tbaa !29
  %t272 = load ptr, ptr %l18, !tbaa !29
  %t273 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t274 = load i1, ptr %l6, !tbaa !21
  %t275 = load i32, ptr %l7, !tbaa !23
  %t277 = icmp ne i32 %t275, 0
  %t284 = call %"compiler/check:altsCovered" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtAlts(ptr %v0, ptr %v1, ptr %s0, ptr %s0, ptr %s6, ptr %t271, ptr %t272, { i64, ptr } %t273, ptr %l5, i1 %t274, i1 %t277)
  store %"compiler/check:altsCovered" %t284, ptr %l145
  br label %bb61
bb61:
  %t285 = load %"compiler/check:altsCovered", ptr %l145
  store %"compiler/check:altsCovered" %t285, ptr %l19
  %t286 = getelementptr %"compiler/check:altsCovered", ptr %l19, i32 0, i32 2
  %t287 = load i1, ptr %t286, !tbaa !21
  br i1 %t287, label %bb62, label %bb63
bb62:
  store i1 true, ptr %l11, !tbaa !21
  br label %bb64
bb63:
  br label %bb64
bb64:
  %t289 = getelementptr %"compiler/check:altsCovered", ptr %l19, i32 0, i32 3
  %t290 = load i1, ptr %t289, !tbaa !21
  %t292 = xor i1 %t290, true
  br i1 %t292, label %bb65, label %bb66
bb65:
  store i1 false, ptr %l10, !tbaa !21
  br label %bb67
bb66:
  br label %bb67
bb67:
  %t294 = load ptr, ptr %l18, !tbaa !29
  %t296 = getelementptr %"compiler/ast:Case", ptr %t294, i32 0, i32 3
  %t297 = load ptr, ptr %t296, !tbaa !29
  %t299 = icmp eq ptr %t297, null
  br i1 %t299, label %bb68, label %bb69
bb68:
  %t301 = getelementptr %"compiler/check:altsCovered", ptr %l19, i32 0, i32 4
  %t302 = load i1, ptr %t301, !tbaa !21
  %t304 = xor i1 %t302, true
  store i1 %t304, ptr %l152, !tbaa !21
  br label %bb70
bb69:
  store i1 false, ptr %l152, !tbaa !21
  br label %bb70
bb70:
  %t306 = load i1, ptr %l152, !tbaa !21
  br i1 %t306, label %bb71, label %bb72
bb71:
  %t307 = ptrtoint ptr %s0 to i64
  store i64 %t307, ptr %l155, !tbaa !24
  %t308 = load i1, ptr @olang_2esole_2ecompiler__2fcheck__2ecompiler__2fcheck__3aChecker__2ecaughtCases_2elocal_2e8
  br i1 %t308, label %bb73, label %bb74
bb72:
  br label %bb84
bb73:
  %t310 = call ptr @__olang_region_make(ptr %s0)
  %t311 = ptrtoint ptr %t310 to i64
  store i64 %t311, ptr %l155, !tbaa !24
  br label %bb74
bb74:
  %t312 = load ptr, ptr %l0, !tbaa !29
  store ptr %t312, ptr %l157, !tbaa !29
  %t313 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l8
  %t315 = load i64, ptr %l155
  %t316 = inttoptr i64 %t315 to ptr
  %t317 = call ptr @__olang_scope_alloc_a(ptr %t316, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t313, ptr %t317
  store ptr %t317, ptr %l159, !tbaa !29
  %t318 = load ptr, ptr %l0, !tbaa !29
  %t319 = getelementptr %"compiler/check:altsCovered", ptr %l19, i32 0, i32 0
  %t320 = load i64, ptr %l155
  %t321 = inttoptr i64 %t320 to ptr
  %t325 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetMeet(ptr %v0, ptr %s6, ptr %s0, ptr %t321, ptr %t318, ptr %t319, ptr %l5)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t325, ptr %l163
  br label %bb75
bb75:
  %t326 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l163
  %t327 = load i64, ptr %l155
  %t328 = inttoptr i64 %t327 to ptr
  %t329 = call ptr @__olang_scope_alloc_a(ptr %t328, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t326, ptr %t329
  %t330 = load i64, ptr %l155
  %t331 = inttoptr i64 %t330 to ptr
  %t332 = load i64, ptr %l155
  %t333 = inttoptr i64 %t332 to ptr
  %t334 = load i64, ptr %l155
  %t335 = inttoptr i64 %t334 to ptr
  %t336 = load ptr, ptr %l157, !tbaa !29
  %t337 = load ptr, ptr %l159, !tbaa !29
  %t339 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetUnion(ptr %v0, ptr %t331, ptr %t333, ptr %t335, ptr %t336, ptr %t337, ptr %t329)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t339, ptr %l165
  br label %bb76
bb76:
  %t340 = load i1, ptr @olang_2esole_2ecompiler__2fcheck__2ecompiler__2fcheck__3aChecker__2ecaughtCases_2elocal_2e8
  br i1 %t340, label %bb77, label %bb78
bb77:
  %t342 = load i64, ptr %l155
  %t343 = inttoptr i64 %t342 to ptr
  %t344 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l165, i32 0, i32 0
  %t345 = load { i64, ptr }, ptr %t344
  %t346 = extractvalue { i64, ptr } %t345, 1
  %t347 = call ptr @__olang_region_or(ptr %t346, ptr null)
  %t348 = icmp ne ptr %t347, null
  %t349 = select i1 %t348, ptr %t347, ptr null
  %t350 = icmp eq ptr %t349, %t343
  call void @__olang_region_settle(ptr %t343, i1 %t350)
  br label %bb78
bb78:
  %t351 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l8
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t351, ptr %l167
  %t352 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l165
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t352, ptr %l8
  %t353 = load i1, ptr @olang_2esole_2ecompiler__2fcheck__2ecompiler__2fcheck__3aChecker__2ecaughtCases_2elocal_2e8
  br i1 %t353, label %bb79, label %bb80
bb79:
  %t355 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l167, i32 0, i32 0
  %t356 = load { i64, ptr }, ptr %t355
  %t357 = extractvalue { i64, ptr } %t356, 1
  %t358 = call ptr @__olang_region_or(ptr %t357, ptr null)
  %t359 = icmp ne ptr %t358, null
  %t360 = select i1 %t359, ptr %t358, ptr null
  call void @__olang_region_drop(ptr %t360)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %l167
  br label %bb80
bb80:
  %t361 = getelementptr %"compiler/check:altsCovered", ptr %l19, i32 0, i32 1
  %t362 = load i1, ptr %t361, !tbaa !21
  br i1 %t362, label %bb81, label %bb82
bb81:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb83
bb82:
  br label %bb83
bb83:
  br label %bb84
bb84:
  call void @__olang_scope_close(ptr %s6)
  br label %bb85
bb85:
  %t364 = load i64, ptr %l16, !tbaa !24
  %t366 = add i64 %t364, 1
  store i64 %t366, ptr %l16, !tbaa !24
  br label %bb44
bb86:
  %t368 = load i1, ptr %l11, !tbaa !21
  br i1 %t368, label %bb87, label %bb88
bb87:
  store i1 true, ptr %l173, !tbaa !21
  br label %bb94
bb88:
  %t370 = load ptr, ptr %l0, !tbaa !29
  %t374 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetLess(ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %t370, ptr %l5, ptr %l8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t374, ptr %l177
  br label %bb89
bb89:
  %t376 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %l177)
  store i64 %t376, ptr %l179
  br label %bb90
bb90:
  %t377 = load i64, ptr %l179, !tbaa !24
  %t378 = icmp eq i64 %t377, 0
  br i1 %t378, label %bb91, label %bb92
bb91:
  %t380 = load i1, ptr %l9, !tbaa !21
  store i1 %t380, ptr %l181, !tbaa !21
  br label %bb93
bb92:
  store i1 false, ptr %l181, !tbaa !21
  br label %bb93
bb93:
  %t382 = load i1, ptr %l181, !tbaa !21
  store i1 %t382, ptr %l173, !tbaa !21
  br label %bb94
bb94:
  %t383 = load i1, ptr %l173, !tbaa !21
  store i1 %t383, ptr %l20, !tbaa !21
  %t384 = load i1, ptr %l10, !tbaa !21
  br i1 %t384, label %bb95, label %bb96
bb95:
  %t386 = load i1, ptr %l20, !tbaa !21
  %t388 = xor i1 %t386, true
  store i1 %t388, ptr %l184, !tbaa !21
  br label %bb97
bb96:
  store i1 false, ptr %l184, !tbaa !21
  br label %bb97
bb97:
  %t390 = load i1, ptr %l184, !tbaa !21
  br i1 %t390, label %bb98, label %bb99
bb98:
  store %olang.scope zeroinitializer, ptr %s13
  %t391 = load ptr, ptr %l0, !tbaa !29
  %t395 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetLess(ptr %v0, ptr %s0, ptr %s0, ptr %s13, ptr %t391, ptr %l5, ptr %l8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t395, ptr %l190
  br label %bb100
bb99:
  br label %bb116
bb100:
  %t396 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l190
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t396, ptr %l21
  %t398 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %s13, ptr %l21)
  store i64 %t398, ptr %l192
  br label %bb101
bb101:
  %t399 = load i64, ptr %l192, !tbaa !24
  %t400 = icmp sgt i64 %t399, 0
  br i1 %t400, label %bb102, label %bb103
bb102:
  %t402 = load ptr, ptr %l0, !tbaa !29
  %t405 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetText(ptr %v0, ptr %s13, ptr %s13, ptr %t402, ptr %l21)
  store { i64, ptr } %t405, ptr %l197
  br label %bb104
bb103:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d2, i32 0, i32 1) }, ptr %l194, !tbaa !27
  br label %bb105
bb104:
  %t406 = load { i64, ptr }, ptr %l197, !tbaa !27
  %t407 = extractvalue { i64, ptr } %t406, 0
  %t408 = extractvalue { i64, ptr } %t406, 1
  %t409 = mul i64 %t407, 1
  %t410 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t409)
  call void @llvm.memcpy.p0.p0.i64(ptr %t410, ptr %t408, i64 %t409, i1 false)
  %t411 = insertvalue { i64, ptr } undef, i64 %t407, 0
  %t412 = insertvalue { i64, ptr } %t411, ptr %t410, 1
  store { i64, ptr } %t412, ptr %l194, !tbaa !27
  br label %bb105
bb105:
  %t414 = load { i64, ptr }, ptr %l194, !tbaa !27
  store { i64, ptr } %t414, ptr %l22, !tbaa !27
  %t416 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %s13, ptr %l21)
  store i64 %t416, ptr %l200
  br label %bb106
bb106:
  %t417 = load i64, ptr %l200, !tbaa !24
  %t418 = icmp sgt i64 %t417, 0
  br i1 %t418, label %bb107, label %bb108
bb107:
  %t420 = load i1, ptr %l9, !tbaa !21
  %t422 = xor i1 %t420, true
  store i1 %t422, ptr %l202, !tbaa !21
  br label %bb109
bb108:
  store i1 false, ptr %l202, !tbaa !21
  br label %bb109
bb109:
  %t424 = load i1, ptr %l202, !tbaa !21
  br i1 %t424, label %bb110, label %bb111
bb110:
  %t425 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t427 = extractvalue { i64, ptr } %t425, 1
  %t428 = extractvalue { i64, ptr } %t425, 0
  %t429 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d3, i32 0, i32 1) }, 1
  %t430 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d3, i32 0, i32 1) }, 0
  %t431 = add i64 %t428, %t430
  %t432 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t431)
  call void @olang_textcopy(ptr %t432, ptr %t427, i64 %t428)
  %t433 = getelementptr i8, ptr %t432, i64 %t428
  call void @olang_textcopy(ptr %t433, ptr %t429, i64 %t430)
  %t434 = insertvalue { i64, ptr } undef, i64 %t431, 0
  %t435 = insertvalue { i64, ptr } %t434, ptr %t432, 1
  %t437 = extractvalue { i64, ptr } %t435, 0
  %t438 = extractvalue { i64, ptr } %t435, 1
  %t439 = mul i64 %t437, 1
  %t440 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t439)
  call void @llvm.memcpy.p0.p0.i64(ptr %t440, ptr %t438, i64 %t439, i1 false)
  %t441 = insertvalue { i64, ptr } undef, i64 %t437, 0
  %t442 = insertvalue { i64, ptr } %t441, ptr %t440, 1
  store { i64, ptr } %t442, ptr %l22, !tbaa !27
  br label %bb112
bb111:
  br label %bb112
bb112:
  %t444 = load ptr, ptr %l0, !tbaa !29
  store ptr %t444, ptr %l208, !tbaa !29
  %t445 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t446 = load i32, ptr %t445, !tbaa !23
  %t447 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t448 = load i32, ptr %t447, !tbaa !23
  %t450 = add i32 %t448, 5
  %t453 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s13, i32 %t446, i32 %t450)
  store %"compiler/source:Span" %t453, ptr %l212
  br label %bb113
bb113:
  %t454 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t456 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCaughtMatchMissing(ptr %s13, ptr %s13, { i64, ptr } %t454)
  store %"compiler/diagmsg:Msg" %t456, ptr %l214
  br label %bb114
bb114:
  %t457 = load ptr, ptr %l208, !tbaa !29
  %t458 = load %"compiler/source:Span", ptr %l212
  %t459 = load %"compiler/diagmsg:Msg", ptr %l214
  %t460 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s13, ptr %t457, %"compiler/source:Span" %t458, %"compiler/diagmsg:Msg" %t459)
  store i64 %t460, ptr %l215
  br label %bb115
bb115:
  store i1 false, ptr %l10, !tbaa !21
  call void @__olang_scope_close(ptr %s13)
  br label %bb116
bb116:
  %t461 = load i1, ptr %l10, !tbaa !21
  %t463 = xor i1 %t461, true
  br i1 %t463, label %bb117, label %bb118
bb117:
  call void @__olang_scope_close(ptr %s0)
  %t466 = insertvalue { i32, i1 } zeroinitializer, i32 65536, 0
  store { i32, i1 } %t466, ptr %rv
  br label %ret
bb118:
  br label %bb119
bb119:
  %t467 = load i1, ptr %l20, !tbaa !21
  call void @__olang_scope_close(ptr %s0)
  %t469 = insertvalue { i32, i1 } zeroinitializer, i1 %t467, 1
  store { i32, i1 } %t469, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i1 }, ptr %rv
  ret { i32, i1 } %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echeckFn(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca i32
  %l7 = alloca i64
  %l8 = alloca i64
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca i64
  %l14 = alloca i1
  %l15 = alloca { i64, ptr }
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca ptr
  %l19 = alloca { i64, ptr }
  %l20 = alloca i64
  %l21 = alloca ptr
  %l22 = alloca { i64, ptr }
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca ptr
  %l27 = alloca i1
  %l28 = alloca { i64, ptr }
  %l29 = alloca i64
  %l30 = alloca i64
  %l31 = alloca i64
  %l32 = alloca i64
  %l33 = alloca i64
  %l34 = alloca i64
  %l35 = alloca ptr
  %l36 = alloca i64
  %l37 = alloca i64
  %l38 = alloca i64
  %l39 = alloca i64
  %l40 = alloca i64
  %l41 = alloca i64
  %l45 = alloca i64
  %l49 = alloca ptr
  %l53 = alloca i64
  %l57 = alloca i32
  %l59 = alloca ptr
  %l65 = alloca ptr
  %l72 = alloca %"compiler/generic:Origin"
  %l76 = alloca ptr
  %l81 = alloca i64
  %l82 = alloca i64
  %l85 = alloca i64
  %l86 = alloca ptr
  %l87 = alloca i64
  %l88 = alloca i64
  %l93 = alloca i32
  %l98 = alloca i32
  %l99 = alloca ptr
  %l100 = alloca ptr
  %l101 = alloca i64
  %l104 = alloca ptr
  %l105 = alloca i64
  %l109 = alloca i32
  %l110 = alloca %"compiler/generic:Context"
  %l112 = alloca %"compiler/generic:Context"
  %l114 = alloca ptr
  %l118 = alloca i1
  %l124 = alloca ptr
  %l132 = alloca i1
  %l142 = alloca { i64, ptr }
  %l148 = alloca i1
  %l155 = alloca i1
  %l170 = alloca { i64, ptr }
  %l180 = alloca i1
  %l185 = alloca i1
  %l189 = alloca i1
  %l193 = alloca ptr
  %l196 = alloca %"compiler/source:Span"
  %l197 = alloca ptr
  %l200 = alloca ptr
  %l203 = alloca ptr
  %l208 = alloca i32
  %l209 = alloca i32
  %l210 = alloca { i64, ptr }
  %l211 = alloca { i64, ptr }
  %l213 = alloca { i64, ptr }
  %l215 = alloca %"compiler/diagmsg:Msg"
  %l216 = alloca i64
  %l218 = alloca ptr
  %l222 = alloca i32
  %l225 = alloca ptr
  %l230 = alloca i32
  %l231 = alloca { i64, ptr }
  %l239 = alloca ptr
  %l246 = alloca i32
  %l253 = alloca %"compiler/source:Span"
  %l254 = alloca { i64, ptr }
  %l255 = alloca i32
  %l263 = alloca ptr
  %l274 = alloca { i64, ptr }
  %l285 = alloca { i64, ptr }
  %l297 = alloca { i64, ptr }
  %l305 = alloca { i64, ptr }
  %l312 = alloca i1
  %l316 = alloca { i64, ptr }
  %l319 = alloca i1
  %l320 = alloca i1
  %l323 = alloca ptr
  %l327 = alloca i32
  %l328 = alloca { i64, ptr }
  %l333 = alloca ptr
  %l334 = alloca i1
  %l337 = alloca ptr
  %l343 = alloca { i64, ptr }
  %l346 = alloca ptr
  %l352 = alloca ptr
  %l356 = alloca { i64, ptr }
  %l362 = alloca i32
  %l366 = alloca i1
  %l370 = alloca ptr
  %l374 = alloca %"compiler/source:Span"
  %l375 = alloca %"compiler/diagmsg:Msg"
  %l376 = alloca i64
  %l381 = alloca ptr
  %l382 = alloca ptr
  %l383 = alloca ptr
  %l384 = alloca ptr
  %l385 = alloca i32
  %l389 = alloca i64
  %l390 = alloca ptr
  %l397 = alloca i64
  %l400 = alloca i64
  %l429 = alloca i64
  %l432 = alloca ptr
  %l434 = alloca ptr
  %l441 = alloca ptr
  %l445 = alloca i1
  %l448 = alloca i1
  %l450 = alloca ptr
  %l453 = alloca %"compiler/source:Span"
  %l454 = alloca %"compiler/diagmsg:Msg"
  %l455 = alloca i64
  %l460 = alloca i32
  %l463 = alloca i1
  %l465 = alloca ptr
  %l469 = alloca i1
  %l472 = alloca i1
  %l474 = alloca i1
  %l478 = alloca ptr
  %l480 = alloca ptr
  %l491 = alloca i1
  %l493 = alloca ptr
  %l496 = alloca %"compiler/source:Span"
  %l497 = alloca ptr
  %l502 = alloca i32
  %l503 = alloca { i64, ptr }
  %l505 = alloca %"compiler/diagmsg:Msg"
  %l506 = alloca i64
  %l512 = alloca i64
  %l515 = alloca i64
  %l544 = alloca i64
  %s0 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %s22 = alloca %olang.scope
  %s28 = alloca %olang.scope
  %s30 = alloca %olang.scope
  %t153 = alloca %"compiler/generic:Context", align 8
  store ptr %a0, ptr %l0
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t5 = load i64, ptr %l2, !tbaa !24
  %t8 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %t4, i64 %t5)
  store i64 %t8, ptr %l45
  br label %bb1
bb1:
  %t9 = load i64, ptr %l45, !tbaa !24
  store i64 %t9, ptr %l3, !tbaa !24
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/check:Checker", ptr %t10, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t14 = load i64, ptr %l3, !tbaa !24
  %t17 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t13, i64 %t14)
  store ptr %t17, ptr %l49
  br label %bb2
bb2:
  %t18 = load ptr, ptr %l49, !tbaa !29
  store ptr %t18, ptr %l4, !tbaa !29
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/check:Checker", ptr %t19, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !29
  %t23 = load i64, ptr %l3, !tbaa !24
  %t26 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t22, i64 %t23)
  store i64 %t26, ptr %l53
  br label %bb3
bb3:
  %t27 = load i64, ptr %l53, !tbaa !24
  store i64 %t27, ptr %l5, !tbaa !24
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/check:Checker", ptr %t28, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t32 = load i64, ptr %l2, !tbaa !24
  %t35 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceSig(ptr %v0, ptr %t31, i64 %t32)
  store i32 %t35, ptr %l57
  br label %bb4
bb4:
  %t36 = load i32, ptr %l57, !tbaa !23
  store i32 %t36, ptr %l6, !tbaa !23
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/check:Checker", ptr %t37, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !29
  store ptr %t40, ptr %l59, !tbaa !29
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/check:Checker", ptr %t41, i32 0, i32 1
  %t44 = load ptr, ptr %t43, !tbaa !29
  %t46 = getelementptr %"compiler/generic:Program", ptr %t44, i32 0, i32 0
  %t47 = load ptr, ptr %t46, !tbaa !29
  %t49 = getelementptr %"compiler/load:Loader", ptr %t47, i32 0, i32 10
  %t50 = load i64, ptr %l5, !tbaa !24
  %t53 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t49, i64 %t50)
  store ptr %t53, ptr %l65
  br label %bb5
bb5:
  %t54 = load ptr, ptr %l65, !tbaa !29
  %t56 = getelementptr %"compiler/load:Module", ptr %t54, i32 0, i32 4
  %t57 = load i64, ptr %t56, !tbaa !24
  %t58 = load ptr, ptr %l4, !tbaa !29
  %t60 = getelementptr %"compiler/ast:Func", ptr %t58, i32 0, i32 0
  %t61 = load %"compiler/source:Span", ptr %t60
  %t62 = load i64, ptr %l2, !tbaa !24
  %t63 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t68 = call %"compiler/generic:Origin" @compiler_2fgeneric_3aOrigin_2ector(ptr %s0, i64 %t57, %"compiler/source:Span" %t61, i64 %t62, i32 %t63)
  store %"compiler/generic:Origin" %t68, ptr %l72
  br label %bb6
bb6:
  %t69 = load %"compiler/generic:Origin", ptr %l72
  %t70 = load ptr, ptr %l59, !tbaa !29
  %t71 = getelementptr %"compiler/generic:Program", ptr %t70, i32 0, i32 51
  store %"compiler/generic:Origin" %t69, ptr %t71
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t74 = getelementptr %"compiler/check:Checker", ptr %t72, i32 0, i32 1
  %t75 = load ptr, ptr %t74, !tbaa !29
  %t77 = getelementptr %"compiler/generic:Program", ptr %t75, i32 0, i32 0
  %t78 = load ptr, ptr %t77, !tbaa !29
  %t80 = getelementptr %"compiler/load:Loader", ptr %t78, i32 0, i32 4
  %t81 = load ptr, ptr %t80, !tbaa !29
  store ptr %t81, ptr %l76, !tbaa !29
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t84 = getelementptr %"compiler/check:Checker", ptr %t82, i32 0, i32 1
  %t85 = load ptr, ptr %t84, !tbaa !29
  %t87 = getelementptr %"compiler/generic:Program", ptr %t85, i32 0, i32 0
  %t88 = load ptr, ptr %t87, !tbaa !29
  %t90 = getelementptr %"compiler/load:Loader", ptr %t88, i32 0, i32 4
  %t91 = load ptr, ptr %t90, !tbaa !29
  %t93 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eContextDepth(ptr %v0, ptr %t91)
  store i64 %t93, ptr %l81
  br label %bb7
bb7:
  %t94 = load ptr, ptr %l76, !tbaa !29
  %t95 = load i64, ptr %l81, !tbaa !24
  %t96 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eContextBase(ptr %v0, ptr %t94, i64 %t95)
  store i64 %t96, ptr %l82
  br label %bb8
bb8:
  %t97 = load i64, ptr %l82, !tbaa !24
  store i64 %t97, ptr %l7, !tbaa !24
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t99 = load i64, ptr %l2, !tbaa !24
  %t102 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einstContexts(ptr %v0, ptr %t98, i64 %t99)
  store i64 %t102, ptr %l85
  br label %bb9
bb9:
  %t103 = load i64, ptr %l85, !tbaa !24
  store i64 %t103, ptr %l8, !tbaa !24
  %t104 = load ptr, ptr %l0, !tbaa !29
  store ptr %t104, ptr %l86, !tbaa !29
  store i64 %a1, ptr %l87, !tbaa !24
  %t106 = load i64, ptr %l5, !tbaa !24
  store i64 %t106, ptr %l88, !tbaa !24
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t109 = getelementptr %"compiler/check:Checker", ptr %t107, i32 0, i32 1
  %t110 = load ptr, ptr %t109, !tbaa !29
  %t112 = getelementptr %"compiler/generic:Program", ptr %t110, i32 0, i32 2
  %t113 = load i32, ptr %l6, !tbaa !23
  %t116 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t112, i32 %t113)
  store i32 %t116, ptr %l93
  br label %bb10
bb10:
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t119 = getelementptr %"compiler/check:Checker", ptr %t117, i32 0, i32 1
  %t120 = load ptr, ptr %t119, !tbaa !29
  %t122 = getelementptr %"compiler/generic:Program", ptr %t120, i32 0, i32 2
  %t123 = load i32, ptr %l6, !tbaa !23
  %t126 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t122, i32 %t123)
  store i32 %t126, ptr %l98
  br label %bb11
bb11:
  %t127 = load ptr, ptr %l86, !tbaa !29
  %t128 = load i64, ptr %l87, !tbaa !24
  %t129 = load i64, ptr %l88, !tbaa !24
  %t130 = load i32, ptr %l93, !tbaa !23
  %t131 = load i32, ptr %l98, !tbaa !23
  %t132 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epush(ptr %v0, ptr %v0, ptr %t127, i64 %t128, i64 %t129, i32 %t130, i32 %t131)
  store ptr %t132, ptr %l99
  br label %bb12
bb12:
  %t133 = load ptr, ptr %l99, !tbaa !29
  store ptr %t133, ptr %l100, !tbaa !29
  %t135 = ptrtoint ptr %v0 to i64
  store i64 %t135, ptr %l101, !tbaa !24
  %t136 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t136, label %bb13, label %bb14
bb13:
  %t138 = call ptr @__olang_region_make(ptr %v0)
  %t139 = ptrtoint ptr %t138 to i64
  store i64 %t139, ptr %l101, !tbaa !24
  br label %bb14
bb14:
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t142 = getelementptr %"compiler/check:Checker", ptr %t140, i32 0, i32 1
  %t143 = load ptr, ptr %t142, !tbaa !29
  store ptr %t143, ptr %l104, !tbaa !29
  %t144 = load i64, ptr %l3, !tbaa !24
  store i64 %t144, ptr %l105, !tbaa !24
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t147 = getelementptr %"compiler/check:Checker", ptr %t145, i32 0, i32 1
  %t148 = load ptr, ptr %t147, !tbaa !29
  %t149 = load i64, ptr %l2, !tbaa !24
  %t152 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceArgs(ptr %v0, ptr %t148, i64 %t149)
  store i32 %t152, ptr %l109
  br label %bb15
bb15:
  %t154 = load i64, ptr %l101
  %t155 = inttoptr i64 %t154 to ptr
  %t156 = load ptr, ptr %l104, !tbaa !29
  %t157 = load i64, ptr %l105, !tbaa !24
  %t158 = load i32, ptr %l109, !tbaa !23
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnContext(ptr %t153, ptr %v0, ptr %t155, ptr %t156, i64 %t157, i32 %t158)
  call void @llvm.memmove.p0.p0.i64(ptr %l110, ptr %t153, i64 160, i1 false)
  br label %bb16
bb16:
  %t159 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t159, label %bb17, label %bb18
bb17:
  %t161 = load i64, ptr %l101
  %t162 = inttoptr i64 %t161 to ptr
  %t163 = getelementptr %"compiler/generic:Context", ptr %l110, i32 0, i32 3
  %t164 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t163, i32 0, i32 2
  %t165 = load { i64, ptr }, ptr %t164
  %t166 = extractvalue { i64, ptr } %t165, 1
  %t167 = call ptr @__olang_region_or(ptr %t166, ptr null)
  %t168 = icmp ne ptr %t167, null
  %t169 = select i1 %t168, ptr %t167, ptr null
  %t170 = getelementptr %"compiler/generic:Context", ptr %l110, i32 0, i32 3
  %t171 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t170, i32 0, i32 1
  %t172 = load { i64, ptr }, ptr %t171
  %t173 = extractvalue { i64, ptr } %t172, 1
  %t174 = call ptr @__olang_region_or(ptr %t173, ptr null)
  %t175 = icmp ne ptr %t174, null
  %t176 = select i1 %t175, ptr %t174, ptr %t169
  %t177 = getelementptr %"compiler/generic:Context", ptr %l110, i32 0, i32 3
  %t178 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t177, i32 0, i32 0
  %t179 = load { i64, ptr }, ptr %t178
  %t180 = extractvalue { i64, ptr } %t179, 1
  %t181 = call ptr @__olang_region_or(ptr %t180, ptr null)
  %t182 = icmp ne ptr %t181, null
  %t183 = select i1 %t182, ptr %t181, ptr %t176
  %t184 = getelementptr %"compiler/generic:Context", ptr %l110, i32 0, i32 2
  %t185 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t184, i32 0, i32 2
  %t186 = load { i64, ptr }, ptr %t185
  %t187 = extractvalue { i64, ptr } %t186, 1
  %t188 = call ptr @__olang_region_or(ptr %t187, ptr null)
  %t189 = icmp ne ptr %t188, null
  %t190 = select i1 %t189, ptr %t188, ptr %t183
  %t191 = getelementptr %"compiler/generic:Context", ptr %l110, i32 0, i32 2
  %t192 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t191, i32 0, i32 1
  %t193 = load { i64, ptr }, ptr %t192
  %t194 = extractvalue { i64, ptr } %t193, 1
  %t195 = call ptr @__olang_region_or(ptr %t194, ptr null)
  %t196 = icmp ne ptr %t195, null
  %t197 = select i1 %t196, ptr %t195, ptr %t190
  %t198 = getelementptr %"compiler/generic:Context", ptr %l110, i32 0, i32 2
  %t199 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t198, i32 0, i32 0
  %t200 = load { i64, ptr }, ptr %t199
  %t201 = extractvalue { i64, ptr } %t200, 1
  %t202 = call ptr @__olang_region_or(ptr %t201, ptr null)
  %t203 = icmp ne ptr %t202, null
  %t204 = select i1 %t203, ptr %t202, ptr %t197
  %t205 = icmp eq ptr %t204, %t162
  call void @__olang_region_settle(ptr %t162, i1 %t205)
  br label %bb18
bb18:
  %t206 = load ptr, ptr %l100, !tbaa !29
  %t207 = getelementptr %"compiler/check:frame", ptr %t206, i32 0, i32 4
  call void @llvm.memmove.p0.p0.i64(ptr %l112, ptr %t207, i64 160, i1 false)
  %t208 = load ptr, ptr %l100, !tbaa !29
  %t209 = getelementptr %"compiler/check:frame", ptr %t208, i32 0, i32 4
  call void @llvm.memmove.p0.p0.i64(ptr %t209, ptr %l110, i64 160, i1 false)
  %t210 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t210, label %bb19, label %bb20
bb19:
  %t212 = getelementptr %"compiler/generic:Context", ptr %l112, i32 0, i32 3
  %t213 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t212, i32 0, i32 2
  %t214 = load { i64, ptr }, ptr %t213
  %t215 = extractvalue { i64, ptr } %t214, 1
  %t216 = call ptr @__olang_region_or(ptr %t215, ptr null)
  %t217 = icmp ne ptr %t216, null
  %t218 = select i1 %t217, ptr %t216, ptr null
  %t219 = getelementptr %"compiler/generic:Context", ptr %l112, i32 0, i32 3
  %t220 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t219, i32 0, i32 1
  %t221 = load { i64, ptr }, ptr %t220
  %t222 = extractvalue { i64, ptr } %t221, 1
  %t223 = call ptr @__olang_region_or(ptr %t222, ptr null)
  %t224 = icmp ne ptr %t223, null
  %t225 = select i1 %t224, ptr %t223, ptr %t218
  %t226 = getelementptr %"compiler/generic:Context", ptr %l112, i32 0, i32 3
  %t227 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t226, i32 0, i32 0
  %t228 = load { i64, ptr }, ptr %t227
  %t229 = extractvalue { i64, ptr } %t228, 1
  %t230 = call ptr @__olang_region_or(ptr %t229, ptr null)
  %t231 = icmp ne ptr %t230, null
  %t232 = select i1 %t231, ptr %t230, ptr %t225
  %t233 = getelementptr %"compiler/generic:Context", ptr %l112, i32 0, i32 2
  %t234 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t233, i32 0, i32 2
  %t235 = load { i64, ptr }, ptr %t234
  %t236 = extractvalue { i64, ptr } %t235, 1
  %t237 = call ptr @__olang_region_or(ptr %t236, ptr null)
  %t238 = icmp ne ptr %t237, null
  %t239 = select i1 %t238, ptr %t237, ptr %t232
  %t240 = getelementptr %"compiler/generic:Context", ptr %l112, i32 0, i32 2
  %t241 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t240, i32 0, i32 1
  %t242 = load { i64, ptr }, ptr %t241
  %t243 = extractvalue { i64, ptr } %t242, 1
  %t244 = call ptr @__olang_region_or(ptr %t243, ptr null)
  %t245 = icmp ne ptr %t244, null
  %t246 = select i1 %t245, ptr %t244, ptr %t239
  %t247 = getelementptr %"compiler/generic:Context", ptr %l112, i32 0, i32 2
  %t248 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t247, i32 0, i32 0
  %t249 = load { i64, ptr }, ptr %t248
  %t250 = extractvalue { i64, ptr } %t249, 1
  %t251 = call ptr @__olang_region_or(ptr %t250, ptr null)
  %t252 = icmp ne ptr %t251, null
  %t253 = select i1 %t252, ptr %t251, ptr %t246
  call void @__olang_region_drop(ptr %t253)
  store %"compiler/generic:Context" zeroinitializer, ptr %l112
  br label %bb20
bb20:
  %t254 = load ptr, ptr %l0, !tbaa !29
  store ptr %t254, ptr %l114, !tbaa !29
  %t255 = load ptr, ptr %l0, !tbaa !29
  %t257 = getelementptr %"compiler/check:Checker", ptr %t255, i32 0, i32 1
  %t258 = load ptr, ptr %t257, !tbaa !29
  %t259 = load i64, ptr %l3, !tbaa !24
  %t262 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnIsExtern(ptr %v0, ptr %t258, i64 %t259)
  store i1 %t262, ptr %l118
  br label %bb21
bb21:
  %t263 = load i1, ptr %l118, !tbaa !21
  %t264 = xor i1 %t263, true
  %t266 = load ptr, ptr %l114, !tbaa !29
  %t267 = getelementptr %"compiler/check:Checker", ptr %t266, i32 0, i32 95
  store i1 %t264, ptr %t267, !tbaa !21
  %t268 = load ptr, ptr %l4, !tbaa !29
  %t270 = getelementptr %"compiler/ast:Func", ptr %t268, i32 0, i32 1
  %t271 = load ptr, ptr %t270, !tbaa !29
  %t273 = icmp eq ptr %t271, null
  %t275 = xor i1 %t273, true
  br i1 %t275, label %bb22, label %bb23
bb22:
  %t277 = load ptr, ptr %l0, !tbaa !29
  store ptr %t277, ptr %l124, !tbaa !29
  %t278 = load ptr, ptr %l4, !tbaa !29
  %t280 = getelementptr %"compiler/ast:Func", ptr %t278, i32 0, i32 1
  %t281 = load ptr, ptr %t280, !tbaa !29
  %t283 = icmp eq ptr %t281, null
  br i1 %t283, label %bb24, label %bb25
bb23:
  br label %bb28
bb24:
  call void @__olang_check_failed(ptr @olang_loc_32c5e7ac2123e322_6f8cff94f7dc96ce)
  unreachable
bb25:
  br label %bb26
bb26:
  %t285 = load ptr, ptr %l4, !tbaa !29
  %t287 = getelementptr %"compiler/ast:Func", ptr %t285, i32 0, i32 1
  %t288 = load ptr, ptr %t287, !tbaa !29
  %t291 = getelementptr %"compiler/ast:Param", ptr %t288, i32 0, i32 2
  %t292 = load ptr, ptr %t291, !tbaa !29
  %t293 = load ptr, ptr %l124, !tbaa !29
  %t295 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewrittenMet(ptr %v0, ptr %v0, ptr %t293, ptr %t292)
  store i1 %t295, ptr %l132
  br label %bb27
bb27:
  br label %bb28
bb28:
  %t296 = load ptr, ptr %l4, !tbaa !29
  %t298 = getelementptr %"compiler/ast:Func", ptr %t296, i32 0, i32 3
  %t299 = load ptr, ptr %t298, !tbaa !29
  %t301 = getelementptr %"compiler/ast:Sig", ptr %t299, i32 0, i32 0
  %t302 = load { i64, ptr }, ptr %t301, !tbaa !27
  store { i64, ptr } %t302, ptr %l10, !tbaa !27
  store i64 0, ptr %l11, !tbaa !24
  %t304 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t306 = extractvalue { i64, ptr } %t304, 0
  store i64 %t306, ptr %l12, !tbaa !24
  br label %bb29
bb29:
  %t308 = load i64, ptr %l11, !tbaa !24
  %t309 = load i64, ptr %l12, !tbaa !24
  %t312 = icmp slt i64 %t308, %t309
  %t314 = xor i1 %t312, true
  br i1 %t314, label %bb30, label %bb31
bb30:
  br label %bb35
bb31:
  br label %bb32
bb32:
  %t316 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t316, ptr %l142, !tbaa !27
  %t317 = load i64, ptr %l11, !tbaa !24
  %t319 = getelementptr { i64, ptr }, ptr %l142, i32 0, i32 1
  %t320 = load ptr, ptr %t319, !tbaa !27
  %t321 = getelementptr ptr, ptr %t320, i64 %t317
  %t322 = load ptr, ptr %t321, !tbaa !39
  %t324 = load ptr, ptr %l0, !tbaa !29
  %t327 = getelementptr %"compiler/ast:Param", ptr %t322, i32 0, i32 2
  %t328 = load ptr, ptr %t327, !tbaa !29
  %t331 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewrittenMet(ptr %v0, ptr %v0, ptr %t324, ptr %t328)
  store i1 %t331, ptr %l148
  br label %bb33
bb33:
  br label %bb34
bb34:
  %t332 = load i64, ptr %l11, !tbaa !24
  %t334 = add i64 %t332, 1
  store i64 %t334, ptr %l11, !tbaa !24
  br label %bb29
bb35:
  %t336 = load ptr, ptr %l0, !tbaa !29
  %t338 = getelementptr %"compiler/check:Checker", ptr %t336, i32 0, i32 95
  store i1 false, ptr %t338, !tbaa !21
  %t339 = load ptr, ptr %l0, !tbaa !29
  %t341 = getelementptr %"compiler/check:Checker", ptr %t339, i32 0, i32 1
  %t342 = load ptr, ptr %t341, !tbaa !29
  %t343 = load i64, ptr %l3, !tbaa !24
  %t346 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsGenerator(ptr %v0, ptr %t342, i64 %t343)
  store i1 %t346, ptr %l155
  br label %bb36
bb36:
  %t347 = load i1, ptr %l155, !tbaa !21
  store i1 %t347, ptr %l14, !tbaa !21
  %t348 = load ptr, ptr %l4, !tbaa !29
  %t350 = getelementptr %"compiler/ast:Func", ptr %t348, i32 0, i32 3
  %t351 = load ptr, ptr %t350, !tbaa !29
  %t353 = getelementptr %"compiler/ast:Sig", ptr %t351, i32 0, i32 1
  %t354 = load { i64, ptr }, ptr %t353, !tbaa !27
  %t356 = extractvalue { i64, ptr } %t354, 0
  %t358 = icmp sgt i64 %t356, 0
  br i1 %t358, label %bb37, label %bb38
bb37:
  %t360 = load ptr, ptr %l4, !tbaa !29
  %t362 = getelementptr %"compiler/ast:Func", ptr %t360, i32 0, i32 3
  %t363 = load ptr, ptr %t362, !tbaa !29
  %t365 = getelementptr %"compiler/ast:Sig", ptr %t363, i32 0, i32 1
  %t366 = load { i64, ptr }, ptr %t365, !tbaa !27
  store { i64, ptr } %t366, ptr %l15, !tbaa !27
  store i64 0, ptr %l16, !tbaa !24
  %t368 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t370 = extractvalue { i64, ptr } %t368, 0
  store i64 %t370, ptr %l17, !tbaa !24
  br label %bb39
bb38:
  br label %bb54
bb39:
  %t372 = load i64, ptr %l16, !tbaa !24
  %t373 = load i64, ptr %l17, !tbaa !24
  %t376 = icmp slt i64 %t372, %t373
  %t378 = xor i1 %t376, true
  br i1 %t378, label %bb40, label %bb41
bb40:
  br label %bb53
bb41:
  br label %bb42
bb42:
  %t380 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t380, ptr %l170, !tbaa !27
  %t381 = load i64, ptr %l16, !tbaa !24
  %t383 = getelementptr { i64, ptr }, ptr %l170, i32 0, i32 1
  %t384 = load ptr, ptr %t383, !tbaa !27
  %t385 = getelementptr ptr, ptr %t384, i64 %t381
  %t386 = load ptr, ptr %t385, !tbaa !39
  store ptr %t386, ptr %l18, !tbaa !29
  %t388 = load i1, ptr %l14, !tbaa !21
  br i1 %t388, label %bb43, label %bb44
bb43:
  %t390 = load ptr, ptr %l0, !tbaa !29
  %t391 = load i64, ptr %l3, !tbaa !24
  %t392 = load ptr, ptr %l18, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenResultMet(ptr %v0, ptr %v0, ptr %t390, i64 %t391, ptr %t392)
  br label %bb45
bb44:
  %t396 = load ptr, ptr %l0, !tbaa !29
  %t397 = load ptr, ptr %l18, !tbaa !29
  %t401 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrorResult(ptr %v0, ptr %v0, ptr %t396, ptr %t397)
  store i1 %t401, ptr %l180
  br label %bb46
bb45:
  br label %bb51
bb46:
  %t402 = load i1, ptr %l180, !tbaa !21
  %t403 = xor i1 %t402, true
  br i1 %t403, label %bb47, label %bb48
bb47:
  %t405 = load ptr, ptr %l0, !tbaa !29
  %t406 = load ptr, ptr %l18, !tbaa !29
  %t410 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewrittenMet(ptr %v0, ptr %v0, ptr %t405, ptr %t406)
  store i1 %t410, ptr %l185
  br label %bb49
bb48:
  br label %bb50
bb49:
  br label %bb50
bb50:
  br label %bb51
bb51:
  br label %bb52
bb52:
  %t411 = load i64, ptr %l16, !tbaa !24
  %t413 = add i64 %t411, 1
  store i64 %t413, ptr %l16, !tbaa !24
  br label %bb39
bb53:
  br label %bb54
bb54:
  %t415 = load i1, ptr %l14, !tbaa !21
  br i1 %t415, label %bb55, label %bb56
bb55:
  %t417 = load ptr, ptr %l4, !tbaa !29
  %t419 = getelementptr %"compiler/ast:Func", ptr %t417, i32 0, i32 3
  %t420 = load ptr, ptr %t419, !tbaa !29
  %t422 = getelementptr %"compiler/ast:Sig", ptr %t420, i32 0, i32 2
  %t423 = load i1, ptr %t422, !tbaa !21
  store i1 %t423, ptr %l189, !tbaa !21
  br label %bb57
bb56:
  store i1 false, ptr %l189, !tbaa !21
  br label %bb57
bb57:
  %t425 = load i1, ptr %l189, !tbaa !21
  br i1 %t425, label %bb58, label %bb59
bb58:
  store %olang.scope zeroinitializer, ptr %s12
  %t426 = load ptr, ptr %l0, !tbaa !29
  store ptr %t426, ptr %l193, !tbaa !29
  %t427 = load ptr, ptr %l0, !tbaa !29
  %t428 = load ptr, ptr %l4, !tbaa !29
  %t431 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enameSpan(ptr %v0, ptr %v0, ptr %t427, ptr %t428)
  store %"compiler/source:Span" %t431, ptr %l196
  br label %bb60
bb59:
  br label %bb67
bb60:
  %t432 = load ptr, ptr %l0, !tbaa !29
  store ptr %t432, ptr %l197, !tbaa !29
  %t433 = load ptr, ptr %l0, !tbaa !29
  %t435 = getelementptr %"compiler/check:Checker", ptr %t433, i32 0, i32 1
  %t436 = load ptr, ptr %t435, !tbaa !29
  %t438 = getelementptr %"compiler/generic:Program", ptr %t436, i32 0, i32 2
  store ptr %t438, ptr %l200, !tbaa !29
  %t439 = load ptr, ptr %l0, !tbaa !29
  %t441 = getelementptr %"compiler/check:Checker", ptr %t439, i32 0, i32 1
  %t442 = load ptr, ptr %t441, !tbaa !29
  %t444 = getelementptr %"compiler/generic:Program", ptr %t442, i32 0, i32 2
  store ptr %t444, ptr %l203, !tbaa !29
  %t445 = load ptr, ptr %l0, !tbaa !29
  %t447 = getelementptr %"compiler/check:Checker", ptr %t445, i32 0, i32 1
  %t448 = load ptr, ptr %t447, !tbaa !29
  %t450 = getelementptr %"compiler/generic:Program", ptr %t448, i32 0, i32 2
  %t451 = load i32, ptr %l6, !tbaa !23
  %t454 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t450, i32 %t451)
  store i32 %t454, ptr %l208
  br label %bb61
bb61:
  %t455 = load ptr, ptr %l203, !tbaa !29
  %t456 = load i32, ptr %l208, !tbaa !23
  %t457 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %t455, i32 %t456)
  store i32 %t457, ptr %l209
  br label %bb62
bb62:
  %t458 = load ptr, ptr %l200, !tbaa !29
  %t459 = load i32, ptr %l209, !tbaa !23
  %t460 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s12, ptr %t458, i32 %t459)
  store { i64, ptr } %t460, ptr %l210
  br label %bb63
bb63:
  %t461 = load { i64, ptr }, ptr %l210, !tbaa !27
  store { i64, ptr } %t461, ptr %l211, !tbaa !27
  %t462 = getelementptr { i64, ptr }, ptr %l211, i32 0, i32 1
  %t463 = load ptr, ptr %t462, !tbaa !27
  %t464 = getelementptr i32, ptr %t463, i64 0
  %t465 = load i32, ptr %t464, !tbaa !33
  %t466 = load ptr, ptr %l197, !tbaa !29
  %t468 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s12, ptr %t466, i32 %t465)
  store { i64, ptr } %t468, ptr %l213
  br label %bb64
bb64:
  %t469 = load { i64, ptr }, ptr %l213, !tbaa !27
  %t470 = extractvalue { i64, ptr } %t469, 0
  %t471 = extractvalue { i64, ptr } %t469, 1
  %t472 = mul i64 %t470, 1
  %t473 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t472)
  call void @llvm.memcpy.p0.p0.i64(ptr %t473, ptr %t471, i64 %t472, i1 false)
  %t474 = insertvalue { i64, ptr } undef, i64 %t470, 0
  %t475 = insertvalue { i64, ptr } %t474, ptr %t473, 1
  %t477 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eGenErrors(ptr %s12, ptr %s12, { i64, ptr } %t475)
  store %"compiler/diagmsg:Msg" %t477, ptr %l215
  br label %bb65
bb65:
  %t478 = load ptr, ptr %l193, !tbaa !29
  %t479 = load %"compiler/source:Span", ptr %l196
  %t480 = load %"compiler/diagmsg:Msg", ptr %l215
  %t481 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s12, ptr %t478, %"compiler/source:Span" %t479, %"compiler/diagmsg:Msg" %t480)
  store i64 %t481, ptr %l216
  br label %bb66
bb66:
  call void @__olang_scope_close(ptr %s12)
  br label %bb67
bb67:
  %t482 = load ptr, ptr %l0, !tbaa !29
  %t484 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t482)
  store ptr %t484, ptr %l218
  br label %bb68
bb68:
  %t485 = load ptr, ptr %l4, !tbaa !29
  %t487 = getelementptr %"compiler/ast:Func", ptr %t485, i32 0, i32 0
  %t488 = load %"compiler/source:Span", ptr %t487
  %t489 = load ptr, ptr %l218, !tbaa !29
  %t492 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eAddBlock(ptr %v0, ptr %t489, i32 -1, i32 0, %"compiler/source:Span" %t488)
  store i32 %t492, ptr %l222
  br label %bb69
bb69:
  %t493 = load ptr, ptr %l0, !tbaa !29
  %t495 = getelementptr %"compiler/check:Checker", ptr %t493, i32 0, i32 1
  %t496 = load ptr, ptr %t495, !tbaa !29
  %t498 = getelementptr %"compiler/generic:Program", ptr %t496, i32 0, i32 2
  store ptr %t498, ptr %l225, !tbaa !29
  %t499 = load ptr, ptr %l0, !tbaa !29
  %t501 = getelementptr %"compiler/check:Checker", ptr %t499, i32 0, i32 1
  %t502 = load ptr, ptr %t501, !tbaa !29
  %t504 = getelementptr %"compiler/generic:Program", ptr %t502, i32 0, i32 2
  %t505 = load i32, ptr %l6, !tbaa !23
  %t508 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t504, i32 %t505)
  store i32 %t508, ptr %l230
  br label %bb70
bb70:
  %t509 = load ptr, ptr %l225, !tbaa !29
  %t510 = load i32, ptr %l230, !tbaa !23
  %t511 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t509, i32 %t510)
  store { i64, ptr } %t511, ptr %l231
  br label %bb71
bb71:
  %t512 = load { i64, ptr }, ptr %l231, !tbaa !27
  store { i64, ptr } %t512, ptr %l19, !tbaa !27
  store i64 0, ptr %l20, !tbaa !24
  %t513 = load ptr, ptr %l4, !tbaa !29
  %t515 = getelementptr %"compiler/ast:Func", ptr %t513, i32 0, i32 1
  %t516 = load ptr, ptr %t515, !tbaa !29
  %t518 = icmp eq ptr %t516, null
  %t520 = xor i1 %t518, true
  br i1 %t520, label %bb72, label %bb73
bb72:
  %t522 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t524 = extractvalue { i64, ptr } %t522, 0
  %t526 = icmp sgt i64 %t524, 0
  br i1 %t526, label %bb74, label %bb75
bb73:
  br label %bb94
bb74:
  %t528 = load ptr, ptr %l0, !tbaa !29
  store ptr %t528, ptr %l239, !tbaa !29
  %t529 = load ptr, ptr %l4, !tbaa !29
  %t531 = getelementptr %"compiler/ast:Func", ptr %t529, i32 0, i32 1
  %t532 = load ptr, ptr %t531, !tbaa !29
  %t534 = icmp eq ptr %t532, null
  br i1 %t534, label %bb76, label %bb77
bb75:
  br label %bb93
bb76:
  call void @__olang_check_failed(ptr @olang_loc_792a6374d02fed89_d05ed111c48ae675)
  unreachable
bb77:
  br label %bb78
bb78:
  %t536 = load ptr, ptr %l4, !tbaa !29
  %t538 = getelementptr %"compiler/ast:Func", ptr %t536, i32 0, i32 1
  %t539 = load ptr, ptr %t538, !tbaa !29
  %t542 = getelementptr %"compiler/ast:Param", ptr %t539, i32 0, i32 1
  %t543 = load i32, ptr %t542, !tbaa !23
  store i32 %t543, ptr %l246, !tbaa !23
  %t544 = load ptr, ptr %l4, !tbaa !29
  %t546 = getelementptr %"compiler/ast:Func", ptr %t544, i32 0, i32 1
  %t547 = load ptr, ptr %t546, !tbaa !29
  %t549 = icmp eq ptr %t547, null
  br i1 %t549, label %bb79, label %bb80
bb79:
  call void @__olang_check_failed(ptr @olang_loc_792a6374d02fed89_d05ed111c48ae675)
  unreachable
bb80:
  br label %bb81
bb81:
  %t551 = load ptr, ptr %l4, !tbaa !29
  %t553 = getelementptr %"compiler/ast:Func", ptr %t551, i32 0, i32 1
  %t554 = load ptr, ptr %t553, !tbaa !29
  %t557 = getelementptr %"compiler/ast:Param", ptr %t554, i32 0, i32 0
  %t558 = load %"compiler/source:Span", ptr %t557
  store %"compiler/source:Span" %t558, ptr %l253
  %t559 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t559, ptr %l254, !tbaa !27
  %t560 = getelementptr { i64, ptr }, ptr %l254, i32 0, i32 1
  %t561 = load ptr, ptr %t560, !tbaa !27
  %t562 = getelementptr i32, ptr %t561, i64 0
  %t563 = load i32, ptr %t562, !tbaa !33
  store i32 %t563, ptr %l255, !tbaa !23
  %t564 = load ptr, ptr %l4, !tbaa !29
  %t566 = getelementptr %"compiler/ast:Func", ptr %t564, i32 0, i32 1
  %t567 = load ptr, ptr %t566, !tbaa !29
  %t569 = icmp eq ptr %t567, null
  br i1 %t569, label %bb82, label %bb83
bb82:
  call void @__olang_check_failed(ptr @olang_loc_792a6374d02fed89_d05ed111c48ae675)
  unreachable
bb83:
  br label %bb84
bb84:
  %t571 = load ptr, ptr %l4, !tbaa !29
  %t573 = getelementptr %"compiler/ast:Func", ptr %t571, i32 0, i32 1
  %t574 = load ptr, ptr %t573, !tbaa !29
  %t577 = getelementptr %"compiler/ast:Param", ptr %t574, i32 0, i32 2
  %t578 = load ptr, ptr %t577, !tbaa !29
  %t579 = load ptr, ptr %l239, !tbaa !29
  %t580 = load i32, ptr %l246, !tbaa !23
  %t581 = load %"compiler/source:Span", ptr %l253
  %t582 = load i32, ptr %l255, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eparam(ptr %v0, ptr %v0, ptr %t579, i32 %t580, %"compiler/source:Span" %t581, i32 %t582, i64 0, ptr %t578)
  br label %bb85
bb85:
  %t584 = load ptr, ptr %l0, !tbaa !29
  store ptr %t584, ptr %l263, !tbaa !29
  %t585 = load ptr, ptr %l4, !tbaa !29
  %t587 = getelementptr %"compiler/ast:Func", ptr %t585, i32 0, i32 1
  %t588 = load ptr, ptr %t587, !tbaa !29
  %t590 = icmp eq ptr %t588, null
  br i1 %t590, label %bb86, label %bb87
bb86:
  call void @__olang_check_failed(ptr @olang_loc_3ac7b5fdc4e7bc94_cc60c4585a595e60)
  unreachable
bb87:
  br label %bb88
bb88:
  %t592 = load ptr, ptr %l4, !tbaa !29
  %t594 = getelementptr %"compiler/ast:Func", ptr %t592, i32 0, i32 1
  %t595 = load ptr, ptr %t594, !tbaa !29
  %t598 = getelementptr %"compiler/ast:Param", ptr %t595, i32 0, i32 2
  %t599 = load ptr, ptr %t598, !tbaa !29
  store ptr %t599, ptr %l21, !tbaa !29
  %t601 = load ptr, ptr %l21, !tbaa !29
  %t603 = icmp eq ptr %t601, null
  br i1 %t603, label %bb89, label %bb90
bb89:
  call void @__olang_check_failed(ptr @olang_loc_3ac7b5fdc4e7bc94_cc60c4585a595e60)
  unreachable
bb90:
  br label %bb91
bb91:
  %t605 = load ptr, ptr %l21, !tbaa !29
  %t606 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t606, ptr %l274, !tbaa !27
  %t607 = getelementptr { i64, ptr }, ptr %l274, i32 0, i32 1
  %t608 = load ptr, ptr %t607, !tbaa !27
  %t609 = getelementptr i32, ptr %t608, i64 0
  %t610 = load i32, ptr %t609, !tbaa !33
  %t611 = load ptr, ptr %l263, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emutParam(ptr %v0, ptr %v0, ptr %t611, ptr %t605, i32 %t610)
  br label %bb92
bb92:
  br label %bb93
bb93:
  store i64 1, ptr %l20, !tbaa !24
  br label %bb94
bb94:
  %t614 = load ptr, ptr %l4, !tbaa !29
  %t616 = getelementptr %"compiler/ast:Func", ptr %t614, i32 0, i32 3
  %t617 = load ptr, ptr %t616, !tbaa !29
  %t619 = getelementptr %"compiler/ast:Sig", ptr %t617, i32 0, i32 0
  %t620 = load { i64, ptr }, ptr %t619, !tbaa !27
  store { i64, ptr } %t620, ptr %l22, !tbaa !27
  store i64 0, ptr %l23, !tbaa !24
  %t622 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t624 = extractvalue { i64, ptr } %t622, 0
  store i64 %t624, ptr %l24, !tbaa !24
  br label %bb95
bb95:
  %t626 = load i64, ptr %l23, !tbaa !24
  %t627 = load i64, ptr %l24, !tbaa !24
  %t630 = icmp slt i64 %t626, %t627
  %t632 = xor i1 %t630, true
  br i1 %t632, label %bb96, label %bb97
bb96:
  br label %bb132
bb97:
  br label %bb98
bb98:
  %t634 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t634, ptr %l285, !tbaa !27
  %t635 = load i64, ptr %l23, !tbaa !24
  %t637 = getelementptr { i64, ptr }, ptr %l285, i32 0, i32 1
  %t638 = load ptr, ptr %t637, !tbaa !27
  %t639 = getelementptr ptr, ptr %t638, i64 %t635
  %t640 = load ptr, ptr %t639, !tbaa !39
  store ptr %t640, ptr %l25, !tbaa !29
  %t642 = load i64, ptr %l20, !tbaa !24
  %t643 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t645 = extractvalue { i64, ptr } %t643, 0
  %t648 = icmp slt i64 %t642, %t645
  br i1 %t648, label %bb99, label %bb100
bb99:
  store %olang.scope zeroinitializer, ptr %s17
  %t650 = load ptr, ptr %l0, !tbaa !29
  %t651 = load ptr, ptr %l25, !tbaa !29
  %t653 = getelementptr %"compiler/ast:Param", ptr %t651, i32 0, i32 1
  %t654 = load i32, ptr %t653, !tbaa !23
  %t655 = load ptr, ptr %l25, !tbaa !29
  %t657 = getelementptr %"compiler/ast:Param", ptr %t655, i32 0, i32 0
  %t658 = load %"compiler/source:Span", ptr %t657
  %t659 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t659, ptr %l297, !tbaa !27
  %t660 = load i64, ptr %l20, !tbaa !24
  %t662 = getelementptr { i64, ptr }, ptr %l297, i32 0, i32 1
  %t663 = load ptr, ptr %t662, !tbaa !27
  %t664 = getelementptr i32, ptr %t663, i64 %t660
  %t665 = load i32, ptr %t664, !tbaa !33
  %t666 = load i64, ptr %l20, !tbaa !24
  %t667 = load ptr, ptr %l25, !tbaa !29
  %t669 = getelementptr %"compiler/ast:Param", ptr %t667, i32 0, i32 2
  %t670 = load ptr, ptr %t669, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eparam(ptr %v0, ptr %v0, ptr %t650, i32 %t654, %"compiler/source:Span" %t658, i32 %t665, i64 %t666, ptr %t670)
  br label %bb101
bb100:
  br label %bb130
bb101:
  %t677 = load ptr, ptr %l0, !tbaa !29
  %t678 = load ptr, ptr %l25, !tbaa !29
  %t679 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t679, ptr %l305, !tbaa !27
  %t680 = load i64, ptr %l20, !tbaa !24
  %t682 = getelementptr { i64, ptr }, ptr %l305, i32 0, i32 1
  %t683 = load ptr, ptr %t682, !tbaa !27
  %t684 = getelementptr i32, ptr %t683, i64 %t680
  %t685 = load i32, ptr %t684, !tbaa !33
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eparamWritten(ptr %v0, ptr %v0, ptr %t677, ptr %t678, i32 %t685)
  br label %bb102
bb102:
  %t689 = load ptr, ptr %l25, !tbaa !29
  %t691 = getelementptr %"compiler/ast:Param", ptr %t689, i32 0, i32 3
  %t692 = load ptr, ptr %t691, !tbaa !29
  %t694 = icmp eq ptr %t692, null
  %t696 = xor i1 %t694, true
  br i1 %t696, label %bb103, label %bb104
bb103:
  %t698 = load ptr, ptr %l0, !tbaa !29
  %t700 = getelementptr %"compiler/check:Checker", ptr %t698, i32 0, i32 1
  %t701 = load ptr, ptr %t700, !tbaa !29
  %t703 = getelementptr %"compiler/generic:Program", ptr %t701, i32 0, i32 2
  %t704 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t704, ptr %l316, !tbaa !27
  %t705 = load i64, ptr %l20, !tbaa !24
  %t707 = getelementptr { i64, ptr }, ptr %l316, i32 0, i32 1
  %t708 = load ptr, ptr %t707, !tbaa !27
  %t709 = getelementptr i32, ptr %t708, i64 %t705
  %t710 = load i32, ptr %t709, !tbaa !33
  %t713 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eClosed(ptr %v0, ptr %t703, i32 %t710)
  store i1 %t713, ptr %l319
  br label %bb105
bb104:
  store i1 false, ptr %l312, !tbaa !21
  br label %bb106
bb105:
  %t714 = load i1, ptr %l319, !tbaa !21
  store i1 %t714, ptr %l312, !tbaa !21
  br label %bb106
bb106:
  %t715 = load i1, ptr %l312, !tbaa !21
  br i1 %t715, label %bb107, label %bb108
bb107:
  %t716 = load ptr, ptr %l0, !tbaa !29
  %t718 = getelementptr %"compiler/check:Checker", ptr %t716, i32 0, i32 1
  %t719 = load ptr, ptr %t718, !tbaa !29
  %t721 = getelementptr %"compiler/generic:Program", ptr %t719, i32 0, i32 2
  store ptr %t721, ptr %l323, !tbaa !29
  %t722 = load ptr, ptr %l0, !tbaa !29
  %t724 = getelementptr %"compiler/check:Checker", ptr %t722, i32 0, i32 1
  %t725 = load ptr, ptr %t724, !tbaa !29
  %t726 = load i64, ptr %l2, !tbaa !24
  %t729 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceArgs(ptr %v0, ptr %t725, i64 %t726)
  store i32 %t729, ptr %l327
  br label %bb109
bb108:
  store i1 false, ptr %l320, !tbaa !21
  br label %bb111
bb109:
  %t730 = load ptr, ptr %l323, !tbaa !29
  %t731 = load i32, ptr %l327, !tbaa !23
  %t732 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s17, ptr %t730, i32 %t731)
  store { i64, ptr } %t732, ptr %l328
  br label %bb110
bb110:
  %t733 = load { i64, ptr }, ptr %l328, !tbaa !27
  %t734 = extractvalue { i64, ptr } %t733, 0
  %t736 = icmp eq i64 %t734, 0
  store i1 %t736, ptr %l320, !tbaa !21
  br label %bb111
bb111:
  %t738 = load i1, ptr %l320, !tbaa !21
  br i1 %t738, label %bb112, label %bb113
bb112:
  %t739 = load ptr, ptr %l25, !tbaa !29
  %t741 = getelementptr %"compiler/ast:Param", ptr %t739, i32 0, i32 3
  %t742 = load ptr, ptr %t741, !tbaa !29
  store ptr %t742, ptr %l333, !tbaa !29
  store i1 false, ptr %l334, !tbaa !21
  %t745 = load ptr, ptr %l333, !tbaa !29
  %t746 = icmp ne ptr %t745, null
  br i1 %t746, label %bb114, label %bb115
bb113:
  br label %bb129
bb114:
  %t748 = load ptr, ptr %l333, !tbaa !29
  %t749 = load i64, ptr %t748, !range !{i64 0, i64 30}
  %t751 = icmp eq i64 %t749, 1
  store i1 %t751, ptr %l334, !tbaa !21
  br label %bb115
bb115:
  %t752 = load i1, ptr %l334, !tbaa !21
  br i1 %t752, label %bb116, label %bb117
bb116:
  br label %bb118
bb117:
  br label %bb123
bb118:
  %t753 = load ptr, ptr %l0, !tbaa !29
  store ptr %t753, ptr %l337, !tbaa !29
  %t754 = load ptr, ptr %l25, !tbaa !29
  %t756 = getelementptr %"compiler/ast:Param", ptr %t754, i32 0, i32 3
  %t757 = load ptr, ptr %t756, !tbaa !29
  %t759 = icmp eq ptr %t757, null
  br i1 %t759, label %bb119, label %bb120
bb119:
  call void @__olang_check_failed(ptr @olang_loc_f6bd8cf5a89007a3_6ba3a2d919b35b7f)
  unreachable
bb120:
  br label %bb121
bb121:
  %t761 = load ptr, ptr %l25, !tbaa !29
  %t763 = getelementptr %"compiler/ast:Param", ptr %t761, i32 0, i32 3
  %t764 = load ptr, ptr %t763, !tbaa !29
  %t765 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t765, ptr %l343, !tbaa !27
  %t766 = load i64, ptr %l20, !tbaa !24
  %t768 = getelementptr { i64, ptr }, ptr %l343, i32 0, i32 1
  %t769 = load ptr, ptr %t768, !tbaa !27
  %t770 = getelementptr i32, ptr %t769, i64 %t766
  %t771 = load i32, ptr %t770, !tbaa !33
  %t772 = load ptr, ptr %l337, !tbaa !29
  %t775 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexprTo(ptr %v0, ptr %v0, ptr %v0, ptr %t772, ptr %t764, i32 %t771)
  store ptr %t775, ptr %l346
  br label %bb122
bb122:
  br label %bb128
bb123:
  br i1 true, label %bb124, label %bb125
bb124:
  br label %bb126
bb125:
  br label %bb127
bb126:
  br label %bb128
bb127:
  call void @__olang_check_failed(ptr @olang_loc_390978d15c29d94d_c1ef383dda1c2621)
  unreachable
bb128:
  br label %bb129
bb129:
  call void @__olang_scope_close(ptr %s17)
  br label %bb130
bb130:
  %t776 = load i64, ptr %l20, !tbaa !24
  %t778 = add i64 %t776, 1
  store i64 %t778, ptr %l20, !tbaa !24
  br label %bb131
bb131:
  %t780 = load i64, ptr %l23, !tbaa !24
  %t782 = add i64 %t780, 1
  store i64 %t782, ptr %l23, !tbaa !24
  br label %bb95
bb132:
  %t784 = load ptr, ptr %l0, !tbaa !29
  %t786 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t784)
  store ptr %t786, ptr %l352
  br label %bb133
bb133:
  %t787 = load ptr, ptr %l0, !tbaa !29
  %t789 = getelementptr %"compiler/check:Checker", ptr %t787, i32 0, i32 1
  %t790 = load ptr, ptr %t789, !tbaa !29
  %t791 = load i32, ptr %l6, !tbaa !23
  %t794 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eScopeVarsOf(ptr %v0, ptr %s0, ptr %t790, i32 %t791)
  store { i64, ptr } %t794, ptr %l356
  br label %bb134
bb134:
  %t795 = load { i64, ptr }, ptr %l356, !tbaa !27
  %t796 = extractvalue { i64, ptr } %t795, 0
  %t797 = extractvalue { i64, ptr } %t795, 1
  %t798 = mul i64 %t796, 8
  %t799 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t798)
  call void @llvm.memcpy.p0.p0.i64(ptr %t799, ptr %t797, i64 %t798, i1 false)
  %t800 = insertvalue { i64, ptr } undef, i64 %t796, 0
  %t801 = insertvalue { i64, ptr } %t800, ptr %t799, 1
  %t802 = load ptr, ptr %l352, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eSetVars(ptr %v0, ptr %s0, ptr %t802, { i64, ptr } %t801)
  br label %bb135
bb135:
  %t804 = load ptr, ptr %l0, !tbaa !29
  %t806 = getelementptr %"compiler/check:Checker", ptr %t804, i32 0, i32 1
  %t807 = load ptr, ptr %t806, !tbaa !29
  %t809 = getelementptr %"compiler/generic:Program", ptr %t807, i32 0, i32 2
  %t810 = load i32, ptr %l6, !tbaa !23
  %t813 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t809, i32 %t810)
  store i32 %t813, ptr %l362
  br label %bb136
bb136:
  %t814 = load i32, ptr @G_2ecompiler_2ftypes_2eNoreturnT, !tbaa !23
  %t815 = load i32, ptr %l362, !tbaa !23
  %t817 = icmp eq i32 %t815, %t814
  store i1 %t817, ptr %l27, !tbaa !21
  %t819 = load i1, ptr %l27, !tbaa !21
  br i1 %t819, label %bb137, label %bb138
bb137:
  %t821 = load ptr, ptr %l4, !tbaa !29
  %t823 = getelementptr %"compiler/ast:Func", ptr %t821, i32 0, i32 3
  %t824 = load ptr, ptr %t823, !tbaa !29
  %t826 = getelementptr %"compiler/ast:Sig", ptr %t824, i32 0, i32 2
  %t827 = load i1, ptr %t826, !tbaa !21
  store i1 %t827, ptr %l366, !tbaa !21
  br label %bb139
bb138:
  store i1 false, ptr %l366, !tbaa !21
  br label %bb139
bb139:
  %t829 = load i1, ptr %l366, !tbaa !21
  br i1 %t829, label %bb140, label %bb141
bb140:
  store %olang.scope zeroinitializer, ptr %s22
  %t830 = load ptr, ptr %l0, !tbaa !29
  store ptr %t830, ptr %l370, !tbaa !29
  %t831 = load ptr, ptr %l0, !tbaa !29
  %t832 = load ptr, ptr %l4, !tbaa !29
  %t834 = getelementptr %"compiler/ast:Func", ptr %t832, i32 0, i32 0
  %t835 = load %"compiler/source:Span", ptr %t834
  %t838 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enoreturnSpan(ptr %v0, ptr %t831, %"compiler/source:Span" %t835)
  store %"compiler/source:Span" %t838, ptr %l374
  br label %bb142
bb141:
  br label %bb145
bb142:
  %t839 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoreturnErrors(ptr %s22)
  store %"compiler/diagmsg:Msg" %t839, ptr %l375
  br label %bb143
bb143:
  %t840 = load ptr, ptr %l370, !tbaa !29
  %t841 = load %"compiler/source:Span", ptr %l374
  %t842 = load %"compiler/diagmsg:Msg", ptr %l375
  %t843 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s22, ptr %t840, %"compiler/source:Span" %t841, %"compiler/diagmsg:Msg" %t842)
  store i64 %t843, ptr %l376
  br label %bb144
bb144:
  call void @__olang_scope_close(ptr %s22)
  br label %bb145
bb145:
  %t844 = load ptr, ptr %l4, !tbaa !29
  %t846 = getelementptr %"compiler/ast:Func", ptr %t844, i32 0, i32 4
  %t847 = load { i64, ptr }, ptr %t846, !tbaa !27
  store { i64, ptr } %t847, ptr %l28, !tbaa !27
  %t849 = load i1, ptr %l14, !tbaa !21
  br i1 %t849, label %bb146, label %bb147
bb146:
  %t851 = load ptr, ptr %l0, !tbaa !29
  %t853 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t851)
  store ptr %t853, ptr %l381
  br label %bb148
bb147:
  br label %bb166
bb148:
  %t854 = load ptr, ptr %l381, !tbaa !29
  store ptr %t854, ptr %l382, !tbaa !29
  %t855 = load ptr, ptr %l0, !tbaa !29
  store ptr %t855, ptr %l383, !tbaa !29
  %t856 = load ptr, ptr %l4, !tbaa !29
  store ptr %t856, ptr %l384, !tbaa !29
  %t857 = load i32, ptr %l6, !tbaa !23
  store i32 %t857, ptr %l385, !tbaa !23
  %t858 = load ptr, ptr %l0, !tbaa !29
  %t860 = getelementptr %"compiler/check:Checker", ptr %t858, i32 0, i32 1
  %t861 = load ptr, ptr %t860, !tbaa !29
  %t862 = load i64, ptr %l3, !tbaa !24
  %t865 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eGenElem(ptr %v0, ptr %t861, i64 %t862)
  store i64 %t865, ptr %l389
  br label %bb149
bb149:
  %t866 = load ptr, ptr %l383, !tbaa !29
  %t867 = load ptr, ptr %l384, !tbaa !29
  %t868 = load i32, ptr %l385, !tbaa !23
  %t869 = load i64, ptr %l389, !tbaa !24
  %t870 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenRoot(ptr %v0, ptr %v0, ptr %v0, ptr %t866, ptr %t867, i32 %t868, i64 %t869)
  store ptr %t870, ptr %l390
  br label %bb150
bb150:
  %t871 = load ptr, ptr %l390, !tbaa !29
  %t873 = load ptr, ptr %l382, !tbaa !29
  %t874 = getelementptr %"compiler/typed:Body", ptr %t873, i32 0, i32 11
  store ptr %t871, ptr %t874, !tbaa !29
  %t875 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %t875)
  br label %bb151
bb151:
  store i64 0, ptr %l29, !tbaa !24
  %t877 = load i64, ptr %l8, !tbaa !24
  store i64 %t877, ptr %l30, !tbaa !24
  store i64 1, ptr %l31, !tbaa !24
  %t879 = load i64, ptr %l30, !tbaa !24
  %t880 = load i64, ptr %l29, !tbaa !24
  %t883 = icmp sgt i64 %t879, %t880
  br i1 %t883, label %bb152, label %bb153
bb152:
  %t885 = load i64, ptr %l31, !tbaa !24
  %t887 = icmp sgt i64 %t885, 0
  br i1 %t887, label %bb154, label %bb155
bb153:
  store i64 0, ptr %l397, !tbaa !24
  br label %bb157
bb154:
  %t889 = load i64, ptr %l30, !tbaa !24
  %t890 = load i64, ptr %l29, !tbaa !24
  %t893 = sub i64 %t889, %t890
  %t894 = load i64, ptr %l31, !tbaa !24
  %t897 = add i64 %t893, %t894
  %t899 = sub i64 %t897, 1
  %t900 = load i64, ptr %l31, !tbaa !24
  %t903 = sdiv i64 %t899, %t900
  store i64 %t903, ptr %l400, !tbaa !24
  br label %bb156
bb155:
  store i64 0, ptr %l400, !tbaa !24
  br label %bb156
bb156:
  %t905 = load i64, ptr %l400, !tbaa !24
  store i64 %t905, ptr %l397, !tbaa !24
  br label %bb157
bb157:
  %t906 = load i64, ptr %l397, !tbaa !24
  store i64 %t906, ptr %l32, !tbaa !24
  store i64 0, ptr %l33, !tbaa !24
  br label %bb158
bb158:
  %t907 = load i64, ptr %l33, !tbaa !24
  %t908 = load i64, ptr %l32, !tbaa !24
  %t911 = icmp slt i64 %t907, %t908
  %t913 = xor i1 %t911, true
  br i1 %t913, label %bb159, label %bb160
bb159:
  br label %bb164
bb160:
  br label %bb161
bb161:
  %t915 = load i64, ptr %l29, !tbaa !24
  %t916 = load i64, ptr %l33, !tbaa !24
  %t917 = load i64, ptr %l31, !tbaa !24
  %t920 = mul i64 %t916, %t917
  %t923 = add i64 %t915, %t920
  store i64 %t923, ptr %l34, !tbaa !24
  %t925 = load ptr, ptr %l0, !tbaa !29
  %t927 = getelementptr %"compiler/check:Checker", ptr %t925, i32 0, i32 1
  %t928 = load ptr, ptr %t927, !tbaa !29
  %t930 = getelementptr %"compiler/generic:Program", ptr %t928, i32 0, i32 0
  %t931 = load ptr, ptr %t930, !tbaa !29
  %t933 = getelementptr %"compiler/load:Loader", ptr %t931, i32 0, i32 4
  %t934 = load ptr, ptr %t933, !tbaa !29
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2ePopContext(ptr %v0, ptr %t934)
  br label %bb162
bb162:
  br label %bb163
bb163:
  %t936 = load i64, ptr %l33, !tbaa !24
  %t938 = add i64 %t936, 1
  store i64 %t938, ptr %l33, !tbaa !24
  br label %bb158
bb164:
  %t940 = load ptr, ptr %l0, !tbaa !29
  %t942 = getelementptr %"compiler/check:Checker", ptr %t940, i32 0, i32 1
  %t943 = load ptr, ptr %t942, !tbaa !29
  %t945 = getelementptr %"compiler/generic:Program", ptr %t943, i32 0, i32 0
  %t946 = load ptr, ptr %t945, !tbaa !29
  %t948 = getelementptr %"compiler/load:Loader", ptr %t946, i32 0, i32 4
  %t949 = load ptr, ptr %t948, !tbaa !29
  %t950 = load i64, ptr %l7, !tbaa !24
  %t953 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eContextBase(ptr %v0, ptr %t949, i64 %t950)
  store i64 %t953, ptr %l429
  br label %bb165
bb165:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb166:
  %t954 = load ptr, ptr %l0, !tbaa !29
  %t955 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t958 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erootStmts(ptr %v0, ptr %v0, ptr %v0, ptr %t954, { i64, ptr } %t955)
  store ptr %t958, ptr %l432
  br label %bb167
bb167:
  %t959 = load ptr, ptr %l432, !tbaa !29
  store ptr %t959, ptr %l35, !tbaa !29
  %t960 = load ptr, ptr %l0, !tbaa !29
  %t962 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t960)
  store ptr %t962, ptr %l434
  br label %bb168
bb168:
  %t963 = load ptr, ptr %l434, !tbaa !29
  %t964 = load ptr, ptr %l35, !tbaa !29
  %t968 = getelementptr %"compiler/typed:Body", ptr %t963, i32 0, i32 11
  store ptr %t964, ptr %t968, !tbaa !29
  %t969 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eviewBody(ptr %v0, ptr %t969)
  br label %bb169
bb169:
  %t971 = load i1, ptr %l27, !tbaa !21
  br i1 %t971, label %bb170, label %bb171
bb170:
  %t973 = load ptr, ptr %l0, !tbaa !29
  %t975 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t973)
  store ptr %t975, ptr %l441
  br label %bb172
bb171:
  %t976 = load ptr, ptr %l0, !tbaa !29
  %t978 = getelementptr %"compiler/check:Checker", ptr %t976, i32 0, i32 1
  %t979 = load ptr, ptr %t978, !tbaa !29
  %t981 = getelementptr %"compiler/generic:Program", ptr %t979, i32 0, i32 2
  %t982 = load i32, ptr %l6, !tbaa !23
  %t985 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t981, i32 %t982)
  store i32 %t985, ptr %l460
  br label %bb183
bb172:
  %t986 = load ptr, ptr %l441, !tbaa !29
  %t988 = getelementptr %"compiler/check:frame", ptr %t986, i32 0, i32 18
  %t989 = load i1, ptr %t988, !tbaa !21
  %t991 = xor i1 %t989, true
  br i1 %t991, label %bb173, label %bb174
bb173:
  %t993 = load ptr, ptr %l35, !tbaa !29
  %t996 = call i1 @compiler_2fcheck_2eleavesBlock(ptr %v0, ptr %t993)
  store i1 %t996, ptr %l448
  br label %bb175
bb174:
  store i1 false, ptr %l445, !tbaa !21
  br label %bb176
bb175:
  %t997 = load i1, ptr %l448, !tbaa !21
  %t998 = xor i1 %t997, true
  store i1 %t998, ptr %l445, !tbaa !21
  br label %bb176
bb176:
  %t1000 = load i1, ptr %l445, !tbaa !21
  br i1 %t1000, label %bb177, label %bb178
bb177:
  store %olang.scope zeroinitializer, ptr %s28
  %t1001 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1001, ptr %l450, !tbaa !29
  %t1002 = load ptr, ptr %l0, !tbaa !29
  %t1003 = load ptr, ptr %l4, !tbaa !29
  %t1006 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enameSpan(ptr %v0, ptr %v0, ptr %t1002, ptr %t1003)
  store %"compiler/source:Span" %t1006, ptr %l453
  br label %bb179
bb178:
  br label %bb182
bb179:
  %t1007 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoreturnFallsOff(ptr %s28)
  store %"compiler/diagmsg:Msg" %t1007, ptr %l454
  br label %bb180
bb180:
  %t1008 = load ptr, ptr %l450, !tbaa !29
  %t1009 = load %"compiler/source:Span", ptr %l453
  %t1010 = load %"compiler/diagmsg:Msg", ptr %l454
  %t1011 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s28, ptr %t1008, %"compiler/source:Span" %t1009, %"compiler/diagmsg:Msg" %t1010)
  store i64 %t1011, ptr %l455
  br label %bb181
bb181:
  call void @__olang_scope_close(ptr %s28)
  br label %bb182
bb182:
  br label %bb205
bb183:
  %t1012 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t1013 = load i32, ptr %l460, !tbaa !23
  %t1015 = icmp ne i32 %t1013, %t1012
  br i1 %t1015, label %bb184, label %bb185
bb184:
  %t1017 = load ptr, ptr %l0, !tbaa !29
  %t1019 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t1017)
  store ptr %t1019, ptr %l465
  br label %bb186
bb185:
  store i1 false, ptr %l463, !tbaa !21
  br label %bb187
bb186:
  %t1020 = load ptr, ptr %l465, !tbaa !29
  %t1022 = getelementptr %"compiler/check:frame", ptr %t1020, i32 0, i32 18
  %t1023 = load i1, ptr %t1022, !tbaa !21
  %t1025 = xor i1 %t1023, true
  store i1 %t1025, ptr %l463, !tbaa !21
  br label %bb187
bb187:
  %t1027 = load i1, ptr %l463, !tbaa !21
  br i1 %t1027, label %bb188, label %bb189
bb188:
  %t1028 = load ptr, ptr %l35, !tbaa !29
  %t1031 = call i1 @compiler_2fcheck_2eleavesBlock(ptr %v0, ptr %t1028)
  store i1 %t1031, ptr %l472
  br label %bb190
bb189:
  store i1 false, ptr %l469, !tbaa !21
  br label %bb191
bb190:
  %t1032 = load i1, ptr %l472, !tbaa !21
  %t1033 = xor i1 %t1032, true
  store i1 %t1033, ptr %l469, !tbaa !21
  br label %bb191
bb191:
  %t1035 = load i1, ptr %l469, !tbaa !21
  br i1 %t1035, label %bb192, label %bb193
bb192:
  %t1036 = load ptr, ptr %l0, !tbaa !29
  %t1038 = getelementptr %"compiler/check:Checker", ptr %t1036, i32 0, i32 1
  %t1039 = load ptr, ptr %t1038, !tbaa !29
  %t1041 = getelementptr %"compiler/generic:Program", ptr %t1039, i32 0, i32 0
  %t1042 = load ptr, ptr %t1041, !tbaa !29
  %t1044 = getelementptr %"compiler/load:Loader", ptr %t1042, i32 0, i32 4
  %t1045 = load ptr, ptr %t1044, !tbaa !29
  store ptr %t1045, ptr %l478, !tbaa !29
  %t1046 = load ptr, ptr %l0, !tbaa !29
  %t1048 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t1046)
  store ptr %t1048, ptr %l480
  br label %bb194
bb193:
  store i1 false, ptr %l474, !tbaa !21
  br label %bb196
bb194:
  %t1049 = load ptr, ptr %l480, !tbaa !29
  %t1051 = getelementptr %"compiler/check:frame", ptr %t1049, i32 0, i32 2
  %t1052 = load i64, ptr %t1051, !tbaa !24
  %t1053 = load ptr, ptr %l4, !tbaa !29
  %t1055 = getelementptr %"compiler/ast:Func", ptr %t1053, i32 0, i32 0
  %t1056 = getelementptr %"compiler/source:Span", ptr %t1055, i32 0, i32 0
  %t1057 = load i32, ptr %t1056, !tbaa !23
  %t1059 = sext i32 %t1057 to i64
  %t1060 = load ptr, ptr %l4, !tbaa !29
  %t1062 = getelementptr %"compiler/ast:Func", ptr %t1060, i32 0, i32 0
  %t1063 = getelementptr %"compiler/source:Span", ptr %t1062, i32 0, i32 1
  %t1064 = load i32, ptr %t1063, !tbaa !23
  %t1066 = sext i32 %t1064 to i64
  %t1067 = load ptr, ptr %l0, !tbaa !29
  %t1069 = getelementptr %"compiler/check:Checker", ptr %t1067, i32 0, i32 104
  %t1070 = load i64, ptr %t1069, !tbaa !24
  %t1071 = load ptr, ptr %l478, !tbaa !29
  %t1076 = call i1 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrorWithin(ptr %v0, ptr %t1071, i64 %t1052, i64 %t1059, i64 %t1066, i64 %t1070)
  store i1 %t1076, ptr %l491
  br label %bb195
bb195:
  %t1077 = load i1, ptr %l491, !tbaa !21
  %t1078 = xor i1 %t1077, true
  store i1 %t1078, ptr %l474, !tbaa !21
  br label %bb196
bb196:
  %t1080 = load i1, ptr %l474, !tbaa !21
  br i1 %t1080, label %bb197, label %bb198
bb197:
  store %olang.scope zeroinitializer, ptr %s30
  %t1081 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1081, ptr %l493, !tbaa !29
  %t1082 = load ptr, ptr %l0, !tbaa !29
  %t1083 = load ptr, ptr %l4, !tbaa !29
  %t1086 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enameSpan(ptr %v0, ptr %v0, ptr %t1082, ptr %t1083)
  store %"compiler/source:Span" %t1086, ptr %l496
  br label %bb199
bb198:
  br label %bb204
bb199:
  %t1087 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1087, ptr %l497, !tbaa !29
  %t1088 = load ptr, ptr %l0, !tbaa !29
  %t1090 = getelementptr %"compiler/check:Checker", ptr %t1088, i32 0, i32 1
  %t1091 = load ptr, ptr %t1090, !tbaa !29
  %t1093 = getelementptr %"compiler/generic:Program", ptr %t1091, i32 0, i32 2
  %t1094 = load i32, ptr %l6, !tbaa !23
  %t1097 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t1093, i32 %t1094)
  store i32 %t1097, ptr %l502
  br label %bb200
bb200:
  %t1098 = load ptr, ptr %l497, !tbaa !29
  %t1099 = load i32, ptr %l502, !tbaa !23
  %t1100 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s30, ptr %t1098, i32 %t1099)
  store { i64, ptr } %t1100, ptr %l503
  br label %bb201
bb201:
  %t1101 = load { i64, ptr }, ptr %l503, !tbaa !27
  %t1102 = extractvalue { i64, ptr } %t1101, 0
  %t1103 = extractvalue { i64, ptr } %t1101, 1
  %t1104 = mul i64 %t1102, 1
  %t1105 = call ptr @__olang_scope_alloc(ptr %s30, i64 %t1104)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1105, ptr %t1103, i64 %t1104, i1 false)
  %t1106 = insertvalue { i64, ptr } undef, i64 %t1102, 0
  %t1107 = insertvalue { i64, ptr } %t1106, ptr %t1105, 1
  %t1109 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMissingReturn(ptr %s30, ptr %s30, { i64, ptr } %t1107)
  store %"compiler/diagmsg:Msg" %t1109, ptr %l505
  br label %bb202
bb202:
  %t1110 = load ptr, ptr %l493, !tbaa !29
  %t1111 = load %"compiler/source:Span", ptr %l496
  %t1112 = load %"compiler/diagmsg:Msg", ptr %l505
  %t1113 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s30, ptr %t1110, %"compiler/source:Span" %t1111, %"compiler/diagmsg:Msg" %t1112)
  store i64 %t1113, ptr %l506
  br label %bb203
bb203:
  call void @__olang_scope_close(ptr %s30)
  br label %bb204
bb204:
  br label %bb205
bb205:
  %t1114 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %t1114)
  br label %bb206
bb206:
  store i64 0, ptr %l36, !tbaa !24
  %t1116 = load i64, ptr %l8, !tbaa !24
  store i64 %t1116, ptr %l37, !tbaa !24
  store i64 1, ptr %l38, !tbaa !24
  %t1118 = load i64, ptr %l37, !tbaa !24
  %t1119 = load i64, ptr %l36, !tbaa !24
  %t1122 = icmp sgt i64 %t1118, %t1119
  br i1 %t1122, label %bb207, label %bb208
bb207:
  %t1124 = load i64, ptr %l38, !tbaa !24
  %t1126 = icmp sgt i64 %t1124, 0
  br i1 %t1126, label %bb209, label %bb210
bb208:
  store i64 0, ptr %l512, !tbaa !24
  br label %bb212
bb209:
  %t1128 = load i64, ptr %l37, !tbaa !24
  %t1129 = load i64, ptr %l36, !tbaa !24
  %t1132 = sub i64 %t1128, %t1129
  %t1133 = load i64, ptr %l38, !tbaa !24
  %t1136 = add i64 %t1132, %t1133
  %t1138 = sub i64 %t1136, 1
  %t1139 = load i64, ptr %l38, !tbaa !24
  %t1142 = sdiv i64 %t1138, %t1139
  store i64 %t1142, ptr %l515, !tbaa !24
  br label %bb211
bb210:
  store i64 0, ptr %l515, !tbaa !24
  br label %bb211
bb211:
  %t1144 = load i64, ptr %l515, !tbaa !24
  store i64 %t1144, ptr %l512, !tbaa !24
  br label %bb212
bb212:
  %t1145 = load i64, ptr %l512, !tbaa !24
  store i64 %t1145, ptr %l39, !tbaa !24
  store i64 0, ptr %l40, !tbaa !24
  br label %bb213
bb213:
  %t1146 = load i64, ptr %l40, !tbaa !24
  %t1147 = load i64, ptr %l39, !tbaa !24
  %t1150 = icmp slt i64 %t1146, %t1147
  %t1152 = xor i1 %t1150, true
  br i1 %t1152, label %bb214, label %bb215
bb214:
  br label %bb219
bb215:
  br label %bb216
bb216:
  %t1154 = load i64, ptr %l36, !tbaa !24
  %t1155 = load i64, ptr %l40, !tbaa !24
  %t1156 = load i64, ptr %l38, !tbaa !24
  %t1159 = mul i64 %t1155, %t1156
  %t1162 = add i64 %t1154, %t1159
  store i64 %t1162, ptr %l41, !tbaa !24
  %t1164 = load ptr, ptr %l0, !tbaa !29
  %t1166 = getelementptr %"compiler/check:Checker", ptr %t1164, i32 0, i32 1
  %t1167 = load ptr, ptr %t1166, !tbaa !29
  %t1169 = getelementptr %"compiler/generic:Program", ptr %t1167, i32 0, i32 0
  %t1170 = load ptr, ptr %t1169, !tbaa !29
  %t1172 = getelementptr %"compiler/load:Loader", ptr %t1170, i32 0, i32 4
  %t1173 = load ptr, ptr %t1172, !tbaa !29
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2ePopContext(ptr %v0, ptr %t1173)
  br label %bb217
bb217:
  br label %bb218
bb218:
  %t1175 = load i64, ptr %l40, !tbaa !24
  %t1177 = add i64 %t1175, 1
  store i64 %t1177, ptr %l40, !tbaa !24
  br label %bb213
bb219:
  %t1179 = load ptr, ptr %l0, !tbaa !29
  %t1181 = getelementptr %"compiler/check:Checker", ptr %t1179, i32 0, i32 1
  %t1182 = load ptr, ptr %t1181, !tbaa !29
  %t1184 = getelementptr %"compiler/generic:Program", ptr %t1182, i32 0, i32 0
  %t1185 = load ptr, ptr %t1184, !tbaa !29
  %t1187 = getelementptr %"compiler/load:Loader", ptr %t1185, i32 0, i32 4
  %t1188 = load ptr, ptr %t1187, !tbaa !29
  %t1189 = load i64, ptr %l7, !tbaa !24
  %t1192 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eContextBase(ptr %v0, ptr %t1188, i64 %t1189)
  store i64 %t1192, ptr %l544
  br label %bb220
bb220:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echeckedPrim(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i32 %a3, ptr %a4, ptr %a5) #0 {
entry:
  %l0 = alloca ptr
  %l6 = alloca i64
  %l9 = alloca i64
  %l16 = alloca %"compiler/source:Span"
  %l17 = alloca i32
  %l18 = alloca i32
  %l19 = alloca i32
  %l23 = alloca { i64, ptr }
  %rv = alloca ptr
  %t29 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 36
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l9
  br label %bb1
bb1:
  %t6 = load i64, ptr %l9, !tbaa !24
  store i64 %t6, ptr %l6, !tbaa !24
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/check:Checker", ptr %t7, i32 0, i32 36
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %t9, ptr %a4)
  br label %bb2
bb2:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/check:Checker", ptr %t13, i32 0, i32 36
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v2, ptr %t15, ptr %a5)
  br label %bb3
bb3:
  store %"compiler/source:Span" %a1, ptr %l16
  store i32 %a2, ptr %l17, !tbaa !23
  store i32 %a3, ptr %l18
  store i32 0, ptr %l19
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/check:Checker", ptr %t22, i32 0, i32 36
  %t25 = load i64, ptr %l6, !tbaa !24
  %t28 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v3, ptr %t24, i64 %t25)
  store { i64, ptr } %t28, ptr %l23
  br label %bb4
bb4:
  store { i64, [5 x i64] } zeroinitializer, ptr %t29
  %t30 = getelementptr { i64, [5 x i64] }, ptr %t29, i32 0, i32 0
  store i64 9, ptr %t30
  %t31 = load %"compiler/source:Span", ptr %l16
  %t32 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } undef, %"compiler/source:Span" %t31, 0
  %t33 = load i32, ptr %l17, !tbaa !23
  %t34 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t32, i32 %t33, 1
  %t35 = load i32, ptr %l18, !range !{i32 0, i32 52}
  %t36 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t34, i32 %t35, 2
  %t37 = load i32, ptr %l19, !range !{i32 0, i32 3}
  %t38 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t36, i32 %t37, 3
  %t39 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t40 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t38, { i64, ptr } %t39, 4
  %t41 = getelementptr { i64, [5 x i64] }, ptr %t29, i32 0, i32 1
  store { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t40, ptr %t41
  %t42 = load { i64, [5 x i64] }, ptr %t29
  %t44 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 48, i64 8)
  store { i64, [5 x i64] } %t42, ptr %t44
  store ptr %t44, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econstCond(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i32
  %l7 = alloca i64
  %l14 = alloca i1
  %l18 = alloca ptr
  %l20 = alloca ptr
  %l25 = alloca i32
  %l30 = alloca i32
  %l39 = alloca i64
  %l41 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t6 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflDecide(ptr %v0, ptr %v1, ptr %t1, ptr %t2)
  store i64 %t6, ptr %l7
  br label %bb1
bb1:
  %t7 = load i64, ptr %l7, !tbaa !24
  store i64 %t7, ptr %l2, !tbaa !24
  %t8 = load i64, ptr %l2, !tbaa !24
  %t10 = icmp sge i64 %t8, 0
  br i1 %t10, label %bb2, label %bb3
bb2:
  %t12 = load i64, ptr %l2, !tbaa !24
  store i64 %t12, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t19 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadsConst(ptr %v0, ptr %v1, ptr %t14, ptr %t15)
  store i1 %t19, ptr %l14
  br label %bb5
bb5:
  %t20 = load i1, ptr %l14, !tbaa !21
  %t21 = xor i1 %t20, true
  br i1 %t21, label %bb6, label %bb7
bb6:
  store i64 -1, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/check:Checker", ptr %t24, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !29
  store ptr %t27, ptr %l18, !tbaa !29
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t28)
  store ptr %t30, ptr %l20
  br label %bb9
bb9:
  %t31 = load ptr, ptr %l20, !tbaa !29
  %t33 = getelementptr %"compiler/check:frame", ptr %t31, i32 0, i32 4
  %t34 = load ptr, ptr %l1, !tbaa !29
  %t35 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t36 = load ptr, ptr %l18, !tbaa !29
  %t40 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFoldKnown(ptr %v0, ptr %v0, ptr %v1, ptr %t36, ptr %t33, ptr %t34, i32 %t35)
  store i32 %t40, ptr %l25
  br label %bb10
bb10:
  %t41 = load i32, ptr %l25, !tbaa !23
  store i32 %t41, ptr %l3, !tbaa !23
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/check:Checker", ptr %t42, i32 0, i32 1
  %t45 = load ptr, ptr %t44, !tbaa !29
  %t47 = getelementptr %"compiler/generic:Program", ptr %t45, i32 0, i32 2
  %t48 = load i32, ptr %l3, !tbaa !23
  %t51 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t47, i32 %t48)
  store i32 %t51, ptr %l30
  br label %bb11
bb11:
  %t52 = load i32, ptr %l30, !range !{i32 0, i32 33}
  %t54 = trunc i64 26 to i32
  %t55 = icmp eq i32 %t52, %t54
  %t57 = xor i1 %t55, true
  br i1 %t57, label %bb12, label %bb13
bb12:
  store i64 -1, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/check:Checker", ptr %t60, i32 0, i32 1
  %t63 = load ptr, ptr %t62, !tbaa !29
  %t65 = getelementptr %"compiler/generic:Program", ptr %t63, i32 0, i32 2
  %t66 = load i32, ptr %l3, !tbaa !23
  %t69 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %t65, i32 %t66)
  store i64 %t69, ptr %l39
  br label %bb15
bb15:
  %t70 = load i64, ptr %l39, !tbaa !24
  %t71 = icmp ne i64 %t70, 0
  br i1 %t71, label %bb16, label %bb17
bb16:
  store i64 1, ptr %l41, !tbaa !24
  br label %bb18
bb17:
  store i64 0, ptr %l41, !tbaa !24
  br label %bb18
bb18:
  %t73 = load i64, ptr %l41, !tbaa !24
  store i64 %t73, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropItems(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l16 = alloca { i64, ptr }
  %l19 = alloca ptr
  %l20 = alloca i1
  %l35 = alloca ptr
  %l40 = alloca ptr
  %l45 = alloca ptr
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
  br label %bb22
bb3:
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t15, ptr %l16, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr ptr, ptr %t19, i64 %t16
  %t21 = load ptr, ptr %t20, !tbaa !39
  store ptr %t21, ptr %l5, !tbaa !29
  %t23 = load ptr, ptr %l5, !tbaa !29
  store ptr %t23, ptr %l19, !tbaa !29
  store i1 false, ptr %l20, !tbaa !21
  %t24 = load ptr, ptr %l19, !tbaa !29
  %t25 = icmp ne ptr %t24, null
  br i1 %t25, label %bb5, label %bb6
bb5:
  %t27 = load ptr, ptr %l19, !tbaa !29
  %t28 = load i64, ptr %t27, !range !{i64 0, i64 30}
  %t30 = icmp eq i64 %t28, 5
  store i1 %t30, ptr %l20, !tbaa !21
  br label %bb6
bb6:
  %t31 = load i1, ptr %l20, !tbaa !21
  br i1 %t31, label %bb7, label %bb8
bb7:
  %t32 = load ptr, ptr %l5, !tbaa !29
  %t34 = getelementptr { i64, [4 x i64] }, ptr %t32, i32 0, i32 1
  %t35 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t34, i32 0, i32 1
  %t36 = load i32, ptr %t35, !range !{i32 0, i32 114}
  store i32 %t36, ptr %l6
  %t38 = load ptr, ptr %l5, !tbaa !29
  %t40 = getelementptr { i64, [4 x i64] }, ptr %t38, i32 0, i32 1
  %t41 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t40, i32 0, i32 2
  %t42 = load ptr, ptr %t41
  store ptr %t42, ptr %l7, !tbaa !29
  %t44 = load ptr, ptr %l5, !tbaa !29
  %t46 = getelementptr { i64, [4 x i64] }, ptr %t44, i32 0, i32 1
  %t47 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t46, i32 0, i32 3
  %t48 = load ptr, ptr %t47
  store ptr %t48, ptr %l8, !tbaa !29
  br label %bb9
bb8:
  br label %bb14
bb9:
  %t50 = load i32, ptr %l6, !range !{i32 0, i32 114}
  %t52 = trunc i64 79 to i32
  %t53 = icmp eq i32 %t50, %t52
  br i1 %t53, label %bb10, label %bb11
bb10:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t56 = load ptr, ptr %l7, !tbaa !29
  %t58 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t62 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v0, ptr %t55, ptr %t56, i32 %t58)
  store ptr %t62, ptr %l35
  br label %bb12
bb11:
  br label %bb14
bb12:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t64 = load ptr, ptr %l8, !tbaa !29
  %t66 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t70 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v0, ptr %t63, ptr %t64, i32 %t66)
  store ptr %t70, ptr %l40
  br label %bb13
bb13:
  br label %bb20
bb14:
  br i1 true, label %bb15, label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb19
bb17:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t72 = load ptr, ptr %l5, !tbaa !29
  %t74 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t78 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v0, ptr %t71, ptr %t72, i32 %t74)
  store ptr %t78, ptr %l45
  br label %bb18
bb18:
  br label %bb20
bb19:
  call void @__olang_check_failed(ptr @olang_loc_6f8999b7f8ddffc_ce9c2022d5a87cc8)
  unreachable
bb20:
  br label %bb21
bb21:
  %t79 = load i64, ptr %l3, !tbaa !24
  %t81 = add i64 %t79, 1
  store i64 %t81, ptr %l3, !tbaa !24
  br label %bb1
bb22:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeqMethod(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca i32
  %l10 = alloca i32
  %l11 = alloca i64
  %l17 = alloca i1
  %l18 = alloca i64
  %l21 = alloca ptr
  %l22 = alloca i32
  %l27 = alloca i32
  %l28 = alloca i64
  %l31 = alloca i1
  %l34 = alloca ptr
  %l37 = alloca ptr
  %l41 = alloca i32
  %l42 = alloca i32
  %l43 = alloca { i64, ptr }
  %l50 = alloca i64
  %l52 = alloca ptr
  %l56 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i64
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
  store ptr %t4, ptr %l4, !tbaa !29
  %t5 = load i32, ptr %l1, !tbaa !23
  store i32 %t5, ptr %l5, !tbaa !23
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/check:Checker", ptr %t6, i32 0, i32 1
  %t9 = load ptr, ptr %t8, !tbaa !29
  %t11 = getelementptr %"compiler/generic:Program", ptr %t9, i32 0, i32 0
  %t12 = load ptr, ptr %t11, !tbaa !29
  %t14 = getelementptr %"compiler/load:Loader", ptr %t12, i32 0, i32 3
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t17 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %s0, ptr %t15, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d4, i32 0, i32 1) })
  store i32 %t17, ptr %l10
  br label %bb1
bb1:
  %t18 = load ptr, ptr %l4, !tbaa !29
  %t19 = load i32, ptr %l5, !tbaa !23
  %t20 = load i32, ptr %l10, !tbaa !23
  %t21 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v0, ptr %t18, i32 %t19, i32 %t20)
  store i64 %t21, ptr %l11
  br label %bb2
bb2:
  %t22 = load i64, ptr %l11, !tbaa !24
  store i64 %t22, ptr %l2, !tbaa !24
  %t23 = load i64, ptr %l2, !tbaa !24
  %t25 = icmp sge i64 %t23, 0
  br i1 %t25, label %bb3, label %bb4
bb3:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = load i32, ptr %l1, !tbaa !23
  %t29 = load i64, ptr %l2, !tbaa !24
  %t33 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeqShaped(ptr %v0, ptr %t27, i32 %t28, i64 %t29)
  store i1 %t33, ptr %l17
  br label %bb5
bb4:
  br label %bb9
bb5:
  %t34 = load i1, ptr %l17, !tbaa !21
  br i1 %t34, label %bb6, label %bb7
bb6:
  %t35 = load i64, ptr %l2, !tbaa !24
  store i64 %t35, ptr %l18, !tbaa !24
  br label %bb8
bb7:
  store i64 -1, ptr %l18, !tbaa !24
  br label %bb8
bb8:
  call void @__olang_scope_close(ptr %s0)
  %t37 = load i64, ptr %l18, !tbaa !24
  store i64 %t37, ptr %rv
  br label %ret
bb9:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/check:Checker", ptr %t38, i32 0, i32 1
  %t41 = load ptr, ptr %t40, !tbaa !29
  store ptr %t41, ptr %l21, !tbaa !29
  %t42 = load i32, ptr %l1, !tbaa !23
  store i32 %t42, ptr %l22, !tbaa !23
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/check:Checker", ptr %t43, i32 0, i32 1
  %t46 = load ptr, ptr %t45, !tbaa !29
  %t48 = getelementptr %"compiler/generic:Program", ptr %t46, i32 0, i32 0
  %t49 = load ptr, ptr %t48, !tbaa !29
  %t51 = getelementptr %"compiler/load:Loader", ptr %t49, i32 0, i32 3
  %t52 = load ptr, ptr %t51, !tbaa !29
  %t54 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %s0, ptr %t52, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d5, i32 0, i32 1) })
  store i32 %t54, ptr %l27
  br label %bb10
bb10:
  %t55 = load ptr, ptr %l21, !tbaa !29
  %t56 = load i32, ptr %l22, !tbaa !23
  %t57 = load i32, ptr %l27, !tbaa !23
  %t58 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v0, ptr %t55, i32 %t56, i32 %t57)
  store i64 %t58, ptr %l28
  br label %bb11
bb11:
  %t59 = load i64, ptr %l28, !tbaa !24
  store i64 %t59, ptr %l2, !tbaa !24
  %t60 = load i64, ptr %l2, !tbaa !24
  %t62 = icmp slt i64 %t60, 0
  br i1 %t62, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l31, !tbaa !21
  br label %bb17
bb13:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/check:Checker", ptr %t64, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !29
  %t69 = getelementptr %"compiler/generic:Program", ptr %t67, i32 0, i32 2
  store ptr %t69, ptr %l34, !tbaa !29
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/check:Checker", ptr %t70, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !29
  %t75 = getelementptr %"compiler/generic:Program", ptr %t73, i32 0, i32 2
  store ptr %t75, ptr %l37, !tbaa !29
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = getelementptr %"compiler/check:Checker", ptr %t76, i32 0, i32 1
  %t79 = load ptr, ptr %t78, !tbaa !29
  %t80 = load i64, ptr %l2, !tbaa !24
  %t83 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %t79, i64 %t80)
  store i32 %t83, ptr %l41
  br label %bb14
bb14:
  %t84 = load ptr, ptr %l37, !tbaa !29
  %t85 = load i32, ptr %l41, !tbaa !23
  %t86 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t84, i32 %t85)
  store i32 %t86, ptr %l42
  br label %bb15
bb15:
  %t87 = load ptr, ptr %l34, !tbaa !29
  %t88 = load i32, ptr %l42, !tbaa !23
  %t89 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t87, i32 %t88)
  store { i64, ptr } %t89, ptr %l43
  br label %bb16
bb16:
  %t90 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t91 = extractvalue { i64, ptr } %t90, 0
  %t93 = icmp ne i64 %t91, 2
  store i1 %t93, ptr %l31, !tbaa !21
  br label %bb17
bb17:
  %t95 = load i1, ptr %l31, !tbaa !21
  br i1 %t95, label %bb18, label %bb19
bb18:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t99 = getelementptr %"compiler/check:Checker", ptr %t97, i32 0, i32 1
  %t100 = load ptr, ptr %t99, !tbaa !29
  %t101 = load i64, ptr %l2, !tbaa !24
  %t104 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t100, i64 %t101)
  store i64 %t104, ptr %l50
  br label %bb21
bb21:
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t107 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t105)
  store ptr %t107, ptr %l52
  br label %bb22
bb22:
  %t108 = load ptr, ptr %l52, !tbaa !29
  %t110 = getelementptr %"compiler/check:frame", ptr %t108, i32 0, i32 1
  %t111 = load i64, ptr %t110, !tbaa !24
  %t112 = load i64, ptr %l50, !tbaa !24
  %t114 = icmp eq i64 %t112, %t111
  br i1 %t114, label %bb23, label %bb24
bb23:
  %t116 = load i64, ptr %l2, !tbaa !24
  store i64 %t116, ptr %l56, !tbaa !24
  br label %bb25
bb24:
  store i64 -2, ptr %l56, !tbaa !24
  br label %bb25
bb25:
  call void @__olang_scope_close(ptr %s0)
  %t118 = load i64, ptr %l56, !tbaa !24
  store i64 %t118, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexplicitArgs(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, { i64, ptr } %a2, %"compiler/source:Span" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca %"compiler/source:Span"
  %l5 = alloca { i64, ptr }
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca ptr
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca { i64, ptr }
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i32
  %l30 = alloca ptr
  %l34 = alloca { i64, ptr }
  %l38 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l40 = alloca i64
  %l42 = alloca i64
  %l46 = alloca i64
  %l51 = alloca i1
  %l54 = alloca ptr
  %l55 = alloca { i64, ptr }
  %l58 = alloca %"compiler/source:Span"
  %l60 = alloca %"compiler/diagmsg:Msg"
  %l61 = alloca i64
  %l67 = alloca i1
  %l70 = alloca ptr
  %l71 = alloca { i64, ptr }
  %l73 = alloca %"compiler/source:Span"
  %l75 = alloca %"compiler/diagmsg:Msg"
  %l76 = alloca i64
  %l83 = alloca ptr
  %l84 = alloca { i64, ptr }
  %l86 = alloca %"compiler/source:Span"
  %l90 = alloca %"compiler/diagmsg:Msg"
  %l91 = alloca i64
  %l98 = alloca i64
  %l100 = alloca i64
  %l105 = alloca i64
  %l114 = alloca i64
  %l115 = alloca i32
  %l123 = alloca i64
  %l126 = alloca i64
  %l145 = alloca { i64, ptr }
  %l149 = alloca i32
  %l156 = alloca { i64, ptr }
  %l159 = alloca i64
  %l167 = alloca { i64, ptr }
  %l168 = alloca i64
  %l170 = alloca ptr
  %l172 = alloca ptr
  %l175 = alloca { i64, ptr }
  %l178 = alloca i32
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  %t208 = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  store %"compiler/source:Span" %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = icmp slt i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = icmp sge i64 0, 0
  br i1 %t5, label %bb3, label %bb4
bb2:
  br label %bb7
bb3:
  %t7 = icmp sle i64 0, 2305843009213693951
  br i1 %t7, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_92689d3fb9399c33_8949aa7cd18a1ac7)
  unreachable
bb5:
  %t9 = mul i64 0, 4
  %t10 = insertvalue { i64, ptr } undef, i64 0, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t11, ptr %rv
  br label %ret
bb6:
  call void @__olang_check_failed(ptr @olang_loc_92689d3fb9399c33_8949aa7cd18a1ac7)
  unreachable
bb7:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/check:Checker", ptr %t13, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !29
  %t17 = load i64, ptr %l1, !tbaa !24
  %t20 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t16, i64 %t17)
  store ptr %t20, ptr %l30
  br label %bb8
bb8:
  %t21 = load ptr, ptr %l30, !tbaa !29
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/ast:Func", ptr %t21, i32 0, i32 2
  %t26 = load i32, ptr %t25, !tbaa !23
  %t29 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t22, i32 %t26)
  store { i64, ptr } %t29, ptr %l34
  br label %bb9
bb9:
  %t30 = load { i64, ptr }, ptr %l34, !tbaa !27
  store { i64, ptr } %t30, ptr %l5, !tbaa !27
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/check:Checker", ptr %t31, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !29
  %t35 = load i64, ptr %l1, !tbaa !24
  %t38 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eOwnVarIndexes(ptr %v0, ptr %s0, ptr %t34, i64 %t35)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t38, ptr %l38
  br label %bb10
bb10:
  %t39 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l38
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t39, ptr %l6
  %t41 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l6)
  store i64 %t41, ptr %l40
  br label %bb11
bb11:
  %t42 = load i64, ptr %l40, !tbaa !24
  store i64 %t42, ptr %l7, !tbaa !24
  %t43 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t45 = call i64 @compiler_2fgeneric_2eWrittenTypes(ptr %v1, { i64, ptr } %t43)
  store i64 %t45, ptr %l42
  br label %bb12
bb12:
  %t46 = load i64, ptr %l42, !tbaa !24
  store i64 %t46, ptr %l8, !tbaa !24
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/check:Checker", ptr %t47, i32 0, i32 1
  %t50 = load ptr, ptr %t49, !tbaa !29
  %t51 = load i64, ptr %l1, !tbaa !24
  %t54 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrVarIndex(ptr %v0, ptr %t50, i64 %t51)
  store i64 %t54, ptr %l46
  br label %bb13
bb13:
  %t55 = load i64, ptr %l46, !tbaa !24
  store i64 %t55, ptr %l9, !tbaa !24
  %t56 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t58 = extractvalue { i64, ptr } %t56, 0
  %t59 = load i64, ptr %l8, !tbaa !24
  %t62 = icmp sgt i64 %t58, %t59
  br i1 %t62, label %bb14, label %bb15
bb14:
  %t64 = load i64, ptr %l9, !tbaa !24
  %t66 = icmp slt i64 %t64, 0
  store i1 %t66, ptr %l51, !tbaa !21
  br label %bb16
bb15:
  store i1 false, ptr %l51, !tbaa !21
  br label %bb16
bb16:
  %t68 = load i1, ptr %l51, !tbaa !21
  br i1 %t68, label %bb17, label %bb18
bb17:
  store %olang.scope zeroinitializer, ptr %s2
  %t69 = load ptr, ptr %l0, !tbaa !29
  store ptr %t69, ptr %l54, !tbaa !29
  %t70 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t70, ptr %l55, !tbaa !27
  %t71 = load i64, ptr %l8, !tbaa !24
  %t73 = getelementptr { i64, ptr }, ptr %l55, i32 0, i32 1
  %t74 = load ptr, ptr %t73, !tbaa !27
  %t75 = getelementptr ptr, ptr %t74, i64 %t71
  %t76 = load ptr, ptr %t75, !tbaa !39
  %t78 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v1, ptr %t76)
  store %"compiler/source:Span" %t78, ptr %l58
  br label %bb19
bb18:
  br label %bb26
bb19:
  %t79 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t81 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eErrSetArgUnwanted(ptr %v0, ptr %s2, { i64, ptr } %t79)
  store %"compiler/diagmsg:Msg" %t81, ptr %l60
  br label %bb20
bb20:
  %t82 = load ptr, ptr %l54, !tbaa !29
  %t83 = load %"compiler/source:Span", ptr %l58
  %t84 = load %"compiler/diagmsg:Msg", ptr %l60
  %t85 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s2, ptr %t82, %"compiler/source:Span" %t83, %"compiler/diagmsg:Msg" %t84)
  store i64 %t85, ptr %l61
  br label %bb21
bb21:
  %t86 = icmp sge i64 0, 0
  br i1 %t86, label %bb22, label %bb23
bb22:
  %t88 = icmp sle i64 0, 2305843009213693951
  br i1 %t88, label %bb24, label %bb25
bb23:
  call void @__olang_check_failed(ptr @olang_loc_3150b71fd0fb46fe_3d08923418e7b7d2)
  unreachable
bb24:
  %t90 = mul i64 0, 4
  %t91 = insertvalue { i64, ptr } undef, i64 0, 0
  %t92 = insertvalue { i64, ptr } %t91, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t92, ptr %rv
  br label %ret
bb25:
  call void @__olang_check_failed(ptr @olang_loc_3150b71fd0fb46fe_3d08923418e7b7d2)
  unreachable
bb26:
  %t94 = load i64, ptr %l7, !tbaa !24
  %t96 = icmp eq i64 %t94, 0
  br i1 %t96, label %bb27, label %bb28
bb27:
  %t98 = load i64, ptr %l8, !tbaa !24
  %t100 = icmp sgt i64 %t98, 0
  store i1 %t100, ptr %l67, !tbaa !21
  br label %bb29
bb28:
  store i1 false, ptr %l67, !tbaa !21
  br label %bb29
bb29:
  %t102 = load i1, ptr %l67, !tbaa !21
  br i1 %t102, label %bb30, label %bb31
bb30:
  store %olang.scope zeroinitializer, ptr %s3
  %t103 = load ptr, ptr %l0, !tbaa !29
  store ptr %t103, ptr %l70, !tbaa !29
  %t104 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t104, ptr %l71, !tbaa !27
  %t105 = getelementptr { i64, ptr }, ptr %l71, i32 0, i32 1
  %t106 = load ptr, ptr %t105, !tbaa !27
  %t107 = getelementptr ptr, ptr %t106, i64 0
  %t108 = load ptr, ptr %t107, !tbaa !39
  %t110 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v1, ptr %t108)
  store %"compiler/source:Span" %t110, ptr %l73
  br label %bb32
bb31:
  br label %bb39
bb32:
  %t111 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t113 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeArgsOnNonGeneric(ptr %v0, ptr %s3, { i64, ptr } %t111)
  store %"compiler/diagmsg:Msg" %t113, ptr %l75
  br label %bb33
bb33:
  %t114 = load ptr, ptr %l70, !tbaa !29
  %t115 = load %"compiler/source:Span", ptr %l73
  %t116 = load %"compiler/diagmsg:Msg", ptr %l75
  %t117 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s3, ptr %t114, %"compiler/source:Span" %t115, %"compiler/diagmsg:Msg" %t116)
  store i64 %t117, ptr %l76
  br label %bb34
bb34:
  %t118 = icmp sge i64 0, 0
  br i1 %t118, label %bb35, label %bb36
bb35:
  %t120 = icmp sle i64 0, 2305843009213693951
  br i1 %t120, label %bb37, label %bb38
bb36:
  call void @__olang_check_failed(ptr @olang_loc_d7e03fe7b4bf2c3d_64b0c57621292c71)
  unreachable
bb37:
  %t122 = mul i64 0, 4
  %t123 = insertvalue { i64, ptr } undef, i64 0, 0
  %t124 = insertvalue { i64, ptr } %t123, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t124, ptr %rv
  br label %ret
bb38:
  call void @__olang_check_failed(ptr @olang_loc_d7e03fe7b4bf2c3d_64b0c57621292c71)
  unreachable
bb39:
  %t126 = load i64, ptr %l7, !tbaa !24
  %t127 = load i64, ptr %l8, !tbaa !24
  %t130 = icmp ne i64 %t126, %t127
  br i1 %t130, label %bb40, label %bb41
bb40:
  store %olang.scope zeroinitializer, ptr %s4
  %t132 = load ptr, ptr %l0, !tbaa !29
  store ptr %t132, ptr %l83, !tbaa !29
  %t133 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t133, ptr %l84, !tbaa !27
  %t134 = getelementptr { i64, ptr }, ptr %l84, i32 0, i32 1
  %t135 = load ptr, ptr %t134, !tbaa !27
  %t136 = getelementptr ptr, ptr %t135, i64 0
  %t137 = load ptr, ptr %t136, !tbaa !39
  %t139 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v1, ptr %t137)
  store %"compiler/source:Span" %t139, ptr %l86
  br label %bb42
bb41:
  br label %bb49
bb42:
  %t140 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t141 = load i64, ptr %l7, !tbaa !24
  %t142 = load i64, ptr %l8, !tbaa !24
  %t146 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeArgCount(ptr %v0, ptr %s4, { i64, ptr } %t140, i64 %t141, i64 %t142)
  store %"compiler/diagmsg:Msg" %t146, ptr %l90
  br label %bb43
bb43:
  %t147 = load ptr, ptr %l83, !tbaa !29
  %t148 = load %"compiler/source:Span", ptr %l86
  %t149 = load %"compiler/diagmsg:Msg", ptr %l90
  %t150 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s4, ptr %t147, %"compiler/source:Span" %t148, %"compiler/diagmsg:Msg" %t149)
  store i64 %t150, ptr %l91
  br label %bb44
bb44:
  %t151 = icmp sge i64 0, 0
  br i1 %t151, label %bb45, label %bb46
bb45:
  %t153 = icmp sle i64 0, 2305843009213693951
  br i1 %t153, label %bb47, label %bb48
bb46:
  call void @__olang_check_failed(ptr @olang_loc_c902484ee6860410_648a649019eab164)
  unreachable
bb47:
  %t155 = mul i64 0, 4
  %t156 = insertvalue { i64, ptr } undef, i64 0, 0
  %t157 = insertvalue { i64, ptr } %t156, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t157, ptr %rv
  br label %ret
bb48:
  call void @__olang_check_failed(ptr @olang_loc_c902484ee6860410_648a649019eab164)
  unreachable
bb49:
  %t159 = load i64, ptr %l9, !tbaa !24
  %t161 = add i64 %t159, 1
  store i64 %t161, ptr %l10, !tbaa !24
  store ptr %l6, ptr %l11, !tbaa !29
  store i64 0, ptr %l12, !tbaa !24
  br label %bb50
bb50:
  %t164 = load i64, ptr %l12, !tbaa !24
  store i64 %t164, ptr %l98, !tbaa !24
  %t165 = load ptr, ptr %l11, !tbaa !29
  %t167 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t165)
  store i64 %t167, ptr %l100
  br label %bb51
bb51:
  %t168 = load i64, ptr %l98, !tbaa !24
  %t169 = load i64, ptr %l100, !tbaa !24
  %t170 = icmp slt i64 %t168, %t169
  %t172 = xor i1 %t170, true
  br i1 %t172, label %bb52, label %bb53
bb52:
  br label %bb60
bb53:
  br label %bb54
bb54:
  %t174 = load ptr, ptr %l11, !tbaa !29
  %t175 = load i64, ptr %l12, !tbaa !24
  %t178 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t174, i64 %t175)
  store i64 %t178, ptr %l105
  br label %bb55
bb55:
  %t179 = load i64, ptr %l105, !tbaa !24
  store i64 %t179, ptr %l13, !tbaa !24
  %t180 = load i64, ptr %l13, !tbaa !24
  %t182 = add i64 %t180, 1
  %t183 = load i64, ptr %l10, !tbaa !24
  %t186 = icmp sgt i64 %t182, %t183
  br i1 %t186, label %bb56, label %bb57
bb56:
  %t188 = load i64, ptr %l13, !tbaa !24
  %t190 = add i64 %t188, 1
  store i64 %t190, ptr %l10, !tbaa !24
  br label %bb58
bb57:
  br label %bb58
bb58:
  br label %bb59
bb59:
  %t192 = load i64, ptr %l12, !tbaa !24
  %t194 = add i64 %t192, 1
  store i64 %t194, ptr %l12, !tbaa !24
  br label %bb50
bb60:
  %t196 = load i64, ptr %l10, !tbaa !24
  store i64 %t196, ptr %l114, !tbaa !24
  %t197 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t197, ptr %l115, !tbaa !23
  %t198 = load i64, ptr %l114, !tbaa !24
  %t199 = icmp sge i64 %t198, 0
  br i1 %t199, label %bb61, label %bb62
bb61:
  %t201 = load i64, ptr %l114, !tbaa !24
  %t202 = icmp sle i64 %t201, 2305843009213693951
  br i1 %t202, label %bb63, label %bb64
bb62:
  call void @__olang_check_failed(ptr @olang_loc_e4324c4b30f6563f_ec149b7f01d5683b)
  unreachable
bb63:
  %t204 = load i64, ptr %l114, !tbaa !24
  %t205 = mul i64 %t204, 4
  %t206 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t205)
  %t207 = load i32, ptr %l115, !tbaa !23
  store i64 0, ptr %t208
  br label %fill.209
fill.209:
  %t212 = load i64, ptr %t208
  %t213 = icmp slt i64 %t212, %t204
  br i1 %t213, label %fillb.210, label %filld.211
fillb.210:
  %t214 = getelementptr i32, ptr %t206, i64 %t212
  store i32 %t207, ptr %t214
  %t215 = add i64 %t212, 1
  store i64 %t215, ptr %t208
  br label %fill.209
filld.211:
  %t216 = insertvalue { i64, ptr } undef, i64 %t204, 0
  %t217 = insertvalue { i64, ptr } %t216, ptr %t206, 1
  store { i64, ptr } %t217, ptr %l14, !tbaa !27
  store i64 0, ptr %l15, !tbaa !24
  %t219 = load i64, ptr %l7, !tbaa !24
  store i64 %t219, ptr %l16, !tbaa !24
  store i64 1, ptr %l17, !tbaa !24
  %t221 = load i64, ptr %l16, !tbaa !24
  %t222 = load i64, ptr %l15, !tbaa !24
  %t225 = icmp sgt i64 %t221, %t222
  br i1 %t225, label %bb65, label %bb66
bb64:
  call void @__olang_check_failed(ptr @olang_loc_e4324c4b30f6563f_ec149b7f01d5683b)
  unreachable
bb65:
  %t227 = load i64, ptr %l17, !tbaa !24
  %t229 = icmp sgt i64 %t227, 0
  br i1 %t229, label %bb67, label %bb68
bb66:
  store i64 0, ptr %l123, !tbaa !24
  br label %bb70
bb67:
  %t231 = load i64, ptr %l16, !tbaa !24
  %t232 = load i64, ptr %l15, !tbaa !24
  %t235 = sub i64 %t231, %t232
  %t236 = load i64, ptr %l17, !tbaa !24
  %t239 = add i64 %t235, %t236
  %t241 = sub i64 %t239, 1
  %t242 = load i64, ptr %l17, !tbaa !24
  %t245 = sdiv i64 %t241, %t242
  store i64 %t245, ptr %l126, !tbaa !24
  br label %bb69
bb68:
  store i64 0, ptr %l126, !tbaa !24
  br label %bb69
bb69:
  %t247 = load i64, ptr %l126, !tbaa !24
  store i64 %t247, ptr %l123, !tbaa !24
  br label %bb70
bb70:
  %t248 = load i64, ptr %l123, !tbaa !24
  store i64 %t248, ptr %l18, !tbaa !24
  store i64 0, ptr %l19, !tbaa !24
  br label %bb71
bb71:
  %t249 = load i64, ptr %l19, !tbaa !24
  %t250 = load i64, ptr %l18, !tbaa !24
  %t253 = icmp slt i64 %t249, %t250
  %t255 = xor i1 %t253, true
  br i1 %t255, label %bb72, label %bb73
bb72:
  br label %bb85
bb73:
  br label %bb74
bb74:
  %t257 = load i64, ptr %l15, !tbaa !24
  %t258 = load i64, ptr %l19, !tbaa !24
  %t259 = load i64, ptr %l17, !tbaa !24
  %t262 = mul i64 %t258, %t259
  %t265 = add i64 %t257, %t262
  store i64 %t265, ptr %l20, !tbaa !24
  %t267 = load ptr, ptr %l0, !tbaa !29
  %t268 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t268, ptr %l145, !tbaa !27
  %t269 = load i64, ptr %l20, !tbaa !24
  %t271 = getelementptr { i64, ptr }, ptr %l145, i32 0, i32 1
  %t272 = load ptr, ptr %t271, !tbaa !27
  %t273 = getelementptr ptr, ptr %t272, i64 %t269
  %t274 = load ptr, ptr %t273, !tbaa !39
  %t278 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eresolve(ptr %v0, ptr %v1, ptr %t267, ptr %t274)
  store i32 %t278, ptr %l149
  br label %bb75
bb75:
  %t279 = load i32, ptr %l149, !tbaa !23
  store i32 %t279, ptr %l21, !tbaa !23
  %t280 = load i32, ptr %l21, !tbaa !23
  %t281 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t284 = icmp eq i32 %t280, %t281
  br i1 %t284, label %bb76, label %bb77
bb76:
  %t286 = icmp sge i64 0, 0
  br i1 %t286, label %bb78, label %bb79
bb77:
  br label %bb82
bb78:
  %t288 = icmp sle i64 0, 2305843009213693951
  br i1 %t288, label %bb80, label %bb81
bb79:
  call void @__olang_check_failed(ptr @olang_loc_2e16a6af4c93cb6a_eec2ff8433b844a6)
  unreachable
bb80:
  %t290 = mul i64 0, 4
  %t291 = insertvalue { i64, ptr } undef, i64 0, 0
  %t292 = insertvalue { i64, ptr } %t291, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t292, ptr %rv
  br label %ret
bb81:
  call void @__olang_check_failed(ptr @olang_loc_2e16a6af4c93cb6a_eec2ff8433b844a6)
  unreachable
bb82:
  %t294 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t294, ptr %l156, !tbaa !27
  %t295 = load i64, ptr %l20, !tbaa !24
  %t298 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l6, i64 %t295)
  store i64 %t298, ptr %l159
  br label %bb83
bb83:
  %t299 = load i32, ptr %l21, !tbaa !23
  %t301 = load i64, ptr %l159, !tbaa !24
  %t302 = getelementptr { i64, ptr }, ptr %l156, i32 0, i32 1
  %t303 = load ptr, ptr %t302, !tbaa !27
  %t304 = getelementptr i32, ptr %t303, i64 %t301
  store i32 %t299, ptr %t304, !tbaa !33
  br label %bb84
bb84:
  %t305 = load i64, ptr %l19, !tbaa !24
  %t307 = add i64 %t305, 1
  store i64 %t307, ptr %l19, !tbaa !24
  br label %bb71
bb85:
  %t309 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t311 = extractvalue { i64, ptr } %t309, 0
  %t312 = load i64, ptr %l8, !tbaa !24
  %t315 = icmp sgt i64 %t311, %t312
  br i1 %t315, label %bb86, label %bb87
bb86:
  %t317 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t317, ptr %l167, !tbaa !27
  %t318 = load i64, ptr %l9, !tbaa !24
  store i64 %t318, ptr %l168, !tbaa !24
  %t319 = load ptr, ptr %l0, !tbaa !29
  %t321 = getelementptr %"compiler/check:Checker", ptr %t319, i32 0, i32 1
  %t322 = load ptr, ptr %t321, !tbaa !29
  store ptr %t322, ptr %l170, !tbaa !29
  %t323 = load ptr, ptr %l0, !tbaa !29
  %t325 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t323)
  store ptr %t325, ptr %l172
  br label %bb88
bb87:
  br label %bb90
bb88:
  %t326 = load ptr, ptr %l172, !tbaa !29
  %t328 = getelementptr %"compiler/check:frame", ptr %t326, i32 0, i32 4
  %t329 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t329, ptr %l175, !tbaa !27
  %t330 = load i64, ptr %l8, !tbaa !24
  %t332 = getelementptr { i64, ptr }, ptr %l175, i32 0, i32 1
  %t333 = load ptr, ptr %t332, !tbaa !27
  %t334 = getelementptr ptr, ptr %t333, i64 %t330
  %t335 = load ptr, ptr %t334, !tbaa !39
  %t336 = load ptr, ptr %l170, !tbaa !29
  %t339 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrsArgOf(ptr %v0, ptr %v0, ptr %v1, ptr %t336, ptr %t328, ptr %t335)
  store i32 %t339, ptr %l178
  br label %bb89
bb89:
  %t340 = load i32, ptr %l178, !tbaa !23
  %t341 = load i64, ptr %l168, !tbaa !24
  %t342 = getelementptr { i64, ptr }, ptr %l167, i32 0, i32 1
  %t343 = load ptr, ptr %t342, !tbaa !27
  %t344 = getelementptr i32, ptr %t343, i64 %t341
  store i32 %t340, ptr %t344, !tbaa !33
  br label %bb90
bb90:
  %t345 = load { i64, ptr }, ptr %l14, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t345, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenTypeDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i32
  %l5 = alloca %"compiler/generic:Context"
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd"
  %l10 = alloca ptr
  %l11 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca i64
  %l15 = alloca { i64, ptr }
  %l16 = alloca { i64, ptr }
  %l17 = alloca i64
  %l18 = alloca i64
  %l20 = alloca { i64, ptr }
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca ptr
  %l26 = alloca i1
  %l35 = alloca i64
  %l42 = alloca i32
  %l46 = alloca %"compiler/generic:Context"
  %l49 = alloca ptr
  %l50 = alloca i1
  %l56 = alloca %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd"
  %l57 = alloca ptr
  %l59 = alloca ptr
  %l60 = alloca i32
  %l62 = alloca i1
  %l71 = alloca { i64, ptr }
  %l74 = alloca ptr
  %l75 = alloca ptr
  %l77 = alloca ptr
  %l80 = alloca { i64, ptr }
  %l90 = alloca ptr
  %l91 = alloca i1
  %l103 = alloca { i64, ptr }
  %l114 = alloca { i64, ptr }
  %l117 = alloca ptr
  %l118 = alloca ptr
  %l120 = alloca ptr
  %l124 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %wh4 = alloca ptr
  %wc4 = alloca ptr
  %ws4 = alloca i32
  %t47 = alloca %"compiler/generic:Context", align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l26, !tbaa !21
  br label %bb3
bb2:
  %t5 = load ptr, ptr %l2, !tbaa !29
  %t7 = getelementptr %"compiler/ast:TypeDecl", ptr %t5, i32 0, i32 3
  %t8 = load ptr, ptr %t7, !tbaa !29
  %t10 = icmp eq ptr %t8, null
  store i1 %t10, ptr %l26, !tbaa !21
  br label %bb3
bb3:
  %t12 = load i1, ptr %l26, !tbaa !21
  br i1 %t12, label %bb4, label %bb5
bb4:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb5:
  br label %bb6
bb6:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/check:Checker", ptr %t13, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !29
  %t17 = load i64, ptr %l1, !tbaa !24
  %t18 = load ptr, ptr %l2, !tbaa !29
  %t20 = getelementptr %"compiler/ast:TypeDecl", ptr %t18, i32 0, i32 0
  %t21 = load i32, ptr %t20, !tbaa !23
  %t25 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeEntry(ptr %v0, ptr %t16, i64 %t17, i32 %t21)
  store i64 %t25, ptr %l35
  br label %bb7
bb7:
  %t26 = load i64, ptr %l35, !tbaa !24
  store i64 %t26, ptr %l3, !tbaa !24
  %t27 = load i64, ptr %l3, !tbaa !24
  %t29 = icmp slt i64 %t27, 0
  br i1 %t29, label %bb8, label %bb9
bb8:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb9:
  br label %bb10
bb10:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/check:Checker", ptr %t31, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !29
  %t35 = load i64, ptr %l1, !tbaa !24
  %t36 = load i64, ptr %l3, !tbaa !24
  %t40 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclFor(ptr %v0, ptr %t34, i64 %t35, i64 %t36)
  store i32 %t40, ptr %l42
  br label %bb11
bb11:
  %t41 = load i32, ptr %l42, !tbaa !23
  store i32 %t41, ptr %l4, !tbaa !23
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/check:Checker", ptr %t42, i32 0, i32 1
  %t45 = load ptr, ptr %t44, !tbaa !29
  %t46 = load i32, ptr %l4, !tbaa !23
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclContext(ptr %t47, ptr %v0, ptr %s0, ptr %t45, i32 %t46)
  call void @llvm.memmove.p0.p0.i64(ptr %l46, ptr %t47, i64 160, i1 false)
  br label %bb12
bb12:
  call void @llvm.memmove.p0.p0.i64(ptr %l5, ptr %l46, i64 160, i1 false)
  %t50 = load ptr, ptr %l2, !tbaa !29
  %t52 = getelementptr %"compiler/ast:TypeDecl", ptr %t50, i32 0, i32 3
  %t53 = load ptr, ptr %t52, !tbaa !29
  store ptr %t53, ptr %l6, !tbaa !29
  %t55 = load ptr, ptr %l6, !tbaa !29
  store ptr %t55, ptr %l49, !tbaa !29
  store i1 false, ptr %l50, !tbaa !21
  %t56 = load ptr, ptr %l49, !tbaa !29
  %t57 = icmp ne ptr %t56, null
  br i1 %t57, label %bb13, label %bb14
bb13:
  %t59 = load ptr, ptr %l49, !tbaa !29
  %t60 = load i64, ptr %t59, !range !{i64 0, i64 5}
  %t62 = icmp eq i64 %t60, 0
  store i1 %t62, ptr %l50, !tbaa !21
  br label %bb14
bb14:
  %t63 = load i1, ptr %l50, !tbaa !21
  br i1 %t63, label %bb15, label %bb16
bb15:
  %t64 = load ptr, ptr %l6, !tbaa !29
  %t66 = getelementptr { i64, [6 x i64] }, ptr %t64, i32 0, i32 1
  %t67 = getelementptr { ptr }, ptr %t66, i32 0, i32 0
  %t68 = load ptr, ptr %t67
  store ptr %t68, ptr %l7, !tbaa !29
  br label %bb17
bb16:
  br label %bb34
bb17:
  store i64 0, ptr %l8, !tbaa !24
  store %olang.scope zeroinitializer, ptr %s4
  %t70 = load ptr, ptr %l7, !tbaa !29
  %t72 = call %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" @compiler_2fgeneric_2eFieldDecls.walk(ptr %v1, ptr %s4, ptr %t70)
  %t73 = extractvalue %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" %t72, 0, 1
  %t74 = extractvalue %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" %t72, 0, 0
  store ptr %t73, ptr %wh4
  store ptr %t74, ptr %wc4
  store %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" %t72, ptr %l56
  br label %bb18
bb18:
  %t75 = load %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd", ptr %l56
  store %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" %t75, ptr %l9
  br label %bb19
bb19:
  %t77 = call { i32, ptr } @std_2fprelude_2fiterator_2estd_2fprelude_2fiterator_3aViewGenerator_3ccompiler_2fast_3aV_Hf179e857cb72c72900f4614cd5df5a25(ptr %s4, ptr %l9)
  %t78 = extractvalue { i32, ptr } %t77, 1
  %t79 = extractvalue { i32, ptr } %t77, 0
  store i32 %t79, ptr %l60
  %t80 = icmp ne i32 %t79, 0
  br i1 %t80, label %bb21, label %ok.81, !prof !99
ok.81:
  store ptr %t78, ptr %l59
  br label %bb20
bb20:
  %t82 = load ptr, ptr %l59, !tbaa !29
  store ptr %t82, ptr %l57, !tbaa !29
  br label %bb23
bb21:
  %t83 = load i32, ptr %l60, !tbaa !23
  %t84 = ashr i32 %t83, 16
  %t86 = icmp eq i32 %t84, 1
  store i1 %t86, ptr %l62, !tbaa !21
  br label %bb22
bb22:
  br label %bb33
bb23:
  %t87 = load ptr, ptr %l57, !tbaa !29
  store ptr %t87, ptr %l10, !tbaa !29
  %t88 = load ptr, ptr %l10, !tbaa !29
  %t90 = getelementptr %"compiler/ast:VarDecl", ptr %t88, i32 0, i32 0
  %t91 = load { i64, ptr }, ptr %t90, !tbaa !27
  store { i64, ptr } %t91, ptr %l11, !tbaa !27
  store i64 0, ptr %l12, !tbaa !24
  %t93 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t95 = extractvalue { i64, ptr } %t93, 0
  store i64 %t95, ptr %l13, !tbaa !24
  br label %bb24
bb24:
  store %olang.scope zeroinitializer, ptr %s7
  %t97 = load i64, ptr %l12, !tbaa !24
  %t98 = load i64, ptr %l13, !tbaa !24
  %t101 = icmp slt i64 %t97, %t98
  %t103 = xor i1 %t101, true
  br i1 %t103, label %bb25, label %bb26
bb25:
  call void @__olang_scope_close(ptr %s7)
  br label %bb31
bb26:
  br label %bb27
bb27:
  %t105 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t105, ptr %l71, !tbaa !27
  %t106 = load i64, ptr %l12, !tbaa !24
  %t108 = getelementptr { i64, ptr }, ptr %l71, i32 0, i32 1
  %t109 = load ptr, ptr %t108, !tbaa !27
  %t110 = getelementptr i32, ptr %t109, i64 %t106
  %t111 = load i32, ptr %t110, !tbaa !33
  %t113 = load ptr, ptr %l0, !tbaa !29
  store ptr %t113, ptr %l74, !tbaa !29
  store ptr %l5, ptr %l75, !tbaa !29
  %t114 = load ptr, ptr %l10, !tbaa !29
  %t116 = getelementptr %"compiler/ast:VarDecl", ptr %t114, i32 0, i32 2
  %t117 = load ptr, ptr %t116, !tbaa !29
  store ptr %t117, ptr %l77, !tbaa !29
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t122 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s7, ptr %t118, i32 %t111)
  store { i64, ptr } %t122, ptr %l80
  br label %bb28
bb28:
  %t123 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t124 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  %t125 = load { i64, ptr }, ptr %l80, !tbaa !27
  %t126 = extractvalue { i64, ptr } %t125, 1
  %t127 = extractvalue { i64, ptr } %t125, 0
  %t128 = add i64 %t124, %t127
  %t129 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t130 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  %t131 = add i64 %t128, %t130
  %t132 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t131)
  call void @olang_textcopy(ptr %t132, ptr %t123, i64 %t124)
  %t133 = getelementptr i8, ptr %t132, i64 %t124
  call void @olang_textcopy(ptr %t133, ptr %t126, i64 %t127)
  %t134 = getelementptr i8, ptr %t133, i64 %t127
  call void @olang_textcopy(ptr %t134, ptr %t129, i64 %t130)
  %t135 = insertvalue { i64, ptr } undef, i64 %t131, 0
  %t136 = insertvalue { i64, ptr } %t135, ptr %t132, 1
  %t138 = extractvalue { i64, ptr } %t136, 0
  %t139 = extractvalue { i64, ptr } %t136, 1
  %t140 = mul i64 %t138, 1
  %t141 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t140)
  call void @llvm.memcpy.p0.p0.i64(ptr %t141, ptr %t139, i64 %t140, i1 false)
  %t142 = insertvalue { i64, ptr } undef, i64 %t138, 0
  %t143 = insertvalue { i64, ptr } %t142, ptr %t141, 1
  %t144 = load i32, ptr %l4, !tbaa !23
  %t146 = sext i32 %t144 to i64
  %t147 = load i64, ptr %l8, !tbaa !24
  %t148 = load ptr, ptr %l74, !tbaa !29
  %t149 = load ptr, ptr %l75, !tbaa !29
  %t150 = load ptr, ptr %l77, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenMarks(ptr %v0, ptr %s0, ptr %v1, ptr %s7, ptr %t148, ptr %t149, ptr %t150, { i64, ptr } %t143, i64 %t146, i64 %t147, i1 true)
  br label %bb29
bb29:
  %t154 = load i64, ptr %l8, !tbaa !24
  %t156 = add i64 %t154, 1
  store i64 %t156, ptr %l8, !tbaa !24
  call void @__olang_scope_close(ptr %s7)
  br label %bb30
bb30:
  %t158 = load i64, ptr %l12, !tbaa !24
  %t160 = add i64 %t158, 1
  store i64 %t160, ptr %l12, !tbaa !24
  br label %bb24
bb31:
  br label %bb32
bb32:
  br label %bb19
bb33:
  store i32 0, ptr %ws4
  br label %wend4
wend4.c0:
  call void @__olang_scope_close(ptr %s4)
  br label %bb59
bb34:
  %t162 = load ptr, ptr %l6, !tbaa !29
  store ptr %t162, ptr %l90, !tbaa !29
  store i1 false, ptr %l91, !tbaa !21
  %t163 = load ptr, ptr %l90, !tbaa !29
  %t164 = icmp ne ptr %t163, null
  br i1 %t164, label %bb35, label %bb36
bb35:
  %t166 = load ptr, ptr %l90, !tbaa !29
  %t167 = load i64, ptr %t166, !range !{i64 0, i64 5}
  %t169 = icmp eq i64 %t167, 1
  store i1 %t169, ptr %l91, !tbaa !21
  br label %bb36
bb36:
  %t170 = load i1, ptr %l91, !tbaa !21
  br i1 %t170, label %bb37, label %bb38
bb37:
  %t171 = load ptr, ptr %l6, !tbaa !29
  %t173 = getelementptr { i64, [6 x i64] }, ptr %t171, i32 0, i32 1
  %t174 = getelementptr { { i64, ptr }, ptr }, ptr %t173, i32 0, i32 0
  %t175 = load { i64, ptr }, ptr %t174
  store { i64, ptr } %t175, ptr %l15, !tbaa !27
  br label %bb39
bb38:
  br label %bb54
bb39:
  %t177 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t177, ptr %l16, !tbaa !27
  store i64 0, ptr %l17, !tbaa !24
  %t179 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t181 = extractvalue { i64, ptr } %t179, 0
  store i64 %t181, ptr %l18, !tbaa !24
  br label %bb40
bb40:
  %t183 = load i64, ptr %l17, !tbaa !24
  %t184 = load i64, ptr %l18, !tbaa !24
  %t187 = icmp slt i64 %t183, %t184
  %t189 = xor i1 %t187, true
  br i1 %t189, label %bb41, label %bb42
bb41:
  br label %bb53
bb42:
  br label %bb43
bb43:
  %t191 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t191, ptr %l103, !tbaa !27
  %t192 = load i64, ptr %l17, !tbaa !24
  %t194 = getelementptr { i64, ptr }, ptr %l103, i32 0, i32 1
  %t195 = load ptr, ptr %t194, !tbaa !27
  %t196 = getelementptr ptr, ptr %t195, i64 %t192
  %t197 = load ptr, ptr %t196, !tbaa !39
  %t201 = getelementptr %"compiler/ast:CaseDecl", ptr %t197, i32 0, i32 2
  %t202 = load { i64, ptr }, ptr %t201, !tbaa !27
  store { i64, ptr } %t202, ptr %l20, !tbaa !27
  store i64 0, ptr %l21, !tbaa !24
  %t204 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t206 = extractvalue { i64, ptr } %t204, 0
  store i64 %t206, ptr %l22, !tbaa !24
  br label %bb44
bb44:
  store %olang.scope zeroinitializer, ptr %s14
  %t208 = load i64, ptr %l21, !tbaa !24
  %t209 = load i64, ptr %l22, !tbaa !24
  %t212 = icmp slt i64 %t208, %t209
  %t214 = xor i1 %t212, true
  br i1 %t214, label %bb45, label %bb46
bb45:
  call void @__olang_scope_close(ptr %s14)
  br label %bb51
bb46:
  br label %bb47
bb47:
  %t216 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t216, ptr %l114, !tbaa !27
  %t217 = load i64, ptr %l21, !tbaa !24
  %t219 = getelementptr { i64, ptr }, ptr %l114, i32 0, i32 1
  %t220 = load ptr, ptr %t219, !tbaa !27
  %t221 = getelementptr ptr, ptr %t220, i64 %t217
  %t222 = load ptr, ptr %t221, !tbaa !39
  store ptr %t222, ptr %l23, !tbaa !29
  %t224 = load ptr, ptr %l0, !tbaa !29
  store ptr %t224, ptr %l117, !tbaa !29
  store ptr %l5, ptr %l118, !tbaa !29
  %t225 = load ptr, ptr %l23, !tbaa !29
  %t227 = getelementptr %"compiler/ast:Param", ptr %t225, i32 0, i32 2
  %t228 = load ptr, ptr %t227, !tbaa !29
  store ptr %t228, ptr %l120, !tbaa !29
  %t229 = load ptr, ptr %l0, !tbaa !29
  %t230 = load ptr, ptr %l23, !tbaa !29
  %t232 = getelementptr %"compiler/ast:Param", ptr %t230, i32 0, i32 1
  %t233 = load i32, ptr %t232, !tbaa !23
  %t236 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s14, ptr %t229, i32 %t233)
  store { i64, ptr } %t236, ptr %l124
  br label %bb48
bb48:
  %t237 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d7, i32 0, i32 1) }, 1
  %t238 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d7, i32 0, i32 1) }, 0
  %t239 = load { i64, ptr }, ptr %l124, !tbaa !27
  %t240 = extractvalue { i64, ptr } %t239, 1
  %t241 = extractvalue { i64, ptr } %t239, 0
  %t242 = add i64 %t238, %t241
  %t243 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d7, i32 0, i32 1) }, 1
  %t244 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d7, i32 0, i32 1) }, 0
  %t245 = add i64 %t242, %t244
  %t246 = call ptr @__olang_scope_alloc(ptr %s14, i64 %t245)
  call void @olang_textcopy(ptr %t246, ptr %t237, i64 %t238)
  %t247 = getelementptr i8, ptr %t246, i64 %t238
  call void @olang_textcopy(ptr %t247, ptr %t240, i64 %t241)
  %t248 = getelementptr i8, ptr %t247, i64 %t241
  call void @olang_textcopy(ptr %t248, ptr %t243, i64 %t244)
  %t249 = insertvalue { i64, ptr } undef, i64 %t245, 0
  %t250 = insertvalue { i64, ptr } %t249, ptr %t246, 1
  %t252 = extractvalue { i64, ptr } %t250, 0
  %t253 = extractvalue { i64, ptr } %t250, 1
  %t254 = mul i64 %t252, 1
  %t255 = call ptr @__olang_scope_alloc(ptr %s14, i64 %t254)
  call void @llvm.memcpy.p0.p0.i64(ptr %t255, ptr %t253, i64 %t254, i1 false)
  %t256 = insertvalue { i64, ptr } undef, i64 %t252, 0
  %t257 = insertvalue { i64, ptr } %t256, ptr %t255, 1
  %t258 = load ptr, ptr %l117, !tbaa !29
  %t259 = load ptr, ptr %l118, !tbaa !29
  %t260 = load ptr, ptr %l120, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenMarks(ptr %v0, ptr %s0, ptr %v1, ptr %s14, ptr %t258, ptr %t259, ptr %t260, { i64, ptr } %t257, i64 -1, i64 -1, i1 true)
  br label %bb49
bb49:
  call void @__olang_scope_close(ptr %s14)
  br label %bb50
bb50:
  %t262 = load i64, ptr %l21, !tbaa !24
  %t264 = add i64 %t262, 1
  store i64 %t264, ptr %l21, !tbaa !24
  br label %bb44
bb51:
  br label %bb52
bb52:
  %t266 = load i64, ptr %l17, !tbaa !24
  %t268 = add i64 %t266, 1
  store i64 %t268, ptr %l17, !tbaa !24
  br label %bb40
bb53:
  br label %bb59
bb54:
  br i1 true, label %bb55, label %bb56
bb55:
  br label %bb57
bb56:
  br label %bb58
bb57:
  br label %bb59
bb58:
  call void @__olang_check_failed(ptr @olang_loc_e919a481eb9c0c53_bf698ad9ae031297)
  unreachable
bb59:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
wend4:
  %t270 = load ptr, ptr %wh4
  %t271 = load ptr, ptr %wc4
  %t272 = call ptr @llvm.coro.promise(ptr %t270, i32 8, i1 false)
  %t273 = getelementptr { { i32, ptr }, i32 }, ptr %t272, i32 0, i32 1
  store i32 2, ptr %t273
  %t274 = call { i32, ptr } %t271(ptr %t270, ptr null)
  %t275 = load i32, ptr %ws4
  switch i32 %t275, label %wend4.c0 [ ]
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eheldArg(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, ptr %a2, i64 %a3) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca ptr
  %l3 = alloca i64
  %l6 = alloca i64
  %l8 = alloca { i64, ptr }
  %l11 = alloca ptr
  %l12 = alloca { i64, ptr }
  %l15 = alloca %"compiler/source:Span"
  %l18 = alloca i64
  %l19 = alloca ptr
  %rv = alloca ptr
  store { i64, ptr } %a1, ptr %l1
  store ptr %a2, ptr %l2
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t2 = load i64, ptr %l3, !tbaa !24
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v2, ptr %t1, i64 %t2)
  store i64 %t5, ptr %l6
  br label %bb1
bb1:
  %t6 = load i64, ptr %l6, !tbaa !24
  %t7 = icmp slt i64 %t6, 0
  br i1 %t7, label %bb2, label %bb3
bb2:
  %t9 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t9, ptr %l8, !tbaa !27
  %t10 = load i64, ptr %l3, !tbaa !24
  %t12 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr ptr, ptr %t13, i64 %t10
  %t15 = load ptr, ptr %t14, !tbaa !39
  store ptr %t15, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  store ptr %a0, ptr %l11, !tbaa !29
  %t18 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t18, ptr %l12, !tbaa !27
  %t19 = load i64, ptr %l3, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr ptr, ptr %t22, i64 %t19
  %t24 = load ptr, ptr %t23, !tbaa !39
  %t26 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t24)
  store %"compiler/source:Span" %t26, ptr %l15
  br label %bb5
bb5:
  %t27 = load ptr, ptr %l2, !tbaa !29
  %t28 = load i64, ptr %l3, !tbaa !24
  %t31 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v2, ptr %t27, i64 %t28)
  store i64 %t31, ptr %l18
  br label %bb6
bb6:
  %t32 = load ptr, ptr %l11, !tbaa !29
  %t33 = load %"compiler/source:Span", ptr %l15
  %t34 = load i64, ptr %l18, !tbaa !24
  %t35 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v3, ptr %t32, %"compiler/source:Span" %t33, i64 %t34)
  store ptr %t35, ptr %l19
  br label %bb7
bb7:
  %t36 = load ptr, ptr %l19, !tbaa !29
  store ptr %t36, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eholdsBy(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca i64
  %l4 = alloca i32
  %l5 = alloca i32
  %l8 = alloca i1
  %l17 = alloca i32
  %l24 = alloca i32
  %l31 = alloca i1
  %l36 = alloca i32
  %l39 = alloca ptr
  %l44 = alloca i32
  %l47 = alloca i1
  %l50 = alloca ptr
  %l55 = alloca i32
  %l58 = alloca i1
  %l61 = alloca ptr
  %l66 = alloca i32
  %l70 = alloca i1
  %l78 = alloca i32
  %l81 = alloca ptr
  %l86 = alloca i32
  %l90 = alloca i1
  %l95 = alloca ptr
  %l100 = alloca i32
  %l103 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i32 %a2, ptr %l2
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l3, !tbaa !24
  %t3 = icmp sgt i64 %t1, 16
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l8, !tbaa !21
  br label %bb3
bb2:
  %t5 = load i32, ptr %l1, !tbaa !23
  %t6 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t9 = icmp eq i32 %t5, %t6
  store i1 %t9, ptr %l8, !tbaa !21
  br label %bb3
bb3:
  %t11 = load i1, ptr %l8, !tbaa !21
  br i1 %t11, label %bb4, label %bb5
bb4:
  store i1 false, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/check:Checker", ptr %t13, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !29
  %t18 = getelementptr %"compiler/generic:Program", ptr %t16, i32 0, i32 2
  %t19 = load i32, ptr %l1, !tbaa !23
  %t22 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t18, i32 %t19)
  store i32 %t22, ptr %l17
  br label %bb7
bb7:
  %t23 = load i32, ptr %l17, !range !{i32 0, i32 33}
  store i32 %t23, ptr %l4
  %t24 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t26 = trunc i64 18 to i32
  %t27 = icmp eq i32 %t24, %t26
  br i1 %t27, label %bb8, label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb35
bb10:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/check:Checker", ptr %t29, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !29
  %t34 = getelementptr %"compiler/generic:Program", ptr %t32, i32 0, i32 2
  %t35 = load i32, ptr %l1, !tbaa !23
  %t38 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t34, i32 %t35)
  store i32 %t38, ptr %l24
  br label %bb11
bb11:
  %t39 = load i32, ptr %l2, !tbaa !23
  %t40 = load i32, ptr %l24, !tbaa !23
  %t42 = icmp eq i32 %t40, %t39
  br i1 %t42, label %bb12, label %bb13
bb12:
  store i1 true, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/check:Checker", ptr %t45, i32 0, i32 1
  %t48 = load ptr, ptr %t47, !tbaa !29
  %t49 = load i32, ptr %l1, !tbaa !23
  %t52 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %t48, i32 %t49)
  store i1 %t52, ptr %l31
  br label %bb15
bb15:
  %t53 = load i1, ptr %l31, !tbaa !21
  %t54 = xor i1 %t53, true
  br i1 %t54, label %bb16, label %bb17
bb16:
  store i1 false, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t58 = load i32, ptr %l1, !tbaa !23
  %t61 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclKind(ptr %v0, ptr %t57, i32 %t58)
  store i32 %t61, ptr %l36
  br label %bb19
bb19:
  %t62 = load i32, ptr %l36, !range !{i32 0, i32 6}
  store i32 %t62, ptr %l5
  %t63 = load i32, ptr %l5, !range !{i32 0, i32 6}
  %t65 = trunc i64 0 to i32
  %t66 = icmp eq i32 %t63, %t65
  br i1 %t66, label %bb20, label %bb21
bb20:
  %t68 = load ptr, ptr %l0, !tbaa !29
  store ptr %t68, ptr %l39, !tbaa !29
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr %"compiler/check:Checker", ptr %t69, i32 0, i32 1
  %t72 = load ptr, ptr %t71, !tbaa !29
  %t74 = getelementptr %"compiler/generic:Program", ptr %t72, i32 0, i32 2
  %t75 = load i32, ptr %l1, !tbaa !23
  %t78 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t74, i32 %t75)
  store i32 %t78, ptr %l44
  br label %bb22
bb21:
  br label %bb24
bb22:
  %t79 = load i32, ptr %l2, !tbaa !23
  %t80 = load i64, ptr %l3, !tbaa !24
  %t81 = load ptr, ptr %l39, !tbaa !29
  %t82 = load i32, ptr %l44, !tbaa !23
  %t85 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elistHoldsBy(ptr %v0, ptr %t81, i32 %t82, i32 %t79, i64 %t80)
  store i1 %t85, ptr %l47
  br label %bb23
bb23:
  %t86 = load i1, ptr %l47, !tbaa !21
  store i1 %t86, ptr %rv
  br label %ret
bb24:
  %t87 = load i32, ptr %l5, !range !{i32 0, i32 6}
  %t89 = trunc i64 1 to i32
  %t90 = icmp eq i32 %t87, %t89
  br i1 %t90, label %bb25, label %bb26
bb25:
  %t92 = load ptr, ptr %l0, !tbaa !29
  store ptr %t92, ptr %l50, !tbaa !29
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t95 = getelementptr %"compiler/check:Checker", ptr %t93, i32 0, i32 1
  %t96 = load ptr, ptr %t95, !tbaa !29
  %t98 = getelementptr %"compiler/generic:Program", ptr %t96, i32 0, i32 2
  %t99 = load i32, ptr %l1, !tbaa !23
  %t102 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %t98, i32 %t99)
  store i32 %t102, ptr %l55
  br label %bb27
bb26:
  br label %bb29
bb27:
  %t103 = load i32, ptr %l2, !tbaa !23
  %t104 = load i64, ptr %l3, !tbaa !24
  %t105 = load ptr, ptr %l50, !tbaa !29
  %t106 = load i32, ptr %l55, !tbaa !23
  %t109 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elistHoldsBy(ptr %v0, ptr %t105, i32 %t106, i32 %t103, i64 %t104)
  store i1 %t109, ptr %l58
  br label %bb28
bb28:
  %t110 = load i1, ptr %l58, !tbaa !21
  store i1 %t110, ptr %rv
  br label %ret
bb29:
  %t111 = load i32, ptr %l5, !range !{i32 0, i32 6}
  %t113 = trunc i64 4 to i32
  %t114 = icmp eq i32 %t111, %t113
  br i1 %t114, label %bb30, label %bb31
bb30:
  %t116 = load ptr, ptr %l0, !tbaa !29
  store ptr %t116, ptr %l61, !tbaa !29
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t119 = getelementptr %"compiler/check:Checker", ptr %t117, i32 0, i32 1
  %t120 = load ptr, ptr %t119, !tbaa !29
  %t122 = getelementptr %"compiler/generic:Program", ptr %t120, i32 0, i32 2
  %t123 = load i32, ptr %l1, !tbaa !23
  %t126 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %t122, i32 %t123)
  store i32 %t126, ptr %l66
  br label %bb32
bb31:
  br label %bb34
bb32:
  %t127 = load i32, ptr %l2, !tbaa !23
  %t128 = load i64, ptr %l3, !tbaa !24
  %t130 = add i64 %t128, 1
  %t131 = load ptr, ptr %l61, !tbaa !29
  %t132 = load i32, ptr %l66, !tbaa !23
  %t135 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eholdsBy(ptr %v0, ptr %t131, i32 %t132, i32 %t127, i64 %t130)
  store i1 %t135, ptr %l70
  br label %bb33
bb33:
  %t136 = load i1, ptr %l70, !tbaa !21
  store i1 %t136, ptr %rv
  br label %ret
bb34:
  store i1 false, ptr %rv
  br label %ret
bb35:
  %t138 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t140 = trunc i64 19 to i32
  %t141 = icmp eq i32 %t138, %t140
  br i1 %t141, label %bb36, label %bb37
bb36:
  br label %bb38
bb37:
  br label %bb45
bb38:
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t145 = getelementptr %"compiler/check:Checker", ptr %t143, i32 0, i32 1
  %t146 = load ptr, ptr %t145, !tbaa !29
  %t148 = getelementptr %"compiler/generic:Program", ptr %t146, i32 0, i32 2
  %t149 = load i32, ptr %l1, !tbaa !23
  %t152 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t148, i32 %t149)
  store i32 %t152, ptr %l78
  br label %bb39
bb39:
  %t153 = load i32, ptr %l78, !tbaa !23
  %t154 = icmp eq i32 %t153, 0
  br i1 %t154, label %bb40, label %bb41
bb40:
  store i1 false, ptr %rv
  br label %ret
bb41:
  br label %bb42
bb42:
  %t157 = load ptr, ptr %l0, !tbaa !29
  store ptr %t157, ptr %l81, !tbaa !29
  %t158 = load ptr, ptr %l0, !tbaa !29
  %t160 = getelementptr %"compiler/check:Checker", ptr %t158, i32 0, i32 1
  %t161 = load ptr, ptr %t160, !tbaa !29
  %t163 = getelementptr %"compiler/generic:Program", ptr %t161, i32 0, i32 2
  %t164 = load i32, ptr %l1, !tbaa !23
  %t167 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t163, i32 %t164)
  store i32 %t167, ptr %l86
  br label %bb43
bb43:
  %t168 = load i32, ptr %l2, !tbaa !23
  %t169 = load i64, ptr %l3, !tbaa !24
  %t171 = add i64 %t169, 1
  %t172 = load ptr, ptr %l81, !tbaa !29
  %t173 = load i32, ptr %l86, !tbaa !23
  %t176 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eholdsBy(ptr %v0, ptr %t172, i32 %t173, i32 %t168, i64 %t171)
  store i1 %t176, ptr %l90
  br label %bb44
bb44:
  %t177 = load i1, ptr %l90, !tbaa !21
  store i1 %t177, ptr %rv
  br label %ret
bb45:
  %t178 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t180 = trunc i64 22 to i32
  %t181 = icmp eq i32 %t178, %t180
  br i1 %t181, label %bb46, label %bb47
bb46:
  br label %bb50
bb47:
  %t183 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t185 = trunc i64 23 to i32
  %t186 = icmp eq i32 %t183, %t185
  br i1 %t186, label %bb48, label %bb49
bb48:
  br label %bb50
bb49:
  br label %bb53
bb50:
  %t188 = load ptr, ptr %l0, !tbaa !29
  store ptr %t188, ptr %l95, !tbaa !29
  %t189 = load ptr, ptr %l0, !tbaa !29
  %t191 = getelementptr %"compiler/check:Checker", ptr %t189, i32 0, i32 1
  %t192 = load ptr, ptr %t191, !tbaa !29
  %t194 = getelementptr %"compiler/generic:Program", ptr %t192, i32 0, i32 2
  %t195 = load i32, ptr %l1, !tbaa !23
  %t198 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t194, i32 %t195)
  store i32 %t198, ptr %l100
  br label %bb51
bb51:
  %t199 = load i32, ptr %l2, !tbaa !23
  %t200 = load i64, ptr %l3, !tbaa !24
  %t201 = load ptr, ptr %l95, !tbaa !29
  %t202 = load i32, ptr %l100, !tbaa !23
  %t205 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elistHoldsBy(ptr %v0, ptr %t201, i32 %t202, i32 %t199, i64 %t200)
  store i1 %t205, ptr %l103
  br label %bb52
bb52:
  %t206 = load i1, ptr %l103, !tbaa !21
  store i1 %t206, ptr %rv
  br label %ret
bb53:
  br i1 true, label %bb54, label %bb55
bb54:
  br label %bb56
bb55:
  br label %bb57
bb56:
  store i1 false, ptr %rv
  br label %ret
bb57:
  call void @__olang_check_failed(ptr @olang_loc_4d3e518c37f06fac_dc2de6c574f30d28)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einWrittenOrder(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i1
  %l5 = alloca { i64, ptr }
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
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca ptr
  %l22 = alloca %"compiler/source:Span"
  %l23 = alloca i64
  %l31 = alloca { i64, ptr }
  %l48 = alloca i64
  %l51 = alloca i64
  %l74 = alloca i64
  %l77 = alloca i64
  %l95 = alloca { i64, ptr }
  %l100 = alloca i1
  %l103 = alloca i64
  %l106 = alloca i64
  %l113 = alloca ptr
  %l114 = alloca ptr
  %l115 = alloca i1
  %l119 = alloca %"compiler/source:Span"
  %l120 = alloca ptr
  %l121 = alloca %"compiler/source:Span"
  %l124 = alloca i32
  %l125 = alloca i64
  %l136 = alloca ptr
  %l139 = alloca i64
  %l143 = alloca ptr
  %t213 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store i64 -1, ptr %l3, !tbaa !24
  store i1 true, ptr %l4, !tbaa !21
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t1, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t3 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t5 = extractvalue { i64, ptr } %t3, 0
  store i64 %t5, ptr %l7, !tbaa !24
  br label %bb1
bb1:
  %t7 = load i64, ptr %l6, !tbaa !24
  %t8 = load i64, ptr %l7, !tbaa !24
  %t11 = icmp slt i64 %t7, %t8
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb2, label %bb3
bb2:
  br label %bb12
bb3:
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t15, ptr %l31, !tbaa !27
  %t16 = load i64, ptr %l6, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr i64, ptr %t19, i64 %t16
  %t21 = load i64, ptr %t20, !tbaa !34
  store i64 %t21, ptr %l8, !tbaa !24
  %t23 = load i64, ptr %l8, !tbaa !24
  %t25 = icmp slt i64 %t23, 0
  br i1 %t25, label %bb5, label %bb6
bb5:
  br label %bb11
bb6:
  br label %bb7
bb7:
  %t27 = load i64, ptr %l8, !tbaa !24
  %t28 = load i64, ptr %l3, !tbaa !24
  %t31 = icmp slt i64 %t27, %t28
  br i1 %t31, label %bb8, label %bb9
bb8:
  store i1 false, ptr %l4, !tbaa !21
  br label %bb10
bb9:
  br label %bb10
bb10:
  %t33 = load i64, ptr %l8, !tbaa !24
  store i64 %t33, ptr %l3, !tbaa !24
  br label %bb11
bb11:
  %t35 = load i64, ptr %l6, !tbaa !24
  %t37 = add i64 %t35, 1
  store i64 %t37, ptr %l6, !tbaa !24
  br label %bb1
bb12:
  %t39 = load i1, ptr %l4, !tbaa !21
  br i1 %t39, label %bb13, label %bb14
bb13:
  br label %ret
bb14:
  br label %bb15
bb15:
  store i64 0, ptr %l9, !tbaa !24
  %t41 = load i64, ptr %l3, !tbaa !24
  %t43 = add i64 %t41, 1
  store i64 %t43, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t45 = load i64, ptr %l10, !tbaa !24
  %t46 = load i64, ptr %l9, !tbaa !24
  %t49 = icmp sgt i64 %t45, %t46
  br i1 %t49, label %bb16, label %bb17
bb16:
  %t51 = load i64, ptr %l11, !tbaa !24
  %t53 = icmp sgt i64 %t51, 0
  br i1 %t53, label %bb18, label %bb19
bb17:
  store i64 0, ptr %l48, !tbaa !24
  br label %bb21
bb18:
  %t55 = load i64, ptr %l10, !tbaa !24
  %t56 = load i64, ptr %l9, !tbaa !24
  %t59 = sub i64 %t55, %t56
  %t60 = load i64, ptr %l11, !tbaa !24
  %t63 = add i64 %t59, %t60
  %t65 = sub i64 %t63, 1
  %t66 = load i64, ptr %l11, !tbaa !24
  %t69 = sdiv i64 %t65, %t66
  store i64 %t69, ptr %l51, !tbaa !24
  br label %bb20
bb19:
  store i64 0, ptr %l51, !tbaa !24
  br label %bb20
bb20:
  %t71 = load i64, ptr %l51, !tbaa !24
  store i64 %t71, ptr %l48, !tbaa !24
  br label %bb21
bb21:
  %t72 = load i64, ptr %l48, !tbaa !24
  store i64 %t72, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb22
bb22:
  %t73 = load i64, ptr %l13, !tbaa !24
  %t74 = load i64, ptr %l12, !tbaa !24
  %t77 = icmp slt i64 %t73, %t74
  %t79 = xor i1 %t77, true
  br i1 %t79, label %bb23, label %bb24
bb23:
  br label %bb64
bb24:
  br label %bb25
bb25:
  %t81 = load i64, ptr %l9, !tbaa !24
  %t82 = load i64, ptr %l13, !tbaa !24
  %t83 = load i64, ptr %l11, !tbaa !24
  %t86 = mul i64 %t82, %t83
  %t89 = add i64 %t81, %t86
  store i64 %t89, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  %t91 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t93 = extractvalue { i64, ptr } %t91, 0
  store i64 %t93, ptr %l16, !tbaa !24
  store i64 1, ptr %l17, !tbaa !24
  %t95 = load i64, ptr %l16, !tbaa !24
  %t96 = load i64, ptr %l15, !tbaa !24
  %t99 = icmp sgt i64 %t95, %t96
  br i1 %t99, label %bb26, label %bb27
bb26:
  %t101 = load i64, ptr %l17, !tbaa !24
  %t103 = icmp sgt i64 %t101, 0
  br i1 %t103, label %bb28, label %bb29
bb27:
  store i64 0, ptr %l74, !tbaa !24
  br label %bb31
bb28:
  %t105 = load i64, ptr %l16, !tbaa !24
  %t106 = load i64, ptr %l15, !tbaa !24
  %t109 = sub i64 %t105, %t106
  %t110 = load i64, ptr %l17, !tbaa !24
  %t113 = add i64 %t109, %t110
  %t115 = sub i64 %t113, 1
  %t116 = load i64, ptr %l17, !tbaa !24
  %t119 = sdiv i64 %t115, %t116
  store i64 %t119, ptr %l77, !tbaa !24
  br label %bb30
bb29:
  store i64 0, ptr %l77, !tbaa !24
  br label %bb30
bb30:
  %t121 = load i64, ptr %l77, !tbaa !24
  store i64 %t121, ptr %l74, !tbaa !24
  br label %bb31
bb31:
  %t122 = load i64, ptr %l74, !tbaa !24
  store i64 %t122, ptr %l18, !tbaa !24
  store i64 0, ptr %l19, !tbaa !24
  br label %bb32
bb32:
  %t123 = load i64, ptr %l19, !tbaa !24
  %t124 = load i64, ptr %l18, !tbaa !24
  %t127 = icmp slt i64 %t123, %t124
  %t129 = xor i1 %t127, true
  br i1 %t129, label %bb33, label %bb34
bb33:
  br label %bb62
bb34:
  br label %bb35
bb35:
  %t131 = load i64, ptr %l15, !tbaa !24
  %t132 = load i64, ptr %l19, !tbaa !24
  %t133 = load i64, ptr %l17, !tbaa !24
  %t136 = mul i64 %t132, %t133
  %t139 = add i64 %t131, %t136
  store i64 %t139, ptr %l20, !tbaa !24
  %t141 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t141, ptr %l95, !tbaa !27
  %t142 = load i64, ptr %l20, !tbaa !24
  %t144 = getelementptr { i64, ptr }, ptr %l95, i32 0, i32 1
  %t145 = load ptr, ptr %t144, !tbaa !27
  %t146 = getelementptr i64, ptr %t145, i64 %t142
  %t147 = load i64, ptr %t146, !tbaa !34
  %t148 = load i64, ptr %l14, !tbaa !24
  %t151 = icmp ne i64 %t147, %t148
  br i1 %t151, label %bb36, label %bb37
bb36:
  store i1 true, ptr %l100, !tbaa !21
  br label %bb39
bb37:
  %t153 = load i64, ptr %l2, !tbaa !24
  %t154 = load i64, ptr %l20, !tbaa !24
  %t157 = add i64 %t153, %t154
  store i64 %t157, ptr %l103, !tbaa !24
  %t158 = load ptr, ptr %l0, !tbaa !29
  %t160 = getelementptr %"compiler/check:Checker", ptr %t158, i32 0, i32 36
  %t162 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t160)
  store i64 %t162, ptr %l106
  br label %bb38
bb38:
  %t163 = load i64, ptr %l103, !tbaa !24
  %t164 = load i64, ptr %l106, !tbaa !24
  %t165 = icmp sge i64 %t163, %t164
  store i1 %t165, ptr %l100, !tbaa !21
  br label %bb39
bb39:
  %t167 = load i1, ptr %l100, !tbaa !21
  br i1 %t167, label %bb40, label %bb41
bb40:
  br label %bb61
bb41:
  br label %bb42
bb42:
  %t168 = load ptr, ptr %l0, !tbaa !29
  %t170 = getelementptr %"compiler/check:Checker", ptr %t168, i32 0, i32 36
  %t171 = load i64, ptr %l2, !tbaa !24
  %t172 = load i64, ptr %l20, !tbaa !24
  %t175 = add i64 %t171, %t172
  %t178 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eAt_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t170, i64 %t175)
  store ptr %t178, ptr %l113
  br label %bb43
bb43:
  %t179 = load ptr, ptr %l113, !tbaa !29
  store ptr %t179, ptr %l21, !tbaa !29
  %t180 = load ptr, ptr %l21, !tbaa !29
  store ptr %t180, ptr %l114, !tbaa !29
  store i1 false, ptr %l115, !tbaa !21
  %t181 = load ptr, ptr %l114, !tbaa !29
  %t182 = icmp ne ptr %t181, null
  br i1 %t182, label %bb44, label %bb45
bb44:
  %t184 = load ptr, ptr %l114, !tbaa !29
  %t185 = load i64, ptr %t184, !range !{i64 0, i64 18}
  %t187 = icmp eq i64 %t185, 0
  store i1 %t187, ptr %l115, !tbaa !21
  br label %bb45
bb45:
  %t188 = load i1, ptr %l115, !tbaa !21
  br i1 %t188, label %bb46, label %bb47
bb46:
  br label %bb48
bb47:
  br label %bb49
bb48:
  br label %bb61
bb49:
  br i1 true, label %bb50, label %bb51
bb50:
  br label %bb52
bb51:
  br label %bb53
bb52:
  br label %bb54
bb53:
  call void @__olang_check_failed(ptr @olang_loc_862846f5a5002b51_69e64f75e4a124a5)
  unreachable
bb54:
  %t189 = load ptr, ptr %l21, !tbaa !29
  %t191 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v0, ptr %t189)
  store %"compiler/source:Span" %t191, ptr %l119
  br label %bb55
bb55:
  %t192 = load %"compiler/source:Span", ptr %l119
  store %"compiler/source:Span" %t192, ptr %l22
  %t193 = load ptr, ptr %l0, !tbaa !29
  store ptr %t193, ptr %l120, !tbaa !29
  %t194 = load %"compiler/source:Span", ptr %l22
  store %"compiler/source:Span" %t194, ptr %l121
  %t195 = load ptr, ptr %l21, !tbaa !29
  %t198 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t195)
  store i32 %t198, ptr %l124
  br label %bb56
bb56:
  %t199 = load ptr, ptr %l120, !tbaa !29
  %t200 = load %"compiler/source:Span", ptr %l121
  %t201 = load i32, ptr %l124, !tbaa !23
  %t202 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehidden(ptr %v0, ptr %t199, %"compiler/source:Span" %t200, i32 %t201)
  store i64 %t202, ptr %l125
  br label %bb57
bb57:
  %t203 = load i64, ptr %l125, !tbaa !24
  store i64 %t203, ptr %l23, !tbaa !24
  %t204 = load ptr, ptr %l0, !tbaa !29
  %t206 = getelementptr %"compiler/check:Checker", ptr %t204, i32 0, i32 37
  %t207 = load %"compiler/source:Span", ptr %l22
  %t208 = load i64, ptr %l23, !tbaa !24
  %t210 = trunc i64 %t208 to i32
  %t212 = load ptr, ptr %l21, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t213
  %t214 = getelementptr { i64, [3 x i64] }, ptr %t213, i32 0, i32 0
  store i64 0, ptr %t214
  %t216 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t207, 0
  %t218 = insertvalue { %"compiler/source:Span", i32, ptr } %t216, i32 %t210, 1
  %t220 = insertvalue { %"compiler/source:Span", i32, ptr } %t218, ptr %t212, 2
  %t221 = getelementptr { i64, [3 x i64] }, ptr %t213, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t220, ptr %t221
  %t222 = load { i64, [3 x i64] }, ptr %t213
  %t224 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t222, ptr %t224
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t206, ptr %t224)
  br label %bb58
bb58:
  %t227 = load ptr, ptr %l0, !tbaa !29
  %t229 = getelementptr %"compiler/check:Checker", ptr %t227, i32 0, i32 36
  store ptr %t229, ptr %l136, !tbaa !29
  %t230 = load i64, ptr %l2, !tbaa !24
  %t231 = load i64, ptr %l20, !tbaa !24
  %t234 = add i64 %t230, %t231
  store i64 %t234, ptr %l139, !tbaa !24
  %t235 = load ptr, ptr %l0, !tbaa !29
  %t236 = load %"compiler/source:Span", ptr %l22
  %t237 = load i64, ptr %l23, !tbaa !24
  %t241 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t235, %"compiler/source:Span" %t236, i64 %t237)
  store ptr %t241, ptr %l143
  br label %bb59
bb59:
  %t242 = load ptr, ptr %l136, !tbaa !29
  %t243 = load i64, ptr %l139, !tbaa !24
  %t244 = load ptr, ptr %l143, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eSetAt_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t242, i64 %t243, ptr %t244)
  br label %bb60
bb60:
  br label %bb61
bb61:
  %t245 = load i64, ptr %l19, !tbaa !24
  %t247 = add i64 %t245, 1
  store i64 %t247, ptr %l19, !tbaa !24
  br label %bb32
bb62:
  br label %bb63
bb63:
  %t249 = load i64, ptr %l13, !tbaa !24
  %t251 = add i64 %t249, 1
  store i64 %t251, ptr %l13, !tbaa !24
  br label %bb22
bb64:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l6 = alloca i32
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/check:Checker", ptr %a0, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t6, i32 %a1)
  store i32 %t10, ptr %l6
  br label %bb1
bb1:
  %t11 = load i32, ptr %l6, !range !{i32 0, i32 33}
  %t13 = trunc i64 18 to i32
  %t14 = icmp eq i32 %t11, %t13
  store i1 %t14, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisTrait(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l6 = alloca i32
  %l9 = alloca i1
  %l12 = alloca ptr
  %l17 = alloca i32
  %l18 = alloca i32
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
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
  store i32 %t10, ptr %l6
  br label %bb1
bb1:
  %t11 = load i32, ptr %l6, !range !{i32 0, i32 33}
  %t13 = trunc i64 18 to i32
  %t14 = icmp eq i32 %t11, %t13
  br i1 %t14, label %bb2, label %bb3
bb2:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/check:Checker", ptr %t16, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !29
  %t21 = getelementptr %"compiler/generic:Program", ptr %t19, i32 0, i32 2
  store ptr %t21, ptr %l12, !tbaa !29
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/check:Checker", ptr %t22, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t27 = getelementptr %"compiler/generic:Program", ptr %t25, i32 0, i32 2
  %t28 = load i32, ptr %l1, !tbaa !23
  %t31 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t27, i32 %t28)
  store i32 %t31, ptr %l17
  br label %bb4
bb3:
  store i1 false, ptr %l9, !tbaa !21
  br label %bb6
bb4:
  %t32 = load ptr, ptr %l12, !tbaa !29
  %t33 = load i32, ptr %l17, !tbaa !23
  %t34 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t32, i32 %t33)
  store i32 %t34, ptr %l18
  br label %bb5
bb5:
  %t35 = load i32, ptr %l18, !range !{i32 0, i32 6}
  %t37 = trunc i64 3 to i32
  %t38 = icmp eq i32 %t35, %t37
  store i1 %t38, ptr %l9, !tbaa !21
  br label %bb6
bb6:
  %t40 = load i1, ptr %l9, !tbaa !21
  store i1 %t40, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneBinType(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i32
  %l10 = alloca i1
  %l17 = alloca i1
  %l20 = alloca i1
  %l26 = alloca i1
  %l30 = alloca i32
  %l35 = alloca i1
  %l36 = alloca i1
  %l39 = alloca i1
  %l40 = alloca i1
  %l44 = alloca i1
  %l46 = alloca ptr
  %l47 = alloca i32
  %l49 = alloca { i64, ptr }
  %l50 = alloca i64
  %l56 = alloca i32
  %l59 = alloca i1
  %l60 = alloca i1
  %l63 = alloca i1
  %l68 = alloca i64
  %l74 = alloca i32
  %l77 = alloca i1
  %l79 = alloca i1
  %l82 = alloca i1
  %l87 = alloca i1
  %l92 = alloca i1
  %l93 = alloca i1
  %l96 = alloca i1
  %l97 = alloca i32
  %l102 = alloca ptr
  %l103 = alloca i32
  %l104 = alloca %"compiler/source:Span"
  %l105 = alloca i64
  %l107 = alloca i32
  %l118 = alloca i32
  %l123 = alloca i1
  %l124 = alloca i1
  %l127 = alloca i1
  %l132 = alloca i1
  %l133 = alloca i1
  %l137 = alloca i1
  %s3 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i32 %a2, ptr %l2
  store i32 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l2, !tbaa !23
  %t2 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t5 = icmp eq i32 %t1, %t2
  br i1 %t5, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l10, !tbaa !21
  br label %bb3
bb2:
  %t7 = load i32, ptr %l3, !tbaa !23
  %t8 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t11 = icmp eq i32 %t7, %t8
  store i1 %t11, ptr %l10, !tbaa !21
  br label %bb3
bb3:
  %t13 = load i1, ptr %l10, !tbaa !21
  br i1 %t13, label %bb4, label %bb5
bb4:
  %t14 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t14, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t16 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t18 = trunc i64 45 to i32
  %t19 = icmp eq i32 %t16, %t18
  br i1 %t19, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l17, !tbaa !21
  br label %bb9
bb8:
  %t21 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t23 = trunc i64 46 to i32
  %t24 = icmp eq i32 %t21, %t23
  store i1 %t24, ptr %l17, !tbaa !21
  br label %bb9
bb9:
  %t26 = load i1, ptr %l17, !tbaa !21
  br i1 %t26, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l20, !tbaa !21
  br label %bb12
bb11:
  %t27 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t29 = trunc i64 47 to i32
  %t30 = icmp eq i32 %t27, %t29
  store i1 %t30, ptr %l20, !tbaa !21
  br label %bb12
bb12:
  %t32 = load i1, ptr %l20, !tbaa !21
  br i1 %t32, label %bb13, label %bb14
bb13:
  %t33 = load i32, ptr %l2, !tbaa !23
  %t34 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t37 = icmp eq i32 %t33, %t34
  br i1 %t37, label %bb15, label %bb16
bb14:
  br label %bb21
bb15:
  %t39 = load i32, ptr %l3, !tbaa !23
  %t40 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t43 = icmp eq i32 %t39, %t40
  store i1 %t43, ptr %l26, !tbaa !21
  br label %bb17
bb16:
  store i1 false, ptr %l26, !tbaa !21
  br label %bb17
bb17:
  %t45 = load i1, ptr %l26, !tbaa !21
  br i1 %t45, label %bb18, label %bb19
bb18:
  %t46 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t46, ptr %l30, !tbaa !23
  br label %bb20
bb19:
  %t48 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t48, ptr %l30, !tbaa !23
  br label %bb20
bb20:
  %t50 = load i32, ptr %l30, !tbaa !23
  store i32 %t50, ptr %rv
  br label %ret
bb21:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t52 = load i32, ptr %l2, !tbaa !23
  %t55 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t51, i32 %t52)
  store i1 %t55, ptr %l35
  br label %bb22
bb22:
  %t56 = load i1, ptr %l35, !tbaa !21
  br i1 %t56, label %bb23, label %bb24
bb23:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t58 = load i32, ptr %l2, !tbaa !23
  %t61 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %t57, i32 %t58)
  store i1 %t61, ptr %l39
  br label %bb25
bb24:
  store i1 false, ptr %l36, !tbaa !21
  br label %bb30
bb25:
  %t62 = load i1, ptr %l39, !tbaa !21
  br i1 %t62, label %bb26, label %bb27
bb26:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/check:Checker", ptr %t63, i32 0, i32 1
  %t66 = load ptr, ptr %t65, !tbaa !29
  %t67 = load i32, ptr %l2, !tbaa !23
  %t70 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eExtends(ptr %v0, ptr %t66, i32 %t67)
  store i1 %t70, ptr %l44
  br label %bb28
bb27:
  store i1 false, ptr %l40, !tbaa !21
  br label %bb29
bb28:
  %t71 = load i1, ptr %l44, !tbaa !21
  store i1 %t71, ptr %l40, !tbaa !21
  br label %bb29
bb29:
  %t72 = load i1, ptr %l40, !tbaa !21
  %t73 = xor i1 %t72, true
  store i1 %t73, ptr %l36, !tbaa !21
  br label %bb30
bb30:
  %t75 = load i1, ptr %l36, !tbaa !21
  br i1 %t75, label %bb31, label %bb32
bb31:
  store %olang.scope zeroinitializer, ptr %s3
  %t76 = load ptr, ptr %l0, !tbaa !29
  store ptr %t76, ptr %l46, !tbaa !29
  %t77 = load i32, ptr %l2, !tbaa !23
  store i32 %t77, ptr %l47, !tbaa !23
  %t78 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t80 = call { i64, ptr } @compiler_2fcheck_2eoperatorName(ptr %s3, i32 %t78)
  store { i64, ptr } %t80, ptr %l49
  br label %bb33
bb32:
  br label %bb39
bb33:
  %t81 = load ptr, ptr %l46, !tbaa !29
  %t82 = load i32, ptr %l47, !tbaa !23
  %t83 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t84 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroleMethod(ptr %v0, ptr %s3, ptr %t81, i32 %t82, { i64, ptr } %t83, i64 1)
  store i64 %t84, ptr %l50
  br label %bb34
bb34:
  %t85 = load i64, ptr %l50, !tbaa !24
  store i64 %t85, ptr %l4, !tbaa !24
  %t86 = load i64, ptr %l4, !tbaa !24
  %t88 = icmp sge i64 %t86, 0
  br i1 %t88, label %bb35, label %bb36
bb35:
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t91 = load i64, ptr %l4, !tbaa !24
  %t92 = load i32, ptr %l2, !tbaa !23
  %t96 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneResult(ptr %v0, ptr %t90, i64 %t91, i32 %t92)
  store i32 %t96, ptr %l56
  br label %bb37
bb36:
  br label %bb38
bb37:
  call void @__olang_scope_close(ptr %s3)
  %t97 = load i32, ptr %l56, !tbaa !23
  store i32 %t97, ptr %rv
  br label %ret
bb38:
  call void @__olang_scope_close(ptr %s3)
  br label %bb39
bb39:
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t99 = load i32, ptr %l3, !tbaa !23
  %t102 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t98, i32 %t99)
  store i1 %t102, ptr %l59
  br label %bb40
bb40:
  %t103 = load i1, ptr %l59, !tbaa !21
  br i1 %t103, label %bb41, label %bb42
bb41:
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t105 = load i32, ptr %l3, !tbaa !23
  %t108 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %t104, i32 %t105)
  store i1 %t108, ptr %l63
  br label %bb43
bb42:
  store i1 false, ptr %l60, !tbaa !21
  br label %bb44
bb43:
  %t109 = load i1, ptr %l63, !tbaa !21
  %t110 = xor i1 %t109, true
  store i1 %t110, ptr %l60, !tbaa !21
  br label %bb44
bb44:
  %t112 = load i1, ptr %l60, !tbaa !21
  br i1 %t112, label %bb45, label %bb46
bb45:
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t114 = load i32, ptr %l3, !tbaa !23
  %t115 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t119 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecommuting(ptr %v0, ptr %t113, i32 %t114, i32 %t115)
  store i64 %t119, ptr %l68
  br label %bb47
bb46:
  br label %bb52
bb47:
  %t120 = load i64, ptr %l68, !tbaa !24
  store i64 %t120, ptr %l5, !tbaa !24
  %t121 = load i64, ptr %l5, !tbaa !24
  %t123 = icmp sge i64 %t121, 0
  br i1 %t123, label %bb48, label %bb49
bb48:
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t126 = load i64, ptr %l5, !tbaa !24
  %t127 = load i32, ptr %l3, !tbaa !23
  %t131 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneResult(ptr %v0, ptr %t125, i64 %t126, i32 %t127)
  store i32 %t131, ptr %l74
  br label %bb50
bb49:
  br label %bb51
bb50:
  %t132 = load i32, ptr %l74, !tbaa !23
  store i32 %t132, ptr %rv
  br label %ret
bb51:
  br label %bb52
bb52:
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t134 = load i32, ptr %l2, !tbaa !23
  %t137 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %t133, i32 %t134)
  store i1 %t137, ptr %l77
  br label %bb53
bb53:
  %t138 = load i1, ptr %l77, !tbaa !21
  %t139 = xor i1 %t138, true
  br i1 %t139, label %bb54, label %bb55
bb54:
  store i1 true, ptr %l79, !tbaa !21
  br label %bb57
bb55:
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t142 = load i32, ptr %l3, !tbaa !23
  %t145 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %t141, i32 %t142)
  store i1 %t145, ptr %l82
  br label %bb56
bb56:
  %t146 = load i1, ptr %l82, !tbaa !21
  %t147 = xor i1 %t146, true
  store i1 %t147, ptr %l79, !tbaa !21
  br label %bb57
bb57:
  %t149 = load i1, ptr %l79, !tbaa !21
  br i1 %t149, label %bb58, label %bb59
bb58:
  %t150 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t150, ptr %rv
  br label %ret
bb59:
  br label %bb60
bb60:
  %t152 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t154 = trunc i64 106 to i32
  %t155 = icmp eq i32 %t152, %t154
  br i1 %t155, label %bb61, label %bb62
bb61:
  store i1 true, ptr %l87, !tbaa !21
  br label %bb63
bb62:
  %t157 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t159 = trunc i64 107 to i32
  %t160 = icmp eq i32 %t157, %t159
  store i1 %t160, ptr %l87, !tbaa !21
  br label %bb63
bb63:
  %t162 = load i1, ptr %l87, !tbaa !21
  br i1 %t162, label %bb64, label %bb65
bb64:
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t164 = load i32, ptr %l2, !tbaa !23
  %t167 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisInt(ptr %v0, ptr %t163, i32 %t164)
  store i1 %t167, ptr %l92
  br label %bb66
bb65:
  br label %bb74
bb66:
  %t168 = load i1, ptr %l92, !tbaa !21
  br i1 %t168, label %bb67, label %bb68
bb67:
  %t169 = load ptr, ptr %l0, !tbaa !29
  %t170 = load i32, ptr %l3, !tbaa !23
  %t173 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisInt(ptr %v0, ptr %t169, i32 %t170)
  store i1 %t173, ptr %l96
  br label %bb69
bb68:
  store i1 false, ptr %l93, !tbaa !21
  br label %bb70
bb69:
  %t174 = load i1, ptr %l96, !tbaa !21
  store i1 %t174, ptr %l93, !tbaa !21
  br label %bb70
bb70:
  %t175 = load i1, ptr %l93, !tbaa !21
  br i1 %t175, label %bb71, label %bb72
bb71:
  %t176 = load i32, ptr %l2, !tbaa !23
  store i32 %t176, ptr %l97, !tbaa !23
  br label %bb73
bb72:
  %t178 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t178, ptr %l97, !tbaa !23
  br label %bb73
bb73:
  %t180 = load i32, ptr %l97, !tbaa !23
  store i32 %t180, ptr %rv
  br label %ret
bb74:
  %t181 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t183 = trunc i64 71 to i32
  %t184 = icmp eq i32 %t181, %t183
  br i1 %t184, label %bb75, label %bb76
bb75:
  store %olang.scope zeroinitializer, ptr %s9
  %t186 = load ptr, ptr %l0, !tbaa !29
  store ptr %t186, ptr %l102, !tbaa !29
  %t187 = load i32, ptr %l2, !tbaa !23
  store i32 %t187, ptr %l103, !tbaa !23
  %t188 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s9, i32 -1, i32 -1)
  store %"compiler/source:Span" %t188, ptr %l104
  br label %bb77
bb76:
  br label %bb82
bb77:
  %t189 = load ptr, ptr %l102, !tbaa !29
  %t190 = load i32, ptr %l103, !tbaa !23
  %t191 = load %"compiler/source:Span", ptr %l104
  %t192 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epowMethod(ptr %v0, ptr %t189, i32 %t190, %"compiler/source:Span" %t191)
  store i64 %t192, ptr %l105
  br label %bb78
bb78:
  %t193 = load i64, ptr %l105, !tbaa !24
  %t194 = icmp sge i64 %t193, 0
  br i1 %t194, label %bb79, label %bb80
bb79:
  %t196 = load i32, ptr %l2, !tbaa !23
  store i32 %t196, ptr %l107, !tbaa !23
  br label %bb81
bb80:
  %t198 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t198, ptr %l107, !tbaa !23
  br label %bb81
bb81:
  call void @__olang_scope_close(ptr %s9)
  %t200 = load i32, ptr %l107, !tbaa !23
  store i32 %t200, ptr %rv
  br label %ret
bb82:
  %t201 = load i32, ptr %l2, !tbaa !23
  store i32 %t201, ptr %l6, !tbaa !23
  %t203 = load i32, ptr %l2, !tbaa !23
  %t204 = load i32, ptr %l3, !tbaa !23
  %t207 = icmp ne i32 %t203, %t204
  br i1 %t207, label %bb83, label %bb84
bb83:
  %t209 = load ptr, ptr %l0, !tbaa !29
  %t211 = getelementptr %"compiler/check:Checker", ptr %t209, i32 0, i32 1
  %t212 = load ptr, ptr %t211, !tbaa !29
  %t213 = load i32, ptr %l2, !tbaa !23
  %t214 = load i32, ptr %l3, !tbaa !23
  %t218 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMeet(ptr %v0, ptr %t212, i32 %t213, i32 %t214)
  store i32 %t218, ptr %l118
  br label %bb85
bb84:
  br label %bb86
bb85:
  %t219 = load i32, ptr %l118, !tbaa !23
  store i32 %t219, ptr %l6, !tbaa !23
  br label %bb86
bb86:
  %t220 = load i32, ptr %l6, !tbaa !23
  %t222 = icmp slt i32 %t220, 0
  br i1 %t222, label %bb87, label %bb88
bb87:
  %t224 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t224, ptr %rv
  br label %ret
bb88:
  br label %bb89
bb89:
  %t226 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t228 = call i1 @compiler_2fcheck_2eintOnly(i32 %t226)
  store i1 %t228, ptr %l123
  br label %bb90
bb90:
  %t229 = load i1, ptr %l123, !tbaa !21
  br i1 %t229, label %bb91, label %bb92
bb91:
  %t230 = load ptr, ptr %l0, !tbaa !29
  %t231 = load i32, ptr %l6, !tbaa !23
  %t234 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisInt(ptr %v0, ptr %t230, i32 %t231)
  store i1 %t234, ptr %l127
  br label %bb93
bb92:
  store i1 false, ptr %l124, !tbaa !21
  br label %bb94
bb93:
  %t235 = load i1, ptr %l127, !tbaa !21
  %t236 = xor i1 %t235, true
  store i1 %t236, ptr %l124, !tbaa !21
  br label %bb94
bb94:
  %t238 = load i1, ptr %l124, !tbaa !21
  br i1 %t238, label %bb95, label %bb96
bb95:
  %t239 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t239, ptr %rv
  br label %ret
bb96:
  br label %bb97
bb97:
  %t241 = load ptr, ptr %l0, !tbaa !29
  %t242 = load i32, ptr %l6, !tbaa !23
  %t245 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t241, i32 %t242)
  store i1 %t245, ptr %l132
  br label %bb98
bb98:
  %t246 = load i1, ptr %l132, !tbaa !21
  br i1 %t246, label %bb99, label %bb100
bb99:
  %t247 = load ptr, ptr %l0, !tbaa !29
  %t249 = getelementptr %"compiler/check:Checker", ptr %t247, i32 0, i32 1
  %t250 = load ptr, ptr %t249, !tbaa !29
  %t251 = load i32, ptr %l6, !tbaa !23
  %t254 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eExtends(ptr %v0, ptr %t250, i32 %t251)
  store i1 %t254, ptr %l137
  br label %bb101
bb100:
  store i1 false, ptr %l133, !tbaa !21
  br label %bb102
bb101:
  %t255 = load i1, ptr %l137, !tbaa !21
  %t256 = xor i1 %t255, true
  store i1 %t256, ptr %l133, !tbaa !21
  br label %bb102
bb102:
  %t258 = load i1, ptr %l133, !tbaa !21
  br i1 %t258, label %bb103, label %bb104
bb103:
  %t259 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t259, ptr %rv
  br label %ret
bb104:
  br label %bb105
bb105:
  %t261 = load i32, ptr %l6, !tbaa !23
  store i32 %t261, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emethodInstance(ptr %v0, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca %"compiler/generic:Binding"
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l15 = alloca i1
  %l20 = alloca i32
  %l22 = alloca i64
  %l26 = alloca i64
  %l29 = alloca ptr
  %l33 = alloca i64
  %l34 = alloca i64
  %l37 = alloca ptr
  %l42 = alloca i32
  %l43 = alloca { i64, ptr }
  %l50 = alloca %"compiler/generic:Binding"
  %l52 = alloca { i64, ptr }
  %l66 = alloca { i64, ptr }
  %l75 = alloca ptr
  %l77 = alloca ptr
  %l78 = alloca i64
  %l83 = alloca i32
  %l84 = alloca i64
  %l85 = alloca i64
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
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t5 = load i64, ptr %l1, !tbaa !24
  %t8 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnIsExtern(ptr %v0, ptr %t4, i64 %t5)
  store i1 %t8, ptr %l15
  br label %bb1
bb1:
  %t9 = load i1, ptr %l15, !tbaa !21
  br i1 %t9, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/check:Checker", ptr %t11, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !29
  %t15 = load i64, ptr %l1, !tbaa !24
  %t18 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %t14, i64 %t15)
  store i32 %t18, ptr %l20
  br label %bb5
bb5:
  %t19 = load i32, ptr %l20, !tbaa !23
  store i32 %t19, ptr %l3, !tbaa !23
  %t20 = load i64, ptr %l1, !tbaa !24
  %t22 = call i64 @compiler_2fgeneric_2eFnOwner(i64 %t20)
  store i64 %t22, ptr %l22
  br label %bb6
bb6:
  %t23 = load i64, ptr %l22, !tbaa !24
  store i64 %t23, ptr %l4, !tbaa !24
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/check:Checker", ptr %t24, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !29
  %t28 = load i64, ptr %l4, !tbaa !24
  %t31 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %t27, i64 %t28)
  store i64 %t31, ptr %l26
  br label %bb7
bb7:
  %t32 = load i64, ptr %l26, !tbaa !24
  store i64 %t32, ptr %l5, !tbaa !24
  %t33 = load i64, ptr %l5, !tbaa !24
  %t35 = icmp eq i64 %t33, 0
  br i1 %t35, label %bb8, label %bb9
bb8:
  %t37 = load ptr, ptr %l0, !tbaa !29
  store ptr %t37, ptr %l29, !tbaa !29
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/check:Checker", ptr %t38, i32 0, i32 1
  %t41 = load ptr, ptr %t40, !tbaa !29
  %t42 = load i64, ptr %l1, !tbaa !24
  %t45 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnInstance(ptr %v0, ptr %t41, i64 %t42, i32 0)
  store i64 %t45, ptr %l33
  br label %bb10
bb9:
  br label %bb12
bb10:
  %t46 = load ptr, ptr %l29, !tbaa !29
  %t47 = load i64, ptr %l33, !tbaa !24
  %t48 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efnBody(ptr %v0, ptr %t46, i64 %t47)
  store i64 %t48, ptr %l34
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s0)
  %t49 = load i64, ptr %l34, !tbaa !24
  store i64 %t49, ptr %rv
  br label %ret
bb12:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/check:Checker", ptr %t50, i32 0, i32 1
  %t53 = load ptr, ptr %t52, !tbaa !29
  %t55 = getelementptr %"compiler/generic:Program", ptr %t53, i32 0, i32 2
  store ptr %t55, ptr %l37, !tbaa !29
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/check:Checker", ptr %t56, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !29
  %t61 = getelementptr %"compiler/generic:Program", ptr %t59, i32 0, i32 2
  %t62 = load i32, ptr %l3, !tbaa !23
  %t65 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t61, i32 %t62)
  store i32 %t65, ptr %l42
  br label %bb13
bb13:
  %t66 = load ptr, ptr %l37, !tbaa !29
  %t67 = load i32, ptr %l42, !tbaa !23
  %t68 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t66, i32 %t67)
  store { i64, ptr } %t68, ptr %l43
  br label %bb14
bb14:
  %t69 = load { i64, ptr }, ptr %l43, !tbaa !27
  store { i64, ptr } %t69, ptr %l6, !tbaa !27
  %t70 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t72 = extractvalue { i64, ptr } %t70, 0
  %t74 = icmp eq i64 %t72, 0
  br i1 %t74, label %bb15, label %bb16
bb15:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  %t77 = load i64, ptr %l4, !tbaa !24
  %t78 = load i64, ptr %l5, !tbaa !24
  %t81 = call %"compiler/generic:Binding" @compiler_2fgeneric_3aBinding_2ector(ptr %s0, i64 %t77, i64 %t78)
  store %"compiler/generic:Binding" %t81, ptr %l50
  br label %bb18
bb18:
  %t82 = load %"compiler/generic:Binding", ptr %l50
  store %"compiler/generic:Binding" %t82, ptr %l7
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t84 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t84, ptr %l52, !tbaa !27
  %t85 = getelementptr { i64, ptr }, ptr %l52, i32 0, i32 1
  %t86 = load ptr, ptr %t85, !tbaa !27
  %t87 = getelementptr i32, ptr %t86, i64 0
  %t88 = load i32, ptr %t87, !tbaa !33
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunify(ptr %v0, ptr %s0, ptr %t83, i32 %t88, i32 %a2, ptr %l7, i1 false, i1 true)
  br label %bb19
bb19:
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t96 = getelementptr %"compiler/check:Checker", ptr %t94, i32 0, i32 1
  %t97 = load ptr, ptr %t96, !tbaa !29
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInferThroughBounds(ptr %v0, ptr %s0, ptr %t97, ptr %l7)
  br label %bb20
bb20:
  %t100 = getelementptr %"compiler/generic:Binding", ptr %l7, i32 0, i32 2
  %t101 = load { i64, ptr }, ptr %t100, !tbaa !27
  store { i64, ptr } %t101, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t103 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t105 = extractvalue { i64, ptr } %t103, 0
  store i64 %t105, ptr %l10, !tbaa !24
  br label %bb21
bb21:
  %t107 = load i64, ptr %l9, !tbaa !24
  %t108 = load i64, ptr %l10, !tbaa !24
  %t111 = icmp slt i64 %t107, %t108
  %t113 = xor i1 %t111, true
  br i1 %t113, label %bb22, label %bb23
bb22:
  br label %bb29
bb23:
  br label %bb24
bb24:
  %t115 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t115, ptr %l66, !tbaa !27
  %t116 = load i64, ptr %l9, !tbaa !24
  %t118 = getelementptr { i64, ptr }, ptr %l66, i32 0, i32 1
  %t119 = load ptr, ptr %t118, !tbaa !27
  %t120 = getelementptr i32, ptr %t119, i64 %t116
  %t121 = load i32, ptr %t120, !tbaa !33
  %t124 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t127 = icmp eq i32 %t121, %t124
  br i1 %t127, label %bb25, label %bb26
bb25:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb26:
  br label %bb27
bb27:
  br label %bb28
bb28:
  %t130 = load i64, ptr %l9, !tbaa !24
  %t132 = add i64 %t130, 1
  store i64 %t132, ptr %l9, !tbaa !24
  br label %bb21
bb29:
  %t134 = load ptr, ptr %l0, !tbaa !29
  store ptr %t134, ptr %l75, !tbaa !29
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t137 = getelementptr %"compiler/check:Checker", ptr %t135, i32 0, i32 1
  %t138 = load ptr, ptr %t137, !tbaa !29
  store ptr %t138, ptr %l77, !tbaa !29
  %t139 = load i64, ptr %l1, !tbaa !24
  store i64 %t139, ptr %l78, !tbaa !24
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t142 = getelementptr %"compiler/check:Checker", ptr %t140, i32 0, i32 1
  %t143 = load ptr, ptr %t142, !tbaa !29
  %t145 = getelementptr %"compiler/generic:Program", ptr %t143, i32 0, i32 2
  %t146 = getelementptr %"compiler/generic:Binding", ptr %l7, i32 0, i32 2
  %t147 = load { i64, ptr }, ptr %t146, !tbaa !27
  %t150 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s0, ptr %t145, { i64, ptr } %t147)
  store i32 %t150, ptr %l83
  br label %bb30
bb30:
  %t151 = load ptr, ptr %l77, !tbaa !29
  %t152 = load i64, ptr %l78, !tbaa !24
  %t153 = load i32, ptr %l83, !tbaa !23
  %t154 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnInstance(ptr %v0, ptr %t151, i64 %t152, i32 %t153)
  store i64 %t154, ptr %l84
  br label %bb31
bb31:
  %t155 = load ptr, ptr %l75, !tbaa !29
  %t156 = load i64, ptr %l84, !tbaa !24
  %t157 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efnBody(ptr %v0, ptr %t155, i64 %t156)
  store i64 %t157, ptr %l85
  br label %bb32
bb32:
  call void @__olang_scope_close(ptr %s0)
  %t158 = load i64, ptr %l85, !tbaa !24
  store i64 %t158, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emustWrite(ptr %v0, ptr %v1, ptr %a0, ptr %a1, %"compiler/source:Span" %a2, i1 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i1
  %l4 = alloca i32
  %l5 = alloca i32
  %l7 = alloca i64
  %l8 = alloca i32
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca i32
  %l13 = alloca %"compiler/source:Span"
  %l14 = alloca ptr
  %l15 = alloca %"compiler/source:Span"
  %l16 = alloca ptr
  %l17 = alloca ptr
  %l18 = alloca ptr
  %l19 = alloca ptr
  %l20 = alloca i1
  %l26 = alloca i1
  %l30 = alloca i32
  %l31 = alloca ptr
  %l32 = alloca %"compiler/source:Span"
  %l33 = alloca i32
  %l35 = alloca i32
  %l37 = alloca %"compiler/diagmsg:Msg"
  %l38 = alloca %"compiler/diagmsg:Msg"
  %l41 = alloca { i64, ptr }
  %l43 = alloca %"compiler/diagmsg:Msg"
  %l44 = alloca i64
  %l45 = alloca ptr
  %l46 = alloca i1
  %l54 = alloca i64
  %l61 = alloca ptr
  %l63 = alloca %"compiler/typed:Local"
  %l66 = alloca i1
  %l67 = alloca ptr
  %l69 = alloca ptr
  %l71 = alloca %"compiler/typed:Local"
  %l73 = alloca i1
  %l75 = alloca ptr
  %l76 = alloca %"compiler/source:Span"
  %l77 = alloca %"compiler/diagmsg:Msg"
  %l78 = alloca i64
  %l81 = alloca i1
  %l85 = alloca i1
  %l86 = alloca ptr
  %l87 = alloca %"compiler/source:Span"
  %l88 = alloca ptr
  %l90 = alloca ptr
  %l92 = alloca %"compiler/typed:Local"
  %l94 = alloca { i64, ptr }
  %l96 = alloca %"compiler/diagmsg:Msg"
  %l97 = alloca i64
  %l107 = alloca ptr
  %l108 = alloca i1
  %l119 = alloca ptr
  %l123 = alloca i1
  %l126 = alloca i1
  %l128 = alloca ptr
  %l129 = alloca %"compiler/source:Span"
  %l132 = alloca { i64, ptr }
  %l133 = alloca %"compiler/diagmsg:Msg"
  %l134 = alloca i64
  %l135 = alloca ptr
  %l136 = alloca i1
  %l143 = alloca i32
  %l146 = alloca i1
  %l147 = alloca i1
  %l152 = alloca i64
  %l158 = alloca i1
  %l159 = alloca ptr
  %l160 = alloca %"compiler/source:Span"
  %l161 = alloca %"compiler/diagmsg:Msg"
  %l162 = alloca i64
  %l163 = alloca ptr
  %l164 = alloca ptr
  %l165 = alloca %"compiler/source:Span"
  %l166 = alloca %"compiler/diagmsg:Msg"
  %l167 = alloca i64
  %l171 = alloca i1
  %l172 = alloca i1
  %l173 = alloca ptr
  %l175 = alloca ptr
  %l176 = alloca ptr
  %l177 = alloca i64
  %l179 = alloca ptr
  %l180 = alloca %"compiler/source:Span"
  %l181 = alloca %"compiler/diagmsg:Msg"
  %l182 = alloca i64
  %l183 = alloca ptr
  %l184 = alloca i64
  %l186 = alloca ptr
  %l187 = alloca ptr
  %l190 = alloca i1
  %l191 = alloca ptr
  %l193 = alloca ptr
  %l194 = alloca ptr
  %l195 = alloca ptr
  %l196 = alloca i1
  %l199 = alloca i1
  %l201 = alloca ptr
  %l202 = alloca i1
  %l212 = alloca i1
  %l215 = alloca %"compiler/source:Span"
  %l218 = alloca i1
  %l221 = alloca i1
  %l224 = alloca %"compiler/source:Span"
  %l225 = alloca ptr
  %l226 = alloca %"compiler/source:Span"
  %l227 = alloca %"compiler/diagmsg:Msg"
  %l228 = alloca i64
  %l229 = alloca ptr
  %l230 = alloca %"compiler/source:Span"
  %l231 = alloca %"compiler/diagmsg:Msg"
  %l232 = alloca i64
  %l233 = alloca ptr
  %l234 = alloca i1
  %l243 = alloca ptr
  %l244 = alloca i1
  %l254 = alloca ptr
  %l255 = alloca i1
  %l265 = alloca ptr
  %l266 = alloca i1
  %l271 = alloca i1
  %l272 = alloca ptr
  %l273 = alloca i1
  %l278 = alloca i64
  %l280 = alloca ptr
  %l281 = alloca %"compiler/source:Span"
  %l284 = alloca i64
  %l286 = alloca ptr
  %l287 = alloca %"compiler/source:Span"
  %l289 = alloca %"compiler/diagmsg:Msg"
  %l290 = alloca %"compiler/diagmsg:Msg"
  %l291 = alloca %"compiler/diagmsg:Msg"
  %l292 = alloca i64
  %s1 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %s20 = alloca %olang.scope
  %s29 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store %"compiler/source:Span" %a2, ptr %l2
  store i1 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enoteWrite(ptr %v0, ptr %v1, ptr %t1, ptr %t2)
  br label %bb1
bb1:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t6 = load ptr, ptr %l1, !tbaa !29
  %t7 = load i1, ptr %l3, !tbaa !21
  %t11 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewritesImmut(ptr %v0, ptr %v1, ptr %t5, ptr %t6, i1 %t7)
  store i1 %t11, ptr %l26
  br label %bb2
bb2:
  %t12 = load i1, ptr %l26, !tbaa !21
  br i1 %t12, label %bb3, label %bb4
bb3:
  store %olang.scope zeroinitializer, ptr %s1
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t15 = load i1, ptr %l3, !tbaa !21
  %t19 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eimmutOf(ptr %v0, ptr %v1, ptr %t13, ptr %t14, i1 %t15)
  store i32 %t19, ptr %l30
  br label %bb5
bb4:
  br label %bb14
bb5:
  %t20 = load i32, ptr %l30, !tbaa !23
  store i32 %t20, ptr %l4, !tbaa !23
  %t21 = load ptr, ptr %l0, !tbaa !29
  store ptr %t21, ptr %l31, !tbaa !29
  %t22 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t22, ptr %l32
  %t23 = load i32, ptr %l4, !tbaa !23
  store i32 %t23, ptr %l33, !tbaa !23
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextType(ptr %v0, ptr %t24)
  store i32 %t26, ptr %l35
  br label %bb6
bb6:
  %t27 = load i32, ptr %l33, !tbaa !23
  %t28 = load i32, ptr %l35, !tbaa !23
  %t29 = icmp eq i32 %t27, %t28
  br i1 %t29, label %bb7, label %bb8
bb7:
  %t31 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTextWrite(ptr %s1)
  store %"compiler/diagmsg:Msg" %t31, ptr %l38
  br label %bb9
bb8:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t33 = load i32, ptr %l4, !tbaa !23
  %t36 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s1, ptr %t32, i32 %t33)
  store { i64, ptr } %t36, ptr %l41
  br label %bb10
bb9:
  %t37 = load %"compiler/diagmsg:Msg", ptr %l38
  store %"compiler/diagmsg:Msg" %t37, ptr %l37
  br label %bb12
bb10:
  %t38 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t39 = extractvalue { i64, ptr } %t38, 0
  %t40 = extractvalue { i64, ptr } %t38, 1
  %t41 = mul i64 %t39, 1
  %t42 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t41)
  call void @llvm.memcpy.p0.p0.i64(ptr %t42, ptr %t40, i64 %t41, i1 false)
  %t43 = insertvalue { i64, ptr } undef, i64 %t39, 0
  %t44 = insertvalue { i64, ptr } %t43, ptr %t42, 1
  %t46 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImmutWrite(ptr %s1, ptr %s1, { i64, ptr } %t44)
  store %"compiler/diagmsg:Msg" %t46, ptr %l43
  br label %bb11
bb11:
  %t47 = load %"compiler/diagmsg:Msg", ptr %l43
  store %"compiler/diagmsg:Msg" %t47, ptr %l37
  br label %bb12
bb12:
  %t48 = load ptr, ptr %l31, !tbaa !29
  %t49 = load %"compiler/source:Span", ptr %l32
  %t50 = load %"compiler/diagmsg:Msg", ptr %l37
  %t51 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s1, ptr %t48, %"compiler/source:Span" %t49, %"compiler/diagmsg:Msg" %t50)
  store i64 %t51, ptr %l44
  br label %bb13
bb13:
  call void @__olang_scope_close(ptr %s1)
  br label %ret
bb14:
  %t52 = load ptr, ptr %l1, !tbaa !29
  store ptr %t52, ptr %l45, !tbaa !29
  store i1 false, ptr %l46, !tbaa !21
  %t53 = load ptr, ptr %l45, !tbaa !29
  %t54 = icmp ne ptr %t53, null
  br i1 %t54, label %bb15, label %bb16
bb15:
  %t56 = load ptr, ptr %l45, !tbaa !29
  %t57 = load i64, ptr %t56, !range !{i64 0, i64 8}
  %t59 = icmp eq i64 %t57, 0
  store i1 %t59, ptr %l46, !tbaa !21
  br label %bb16
bb16:
  %t60 = load i1, ptr %l46, !tbaa !21
  br i1 %t60, label %bb17, label %bb18
bb17:
  %t61 = load ptr, ptr %l1, !tbaa !29
  %t63 = getelementptr { i64, [4 x i64] }, ptr %t61, i32 0, i32 1
  %t64 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t63, i32 0, i32 2
  %t65 = load i32, ptr %t64
  store i32 %t65, ptr %l5, !tbaa !23
  br label %bb19
bb18:
  br label %bb55
bb19:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t68 = load i32, ptr %l5, !tbaa !23
  %t70 = sext i32 %t68 to i64
  %t73 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enarrowOwner(ptr %v0, ptr %t67, i64 %t70)
  store i64 %t73, ptr %l54
  br label %bb20
bb20:
  %t74 = load i64, ptr %l54, !tbaa !24
  %t75 = icmp sge i64 %t74, 0
  br i1 %t75, label %bb21, label %bb22
bb21:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t78 = load %"compiler/source:Span", ptr %l2
  %t79 = load i32, ptr %l5, !tbaa !23
  %t81 = sext i32 %t79 to i64
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enarrowedWrite(ptr %v0, ptr %t77, %"compiler/source:Span" %t78, i64 %t81)
  br label %bb23
bb22:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t85)
  store ptr %t87, ptr %l61
  br label %bb24
bb23:
  br label %bb54
bb24:
  %t88 = load i32, ptr %l5, !tbaa !23
  %t89 = load ptr, ptr %l61, !tbaa !29
  %t91 = call %"compiler/typed:Local" @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eLocal(ptr %v0, ptr %t89, i32 %t88)
  store %"compiler/typed:Local" %t91, ptr %l63
  br label %bb25
bb25:
  %t92 = getelementptr %"compiler/typed:Local", ptr %l63, i32 0, i32 4
  %t93 = load i32, ptr %t92, !range !{i32 0, i32 7}
  %t95 = trunc i64 5 to i32
  %t96 = icmp eq i32 %t93, %t95
  br i1 %t96, label %bb26, label %bb27
bb26:
  %t98 = load ptr, ptr %l0, !tbaa !29
  store ptr %t98, ptr %l67, !tbaa !29
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t101 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t99)
  store ptr %t101, ptr %l69
  br label %bb28
bb27:
  store i1 false, ptr %l66, !tbaa !21
  br label %bb31
bb28:
  %t102 = load i32, ptr %l5, !tbaa !23
  %t103 = load ptr, ptr %l69, !tbaa !29
  %t105 = call %"compiler/typed:Local" @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eLocal(ptr %v0, ptr %t103, i32 %t102)
  store %"compiler/typed:Local" %t105, ptr %l71
  br label %bb29
bb29:
  %t106 = getelementptr %"compiler/typed:Local", ptr %l71, i32 0, i32 2
  %t107 = load i32, ptr %t106, !tbaa !23
  %t108 = load ptr, ptr %l67, !tbaa !29
  %t110 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t108, i32 %t107)
  store i1 %t110, ptr %l73
  br label %bb30
bb30:
  %t111 = load i1, ptr %l73, !tbaa !21
  %t112 = xor i1 %t111, true
  store i1 %t112, ptr %l66, !tbaa !21
  br label %bb31
bb31:
  %t114 = load i1, ptr %l66, !tbaa !21
  br i1 %t114, label %bb32, label %bb33
bb32:
  store %olang.scope zeroinitializer, ptr %s5
  %t115 = load ptr, ptr %l0, !tbaa !29
  store ptr %t115, ptr %l75, !tbaa !29
  %t116 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t116, ptr %l76
  %t117 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCaptureReadOnly(ptr %s5)
  store %"compiler/diagmsg:Msg" %t117, ptr %l77
  br label %bb34
bb33:
  %t118 = load i1, ptr %l3, !tbaa !21
  %t120 = xor i1 %t118, true
  br i1 %t120, label %bb36, label %bb37
bb34:
  %t122 = load ptr, ptr %l75, !tbaa !29
  %t123 = load %"compiler/source:Span", ptr %l76
  %t124 = load %"compiler/diagmsg:Msg", ptr %l77
  %t125 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s5, ptr %t122, %"compiler/source:Span" %t123, %"compiler/diagmsg:Msg" %t124)
  store i64 %t125, ptr %l78
  br label %bb35
bb35:
  call void @__olang_scope_close(ptr %s5)
  br label %bb53
bb36:
  %t126 = load ptr, ptr %l0, !tbaa !29
  %t127 = load i32, ptr %l5, !tbaa !23
  %t129 = sext i32 %t127 to i64
  %t132 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroLocal(ptr %v0, ptr %t126, i64 %t129)
  store i1 %t132, ptr %l85
  br label %bb38
bb37:
  store i1 false, ptr %l81, !tbaa !21
  br label %bb39
bb38:
  %t133 = load i1, ptr %l85, !tbaa !21
  store i1 %t133, ptr %l81, !tbaa !21
  br label %bb39
bb39:
  %t134 = load i1, ptr %l81, !tbaa !21
  br i1 %t134, label %bb40, label %bb41
bb40:
  store %olang.scope zeroinitializer, ptr %s7
  %t135 = load ptr, ptr %l0, !tbaa !29
  store ptr %t135, ptr %l86, !tbaa !29
  %t136 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t136, ptr %l87
  %t137 = load ptr, ptr %l0, !tbaa !29
  store ptr %t137, ptr %l88, !tbaa !29
  %t138 = load ptr, ptr %l0, !tbaa !29
  %t140 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t138)
  store ptr %t140, ptr %l90
  br label %bb42
bb41:
  %t141 = load i1, ptr %l3, !tbaa !21
  %t143 = xor i1 %t141, true
  br i1 %t143, label %bb48, label %bb49
bb42:
  %t145 = load i32, ptr %l5, !tbaa !23
  %t146 = load ptr, ptr %l90, !tbaa !29
  %t148 = call %"compiler/typed:Local" @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eLocal(ptr %v0, ptr %t146, i32 %t145)
  store %"compiler/typed:Local" %t148, ptr %l92
  br label %bb43
bb43:
  %t149 = getelementptr %"compiler/typed:Local", ptr %l92, i32 0, i32 2
  %t150 = load i32, ptr %t149, !tbaa !23
  %t151 = load ptr, ptr %l88, !tbaa !29
  %t153 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroFix(ptr %v0, ptr %s7, ptr %t151, i32 0, i32 %t150)
  store { i64, ptr } %t153, ptr %l94
  br label %bb44
bb44:
  %t154 = load { i64, ptr }, ptr %l94, !tbaa !27
  %t155 = extractvalue { i64, ptr } %t154, 0
  %t156 = extractvalue { i64, ptr } %t154, 1
  %t157 = mul i64 %t155, 1
  %t158 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t157)
  call void @llvm.memcpy.p0.p0.i64(ptr %t158, ptr %t156, i64 %t157, i1 false)
  %t159 = insertvalue { i64, ptr } undef, i64 %t155, 0
  %t160 = insertvalue { i64, ptr } %t159, ptr %t158, 1
  %t162 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReadOnlyCopyLent(ptr %s7, ptr %s7, { i64, ptr } %t160)
  store %"compiler/diagmsg:Msg" %t162, ptr %l96
  br label %bb45
bb45:
  %t163 = load ptr, ptr %l86, !tbaa !29
  %t164 = load %"compiler/source:Span", ptr %l87
  %t165 = load %"compiler/diagmsg:Msg", ptr %l96
  %t166 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s7, ptr %t163, %"compiler/source:Span" %t164, %"compiler/diagmsg:Msg" %t165)
  store i64 %t166, ptr %l97
  br label %bb46
bb46:
  %t167 = load i64, ptr %l97, !tbaa !24
  %t168 = load ptr, ptr %l0, !tbaa !29
  %t170 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enoteRo(ptr %v0, ptr %v1, ptr %t168, i64 %t167, ptr %t170)
  br label %bb47
bb47:
  call void @__olang_scope_close(ptr %s7)
  br label %bb52
bb48:
  %t175 = load ptr, ptr %l0, !tbaa !29
  %t176 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroNeed(ptr %v0, ptr %v1, ptr %t175, ptr %t176)
  br label %bb50
bb49:
  br label %bb51
bb50:
  br label %bb51
bb51:
  br label %bb52
bb52:
  br label %bb53
bb53:
  br label %bb54
bb54:
  br label %bb202
bb55:
  %t180 = load ptr, ptr %l1, !tbaa !29
  store ptr %t180, ptr %l107, !tbaa !29
  store i1 false, ptr %l108, !tbaa !21
  %t181 = load ptr, ptr %l107, !tbaa !29
  %t182 = icmp ne ptr %t181, null
  br i1 %t182, label %bb56, label %bb57
bb56:
  %t184 = load ptr, ptr %l107, !tbaa !29
  %t185 = load i64, ptr %t184, !range !{i64 0, i64 8}
  %t187 = icmp eq i64 %t185, 1
  store i1 %t187, ptr %l108, !tbaa !21
  br label %bb57
bb57:
  %t188 = load i1, ptr %l108, !tbaa !21
  br i1 %t188, label %bb58, label %bb59
bb58:
  %t189 = load ptr, ptr %l1, !tbaa !29
  %t191 = getelementptr { i64, [4 x i64] }, ptr %t189, i32 0, i32 1
  %t192 = getelementptr { %"compiler/source:Span", i32, i64, i32 }, ptr %t191, i32 0, i32 2
  %t193 = load i64, ptr %t192
  store i64 %t193, ptr %l7, !tbaa !24
  %t195 = load ptr, ptr %l1, !tbaa !29
  %t197 = getelementptr { i64, [4 x i64] }, ptr %t195, i32 0, i32 1
  %t198 = getelementptr { %"compiler/source:Span", i32, i64, i32 }, ptr %t197, i32 0, i32 3
  %t199 = load i32, ptr %t198
  store i32 %t199, ptr %l8, !tbaa !23
  br label %bb60
bb59:
  br label %bb72
bb60:
  %t201 = load ptr, ptr %l0, !tbaa !29
  %t203 = getelementptr %"compiler/check:Checker", ptr %t201, i32 0, i32 1
  %t204 = load ptr, ptr %t203, !tbaa !29
  %t205 = load i64, ptr %l7, !tbaa !24
  %t206 = load i32, ptr %l8, !tbaa !23
  %t210 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eGlobalDecl(ptr %v0, ptr %v0, ptr %t204, i64 %t205, i32 %t206)
  store ptr %t210, ptr %l119
  br label %bb61
bb61:
  %t211 = load ptr, ptr %l119, !tbaa !29
  store ptr %t211, ptr %l9, !tbaa !29
  %t212 = load ptr, ptr %l9, !tbaa !29
  %t214 = icmp eq ptr %t212, null
  %t216 = xor i1 %t214, true
  br i1 %t216, label %bb62, label %bb63
bb62:
  %t218 = load ptr, ptr %l9, !tbaa !29
  %t220 = getelementptr %"compiler/ast:VarDecl", ptr %t218, i32 0, i32 2
  %t221 = load ptr, ptr %t220, !tbaa !29
  %t223 = call i1 @compiler_2fgeneric_2eWrittenMut(ptr %v0, ptr %t221)
  store i1 %t223, ptr %l126
  br label %bb64
bb63:
  store i1 false, ptr %l123, !tbaa !21
  br label %bb65
bb64:
  %t224 = load i1, ptr %l126, !tbaa !21
  %t225 = xor i1 %t224, true
  store i1 %t225, ptr %l123, !tbaa !21
  br label %bb65
bb65:
  %t227 = load i1, ptr %l123, !tbaa !21
  br i1 %t227, label %bb66, label %bb67
bb66:
  store %olang.scope zeroinitializer, ptr %s11
  %t228 = load ptr, ptr %l0, !tbaa !29
  store ptr %t228, ptr %l128, !tbaa !29
  %t229 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t229, ptr %l129
  %t230 = load ptr, ptr %l0, !tbaa !29
  %t231 = load i32, ptr %l8, !tbaa !23
  %t234 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t230, i32 %t231)
  store { i64, ptr } %t234, ptr %l132
  br label %bb68
bb67:
  br label %bb71
bb68:
  %t235 = load { i64, ptr }, ptr %l132, !tbaa !27
  %t236 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImmutable(ptr %v0, ptr %s11, { i64, ptr } %t235)
  store %"compiler/diagmsg:Msg" %t236, ptr %l133
  br label %bb69
bb69:
  %t237 = load ptr, ptr %l128, !tbaa !29
  %t238 = load %"compiler/source:Span", ptr %l129
  %t239 = load %"compiler/diagmsg:Msg", ptr %l133
  %t240 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s11, ptr %t237, %"compiler/source:Span" %t238, %"compiler/diagmsg:Msg" %t239)
  store i64 %t240, ptr %l134
  br label %bb70
bb70:
  call void @__olang_scope_close(ptr %s11)
  br label %bb71
bb71:
  br label %bb202
bb72:
  %t241 = load ptr, ptr %l1, !tbaa !29
  store ptr %t241, ptr %l135, !tbaa !29
  store i1 false, ptr %l136, !tbaa !21
  %t242 = load ptr, ptr %l135, !tbaa !29
  %t243 = icmp ne ptr %t242, null
  br i1 %t243, label %bb73, label %bb74
bb73:
  %t245 = load ptr, ptr %l135, !tbaa !29
  %t246 = load i64, ptr %t245, !range !{i64 0, i64 8}
  %t248 = icmp eq i64 %t246, 2
  store i1 %t248, ptr %l136, !tbaa !21
  br label %bb74
bb74:
  %t249 = load i1, ptr %l136, !tbaa !21
  br i1 %t249, label %bb75, label %bb76
bb75:
  %t250 = load ptr, ptr %l1, !tbaa !29
  %t252 = getelementptr { i64, [4 x i64] }, ptr %t250, i32 0, i32 1
  %t253 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t252, i32 0, i32 2
  %t254 = load ptr, ptr %t253
  store ptr %t254, ptr %l10, !tbaa !29
  br label %bb77
bb76:
  br label %bb118
bb77:
  %t256 = load ptr, ptr %l10, !tbaa !29
  %t259 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t256)
  store i32 %t259, ptr %l143
  br label %bb78
bb78:
  %t260 = load i32, ptr %l143, !tbaa !23
  store i32 %t260, ptr %l11, !tbaa !23
  %t261 = load ptr, ptr %l0, !tbaa !29
  %t262 = load i32, ptr %l11, !tbaa !23
  %t265 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t261, i32 %t262)
  store i1 %t265, ptr %l146
  br label %bb79
bb79:
  %t266 = load i1, ptr %l146, !tbaa !21
  br i1 %t266, label %bb80, label %bb81
bb80:
  %t267 = load ptr, ptr %l0, !tbaa !29
  %t269 = getelementptr %"compiler/check:Checker", ptr %t267, i32 0, i32 1
  %t270 = load ptr, ptr %t269, !tbaa !29
  %t272 = getelementptr %"compiler/generic:Program", ptr %t270, i32 0, i32 2
  %t273 = load i32, ptr %l11, !tbaa !23
  %t276 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t272, i32 %t273)
  store i64 %t276, ptr %l152
  br label %bb82
bb81:
  store i1 false, ptr %l147, !tbaa !21
  br label %bb83
bb82:
  %t277 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t278 = load i64, ptr %l152, !tbaa !24
  %t280 = and i64 %t278, %t277
  %t282 = icmp eq i64 %t280, 0
  store i1 %t282, ptr %l147, !tbaa !21
  br label %bb83
bb83:
  %t284 = load i1, ptr %l147, !tbaa !21
  br i1 %t284, label %bb84, label %bb85
bb84:
  %t285 = load ptr, ptr %l0, !tbaa !29
  %t286 = load ptr, ptr %l10, !tbaa !29
  %t289 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecapturedValue(ptr %v0, ptr %v1, ptr %t285, ptr %t286)
  store i1 %t289, ptr %l158
  br label %bb86
bb85:
  %t290 = load ptr, ptr %l0, !tbaa !29
  %t291 = load i32, ptr %l11, !tbaa !23
  %t294 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t290, i32 %t291)
  store i1 %t294, ptr %l171
  br label %bb95
bb86:
  %t295 = load i1, ptr %l158, !tbaa !21
  br i1 %t295, label %bb87, label %bb88
bb87:
  store %olang.scope zeroinitializer, ptr %s14
  %t296 = load ptr, ptr %l0, !tbaa !29
  store ptr %t296, ptr %l159, !tbaa !29
  %t297 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t297, ptr %l160
  %t298 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCaptureReadOnly(ptr %s14)
  store %"compiler/diagmsg:Msg" %t298, ptr %l161
  br label %bb89
bb88:
  store %olang.scope zeroinitializer, ptr %s15
  %t299 = load ptr, ptr %l0, !tbaa !29
  store ptr %t299, ptr %l163, !tbaa !29
  %t300 = load ptr, ptr %l0, !tbaa !29
  store ptr %t300, ptr %l164, !tbaa !29
  %t301 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t301, ptr %l165
  %t302 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReadOnlyRefWrite(ptr %s15)
  store %"compiler/diagmsg:Msg" %t302, ptr %l166
  br label %bb91
bb89:
  %t303 = load ptr, ptr %l159, !tbaa !29
  %t304 = load %"compiler/source:Span", ptr %l160
  %t305 = load %"compiler/diagmsg:Msg", ptr %l161
  %t306 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s14, ptr %t303, %"compiler/source:Span" %t304, %"compiler/diagmsg:Msg" %t305)
  store i64 %t306, ptr %l162
  br label %bb90
bb90:
  call void @__olang_scope_close(ptr %s14)
  br label %bb94
bb91:
  %t307 = load ptr, ptr %l164, !tbaa !29
  %t308 = load %"compiler/source:Span", ptr %l165
  %t309 = load %"compiler/diagmsg:Msg", ptr %l166
  %t310 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s15, ptr %t307, %"compiler/source:Span" %t308, %"compiler/diagmsg:Msg" %t309)
  store i64 %t310, ptr %l167
  br label %bb92
bb92:
  %t311 = load ptr, ptr %l10, !tbaa !29
  %t312 = load ptr, ptr %l163, !tbaa !29
  %t313 = load i64, ptr %l167, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enoteWritable(ptr %v0, ptr %v1, ptr %t312, i64 %t313, ptr %t311)
  br label %bb93
bb93:
  call void @__olang_scope_close(ptr %s15)
  br label %bb94
bb94:
  br label %bb117
bb95:
  %t315 = load i1, ptr %l171, !tbaa !21
  br i1 %t315, label %bb96, label %bb97
bb96:
  %t316 = load ptr, ptr %l0, !tbaa !29
  store ptr %t316, ptr %l173, !tbaa !29
  %t317 = load ptr, ptr %l10, !tbaa !29
  %t319 = call ptr @compiler_2fcheck_2eunwrapped(ptr %v1, ptr %v1, ptr %t317)
  store ptr %t319, ptr %l175
  br label %bb98
bb97:
  store i1 false, ptr %l172, !tbaa !21
  br label %bb101
bb98:
  %t320 = load ptr, ptr %l175, !tbaa !29
  %t321 = call ptr @compiler_2fcheck_2ereadPlace(ptr %v1, ptr %v1, ptr %t320)
  store ptr %t321, ptr %l176
  br label %bb99
bb99:
  %t322 = load ptr, ptr %l173, !tbaa !29
  %t323 = load ptr, ptr %l176, !tbaa !29
  %t324 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroRoot(ptr %v0, ptr %v1, ptr %t322, ptr %t323)
  store i64 %t324, ptr %l177
  br label %bb100
bb100:
  %t325 = load i64, ptr %l177, !tbaa !24
  %t326 = icmp sge i64 %t325, 0
  store i1 %t326, ptr %l172, !tbaa !21
  br label %bb101
bb101:
  %t328 = load i1, ptr %l172, !tbaa !21
  br i1 %t328, label %bb102, label %bb103
bb102:
  store %olang.scope zeroinitializer, ptr %s17
  %t329 = load ptr, ptr %l0, !tbaa !29
  store ptr %t329, ptr %l179, !tbaa !29
  %t330 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t330, ptr %l180
  %t331 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReadOnlyCopyWrite(ptr %s17)
  store %"compiler/diagmsg:Msg" %t331, ptr %l181
  br label %bb104
bb103:
  %t332 = load ptr, ptr %l0, !tbaa !29
  %t333 = load i32, ptr %l11, !tbaa !23
  %t336 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t332, i32 %t333)
  store i1 %t336, ptr %l190
  br label %bb109
bb104:
  %t337 = load ptr, ptr %l179, !tbaa !29
  %t338 = load %"compiler/source:Span", ptr %l180
  %t339 = load %"compiler/diagmsg:Msg", ptr %l181
  %t340 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s17, ptr %t337, %"compiler/source:Span" %t338, %"compiler/diagmsg:Msg" %t339)
  store i64 %t340, ptr %l182
  br label %bb105
bb105:
  %t341 = load i64, ptr %l182, !tbaa !24
  %t342 = load ptr, ptr %l0, !tbaa !29
  store ptr %t342, ptr %l183, !tbaa !29
  store i64 %t341, ptr %l184, !tbaa !24
  %t344 = load ptr, ptr %l10, !tbaa !29
  %t346 = call ptr @compiler_2fcheck_2eunwrapped(ptr %v1, ptr %v1, ptr %t344)
  store ptr %t346, ptr %l186
  br label %bb106
bb106:
  %t347 = load ptr, ptr %l186, !tbaa !29
  %t348 = call ptr @compiler_2fcheck_2ereadPlace(ptr %v1, ptr %v1, ptr %t347)
  store ptr %t348, ptr %l187
  br label %bb107
bb107:
  %t349 = load ptr, ptr %l183, !tbaa !29
  %t350 = load i64, ptr %l184, !tbaa !24
  %t351 = load ptr, ptr %l187, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enoteRo(ptr %v0, ptr %v1, ptr %t349, i64 %t350, ptr %t351)
  br label %bb108
bb108:
  call void @__olang_scope_close(ptr %s17)
  br label %bb116
bb109:
  %t352 = load i1, ptr %l190, !tbaa !21
  br i1 %t352, label %bb110, label %bb111
bb110:
  %t353 = load ptr, ptr %l0, !tbaa !29
  store ptr %t353, ptr %l191, !tbaa !29
  %t354 = load ptr, ptr %l10, !tbaa !29
  %t356 = call ptr @compiler_2fcheck_2eunwrapped(ptr %v1, ptr %v1, ptr %t354)
  store ptr %t356, ptr %l193
  br label %bb112
bb111:
  br label %bb115
bb112:
  %t357 = load ptr, ptr %l193, !tbaa !29
  %t358 = call ptr @compiler_2fcheck_2ereadPlace(ptr %v1, ptr %v1, ptr %t357)
  store ptr %t358, ptr %l194
  br label %bb113
bb113:
  %t359 = load ptr, ptr %l191, !tbaa !29
  %t360 = load ptr, ptr %l194, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroNeed(ptr %v0, ptr %v1, ptr %t359, ptr %t360)
  br label %bb114
bb114:
  br label %bb115
bb115:
  br label %bb116
bb116:
  br label %bb117
bb117:
  br label %bb202
bb118:
  %t361 = load ptr, ptr %l1, !tbaa !29
  store ptr %t361, ptr %l195, !tbaa !29
  store i1 false, ptr %l196, !tbaa !21
  %t362 = load ptr, ptr %l195, !tbaa !29
  %t363 = icmp ne ptr %t362, null
  br i1 %t363, label %bb119, label %bb120
bb119:
  %t365 = load ptr, ptr %l195, !tbaa !29
  %t366 = load i64, ptr %t365, !range !{i64 0, i64 8}
  %t368 = icmp eq i64 %t366, 3
  store i1 %t368, ptr %l196, !tbaa !21
  br label %bb120
bb120:
  %t369 = load i1, ptr %l196, !tbaa !21
  br i1 %t369, label %bb121, label %bb122
bb121:
  %t370 = load ptr, ptr %l1, !tbaa !29
  %t372 = getelementptr { i64, [4 x i64] }, ptr %t370, i32 0, i32 1
  %t373 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t372, i32 0, i32 2
  %t374 = load ptr, ptr %t373
  store ptr %t374, ptr %l201, !tbaa !29
  store i1 false, ptr %l202, !tbaa !21
  %t375 = load ptr, ptr %l201, !tbaa !29
  %t376 = icmp ne ptr %t375, null
  br i1 %t376, label %bb123, label %bb124
bb122:
  store i1 false, ptr %l199, !tbaa !21
  br label %bb125
bb123:
  %t378 = load ptr, ptr %l201, !tbaa !29
  %t379 = load i64, ptr %t378, !range !{i64 0, i64 8}
  %t381 = icmp eq i64 %t379, 6
  store i1 %t381, ptr %l202, !tbaa !21
  br label %bb124
bb124:
  %t382 = load i1, ptr %l202, !tbaa !21
  store i1 %t382, ptr %l199, !tbaa !21
  br label %bb125
bb125:
  %t383 = load i1, ptr %l199, !tbaa !21
  br i1 %t383, label %bb126, label %bb127
bb126:
  %t384 = load ptr, ptr %l1, !tbaa !29
  %t386 = getelementptr { i64, [4 x i64] }, ptr %t384, i32 0, i32 1
  %t387 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t386, i32 0, i32 0
  %t388 = load %"compiler/source:Span", ptr %t387
  store %"compiler/source:Span" %t388, ptr %l13
  %t390 = load ptr, ptr %l1, !tbaa !29
  %t392 = getelementptr { i64, [4 x i64] }, ptr %t390, i32 0, i32 1
  %t393 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t392, i32 0, i32 2
  %t394 = load ptr, ptr %t393
  %t396 = getelementptr { i64, [4 x i64] }, ptr %t394, i32 0, i32 1
  %t397 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t396, i32 0, i32 2
  %t398 = load ptr, ptr %t397
  store ptr %t398, ptr %l14, !tbaa !29
  br label %bb128
bb127:
  br label %bb144
bb128:
  %t400 = load i1, ptr %l3, !tbaa !21
  %t402 = xor i1 %t400, true
  br i1 %t402, label %bb129, label %bb130
bb129:
  %t404 = load ptr, ptr %l0, !tbaa !29
  %t405 = load ptr, ptr %l14, !tbaa !29
  %t408 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echosenAt(ptr %v0, ptr %v1, ptr %t404, ptr %t405)
  store %"compiler/source:Span" %t408, ptr %l215
  br label %bb131
bb130:
  store i1 false, ptr %l212, !tbaa !21
  br label %bb132
bb131:
  %t409 = getelementptr %"compiler/source:Span", ptr %l215, i32 0, i32 0
  %t410 = load i32, ptr %t409, !tbaa !23
  %t412 = icmp sge i32 %t410, 0
  store i1 %t412, ptr %l212, !tbaa !21
  br label %bb132
bb132:
  %t414 = load i1, ptr %l212, !tbaa !21
  br i1 %t414, label %bb133, label %bb134
bb133:
  %t415 = load ptr, ptr %l0, !tbaa !29
  %t416 = load ptr, ptr %l14, !tbaa !29
  %t419 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econdChoosesPlace(ptr %v0, ptr %v1, ptr %t415, ptr %t416)
  store i1 %t419, ptr %l221
  br label %bb135
bb134:
  store i1 false, ptr %l218, !tbaa !21
  br label %bb136
bb135:
  %t420 = load i1, ptr %l221, !tbaa !21
  store i1 %t420, ptr %l218, !tbaa !21
  br label %bb136
bb136:
  %t421 = load i1, ptr %l218, !tbaa !21
  br i1 %t421, label %bb137, label %bb138
bb137:
  store %olang.scope zeroinitializer, ptr %s20
  %t422 = load ptr, ptr %l0, !tbaa !29
  %t423 = load %"compiler/source:Span", ptr %l13
  %t426 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elastName(ptr %v0, ptr %t422, %"compiler/source:Span" %t423)
  store %"compiler/source:Span" %t426, ptr %l224
  br label %bb139
bb138:
  br label %bb144
bb139:
  %t427 = load %"compiler/source:Span", ptr %l224
  store %"compiler/source:Span" %t427, ptr %l15
  %t428 = load ptr, ptr %l0, !tbaa !29
  store ptr %t428, ptr %l225, !tbaa !29
  %t429 = load %"compiler/source:Span", ptr %l15
  store %"compiler/source:Span" %t429, ptr %l226
  %t430 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCondLentWritable(ptr %s20)
  store %"compiler/diagmsg:Msg" %t430, ptr %l227
  br label %bb140
bb140:
  %t431 = load ptr, ptr %l225, !tbaa !29
  %t432 = load %"compiler/source:Span", ptr %l226
  %t433 = load %"compiler/diagmsg:Msg", ptr %l227
  %t434 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s20, ptr %t431, %"compiler/source:Span" %t432, %"compiler/diagmsg:Msg" %t433)
  store i64 %t434, ptr %l228
  br label %bb141
bb141:
  %t435 = load ptr, ptr %l0, !tbaa !29
  store ptr %t435, ptr %l229, !tbaa !29
  %t436 = load %"compiler/source:Span", ptr %l15
  store %"compiler/source:Span" %t436, ptr %l230
  %t437 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReadOnlyToWritable(ptr %s20)
  store %"compiler/diagmsg:Msg" %t437, ptr %l231
  br label %bb142
bb142:
  %t438 = load ptr, ptr %l229, !tbaa !29
  %t439 = load %"compiler/source:Span", ptr %l230
  %t440 = load %"compiler/diagmsg:Msg", ptr %l231
  %t441 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s20, ptr %t438, %"compiler/source:Span" %t439, %"compiler/diagmsg:Msg" %t440)
  store i64 %t441, ptr %l232
  br label %bb143
bb143:
  call void @__olang_scope_close(ptr %s20)
  br label %bb202
bb144:
  %t442 = load ptr, ptr %l1, !tbaa !29
  store ptr %t442, ptr %l233, !tbaa !29
  store i1 false, ptr %l234, !tbaa !21
  %t443 = load ptr, ptr %l233, !tbaa !29
  %t444 = icmp ne ptr %t443, null
  br i1 %t444, label %bb145, label %bb146
bb145:
  %t446 = load ptr, ptr %l233, !tbaa !29
  %t447 = load i64, ptr %t446, !range !{i64 0, i64 8}
  %t449 = icmp eq i64 %t447, 3
  store i1 %t449, ptr %l234, !tbaa !21
  br label %bb146
bb146:
  %t450 = load i1, ptr %l234, !tbaa !21
  br i1 %t450, label %bb147, label %bb148
bb147:
  %t451 = load ptr, ptr %l1, !tbaa !29
  %t453 = getelementptr { i64, [4 x i64] }, ptr %t451, i32 0, i32 1
  %t454 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t453, i32 0, i32 2
  %t455 = load ptr, ptr %t454
  store ptr %t455, ptr %l16, !tbaa !29
  br label %bb149
bb148:
  br label %bb151
bb149:
  %t457 = load ptr, ptr %l0, !tbaa !29
  %t458 = load ptr, ptr %l16, !tbaa !29
  %t459 = load %"compiler/source:Span", ptr %l2
  %t460 = load i1, ptr %l3, !tbaa !21
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emustWrite(ptr %v0, ptr %v1, ptr %t457, ptr %t458, %"compiler/source:Span" %t459, i1 %t460)
  br label %bb150
bb150:
  br label %bb202
bb151:
  %t465 = load ptr, ptr %l1, !tbaa !29
  store ptr %t465, ptr %l243, !tbaa !29
  store i1 false, ptr %l244, !tbaa !21
  %t466 = load ptr, ptr %l243, !tbaa !29
  %t467 = icmp ne ptr %t466, null
  br i1 %t467, label %bb152, label %bb153
bb152:
  %t469 = load ptr, ptr %l243, !tbaa !29
  %t470 = load i64, ptr %t469, !range !{i64 0, i64 8}
  %t472 = icmp eq i64 %t470, 4
  store i1 %t472, ptr %l244, !tbaa !21
  br label %bb153
bb153:
  %t473 = load i1, ptr %l244, !tbaa !21
  br i1 %t473, label %bb154, label %bb155
bb154:
  %t474 = load ptr, ptr %l1, !tbaa !29
  %t476 = getelementptr { i64, [4 x i64] }, ptr %t474, i32 0, i32 1
  %t477 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t476, i32 0, i32 2
  %t478 = load ptr, ptr %t477
  store ptr %t478, ptr %l17, !tbaa !29
  br label %bb156
bb155:
  br label %bb158
bb156:
  %t480 = load ptr, ptr %l0, !tbaa !29
  %t481 = load ptr, ptr %l17, !tbaa !29
  %t483 = getelementptr %"compiler/typed:Elem", ptr %t481, i32 0, i32 0
  %t484 = load ptr, ptr %t483, !tbaa !29
  %t485 = load %"compiler/source:Span", ptr %l2
  %t486 = load i1, ptr %l3, !tbaa !21
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emustWrite(ptr %v0, ptr %v1, ptr %t480, ptr %t484, %"compiler/source:Span" %t485, i1 %t486)
  br label %bb157
bb157:
  br label %bb202
bb158:
  %t491 = load ptr, ptr %l1, !tbaa !29
  store ptr %t491, ptr %l254, !tbaa !29
  store i1 false, ptr %l255, !tbaa !21
  %t492 = load ptr, ptr %l254, !tbaa !29
  %t493 = icmp ne ptr %t492, null
  br i1 %t493, label %bb159, label %bb160
bb159:
  %t495 = load ptr, ptr %l254, !tbaa !29
  %t496 = load i64, ptr %t495, !range !{i64 0, i64 8}
  %t498 = icmp eq i64 %t496, 5
  store i1 %t498, ptr %l255, !tbaa !21
  br label %bb160
bb160:
  %t499 = load i1, ptr %l255, !tbaa !21
  br i1 %t499, label %bb161, label %bb162
bb161:
  %t500 = load ptr, ptr %l1, !tbaa !29
  %t502 = getelementptr { i64, [4 x i64] }, ptr %t500, i32 0, i32 1
  %t503 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t502, i32 0, i32 2
  %t504 = load ptr, ptr %t503
  store ptr %t504, ptr %l18, !tbaa !29
  br label %bb163
bb162:
  br label %bb165
bb163:
  %t506 = load ptr, ptr %l0, !tbaa !29
  %t507 = load ptr, ptr %l18, !tbaa !29
  %t509 = getelementptr %"compiler/typed:Payload", ptr %t507, i32 0, i32 0
  %t510 = load ptr, ptr %t509, !tbaa !29
  %t511 = load %"compiler/source:Span", ptr %l2
  %t512 = load i1, ptr %l3, !tbaa !21
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emustWrite(ptr %v0, ptr %v1, ptr %t506, ptr %t510, %"compiler/source:Span" %t511, i1 %t512)
  br label %bb164
bb164:
  br label %bb202
bb165:
  %t517 = load ptr, ptr %l1, !tbaa !29
  store ptr %t517, ptr %l265, !tbaa !29
  store i1 false, ptr %l266, !tbaa !21
  %t518 = load ptr, ptr %l265, !tbaa !29
  %t519 = icmp ne ptr %t518, null
  br i1 %t519, label %bb166, label %bb167
bb166:
  %t521 = load ptr, ptr %l265, !tbaa !29
  %t522 = load i64, ptr %t521, !range !{i64 0, i64 8}
  %t524 = icmp eq i64 %t522, 6
  store i1 %t524, ptr %l266, !tbaa !21
  br label %bb167
bb167:
  %t525 = load i1, ptr %l266, !tbaa !21
  br i1 %t525, label %bb168, label %bb169
bb168:
  %t526 = load ptr, ptr %l1, !tbaa !29
  %t528 = getelementptr { i64, [4 x i64] }, ptr %t526, i32 0, i32 1
  %t529 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t528, i32 0, i32 2
  %t530 = load ptr, ptr %t529
  store ptr %t530, ptr %l19, !tbaa !29
  br label %bb170
bb169:
  br label %bb197
bb170:
  %t532 = load ptr, ptr %l19, !tbaa !29
  store ptr %t532, ptr %l272, !tbaa !29
  store i1 false, ptr %l273, !tbaa !21
  %t533 = load ptr, ptr %l272, !tbaa !29
  %t534 = icmp ne ptr %t533, null
  br i1 %t534, label %bb171, label %bb172
bb171:
  %t536 = load ptr, ptr %l272, !tbaa !29
  %t537 = load i64, ptr %t536, !range !{i64 0, i64 18}
  %t539 = icmp eq i64 %t537, 14
  store i1 %t539, ptr %l273, !tbaa !21
  br label %bb172
bb172:
  %t540 = load i1, ptr %l273, !tbaa !21
  br i1 %t540, label %bb173, label %bb174
bb173:
  br label %bb175
bb174:
  br label %bb176
bb175:
  store i1 true, ptr %l271, !tbaa !21
  br label %bb181
bb176:
  br i1 true, label %bb177, label %bb178
bb177:
  br label %bb179
bb178:
  br label %bb180
bb179:
  store i1 false, ptr %l271, !tbaa !21
  br label %bb181
bb180:
  call void @__olang_check_failed(ptr @olang_loc_3b10a40791a2a251_bad5d69bdb4172c5)
  unreachable
bb181:
  %t541 = load i1, ptr %l271, !tbaa !21
  store i1 %t541, ptr %l20, !tbaa !21
  %t542 = load ptr, ptr %l0, !tbaa !29
  %t543 = load ptr, ptr %l19, !tbaa !29
  %t546 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enarrowCopy(ptr %v0, ptr %v1, ptr %t542, ptr %t543)
  store i64 %t546, ptr %l278
  br label %bb182
bb182:
  %t547 = load i64, ptr %l278, !tbaa !24
  %t548 = icmp sge i64 %t547, 0
  br i1 %t548, label %bb183, label %bb184
bb183:
  %t550 = load ptr, ptr %l0, !tbaa !29
  store ptr %t550, ptr %l280, !tbaa !29
  %t551 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t551, ptr %l281
  %t552 = load ptr, ptr %l0, !tbaa !29
  %t553 = load ptr, ptr %l19, !tbaa !29
  %t556 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enarrowCopy(ptr %v0, ptr %v1, ptr %t552, ptr %t553)
  store i64 %t556, ptr %l284
  br label %bb185
bb184:
  %t557 = load i1, ptr %l3, !tbaa !21
  br i1 %t557, label %bb187, label %bb188
bb185:
  %t559 = load ptr, ptr %l280, !tbaa !29
  %t560 = load %"compiler/source:Span", ptr %l281
  %t561 = load i64, ptr %l284, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enarrowedWrite(ptr %v0, ptr %t559, %"compiler/source:Span" %t560, i64 %t561)
  br label %bb186
bb186:
  br label %bb196
bb187:
  store %olang.scope zeroinitializer, ptr %s29
  %t562 = load ptr, ptr %l0, !tbaa !29
  store ptr %t562, ptr %l286, !tbaa !29
  %t563 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t563, ptr %l287
  %t564 = load i1, ptr %l20, !tbaa !21
  br i1 %t564, label %bb189, label %bb190
bb188:
  br label %bb195
bb189:
  %t566 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAssignIntoTried(ptr %s29)
  store %"compiler/diagmsg:Msg" %t566, ptr %l290
  br label %bb191
bb190:
  %t567 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eWriteIntoCallValue(ptr %s29)
  store %"compiler/diagmsg:Msg" %t567, ptr %l291
  br label %bb192
bb191:
  %t568 = load %"compiler/diagmsg:Msg", ptr %l290
  store %"compiler/diagmsg:Msg" %t568, ptr %l289
  br label %bb193
bb192:
  %t569 = load %"compiler/diagmsg:Msg", ptr %l291
  store %"compiler/diagmsg:Msg" %t569, ptr %l289
  br label %bb193
bb193:
  %t570 = load ptr, ptr %l286, !tbaa !29
  %t571 = load %"compiler/source:Span", ptr %l287
  %t572 = load %"compiler/diagmsg:Msg", ptr %l289
  %t573 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s29, ptr %t570, %"compiler/source:Span" %t571, %"compiler/diagmsg:Msg" %t572)
  store i64 %t573, ptr %l292
  br label %bb194
bb194:
  call void @__olang_scope_close(ptr %s29)
  br label %bb195
bb195:
  br label %bb196
bb196:
  br label %bb202
bb197:
  br i1 true, label %bb198, label %bb199
bb198:
  br label %bb200
bb199:
  br label %bb201
bb200:
  br label %bb202
bb201:
  call void @__olang_check_failed(ptr @olang_loc_353afd59783a39c0_8ce5d27f074b4214)
  unreachable
bb202:
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ename(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i32 %a3, i1 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca i32
  %l3 = alloca i32
  %l5 = alloca %"compiler/names:Ref"
  %l6 = alloca ptr
  %l7 = alloca i64
  %lp8 = alloca ptr
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca ptr
  %l12 = alloca i32
  %l13 = alloca { i64, ptr }
  %l14 = alloca i32
  %l18 = alloca ptr
  %l20 = alloca ptr
  %l24 = alloca %"compiler/names:Ref"
  %l31 = alloca i1
  %l34 = alloca i64
  %l39 = alloca ptr
  %l48 = alloca ptr
  %l52 = alloca i1
  %l53 = alloca i64
  %l55 = alloca ptr
  %l59 = alloca i64
  %l60 = alloca i32
  %l61 = alloca %"compiler/check:fixedInit"
  %l63 = alloca ptr
  %l65 = alloca ptr
  %l69 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l70 = alloca %"compiler/check:fixedInit"
  %l71 = alloca i32
  %l74 = alloca ptr
  %l79 = alloca ptr
  %l84 = alloca i64
  %l87 = alloca i64
  %l90 = alloca i1
  %l94 = alloca i1
  %l96 = alloca i1
  %l100 = alloca i1
  %l103 = alloca ptr
  %l106 = alloca i32
  %l107 = alloca ptr
  %l110 = alloca i32
  %l111 = alloca i32
  %l112 = alloca i1
  %l116 = alloca i1
  %l118 = alloca ptr
  %l125 = alloca ptr
  %l132 = alloca ptr
  %l136 = alloca i1
  %l140 = alloca ptr
  %l141 = alloca %"compiler/source:Span"
  %l144 = alloca { i64, ptr }
  %l146 = alloca %"compiler/diagmsg:Msg"
  %l147 = alloca i64
  %l150 = alloca ptr
  %l158 = alloca ptr
  %l160 = alloca ptr
  %l161 = alloca ptr
  %l162 = alloca %"compiler/source:Span"
  %l166 = alloca ptr
  %l167 = alloca ptr
  %l169 = alloca ptr
  %l176 = alloca i32
  %l180 = alloca ptr
  %l191 = alloca ptr
  %l198 = alloca ptr
  %l202 = alloca i1
  %l205 = alloca { i64, ptr }
  %l206 = alloca i1
  %l210 = alloca ptr
  %l215 = alloca ptr
  %l217 = alloca ptr
  %l222 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l223 = alloca i1
  %l225 = alloca i1
  %l227 = alloca ptr
  %l229 = alloca ptr
  %l234 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l235 = alloca i1
  %l237 = alloca i1
  %l242 = alloca i1
  %l244 = alloca ptr
  %l247 = alloca { i64, ptr }
  %l248 = alloca { i64, ptr }
  %l252 = alloca ptr
  %l253 = alloca %"compiler/source:Span"
  %l256 = alloca { i64, ptr }
  %l258 = alloca %"compiler/diagmsg:Msg"
  %l259 = alloca i64
  %l264 = alloca i32
  %l267 = alloca ptr
  %l268 = alloca %"compiler/source:Span"
  %l271 = alloca { i64, ptr }
  %l274 = alloca %"compiler/diagmsg:Msg"
  %l275 = alloca i64
  %l276 = alloca ptr
  %l277 = alloca %"compiler/source:Span"
  %l280 = alloca { i64, ptr }
  %l283 = alloca %"compiler/diagmsg:Msg"
  %l284 = alloca i64
  %l286 = alloca ptr
  %l288 = alloca ptr
  %l293 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l296 = alloca ptr
  %l300 = alloca ptr
  %l301 = alloca %"compiler/source:Span"
  %l304 = alloca { i64, ptr }
  %l305 = alloca %"compiler/diagmsg:Msg"
  %l306 = alloca i64
  %l309 = alloca ptr
  %l318 = alloca i32
  %l321 = alloca i1
  %l324 = alloca i1
  %l326 = alloca ptr
  %l327 = alloca %"compiler/source:Span"
  %l330 = alloca { i64, ptr }
  %l331 = alloca %"compiler/diagmsg:Msg"
  %l332 = alloca i64
  %l335 = alloca ptr
  %l339 = alloca ptr
  %l340 = alloca %"compiler/source:Span"
  %l345 = alloca i64
  %l349 = alloca ptr
  %l353 = alloca i32
  %l355 = alloca ptr
  %l359 = alloca i32
  %l360 = alloca i32
  %l365 = alloca ptr
  %l366 = alloca %"compiler/source:Span"
  %l369 = alloca { i64, ptr }
  %l370 = alloca %"compiler/diagmsg:Msg"
  %l371 = alloca i64
  %l374 = alloca ptr
  %l380 = alloca ptr
  %s0 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s16 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %s20 = alloca %olang.scope
  %s21 = alloca %olang.scope
  %s22 = alloca %olang.scope
  %s23 = alloca %olang.scope
  %s24 = alloca %olang.scope
  %s27 = alloca %olang.scope
  %rv = alloca ptr
  %t355 = alloca { i64, [4 x i64] }, align 8
  %t635 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store i32 %a2, ptr %l2
  store i32 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 1
  %t7 = load ptr, ptr %t6, !tbaa !29
  store ptr %t7, ptr %l18, !tbaa !29
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t8)
  store ptr %t10, ptr %l20
  br label %bb1
bb1:
  %t11 = load ptr, ptr %l20, !tbaa !29
  %t13 = getelementptr %"compiler/check:frame", ptr %t11, i32 0, i32 2
  %t14 = load i64, ptr %t13, !tbaa !24
  %t15 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t16 = load i32, ptr %t15, !tbaa !23
  %t17 = load ptr, ptr %l18, !tbaa !29
  %t20 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %t17, i64 %t14, i32 %t16)
  store %"compiler/names:Ref" %t20, ptr %l24
  br label %bb2
bb2:
  %t21 = load %"compiler/names:Ref", ptr %l24
  store %"compiler/names:Ref" %t21, ptr %l5
  %t22 = getelementptr %"compiler/names:Ref", ptr %l5, i32 0, i32 0
  %t23 = load i32, ptr %t22, !range !{i32 0, i32 9}
  %t25 = trunc i64 1 to i32
  %t26 = icmp eq i32 %t23, %t25
  br i1 %t26, label %bb3, label %bb4
bb3:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t29 = load i32, ptr %l2, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtUsed(ptr %v0, ptr %t28, i32 %t29)
  br label %bb5
bb4:
  br label %bb6
bb5:
  br label %bb6
bb6:
  %t32 = getelementptr %"compiler/names:Ref", ptr %l5, i32 0, i32 0
  %t33 = load i32, ptr %t32, !range !{i32 0, i32 9}
  %t35 = trunc i64 1 to i32
  %t36 = icmp eq i32 %t33, %t35
  br i1 %t36, label %bb7, label %bb8
bb7:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t39 = load i32, ptr %l2, !tbaa !23
  %t42 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalNamed(ptr %v0, ptr %t38, i32 %t39)
  store i64 %t42, ptr %l34
  br label %bb9
bb8:
  store i1 false, ptr %l31, !tbaa !21
  br label %bb10
bb9:
  %t43 = load i64, ptr %l34, !tbaa !24
  %t44 = icmp slt i64 %t43, 0
  store i1 %t44, ptr %l31, !tbaa !21
  br label %bb10
bb10:
  %t46 = load i1, ptr %l31, !tbaa !21
  br i1 %t46, label %bb11, label %bb12
bb11:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t48 = load %"compiler/source:Span", ptr %l1
  %t49 = load i32, ptr %l2, !tbaa !23
  %t53 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflName(ptr %v0, ptr %v1, ptr %t47, %"compiler/source:Span" %t48, i32 %t49)
  store ptr %t53, ptr %l39
  br label %bb13
bb12:
  br label %bb17
bb13:
  %t54 = load ptr, ptr %l39, !tbaa !29
  store ptr %t54, ptr %l6, !tbaa !29
  %t55 = load ptr, ptr %l6, !tbaa !29
  %t57 = icmp eq ptr %t55, null
  %t59 = xor i1 %t57, true
  br i1 %t59, label %bb14, label %bb15
bb14:
  %t61 = load ptr, ptr %l6, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t61, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  br label %bb17
bb17:
  %t64 = getelementptr %"compiler/names:Ref", ptr %l5, i32 0, i32 0
  %t65 = load i32, ptr %t64, !range !{i32 0, i32 9}
  %t67 = trunc i64 1 to i32
  %t68 = icmp eq i32 %t65, %t67
  br i1 %t68, label %bb18, label %bb19
bb18:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t70)
  store ptr %t72, ptr %l48
  br label %bb20
bb19:
  br label %bb89
bb20:
  %t73 = load ptr, ptr %l48, !tbaa !29
  %t75 = getelementptr %"compiler/check:frame", ptr %t73, i32 0, i32 44
  %t76 = load i32, ptr %l2, !tbaa !23
  %t79 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_Hf575c52a5a9e8993bae2b73c9c2548b3(ptr %v0, ptr %t75, i32 %t76)
  store i1 %t79, ptr %l52
  br label %bb21
bb21:
  %t80 = load i1, ptr %l52, !tbaa !21
  br i1 %t80, label %bb22, label %bb23
bb22:
  store %olang.scope zeroinitializer, ptr %s5
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t83 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t81)
  store ptr %t83, ptr %l55
  br label %bb24
bb23:
  br label %bb37
bb24:
  %t84 = load ptr, ptr %l55, !tbaa !29
  %t86 = getelementptr %"compiler/check:frame", ptr %t84, i32 0, i32 44
  %t87 = load i32, ptr %l2, !tbaa !23
  %t90 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H2a27ec2ae5362b2f0ac6d54f3e063c70(ptr %v0, ptr %t86, i32 %t87)
  %t91 = extractvalue { i32, i64 } %t90, 1
  %t92 = extractvalue { i32, i64 } %t90, 0
  store i32 %t92, ptr %l60
  %t93 = icmp ne i32 %t92, 0
  br i1 %t93, label %bb26, label %ok.94, !prof !99
ok.94:
  store i64 %t91, ptr %l59
  br label %bb25
bb25:
  %t95 = load i64, ptr %l59, !tbaa !24
  store i64 %t95, ptr %l53, !tbaa !24
  br label %bb28
bb26:
  br label %bb27
bb27:
  store i64 -1, ptr %l53, !tbaa !24
  br label %bb28
bb28:
  %t96 = load i64, ptr %l53, !tbaa !24
  store i64 %t96, ptr %l7, !tbaa !24
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t99 = getelementptr %"compiler/check:Checker", ptr %t97, i32 0, i32 141
  store ptr %t99, ptr %l63, !tbaa !29
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t102 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t100)
  store ptr %t102, ptr %l65
  br label %bb29
bb29:
  %t103 = load ptr, ptr %l65, !tbaa !29
  %t105 = getelementptr %"compiler/check:frame", ptr %t103, i32 0, i32 45
  %t106 = load i64, ptr %t105, !tbaa !24
  %t107 = load i64, ptr %l7, !tbaa !24
  %t110 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s5, i64 %t106, i64 %t107)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t110, ptr %l69
  br label %bb30
bb30:
  %t111 = load ptr, ptr %l63, !tbaa !29
  %t112 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l69
  %t113 = call { i32, %"compiler/check:fixedInit" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H6f2dcaa3b3ff2363ea7964270c7a6b31(ptr %v0, ptr %v1, ptr %t111, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t112)
  %t114 = extractvalue { i32, %"compiler/check:fixedInit" } %t113, 1
  %t115 = extractvalue { i32, %"compiler/check:fixedInit" } %t113, 0
  store i32 %t115, ptr %l71
  %t116 = icmp ne i32 %t115, 0
  br i1 %t116, label %bb32, label %ok.117, !prof !99
ok.117:
  store %"compiler/check:fixedInit" %t114, ptr %l70
  br label %bb31
bb31:
  %t118 = load %"compiler/check:fixedInit", ptr %l70
  store %"compiler/check:fixedInit" %t118, ptr %l61
  br label %bb35
bb32:
  br label %bb33
bb33:
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t120 = load %"compiler/source:Span", ptr %l1
  %t123 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v1, ptr %t119, %"compiler/source:Span" %t120)
  store ptr %t123, ptr %l74
  br label %bb34
bb34:
  %t124 = load ptr, ptr %l74, !tbaa !29
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t124, ptr %rv
  br label %ret
bb35:
  %t126 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t126, ptr %lp8
  %t127 = load %"compiler/check:fixedInit", ptr %l61
  %t128 = load ptr, ptr %lp8
  store %"compiler/check:fixedInit" %t127, ptr %t128
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t130 = load ptr, ptr %lp8
  %t131 = getelementptr %"compiler/check:fixedInit", ptr %t130, i32 0, i32 0
  %t132 = load ptr, ptr %t131, !tbaa !29
  %t133 = load ptr, ptr %lp8
  %t134 = getelementptr %"compiler/check:fixedInit", ptr %t133, i32 0, i32 1
  %t135 = load i32, ptr %t134, !tbaa !23
  %t139 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexprTo(ptr %v0, ptr %v1, ptr %v1, ptr %t129, ptr %t132, i32 %t135)
  store ptr %t139, ptr %l79
  br label %bb36
bb36:
  %t140 = load ptr, ptr %l79, !tbaa !29
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t140, ptr %rv
  br label %ret
bb37:
  %t142 = load ptr, ptr %l0, !tbaa !29
  %t143 = load i32, ptr %l2, !tbaa !23
  %t144 = load %"compiler/source:Span", ptr %l1
  %t148 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalOrCapture(ptr %v0, ptr %t142, i32 %t143, %"compiler/source:Span" %t144)
  store i64 %t148, ptr %l84
  br label %bb38
bb38:
  %t149 = load i64, ptr %l84, !tbaa !24
  store i64 %t149, ptr %l9, !tbaa !24
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t151 = load i32, ptr %l2, !tbaa !23
  %t154 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalNamed(ptr %v0, ptr %t150, i32 %t151)
  store i64 %t154, ptr %l87
  br label %bb39
bb39:
  %t155 = load i64, ptr %l87, !tbaa !24
  store i64 %t155, ptr %l10, !tbaa !24
  %t156 = load i64, ptr %l10, !tbaa !24
  %t158 = icmp sge i64 %t156, 0
  br i1 %t158, label %bb40, label %bb41
bb40:
  %t160 = load i64, ptr %l9, !tbaa !24
  %t161 = load i64, ptr %l10, !tbaa !24
  %t164 = icmp ne i64 %t160, %t161
  store i1 %t164, ptr %l90, !tbaa !21
  br label %bb42
bb41:
  store i1 false, ptr %l90, !tbaa !21
  br label %bb42
bb42:
  %t166 = load i1, ptr %l90, !tbaa !21
  br i1 %t166, label %bb43, label %bb44
bb43:
  br i1 %a4, label %bb45, label %bb46
bb44:
  store i1 false, ptr %l94, !tbaa !21
  br label %bb55
bb45:
  store i1 true, ptr %l96, !tbaa !21
  br label %bb54
bb46:
  %t169 = load i32, ptr %l3, !tbaa !23
  %t170 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t173 = icmp ne i32 %t169, %t170
  br i1 %t173, label %bb47, label %bb48
bb47:
  %t175 = load ptr, ptr %l0, !tbaa !29
  %t177 = getelementptr %"compiler/check:Checker", ptr %t175, i32 0, i32 1
  %t178 = load ptr, ptr %t177, !tbaa !29
  %t180 = getelementptr %"compiler/generic:Program", ptr %t178, i32 0, i32 2
  store ptr %t180, ptr %l103, !tbaa !29
  %t181 = load ptr, ptr %l0, !tbaa !29
  %t182 = load i32, ptr %l3, !tbaa !23
  %t185 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t181, i32 %t182)
  store i32 %t185, ptr %l106
  br label %bb49
bb48:
  store i1 false, ptr %l100, !tbaa !21
  br label %bb53
bb49:
  %t186 = load ptr, ptr %l0, !tbaa !29
  store ptr %t186, ptr %l107, !tbaa !29
  %t187 = load ptr, ptr %l0, !tbaa !29
  %t188 = load i64, ptr %l10, !tbaa !24
  %t191 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalType(ptr %v0, ptr %t187, i64 %t188)
  store i32 %t191, ptr %l110
  br label %bb50
bb50:
  %t192 = load ptr, ptr %l107, !tbaa !29
  %t193 = load i32, ptr %l110, !tbaa !23
  %t194 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t192, i32 %t193)
  store i32 %t194, ptr %l111
  br label %bb51
bb51:
  %t195 = load ptr, ptr %l103, !tbaa !29
  %t196 = load i32, ptr %l106, !tbaa !23
  %t197 = load i32, ptr %l111, !tbaa !23
  %t198 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t195, i32 %t196, i32 %t197)
  store i1 %t198, ptr %l112
  br label %bb52
bb52:
  %t199 = load i1, ptr %l112, !tbaa !21
  store i1 %t199, ptr %l100, !tbaa !21
  br label %bb53
bb53:
  %t200 = load i1, ptr %l100, !tbaa !21
  store i1 %t200, ptr %l96, !tbaa !21
  br label %bb54
bb54:
  %t201 = load i1, ptr %l96, !tbaa !21
  store i1 %t201, ptr %l94, !tbaa !21
  br label %bb55
bb55:
  %t202 = load i1, ptr %l94, !tbaa !21
  br i1 %t202, label %bb56, label %bb57
bb56:
  %t203 = load i64, ptr %l10, !tbaa !24
  store i64 %t203, ptr %l9, !tbaa !24
  br label %bb58
bb57:
  br label %bb58
bb58:
  %t205 = load i64, ptr %l9, !tbaa !24
  %t207 = icmp slt i64 %t205, 0
  br i1 %t207, label %bb59, label %bb60
bb59:
  %t209 = load ptr, ptr %l0, !tbaa !29
  %t211 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t209)
  store ptr %t211, ptr %l118
  br label %bb61
bb60:
  store i1 false, ptr %l116, !tbaa !21
  br label %bb62
bb61:
  %t212 = load ptr, ptr %l118, !tbaa !29
  %t214 = getelementptr %"compiler/check:frame", ptr %t212, i32 0, i32 31
  %t215 = load i64, ptr %t214, !tbaa !24
  %t217 = icmp sge i64 %t215, 0
  store i1 %t217, ptr %l116, !tbaa !21
  br label %bb62
bb62:
  %t219 = load i1, ptr %l116, !tbaa !21
  br i1 %t219, label %bb63, label %bb64
bb63:
  %t220 = load ptr, ptr %l0, !tbaa !29
  %t221 = load %"compiler/source:Span", ptr %l1
  %t222 = load i32, ptr %l2, !tbaa !23
  %t226 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einstField(ptr %v0, ptr %v1, ptr %t220, %"compiler/source:Span" %t221, i32 %t222)
  store ptr %t226, ptr %l125
  br label %bb65
bb64:
  br label %bb70
bb65:
  %t227 = load ptr, ptr %l125, !tbaa !29
  store ptr %t227, ptr %l11, !tbaa !29
  %t228 = load ptr, ptr %l11, !tbaa !29
  %t230 = icmp eq ptr %t228, null
  %t232 = xor i1 %t230, true
  br i1 %t232, label %bb66, label %bb67
bb66:
  %t234 = load ptr, ptr %l0, !tbaa !29
  %t235 = load %"compiler/source:Span", ptr %l1
  %t236 = load ptr, ptr %l11, !tbaa !29
  %t240 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v1, ptr %v1, ptr %t234, %"compiler/source:Span" %t235, ptr %t236)
  store ptr %t240, ptr %l132
  br label %bb68
bb67:
  br label %bb69
bb68:
  %t241 = load ptr, ptr %l132, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t241, ptr %rv
  br label %ret
bb69:
  br label %bb70
bb70:
  %t243 = load i64, ptr %l9, !tbaa !24
  %t245 = icmp slt i64 %t243, 0
  br i1 %t245, label %bb71, label %bb72
bb71:
  %t247 = load ptr, ptr %l0, !tbaa !29
  %t249 = getelementptr %"compiler/check:Checker", ptr %t247, i32 0, i32 135
  %t250 = load i64, ptr %t249, !tbaa !24
  %t252 = icmp sgt i64 %t250, 0
  store i1 %t252, ptr %l136, !tbaa !21
  br label %bb73
bb72:
  store i1 false, ptr %l136, !tbaa !21
  br label %bb73
bb73:
  %t254 = load i1, ptr %l136, !tbaa !21
  br i1 %t254, label %bb74, label %bb75
bb74:
  store %olang.scope zeroinitializer, ptr %s10
  %t255 = load ptr, ptr %l0, !tbaa !29
  store ptr %t255, ptr %l140, !tbaa !29
  %t256 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t256, ptr %l141
  %t257 = load ptr, ptr %l0, !tbaa !29
  %t258 = load i32, ptr %l2, !tbaa !23
  %t261 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %s10, ptr %t257, i32 %t258)
  store { i64, ptr } %t261, ptr %l144
  br label %bb76
bb75:
  br label %bb80
bb76:
  %t262 = load { i64, ptr }, ptr %l144, !tbaa !27
  %t263 = extractvalue { i64, ptr } %t262, 0
  %t264 = extractvalue { i64, ptr } %t262, 1
  %t265 = mul i64 %t263, 1
  %t266 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t265)
  call void @llvm.memcpy.p0.p0.i64(ptr %t266, ptr %t264, i64 %t265, i1 false)
  %t267 = insertvalue { i64, ptr } undef, i64 %t263, 0
  %t268 = insertvalue { i64, ptr } %t267, ptr %t266, 1
  %t270 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eComptimeLocal(ptr %s10, ptr %s10, { i64, ptr } %t268)
  store %"compiler/diagmsg:Msg" %t270, ptr %l146
  br label %bb77
bb77:
  %t271 = load ptr, ptr %l140, !tbaa !29
  %t272 = load %"compiler/source:Span", ptr %l141
  %t273 = load %"compiler/diagmsg:Msg", ptr %l146
  %t274 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s10, ptr %t271, %"compiler/source:Span" %t272, %"compiler/diagmsg:Msg" %t273)
  store i64 %t274, ptr %l147
  br label %bb78
bb78:
  %t275 = load ptr, ptr %l0, !tbaa !29
  %t276 = load %"compiler/source:Span", ptr %l1
  %t279 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v1, ptr %t275, %"compiler/source:Span" %t276)
  store ptr %t279, ptr %l150
  br label %bb79
bb79:
  %t280 = load ptr, ptr %l150, !tbaa !29
  call void @__olang_scope_close(ptr %s10)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t280, ptr %rv
  br label %ret
bb80:
  %t282 = load i64, ptr %l9, !tbaa !24
  %t284 = icmp slt i64 %t282, 0
  br i1 %t284, label %bb81, label %bb82
bb81:
  store %olang.scope zeroinitializer, ptr %s11
  %t286 = load ptr, ptr %l0, !tbaa !29
  %t287 = load %"compiler/source:Span", ptr %l1
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %s11, ptr %t286, %"compiler/source:Span" %t287, { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d8, i32 0, i32 1) })
  br label %bb83
bb82:
  br label %bb85
bb83:
  %t290 = load ptr, ptr %l0, !tbaa !29
  %t291 = load %"compiler/source:Span", ptr %l1
  %t294 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v1, ptr %t290, %"compiler/source:Span" %t291)
  store ptr %t294, ptr %l158
  br label %bb84
bb84:
  %t295 = load ptr, ptr %l158, !tbaa !29
  call void @__olang_scope_close(ptr %s11)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t295, ptr %rv
  br label %ret
bb85:
  %t297 = load ptr, ptr %l0, !tbaa !29
  store ptr %t297, ptr %l160, !tbaa !29
  %t298 = load ptr, ptr %l0, !tbaa !29
  store ptr %t298, ptr %l161, !tbaa !29
  %t299 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t299, ptr %l162
  %t300 = load ptr, ptr %l0, !tbaa !29
  %t301 = load %"compiler/source:Span", ptr %l1
  %t302 = load i64, ptr %l9, !tbaa !24
  %t306 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalPlace(ptr %v0, ptr %v1, ptr %t300, %"compiler/source:Span" %t301, i64 %t302)
  store ptr %t306, ptr %l166
  br label %bb86
bb86:
  %t307 = load ptr, ptr %l161, !tbaa !29
  %t308 = load %"compiler/source:Span", ptr %l162
  %t309 = load ptr, ptr %l166, !tbaa !29
  %t310 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v1, ptr %v1, ptr %t307, %"compiler/source:Span" %t308, ptr %t309)
  store ptr %t310, ptr %l167
  br label %bb87
bb87:
  %t311 = load i32, ptr %l2, !tbaa !23
  %t312 = load ptr, ptr %l160, !tbaa !29
  %t313 = load ptr, ptr %l167, !tbaa !29
  %t315 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrNarrowed(ptr %v0, ptr %v1, ptr %v1, ptr %t312, ptr %t313, i32 %t311)
  store ptr %t315, ptr %l169
  br label %bb88
bb88:
  %t316 = load ptr, ptr %l169, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t316, ptr %rv
  br label %ret
bb89:
  %t318 = getelementptr %"compiler/names:Ref", ptr %l5, i32 0, i32 0
  %t319 = load i32, ptr %t318, !range !{i32 0, i32 9}
  %t321 = trunc i64 2 to i32
  %t322 = icmp eq i32 %t319, %t321
  br i1 %t322, label %bb90, label %bb91
bb90:
  %t324 = load ptr, ptr %l0, !tbaa !29
  %t325 = getelementptr %"compiler/names:Ref", ptr %l5, i32 0, i32 1
  %t326 = load i64, ptr %t325, !tbaa !24
  %t327 = load i32, ptr %l2, !tbaa !23
  %t331 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eglobalType(ptr %v0, ptr %t324, i64 %t326, i32 %t327)
  store i32 %t331, ptr %l176
  br label %bb92
bb91:
  br label %bb97
bb92:
  %t332 = load i32, ptr %l176, !tbaa !23
  store i32 %t332, ptr %l12, !tbaa !23
  %t333 = load i32, ptr %l12, !tbaa !23
  %t334 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t337 = icmp eq i32 %t333, %t334
  br i1 %t337, label %bb93, label %bb94
bb93:
  %t339 = load ptr, ptr %l0, !tbaa !29
  store ptr %t339, ptr %l180, !tbaa !29
  %t340 = load ptr, ptr %l180, !tbaa !29
  %t341 = getelementptr %"compiler/check:Checker", ptr %t340, i32 0, i32 138
  %t342 = load i64, ptr %t341, !tbaa !24
  %t344 = add i64 %t342, 1
  %t346 = load ptr, ptr %l180, !tbaa !29
  %t347 = getelementptr %"compiler/check:Checker", ptr %t346, i32 0, i32 138
  store i64 %t344, ptr %t347, !tbaa !24
  br label %bb95
bb94:
  br label %bb95
bb95:
  %t348 = load ptr, ptr %l0, !tbaa !29
  %t349 = load %"compiler/source:Span", ptr %l1
  %t350 = load %"compiler/source:Span", ptr %l1
  %t351 = load i32, ptr %l12, !tbaa !23
  %t352 = getelementptr %"compiler/names:Ref", ptr %l5, i32 0, i32 1
  %t353 = load i64, ptr %t352, !tbaa !24
  %t354 = load i32, ptr %l2, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t355
  %t356 = getelementptr { i64, [4 x i64] }, ptr %t355, i32 0, i32 0
  store i64 1, ptr %t356
  %t358 = insertvalue { %"compiler/source:Span", i32, i64, i32 } undef, %"compiler/source:Span" %t350, 0
  %t360 = insertvalue { %"compiler/source:Span", i32, i64, i32 } %t358, i32 %t351, 1
  %t362 = insertvalue { %"compiler/source:Span", i32, i64, i32 } %t360, i64 %t353, 2
  %t364 = insertvalue { %"compiler/source:Span", i32, i64, i32 } %t362, i32 %t354, 3
  %t365 = getelementptr { i64, [4 x i64] }, ptr %t355, i32 0, i32 1
  store { %"compiler/source:Span", i32, i64, i32 } %t364, ptr %t365
  %t366 = load { i64, [4 x i64] }, ptr %t355
  %t368 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store { i64, [4 x i64] } %t366, ptr %t368
  %t372 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v1, ptr %v1, ptr %t348, %"compiler/source:Span" %t349, ptr %t368)
  store ptr %t372, ptr %l191
  br label %bb96
bb96:
  %t373 = load ptr, ptr %l191, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t373, ptr %rv
  br label %ret
bb97:
  %t375 = getelementptr %"compiler/names:Ref", ptr %l5, i32 0, i32 0
  %t376 = load i32, ptr %t375, !range !{i32 0, i32 9}
  %t378 = trunc i64 6 to i32
  %t379 = icmp eq i32 %t376, %t378
  br i1 %t379, label %bb98, label %bb99
bb98:
  %t381 = load ptr, ptr %l0, !tbaa !29
  %t382 = load %"compiler/source:Span", ptr %l1
  %t383 = load i32, ptr %l2, !tbaa !23
  %t387 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebuildConst(ptr %v0, ptr %v1, ptr %t381, %"compiler/source:Span" %t382, i32 %t383)
  store ptr %t387, ptr %l198
  br label %bb100
bb99:
  br label %bb101
bb100:
  %t388 = load ptr, ptr %l198, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t388, ptr %rv
  br label %ret
bb101:
  %t390 = getelementptr %"compiler/names:Ref", ptr %l5, i32 0, i32 0
  %t391 = load i32, ptr %t390, !range !{i32 0, i32 9}
  %t393 = trunc i64 0 to i32
  %t394 = icmp eq i32 %t391, %t393
  br i1 %t394, label %bb102, label %bb103
bb102:
  %t396 = load ptr, ptr %l0, !tbaa !29
  %t397 = load i32, ptr %l2, !tbaa !23
  %t400 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t396, i32 %t397)
  store { i64, ptr } %t400, ptr %l205
  br label %bb104
bb103:
  store i1 false, ptr %l202, !tbaa !21
  br label %bb106
bb104:
  %t401 = load { i64, ptr }, ptr %l205, !tbaa !27
  %t402 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t401, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d9, i32 0, i32 1) })
  store i1 %t402, ptr %l206
  br label %bb105
bb105:
  %t403 = load i1, ptr %l206, !tbaa !21
  store i1 %t403, ptr %l202, !tbaa !21
  br label %bb106
bb106:
  %t404 = load i1, ptr %l202, !tbaa !21
  br i1 %t404, label %bb107, label %bb108
bb107:
  %t405 = load ptr, ptr %l0, !tbaa !29
  %t406 = load %"compiler/source:Span", ptr %l1
  %t407 = load i32, ptr %l3, !tbaa !23
  %t411 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypedHole(ptr %v0, ptr %v1, ptr %t405, %"compiler/source:Span" %t406, i32 %t407)
  store ptr %t411, ptr %l210
  br label %bb109
bb108:
  br label %bb110
bb109:
  %t412 = load ptr, ptr %l210, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t412, ptr %rv
  br label %ret
bb110:
  %t414 = getelementptr %"compiler/names:Ref", ptr %l5, i32 0, i32 0
  %t415 = load i32, ptr %t414, !range !{i32 0, i32 9}
  %t417 = trunc i64 0 to i32
  %t418 = icmp eq i32 %t415, %t417
  br i1 %t418, label %bb111, label %bb112
bb111:
  store %olang.scope zeroinitializer, ptr %s16
  %t420 = load ptr, ptr %l0, !tbaa !29
  %t422 = getelementptr %"compiler/check:Checker", ptr %t420, i32 0, i32 94
  store ptr %t422, ptr %l215, !tbaa !29
  %t423 = load ptr, ptr %l0, !tbaa !29
  %t425 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t423)
  store ptr %t425, ptr %l217
  br label %bb113
bb112:
  br label %bb151
bb113:
  %t426 = load ptr, ptr %l217, !tbaa !29
  %t428 = getelementptr %"compiler/check:frame", ptr %t426, i32 0, i32 0
  %t429 = load i64, ptr %t428, !tbaa !24
  %t430 = load i32, ptr %l2, !tbaa !23
  %t432 = sext i32 %t430 to i64
  %t435 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s16, i64 %t429, i64 %t432)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t435, ptr %l222
  br label %bb114
bb114:
  %t436 = load ptr, ptr %l215, !tbaa !29
  %t437 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l222
  %t438 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2ed2e5427629ba63a7110fc86d969058(ptr %v0, ptr %t436, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t437)
  store i1 %t438, ptr %l223
  br label %bb115
bb115:
  %t439 = load i1, ptr %l223, !tbaa !21
  %t440 = xor i1 %t439, true
  br i1 %t440, label %bb116, label %bb117
bb116:
  %t442 = load ptr, ptr %l0, !tbaa !29
  %t444 = getelementptr %"compiler/check:Checker", ptr %t442, i32 0, i32 93
  store ptr %t444, ptr %l227, !tbaa !29
  %t445 = load ptr, ptr %l0, !tbaa !29
  %t447 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t445)
  store ptr %t447, ptr %l229
  br label %bb118
bb117:
  store i1 false, ptr %l225, !tbaa !21
  br label %bb121
bb118:
  %t448 = load ptr, ptr %l229, !tbaa !29
  %t450 = getelementptr %"compiler/check:frame", ptr %t448, i32 0, i32 1
  %t451 = load i64, ptr %t450, !tbaa !24
  %t452 = load i32, ptr %l2, !tbaa !23
  %t454 = sext i32 %t452 to i64
  %t457 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s16, i64 %t451, i64 %t454)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t457, ptr %l234
  br label %bb119
bb119:
  %t458 = load ptr, ptr %l227, !tbaa !29
  %t459 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l234
  %t460 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2ed2e5427629ba63a7110fc86d969058(ptr %v0, ptr %t458, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t459)
  store i1 %t460, ptr %l235
  br label %bb120
bb120:
  %t461 = load i1, ptr %l235, !tbaa !21
  %t462 = xor i1 %t461, true
  store i1 %t462, ptr %l225, !tbaa !21
  br label %bb121
bb121:
  %t464 = load i1, ptr %l225, !tbaa !21
  br i1 %t464, label %bb122, label %bb123
bb122:
  %t465 = load ptr, ptr %l0, !tbaa !29
  %t467 = getelementptr %"compiler/check:Checker", ptr %t465, i32 0, i32 1
  %t468 = load ptr, ptr %t467, !tbaa !29
  %t470 = getelementptr %"compiler/generic:Program", ptr %t468, i32 0, i32 1
  %t471 = load ptr, ptr %t470, !tbaa !29
  %t472 = load i32, ptr %l2, !tbaa !23
  %t475 = call i1 @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eImportSaid(ptr %v0, ptr %t471, i32 %t472)
  store i1 %t475, ptr %l242
  br label %bb124
bb123:
  store i1 false, ptr %l237, !tbaa !21
  br label %bb125
bb124:
  %t476 = load i1, ptr %l242, !tbaa !21
  %t477 = xor i1 %t476, true
  store i1 %t477, ptr %l237, !tbaa !21
  br label %bb125
bb125:
  %t479 = load i1, ptr %l237, !tbaa !21
  br i1 %t479, label %bb126, label %bb127
bb126:
  store %olang.scope zeroinitializer, ptr %s17
  %t480 = load ptr, ptr %l0, !tbaa !29
  store ptr %t480, ptr %l244, !tbaa !29
  %t481 = load ptr, ptr %l0, !tbaa !29
  %t482 = load i32, ptr %l2, !tbaa !23
  %t485 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t481, i32 %t482)
  store { i64, ptr } %t485, ptr %l247
  br label %bb128
bb127:
  br label %bb149
bb128:
  %t486 = load ptr, ptr %l244, !tbaa !29
  %t487 = load { i64, ptr }, ptr %l247, !tbaa !27
  %t488 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esuggest(ptr %v0, ptr %v0, ptr %s17, ptr %t486, { i64, ptr } %t487, i1 true)
  store { i64, ptr } %t488, ptr %l248
  br label %bb129
bb129:
  %t489 = load { i64, ptr }, ptr %l248, !tbaa !27
  store { i64, ptr } %t489, ptr %l13, !tbaa !27
  %t490 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t492 = extractvalue { i64, ptr } %t490, 0
  %t494 = icmp eq i64 %t492, 0
  br i1 %t494, label %bb130, label %bb131
bb130:
  store %olang.scope zeroinitializer, ptr %s18
  %t496 = load ptr, ptr %l0, !tbaa !29
  store ptr %t496, ptr %l252, !tbaa !29
  %t497 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t497, ptr %l253
  %t498 = load ptr, ptr %l0, !tbaa !29
  %t499 = load i32, ptr %l2, !tbaa !23
  %t502 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %s18, ptr %t498, i32 %t499)
  store { i64, ptr } %t502, ptr %l256
  br label %bb132
bb131:
  %t503 = load ptr, ptr %l0, !tbaa !29
  %t505 = getelementptr %"compiler/check:Checker", ptr %t503, i32 0, i32 1
  %t506 = load ptr, ptr %t505, !tbaa !29
  %t508 = getelementptr %"compiler/generic:Program", ptr %t506, i32 0, i32 2
  %t509 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t512 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s17, ptr %t508, { i64, ptr } %t509)
  store i32 %t512, ptr %l264
  br label %bb135
bb132:
  %t513 = load { i64, ptr }, ptr %l256, !tbaa !27
  %t514 = extractvalue { i64, ptr } %t513, 0
  %t515 = extractvalue { i64, ptr } %t513, 1
  %t516 = mul i64 %t514, 1
  %t517 = call ptr @__olang_scope_alloc(ptr %s18, i64 %t516)
  call void @llvm.memcpy.p0.p0.i64(ptr %t517, ptr %t515, i64 %t516, i1 false)
  %t518 = insertvalue { i64, ptr } undef, i64 %t514, 0
  %t519 = insertvalue { i64, ptr } %t518, ptr %t517, 1
  %t521 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnknownName(ptr %s18, ptr %s18, { i64, ptr } %t519)
  store %"compiler/diagmsg:Msg" %t521, ptr %l258
  br label %bb133
bb133:
  %t522 = load ptr, ptr %l252, !tbaa !29
  %t523 = load %"compiler/source:Span", ptr %l253
  %t524 = load %"compiler/diagmsg:Msg", ptr %l258
  %t525 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s18, ptr %t522, %"compiler/source:Span" %t523, %"compiler/diagmsg:Msg" %t524)
  store i64 %t525, ptr %l259
  br label %bb134
bb134:
  call void @__olang_scope_close(ptr %s18)
  br label %bb145
bb135:
  %t526 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t527 = load i32, ptr %l264, !tbaa !23
  %t529 = icmp ne i32 %t527, %t526
  br i1 %t529, label %bb136, label %bb137
bb136:
  store %olang.scope zeroinitializer, ptr %s20
  %t531 = load ptr, ptr %l0, !tbaa !29
  store ptr %t531, ptr %l267, !tbaa !29
  %t532 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t532, ptr %l268
  %t533 = load ptr, ptr %l0, !tbaa !29
  %t534 = load i32, ptr %l2, !tbaa !23
  %t537 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %s20, ptr %t533, i32 %t534)
  store { i64, ptr } %t537, ptr %l271
  br label %bb138
bb137:
  store %olang.scope zeroinitializer, ptr %s21
  %t538 = load ptr, ptr %l0, !tbaa !29
  store ptr %t538, ptr %l276, !tbaa !29
  %t539 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t539, ptr %l277
  %t540 = load ptr, ptr %l0, !tbaa !29
  %t541 = load i32, ptr %l2, !tbaa !23
  %t544 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %s21, ptr %t540, i32 %t541)
  store { i64, ptr } %t544, ptr %l280
  br label %bb141
bb138:
  %t545 = load { i64, ptr }, ptr %l271, !tbaa !27
  %t546 = extractvalue { i64, ptr } %t545, 0
  %t547 = extractvalue { i64, ptr } %t545, 1
  %t548 = mul i64 %t546, 1
  %t549 = call ptr @__olang_scope_alloc(ptr %s20, i64 %t548)
  call void @llvm.memcpy.p0.p0.i64(ptr %t549, ptr %t547, i64 %t548, i1 false)
  %t550 = insertvalue { i64, ptr } undef, i64 %t546, 0
  %t551 = insertvalue { i64, ptr } %t550, ptr %t549, 1
  %t552 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t555 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnknownNumberType(ptr %s20, ptr %s17, ptr %s20, { i64, ptr } %t551, { i64, ptr } %t552)
  store %"compiler/diagmsg:Msg" %t555, ptr %l274
  br label %bb139
bb139:
  %t556 = load ptr, ptr %l267, !tbaa !29
  %t557 = load %"compiler/source:Span", ptr %l268
  %t558 = load %"compiler/diagmsg:Msg", ptr %l274
  %t559 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s20, ptr %t556, %"compiler/source:Span" %t557, %"compiler/diagmsg:Msg" %t558)
  store i64 %t559, ptr %l275
  br label %bb140
bb140:
  call void @__olang_scope_close(ptr %s20)
  br label %bb144
bb141:
  %t560 = load { i64, ptr }, ptr %l280, !tbaa !27
  %t561 = extractvalue { i64, ptr } %t560, 0
  %t562 = extractvalue { i64, ptr } %t560, 1
  %t563 = mul i64 %t561, 1
  %t564 = call ptr @__olang_scope_alloc(ptr %s21, i64 %t563)
  call void @llvm.memcpy.p0.p0.i64(ptr %t564, ptr %t562, i64 %t563, i1 false)
  %t565 = insertvalue { i64, ptr } undef, i64 %t561, 0
  %t566 = insertvalue { i64, ptr } %t565, ptr %t564, 1
  %t567 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t570 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnknownNameMeant(ptr %s21, ptr %s17, ptr %s21, { i64, ptr } %t566, { i64, ptr } %t567)
  store %"compiler/diagmsg:Msg" %t570, ptr %l283
  br label %bb142
bb142:
  %t571 = load ptr, ptr %l276, !tbaa !29
  %t572 = load %"compiler/source:Span", ptr %l277
  %t573 = load %"compiler/diagmsg:Msg", ptr %l283
  %t574 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s21, ptr %t571, %"compiler/source:Span" %t572, %"compiler/diagmsg:Msg" %t573)
  store i64 %t574, ptr %l284
  br label %bb143
bb143:
  call void @__olang_scope_close(ptr %s21)
  br label %bb144
bb144:
  br label %bb145
bb145:
  %t575 = load ptr, ptr %l0, !tbaa !29
  %t577 = getelementptr %"compiler/check:Checker", ptr %t575, i32 0, i32 94
  store ptr %t577, ptr %l286, !tbaa !29
  %t578 = load ptr, ptr %l0, !tbaa !29
  %t580 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t578)
  store ptr %t580, ptr %l288
  br label %bb146
bb146:
  %t581 = load ptr, ptr %l288, !tbaa !29
  %t583 = getelementptr %"compiler/check:frame", ptr %t581, i32 0, i32 0
  %t584 = load i64, ptr %t583, !tbaa !24
  %t585 = load i32, ptr %l2, !tbaa !23
  %t587 = sext i32 %t585 to i64
  %t590 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s17, i64 %t584, i64 %t587)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t590, ptr %l293
  br label %bb147
bb147:
  %t591 = load ptr, ptr %l286, !tbaa !29
  %t592 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l293
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1308596c866d4be061d9da9113abde88(ptr %v0, ptr %t591, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t592, i1 true)
  br label %bb148
bb148:
  call void @__olang_scope_close(ptr %s17)
  br label %bb149
bb149:
  %t593 = load ptr, ptr %l0, !tbaa !29
  %t594 = load %"compiler/source:Span", ptr %l1
  %t597 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v1, ptr %t593, %"compiler/source:Span" %t594)
  store ptr %t597, ptr %l296
  br label %bb150
bb150:
  %t598 = load ptr, ptr %l296, !tbaa !29
  call void @__olang_scope_close(ptr %s16)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t598, ptr %rv
  br label %ret
bb151:
  %t600 = getelementptr %"compiler/names:Ref", ptr %l5, i32 0, i32 0
  %t601 = load i32, ptr %t600, !range !{i32 0, i32 9}
  %t603 = trunc i64 7 to i32
  %t604 = icmp eq i32 %t601, %t603
  br i1 %t604, label %bb152, label %bb153
bb152:
  store %olang.scope zeroinitializer, ptr %s22
  %t606 = load ptr, ptr %l0, !tbaa !29
  store ptr %t606, ptr %l300, !tbaa !29
  %t607 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t607, ptr %l301
  %t608 = load ptr, ptr %l0, !tbaa !29
  %t609 = load i32, ptr %l2, !tbaa !23
  %t612 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t608, i32 %t609)
  store { i64, ptr } %t612, ptr %l304
  br label %bb154
bb153:
  br label %bb158
bb154:
  %t613 = load { i64, ptr }, ptr %l304, !tbaa !27
  %t614 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeNotAValue(ptr %v0, ptr %s22, { i64, ptr } %t613)
  store %"compiler/diagmsg:Msg" %t614, ptr %l305
  br label %bb155
bb155:
  %t615 = load ptr, ptr %l300, !tbaa !29
  %t616 = load %"compiler/source:Span", ptr %l301
  %t617 = load %"compiler/diagmsg:Msg", ptr %l305
  %t618 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s22, ptr %t615, %"compiler/source:Span" %t616, %"compiler/diagmsg:Msg" %t617)
  store i64 %t618, ptr %l306
  br label %bb156
bb156:
  %t619 = load ptr, ptr %l0, !tbaa !29
  %t620 = load %"compiler/source:Span", ptr %l1
  %t623 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v1, ptr %t619, %"compiler/source:Span" %t620)
  store ptr %t623, ptr %l309
  br label %bb157
bb157:
  %t624 = load ptr, ptr %l309, !tbaa !29
  call void @__olang_scope_close(ptr %s22)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t624, ptr %rv
  br label %ret
bb158:
  %t626 = getelementptr %"compiler/names:Ref", ptr %l5, i32 0, i32 0
  %t627 = load i32, ptr %t626, !range !{i32 0, i32 9}
  %t629 = trunc i64 4 to i32
  %t630 = icmp eq i32 %t627, %t629
  br i1 %t630, label %bb159, label %bb160
bb159:
  store %olang.scope zeroinitializer, ptr %s23
  %t632 = load ptr, ptr %l0, !tbaa !29
  %t633 = load %"compiler/source:Span", ptr %l1
  %t634 = load i32, ptr %l2, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t635
  %t636 = getelementptr { i64, [4 x i64] }, ptr %t635, i32 0, i32 0
  store i64 0, ptr %t636
  %t638 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t633, 0
  %t640 = insertvalue { %"compiler/source:Span", i32 } %t638, i32 %t634, 1
  %t641 = getelementptr { i64, [4 x i64] }, ptr %t635, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t640, ptr %t641
  %t642 = load { i64, [4 x i64] }, ptr %t635
  %t644 = call ptr @__olang_scope_alloc_a(ptr %s23, i64 40, i64 8)
  store { i64, [4 x i64] } %t642, ptr %t644
  %t647 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeNamed(ptr %v0, ptr %s23, ptr %t632, ptr %t644)
  store i32 %t647, ptr %l318
  br label %bb161
bb160:
  br label %bb173
bb161:
  %t648 = load i32, ptr %l318, !tbaa !23
  store i32 %t648, ptr %l14, !tbaa !23
  %t649 = load i32, ptr %l14, !tbaa !23
  %t651 = icmp sge i32 %t649, 0
  br i1 %t651, label %bb162, label %bb163
bb162:
  %t653 = load ptr, ptr %l0, !tbaa !29
  %t654 = load i32, ptr %l14, !tbaa !23
  %t657 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisEnum(ptr %v0, ptr %t653, i32 %t654)
  store i1 %t657, ptr %l324
  br label %bb164
bb163:
  store i1 false, ptr %l321, !tbaa !21
  br label %bb165
bb164:
  %t658 = load i1, ptr %l324, !tbaa !21
  %t659 = xor i1 %t658, true
  store i1 %t659, ptr %l321, !tbaa !21
  br label %bb165
bb165:
  %t661 = load i1, ptr %l321, !tbaa !21
  br i1 %t661, label %bb166, label %bb167
bb166:
  store %olang.scope zeroinitializer, ptr %s24
  %t662 = load ptr, ptr %l0, !tbaa !29
  store ptr %t662, ptr %l326, !tbaa !29
  %t663 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t663, ptr %l327
  %t664 = load ptr, ptr %l0, !tbaa !29
  %t665 = load i32, ptr %l2, !tbaa !23
  %t668 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t664, i32 %t665)
  store { i64, ptr } %t668, ptr %l330
  br label %bb168
bb167:
  br label %bb171
bb168:
  %t669 = load { i64, ptr }, ptr %l330, !tbaa !27
  %t670 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeNotAValue(ptr %v0, ptr %s24, { i64, ptr } %t669)
  store %"compiler/diagmsg:Msg" %t670, ptr %l331
  br label %bb169
bb169:
  %t671 = load ptr, ptr %l326, !tbaa !29
  %t672 = load %"compiler/source:Span", ptr %l327
  %t673 = load %"compiler/diagmsg:Msg", ptr %l331
  %t674 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s24, ptr %t671, %"compiler/source:Span" %t672, %"compiler/diagmsg:Msg" %t673)
  store i64 %t674, ptr %l332
  br label %bb170
bb170:
  call void @__olang_scope_close(ptr %s24)
  br label %bb171
bb171:
  %t675 = load ptr, ptr %l0, !tbaa !29
  %t676 = load %"compiler/source:Span", ptr %l1
  %t679 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v1, ptr %t675, %"compiler/source:Span" %t676)
  store ptr %t679, ptr %l335
  br label %bb172
bb172:
  %t680 = load ptr, ptr %l335, !tbaa !29
  call void @__olang_scope_close(ptr %s23)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t680, ptr %rv
  br label %ret
bb173:
  %t682 = getelementptr %"compiler/names:Ref", ptr %l5, i32 0, i32 0
  %t683 = load i32, ptr %t682, !range !{i32 0, i32 9}
  %t685 = trunc i64 3 to i32
  %t686 = icmp eq i32 %t683, %t685
  br i1 %t686, label %bb174, label %bb175
bb174:
  %t688 = load ptr, ptr %l0, !tbaa !29
  store ptr %t688, ptr %l339, !tbaa !29
  %t689 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t689, ptr %l340
  %t690 = load ptr, ptr %l0, !tbaa !29
  %t692 = getelementptr %"compiler/check:Checker", ptr %t690, i32 0, i32 1
  %t693 = load ptr, ptr %t692, !tbaa !29
  %t694 = getelementptr %"compiler/names:Ref", ptr %l5, i32 0, i32 1
  %t695 = load i64, ptr %t694, !tbaa !24
  %t696 = load i32, ptr %l2, !tbaa !23
  %t700 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnNamed(ptr %v0, ptr %t693, i64 %t695, i32 %t696)
  store i64 %t700, ptr %l345
  br label %bb176
bb175:
  br label %bb182
bb176:
  %t701 = icmp sge i64 0, 0
  br i1 %t701, label %bb177, label %bb178
bb177:
  %t703 = icmp sle i64 0, 2305843009213693951
  br i1 %t703, label %bb179, label %bb180
bb178:
  call void @__olang_check_failed(ptr @olang_loc_d573417cd970c31d_c74d35b0202ac379)
  unreachable
bb179:
  %t705 = mul i64 0, 4
  %t706 = insertvalue { i64, ptr } undef, i64 0, 0
  %t707 = insertvalue { i64, ptr } %t706, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t708 = load ptr, ptr %l339, !tbaa !29
  %t709 = load %"compiler/source:Span", ptr %l340
  %t710 = load i64, ptr %l345, !tbaa !24
  %t712 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efnValue(ptr %v0, ptr %v1, ptr %v1, ptr %t708, %"compiler/source:Span" %t709, i64 %t710, { i64, ptr } %t707)
  store ptr %t712, ptr %l349
  br label %bb181
bb180:
  call void @__olang_check_failed(ptr @olang_loc_d573417cd970c31d_c74d35b0202ac379)
  unreachable
bb181:
  %t713 = load ptr, ptr %l349, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t713, ptr %rv
  br label %ret
bb182:
  %t715 = getelementptr %"compiler/names:Ref", ptr %l5, i32 0, i32 0
  %t716 = load i32, ptr %t715, !range !{i32 0, i32 9}
  %t718 = trunc i64 8 to i32
  %t719 = icmp eq i32 %t716, %t718
  br i1 %t719, label %bb183, label %bb184
bb183:
  %t721 = load ptr, ptr %l0, !tbaa !29
  %t723 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t721)
  store ptr %t723, ptr %l355
  br label %bb185
bb184:
  br label %bb197
bb185:
  %t724 = load ptr, ptr %l355, !tbaa !29
  %t726 = getelementptr %"compiler/check:frame", ptr %t724, i32 0, i32 4
  %t727 = getelementptr %"compiler/generic:Context", ptr %t726, i32 0, i32 2
  %t728 = load i32, ptr %l2, !tbaa !23
  %t731 = call { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_Hfd0413fe7fd4e5914f6cad5b418b7a6d(ptr %v0, ptr %t727, i32 %t728)
  %t732 = extractvalue { i32, i32 } %t731, 1
  %t733 = extractvalue { i32, i32 } %t731, 0
  store i32 %t733, ptr %l360
  %t734 = icmp ne i32 %t733, 0
  br i1 %t734, label %bb187, label %ok.735, !prof !99
ok.735:
  store i32 %t732, ptr %l359
  br label %bb186
bb186:
  %t736 = load i32, ptr %l359, !tbaa !23
  store i32 %t736, ptr %l353, !tbaa !23
  br label %bb189
bb187:
  br label %bb188
bb188:
  %t737 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t737, ptr %l353, !tbaa !23
  br label %bb189
bb189:
  %t739 = load i32, ptr %l353, !tbaa !23
  %t741 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t744 = icmp ne i32 %t739, %t741
  br i1 %t744, label %bb190, label %bb191
bb190:
  store %olang.scope zeroinitializer, ptr %s27
  %t746 = load ptr, ptr %l0, !tbaa !29
  store ptr %t746, ptr %l365, !tbaa !29
  %t747 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t747, ptr %l366
  %t748 = load ptr, ptr %l0, !tbaa !29
  %t749 = load i32, ptr %l2, !tbaa !23
  %t752 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t748, i32 %t749)
  store { i64, ptr } %t752, ptr %l369
  br label %bb192
bb191:
  br label %bb196
bb192:
  %t753 = load { i64, ptr }, ptr %l369, !tbaa !27
  %t754 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeVarAsValue(ptr %v0, ptr %s27, { i64, ptr } %t753)
  store %"compiler/diagmsg:Msg" %t754, ptr %l370
  br label %bb193
bb193:
  %t755 = load ptr, ptr %l365, !tbaa !29
  %t756 = load %"compiler/source:Span", ptr %l366
  %t757 = load %"compiler/diagmsg:Msg", ptr %l370
  %t758 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s27, ptr %t755, %"compiler/source:Span" %t756, %"compiler/diagmsg:Msg" %t757)
  store i64 %t758, ptr %l371
  br label %bb194
bb194:
  %t759 = load ptr, ptr %l0, !tbaa !29
  %t760 = load %"compiler/source:Span", ptr %l1
  %t763 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v1, ptr %t759, %"compiler/source:Span" %t760)
  store ptr %t763, ptr %l374
  br label %bb195
bb195:
  %t764 = load ptr, ptr %l374, !tbaa !29
  call void @__olang_scope_close(ptr %s27)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t764, ptr %rv
  br label %ret
bb196:
  br label %bb197
bb197:
  %t766 = load ptr, ptr %l0, !tbaa !29
  %t767 = load %"compiler/source:Span", ptr %l1
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %s0, ptr %t766, %"compiler/source:Span" %t767, { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d10, i32 0, i32 1) })
  br label %bb198
bb198:
  %t770 = load ptr, ptr %l0, !tbaa !29
  %t771 = load %"compiler/source:Span", ptr %l1
  %t774 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v1, ptr %t770, %"compiler/source:Span" %t771)
  store ptr %t774, ptr %l380
  br label %bb199
bb199:
  %t775 = load ptr, ptr %l380, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t775, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca i1
  %l14 = alloca %"compiler/source:Span"
  %l15 = alloca ptr
  %l16 = alloca i1
  %l25 = alloca ptr
  %l27 = alloca %"compiler/source:Span"
  %l29 = alloca %"compiler/source:Span"
  %l31 = alloca { i64, ptr }
  %l33 = alloca %"compiler/source:Span"
  %l35 = alloca %"compiler/source:Span"
  %s2 = alloca %olang.scope
  %rv = alloca %"compiler/source:Span"
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 30}
  %t8 = icmp eq i64 %t6, 2
  store i1 %t8, ptr %l7, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l7, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", ptr }, ptr %t12, i32 0, i32 1
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load ptr, ptr %l2, !tbaa !29
  %t20 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopOf(ptr %v0, ptr %v1, ptr %t16, ptr %t17)
  store %"compiler/source:Span" %t20, ptr %l14
  br label %bb6
bb6:
  %t21 = load %"compiler/source:Span", ptr %l14
  store %"compiler/source:Span" %t21, ptr %rv
  br label %ret
bb7:
  %t22 = load ptr, ptr %l1, !tbaa !29
  store ptr %t22, ptr %l15, !tbaa !29
  store i1 false, ptr %l16, !tbaa !21
  %t23 = load ptr, ptr %l15, !tbaa !29
  %t24 = icmp ne ptr %t23, null
  br i1 %t24, label %bb8, label %bb9
bb8:
  %t26 = load ptr, ptr %l15, !tbaa !29
  %t27 = load i64, ptr %t26, !range !{i64 0, i64 30}
  %t29 = icmp eq i64 %t27, 5
  store i1 %t29, ptr %l16, !tbaa !21
  br label %bb9
bb9:
  %t30 = load i1, ptr %l16, !tbaa !21
  br i1 %t30, label %bb10, label %bb11
bb10:
  %t31 = load ptr, ptr %l1, !tbaa !29
  %t33 = getelementptr { i64, [4 x i64] }, ptr %t31, i32 0, i32 1
  %t34 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t33, i32 0, i32 1
  %t35 = load i32, ptr %t34, !range !{i32 0, i32 114}
  store i32 %t35, ptr %l3
  %t37 = load ptr, ptr %l1, !tbaa !29
  %t39 = getelementptr { i64, [4 x i64] }, ptr %t37, i32 0, i32 1
  %t40 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t39, i32 0, i32 2
  %t41 = load ptr, ptr %t40
  store ptr %t41, ptr %l4, !tbaa !29
  %t43 = load ptr, ptr %l1, !tbaa !29
  %t45 = getelementptr { i64, [4 x i64] }, ptr %t43, i32 0, i32 1
  %t46 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t45, i32 0, i32 3
  %t47 = load ptr, ptr %t46
  store ptr %t47, ptr %l5, !tbaa !29
  br label %bb12
bb11:
  br label %bb17
bb12:
  store %olang.scope zeroinitializer, ptr %s2
  %t49 = load ptr, ptr %l0, !tbaa !29
  store ptr %t49, ptr %l25, !tbaa !29
  %t50 = load ptr, ptr %l4, !tbaa !29
  %t52 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t50)
  store %"compiler/source:Span" %t52, ptr %l27
  br label %bb13
bb13:
  %t53 = load ptr, ptr %l5, !tbaa !29
  %t55 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t53)
  store %"compiler/source:Span" %t55, ptr %l29
  br label %bb14
bb14:
  %t56 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t58 = call { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eText(ptr %s2, i32 %t56)
  store { i64, ptr } %t58, ptr %l31
  br label %bb15
bb15:
  %t59 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t60 = extractvalue { i64, ptr } %t59, 0
  %t61 = load ptr, ptr %l25, !tbaa !29
  %t62 = load %"compiler/source:Span", ptr %l27
  %t63 = load %"compiler/source:Span", ptr %l29
  %t65 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebetween(ptr %v0, ptr %t61, %"compiler/source:Span" %t62, %"compiler/source:Span" %t63, i64 %t60)
  store %"compiler/source:Span" %t65, ptr %l33
  br label %bb16
bb16:
  call void @__olang_scope_close(ptr %s2)
  %t66 = load %"compiler/source:Span", ptr %l33
  store %"compiler/source:Span" %t66, ptr %rv
  br label %ret
bb17:
  br i1 true, label %bb18, label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb22
bb20:
  %t67 = load ptr, ptr %l1, !tbaa !29
  %t69 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t67)
  store %"compiler/source:Span" %t69, ptr %l35
  br label %bb21
bb21:
  %t70 = load %"compiler/source:Span", ptr %l35
  store %"compiler/source:Span" %t70, ptr %rv
  br label %ret
bb22:
  call void @__olang_check_failed(ptr @olang_loc_354044a632a7444d_aa07af71c262dc01)
  unreachable
ret:
  %rr = load %"compiler/source:Span", ptr %rv
  ret %"compiler/source:Span" %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epayloadRules(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i32
  %l3 = alloca { i64, ptr }
  %l4 = alloca %"compiler/generic:Context"
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca ptr
  %l13 = alloca i32
  %l14 = alloca { i64, ptr }
  %l17 = alloca i1
  %l20 = alloca %"compiler/generic:Context"
  %l28 = alloca { i64, ptr }
  %l39 = alloca { i64, ptr }
  %l46 = alloca ptr
  %l47 = alloca ptr
  %l54 = alloca i32
  %l60 = alloca { i64, ptr }
  %l62 = alloca i1
  %l67 = alloca ptr
  %l73 = alloca ptr
  %l82 = alloca { i64, [3 x i64] }
  %l86 = alloca { i64, ptr }
  %l89 = alloca { i64, ptr }
  %l92 = alloca %"compiler/diagmsg:Msg"
  %l93 = alloca i64
  %s0 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %t13 = alloca %"compiler/generic:Context", align 8
  %t149 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i32 %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t2 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_11, 0
  %t3 = insertvalue { ptr, ptr } %t2, ptr null, 1
  %t6 = extractvalue { ptr, ptr } %t3, 0
  %t7 = extractvalue { ptr, ptr } %t3, 1
  %t8 = call i1 @std_2fprelude_2farray_2eArray_3ccompiler_2fast_3aCaseDecl_26_3e_2eSome_3ccompiler_2fast_3aCaseDecl_26_2c_20_3f_3e(ptr %v1, ptr %s0, { i64, ptr } %t1, ptr %t6, ptr %t7)
  store i1 %t8, ptr %l17
  br label %bb1
bb1:
  %t9 = load i1, ptr %l17, !tbaa !21
  %t10 = xor i1 %t9, true
  br i1 %t10, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb3:
  br label %bb4
bb4:
  %t12 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2fgeneric_3aContext_2ector(ptr %t13, ptr %s0, i64 %t12, i64 -1)
  call void @llvm.memmove.p0.p0.i64(ptr %l20, ptr %t13, i64 160, i1 false)
  br label %bb5
bb5:
  call void @llvm.memmove.p0.p0.i64(ptr %l4, ptr %l20, i64 160, i1 false)
  %t15 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t15, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t17 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t19 = extractvalue { i64, ptr } %t17, 0
  store i64 %t19, ptr %l7, !tbaa !24
  br label %bb6
bb6:
  %t21 = load i64, ptr %l6, !tbaa !24
  %t22 = load i64, ptr %l7, !tbaa !24
  %t25 = icmp slt i64 %t21, %t22
  %t27 = xor i1 %t25, true
  br i1 %t27, label %bb7, label %bb8
bb7:
  br label %bb37
bb8:
  br label %bb9
bb9:
  %t29 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t29, ptr %l28, !tbaa !27
  %t30 = load i64, ptr %l6, !tbaa !24
  %t32 = getelementptr { i64, ptr }, ptr %l28, i32 0, i32 1
  %t33 = load ptr, ptr %t32, !tbaa !27
  %t34 = getelementptr ptr, ptr %t33, i64 %t30
  %t35 = load ptr, ptr %t34, !tbaa !39
  %t39 = getelementptr %"compiler/ast:CaseDecl", ptr %t35, i32 0, i32 2
  %t40 = load { i64, ptr }, ptr %t39, !tbaa !27
  store { i64, ptr } %t40, ptr %l9, !tbaa !27
  store i64 0, ptr %l10, !tbaa !24
  %t42 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t44 = extractvalue { i64, ptr } %t42, 0
  store i64 %t44, ptr %l11, !tbaa !24
  br label %bb10
bb10:
  store %olang.scope zeroinitializer, ptr %s5
  %t46 = load i64, ptr %l10, !tbaa !24
  %t47 = load i64, ptr %l11, !tbaa !24
  %t50 = icmp slt i64 %t46, %t47
  %t52 = xor i1 %t50, true
  br i1 %t52, label %bb11, label %bb12
bb11:
  call void @__olang_scope_close(ptr %s5)
  br label %bb35
bb12:
  br label %bb13
bb13:
  %t54 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t54, ptr %l39, !tbaa !27
  %t55 = load i64, ptr %l10, !tbaa !24
  %t57 = getelementptr { i64, ptr }, ptr %l39, i32 0, i32 1
  %t58 = load ptr, ptr %t57, !tbaa !27
  %t59 = getelementptr ptr, ptr %t58, i64 %t55
  %t60 = load ptr, ptr %t59, !tbaa !39
  store ptr %t60, ptr %l12, !tbaa !29
  %t62 = load ptr, ptr %l12, !tbaa !29
  %t64 = getelementptr %"compiler/ast:Param", ptr %t62, i32 0, i32 2
  %t65 = load ptr, ptr %t64, !tbaa !29
  %t67 = icmp eq ptr %t65, null
  br i1 %t67, label %bb14, label %bb15
bb14:
  call void @__olang_scope_close(ptr %s5)
  br label %bb34
bb15:
  br label %bb16
bb16:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr %"compiler/check:Checker", ptr %t69, i32 0, i32 1
  %t72 = load ptr, ptr %t71, !tbaa !29
  store ptr %t72, ptr %l46, !tbaa !29
  store ptr %l4, ptr %l47, !tbaa !29
  %t73 = load ptr, ptr %l12, !tbaa !29
  %t75 = getelementptr %"compiler/ast:Param", ptr %t73, i32 0, i32 2
  %t76 = load ptr, ptr %t75, !tbaa !29
  %t78 = icmp eq ptr %t76, null
  br i1 %t78, label %bb17, label %bb18
bb17:
  call void @__olang_check_failed(ptr @olang_loc_6508360cd81e00f5_c12e101ac5e9d251)
  unreachable
bb18:
  br label %bb19
bb19:
  %t80 = load ptr, ptr %l12, !tbaa !29
  %t82 = getelementptr %"compiler/ast:Param", ptr %t80, i32 0, i32 2
  %t83 = load ptr, ptr %t82, !tbaa !29
  %t85 = load ptr, ptr %l46, !tbaa !29
  %t86 = load ptr, ptr %l47, !tbaa !29
  %t88 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %s0, ptr %v1, ptr %t85, ptr %t86, ptr %t83)
  store i32 %t88, ptr %l54
  br label %bb20
bb20:
  %t89 = load i32, ptr %l54, !tbaa !23
  store i32 %t89, ptr %l13, !tbaa !23
  %t90 = load i32, ptr %l13, !tbaa !23
  %t91 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t94 = icmp eq i32 %t90, %t91
  br i1 %t94, label %bb21, label %bb22
bb21:
  call void @__olang_scope_close(ptr %s5)
  br label %bb34
bb22:
  br label %bb23
bb23:
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t97 = load i32, ptr %l13, !tbaa !23
  %t100 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epayloadBad(ptr %v0, ptr %s5, ptr %t96, i32 %t97)
  store { i64, ptr } %t100, ptr %l60
  br label %bb24
bb24:
  %t101 = load { i64, ptr }, ptr %l60, !tbaa !27
  store { i64, ptr } %t101, ptr %l14, !tbaa !27
  %t102 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t104 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s5, ptr %s5, { i64, ptr } %t102, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d12, i32 0, i32 1) })
  store i1 %t104, ptr %l62
  br label %bb25
bb25:
  %t105 = load i1, ptr %l62, !tbaa !21
  %t106 = xor i1 %t105, true
  br i1 %t106, label %bb26, label %bb27
bb26:
  store %olang.scope zeroinitializer, ptr %s8
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t110 = getelementptr %"compiler/check:Checker", ptr %t108, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !29
  %t113 = getelementptr %"compiler/generic:Program", ptr %t111, i32 0, i32 0
  %t114 = load ptr, ptr %t113, !tbaa !29
  %t116 = getelementptr %"compiler/load:Loader", ptr %t114, i32 0, i32 4
  %t117 = load ptr, ptr %t116, !tbaa !29
  store ptr %t117, ptr %l67, !tbaa !29
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t120 = getelementptr %"compiler/check:Checker", ptr %t118, i32 0, i32 1
  %t121 = load ptr, ptr %t120, !tbaa !29
  %t123 = getelementptr %"compiler/generic:Program", ptr %t121, i32 0, i32 0
  %t124 = load ptr, ptr %t123, !tbaa !29
  %t126 = getelementptr %"compiler/load:Loader", ptr %t124, i32 0, i32 10
  %t127 = load i64, ptr %l1, !tbaa !24
  %t130 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t126, i64 %t127)
  store ptr %t130, ptr %l73
  br label %bb28
bb27:
  br label %bb33
bb28:
  %t131 = load ptr, ptr %l73, !tbaa !29
  %t133 = getelementptr %"compiler/load:Module", ptr %t131, i32 0, i32 4
  %t134 = load i64, ptr %t133, !tbaa !24
  %t135 = load ptr, ptr %l12, !tbaa !29
  %t137 = getelementptr %"compiler/ast:Param", ptr %t135, i32 0, i32 0
  %t138 = getelementptr %"compiler/source:Span", ptr %t137, i32 0, i32 0
  %t139 = load i32, ptr %t138, !tbaa !23
  %t141 = sext i32 %t139 to i64
  %t142 = load ptr, ptr %l12, !tbaa !29
  %t144 = getelementptr %"compiler/ast:Param", ptr %t142, i32 0, i32 0
  %t145 = getelementptr %"compiler/source:Span", ptr %t144, i32 0, i32 1
  %t146 = load i32, ptr %t145, !tbaa !23
  %t148 = sext i32 %t146 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t149
  %t150 = getelementptr { i64, [3 x i64] }, ptr %t149, i32 0, i32 0
  store i64 3, ptr %t150
  %t152 = insertvalue { i64, i64, i64 } undef, i64 %t134, 0
  %t154 = insertvalue { i64, i64, i64 } %t152, i64 %t141, 1
  %t156 = insertvalue { i64, i64, i64 } %t154, i64 %t148, 2
  %t157 = getelementptr { i64, [3 x i64] }, ptr %t149, i32 0, i32 1
  store { i64, i64, i64 } %t156, ptr %t157
  %t158 = load { i64, [3 x i64] }, ptr %t149
  store { i64, [3 x i64] } %t158, ptr %l82
  %t159 = load ptr, ptr %l0, !tbaa !29
  %t160 = load ptr, ptr %l12, !tbaa !29
  %t162 = getelementptr %"compiler/ast:Param", ptr %t160, i32 0, i32 1
  %t163 = load i32, ptr %t162, !tbaa !23
  %t166 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t159, i32 %t163)
  store { i64, ptr } %t166, ptr %l86
  br label %bb29
bb29:
  %t167 = load ptr, ptr %l0, !tbaa !29
  %t168 = load i32, ptr %l13, !tbaa !23
  %t171 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s8, ptr %t167, i32 %t168)
  store { i64, ptr } %t171, ptr %l89
  br label %bb30
bb30:
  %t172 = load { i64, ptr }, ptr %l89, !tbaa !27
  %t173 = extractvalue { i64, ptr } %t172, 0
  %t174 = extractvalue { i64, ptr } %t172, 1
  %t175 = mul i64 %t173, 1
  %t176 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t175)
  call void @llvm.memcpy.p0.p0.i64(ptr %t176, ptr %t174, i64 %t175, i1 false)
  %t177 = insertvalue { i64, ptr } undef, i64 %t173, 0
  %t178 = insertvalue { i64, ptr } %t177, ptr %t176, 1
  %t179 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t180 = load { i64, ptr }, ptr %l86, !tbaa !27
  %t183 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePayloadHoldsRef(ptr %v0, ptr %s8, ptr %s5, ptr %s8, { i64, ptr } %t180, { i64, ptr } %t178, { i64, ptr } %t179)
  store %"compiler/diagmsg:Msg" %t183, ptr %l92
  br label %bb31
bb31:
  %t184 = load ptr, ptr %l67, !tbaa !29
  %t185 = load { i64, [3 x i64] }, ptr %l82
  %t186 = load %"compiler/diagmsg:Msg", ptr %l92
  %t187 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %s8, ptr %t184, { i64, [3 x i64] } %t185, %"compiler/diagmsg:Msg" %t186)
  store i64 %t187, ptr %l93
  br label %bb32
bb32:
  call void @__olang_scope_close(ptr %s8)
  br label %bb33
bb33:
  call void @__olang_scope_close(ptr %s5)
  br label %bb34
bb34:
  %t188 = load i64, ptr %l10, !tbaa !24
  %t190 = add i64 %t188, 1
  store i64 %t190, ptr %l10, !tbaa !24
  br label %bb10
bb35:
  br label %bb36
bb36:
  %t192 = load i64, ptr %l6, !tbaa !24
  %t194 = add i64 %t192, 1
  store i64 %t194, ptr %l6, !tbaa !24
  br label %bb6
bb37:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplaceHere(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca ptr
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca i64
  %lp14 = alloca ptr
  %lp15 = alloca ptr
  %l17 = alloca i32
  %l21 = alloca { i64, ptr }
  %l22 = alloca i1
  %l24 = alloca ptr
  %l25 = alloca %"compiler/source:Span"
  %l28 = alloca { i64, ptr }
  %l29 = alloca %"compiler/diagmsg:Msg"
  %l30 = alloca i64
  %l33 = alloca ptr
  %l35 = alloca i32
  %l39 = alloca i32
  %l45 = alloca ptr
  %l47 = alloca ptr
  %l66 = alloca { i64, ptr }
  %l71 = alloca { i64, ptr }
  %l72 = alloca i64
  %l77 = alloca { i64, ptr }
  %l84 = alloca %"compiler/source:Span"
  %l87 = alloca ptr
  %l89 = alloca i32
  %l91 = alloca i32
  %l93 = alloca ptr
  %l100 = alloca ptr
  %l101 = alloca ptr
  %l102 = alloca %"compiler/source:Span"
  %l104 = alloca i32
  %l108 = alloca i64
  %l109 = alloca ptr
  %l110 = alloca ptr
  %l111 = alloca %"compiler/source:Span"
  %l113 = alloca i32
  %l117 = alloca i64
  %l118 = alloca ptr
  %l122 = alloca i64
  %l127 = alloca ptr
  %l128 = alloca %"compiler/source:Span"
  %l129 = alloca %"compiler/source:Span"
  %l130 = alloca i32
  %l135 = alloca ptr
  %l141 = alloca ptr
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %rv = alloca ptr
  %t173 = alloca { i64, [2 x i64] }, align 8
  %t181 = alloca { i64, [5 x i64] }, align 8
  %t262 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store %"compiler/source:Span" %a2, ptr %l2
  store i32 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l3, !tbaa !23
  %t5 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t1, i32 %t2)
  store { i64, ptr } %t5, ptr %l21
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t7 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t6, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d13, i32 0, i32 1) })
  store i1 %t7, ptr %l22
  br label %bb2
bb2:
  %t8 = load i1, ptr %l22, !tbaa !21
  %t9 = xor i1 %t8, true
  br i1 %t9, label %bb3, label %bb4
bb3:
  store %olang.scope zeroinitializer, ptr %s1
  %t11 = load ptr, ptr %l0, !tbaa !29
  store ptr %t11, ptr %l24, !tbaa !29
  %t12 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t12, ptr %l25
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t14 = load i32, ptr %l3, !tbaa !23
  %t17 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t13, i32 %t14)
  store { i64, ptr } %t17, ptr %l28
  br label %bb5
bb4:
  br label %bb9
bb5:
  %t18 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t19 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePlaceMember(ptr %v0, ptr %s1, { i64, ptr } %t18)
  store %"compiler/diagmsg:Msg" %t19, ptr %l29
  br label %bb6
bb6:
  %t20 = load ptr, ptr %l24, !tbaa !29
  %t21 = load %"compiler/source:Span", ptr %l25
  %t22 = load %"compiler/diagmsg:Msg", ptr %l29
  %t23 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s1, ptr %t20, %"compiler/source:Span" %t21, %"compiler/diagmsg:Msg" %t22)
  store i64 %t23, ptr %l30
  br label %bb7
bb7:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t25 = load %"compiler/source:Span", ptr %l1
  %t28 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v1, ptr %t24, %"compiler/source:Span" %t25)
  store ptr %t28, ptr %l33
  br label %bb8
bb8:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t29 = load ptr, ptr %l33, !tbaa !29
  store ptr %t29, ptr %rv
  br label %ret
bb9:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplaceType(ptr %v0, ptr %t30)
  store i32 %t32, ptr %l35
  br label %bb10
bb10:
  %t33 = load i32, ptr %l35, !tbaa !23
  store i32 %t33, ptr %l4, !tbaa !23
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/check:Checker", ptr %t34, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !29
  %t38 = load i32, ptr %l4, !tbaa !23
  %t41 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCtorSig(ptr %v0, ptr %t37, i32 %t38)
  store i32 %t41, ptr %l39
  br label %bb11
bb11:
  %t42 = load i32, ptr %l39, !tbaa !23
  store i32 %t42, ptr %l5, !tbaa !23
  %t43 = load i32, ptr %l5, !tbaa !23
  %t44 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t47 = icmp eq i32 %t43, %t44
  br i1 %t47, label %bb12, label %bb13
bb12:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t50 = load %"compiler/source:Span", ptr %l1
  %t53 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v1, ptr %t49, %"compiler/source:Span" %t50)
  store ptr %t53, ptr %l45
  br label %bb14
bb13:
  br label %bb15
bb14:
  call void @__olang_scope_close(ptr %s0)
  %t54 = load ptr, ptr %l45, !tbaa !29
  store ptr %t54, ptr %rv
  br label %ret
bb15:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t55)
  store ptr %t57, ptr %l47
  br label %bb16
bb16:
  %t58 = load ptr, ptr %l47, !tbaa !29
  %t60 = getelementptr %"compiler/check:frame", ptr %t58, i32 0, i32 2
  %t61 = load i64, ptr %t60, !tbaa !24
  store i64 %t61, ptr %l6, !tbaa !24
  %t63 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t64 = load i32, ptr %t63, !tbaa !23
  %t66 = sext i32 %t64 to i64
  store i64 %t66, ptr %l7, !tbaa !24
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/check:Checker", ptr %t68, i32 0, i32 24
  %t71 = load i64, ptr %t70, !tbaa !24
  %t73 = icmp sge i64 %t71, 0
  br i1 %t73, label %bb17, label %bb18
bb17:
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t77 = getelementptr %"compiler/check:Checker", ptr %t75, i32 0, i32 24
  %t78 = load i64, ptr %t77, !tbaa !24
  store i64 %t78, ptr %l6, !tbaa !24
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"compiler/check:Checker", ptr %t80, i32 0, i32 25
  %t83 = getelementptr %"compiler/source:Span", ptr %t82, i32 0, i32 0
  %t84 = load i32, ptr %t83, !tbaa !23
  %t86 = sext i32 %t84 to i64
  store i64 %t86, ptr %l7, !tbaa !24
  br label %bb19
bb18:
  br label %bb19
bb19:
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t90 = getelementptr %"compiler/check:Checker", ptr %t88, i32 0, i32 1
  %t91 = load ptr, ptr %t90, !tbaa !29
  %t93 = getelementptr %"compiler/generic:Program", ptr %t91, i32 0, i32 0
  %t94 = load ptr, ptr %t93, !tbaa !29
  %t96 = getelementptr %"compiler/load:Loader", ptr %t94, i32 0, i32 4
  %t97 = load ptr, ptr %t96, !tbaa !29
  store ptr %t97, ptr %l8, !tbaa !29
  %t99 = load ptr, ptr %l8, !tbaa !29
  %t100 = load i64, ptr %l6, !tbaa !24
  %t103 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2ePathOf(ptr %v0, ptr %s0, ptr %t99, i64 %t100)
  store { i64, ptr } %t103, ptr %l66
  br label %bb20
bb20:
  %t104 = load { i64, ptr }, ptr %l66, !tbaa !27
  store { i64, ptr } %t104, ptr %l10, !tbaa !27
  store i64 0, ptr %l11, !tbaa !24
  %t107 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t109 = extractvalue { i64, ptr } %t107, 0
  store i64 %t109, ptr %l12, !tbaa !24
  %t111 = load i64, ptr %l12, !tbaa !24
  %t113 = mul i64 %t111, 1
  %t114 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t113)
  %t115 = insertvalue { i64, ptr } undef, i64 %t111, 0
  %t116 = insertvalue { i64, ptr } %t115, ptr %t114, 1
  store { i64, ptr } %t116, ptr %l71, !tbaa !27
  store i64 0, ptr %l72, !tbaa !24
  br label %bb21
bb21:
  %t117 = load i64, ptr %l11, !tbaa !24
  %t118 = load i64, ptr %l12, !tbaa !24
  %t121 = icmp slt i64 %t117, %t118
  %t123 = xor i1 %t121, true
  br i1 %t123, label %bb22, label %bb23
bb22:
  br label %bb26
bb23:
  br label %bb24
bb24:
  %t125 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t125, ptr %l77, !tbaa !27
  %t126 = load i64, ptr %l11, !tbaa !24
  %t128 = getelementptr { i64, ptr }, ptr %l77, i32 0, i32 1
  %t129 = load ptr, ptr %t128, !tbaa !27
  %t130 = getelementptr i8, ptr %t129, i64 %t126
  %t131 = load i8, ptr %t130, !tbaa !32
  %t136 = load i64, ptr %l72, !tbaa !24
  %t137 = getelementptr { i64, ptr }, ptr %l71, i32 0, i32 1
  %t138 = load ptr, ptr %t137, !tbaa !27
  %t139 = getelementptr i8, ptr %t138, i64 %t136
  store i8 %t131, ptr %t139, !tbaa !32
  %t140 = load i64, ptr %l72, !tbaa !24
  %t141 = add i64 %t140, 1
  store i64 %t141, ptr %l72, !tbaa !24
  br label %bb25
bb25:
  %t142 = load i64, ptr %l11, !tbaa !24
  %t144 = add i64 %t142, 1
  store i64 %t144, ptr %l11, !tbaa !24
  br label %bb21
bb26:
  %t146 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t146, ptr %lp14
  %t147 = load { i64, ptr }, ptr %l71, !tbaa !27
  %t148 = load ptr, ptr %lp14
  store { i64, ptr } %t147, ptr %t148, !tbaa !27
  %t149 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t149, ptr %l84
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t152 = getelementptr %"compiler/check:Checker", ptr %t150, i32 0, i32 1
  %t153 = load ptr, ptr %t152, !tbaa !29
  %t155 = getelementptr %"compiler/generic:Program", ptr %t153, i32 0, i32 2
  store ptr %t155, ptr %l87, !tbaa !29
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t158 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextType(ptr %v0, ptr %t156)
  store i32 %t158, ptr %l89
  br label %bb27
bb27:
  %t159 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  %t160 = load ptr, ptr %l87, !tbaa !29
  %t161 = load i32, ptr %l89, !tbaa !23
  %t163 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t160, i32 %t161, i64 %t159)
  store i32 %t163, ptr %l91
  br label %bb28
bb28:
  %t164 = load ptr, ptr %l0, !tbaa !29
  %t166 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t164)
  store ptr %t166, ptr %l93
  br label %bb29
bb29:
  %t167 = load ptr, ptr %l93, !tbaa !29
  %t169 = getelementptr %"compiler/check:frame", ptr %t167, i32 0, i32 2
  %t170 = load i64, ptr %t169, !tbaa !24
  %t171 = load ptr, ptr %lp14
  %t172 = load { i64, ptr }, ptr %t171, !tbaa !27
  store { i64, [2 x i64] } zeroinitializer, ptr %t173
  %t174 = getelementptr { i64, [2 x i64] }, ptr %t173, i32 0, i32 0
  store i64 1, ptr %t174
  %t176 = insertvalue { { i64, ptr } } undef, { i64, ptr } %t172, 0
  %t177 = getelementptr { i64, [2 x i64] }, ptr %t173, i32 0, i32 1
  store { { i64, ptr } } %t176, ptr %t177
  %t178 = load { i64, [2 x i64] }, ptr %t173
  %t180 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 24, i64 8)
  store { i64, [2 x i64] } %t178, ptr %t180
  store { i64, [5 x i64] } zeroinitializer, ptr %t181
  %t182 = getelementptr { i64, [5 x i64] }, ptr %t181, i32 0, i32 0
  store i64 1, ptr %t182
  %t183 = load %"compiler/source:Span", ptr %l84
  %t184 = insertvalue { %"compiler/source:Span", i32, i64, ptr } undef, %"compiler/source:Span" %t183, 0
  %t185 = load i32, ptr %l91, !tbaa !23
  %t186 = insertvalue { %"compiler/source:Span", i32, i64, ptr } %t184, i32 %t185, 1
  %t188 = insertvalue { %"compiler/source:Span", i32, i64, ptr } %t186, i64 %t170, 2
  %t190 = insertvalue { %"compiler/source:Span", i32, i64, ptr } %t188, ptr %t180, 3
  %t191 = getelementptr { i64, [5 x i64] }, ptr %t181, i32 0, i32 1
  store { %"compiler/source:Span", i32, i64, ptr } %t190, ptr %t191
  %t192 = load { i64, [5 x i64] }, ptr %t181
  %t194 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 48, i64 8)
  store { i64, [5 x i64] } %t192, ptr %t194
  store ptr %t194, ptr %l100, !tbaa !29
  %t195 = load ptr, ptr %l0, !tbaa !29
  store ptr %t195, ptr %l101, !tbaa !29
  %t196 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t196, ptr %l102
  %t197 = load ptr, ptr %l0, !tbaa !29
  %t199 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t197)
  store i32 %t199, ptr %l104
  br label %bb30
bb30:
  %t200 = load ptr, ptr %l8, !tbaa !29
  %t201 = load i64, ptr %l6, !tbaa !24
  %t202 = load i64, ptr %l7, !tbaa !24
  %t206 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eLineAt(ptr %v0, ptr %t200, i64 %t201, i64 %t202)
  store i64 %t206, ptr %l108
  br label %bb31
bb31:
  %t207 = load ptr, ptr %l101, !tbaa !29
  %t208 = load %"compiler/source:Span", ptr %l102
  %t209 = load i32, ptr %l104, !tbaa !23
  %t210 = load i64, ptr %l108, !tbaa !24
  %t211 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v1, ptr %t207, %"compiler/source:Span" %t208, i32 %t209, i64 %t210)
  store ptr %t211, ptr %l109
  br label %bb32
bb32:
  %t212 = load ptr, ptr %l0, !tbaa !29
  store ptr %t212, ptr %l110, !tbaa !29
  %t213 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t213, ptr %l111
  %t214 = load ptr, ptr %l0, !tbaa !29
  %t216 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t214)
  store i32 %t216, ptr %l113
  br label %bb33
bb33:
  %t217 = load ptr, ptr %l8, !tbaa !29
  %t218 = load i64, ptr %l6, !tbaa !24
  %t219 = load i64, ptr %l7, !tbaa !24
  %t223 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eColumnAt(ptr %v0, ptr %t217, i64 %t218, i64 %t219)
  store i64 %t223, ptr %l117
  br label %bb34
bb34:
  %t224 = load ptr, ptr %l110, !tbaa !29
  %t225 = load %"compiler/source:Span", ptr %l111
  %t226 = load i32, ptr %l113, !tbaa !23
  %t227 = load i64, ptr %l117, !tbaa !24
  %t228 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v1, ptr %t224, %"compiler/source:Span" %t225, i32 %t226, i64 %t227)
  store ptr %t228, ptr %l118
  br label %bb35
bb35:
  %t229 = load ptr, ptr %l100, !tbaa !29
  %t230 = insertvalue [3 x ptr] undef, ptr %t229, 0
  %t231 = load ptr, ptr %l109, !tbaa !29
  %t232 = insertvalue [3 x ptr] %t230, ptr %t231, 1
  %t233 = load ptr, ptr %l118, !tbaa !29
  %t234 = insertvalue [3 x ptr] %t232, ptr %t233, 2
  %t235 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 24, i64 8)
  store ptr %t235, ptr %lp15
  %t237 = load ptr, ptr %lp15
  store [3 x ptr] %t234, ptr %t237
  %t238 = load ptr, ptr %l0, !tbaa !29
  %t239 = load i32, ptr %l4, !tbaa !23
  %t242 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectorBody(ptr %v0, ptr %t238, i32 %t239)
  store i64 %t242, ptr %l122
  br label %bb36
bb36:
  %t243 = load i64, ptr %l122, !tbaa !24
  %t244 = load ptr, ptr %l0, !tbaa !29
  %t246 = getelementptr %"compiler/check:Checker", ptr %t244, i32 0, i32 23
  %t247 = load i32, ptr %t246, !tbaa !23
  store i32 %t247, ptr %l17, !tbaa !23
  %t249 = load ptr, ptr %l0, !tbaa !29
  %t250 = load i32, ptr %l4, !tbaa !23
  %t253 = getelementptr %"compiler/check:Checker", ptr %t249, i32 0, i32 23
  store i32 %t250, ptr %t253, !tbaa !23
  %t254 = load ptr, ptr %l0, !tbaa !29
  store ptr %t254, ptr %l127, !tbaa !29
  %t255 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t255, ptr %l128
  %t256 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t256, ptr %l129
  %t257 = load i32, ptr %l5, !tbaa !23
  store i32 %t257, ptr %l130, !tbaa !23
  %t260 = trunc i64 %t243 to i32
  store { i64, [3 x i64] } zeroinitializer, ptr %t262
  %t263 = getelementptr { i64, [3 x i64] }, ptr %t262, i32 0, i32 0
  store i64 0, ptr %t263
  %t265 = insertvalue { i32 } undef, i32 %t260, 0
  %t266 = getelementptr { i64, [3 x i64] }, ptr %t262, i32 0, i32 1
  store { i32 } %t265, ptr %t266
  %t267 = load { i64, [3 x i64] }, ptr %t262
  %t269 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store { i64, [3 x i64] } %t267, ptr %t269
  store ptr %t269, ptr %l135, !tbaa !29
  %t270 = icmp sge i64 0, 0
  br i1 %t270, label %bb37, label %bb38
bb37:
  %t272 = icmp sle i64 0, 1152921504606846975
  br i1 %t272, label %bb39, label %bb40
bb38:
  call void @__olang_check_failed(ptr @olang_loc_b23b0b3c83be0ad1_2f776aac88ec27cd)
  unreachable
bb39:
  %t274 = mul i64 0, 8
  %t275 = insertvalue { i64, ptr } undef, i64 0, 0
  %t276 = insertvalue { i64, ptr } %t275, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t277 = load ptr, ptr %lp15
  %t279 = insertvalue { i64, ptr } undef, i64 3, 0
  %t280 = insertvalue { i64, ptr } %t279, ptr %t277, 1
  %t281 = load ptr, ptr %l127, !tbaa !29
  %t282 = load %"compiler/source:Span", ptr %l128
  %t283 = load %"compiler/source:Span", ptr %l129
  %t284 = load i32, ptr %l130, !tbaa !23
  %t285 = load ptr, ptr %l135, !tbaa !29
  %t288 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecallBody(ptr %v0, ptr %v1, ptr %v0, ptr %v0, ptr %v1, ptr %v1, ptr %t281, %"compiler/source:Span" %t282, %"compiler/source:Span" %t283, i32 %t284, ptr %t285, i64 -1, ptr null, { i64, ptr } %t276, { i64, ptr } %t280)
  store ptr %t288, ptr %l141
  br label %bb41
bb40:
  call void @__olang_check_failed(ptr @olang_loc_b23b0b3c83be0ad1_2f776aac88ec27cd)
  unreachable
bb41:
  %t289 = load ptr, ptr %l141, !tbaa !29
  %t290 = load ptr, ptr %l0, !tbaa !29
  %t291 = load i32, ptr %l17, !tbaa !23
  %t294 = getelementptr %"compiler/check:Checker", ptr %t290, i32 0, i32 23
  store i32 %t291, ptr %t294, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store ptr %t289, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epush(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, i32 %a3, i32 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l5 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca i64
  %l15 = alloca ptr
  %l20 = alloca %"compiler/check:frame"
  %l23 = alloca ptr
  %l24 = alloca ptr
  %l29 = alloca i64
  %l32 = alloca i1
  %l33 = alloca i1
  %l37 = alloca i1
  %l38 = alloca i32
  %rv = alloca ptr
  %t25 = alloca %"compiler/check:frame", align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 16
  store ptr %t3, ptr %l7, !tbaa !29
  %t4 = load i64, ptr %l1, !tbaa !24
  store i64 %t4, ptr %l8, !tbaa !24
  %t5 = load i64, ptr %l2, !tbaa !24
  store i64 %t5, ptr %l9, !tbaa !24
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/check:Checker", ptr %t6, i32 0, i32 1
  %t9 = load ptr, ptr %t8, !tbaa !29
  %t11 = getelementptr %"compiler/generic:Program", ptr %t9, i32 0, i32 0
  %t12 = load ptr, ptr %t11, !tbaa !29
  %t14 = getelementptr %"compiler/load:Loader", ptr %t12, i32 0, i32 10
  %t15 = load i64, ptr %l2, !tbaa !24
  %t18 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t14, i64 %t15)
  store ptr %t18, ptr %l15
  br label %bb1
bb1:
  %t19 = load ptr, ptr %l15, !tbaa !29
  %t21 = getelementptr %"compiler/load:Module", ptr %t19, i32 0, i32 4
  %t22 = load i64, ptr %t21, !tbaa !24
  %t26 = load i64, ptr %l8, !tbaa !24
  %t27 = load i64, ptr %l9, !tbaa !24
  call void @compiler_2fcheck_3aframe_2ector(ptr %t25, ptr %v0, i64 %t26, i64 %t27, i64 %t22, i32 %a3, i32 %a4)
  call void @llvm.memmove.p0.p0.i64(ptr %l20, ptr %t25, i64 1488, i1 false)
  br label %bb2
bb2:
  %t31 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 1488, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t31, ptr %l20, i64 1488, i1 false)
  %t32 = load ptr, ptr %l7, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2_Hc321aad2e90dd8996307445942f8d6e9(ptr %v0, ptr %v0, ptr %t32, ptr %t31)
  br label %bb3
bb3:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v1, ptr %t34)
  store ptr %t36, ptr %l23
  br label %bb4
bb4:
  %t37 = load ptr, ptr %l23, !tbaa !29
  store ptr %t37, ptr %l5, !tbaa !29
  %t38 = load ptr, ptr %l5, !tbaa !29
  store ptr %t38, ptr %l24, !tbaa !29
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/check:Checker", ptr %t39, i32 0, i32 1
  %t42 = load ptr, ptr %t41, !tbaa !29
  %t44 = getelementptr %"compiler/generic:Program", ptr %t42, i32 0, i32 0
  %t45 = load ptr, ptr %t44, !tbaa !29
  %t47 = getelementptr %"compiler/load:Loader", ptr %t45, i32 0, i32 4
  %t48 = load ptr, ptr %t47, !tbaa !29
  %t50 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eCount(ptr %v0, ptr %t48)
  store i64 %t50, ptr %l29
  br label %bb5
bb5:
  %t51 = load i64, ptr %l29, !tbaa !24
  %t52 = load ptr, ptr %l24, !tbaa !29
  %t53 = getelementptr %"compiler/check:frame", ptr %t52, i32 0, i32 42
  store i64 %t51, ptr %t53, !tbaa !24
  %t54 = load i64, ptr %l1, !tbaa !24
  %t56 = icmp sge i64 %t54, 0
  br i1 %t56, label %bb6, label %bb7
bb6:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/check:Checker", ptr %t58, i32 0, i32 54
  %t61 = load i64, ptr %l1, !tbaa !24
  %t64 = call { i32, i1 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eGet_3cI64_2c_20Bool_3e(ptr %v0, ptr %t60, i64 %t61)
  %t65 = extractvalue { i32, i1 } %t64, 1
  %t66 = extractvalue { i32, i1 } %t64, 0
  store i32 %t66, ptr %l38
  %t67 = icmp ne i32 %t66, 0
  br i1 %t67, label %bb9, label %ok.68, !prof !99
ok.68:
  store i1 %t65, ptr %l37
  br label %bb8
bb7:
  store i1 false, ptr %l32, !tbaa !21
  br label %bb12
bb8:
  %t69 = load i1, ptr %l37, !tbaa !21
  store i1 %t69, ptr %l33, !tbaa !21
  br label %bb11
bb9:
  br label %bb10
bb10:
  store i1 false, ptr %l33, !tbaa !21
  br label %bb11
bb11:
  %t70 = load i1, ptr %l33, !tbaa !21
  store i1 %t70, ptr %l32, !tbaa !21
  br label %bb12
bb12:
  %t71 = load i1, ptr %l32, !tbaa !21
  br i1 %t71, label %bb13, label %bb14
bb13:
  %t72 = load ptr, ptr %l5, !tbaa !29
  %t74 = getelementptr %"compiler/check:frame", ptr %t72, i32 0, i32 26
  store i1 true, ptr %t74, !tbaa !21
  %t75 = load ptr, ptr %l5, !tbaa !29
  %t77 = getelementptr %"compiler/check:frame", ptr %t75, i32 0, i32 27
  store i1 true, ptr %t77, !tbaa !21
  br label %bb15
bb14:
  br label %bb15
bb15:
  %t78 = load ptr, ptr %l5, !tbaa !29
  store ptr %t78, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local { i32, { i64, ptr } } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflText(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i1
  %lp3 = alloca ptr
  %l7 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l11 = alloca i32
  %l13 = alloca i1
  %l23 = alloca { i64, ptr }
  %l24 = alloca i64
  %l25 = alloca { i64, ptr }
  %rv = alloca { i32, { i64, ptr } }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 148
  %t4 = load i1, ptr %t3, !tbaa !21
  store i1 %t4, ptr %l2, !tbaa !21
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/check:Checker", ptr %t6, i32 0, i32 148
  store i1 false, ptr %t8, !tbaa !21
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t13 = call { i32, { i64, ptr } } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflTextOf(ptr %v0, ptr %v1, ptr %v2, ptr %t9, ptr %a1)
  %t14 = extractvalue { i32, { i64, ptr } } %t13, 1
  %t15 = extractvalue { i32, { i64, ptr } } %t13, 0
  store i32 %t15, ptr %l11
  %t16 = icmp ne i32 %t15, 0
  br i1 %t16, label %bb2, label %ok.17, !prof !99
ok.17:
  store { i64, ptr } %t14, ptr %l10
  br label %bb1
bb1:
  %t18 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t18, ptr %l7, !tbaa !27
  br label %bb4
bb2:
  %t19 = load i32, ptr %l11, !tbaa !23
  %t20 = ashr i32 %t19, 16
  %t22 = icmp eq i32 %t20, 1
  store i1 %t22, ptr %l13, !tbaa !21
  br label %bb3
bb3:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/check:Checker", ptr %t24, i32 0, i32 148
  %t27 = load i1, ptr %t26, !tbaa !21
  %t30 = getelementptr %"compiler/check:Checker", ptr %t23, i32 0, i32 149
  store i1 %t27, ptr %t30, !tbaa !21
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load i1, ptr %l2, !tbaa !21
  %t35 = getelementptr %"compiler/check:Checker", ptr %t31, i32 0, i32 148
  store i1 %t32, ptr %t35, !tbaa !21
  %t37 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65536, 0
  store { i32, { i64, ptr } } %t37, ptr %rv
  br label %ret
bb4:
  %t38 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t38, ptr %lp3
  %t39 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t40 = load ptr, ptr %lp3
  store { i64, ptr } %t39, ptr %t40, !tbaa !27
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/check:Checker", ptr %t42, i32 0, i32 148
  %t45 = load i1, ptr %t44, !tbaa !21
  %t48 = getelementptr %"compiler/check:Checker", ptr %t41, i32 0, i32 149
  store i1 %t45, ptr %t48, !tbaa !21
  %t49 = load ptr, ptr %lp3
  %t50 = load { i64, ptr }, ptr %t49, !tbaa !27
  store { i64, ptr } %t50, ptr %l23, !tbaa !27
  %t51 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t52 = extractvalue { i64, ptr } %t51, 0
  store i64 %t52, ptr %l24, !tbaa !24
  %t53 = load i64, ptr %l24, !tbaa !24
  %t54 = mul i64 %t53, 1
  %t55 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t54)
  %t56 = insertvalue { i64, ptr } undef, i64 %t53, 0
  %t57 = insertvalue { i64, ptr } %t56, ptr %t55, 1
  store { i64, ptr } %t57, ptr %l25, !tbaa !27
  %t58 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !27
  %t60 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t61 = load ptr, ptr %t60, !tbaa !27
  %t62 = load i64, ptr %l24, !tbaa !24
  %t63 = mul i64 %t62, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t59, ptr %t61, i64 %t63, i1 false)
  %t64 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t64, ptr %l23, !tbaa !27
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t66 = load i1, ptr %l2, !tbaa !21
  %t69 = getelementptr %"compiler/check:Checker", ptr %t65, i32 0, i32 148
  store i1 %t66, ptr %t69, !tbaa !21
  %t70 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t71 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t70, 1
  store { i32, { i64, ptr } } %t71, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eresultAt(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca { i64, [2 x i64] }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l8 = alloca ptr
  %l13 = alloca i1
  %l14 = alloca i64
  %l17 = alloca i64
  %l23 = alloca ptr
  %l32 = alloca i64
  %l36 = alloca ptr
  %l43 = alloca i1
  %l49 = alloca ptr
  %l53 = alloca i64
  %l54 = alloca { i64, ptr }
  %l58 = alloca { i64, [3 x i64] }
  %rv = alloca { i64, [3 x i64] }
  %t24 = alloca { i64, [3 x i64] }, align 8
  %t89 = alloca { i64, [3 x i64] }, align 8
  %t115 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t1)
  store ptr %t3, ptr %l8
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l8, !tbaa !29
  %t6 = getelementptr %"compiler/check:frame", ptr %t4, i32 0, i32 0
  %t7 = load i64, ptr %t6, !tbaa !24
  store i64 %t7, ptr %l2, !tbaa !24
  %t9 = load i64, ptr %l2, !tbaa !24
  %t11 = icmp slt i64 %t9, 0
  br i1 %t11, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l13, !tbaa !21
  br label %bb5
bb3:
  %t13 = load i64, ptr %l2, !tbaa !24
  store i64 %t13, ptr %l14, !tbaa !24
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/check:Checker", ptr %t14, i32 0, i32 14
  %t18 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t16)
  store i64 %t18, ptr %l17
  br label %bb4
bb4:
  %t19 = load i64, ptr %l14, !tbaa !24
  %t20 = load i64, ptr %l17, !tbaa !24
  %t21 = icmp sge i64 %t19, %t20
  store i1 %t21, ptr %l13, !tbaa !21
  br label %bb5
bb5:
  %t23 = load i1, ptr %l13, !tbaa !21
  br i1 %t23, label %bb6, label %bb7
bb6:
  store { i64, [3 x i64] } zeroinitializer, ptr %t24
  %t25 = getelementptr { i64, [3 x i64] }, ptr %t24, i32 0, i32 0
  store i64 0, ptr %t25
  %t26 = load { i64, [3 x i64] }, ptr %t24
  store { i64, [3 x i64] } %t26, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/check:Checker", ptr %t28, i32 0, i32 14
  %t31 = load i64, ptr %l2, !tbaa !24
  %t34 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t30, i64 %t31)
  store ptr %t34, ptr %l23
  br label %bb9
bb9:
  %t35 = load ptr, ptr %l23, !tbaa !29
  %t37 = getelementptr %"compiler/typed:Body", ptr %t35, i32 0, i32 1
  %t38 = load { i64, [2 x i64] }, ptr %t37
  store { i64, [2 x i64] } %t38, ptr %l3
  %t40 = load { i64, [2 x i64] }, ptr %l3
  %t42 = extractvalue { i64, [2 x i64] } %t40, 0
  %t43 = icmp eq i64 %t42, 0
  br i1 %t43, label %bb10, label %bb11
bb10:
  %t45 = getelementptr { i64, [2 x i64] }, ptr %l3, i32 0, i32 1
  %t46 = getelementptr { i64 }, ptr %t45, i32 0, i32 0
  %t47 = load i64, ptr %t46
  store i64 %t47, ptr %l4, !tbaa !24
  br label %bb12
bb11:
  br label %bb23
bb12:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/check:Checker", ptr %t49, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !29
  %t53 = load i64, ptr %l4, !tbaa !24
  %t56 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %t52, i64 %t53)
  store i64 %t56, ptr %l32
  br label %bb13
bb13:
  %t57 = load i64, ptr %l32, !tbaa !24
  store i64 %t57, ptr %l5, !tbaa !24
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/check:Checker", ptr %t58, i32 0, i32 1
  %t61 = load ptr, ptr %t60, !tbaa !29
  %t62 = load i64, ptr %l5, !tbaa !24
  %t65 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t61, i64 %t62)
  store ptr %t65, ptr %l36
  br label %bb14
bb14:
  %t66 = load ptr, ptr %l36, !tbaa !29
  %t68 = getelementptr %"compiler/ast:Func", ptr %t66, i32 0, i32 3
  %t69 = load ptr, ptr %t68, !tbaa !29
  %t71 = getelementptr %"compiler/ast:Sig", ptr %t69, i32 0, i32 1
  %t72 = load { i64, ptr }, ptr %t71, !tbaa !27
  store { i64, ptr } %t72, ptr %l6, !tbaa !27
  %t74 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t76 = extractvalue { i64, ptr } %t74, 0
  %t78 = icmp eq i64 %t76, 0
  br i1 %t78, label %bb15, label %bb16
bb15:
  store i1 true, ptr %l43, !tbaa !21
  br label %bb17
bb16:
  %t80 = load i64, ptr %l1, !tbaa !24
  %t81 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t83 = extractvalue { i64, ptr } %t81, 0
  %t86 = icmp sge i64 %t80, %t83
  store i1 %t86, ptr %l43, !tbaa !21
  br label %bb17
bb17:
  %t88 = load i1, ptr %l43, !tbaa !21
  br i1 %t88, label %bb18, label %bb19
bb18:
  store { i64, [3 x i64] } zeroinitializer, ptr %t89
  %t90 = getelementptr { i64, [3 x i64] }, ptr %t89, i32 0, i32 0
  store i64 0, ptr %t90
  %t91 = load { i64, [3 x i64] }, ptr %t89
  store { i64, [3 x i64] } %t91, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  %t93 = load ptr, ptr %l0, !tbaa !29
  store ptr %t93, ptr %l49, !tbaa !29
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t96 = getelementptr %"compiler/check:Checker", ptr %t94, i32 0, i32 1
  %t97 = load ptr, ptr %t96, !tbaa !29
  %t98 = load i64, ptr %l5, !tbaa !24
  %t101 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t97, i64 %t98)
  store i64 %t101, ptr %l53
  br label %bb21
bb21:
  %t102 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t102, ptr %l54, !tbaa !27
  %t103 = load i64, ptr %l1, !tbaa !24
  %t105 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t106 = load ptr, ptr %t105, !tbaa !27
  %t107 = getelementptr ptr, ptr %t106, i64 %t103
  %t108 = load ptr, ptr %t107, !tbaa !39
  %t110 = load ptr, ptr %l49, !tbaa !29
  %t111 = load i64, ptr %l53, !tbaa !24
  %t113 = call { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emarkAt(ptr %v0, ptr %v0, ptr %t110, i64 %t111, ptr %t108)
  store { i64, [3 x i64] } %t113, ptr %l58
  br label %bb22
bb22:
  %t114 = load { i64, [3 x i64] }, ptr %l58
  store { i64, [3 x i64] } %t114, ptr %rv
  br label %ret
bb23:
  br i1 true, label %bb24, label %bb25
bb24:
  br label %bb26
bb25:
  br label %bb27
bb26:
  store { i64, [3 x i64] } zeroinitializer, ptr %t115
  %t116 = getelementptr { i64, [3 x i64] }, ptr %t115, i32 0, i32 0
  store i64 0, ptr %t116
  %t117 = load { i64, [3 x i64] }, ptr %t115
  store { i64, [3 x i64] } %t117, ptr %rv
  br label %ret
bb27:
  call void @__olang_check_failed(ptr @olang_loc_6b233227628ca57_40576c0d91c202cb)
  unreachable
ret:
  %rr = load { i64, [3 x i64] }, ptr %rv
  ret { i64, [3 x i64] } %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroDeepNeed(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l5 = alloca i1
  %l6 = alloca ptr
  %l8 = alloca ptr
  %l11 = alloca i1
  %l15 = alloca i32
  %l18 = alloca i1
  %l23 = alloca i32
  %l26 = alloca i1
  %l29 = alloca ptr
  %l31 = alloca ptr
  %l35 = alloca %"std/pair:Pair.1eb2466213689e002f25e81e83536e78"
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
  store i1 true, ptr %l5, !tbaa !21
  br label %bb5
bb2:
  %t5 = load ptr, ptr %l0, !tbaa !29
  store ptr %t5, ptr %l6, !tbaa !29
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t6)
  store ptr %t8, ptr %l8
  br label %bb3
bb3:
  %t9 = load ptr, ptr %l8, !tbaa !29
  %t11 = getelementptr %"compiler/check:frame", ptr %t9, i32 0, i32 0
  %t12 = load i64, ptr %t11, !tbaa !24
  %t13 = load ptr, ptr %l6, !tbaa !29
  %t15 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einstanceBody(ptr %v0, ptr %t13, i64 %t12)
  store i1 %t15, ptr %l11
  br label %bb4
bb4:
  %t16 = load i1, ptr %l11, !tbaa !21
  %t17 = xor i1 %t16, true
  store i1 %t17, ptr %l5, !tbaa !21
  br label %bb5
bb5:
  %t19 = load i1, ptr %l5, !tbaa !21
  br i1 %t19, label %bb6, label %bb7
bb6:
  br label %ret
bb7:
  br label %bb8
bb8:
  %t20 = load ptr, ptr %l1, !tbaa !29
  %t23 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t20)
  store i32 %t23, ptr %l15
  br label %bb9
bb9:
  %t24 = load i32, ptr %l15, !tbaa !23
  store i32 %t24, ptr %l2, !tbaa !23
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t26 = load i32, ptr %l2, !tbaa !23
  %t29 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t25, i32 %t26)
  store i1 %t29, ptr %l18
  br label %bb10
bb10:
  %t30 = load i1, ptr %l18, !tbaa !21
  br i1 %t30, label %bb11, label %bb12
bb11:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/check:Checker", ptr %t31, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !29
  %t36 = getelementptr %"compiler/generic:Program", ptr %t34, i32 0, i32 2
  %t37 = load i32, ptr %l2, !tbaa !23
  %t40 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t36, i32 %t37)
  store i32 %t40, ptr %l23
  br label %bb13
bb12:
  br label %bb14
bb13:
  %t41 = load i32, ptr %l23, !tbaa !23
  store i32 %t41, ptr %l2, !tbaa !23
  br label %bb14
bb14:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load i32, ptr %l2, !tbaa !23
  %t46 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enamedHolds(ptr %v0, ptr %t42, i32 %t43)
  store i1 %t46, ptr %l26
  br label %bb15
bb15:
  %t47 = load i1, ptr %l26, !tbaa !21
  %t48 = xor i1 %t47, true
  br i1 %t48, label %bb16, label %bb17
bb16:
  br label %ret
bb17:
  br label %bb18
bb18:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/check:Checker", ptr %t50, i32 0, i32 90
  store ptr %t52, ptr %l29, !tbaa !29
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t53)
  store ptr %t55, ptr %l31
  br label %bb19
bb19:
  %t56 = load ptr, ptr %l31, !tbaa !29
  %t58 = getelementptr %"compiler/check:frame", ptr %t56, i32 0, i32 0
  %t59 = load i64, ptr %t58, !tbaa !24
  %t60 = load ptr, ptr %l1, !tbaa !29
  %t63 = call %"std/pair:Pair.1eb2466213689e002f25e81e83536e78" @std_2fpair_3aPair_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_2ector(ptr %v1, ptr %v0, i64 %t59, ptr %t60)
  store %"std/pair:Pair.1eb2466213689e002f25e81e83536e78" %t63, ptr %l35
  br label %bb20
bb20:
  %t64 = load ptr, ptr %l29, !tbaa !29
  %t65 = load %"std/pair:Pair.1eb2466213689e002f25e81e83536e78", ptr %l35
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20compiler__H316d0dfdbceeb7b188a6719f0ad8fbbe(ptr %v0, ptr %v0, ptr %t64, %"std/pair:Pair.1eb2466213689e002f25e81e83536e78" %t65)
  br label %bb21
bb21:
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eslotWhat(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca { i64, ptr }
  %l5 = alloca ptr
  %l6 = alloca i1
  %l11 = alloca ptr
  %l13 = alloca ptr
  %l15 = alloca %"compiler/typed:Local"
  %l17 = alloca { i64, ptr }
  %l19 = alloca ptr
  %l20 = alloca i1
  %l27 = alloca { i64, ptr }
  %l29 = alloca ptr
  %l30 = alloca i1
  %l33 = alloca { i64, ptr }
  %l35 = alloca ptr
  %l36 = alloca i1
  %l39 = alloca { i64, ptr }
  %l41 = alloca ptr
  %l42 = alloca i1
  %l45 = alloca { i64, ptr }
  %l47 = alloca { i64, ptr }
  %l49 = alloca i64
  %l50 = alloca { i64, ptr }
  %s1 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca { i64, ptr }
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
  br label %bb9
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t16 = load ptr, ptr %l0, !tbaa !29
  store ptr %t16, ptr %l11, !tbaa !29
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t17)
  store ptr %t19, ptr %l13
  br label %bb6
bb6:
  %t20 = load i32, ptr %l2, !tbaa !23
  %t21 = load ptr, ptr %l13, !tbaa !29
  %t23 = call %"compiler/typed:Local" @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eLocal(ptr %v0, ptr %t21, i32 %t20)
  store %"compiler/typed:Local" %t23, ptr %l15
  br label %bb7
bb7:
  %t24 = getelementptr %"compiler/typed:Local", ptr %l15, i32 0, i32 0
  %t25 = load i32, ptr %t24, !tbaa !23
  %t26 = load ptr, ptr %l11, !tbaa !29
  %t28 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s1, ptr %t26, i32 %t25)
  store { i64, ptr } %t28, ptr %l17
  br label %bb8
bb8:
  %t29 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d14, i32 0, i32 1) }, 1
  %t30 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d14, i32 0, i32 1) }, 0
  %t31 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t32 = extractvalue { i64, ptr } %t31, 1
  %t33 = extractvalue { i64, ptr } %t31, 0
  %t34 = add i64 %t30, %t33
  %t35 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d14, i32 0, i32 1) }, 1
  %t36 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d14, i32 0, i32 1) }, 0
  %t37 = add i64 %t34, %t36
  %t38 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t37)
  call void @olang_textcopy(ptr %t38, ptr %t29, i64 %t30)
  %t39 = getelementptr i8, ptr %t38, i64 %t30
  call void @olang_textcopy(ptr %t39, ptr %t32, i64 %t33)
  %t40 = getelementptr i8, ptr %t39, i64 %t33
  call void @olang_textcopy(ptr %t40, ptr %t35, i64 %t36)
  %t41 = insertvalue { i64, ptr } undef, i64 %t37, 0
  %t42 = insertvalue { i64, ptr } %t41, ptr %t38, 1
  store { i64, ptr } %t42, ptr %l4, !tbaa !27
  call void @__olang_scope_close(ptr %s1)
  br label %bb39
bb9:
  %t44 = load ptr, ptr %l1, !tbaa !29
  store ptr %t44, ptr %l19, !tbaa !29
  store i1 false, ptr %l20, !tbaa !21
  %t45 = load ptr, ptr %l19, !tbaa !29
  %t46 = icmp ne ptr %t45, null
  br i1 %t46, label %bb10, label %bb11
bb10:
  %t48 = load ptr, ptr %l19, !tbaa !29
  %t49 = load i64, ptr %t48, !range !{i64 0, i64 8}
  %t51 = icmp eq i64 %t49, 1
  store i1 %t51, ptr %l20, !tbaa !21
  br label %bb11
bb11:
  %t52 = load i1, ptr %l20, !tbaa !21
  br i1 %t52, label %bb12, label %bb13
bb12:
  %t53 = load ptr, ptr %l1, !tbaa !29
  %t55 = getelementptr { i64, [4 x i64] }, ptr %t53, i32 0, i32 1
  %t56 = getelementptr { %"compiler/source:Span", i32, i64, i32 }, ptr %t55, i32 0, i32 3
  %t57 = load i32, ptr %t56
  store i32 %t57, ptr %l3, !tbaa !23
  br label %bb14
bb13:
  br label %bb16
bb14:
  store %olang.scope zeroinitializer, ptr %s3
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t60 = load i32, ptr %l3, !tbaa !23
  %t63 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s3, ptr %t59, i32 %t60)
  store { i64, ptr } %t63, ptr %l27
  br label %bb15
bb15:
  %t64 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t65 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  %t66 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t67 = extractvalue { i64, ptr } %t66, 1
  %t68 = extractvalue { i64, ptr } %t66, 0
  %t69 = add i64 %t65, %t68
  %t70 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t71 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  %t72 = add i64 %t69, %t71
  %t73 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t72)
  call void @olang_textcopy(ptr %t73, ptr %t64, i64 %t65)
  %t74 = getelementptr i8, ptr %t73, i64 %t65
  call void @olang_textcopy(ptr %t74, ptr %t67, i64 %t68)
  %t75 = getelementptr i8, ptr %t74, i64 %t68
  call void @olang_textcopy(ptr %t75, ptr %t70, i64 %t71)
  %t76 = insertvalue { i64, ptr } undef, i64 %t72, 0
  %t77 = insertvalue { i64, ptr } %t76, ptr %t73, 1
  store { i64, ptr } %t77, ptr %l4, !tbaa !27
  call void @__olang_scope_close(ptr %s3)
  br label %bb39
bb16:
  %t79 = load ptr, ptr %l1, !tbaa !29
  store ptr %t79, ptr %l29, !tbaa !29
  store i1 false, ptr %l30, !tbaa !21
  %t80 = load ptr, ptr %l29, !tbaa !29
  %t81 = icmp ne ptr %t80, null
  br i1 %t81, label %bb17, label %bb18
bb17:
  %t83 = load ptr, ptr %l29, !tbaa !29
  %t84 = load i64, ptr %t83, !range !{i64 0, i64 8}
  %t86 = icmp eq i64 %t84, 3
  store i1 %t86, ptr %l30, !tbaa !21
  br label %bb18
bb18:
  %t87 = load i1, ptr %l30, !tbaa !21
  br i1 %t87, label %bb19, label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb22
bb21:
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d17, i32 0, i32 1) }, ptr %l33, !tbaa !27
  %t88 = load { i64, ptr }, ptr %l33, !tbaa !27
  store { i64, ptr } %t88, ptr %l4, !tbaa !27
  br label %bb39
bb22:
  %t90 = load ptr, ptr %l1, !tbaa !29
  store ptr %t90, ptr %l35, !tbaa !29
  store i1 false, ptr %l36, !tbaa !21
  %t91 = load ptr, ptr %l35, !tbaa !29
  %t92 = icmp ne ptr %t91, null
  br i1 %t92, label %bb23, label %bb24
bb23:
  %t94 = load ptr, ptr %l35, !tbaa !29
  %t95 = load i64, ptr %t94, !range !{i64 0, i64 8}
  %t97 = icmp eq i64 %t95, 4
  store i1 %t97, ptr %l36, !tbaa !21
  br label %bb24
bb24:
  %t98 = load i1, ptr %l36, !tbaa !21
  br i1 %t98, label %bb25, label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb28
bb27:
  store { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d18, i32 0, i32 1) }, ptr %l39, !tbaa !27
  %t99 = load { i64, ptr }, ptr %l39, !tbaa !27
  store { i64, ptr } %t99, ptr %l4, !tbaa !27
  br label %bb39
bb28:
  %t101 = load ptr, ptr %l1, !tbaa !29
  store ptr %t101, ptr %l41, !tbaa !29
  store i1 false, ptr %l42, !tbaa !21
  %t102 = load ptr, ptr %l41, !tbaa !29
  %t103 = icmp ne ptr %t102, null
  br i1 %t103, label %bb29, label %bb30
bb29:
  %t105 = load ptr, ptr %l41, !tbaa !29
  %t106 = load i64, ptr %t105, !range !{i64 0, i64 8}
  %t108 = icmp eq i64 %t106, 5
  store i1 %t108, ptr %l42, !tbaa !21
  br label %bb30
bb30:
  %t109 = load i1, ptr %l42, !tbaa !21
  br i1 %t109, label %bb31, label %bb32
bb31:
  br label %bb33
bb32:
  br label %bb34
bb33:
  store { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d19, i32 0, i32 1) }, ptr %l45, !tbaa !27
  %t110 = load { i64, ptr }, ptr %l45, !tbaa !27
  store { i64, ptr } %t110, ptr %l4, !tbaa !27
  br label %bb39
bb34:
  br i1 true, label %bb35, label %bb36
bb35:
  br label %bb37
bb36:
  br label %bb38
bb37:
  store { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d20, i32 0, i32 1) }, ptr %l47, !tbaa !27
  %t112 = load { i64, ptr }, ptr %l47, !tbaa !27
  store { i64, ptr } %t112, ptr %l4, !tbaa !27
  br label %bb39
bb38:
  call void @__olang_check_failed(ptr @olang_loc_66b69280d2937ccd_950530418ba68201)
  unreachable
bb39:
  %t114 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t115 = extractvalue { i64, ptr } %t114, 0
  store i64 %t115, ptr %l49, !tbaa !24
  %t116 = load i64, ptr %l49, !tbaa !24
  %t117 = mul i64 %t116, 1
  %t118 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t117)
  %t119 = insertvalue { i64, ptr } undef, i64 %t116, 0
  %t120 = insertvalue { i64, ptr } %t119, ptr %t118, 1
  store { i64, ptr } %t120, ptr %l50, !tbaa !27
  %t121 = getelementptr { i64, ptr }, ptr %l50, i32 0, i32 1
  %t122 = load ptr, ptr %t121, !tbaa !27
  %t123 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t124 = load ptr, ptr %t123, !tbaa !27
  %t125 = load i64, ptr %l49, !tbaa !24
  %t126 = mul i64 %t125, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t122, ptr %t124, i64 %t126, i1 false)
  %t127 = load { i64, ptr }, ptr %l50, !tbaa !27
  store { i64, ptr } %t127, ptr %l4, !tbaa !27
  %t128 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t128, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estrBytes(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1) #0 {
entry:
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
  store { i64, ptr } %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t7 = call { i64, ptr } @compiler_2fscan_2eLiteralBytes(ptr %v0, ptr %v1, { i64, ptr } %t6)
  store { i64, ptr } %t7, ptr %l5
  br label %bb2
bb2:
  %t8 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t8, 0
  %t10 = extractvalue { i64, ptr } %t8, 1
  %t11 = mul i64 %t9, 1
  %t12 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t11)
  call void @llvm.memcpy.p0.p0.i64(ptr %t12, ptr %t10, i64 %t11, i1 false)
  %t13 = insertvalue { i64, ptr } undef, i64 %t9, 0
  %t14 = insertvalue { i64, ptr } %t13, ptr %t12, 1
  store { i64, ptr } %t14, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estrInstance(ptr %v0, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca %"compiler/generic:Binding"
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l15 = alloca i1
  %l19 = alloca i32
  %l21 = alloca i64
  %l25 = alloca i64
  %l28 = alloca ptr
  %l32 = alloca i64
  %l33 = alloca i64
  %l36 = alloca ptr
  %l41 = alloca i32
  %l42 = alloca { i64, ptr }
  %l48 = alloca %"compiler/generic:Binding"
  %l50 = alloca { i64, ptr }
  %l64 = alloca { i64, ptr }
  %l72 = alloca ptr
  %l74 = alloca ptr
  %l75 = alloca i64
  %l80 = alloca i32
  %l81 = alloca i64
  %l82 = alloca i64
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
  %t8 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnIsExtern(ptr %v0, ptr %t4, i64 %t5)
  store i1 %t8, ptr %l15
  br label %bb1
bb1:
  %t9 = load i1, ptr %l15, !tbaa !21
  br i1 %t9, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb3:
  br label %bb4
bb4:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/check:Checker", ptr %t10, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t14 = load i64, ptr %l1, !tbaa !24
  %t17 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %t13, i64 %t14)
  store i32 %t17, ptr %l19
  br label %bb5
bb5:
  %t18 = load i32, ptr %l19, !tbaa !23
  store i32 %t18, ptr %l3, !tbaa !23
  %t19 = load i64, ptr %l1, !tbaa !24
  %t21 = call i64 @compiler_2fgeneric_2eFnOwner(i64 %t19)
  store i64 %t21, ptr %l21
  br label %bb6
bb6:
  %t22 = load i64, ptr %l21, !tbaa !24
  store i64 %t22, ptr %l4, !tbaa !24
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/check:Checker", ptr %t23, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !29
  %t27 = load i64, ptr %l4, !tbaa !24
  %t30 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %t26, i64 %t27)
  store i64 %t30, ptr %l25
  br label %bb7
bb7:
  %t31 = load i64, ptr %l25, !tbaa !24
  store i64 %t31, ptr %l5, !tbaa !24
  %t32 = load i64, ptr %l5, !tbaa !24
  %t34 = icmp eq i64 %t32, 0
  br i1 %t34, label %bb8, label %bb9
bb8:
  %t36 = load ptr, ptr %l0, !tbaa !29
  store ptr %t36, ptr %l28, !tbaa !29
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/check:Checker", ptr %t37, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !29
  %t41 = load i64, ptr %l1, !tbaa !24
  %t44 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnInstance(ptr %v0, ptr %t40, i64 %t41, i32 0)
  store i64 %t44, ptr %l32
  br label %bb10
bb9:
  br label %bb12
bb10:
  %t45 = load ptr, ptr %l28, !tbaa !29
  %t46 = load i64, ptr %l32, !tbaa !24
  %t47 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efnBody(ptr %v0, ptr %t45, i64 %t46)
  store i64 %t47, ptr %l33
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb12:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/check:Checker", ptr %t48, i32 0, i32 1
  %t51 = load ptr, ptr %t50, !tbaa !29
  %t53 = getelementptr %"compiler/generic:Program", ptr %t51, i32 0, i32 2
  store ptr %t53, ptr %l36, !tbaa !29
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/check:Checker", ptr %t54, i32 0, i32 1
  %t57 = load ptr, ptr %t56, !tbaa !29
  %t59 = getelementptr %"compiler/generic:Program", ptr %t57, i32 0, i32 2
  %t60 = load i32, ptr %l3, !tbaa !23
  %t63 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t59, i32 %t60)
  store i32 %t63, ptr %l41
  br label %bb13
bb13:
  %t64 = load ptr, ptr %l36, !tbaa !29
  %t65 = load i32, ptr %l41, !tbaa !23
  %t66 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t64, i32 %t65)
  store { i64, ptr } %t66, ptr %l42
  br label %bb14
bb14:
  %t67 = load { i64, ptr }, ptr %l42, !tbaa !27
  store { i64, ptr } %t67, ptr %l6, !tbaa !27
  %t68 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t70 = extractvalue { i64, ptr } %t68, 0
  %t72 = icmp eq i64 %t70, 0
  br i1 %t72, label %bb15, label %bb16
bb15:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb16:
  br label %bb17
bb17:
  %t74 = load i64, ptr %l4, !tbaa !24
  %t75 = load i64, ptr %l5, !tbaa !24
  %t78 = call %"compiler/generic:Binding" @compiler_2fgeneric_3aBinding_2ector(ptr %s0, i64 %t74, i64 %t75)
  store %"compiler/generic:Binding" %t78, ptr %l48
  br label %bb18
bb18:
  %t79 = load %"compiler/generic:Binding", ptr %l48
  store %"compiler/generic:Binding" %t79, ptr %l7
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t81 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t81, ptr %l50, !tbaa !27
  %t82 = getelementptr { i64, ptr }, ptr %l50, i32 0, i32 1
  %t83 = load ptr, ptr %t82, !tbaa !27
  %t84 = getelementptr i32, ptr %t83, i64 0
  %t85 = load i32, ptr %t84, !tbaa !33
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunify(ptr %v0, ptr %s0, ptr %t80, i32 %t85, i32 %a2, ptr %l7, i1 false, i1 true)
  br label %bb19
bb19:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t93 = getelementptr %"compiler/check:Checker", ptr %t91, i32 0, i32 1
  %t94 = load ptr, ptr %t93, !tbaa !29
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInferThroughBounds(ptr %v0, ptr %s0, ptr %t94, ptr %l7)
  br label %bb20
bb20:
  %t97 = getelementptr %"compiler/generic:Binding", ptr %l7, i32 0, i32 2
  %t98 = load { i64, ptr }, ptr %t97, !tbaa !27
  store { i64, ptr } %t98, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t100 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t102 = extractvalue { i64, ptr } %t100, 0
  store i64 %t102, ptr %l10, !tbaa !24
  br label %bb21
bb21:
  %t104 = load i64, ptr %l9, !tbaa !24
  %t105 = load i64, ptr %l10, !tbaa !24
  %t108 = icmp slt i64 %t104, %t105
  %t110 = xor i1 %t108, true
  br i1 %t110, label %bb22, label %bb23
bb22:
  br label %bb29
bb23:
  br label %bb24
bb24:
  %t112 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t112, ptr %l64, !tbaa !27
  %t113 = load i64, ptr %l9, !tbaa !24
  %t115 = getelementptr { i64, ptr }, ptr %l64, i32 0, i32 1
  %t116 = load ptr, ptr %t115, !tbaa !27
  %t117 = getelementptr i32, ptr %t116, i64 %t113
  %t118 = load i32, ptr %t117, !tbaa !33
  %t121 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t124 = icmp eq i32 %t118, %t121
  br i1 %t124, label %bb25, label %bb26
bb25:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb26:
  br label %bb27
bb27:
  br label %bb28
bb28:
  %t126 = load i64, ptr %l9, !tbaa !24
  %t128 = add i64 %t126, 1
  store i64 %t128, ptr %l9, !tbaa !24
  br label %bb21
bb29:
  %t130 = load ptr, ptr %l0, !tbaa !29
  store ptr %t130, ptr %l72, !tbaa !29
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t133 = getelementptr %"compiler/check:Checker", ptr %t131, i32 0, i32 1
  %t134 = load ptr, ptr %t133, !tbaa !29
  store ptr %t134, ptr %l74, !tbaa !29
  %t135 = load i64, ptr %l1, !tbaa !24
  store i64 %t135, ptr %l75, !tbaa !24
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t138 = getelementptr %"compiler/check:Checker", ptr %t136, i32 0, i32 1
  %t139 = load ptr, ptr %t138, !tbaa !29
  %t141 = getelementptr %"compiler/generic:Program", ptr %t139, i32 0, i32 2
  %t142 = getelementptr %"compiler/generic:Binding", ptr %l7, i32 0, i32 2
  %t143 = load { i64, ptr }, ptr %t142, !tbaa !27
  %t146 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s0, ptr %t141, { i64, ptr } %t143)
  store i32 %t146, ptr %l80
  br label %bb30
bb30:
  %t147 = load ptr, ptr %l74, !tbaa !29
  %t148 = load i64, ptr %l75, !tbaa !24
  %t149 = load i32, ptr %l80, !tbaa !23
  %t150 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnInstance(ptr %v0, ptr %t147, i64 %t148, i32 %t149)
  store i64 %t150, ptr %l81
  br label %bb31
bb31:
  %t151 = load ptr, ptr %l72, !tbaa !29
  %t152 = load i64, ptr %l81, !tbaa !24
  %t153 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efnBody(ptr %v0, ptr %t151, i64 %t152)
  store i64 %t153, ptr %l82
  br label %bb32
bb32:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estructBody(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l8 = alloca ptr
  %l11 = alloca i1
  %l18 = alloca ptr
  %l19 = alloca i1
  %rv = alloca ptr
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/check:Checker", ptr %a0, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t8 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeDecl(ptr %v0, ptr %v0, ptr %t4, i32 %a1)
  store ptr %t8, ptr %l8
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l8, !tbaa !29
  store ptr %t9, ptr %l2, !tbaa !29
  %t10 = load ptr, ptr %l2, !tbaa !29
  %t12 = icmp eq ptr %t10, null
  br i1 %t12, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l11, !tbaa !21
  br label %bb4
bb3:
  %t14 = load ptr, ptr %l2, !tbaa !29
  %t16 = getelementptr %"compiler/ast:TypeDecl", ptr %t14, i32 0, i32 3
  %t17 = load ptr, ptr %t16, !tbaa !29
  %t19 = icmp eq ptr %t17, null
  store i1 %t19, ptr %l11, !tbaa !21
  br label %bb4
bb4:
  %t21 = load i1, ptr %l11, !tbaa !21
  br i1 %t21, label %bb5, label %bb6
bb5:
  store ptr null, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t23 = load ptr, ptr %l2, !tbaa !29
  %t25 = getelementptr %"compiler/ast:TypeDecl", ptr %t23, i32 0, i32 3
  %t26 = load ptr, ptr %t25, !tbaa !29
  store ptr %t26, ptr %l3, !tbaa !29
  %t28 = load ptr, ptr %l3, !tbaa !29
  store ptr %t28, ptr %l18, !tbaa !29
  store i1 false, ptr %l19, !tbaa !21
  %t29 = load ptr, ptr %l18, !tbaa !29
  %t30 = icmp ne ptr %t29, null
  br i1 %t30, label %bb8, label %bb9
bb8:
  %t32 = load ptr, ptr %l18, !tbaa !29
  %t33 = load i64, ptr %t32, !range !{i64 0, i64 5}
  %t35 = icmp eq i64 %t33, 0
  store i1 %t35, ptr %l19, !tbaa !21
  br label %bb9
bb9:
  %t36 = load i1, ptr %l19, !tbaa !21
  br i1 %t36, label %bb10, label %bb11
bb10:
  %t37 = load ptr, ptr %l3, !tbaa !29
  %t39 = getelementptr { i64, [6 x i64] }, ptr %t37, i32 0, i32 1
  %t40 = getelementptr { ptr }, ptr %t39, i32 0, i32 0
  %t41 = load ptr, ptr %t40
  store ptr %t41, ptr %l4, !tbaa !29
  br label %bb12
bb11:
  br label %bb13
bb12:
  %t43 = load ptr, ptr %l4, !tbaa !29
  store ptr %t43, ptr %rv
  br label %ret
bb13:
  br i1 true, label %bb14, label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb17
bb16:
  store ptr null, ptr %rv
  br label %ret
bb17:
  call void @__olang_check_failed(ptr @olang_loc_feabd87b4a742d50_a08e759c84965044)
  unreachable
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewalkIndexed(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3, i64 %a4, i64 %a5, ptr %a6, i32 %a7) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca { i64, i64, i64 }
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca ptr
  %l16 = alloca i64
  %l18 = alloca ptr
  %l19 = alloca ptr
  %l20 = alloca i64
  %l21 = alloca { i64, i64, i64 }
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l29 = alloca i64
  %l30 = alloca ptr
  %l31 = alloca %"compiler/source:Span"
  %l33 = alloca i32
  %l34 = alloca i64
  %l35 = alloca ptr
  %l36 = alloca %"compiler/source:Span"
  %l39 = alloca i32
  %l40 = alloca ptr
  %l41 = alloca %"compiler/source:Span"
  %l43 = alloca i32
  %l44 = alloca ptr
  %l49 = alloca i64
  %l53 = alloca { i64, i64, i64 }
  %l58 = alloca ptr
  %l63 = alloca ptr
  %l70 = alloca ptr
  %l71 = alloca ptr
  %l74 = alloca ptr
  %l75 = alloca %"compiler/source:Span"
  %l76 = alloca %"compiler/source:Span"
  %l77 = alloca i64
  %l81 = alloca ptr
  %l82 = alloca ptr
  %l85 = alloca { i64, ptr }
  %l88 = alloca { i64, ptr }
  %l92 = alloca ptr
  %l93 = alloca ptr
  %l94 = alloca ptr
  %l95 = alloca %"compiler/source:Span"
  %l96 = alloca ptr
  %l97 = alloca %"compiler/source:Span"
  %l98 = alloca i32
  %l99 = alloca i32
  %l103 = alloca ptr
  %l106 = alloca ptr
  %l108 = alloca ptr
  %l109 = alloca ptr
  %l110 = alloca ptr
  %l113 = alloca i32
  %l114 = alloca i32
  %l115 = alloca i64
  %l118 = alloca i64
  %l121 = alloca ptr
  %l122 = alloca %"compiler/source:Span"
  %l123 = alloca %"compiler/source:Span"
  %l124 = alloca i64
  %l128 = alloca ptr
  %l129 = alloca ptr
  %l132 = alloca { i64, ptr }
  %l133 = alloca ptr
  %l137 = alloca ptr
  %l138 = alloca { i64, ptr }
  %l142 = alloca ptr
  %l145 = alloca ptr
  %l146 = alloca %"compiler/source:Span"
  %l147 = alloca %"compiler/source:Span"
  %l148 = alloca ptr
  %l151 = alloca i32
  %l152 = alloca i32
  %l156 = alloca ptr
  %l160 = alloca ptr
  %l161 = alloca ptr
  %l164 = alloca ptr
  %l165 = alloca %"compiler/source:Span"
  %l166 = alloca ptr
  %l167 = alloca i64
  %l171 = alloca ptr
  %l176 = alloca i64
  %l178 = alloca ptr
  %l181 = alloca i64
  %l182 = alloca i32
  %l183 = alloca i64
  %l185 = alloca ptr
  %l188 = alloca i64
  %l189 = alloca i32
  %l195 = alloca ptr
  %l198 = alloca i64
  %l202 = alloca { i64, i64, i64 }
  %l206 = alloca ptr
  %l207 = alloca ptr
  %l208 = alloca %"compiler/source:Span"
  %l209 = alloca i64
  %l210 = alloca ptr
  %l211 = alloca %"compiler/source:Span"
  %l213 = alloca i32
  %l214 = alloca ptr
  %l215 = alloca ptr
  %l221 = alloca ptr
  %t34 = alloca { i64, [3 x i64] }, align 8
  %t264 = alloca { i64, [4 x i64] }, align 8
  %t419 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load %"compiler/source:Span", ptr %l1
  %t7 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eborrowedSource(ptr %v0, ptr %v2, ptr %t1, %"compiler/source:Span" %t2, ptr %a3)
  store i64 %t7, ptr %l29
  br label %bb1
bb1:
  %t8 = load i64, ptr %l29, !tbaa !24
  store i64 %t8, ptr %l8, !tbaa !24
  %t9 = load ptr, ptr %l0, !tbaa !29
  store ptr %t9, ptr %l30, !tbaa !29
  %t10 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t10, ptr %l31
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t11)
  store i32 %t13, ptr %l33
  br label %bb2
bb2:
  %t14 = load ptr, ptr %l30, !tbaa !29
  %t15 = load %"compiler/source:Span", ptr %l31
  %t16 = load i32, ptr %l33, !tbaa !23
  %t17 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehidden(ptr %v0, ptr %t14, %"compiler/source:Span" %t15, i32 %t16)
  store i64 %t17, ptr %l34
  br label %bb3
bb3:
  %t18 = load i64, ptr %l34, !tbaa !24
  store i64 %t18, ptr %l9, !tbaa !24
  %t19 = load ptr, ptr %l0, !tbaa !29
  store ptr %t19, ptr %l35, !tbaa !29
  %t20 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t20, ptr %l36
  %t21 = load i64, ptr %l9, !tbaa !24
  %t23 = trunc i64 %t21 to i32
  store i32 %t23, ptr %l39, !tbaa !23
  %t25 = load ptr, ptr %l0, !tbaa !29
  store ptr %t25, ptr %l40, !tbaa !29
  %t26 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t26, ptr %l41
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t27)
  store i32 %t29, ptr %l43
  br label %bb4
bb4:
  %t30 = load ptr, ptr %l40, !tbaa !29
  %t31 = load %"compiler/source:Span", ptr %l41
  %t32 = load i32, ptr %l43, !tbaa !23
  %t33 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v0, ptr %t30, %"compiler/source:Span" %t31, i32 %t32, i64 0)
  store ptr %t33, ptr %l44
  br label %bb5
bb5:
  store { i64, [3 x i64] } zeroinitializer, ptr %t34
  %t35 = getelementptr { i64, [3 x i64] }, ptr %t34, i32 0, i32 0
  store i64 0, ptr %t35
  %t36 = load %"compiler/source:Span", ptr %l36
  %t37 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t36, 0
  %t38 = load i32, ptr %l39, !tbaa !23
  %t39 = insertvalue { %"compiler/source:Span", i32, ptr } %t37, i32 %t38, 1
  %t40 = load ptr, ptr %l44, !tbaa !29
  %t41 = insertvalue { %"compiler/source:Span", i32, ptr } %t39, ptr %t40, 2
  %t42 = getelementptr { i64, [3 x i64] }, ptr %t34, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t41, ptr %t42
  %t43 = load { i64, [3 x i64] }, ptr %t34
  %t45 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t43, ptr %t45
  %t46 = load ptr, ptr %l35, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t46, ptr %t45)
  br label %bb6
bb6:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/check:Checker", ptr %t48, i32 0, i32 37
  %t52 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t50)
  store i64 %t52, ptr %l49
  br label %bb7
bb7:
  %t53 = load i64, ptr %l49, !tbaa !24
  store i64 %t53, ptr %l10, !tbaa !24
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t55 = load %"compiler/source:Span", ptr %l1
  %t59 = call { i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopen(ptr %v0, ptr %t54, i32 2, %"compiler/source:Span" %t55)
  store { i64, i64, i64 } %t59, ptr %l53
  br label %bb8
bb8:
  %t60 = load { i64, i64, i64 }, ptr %l53
  store { i64, i64, i64 } %t60, ptr %l11
  %t61 = getelementptr { i64, i64, i64 }, ptr %l11, i32 0, i32 0
  %t62 = load i64, ptr %t61, !tbaa !24
  store i64 %t62, ptr %l12, !tbaa !24
  %t64 = getelementptr { i64, i64, i64 }, ptr %l11, i32 0, i32 1
  %t65 = load i64, ptr %t64, !tbaa !24
  store i64 %t65, ptr %l13, !tbaa !24
  %t67 = getelementptr { i64, i64, i64 }, ptr %l11, i32 0, i32 2
  %t68 = load i64, ptr %t67, !tbaa !24
  store i64 %t68, ptr %l14, !tbaa !24
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t70)
  store ptr %t72, ptr %l58
  br label %bb9
bb9:
  %t73 = load ptr, ptr %l58, !tbaa !29
  %t75 = getelementptr %"compiler/check:frame", ptr %t73, i32 0, i32 10
  %t76 = load i64, ptr %l12, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t75, i64 %t76)
  br label %bb10
bb10:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t79)
  store ptr %t81, ptr %l63
  br label %bb11
bb11:
  %t82 = load ptr, ptr %l63, !tbaa !29
  %t84 = getelementptr %"compiler/check:frame", ptr %t82, i32 0, i32 11
  %t85 = load i64, ptr %l12, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t84, i64 %t85)
  br label %bb12
bb12:
  %t88 = load ptr, ptr %l2, !tbaa !29
  %t90 = getelementptr %"compiler/ast:ForIn", ptr %t88, i32 0, i32 3
  %t91 = load i1, ptr %t90, !tbaa !21
  br i1 %t91, label %bb13, label %bb14
bb13:
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t95 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t93)
  store ptr %t95, ptr %l70
  br label %bb15
bb14:
  br label %bb16
bb15:
  %t96 = load ptr, ptr %l70, !tbaa !29
  store ptr %t96, ptr %l71, !tbaa !29
  %t97 = load ptr, ptr %l71, !tbaa !29
  %t98 = getelementptr %"compiler/check:frame", ptr %t97, i32 0, i32 15
  %t99 = load i64, ptr %t98, !tbaa !24
  %t101 = add i64 %t99, 1
  %t103 = load ptr, ptr %l71, !tbaa !29
  %t104 = getelementptr %"compiler/check:frame", ptr %t103, i32 0, i32 15
  store i64 %t101, ptr %t104, !tbaa !24
  br label %bb16
bb16:
  %t105 = load ptr, ptr %l0, !tbaa !29
  store ptr %t105, ptr %l74, !tbaa !29
  %t106 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t106, ptr %l75
  %t107 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t107, ptr %l76
  store i64 %a5, ptr %l77, !tbaa !24
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t110 = load %"compiler/source:Span", ptr %l1
  %t111 = load i64, ptr %l8, !tbaa !24
  %t115 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t109, %"compiler/source:Span" %t110, i64 %t111)
  store ptr %t115, ptr %l81
  br label %bb17
bb17:
  %t116 = load ptr, ptr %l81, !tbaa !29
  store ptr %t116, ptr %l82, !tbaa !29
  %t117 = icmp sge i64 0, 0
  br i1 %t117, label %bb18, label %bb19
bb18:
  %t119 = icmp sle i64 0, 1152921504606846975
  br i1 %t119, label %bb20, label %bb21
bb19:
  call void @__olang_check_failed(ptr @olang_loc_5c35d65bf515aa44_9edccba99dd9b7f8)
  unreachable
bb20:
  %t121 = mul i64 0, 8
  %t122 = insertvalue { i64, ptr } undef, i64 0, 0
  %t123 = insertvalue { i64, ptr } %t122, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t123, ptr %l85, !tbaa !27
  %t124 = icmp sge i64 0, 0
  br i1 %t124, label %bb22, label %bb23
bb21:
  call void @__olang_check_failed(ptr @olang_loc_5c35d65bf515aa44_9edccba99dd9b7f8)
  unreachable
bb22:
  %t126 = icmp sle i64 0, 1152921504606846975
  br i1 %t126, label %bb24, label %bb25
bb23:
  call void @__olang_check_failed(ptr @olang_loc_5c35d65bf515aa44_9edccba99dd9b7f8)
  unreachable
bb24:
  %t128 = mul i64 0, 8
  %t129 = insertvalue { i64, ptr } undef, i64 0, 0
  %t130 = insertvalue { i64, ptr } %t129, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t130, ptr %l88, !tbaa !27
  %t131 = icmp sge i64 0, 0
  br i1 %t131, label %bb26, label %bb27
bb25:
  call void @__olang_check_failed(ptr @olang_loc_5c35d65bf515aa44_9edccba99dd9b7f8)
  unreachable
bb26:
  %t133 = icmp sle i64 0, 2305843009213693951
  br i1 %t133, label %bb28, label %bb29
bb27:
  call void @__olang_check_failed(ptr @olang_loc_19568a04807ed851_528b5bfe222c3865)
  unreachable
bb28:
  %t135 = mul i64 0, 4
  %t136 = insertvalue { i64, ptr } undef, i64 0, 0
  %t137 = insertvalue { i64, ptr } %t136, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t138 = load ptr, ptr %l74, !tbaa !29
  %t139 = load %"compiler/source:Span", ptr %l75
  %t140 = load %"compiler/source:Span", ptr %l76
  %t141 = load i64, ptr %l77, !tbaa !24
  %t142 = load ptr, ptr %l82, !tbaa !29
  %t143 = load { i64, ptr }, ptr %l85, !tbaa !27
  %t144 = load { i64, ptr }, ptr %l88, !tbaa !27
  %t146 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einvoke(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %t138, %"compiler/source:Span" %t139, %"compiler/source:Span" %t140, i64 %t141, ptr %t142, { i64, ptr } %t143, { i64, ptr } %t144, { i64, ptr } %t137)
  store ptr %t146, ptr %l92
  br label %bb30
bb29:
  call void @__olang_check_failed(ptr @olang_loc_19568a04807ed851_528b5bfe222c3865)
  unreachable
bb30:
  %t147 = load ptr, ptr %l92, !tbaa !29
  store ptr %t147, ptr %l15, !tbaa !29
  %t148 = load ptr, ptr %l0, !tbaa !29
  store ptr %t148, ptr %l93, !tbaa !29
  %t149 = load ptr, ptr %l0, !tbaa !29
  store ptr %t149, ptr %l94, !tbaa !29
  %t150 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t150, ptr %l95
  %t151 = load ptr, ptr %l0, !tbaa !29
  store ptr %t151, ptr %l96, !tbaa !29
  %t152 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t152, ptr %l97
  %t153 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t153, ptr %l98, !tbaa !23
  store i32 15, ptr %l99
  %t154 = load ptr, ptr %l0, !tbaa !29
  %t155 = load %"compiler/source:Span", ptr %l1
  %t156 = load i64, ptr %l9, !tbaa !24
  %t160 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t154, %"compiler/source:Span" %t155, i64 %t156)
  store ptr %t160, ptr %l103
  br label %bb31
bb31:
  %t161 = load ptr, ptr %l15, !tbaa !29
  %t163 = load ptr, ptr %l96, !tbaa !29
  %t164 = load %"compiler/source:Span", ptr %l97
  %t165 = load i32, ptr %l98, !tbaa !23
  %t166 = load i32, ptr %l99, !range !{i32 0, i32 52}
  %t167 = load ptr, ptr %l103, !tbaa !29
  %t169 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %t163, %"compiler/source:Span" %t164, i32 %t165, i32 %t166, ptr %t167, ptr %t161)
  store ptr %t169, ptr %l106
  br label %bb32
bb32:
  %t170 = load i64, ptr %l12, !tbaa !24
  %t171 = load ptr, ptr %l94, !tbaa !29
  %t172 = load %"compiler/source:Span", ptr %l95
  %t173 = load ptr, ptr %l106, !tbaa !29
  %t175 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebreakUnless(ptr %v0, ptr %v0, ptr %v0, ptr %t171, %"compiler/source:Span" %t172, ptr %t173, i64 %t170)
  store ptr %t175, ptr %l108
  br label %bb33
bb33:
  %t176 = load ptr, ptr %l93, !tbaa !29
  %t177 = load ptr, ptr %l108, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t176, ptr %t177)
  br label %bb34
bb34:
  %t178 = load ptr, ptr %l0, !tbaa !29
  store ptr %t178, ptr %l109, !tbaa !29
  %t179 = load ptr, ptr %l0, !tbaa !29
  store ptr %t179, ptr %l110, !tbaa !29
  %t180 = load ptr, ptr %l0, !tbaa !29
  %t181 = load i64, ptr %l8, !tbaa !24
  %t184 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalType(ptr %v0, ptr %t180, i64 %t181)
  store i32 %t184, ptr %l113
  br label %bb35
bb35:
  %t185 = load ptr, ptr %l110, !tbaa !29
  %t186 = load i32, ptr %l113, !tbaa !23
  %t187 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t185, i32 %t186)
  store i32 %t187, ptr %l114
  br label %bb36
bb36:
  %t188 = load ptr, ptr %l109, !tbaa !29
  %t189 = load i32, ptr %l114, !tbaa !23
  %t190 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euniqueWalk(ptr %v0, ptr %t188, i32 %t189)
  store i64 %t190, ptr %l115
  br label %bb37
bb37:
  %t191 = load i64, ptr %l115, !tbaa !24
  store i64 %t191, ptr %l16, !tbaa !24
  %t192 = load i64, ptr %l16, !tbaa !24
  %t194 = icmp slt i64 %t192, 0
  br i1 %t194, label %bb38, label %bb39
bb38:
  store i64 %a4, ptr %l118, !tbaa !24
  br label %bb40
bb39:
  %t198 = load i64, ptr %l16, !tbaa !24
  store i64 %t198, ptr %l118, !tbaa !24
  br label %bb40
bb40:
  %t200 = load i64, ptr %l118, !tbaa !24
  %t201 = load ptr, ptr %l0, !tbaa !29
  store ptr %t201, ptr %l121, !tbaa !29
  %t202 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t202, ptr %l122
  %t203 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t203, ptr %l123
  store i64 %t200, ptr %l124, !tbaa !24
  %t205 = load ptr, ptr %l0, !tbaa !29
  %t206 = load %"compiler/source:Span", ptr %l1
  %t207 = load i64, ptr %l8, !tbaa !24
  %t211 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t205, %"compiler/source:Span" %t206, i64 %t207)
  store ptr %t211, ptr %l128
  br label %bb41
bb41:
  %t212 = load ptr, ptr %l128, !tbaa !29
  store ptr %t212, ptr %l129, !tbaa !29
  %t213 = icmp sge i64 0, 0
  br i1 %t213, label %bb42, label %bb43
bb42:
  %t215 = icmp sle i64 0, 1152921504606846975
  br i1 %t215, label %bb44, label %bb45
bb43:
  call void @__olang_check_failed(ptr @olang_loc_130b25e968db6b32_47c65c95f253846)
  unreachable
bb44:
  %t217 = mul i64 0, 8
  %t218 = insertvalue { i64, ptr } undef, i64 0, 0
  %t219 = insertvalue { i64, ptr } %t218, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t219, ptr %l132, !tbaa !27
  %t220 = load ptr, ptr %l0, !tbaa !29
  store ptr %t220, ptr %l133, !tbaa !29
  %t221 = load ptr, ptr %l0, !tbaa !29
  %t222 = load %"compiler/source:Span", ptr %l1
  %t223 = load i64, ptr %l9, !tbaa !24
  %t227 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t221, %"compiler/source:Span" %t222, i64 %t223)
  store ptr %t227, ptr %l137
  br label %bb46
bb45:
  call void @__olang_check_failed(ptr @olang_loc_130b25e968db6b32_47c65c95f253846)
  unreachable
bb46:
  %t228 = load ptr, ptr %l133, !tbaa !29
  %t229 = load ptr, ptr %l137, !tbaa !29
  %t230 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eone(ptr %v0, ptr %v0, ptr %v0, ptr %t228, ptr %t229)
  store { i64, ptr } %t230, ptr %l138
  br label %bb47
bb47:
  %t231 = icmp sge i64 0, 0
  br i1 %t231, label %bb48, label %bb49
bb48:
  %t233 = icmp sle i64 0, 2305843009213693951
  br i1 %t233, label %bb50, label %bb51
bb49:
  call void @__olang_check_failed(ptr @olang_loc_19568a04807ed851_528b5bfe222c3865)
  unreachable
bb50:
  %t235 = mul i64 0, 4
  %t236 = insertvalue { i64, ptr } undef, i64 0, 0
  %t237 = insertvalue { i64, ptr } %t236, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t238 = load ptr, ptr %l121, !tbaa !29
  %t239 = load %"compiler/source:Span", ptr %l122
  %t240 = load %"compiler/source:Span", ptr %l123
  %t241 = load i64, ptr %l124, !tbaa !24
  %t242 = load ptr, ptr %l129, !tbaa !29
  %t243 = load { i64, ptr }, ptr %l132, !tbaa !27
  %t244 = load { i64, ptr }, ptr %l138, !tbaa !27
  %t246 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einvoke(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %t238, %"compiler/source:Span" %t239, %"compiler/source:Span" %t240, i64 %t241, ptr %t242, { i64, ptr } %t243, { i64, ptr } %t244, { i64, ptr } %t237)
  store ptr %t246, ptr %l142
  br label %bb52
bb51:
  call void @__olang_check_failed(ptr @olang_loc_19568a04807ed851_528b5bfe222c3865)
  unreachable
bb52:
  %t247 = load ptr, ptr %l142, !tbaa !29
  store ptr %t247, ptr %l18, !tbaa !29
  %t248 = load i64, ptr %l16, !tbaa !24
  %t250 = icmp sge i64 %t248, 0
  br i1 %t250, label %bb53, label %bb54
bb53:
  %t252 = load ptr, ptr %l0, !tbaa !29
  store ptr %t252, ptr %l145, !tbaa !29
  %t253 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t253, ptr %l146
  %t254 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t254, ptr %l147
  %t255 = load ptr, ptr %l0, !tbaa !29
  store ptr %t255, ptr %l148, !tbaa !29
  %t256 = load ptr, ptr %l18, !tbaa !29
  %t259 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t256)
  store i32 %t259, ptr %l151
  br label %bb55
bb54:
  br label %bb58
bb55:
  %t260 = load ptr, ptr %l148, !tbaa !29
  %t261 = load i32, ptr %l151, !tbaa !23
  %t262 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t260, i32 %t261)
  store i32 %t262, ptr %l152
  br label %bb56
bb56:
  %t263 = load ptr, ptr %l18, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t264
  %t265 = getelementptr { i64, [4 x i64] }, ptr %t264, i32 0, i32 0
  store i64 2, ptr %t265
  %t266 = load %"compiler/source:Span", ptr %l147
  %t267 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t266, 0
  %t268 = load i32, ptr %l152, !tbaa !23
  %t269 = insertvalue { %"compiler/source:Span", i32, ptr } %t267, i32 %t268, 1
  %t271 = insertvalue { %"compiler/source:Span", i32, ptr } %t269, ptr %t263, 2
  %t272 = getelementptr { i64, [4 x i64] }, ptr %t264, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t271, ptr %t272
  %t273 = load { i64, [4 x i64] }, ptr %t264
  %t275 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store { i64, [4 x i64] } %t273, ptr %t275
  %t276 = load ptr, ptr %l145, !tbaa !29
  %t277 = load %"compiler/source:Span", ptr %l146
  %t279 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v0, ptr %v0, ptr %t276, %"compiler/source:Span" %t277, ptr %t275)
  store ptr %t279, ptr %l156
  br label %bb57
bb57:
  %t280 = load ptr, ptr %l156, !tbaa !29
  store ptr %t280, ptr %l18, !tbaa !29
  br label %bb58
bb58:
  %t281 = load ptr, ptr %l2, !tbaa !29
  %t283 = getelementptr %"compiler/ast:ForIn", ptr %t281, i32 0, i32 3
  %t284 = load i1, ptr %t283, !tbaa !21
  br i1 %t284, label %bb59, label %bb60
bb59:
  %t286 = load ptr, ptr %l0, !tbaa !29
  %t288 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t286)
  store ptr %t288, ptr %l160
  br label %bb61
bb60:
  br label %bb62
bb61:
  %t289 = load ptr, ptr %l160, !tbaa !29
  store ptr %t289, ptr %l161, !tbaa !29
  %t290 = load ptr, ptr %l161, !tbaa !29
  %t291 = getelementptr %"compiler/check:frame", ptr %t290, i32 0, i32 15
  %t292 = load i64, ptr %t291, !tbaa !24
  %t294 = sub i64 %t292, 1
  %t296 = load ptr, ptr %l161, !tbaa !29
  %t297 = getelementptr %"compiler/check:frame", ptr %t296, i32 0, i32 15
  store i64 %t294, ptr %t297, !tbaa !24
  br label %bb62
bb62:
  %t298 = load ptr, ptr %l0, !tbaa !29
  store ptr %t298, ptr %l164, !tbaa !29
  %t299 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t299, ptr %l165
  %t300 = load ptr, ptr %l2, !tbaa !29
  store ptr %t300, ptr %l166, !tbaa !29
  %t301 = load i64, ptr %l9, !tbaa !24
  store i64 %t301, ptr %l167, !tbaa !24
  %t302 = load ptr, ptr %l0, !tbaa !29
  %t303 = load ptr, ptr %l18, !tbaa !29
  %t304 = load %"compiler/source:Span", ptr %l1
  %t308 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euniqueRef(ptr %v0, ptr %v0, ptr %v0, ptr %t302, ptr %t303, %"compiler/source:Span" %t304, i1 false)
  store ptr %t308, ptr %l171
  br label %bb63
bb63:
  %t309 = load ptr, ptr %l164, !tbaa !29
  %t310 = load %"compiler/source:Span", ptr %l165
  %t311 = load ptr, ptr %l166, !tbaa !29
  %t312 = load i64, ptr %l167, !tbaa !24
  %t313 = load ptr, ptr %l171, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eelementLocals(ptr %v0, ptr %v1, ptr %v0, ptr %t309, %"compiler/source:Span" %t310, ptr %t311, i64 %t312, ptr %t313)
  br label %bb64
bb64:
  %t314 = load ptr, ptr %l0, !tbaa !29
  %t315 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewalkBody(ptr %v0, ptr %v1, ptr %v3, ptr %t314, ptr %t315, ptr %a6, i32 %a7)
  br label %bb65
bb65:
  %t322 = load ptr, ptr %l0, !tbaa !29
  %t324 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t322)
  store ptr %t324, ptr %l178
  br label %bb66
bb66:
  %t325 = load ptr, ptr %l178, !tbaa !29
  %t327 = getelementptr %"compiler/check:frame", ptr %t325, i32 0, i32 10
  %t329 = call { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %t327)
  %t330 = extractvalue { i32, i64 } %t329, 1
  %t331 = extractvalue { i32, i64 } %t329, 0
  store i32 %t331, ptr %l182
  %t332 = icmp ne i32 %t331, 0
  br i1 %t332, label %bb68, label %ok.333, !prof !99
ok.333:
  store i64 %t330, ptr %l181
  br label %bb67
bb67:
  %t334 = load i64, ptr %l181, !tbaa !24
  store i64 %t334, ptr %l176, !tbaa !24
  br label %bb70
bb68:
  br label %bb69
bb69:
  br label %bb70
bb70:
  %t335 = load ptr, ptr %l0, !tbaa !29
  %t337 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t335)
  store ptr %t337, ptr %l185
  br label %bb71
bb71:
  %t338 = load ptr, ptr %l185, !tbaa !29
  %t340 = getelementptr %"compiler/check:frame", ptr %t338, i32 0, i32 11
  %t342 = call { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %t340)
  %t343 = extractvalue { i32, i64 } %t342, 1
  %t344 = extractvalue { i32, i64 } %t342, 0
  store i32 %t344, ptr %l189
  %t345 = icmp ne i32 %t344, 0
  br i1 %t345, label %bb73, label %ok.346, !prof !99
ok.346:
  store i64 %t343, ptr %l188
  br label %bb72
bb72:
  %t347 = load i64, ptr %l188, !tbaa !24
  store i64 %t347, ptr %l183, !tbaa !24
  br label %bb75
bb73:
  br label %bb74
bb74:
  br label %bb75
bb75:
  %t348 = load ptr, ptr %l0, !tbaa !29
  %t349 = load i64, ptr %l12, !tbaa !24
  %t350 = load i64, ptr %l13, !tbaa !24
  %t351 = load i64, ptr %l14, !tbaa !24
  %t352 = load i64, ptr %l10, !tbaa !24
  %t358 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclose(ptr %v0, ptr %v0, ptr %t348, i64 %t349, i64 %t350, i64 %t351, i64 %t352)
  store ptr %t358, ptr %l195
  br label %bb76
bb76:
  %t359 = load ptr, ptr %l195, !tbaa !29
  store ptr %t359, ptr %l19, !tbaa !29
  %t360 = load ptr, ptr %l0, !tbaa !29
  %t362 = getelementptr %"compiler/check:Checker", ptr %t360, i32 0, i32 37
  %t364 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t362)
  store i64 %t364, ptr %l198
  br label %bb77
bb77:
  %t365 = load i64, ptr %l198, !tbaa !24
  store i64 %t365, ptr %l20, !tbaa !24
  %t366 = load ptr, ptr %l0, !tbaa !29
  %t367 = load %"compiler/source:Span", ptr %l1
  %t371 = call { i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopen(ptr %v0, ptr %t366, i32 3, %"compiler/source:Span" %t367)
  store { i64, i64, i64 } %t371, ptr %l202
  br label %bb78
bb78:
  %t372 = load { i64, i64, i64 }, ptr %l202
  store { i64, i64, i64 } %t372, ptr %l21
  %t373 = getelementptr { i64, i64, i64 }, ptr %l21, i32 0, i32 0
  %t374 = load i64, ptr %t373, !tbaa !24
  store i64 %t374, ptr %l22, !tbaa !24
  %t376 = getelementptr { i64, i64, i64 }, ptr %l21, i32 0, i32 1
  %t377 = load i64, ptr %t376, !tbaa !24
  store i64 %t377, ptr %l23, !tbaa !24
  %t379 = getelementptr { i64, i64, i64 }, ptr %l21, i32 0, i32 2
  %t380 = load i64, ptr %t379, !tbaa !24
  store i64 %t380, ptr %l24, !tbaa !24
  %t382 = load ptr, ptr %l0, !tbaa !29
  store ptr %t382, ptr %l206, !tbaa !29
  %t383 = load ptr, ptr %l0, !tbaa !29
  store ptr %t383, ptr %l207, !tbaa !29
  %t384 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t384, ptr %l208
  %t385 = load i64, ptr %l9, !tbaa !24
  store i64 %t385, ptr %l209, !tbaa !24
  %t386 = load ptr, ptr %l0, !tbaa !29
  store ptr %t386, ptr %l210, !tbaa !29
  %t387 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t387, ptr %l211
  %t388 = load ptr, ptr %l0, !tbaa !29
  %t390 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t388)
  store i32 %t390, ptr %l213
  br label %bb79
bb79:
  %t391 = load ptr, ptr %l210, !tbaa !29
  %t392 = load %"compiler/source:Span", ptr %l211
  %t393 = load i32, ptr %l213, !tbaa !23
  %t394 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v0, ptr %t391, %"compiler/source:Span" %t392, i32 %t393, i64 1)
  store ptr %t394, ptr %l214
  br label %bb80
bb80:
  %t395 = load ptr, ptr %l207, !tbaa !29
  %t396 = load %"compiler/source:Span", ptr %l208
  %t397 = load i64, ptr %l209, !tbaa !24
  %t398 = load ptr, ptr %l214, !tbaa !29
  %t399 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eaddTo(ptr %v0, ptr %v0, ptr %v0, ptr %t395, %"compiler/source:Span" %t396, i64 %t397, ptr %t398)
  store ptr %t399, ptr %l215
  br label %bb81
bb81:
  %t400 = load ptr, ptr %l206, !tbaa !29
  %t401 = load ptr, ptr %l215, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t400, ptr %t401)
  br label %bb82
bb82:
  %t402 = load ptr, ptr %l0, !tbaa !29
  %t403 = load i64, ptr %l22, !tbaa !24
  %t404 = load i64, ptr %l23, !tbaa !24
  %t405 = load i64, ptr %l24, !tbaa !24
  %t406 = load i64, ptr %l20, !tbaa !24
  %t412 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclose(ptr %v0, ptr %v0, ptr %t402, i64 %t403, i64 %t404, i64 %t405, i64 %t406)
  store ptr %t412, ptr %l221
  br label %bb83
bb83:
  %t413 = load ptr, ptr %l221, !tbaa !29
  %t414 = load ptr, ptr %l0, !tbaa !29
  %t415 = load %"compiler/source:Span", ptr %l1
  %t416 = load ptr, ptr %l19, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t419
  %t420 = getelementptr { i64, [3 x i64] }, ptr %t419, i32 0, i32 0
  store i64 4, ptr %t420
  %t422 = insertvalue { %"compiler/source:Span", ptr, ptr } undef, %"compiler/source:Span" %t415, 0
  %t424 = insertvalue { %"compiler/source:Span", ptr, ptr } %t422, ptr %t416, 1
  %t426 = insertvalue { %"compiler/source:Span", ptr, ptr } %t424, ptr %t413, 2
  %t427 = getelementptr { i64, [3 x i64] }, ptr %t419, i32 0, i32 1
  store { %"compiler/source:Span", ptr, ptr } %t426, ptr %t427
  %t428 = load { i64, [3 x i64] }, ptr %t419
  %t430 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t428, ptr %t430
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t414, ptr %t430)
  br label %bb84
bb84:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fcheck_2ehandleRef(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i1
  %l12 = alloca i64
  %l13 = alloca ptr
  %l14 = alloca i1
  %l23 = alloca i64
  %l25 = alloca { i64, ptr }
  %l27 = alloca i64
  %l28 = alloca ptr
  %l29 = alloca i1
  %l35 = alloca i64
  %l37 = alloca ptr
  %l41 = alloca i64
  %l43 = alloca i64
  %rv = alloca i64
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 3
  store i1 %t8, ptr %l6, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l6, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l1, !tbaa !29
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = call i64 @compiler_2fcheck_2ehandleRoot(ptr %v0, ptr %t16)
  store i64 %t18, ptr %l12
  br label %bb6
bb6:
  %t19 = load i64, ptr %l12, !tbaa !24
  store i64 %t19, ptr %rv
  br label %ret
bb7:
  %t20 = load ptr, ptr %l0, !tbaa !29
  store ptr %t20, ptr %l13, !tbaa !29
  store i1 false, ptr %l14, !tbaa !21
  %t21 = load ptr, ptr %l13, !tbaa !29
  %t22 = icmp ne ptr %t21, null
  br i1 %t22, label %bb8, label %bb9
bb8:
  %t24 = load ptr, ptr %l13, !tbaa !29
  %t25 = load i64, ptr %t24, !range !{i64 0, i64 18}
  %t27 = icmp eq i64 %t25, 6
  store i1 %t27, ptr %l14, !tbaa !21
  br label %bb9
bb9:
  %t28 = load i1, ptr %l14, !tbaa !21
  br i1 %t28, label %bb10, label %bb11
bb10:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr { i64, [5 x i64] }, ptr %t29, i32 0, i32 1
  %t32 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t31, i32 0, i32 2
  %t33 = load ptr, ptr %t32
  store ptr %t33, ptr %l2, !tbaa !29
  br label %bb12
bb11:
  br label %bb17
bb12:
  %t35 = load ptr, ptr %l2, !tbaa !29
  %t37 = getelementptr %"compiler/typed:Call", ptr %t35, i32 0, i32 1
  %t38 = load { i64, ptr }, ptr %t37, !tbaa !27
  %t40 = extractvalue { i64, ptr } %t38, 0
  %t42 = icmp sgt i64 %t40, 0
  br i1 %t42, label %bb13, label %bb14
bb13:
  %t44 = load ptr, ptr %l2, !tbaa !29
  %t46 = getelementptr %"compiler/typed:Call", ptr %t44, i32 0, i32 1
  %t47 = load { i64, ptr }, ptr %t46, !tbaa !27
  store { i64, ptr } %t47, ptr %l25, !tbaa !27
  %t48 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !27
  %t50 = getelementptr ptr, ptr %t49, i64 0
  %t51 = load ptr, ptr %t50, !tbaa !39
  %t53 = call i64 @compiler_2fcheck_2ehandleRef(ptr %v0, ptr %t51)
  store i64 %t53, ptr %l27
  br label %bb15
bb14:
  store i64 -1, ptr %l23, !tbaa !24
  br label %bb16
bb15:
  %t54 = load i64, ptr %l27, !tbaa !24
  store i64 %t54, ptr %l23, !tbaa !24
  br label %bb16
bb16:
  %t55 = load i64, ptr %l23, !tbaa !24
  store i64 %t55, ptr %rv
  br label %ret
bb17:
  %t56 = load ptr, ptr %l0, !tbaa !29
  store ptr %t56, ptr %l28, !tbaa !29
  store i1 false, ptr %l29, !tbaa !21
  %t57 = load ptr, ptr %l28, !tbaa !29
  %t58 = icmp ne ptr %t57, null
  br i1 %t58, label %bb18, label %bb19
bb18:
  %t60 = load ptr, ptr %l28, !tbaa !29
  %t61 = load i64, ptr %t60, !range !{i64 0, i64 18}
  %t63 = icmp eq i64 %t61, 17
  store i1 %t63, ptr %l29, !tbaa !21
  br label %bb19
bb19:
  %t64 = load i1, ptr %l29, !tbaa !21
  br i1 %t64, label %bb20, label %bb21
bb20:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr { i64, [5 x i64] }, ptr %t65, i32 0, i32 1
  %t68 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t67, i32 0, i32 2
  %t69 = load ptr, ptr %t68
  store ptr %t69, ptr %l3, !tbaa !29
  br label %bb22
bb21:
  br label %bb24
bb22:
  %t71 = load ptr, ptr %l3, !tbaa !29
  %t73 = call i64 @compiler_2fcheck_2ehandleRef(ptr %v0, ptr %t71)
  store i64 %t73, ptr %l35
  br label %bb23
bb23:
  %t74 = load i64, ptr %l35, !tbaa !24
  store i64 %t74, ptr %rv
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
  call void @__olang_check_failed(ptr @olang_loc_cf73afff9a9afd3c_75ef637926e6ccb8)
  unreachable
bb29:
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t77 = call ptr @compiler_2fcheck_2ereadPlace(ptr %v0, ptr %v0, ptr %t75)
  store ptr %t77, ptr %l37
  br label %bb30
bb30:
  %t78 = load ptr, ptr %l37, !tbaa !29
  store ptr %t78, ptr %l4, !tbaa !29
  %t79 = load ptr, ptr %l4, !tbaa !29
  %t81 = icmp eq ptr %t79, null
  %t83 = xor i1 %t81, true
  br i1 %t83, label %bb31, label %bb32
bb31:
  %t85 = load ptr, ptr %l4, !tbaa !29
  %t87 = call i64 @compiler_2fcheck_2ehandleRoot(ptr %v0, ptr %t85)
  store i64 %t87, ptr %l43
  br label %bb33
bb32:
  store i64 -1, ptr %l41, !tbaa !24
  br label %bb34
bb33:
  %t88 = load i64, ptr %l43, !tbaa !24
  store i64 %t88, ptr %l41, !tbaa !24
  br label %bb34
bb34:
  %t89 = load i64, ptr %l41, !tbaa !24
  store i64 %t89, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2fcheck_2eintFloatBits(i32 %a0, %"compiler/check:litv" %a1) #0 {
entry:
  %l0 = alloca i32
  %l1 = alloca %"compiler/check:litv"
  %l2 = alloca i128
  %l3 = alloca i64
  %l9 = alloca float
  %l20 = alloca bfloat
  %l31 = alloca half
  %l40 = alloca double
  %rv = alloca i64
  store i32 %a0, ptr %l0
  store %"compiler/check:litv" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/check:litv", ptr %l1, i32 0, i32 6
  %t2 = load i1, ptr %t1, !tbaa !21
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = getelementptr %"compiler/check:litv", ptr %l1, i32 0, i32 8
  %t5 = load i128, ptr %t4
  store i128 %t5, ptr %l2
  %t7 = load i32, ptr %l0, !tbaa !23
  %t9 = icmp eq i32 %t7, 13
  br i1 %t9, label %bb3, label %bb4
bb2:
  br label %bb24
bb3:
  %t11 = getelementptr %"compiler/check:litv", ptr %l1, i32 0, i32 7
  %t12 = load i1, ptr %t11, !tbaa !21
  br i1 %t12, label %bb5, label %bb6
bb4:
  br label %bb8
bb5:
  %t14 = load i128, ptr %l2
  %t16 = uitofp i128 %t14 to float
  %t18 = fneg float %t16
  store float %t18, ptr %l9, !tbaa !25
  br label %bb7
bb6:
  %t20 = load i128, ptr %l2
  %t22 = uitofp i128 %t20 to float
  store float %t22, ptr %l9, !tbaa !25
  br label %bb7
bb7:
  %t24 = load float, ptr %l9, !tbaa !25
  %t25 = bitcast float %t24 to i32
  %t27 = zext i32 %t25 to i64
  store i64 %t27, ptr %rv
  br label %ret
bb8:
  %t29 = load i32, ptr %l0, !tbaa !23
  %t31 = icmp eq i32 %t29, 12
  br i1 %t31, label %bb9, label %bb10
bb9:
  %t33 = getelementptr %"compiler/check:litv", ptr %l1, i32 0, i32 7
  %t34 = load i1, ptr %t33, !tbaa !21
  br i1 %t34, label %bb11, label %bb12
bb10:
  br label %bb14
bb11:
  %t36 = load i128, ptr %l2
  %t38 = or i128 %t36, 1
  %t39 = call i128 @llvm.ctlz.i128(i128 %t38, i1 true)
  %t40 = sub i128 65, %t39
  %t41 = icmp sgt i128 %t40, 0
  %t42 = select i1 %t41, i128 %t40, i128 0
  %t43 = shl i128 1, %t42
  %t44 = sub i128 %t43, 1
  %t45 = and i128 %t36, %t44
  %t46 = icmp ne i128 %t45, 0
  %t47 = lshr i128 %t36, %t42
  %t48 = trunc i128 %t47 to i64
  %t49 = zext i1 %t46 to i64
  %t50 = or i64 %t48, %t49
  %t51 = call bfloat @__olang_int_bf16(i64 %t50, i1 false)
  %t52 = trunc i128 %t42 to i32
  %t53 = add i32 %t52, 127
  %t54 = shl i32 %t53, 23
  %t55 = bitcast i32 %t54 to float
  %t56 = bitcast bfloat %t51 to i16
  %t57 = zext i16 %t56 to i32
  %t58 = shl i32 %t57, 16
  %t59 = bitcast i32 %t58 to float
  %t60 = fmul float %t59, %t55
  %t61 = bitcast float %t60 to i32
  %t62 = lshr i32 %t61, 16
  %t63 = and i32 %t62, 1
  %t64 = add i32 %t63, 32767
  %t65 = add i32 %t61, %t64
  %t66 = lshr i32 %t65, 16
  %t67 = or i32 %t62, 64
  %t68 = and i32 %t61, 2147483647
  %t69 = icmp ugt i32 %t68, 2139095040
  %t70 = select i1 %t69, i32 %t67, i32 %t66
  %t71 = trunc i32 %t70 to i16
  %t72 = bitcast i16 %t71 to bfloat
  %t74 = bitcast bfloat %t72 to i16
  %t75 = xor i16 %t74, -32768
  %t76 = bitcast i16 %t75 to bfloat
  store bfloat %t76, ptr %l20, !tbaa !67
  br label %bb13
bb12:
  %t78 = load i128, ptr %l2
  %t80 = or i128 %t78, 1
  %t81 = call i128 @llvm.ctlz.i128(i128 %t80, i1 true)
  %t82 = sub i128 65, %t81
  %t83 = icmp sgt i128 %t82, 0
  %t84 = select i1 %t83, i128 %t82, i128 0
  %t85 = shl i128 1, %t84
  %t86 = sub i128 %t85, 1
  %t87 = and i128 %t78, %t86
  %t88 = icmp ne i128 %t87, 0
  %t89 = lshr i128 %t78, %t84
  %t90 = trunc i128 %t89 to i64
  %t91 = zext i1 %t88 to i64
  %t92 = or i64 %t90, %t91
  %t93 = call bfloat @__olang_int_bf16(i64 %t92, i1 false)
  %t94 = trunc i128 %t84 to i32
  %t95 = add i32 %t94, 127
  %t96 = shl i32 %t95, 23
  %t97 = bitcast i32 %t96 to float
  %t98 = bitcast bfloat %t93 to i16
  %t99 = zext i16 %t98 to i32
  %t100 = shl i32 %t99, 16
  %t101 = bitcast i32 %t100 to float
  %t102 = fmul float %t101, %t97
  %t103 = bitcast float %t102 to i32
  %t104 = lshr i32 %t103, 16
  %t105 = and i32 %t104, 1
  %t106 = add i32 %t105, 32767
  %t107 = add i32 %t103, %t106
  %t108 = lshr i32 %t107, 16
  %t109 = or i32 %t104, 64
  %t110 = and i32 %t103, 2147483647
  %t111 = icmp ugt i32 %t110, 2139095040
  %t112 = select i1 %t111, i32 %t109, i32 %t108
  %t113 = trunc i32 %t112 to i16
  %t114 = bitcast i16 %t113 to bfloat
  store bfloat %t114, ptr %l20, !tbaa !67
  br label %bb13
bb13:
  %t116 = load bfloat, ptr %l20, !tbaa !67
  %t117 = bitcast bfloat %t116 to i16
  %t118 = call i16 asm "", "=r,0"(i16 %t117)
  %t120 = zext i16 %t118 to i64
  store i64 %t120, ptr %rv
  br label %ret
bb14:
  %t122 = load i32, ptr %l0, !tbaa !23
  %t124 = icmp eq i32 %t122, 11
  br i1 %t124, label %bb15, label %bb16
bb15:
  %t126 = getelementptr %"compiler/check:litv", ptr %l1, i32 0, i32 7
  %t127 = load i1, ptr %t126, !tbaa !21
  br i1 %t127, label %bb17, label %bb18
bb16:
  br label %bb20
bb17:
  %t129 = load i128, ptr %l2
  %t131 = uitofp i128 %t129 to double
  %t132 = call double @llvm.arithmetic.fence.f64(double %t131)
  %t133 = fptrunc double %t132 to half
  %t135 = fneg half %t133
  store half %t135, ptr %l31, !tbaa !66
  br label %bb19
bb18:
  %t137 = load i128, ptr %l2
  %t139 = uitofp i128 %t137 to double
  %t140 = call double @llvm.arithmetic.fence.f64(double %t139)
  %t141 = fptrunc double %t140 to half
  store half %t141, ptr %l31, !tbaa !66
  br label %bb19
bb19:
  %t143 = load half, ptr %l31, !tbaa !66
  %t144 = bitcast half %t143 to i16
  %t145 = call i16 asm "", "=r,0"(i16 %t144)
  %t147 = zext i16 %t145 to i64
  store i64 %t147, ptr %rv
  br label %ret
bb20:
  %t149 = getelementptr %"compiler/check:litv", ptr %l1, i32 0, i32 7
  %t150 = load i1, ptr %t149, !tbaa !21
  br i1 %t150, label %bb21, label %bb22
bb21:
  %t152 = load i128, ptr %l2
  %t154 = uitofp i128 %t152 to double
  %t156 = fneg double %t154
  store double %t156, ptr %l40, !tbaa !26
  br label %bb23
bb22:
  %t158 = load i128, ptr %l2
  %t160 = uitofp i128 %t158 to double
  store double %t160, ptr %l40, !tbaa !26
  br label %bb23
bb23:
  %t162 = load double, ptr %l40, !tbaa !26
  %t163 = bitcast double %t162 to i64
  store i64 %t163, ptr %rv
  br label %ret
bb24:
  %t166 = getelementptr %"compiler/check:litv", ptr %l1, i32 0, i32 2
  %t167 = load i1, ptr %t166, !tbaa !21
  br i1 %t167, label %bb25, label %bb26
bb25:
  %t169 = getelementptr %"compiler/check:litv", ptr %l1, i32 0, i32 3
  %t170 = load i64, ptr %t169, !tbaa !24
  store i64 %t170, ptr %l3, !tbaa !65
  %t173 = load i32, ptr %l0, !tbaa !23
  %t175 = icmp eq i32 %t173, 13
  br i1 %t175, label %bb27, label %bb28
bb26:
  br label %bb36
bb27:
  %t177 = load i64, ptr %l3, !tbaa !65
  %t179 = uitofp i64 %t177 to float
  %t181 = bitcast float %t179 to i32
  %t183 = zext i32 %t181 to i64
  store i64 %t183, ptr %rv
  br label %ret
bb28:
  br label %bb29
bb29:
  %t185 = load i32, ptr %l0, !tbaa !23
  %t187 = icmp eq i32 %t185, 12
  br i1 %t187, label %bb30, label %bb31
bb30:
  %t189 = load i64, ptr %l3, !tbaa !65
  %t191 = call bfloat @__olang_int_bf16(i64 %t189, i1 false)
  %t193 = bitcast bfloat %t191 to i16
  %t194 = call i16 asm "", "=r,0"(i16 %t193)
  %t196 = zext i16 %t194 to i64
  store i64 %t196, ptr %rv
  br label %ret
bb31:
  br label %bb32
bb32:
  %t198 = load i32, ptr %l0, !tbaa !23
  %t200 = icmp eq i32 %t198, 11
  br i1 %t200, label %bb33, label %bb34
bb33:
  %t202 = load i64, ptr %l3, !tbaa !65
  %t204 = uitofp i64 %t202 to double
  %t205 = call double @llvm.arithmetic.fence.f64(double %t204)
  %t206 = fptrunc double %t205 to half
  %t208 = bitcast half %t206 to i16
  %t209 = call i16 asm "", "=r,0"(i16 %t208)
  %t211 = zext i16 %t209 to i64
  store i64 %t211, ptr %rv
  br label %ret
bb34:
  br label %bb35
bb35:
  %t213 = load i64, ptr %l3, !tbaa !65
  %t215 = uitofp i64 %t213 to double
  %t217 = bitcast double %t215 to i64
  store i64 %t217, ptr %rv
  br label %ret
bb36:
  %t220 = load i32, ptr %l0, !tbaa !23
  %t222 = icmp eq i32 %t220, 13
  br i1 %t222, label %bb37, label %bb38
bb37:
  %t224 = getelementptr %"compiler/check:litv", ptr %l1, i32 0, i32 3
  %t225 = load i64, ptr %t224, !tbaa !24
  %t227 = sitofp i64 %t225 to float
  %t229 = bitcast float %t227 to i32
  %t231 = zext i32 %t229 to i64
  store i64 %t231, ptr %rv
  br label %ret
bb38:
  br label %bb39
bb39:
  %t233 = load i32, ptr %l0, !tbaa !23
  %t235 = icmp eq i32 %t233, 12
  br i1 %t235, label %bb40, label %bb41
bb40:
  %t237 = getelementptr %"compiler/check:litv", ptr %l1, i32 0, i32 3
  %t238 = load i64, ptr %t237, !tbaa !24
  %t240 = icmp slt i64 %t238, 0
  %t241 = sub i64 0, %t238
  %t242 = select i1 %t240, i64 %t241, i64 %t238
  %t243 = call bfloat @__olang_int_bf16(i64 %t242, i1 %t240)
  %t245 = bitcast bfloat %t243 to i16
  %t246 = call i16 asm "", "=r,0"(i16 %t245)
  %t248 = zext i16 %t246 to i64
  store i64 %t248, ptr %rv
  br label %ret
bb41:
  br label %bb42
bb42:
  %t250 = load i32, ptr %l0, !tbaa !23
  %t252 = icmp eq i32 %t250, 11
  br i1 %t252, label %bb43, label %bb44
bb43:
  %t254 = getelementptr %"compiler/check:litv", ptr %l1, i32 0, i32 3
  %t255 = load i64, ptr %t254, !tbaa !24
  %t257 = sitofp i64 %t255 to double
  %t258 = call double @llvm.arithmetic.fence.f64(double %t257)
  %t259 = fptrunc double %t258 to half
  %t261 = bitcast half %t259 to i16
  %t262 = call i16 asm "", "=r,0"(i16 %t261)
  %t264 = zext i16 %t262 to i64
  store i64 %t264, ptr %rv
  br label %ret
bb44:
  br label %bb45
bb45:
  %t266 = getelementptr %"compiler/check:litv", ptr %l1, i32 0, i32 3
  %t267 = load i64, ptr %t266, !tbaa !24
  %t269 = sitofp i64 %t267 to double
  %t271 = bitcast double %t269 to i64
  store i64 %t271, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2fcheck_2eisCharLit(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i1
  %l3 = alloca ptr
  %l4 = alloca i1
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 30}
  %t8 = icmp eq i64 %t6, 1
  store i1 %t8, ptr %l4, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l4, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32 }, ptr %t12, i32 0, i32 1
  %t14 = load i32, ptr %t13, !range !{i32 0, i32 114}
  store i32 %t14, ptr %l1
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t16 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t18 = trunc i64 4 to i32
  %t19 = icmp eq i32 %t16, %t18
  store i1 %t19, ptr %l2, !tbaa !21
  br label %bb11
bb6:
  br i1 true, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  store i1 false, ptr %l2, !tbaa !21
  br label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_83df14ccfb59caa2_79e7c0956b45666e)
  unreachable
bb11:
  %t21 = load i1, ptr %l2, !tbaa !21
  store i1 %t21, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fcheck_2elimitIndex(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca [6 x { i64, ptr }]
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l14 = alloca i64
  %l17 = alloca i64
  %l38 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = insertvalue [6 x { i64, ptr }] undef, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d21, i32 0, i32 1) }, 0
  %t2 = insertvalue [6 x { i64, ptr }] %t1, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d22, i32 0, i32 1) }, 1
  %t3 = insertvalue [6 x { i64, ptr }] %t2, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d23, i32 0, i32 1) }, 2
  %t4 = insertvalue [6 x { i64, ptr }] %t3, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d24, i32 0, i32 1) }, 3
  %t5 = insertvalue [6 x { i64, ptr }] %t4, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d25, i32 0, i32 1) }, 4
  %t6 = insertvalue [6 x { i64, ptr }] %t5, { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d26, i32 0, i32 1) }, 5
  store [6 x { i64, ptr }] %t6, ptr %l1
  store i64 0, ptr %l2, !tbaa !24
  %t8 = load [6 x { i64, ptr }], ptr %l1
  store i64 6, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t11 = load i64, ptr %l3, !tbaa !24
  %t12 = load i64, ptr %l2, !tbaa !24
  %t15 = icmp sgt i64 %t11, %t12
  br i1 %t15, label %bb1, label %bb2
bb1:
  %t17 = load i64, ptr %l4, !tbaa !24
  %t19 = icmp sgt i64 %t17, 0
  br i1 %t19, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l14, !tbaa !24
  br label %bb6
bb3:
  %t21 = load i64, ptr %l3, !tbaa !24
  %t22 = load i64, ptr %l2, !tbaa !24
  %t25 = sub i64 %t21, %t22
  %t26 = load i64, ptr %l4, !tbaa !24
  %t29 = add i64 %t25, %t26
  %t31 = sub i64 %t29, 1
  %t32 = load i64, ptr %l4, !tbaa !24
  %t35 = sdiv i64 %t31, %t32
  store i64 %t35, ptr %l17, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l17, !tbaa !24
  br label %bb5
bb5:
  %t37 = load i64, ptr %l17, !tbaa !24
  store i64 %t37, ptr %l14, !tbaa !24
  br label %bb6
bb6:
  %t38 = load i64, ptr %l14, !tbaa !24
  store i64 %t38, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb7
bb7:
  %t39 = load i64, ptr %l6, !tbaa !24
  %t40 = load i64, ptr %l5, !tbaa !24
  %t43 = icmp slt i64 %t39, %t40
  %t45 = xor i1 %t43, true
  br i1 %t45, label %bb8, label %bb9
bb8:
  br label %bb16
bb9:
  br label %bb10
bb10:
  %t47 = load i64, ptr %l2, !tbaa !24
  %t48 = load i64, ptr %l6, !tbaa !24
  %t49 = load i64, ptr %l4, !tbaa !24
  %t52 = mul i64 %t48, %t49
  %t55 = add i64 %t47, %t52
  store i64 %t55, ptr %l7, !tbaa !24
  %t57 = load i64, ptr %l7, !tbaa !24
  %t59 = getelementptr [6 x { i64, ptr }], ptr %l1, i64 0, i64 %t57
  %t60 = load { i64, ptr }, ptr %t59, !tbaa !37
  %t64 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %v0, { i64, ptr } %t60, { i64, ptr } %a0)
  store i1 %t64, ptr %l38
  br label %bb11
bb11:
  %t65 = load i1, ptr %l38, !tbaa !21
  br i1 %t65, label %bb12, label %bb13
bb12:
  %t66 = load i64, ptr %l7, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t66, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  br label %bb15
bb15:
  %t68 = load i64, ptr %l6, !tbaa !24
  %t70 = add i64 %t68, 1
  store i64 %t70, ptr %l6, !tbaa !24
  br label %bb7
bb16:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2fcheck_2elocalIdOf(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca i1
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
  store ptr %t6, ptr %l6, !tbaa !29
  store i1 false, ptr %l7, !tbaa !21
  %t7 = load ptr, ptr %l6, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb4, label %bb5
bb4:
  %t10 = load ptr, ptr %l6, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 8}
  %t13 = icmp eq i64 %t11, 0
  store i1 %t13, ptr %l7, !tbaa !21
  br label %bb5
bb5:
  %t14 = load i1, ptr %l7, !tbaa !21
  br i1 %t14, label %bb6, label %bb7
bb6:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr { i64, [4 x i64] }, ptr %t15, i32 0, i32 1
  %t18 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t17, i32 0, i32 2
  %t19 = load i32, ptr %t18
  store i32 %t19, ptr %l1, !tbaa !23
  br label %bb8
bb7:
  br label %bb9
bb8:
  %t21 = load i32, ptr %l1, !tbaa !23
  %t23 = sext i32 %t21 to i64
  store i64 %t23, ptr %l5, !tbaa !24
  br label %bb14
bb9:
  br i1 true, label %bb10, label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb13
bb12:
  store i64 -1, ptr %l5, !tbaa !24
  br label %bb14
bb13:
  call void @__olang_check_failed(ptr @olang_loc_828d46431809dd00_d1819fff0627a99c)
  unreachable
bb14:
  %t25 = load i64, ptr %l5, !tbaa !24
  store i64 %t25, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2fcheck_2eplainArg(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i1
  %l3 = alloca ptr
  %l4 = alloca i1
  %l7 = alloca ptr
  %l8 = alloca i1
  %l13 = alloca ptr
  %l14 = alloca i1
  %l19 = alloca ptr
  %l20 = alloca i1
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
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l4, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l4, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb6
bb5:
  store i1 true, ptr %l2, !tbaa !21
  br label %bb23
bb6:
  %t10 = load ptr, ptr %l0, !tbaa !29
  store ptr %t10, ptr %l7, !tbaa !29
  store i1 false, ptr %l8, !tbaa !21
  %t11 = load ptr, ptr %l7, !tbaa !29
  %t12 = icmp ne ptr %t11, null
  br i1 %t12, label %bb7, label %bb8
bb7:
  %t14 = load ptr, ptr %l7, !tbaa !29
  %t15 = load i64, ptr %t14, !range !{i64 0, i64 18}
  %t17 = icmp eq i64 %t15, 2
  store i1 %t17, ptr %l8, !tbaa !21
  br label %bb8
bb8:
  %t18 = load i1, ptr %l8, !tbaa !21
  br i1 %t18, label %bb9, label %bb10
bb9:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr { i64, [5 x i64] }, ptr %t19, i32 0, i32 1
  %t22 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t21, i32 0, i32 2
  %t23 = load ptr, ptr %t22
  store ptr %t23, ptr %l1, !tbaa !29
  br label %bb15
bb10:
  %t25 = load ptr, ptr %l0, !tbaa !29
  store ptr %t25, ptr %l13, !tbaa !29
  store i1 false, ptr %l14, !tbaa !21
  %t26 = load ptr, ptr %l13, !tbaa !29
  %t27 = icmp ne ptr %t26, null
  br i1 %t27, label %bb11, label %bb12
bb11:
  %t29 = load ptr, ptr %l13, !tbaa !29
  %t30 = load i64, ptr %t29, !range !{i64 0, i64 18}
  %t32 = icmp eq i64 %t30, 3
  store i1 %t32, ptr %l14, !tbaa !21
  br label %bb12
bb12:
  %t33 = load i1, ptr %l14, !tbaa !21
  br i1 %t33, label %bb13, label %bb14
bb13:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr { i64, [5 x i64] }, ptr %t34, i32 0, i32 1
  %t37 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t36, i32 0, i32 2
  %t38 = load ptr, ptr %t37
  store ptr %t38, ptr %l1, !tbaa !29
  br label %bb15
bb14:
  br label %bb18
bb15:
  %t40 = load ptr, ptr %l1, !tbaa !29
  store ptr %t40, ptr %l19, !tbaa !29
  store i1 false, ptr %l20, !tbaa !21
  %t41 = load ptr, ptr %l19, !tbaa !29
  %t42 = icmp ne ptr %t41, null
  br i1 %t42, label %bb16, label %bb17
bb16:
  %t44 = load ptr, ptr %l19, !tbaa !29
  %t45 = load i64, ptr %t44, !range !{i64 0, i64 8}
  %t47 = icmp eq i64 %t45, 0
  store i1 %t47, ptr %l20, !tbaa !21
  br label %bb17
bb17:
  %t48 = load i1, ptr %l20, !tbaa !21
  store i1 %t48, ptr %l2, !tbaa !21
  br label %bb23
bb18:
  br i1 true, label %bb19, label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb22
bb21:
  store i1 false, ptr %l2, !tbaa !21
  br label %bb23
bb22:
  call void @__olang_check_failed(ptr @olang_loc_19cea36a65a07eff_69e525b70d2a65cb)
  unreachable
bb23:
  %t49 = load i1, ptr %l2, !tbaa !21
  store i1 %t49, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2estmtLike(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i1
  %l4 = alloca ptr
  %l5 = alloca i1
  %l8 = alloca ptr
  %l9 = alloca i1
  %l12 = alloca ptr
  %l13 = alloca i1
  %l16 = alloca ptr
  %l17 = alloca i1
  %l23 = alloca i1
  %l24 = alloca ptr
  %l25 = alloca i1
  %l32 = alloca i1
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 30}
  %t8 = icmp eq i64 %t6, 12
  store i1 %t8, ptr %l5, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l5, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb13
bb4:
  %t10 = load ptr, ptr %l0, !tbaa !29
  store ptr %t10, ptr %l8, !tbaa !29
  store i1 false, ptr %l9, !tbaa !21
  %t11 = load ptr, ptr %l8, !tbaa !29
  %t12 = icmp ne ptr %t11, null
  br i1 %t12, label %bb5, label %bb6
bb5:
  %t14 = load ptr, ptr %l8, !tbaa !29
  %t15 = load i64, ptr %t14, !range !{i64 0, i64 30}
  %t17 = icmp eq i64 %t15, 21
  store i1 %t17, ptr %l9, !tbaa !21
  br label %bb6
bb6:
  %t18 = load i1, ptr %l9, !tbaa !21
  br i1 %t18, label %bb7, label %bb8
bb7:
  br label %bb13
bb8:
  %t19 = load ptr, ptr %l0, !tbaa !29
  store ptr %t19, ptr %l12, !tbaa !29
  store i1 false, ptr %l13, !tbaa !21
  %t20 = load ptr, ptr %l12, !tbaa !29
  %t21 = icmp ne ptr %t20, null
  br i1 %t21, label %bb9, label %bb10
bb9:
  %t23 = load ptr, ptr %l12, !tbaa !29
  %t24 = load i64, ptr %t23, !range !{i64 0, i64 30}
  %t26 = icmp eq i64 %t24, 4
  store i1 %t26, ptr %l13, !tbaa !21
  br label %bb10
bb10:
  %t27 = load i1, ptr %l13, !tbaa !21
  br i1 %t27, label %bb11, label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb14
bb13:
  store i1 true, ptr %l3, !tbaa !21
  br label %bb35
bb14:
  %t28 = load ptr, ptr %l0, !tbaa !29
  store ptr %t28, ptr %l16, !tbaa !29
  store i1 false, ptr %l17, !tbaa !21
  %t29 = load ptr, ptr %l16, !tbaa !29
  %t30 = icmp ne ptr %t29, null
  br i1 %t30, label %bb15, label %bb16
bb15:
  %t32 = load ptr, ptr %l16, !tbaa !29
  %t33 = load i64, ptr %t32, !range !{i64 0, i64 30}
  %t35 = icmp eq i64 %t33, 2
  store i1 %t35, ptr %l17, !tbaa !21
  br label %bb16
bb16:
  %t36 = load i1, ptr %l17, !tbaa !21
  br i1 %t36, label %bb17, label %bb18
bb17:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr { i64, [4 x i64] }, ptr %t37, i32 0, i32 1
  %t40 = getelementptr { %"compiler/source:Span", ptr }, ptr %t39, i32 0, i32 1
  %t41 = load ptr, ptr %t40
  store ptr %t41, ptr %l1, !tbaa !29
  br label %bb19
bb18:
  br label %bb21
bb19:
  %t43 = load ptr, ptr %l1, !tbaa !29
  %t45 = call i1 @compiler_2fcheck_2estmtLike(ptr %v0, ptr %t43)
  store i1 %t45, ptr %l23
  br label %bb20
bb20:
  %t46 = load i1, ptr %l23, !tbaa !21
  store i1 %t46, ptr %l3, !tbaa !21
  br label %bb35
bb21:
  %t47 = load ptr, ptr %l0, !tbaa !29
  store ptr %t47, ptr %l24, !tbaa !29
  store i1 false, ptr %l25, !tbaa !21
  %t48 = load ptr, ptr %l24, !tbaa !29
  %t49 = icmp ne ptr %t48, null
  br i1 %t49, label %bb22, label %bb23
bb22:
  %t51 = load ptr, ptr %l24, !tbaa !29
  %t52 = load i64, ptr %t51, !range !{i64 0, i64 30}
  %t54 = icmp eq i64 %t52, 3
  store i1 %t54, ptr %l25, !tbaa !21
  br label %bb23
bb23:
  %t55 = load i1, ptr %l25, !tbaa !21
  br i1 %t55, label %bb24, label %bb25
bb24:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr { i64, [4 x i64] }, ptr %t56, i32 0, i32 1
  %t59 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t58, i32 0, i32 1
  %t60 = load i32, ptr %t59, !range !{i32 0, i32 114}
  store i32 %t60, ptr %l2
  br label %bb26
bb25:
  br label %bb30
bb26:
  %t62 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t64 = trunc i64 92 to i32
  %t65 = icmp eq i32 %t62, %t64
  br i1 %t65, label %bb27, label %bb28
bb27:
  store i1 true, ptr %l32, !tbaa !21
  br label %bb29
bb28:
  %t67 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t69 = trunc i64 93 to i32
  %t70 = icmp eq i32 %t67, %t69
  store i1 %t70, ptr %l32, !tbaa !21
  br label %bb29
bb29:
  %t72 = load i1, ptr %l32, !tbaa !21
  store i1 %t72, ptr %l3, !tbaa !21
  br label %bb35
bb30:
  br i1 true, label %bb31, label %bb32
bb31:
  br label %bb33
bb32:
  br label %bb34
bb33:
  store i1 false, ptr %l3, !tbaa !21
  br label %bb35
bb34:
  call void @__olang_check_failed(ptr @olang_loc_d195b38137e2d30_7d67c1d5e7f3802c)
  unreachable
bb35:
  %t73 = load i1, ptr %l3, !tbaa !21
  store i1 %t73, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"compiler/check:litv" @compiler_2fcheck_3alitv_2ector(ptr %v0, i1 %a0, i1 %a1, i1 %a2, i64 %a3, double %a4) #0 {
entry:
  %rv = alloca %"compiler/check:litv"
  br label %start
start:
  br label %bb0
bb0:
  %t12 = insertvalue %"compiler/check:litv" undef, i1 %a0, 0
  %t14 = insertvalue %"compiler/check:litv" %t12, i1 %a1, 1
  %t16 = insertvalue %"compiler/check:litv" %t14, i1 %a2, 2
  %t18 = insertvalue %"compiler/check:litv" %t16, i64 %a3, 3
  %t20 = insertvalue %"compiler/check:litv" %t18, double %a4, 4
  %t22 = insertvalue %"compiler/check:litv" %t20, i1 false, 5
  %t24 = insertvalue %"compiler/check:litv" %t22, i1 false, 6
  %t26 = insertvalue %"compiler/check:litv" %t24, i1 false, 7
  %t28 = insertvalue %"compiler/check:litv" %t26, i128 0, 8
  store %"compiler/check:litv" %t28, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:litv", ptr %rv
  ret %"compiler/check:litv" %rr
}

define dso_local %"compiler/check:roFn" @compiler_2fcheck_3aroFn_2ector(ptr %v0, ptr %v1, i64 %a0, i64 %a1, { i64, [3 x i64] } %a2, { i64, ptr } %a3) #0 {
entry:
  %rv = alloca %"compiler/check:roFn"
  br label %start
start:
  br label %bb0
bb0:
  %t10 = insertvalue %"compiler/check:roFn" undef, i64 %a0, 0
  %t12 = insertvalue %"compiler/check:roFn" %t10, i64 %a1, 1
  %t14 = insertvalue %"compiler/check:roFn" %t12, { i64, [3 x i64] } %a2, 2
  %t16 = insertvalue %"compiler/check:roFn" %t14, { i64, ptr } %a3, 3
  store %"compiler/check:roFn" %t16, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:roFn", ptr %rv
  ret %"compiler/check:roFn" %rr
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
declare void @__olang_check_failed(ptr) cold noreturn
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
@.d0 = private constant <{ i64, [46 x i8] }> <{ i64 0, [46 x i8] c"a binding in a call compared as a value (S13d)" }>, align 8
@.d1 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
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
@olang_2esole_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2e0 = weak hidden constant i1 false
declare void @__olang_region_release(ptr) noinline
@olang_2esole_2ecompiler__2fcheck__2ecompiler__2fcheck__3aChecker__2ecaughtCases_2elocal_2e8 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
declare void @__olang_region_drop(ptr) noinline
@.d2 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"null" }>, align 8
@.d3 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c" and null" }>, align 8
@olang_2esole_2ecompiler_2fcheck_3aframe_2e4 = weak hidden constant i1 false
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
@.d4 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"Eq" }>, align 8
@.d5 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"eq" }>, align 8
@__olang_empty_array = external constant [16 x i64]
@.d6 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d7 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
declare ptr @llvm.coro.promise(ptr, i32, i1)
@.d8 = private constant <{ i64, [33 x i8] }> <{ i64 0, [33 x i8] c"a local the checker has not bound" }>, align 8
@.d9 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"_" }>, align 8
@.d10 = private constant <{ i64, [30 x i8] }> <{ i64 0, [30 x i8] c"a name of this kind as a value" }>, align 8
define internal i1 @olang_lambda_11(ptr %env, ptr %v0, ptr %a0) #0 {
entry:
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/ast:CaseDecl", ptr %a0, i32 0, i32 2
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 0
  %t8 = icmp sgt i64 %t6, 0
  store i1 %t8, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

@.d12 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d13 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Here" }>, align 8
@.d14 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d15 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"the global '" }>, align 8
@.d16 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d17 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"a field" }>, align 8
@.d18 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"an element" }>, align 8
@.d19 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"a payload" }>, align 8
@.d20 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"the place" }>, align 8
declare i128 @llvm.ctlz.i128(i128, i1)
declare bfloat @__olang_int_bf16(i64, i1)
declare double @llvm.arithmetic.fence.f64(double)
@.d21 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Max" }>, align 8
@.d22 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Min" }>, align 8
@.d23 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Inf" }>, align 8
@.d24 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"NaN" }>, align 8
@.d25 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"Epsilon" }>, align 8
@.d26 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"SmallestNormal" }>, align 8
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
declare i1 @compiler_2fcheck_2eassignsName(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @compiler_2fcheck_2eexprsAssign(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einfersErrs(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eArgCountRange(ptr %v0, i64 %a0, i64 %a1, i64 %a2)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, %"compiler/diagmsg:Msg" %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emutOnValue(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eresolve(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erunArrayValue(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earrayMake(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, { i64, ptr } %a3, i32 %a4, ptr %a5)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
declare i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexprTo(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeNamed(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisEnum(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseWritten(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCaseValueType(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
@G_2ecompiler_2ftypes_2eBoolT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i64 %a3)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/source:Span" @compiler_2fcheck_2ememberSpan(%"compiler/source:Span" %a0, i64 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enoCase(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2)
@olang_loc_1ea07ba70e71bd73_64b4b6dffcea6d07 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2ePush_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aPattern_2eSpan(ptr %v0, ptr %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2)
@olang_loc_be381b70f49fc8f2_3328b3c24d360da6 = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2eToArray_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalueTest(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3, i32 %a4)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v1, ptr %a0)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrLocalName(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalNamed(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalType(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrValItems(ptr %v0, ptr %a0, i32 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrNow(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtNamed(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_fc394d3abb705b3d_774ad654d23301b9 = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enullKnown(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtUsed(ptr %v0, ptr %a0, i32 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetLess(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCaughtCaseNever(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/check:altsCovered" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtAlts(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, { i64, ptr } %a2, ptr %a3, i1 %a4, i1 %a5)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetMeet(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetUnion(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetText(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCaughtMatchMissing(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceSig(ptr %v0, ptr %a0, i64 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@G_2ecompiler_2ftypes_2eVoidT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
declare %"compiler/generic:Origin" @compiler_2fgeneric_3aOrigin_2ector(ptr %v0, i64 %a0, %"compiler/source:Span" %a1, i64 %a2, i32 %a3)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eContextDepth(ptr %v0, ptr %a0)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eContextBase(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einstContexts(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceArgs(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnContext(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnIsExtern(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_32c5e7ac2123e322_6f8cff94f7dc96ce = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewrittenMet(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsGenerator(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenResultMet(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrorResult(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enameSpan(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eGenErrors(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v1, ptr %a0)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eAddBlock(ptr %v0, ptr %a0, i32 %a1, i32 %a2, %"compiler/source:Span" %a3)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_792a6374d02fed89_d05ed111c48ae675 = external constant [0 x i8]
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eparam(ptr %v0, ptr %v1, ptr %a0, i32 %a1, %"compiler/source:Span" %a2, i32 %a3, i64 %a4, ptr %a5)
@olang_loc_3ac7b5fdc4e7bc94_cc60c4585a595e60 = external constant [0 x i8]
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emutParam(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eparamWritten(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eClosed(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_f6bd8cf5a89007a3_6ba3a2d919b35b7f = external constant [0 x i8]
@olang_loc_390978d15c29d94d_c1ef383dda1c2621 = external constant [0 x i8]
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eScopeVarsOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eSetVars(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@G_2ecompiler_2ftypes_2eNoreturnT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\11\00\00\00" }>, align 8
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enoreturnSpan(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoreturnErrors(ptr %v0)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eGenElem(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenRoot(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2, i64 %a3)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %a0)
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2ePopContext(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erootStmts(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eviewBody(ptr %v0, ptr %a0)
declare i1 @compiler_2fcheck_2eleavesBlock(ptr %v0, ptr %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoreturnFallsOff(ptr %v0)
declare i1 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrorWithin(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i64 %a3, i64 %a4)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMissingReturn(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflDecide(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadsConst(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFoldKnown(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i32 %a3)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_6f8999b7f8ddffc_ce9c2022d5a87cc8 = external constant [0 x i8]
declare i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeqShaped(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_92689d3fb9399c33_8949aa7cd18a1ac7 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eOwnVarIndexes(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @compiler_2fgeneric_2eWrittenTypes(ptr %v0, { i64, ptr } %a0)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrVarIndex(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v0, ptr %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eErrSetArgUnwanted(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_3150b71fd0fb46fe_3d08923418e7b7d2 = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeArgsOnNonGeneric(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_d7e03fe7b4bf2c3d_64b0c57621292c71 = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeArgCount(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1, i64 %a2)
@olang_loc_c902484ee6860410_648a649019eab164 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_e4324c4b30f6563f_ec149b7f01d5683b = external constant [0 x i8]
@olang_loc_2e16a6af4c93cb6a_eec2ff8433b844a6 = external constant [0 x i8]
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrsArgOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeEntry(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclFor(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclContext(ptr %out, ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" @compiler_2fgeneric_2eFieldDecls.walk(ptr %v0, ptr %v1, ptr %a0)
declare { i32, ptr } @std_2fprelude_2fiterator_2estd_2fprelude_2fiterator_3aViewGenerator_3ccompiler_2fast_3aV_Hf179e857cb72c72900f4614cd5df5a25(ptr %v0, ptr %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenMarks(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, { i64, ptr } %a3, i64 %a4, i64 %a5, i1 %a6)
@olang_loc_e919a481eb9c0c53_bf698ad9ae031297 = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i64 %a2)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclKind(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elistHoldsBy(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i64 %a3)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_4d3e518c37f06fac_dc2de6c574f30d28 = external constant [0 x i8]
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eAt_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_862846f5a5002b51_69e64f75e4a124a5 = external constant [0 x i8]
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehidden(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i32 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eSetAt_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eExtends(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fcheck_2eoperatorName(ptr %v0, i32 %a0)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroleMethod(ptr %v0, ptr %v1, ptr %a0, i32 %a1, { i64, ptr } %a2, i64 %a3)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneResult(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecommuting(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisInt(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epowMethod(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMeet(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i1 @compiler_2fcheck_2eintOnly(i32 %a0)
declare i64 @compiler_2fgeneric_2eFnOwner(i64 %a0)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnInstance(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efnBody(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/generic:Binding" @compiler_2fgeneric_3aBinding_2ector(ptr %v0, i64 %a0, i64 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunify(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, ptr %a3, i1 %a4, i1 %a5)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInferThroughBounds(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enoteWrite(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewritesImmut(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eimmutOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextType(ptr %v0, ptr %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTextWrite(ptr %v0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImmutWrite(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enarrowOwner(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enarrowedWrite(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i64 %a2)
declare %"compiler/typed:Local" @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eLocal(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCaptureReadOnly(ptr %v0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroLocal(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroFix(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReadOnlyCopyLent(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enoteRo(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroNeed(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eGlobalDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2)
declare i1 @compiler_2fgeneric_2eWrittenMut(ptr %v0, ptr %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImmutable(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eWritable = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecapturedValue(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReadOnlyRefWrite(ptr %v0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enoteWritable(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare ptr @compiler_2fcheck_2eunwrapped(ptr %v0, ptr %v1, ptr %a0)
declare ptr @compiler_2fcheck_2ereadPlace(ptr %v0, ptr %v1, ptr %a0)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroRoot(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReadOnlyCopyWrite(ptr %v0)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echosenAt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econdChoosesPlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elastName(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCondLentWritable(ptr %v0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReadOnlyToWritable(ptr %v0)
@olang_loc_3b10a40791a2a251_bad5d69bdb4172c5 = external constant [0 x i8]
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enarrowCopy(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAssignIntoTried(ptr %v0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eWriteIntoCallValue(ptr %v0)
@olang_loc_353afd59783a39c0_8ce5d27f074b4214 = external constant [0 x i8]
declare %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflName(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_Hf575c52a5a9e8993bae2b73c9c2548b3(ptr %v0, ptr %a0, i32 %a1)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H2a27ec2ae5362b2f0ac6d54f3e063c70(ptr %v0, ptr %a0, i32 %a1)
declare %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %v0, i64 %a0, i64 %a1)
declare { i32, %"compiler/check:fixedInit" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H6f2dcaa3b3ff2363ea7964270c7a6b31(ptr %v0, ptr %v1, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalOrCapture(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einstField(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eComptimeLocal(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalPlace(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i64 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrNarrowed(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eglobalType(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebuildConst(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypedHole(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2ed2e5427629ba63a7110fc86d969058(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare i1 @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eImportSaid(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esuggest(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i1 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnknownName(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnknownNumberType(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnknownNameMeant(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1308596c866d4be061d9da9113abde88(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1, i1 %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeNotAValue(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnNamed(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
@olang_loc_d573417cd970c31d_c74d35b0202ac379 = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efnValue(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, i64 %a2, { i64, ptr } %a3)
declare { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_Hfd0413fe7fd4e5914f6cad5b418b7a6d(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeVarAsValue(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eText(ptr %v0, i32 %a0)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebetween(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i64 %a3)
@olang_loc_354044a632a7444d_aa07af71c262dc01 = external constant [0 x i8]
declare i1 @std_2fprelude_2farray_2eArray_3ccompiler_2fast_3aCaseDecl_26_3e_2eSome_3ccompiler_2fast_3aCaseDecl_26_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1c, ptr %a1e)
declare void @compiler_2fgeneric_3aContext_2ector(ptr %out, ptr %v0, i64 %a0, i64 %a1)
@olang_loc_6508360cd81e00f5_c12e101ac5e9d251 = external constant [0 x i8]
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epayloadBad(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePayloadHoldsRef(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePlaceMember(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplaceType(ptr %v0, ptr %a0)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCtorSig(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2ePathOf(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@G_2ecompiler_2ftypes_2eReadOnly = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eLineAt(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eColumnAt(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectorBody(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_b23b0b3c83be0ad1_2f776aac88ec27cd = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecallBody(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i32 %a3, ptr %a4, i64 %a5, ptr %a6, { i64, ptr } %a7, { i64, ptr } %a8)
declare void @compiler_2fcheck_3aframe_2ector(ptr %out, ptr %v0, i64 %a0, i64 %a1, i64 %a2, i32 %a3, i32 %a4)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2_Hc321aad2e90dd8996307445942f8d6e9(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eCount(ptr %v0, ptr %a0)
declare { i32, i1 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eGet_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i32, { i64, ptr } } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflTextOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emarkAt(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
@olang_loc_6b233227628ca57_40576c0d91c202cb = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einstanceBody(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enamedHolds(ptr %v0, ptr %a0, i32 %a1)
declare %"std/pair:Pair.1eb2466213689e002f25e81e83536e78" @std_2fpair_3aPair_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_2ector(ptr %v0, ptr %v1, i64 %a0, ptr %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20compiler__H316d0dfdbceeb7b188a6719f0ad8fbbe(ptr %v0, ptr %v1, ptr %a0, %"std/pair:Pair.1eb2466213689e002f25e81e83536e78" %a1)
@olang_loc_66b69280d2937ccd_950530418ba68201 = external constant [0 x i8]
declare { i64, ptr } @compiler_2fscan_2eLiteralBytes(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeDecl(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_feabd87b4a742d50_a08e759c84965044 = external constant [0 x i8]
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eborrowedSource(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %a0)
declare { i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopen(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_5c35d65bf515aa44_9edccba99dd9b7f8 = external constant [0 x i8]
@olang_loc_19568a04807ed851_528b5bfe222c3865 = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einvoke(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i64 %a3, ptr %a4, { i64, ptr } %a5, { i64, ptr } %a6, { i64, ptr } %a7)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i32 %a3, ptr %a4, ptr %a5)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebreakUnless(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i64 %a3)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euniqueWalk(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_130b25e968db6b32_47c65c95f253846 = external constant [0 x i8]
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eone(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euniqueRef(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, %"compiler/source:Span" %a2, i1 %a3)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eelementLocals(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i64 %a3, ptr %a4)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewalkBody(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i32 %a3)
declare { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclose(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, i64 %a3, i64 %a4)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eaddTo(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, i64 %a2, ptr %a3)
declare i64 @compiler_2fcheck_2ehandleRoot(ptr %v0, ptr %a0)
@olang_loc_cf73afff9a9afd3c_75ef637926e6ccb8 = external constant [0 x i8]
@olang_loc_83df14ccfb59caa2_79e7c0956b45666e = external constant [0 x i8]
@olang_loc_828d46431809dd00_d1819fff0627a99c = external constant [0 x i8]
@olang_loc_19cea36a65a07eff_69e525b70d2a65cb = external constant [0 x i8]
@olang_loc_d195b38137e2d30_7d67c1d5e7f3802c = external constant [0 x i8]

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
