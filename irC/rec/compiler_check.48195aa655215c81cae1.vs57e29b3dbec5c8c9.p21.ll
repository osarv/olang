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
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"compiler/typed:Local" = type { i32, %"compiler/source:Span", i32, i32, i32, { i64, [1 x i64] }, i1, i1 }
%"compiler/source:Span" = type { i32, i32 }
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr } }
%"compiler/typed:Bind" = type { i32, ptr }
%"compiler/check:Checker" = type { ptr, ptr, i1, i1, i1, i1, i64, i64, i1, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, { i64, [3 x i64] }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i32, i64, %"compiler/source:Span", i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/source:Span", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i32, i1, i1, %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, i32, i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, i64, i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/text:StringBuilder", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/check:frame" = type { i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/generic:Context", i32, i32, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i32, i64, i64, i64, i1, i64, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, i64, i64, i64, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/source:Span", i64, i1 }
%"compiler/generic:Context" = type { i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/ast:Func" = type { %"compiler/source:Span", ptr, i32, ptr, { i64, ptr }, { i64, ptr }, i1, i1, { i64, ptr }, ptr, i32 }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/check:ownerAt" = type { i32, i1 }
%"compiler/check:fieldSet" = type { { i64, ptr }, i32, { i64, ptr }, { i64, ptr } }
%"compiler/typed:Call" = type { ptr, { i64, ptr }, i32, i1, i1 }
%"compiler/typed:Capture" = type { i32, ptr }
%"compiler/ast:Chain" = type { { i64, ptr }, { i64, ptr } }
%"compiler/names:Ref" = type { i32, i64, i64 }
%"compiler/effects:Facts" = type { i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i64, [6 x i64], i64, i64 }
%"compiler/check:factRead" = type { i64, i64, { i64, ptr }, i1, i64, %"compiler/source:Span", { i64, ptr } }
%"compiler/typed:Seq" = type { { i64, ptr }, ptr, i1 }
%"compiler/typed:Promote" = type { ptr, i32 }
%"compiler/check:litv" = type { i1, i1, i1, i64, double, i1, i1, i1, i128 }
%"compiler/generic:Binding" = type { i64, i64, { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/generic:varRow" = type { i64, i32, i32, i32 }
%"compiler/ast:Sig" = type { { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, i1, ptr, i1, i1, { i64, ptr } }
%"compiler/ast:Param" = type { %"compiler/source:Span", i32, ptr, ptr, { i64, ptr } }
%"compiler/ast:TypeDecl" = type { i32, { i64, ptr }, i1, ptr, { i64, ptr }, i32, i1 }
%"compiler/ast:TypeParam" = type { %"compiler/source:Span", i32, ptr, { i64, ptr }, i1 }
%"compiler/typed:Cond" = type { ptr, ptr, ptr }
%"compiler/check:rawTable" = type { i32, i1, { i64, ptr }, { i64, ptr } }
%"compiler/typed:Make" = type { i32, i64, { i64, ptr }, ptr, i32, i32, i1 }
%"compiler/check:elemsShape" = type { { i64, ptr }, i64 }
%"compiler/check:seqOf" = type { i32, i64, i64, i64 }
%"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" = type { ptr, i64 }
%"compiler/typed:DropHolding" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:Block" = type { i32, { i64, ptr } }
%"compiler/check:heldCand" = type { i64, i64, i64 }
%"compiler/ast:ForIn" = type { i32, i32, ptr, i1, { i64, ptr }, { i64, ptr }, i1 }
%"compiler/ast:Catch" = type { %"compiler/source:Span", { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i32, %"compiler/source:Span" }
%"compiler/check:altsCovered" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, i1 }
%"compiler/check:idleCall" = type { i64, i64, %"compiler/source:Span", { i64, ptr }, ptr }
%"compiler/check:roArg" = type { i64, i64, { i64, [3 x i64] }, { i64, ptr }, { i64, ptr }, { i64, ptr } }
define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eErrorsOf(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l4 = alloca i32
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebodyErrors(ptr %v0, ptr %a0, i64 %a1)
  store i32 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i32, ptr %l4, !tbaa !23
  store i32 %t6, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ealtNames(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, i64 %a3, ptr %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca i64
  %l12 = alloca ptr
  %l13 = alloca i64
  %l14 = alloca ptr
  %l15 = alloca i32
  %l16 = alloca i1
  %l17 = alloca ptr
  %l18 = alloca i64
  %l20 = alloca ptr
  %l21 = alloca i64
  %l22 = alloca i32
  %l23 = alloca i1
  %l24 = alloca ptr
  %l25 = alloca i64
  %l27 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l29 = alloca i64
  %l31 = alloca i64
  %l36 = alloca ptr
  %l37 = alloca ptr
  %l39 = alloca ptr
  %l42 = alloca %"compiler/typed:Local"
  %l49 = alloca i64
  %l51 = alloca i64
  %l56 = alloca i32
  %l62 = alloca i64
  %l64 = alloca i64
  %l69 = alloca ptr
  %l71 = alloca ptr
  %l74 = alloca %"compiler/typed:Local"
  %l77 = alloca i64
  %l79 = alloca i64
  %l84 = alloca i32
  %l92 = alloca ptr
  %l94 = alloca ptr
  %l97 = alloca %"compiler/typed:Local"
  %l98 = alloca %"compiler/source:Span"
  %l99 = alloca %"compiler/diagmsg:Msg"
  %l100 = alloca i64
  %l104 = alloca i64
  %l106 = alloca i64
  %l111 = alloca i32
  %l113 = alloca i64
  %l115 = alloca i64
  %l120 = alloca i32
  %l128 = alloca ptr
  %l130 = alloca %"compiler/source:Span"
  %l131 = alloca %"compiler/diagmsg:Msg"
  %l132 = alloca i64
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l27
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l27
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l5
  %t3 = load ptr, ptr %l1, !tbaa !29
  store ptr %t3, ptr %l6, !tbaa !29
  store i64 0, ptr %l7, !tbaa !24
  br label %bb2
bb2:
  %t5 = load i64, ptr %l7, !tbaa !24
  store i64 %t5, ptr %l29, !tbaa !24
  %t6 = load ptr, ptr %l6, !tbaa !29
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBind_26_3e_2eLen_3ccompiler_2ftyped_3aBind_26_3e(ptr %v1, ptr %t6)
  store i64 %t8, ptr %l31
  br label %bb3
bb3:
  %t9 = load i64, ptr %l29, !tbaa !24
  %t10 = load i64, ptr %l31, !tbaa !24
  %t11 = icmp slt i64 %t9, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb4, label %bb5
bb4:
  br label %bb12
bb5:
  br label %bb6
bb6:
  %t15 = load ptr, ptr %l6, !tbaa !29
  %t16 = load i64, ptr %l7, !tbaa !24
  %t19 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBind_26_3e_2eAt_3ccompiler_2ftyped_3aBind_26_3e(ptr %v1, ptr %v1, ptr %t15, i64 %t16)
  store ptr %t19, ptr %l36
  br label %bb7
bb7:
  %t20 = load ptr, ptr %l36, !tbaa !29
  store ptr %t20, ptr %l8, !tbaa !29
  store ptr %l5, ptr %l37, !tbaa !29
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t21)
  store ptr %t23, ptr %l39
  br label %bb8
bb8:
  %t24 = load ptr, ptr %l8, !tbaa !29
  %t26 = getelementptr %"compiler/typed:Bind", ptr %t24, i32 0, i32 0
  %t27 = load i32, ptr %t26, !tbaa !23
  %t28 = load ptr, ptr %l39, !tbaa !29
  %t30 = call %"compiler/typed:Local" @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eLocal(ptr %v0, ptr %t28, i32 %t27)
  store %"compiler/typed:Local" %t30, ptr %l42
  br label %bb9
bb9:
  %t31 = getelementptr %"compiler/typed:Local", ptr %l42, i32 0, i32 0
  %t32 = load i32, ptr %t31, !tbaa !23
  %t33 = load ptr, ptr %l37, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %s0, ptr %t33, i32 %t32)
  br label %bb10
bb10:
  br label %bb11
bb11:
  %t35 = load i64, ptr %l7, !tbaa !24
  %t37 = add i64 %t35, 1
  store i64 %t37, ptr %l7, !tbaa !24
  br label %bb2
bb12:
  %t41 = icmp eq i64 %a3, 0
  br i1 %t41, label %bb13, label %bb14
bb13:
  store ptr %l5, ptr %l9, !tbaa !29
  store i64 0, ptr %l10, !tbaa !24
  br label %bb15
bb14:
  br label %bb24
bb15:
  %t44 = load i64, ptr %l10, !tbaa !24
  store i64 %t44, ptr %l49, !tbaa !24
  %t45 = load ptr, ptr %l9, !tbaa !29
  %t47 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eLen_3ccompiler_2fsource_3aNameId_3e(ptr %s0, ptr %t45)
  store i64 %t47, ptr %l51
  br label %bb16
bb16:
  %t48 = load i64, ptr %l49, !tbaa !24
  %t49 = load i64, ptr %l51, !tbaa !24
  %t50 = icmp slt i64 %t48, %t49
  %t52 = xor i1 %t50, true
  br i1 %t52, label %bb17, label %bb18
bb17:
  br label %bb23
bb18:
  br label %bb19
bb19:
  %t54 = load ptr, ptr %l9, !tbaa !29
  %t55 = load i64, ptr %l10, !tbaa !24
  %t58 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eAt_3ccompiler_2fsource_3aNameId_3e(ptr %s0, ptr %t54, i64 %t55)
  store i32 %t58, ptr %l56
  br label %bb20
bb20:
  %t59 = load i32, ptr %l56, !tbaa !23
  %t60 = load ptr, ptr %l2, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %v2, ptr %t60, i32 %t59)
  br label %bb21
bb21:
  br label %bb22
bb22:
  %t64 = load i64, ptr %l10, !tbaa !24
  %t66 = add i64 %t64, 1
  store i64 %t66, ptr %l10, !tbaa !24
  br label %bb15
bb23:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb24:
  %t68 = load ptr, ptr %l1, !tbaa !29
  store ptr %t68, ptr %l12, !tbaa !29
  store i64 0, ptr %l13, !tbaa !24
  br label %bb25
bb25:
  %t70 = load i64, ptr %l13, !tbaa !24
  store i64 %t70, ptr %l62, !tbaa !24
  %t71 = load ptr, ptr %l12, !tbaa !29
  %t73 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBind_26_3e_2eLen_3ccompiler_2ftyped_3aBind_26_3e(ptr %v1, ptr %t71)
  store i64 %t73, ptr %l64
  br label %bb26
bb26:
  %t74 = load i64, ptr %l62, !tbaa !24
  %t75 = load i64, ptr %l64, !tbaa !24
  %t76 = icmp slt i64 %t74, %t75
  %t78 = xor i1 %t76, true
  br i1 %t78, label %bb27, label %bb28
bb27:
  br label %bb52
bb28:
  br label %bb29
bb29:
  %t80 = load ptr, ptr %l12, !tbaa !29
  %t81 = load i64, ptr %l13, !tbaa !24
  %t84 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBind_26_3e_2eAt_3ccompiler_2ftyped_3aBind_26_3e(ptr %v1, ptr %v1, ptr %t80, i64 %t81)
  store ptr %t84, ptr %l69
  br label %bb30
bb30:
  %t85 = load ptr, ptr %l69, !tbaa !29
  store ptr %t85, ptr %l14, !tbaa !29
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t86)
  store ptr %t88, ptr %l71
  br label %bb31
bb31:
  %t89 = load ptr, ptr %l14, !tbaa !29
  %t91 = getelementptr %"compiler/typed:Bind", ptr %t89, i32 0, i32 0
  %t92 = load i32, ptr %t91, !tbaa !23
  %t93 = load ptr, ptr %l71, !tbaa !29
  %t95 = call %"compiler/typed:Local" @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eLocal(ptr %v0, ptr %t93, i32 %t92)
  store %"compiler/typed:Local" %t95, ptr %l74
  br label %bb32
bb32:
  %t96 = getelementptr %"compiler/typed:Local", ptr %l74, i32 0, i32 0
  %t97 = load i32, ptr %t96, !tbaa !23
  store i32 %t97, ptr %l15, !tbaa !23
  store i1 false, ptr %l16, !tbaa !21
  %t99 = load ptr, ptr %l2, !tbaa !29
  store ptr %t99, ptr %l17, !tbaa !29
  store i64 0, ptr %l18, !tbaa !24
  br label %bb33
bb33:
  %t101 = load i64, ptr %l18, !tbaa !24
  store i64 %t101, ptr %l77, !tbaa !24
  %t102 = load ptr, ptr %l17, !tbaa !29
  %t104 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eLen_3ccompiler_2fsource_3aNameId_3e(ptr %v2, ptr %t102)
  store i64 %t104, ptr %l79
  br label %bb34
bb34:
  %t105 = load i64, ptr %l77, !tbaa !24
  %t106 = load i64, ptr %l79, !tbaa !24
  %t107 = icmp slt i64 %t105, %t106
  %t109 = xor i1 %t107, true
  br i1 %t109, label %bb35, label %bb36
bb35:
  br label %bb43
bb36:
  br label %bb37
bb37:
  %t111 = load ptr, ptr %l17, !tbaa !29
  %t112 = load i64, ptr %l18, !tbaa !24
  %t115 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eAt_3ccompiler_2fsource_3aNameId_3e(ptr %v2, ptr %t111, i64 %t112)
  store i32 %t115, ptr %l84
  br label %bb38
bb38:
  %t116 = load i32, ptr %l84, !tbaa !23
  %t118 = load i32, ptr %l15, !tbaa !23
  %t121 = icmp eq i32 %t116, %t118
  br i1 %t121, label %bb39, label %bb40
bb39:
  store i1 true, ptr %l16, !tbaa !21
  br label %bb41
bb40:
  br label %bb41
bb41:
  br label %bb42
bb42:
  %t123 = load i64, ptr %l18, !tbaa !24
  %t125 = add i64 %t123, 1
  store i64 %t125, ptr %l18, !tbaa !24
  br label %bb33
bb43:
  %t127 = load i1, ptr %l16, !tbaa !21
  %t129 = xor i1 %t127, true
  br i1 %t129, label %bb44, label %bb45
bb44:
  %t131 = load ptr, ptr %l0, !tbaa !29
  store ptr %t131, ptr %l92, !tbaa !29
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t134 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t132)
  store ptr %t134, ptr %l94
  br label %bb46
bb45:
  br label %bb50
bb46:
  %t135 = load ptr, ptr %l14, !tbaa !29
  %t137 = getelementptr %"compiler/typed:Bind", ptr %t135, i32 0, i32 0
  %t138 = load i32, ptr %t137, !tbaa !23
  %t139 = load ptr, ptr %l94, !tbaa !29
  %t141 = call %"compiler/typed:Local" @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eLocal(ptr %v0, ptr %t139, i32 %t138)
  store %"compiler/typed:Local" %t141, ptr %l97
  br label %bb47
bb47:
  %t142 = getelementptr %"compiler/typed:Local", ptr %l97, i32 0, i32 1
  %t143 = load %"compiler/source:Span", ptr %t142
  store %"compiler/source:Span" %t143, ptr %l98
  %t144 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAltBindsOtherNames(ptr %v0)
  store %"compiler/diagmsg:Msg" %t144, ptr %l99
  br label %bb48
bb48:
  %t145 = load ptr, ptr %l92, !tbaa !29
  %t146 = load %"compiler/source:Span", ptr %l98
  %t147 = load %"compiler/diagmsg:Msg", ptr %l99
  %t148 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t145, %"compiler/source:Span" %t146, %"compiler/diagmsg:Msg" %t147)
  store i64 %t148, ptr %l100
  br label %bb49
bb49:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb50:
  br label %bb51
bb51:
  %t149 = load i64, ptr %l13, !tbaa !24
  %t151 = add i64 %t149, 1
  store i64 %t151, ptr %l13, !tbaa !24
  br label %bb25
bb52:
  %t153 = load ptr, ptr %l2, !tbaa !29
  store ptr %t153, ptr %l20, !tbaa !29
  store i64 0, ptr %l21, !tbaa !24
  br label %bb53
bb53:
  %t155 = load i64, ptr %l21, !tbaa !24
  store i64 %t155, ptr %l104, !tbaa !24
  %t156 = load ptr, ptr %l20, !tbaa !29
  %t158 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eLen_3ccompiler_2fsource_3aNameId_3e(ptr %v2, ptr %t156)
  store i64 %t158, ptr %l106
  br label %bb54
bb54:
  %t159 = load i64, ptr %l104, !tbaa !24
  %t160 = load i64, ptr %l106, !tbaa !24
  %t161 = icmp slt i64 %t159, %t160
  %t163 = xor i1 %t161, true
  br i1 %t163, label %bb55, label %bb56
bb55:
  br label %bb77
bb56:
  br label %bb57
bb57:
  %t165 = load ptr, ptr %l20, !tbaa !29
  %t166 = load i64, ptr %l21, !tbaa !24
  %t169 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eAt_3ccompiler_2fsource_3aNameId_3e(ptr %v2, ptr %t165, i64 %t166)
  store i32 %t169, ptr %l111
  br label %bb58
bb58:
  %t170 = load i32, ptr %l111, !tbaa !23
  store i32 %t170, ptr %l22, !tbaa !23
  store i1 false, ptr %l23, !tbaa !21
  store ptr %l5, ptr %l24, !tbaa !29
  store i64 0, ptr %l25, !tbaa !24
  br label %bb59
bb59:
  %t172 = load i64, ptr %l25, !tbaa !24
  store i64 %t172, ptr %l113, !tbaa !24
  %t173 = load ptr, ptr %l24, !tbaa !29
  %t175 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eLen_3ccompiler_2fsource_3aNameId_3e(ptr %s0, ptr %t173)
  store i64 %t175, ptr %l115
  br label %bb60
bb60:
  %t176 = load i64, ptr %l113, !tbaa !24
  %t177 = load i64, ptr %l115, !tbaa !24
  %t178 = icmp slt i64 %t176, %t177
  %t180 = xor i1 %t178, true
  br i1 %t180, label %bb61, label %bb62
bb61:
  br label %bb69
bb62:
  br label %bb63
bb63:
  %t182 = load ptr, ptr %l24, !tbaa !29
  %t183 = load i64, ptr %l25, !tbaa !24
  %t186 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eAt_3ccompiler_2fsource_3aNameId_3e(ptr %s0, ptr %t182, i64 %t183)
  store i32 %t186, ptr %l120
  br label %bb64
bb64:
  %t187 = load i32, ptr %l120, !tbaa !23
  %t189 = load i32, ptr %l22, !tbaa !23
  %t192 = icmp eq i32 %t187, %t189
  br i1 %t192, label %bb65, label %bb66
bb65:
  store i1 true, ptr %l23, !tbaa !21
  br label %bb67
bb66:
  br label %bb67
bb67:
  br label %bb68
bb68:
  %t194 = load i64, ptr %l25, !tbaa !24
  %t196 = add i64 %t194, 1
  store i64 %t196, ptr %l25, !tbaa !24
  br label %bb59
bb69:
  %t198 = load i1, ptr %l23, !tbaa !21
  %t200 = xor i1 %t198, true
  br i1 %t200, label %bb70, label %bb71
bb70:
  %t202 = load ptr, ptr %l0, !tbaa !29
  store ptr %t202, ptr %l128, !tbaa !29
  %t205 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aPattern_2eSpan(ptr %v3, ptr %a4)
  store %"compiler/source:Span" %t205, ptr %l130
  br label %bb72
bb71:
  br label %bb75
bb72:
  %t206 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAltBindsOtherNames(ptr %v0)
  store %"compiler/diagmsg:Msg" %t206, ptr %l131
  br label %bb73
bb73:
  %t207 = load ptr, ptr %l128, !tbaa !29
  %t208 = load %"compiler/source:Span", ptr %l130
  %t209 = load %"compiler/diagmsg:Msg", ptr %l131
  %t210 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t207, %"compiler/source:Span" %t208, %"compiler/diagmsg:Msg" %t209)
  store i64 %t210, ptr %l132
  br label %bb74
bb74:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb75:
  br label %bb76
bb76:
  %t211 = load i64, ptr %l21, !tbaa !24
  %t213 = add i64 %t211, 1
  store i64 %t213, ptr %l21, !tbaa !24
  br label %bb53
bb77:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eargumentPush(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i64 %a3, { i64, ptr } %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca i32
  %l5 = alloca i32
  %lp6 = alloca ptr
  %l11 = alloca i32
  %l15 = alloca %"compiler/source:Span"
  %l18 = alloca ptr
  %l20 = alloca i32
  %l22 = alloca i32
  %l24 = alloca ptr
  %l32 = alloca ptr
  %l33 = alloca %"compiler/source:Span"
  %l34 = alloca %"compiler/source:Span"
  %l35 = alloca i32
  %l37 = alloca ptr
  %l42 = alloca i32
  %l43 = alloca { i64, ptr }
  %l44 = alloca { i64, ptr }
  %l51 = alloca { i64, ptr }
  %l53 = alloca { i64, ptr }
  %l54 = alloca ptr
  %l56 = alloca ptr
  %l57 = alloca %"compiler/source:Span"
  %l63 = alloca ptr
  %s0 = alloca %olang.scope
  %t40 = alloca { i64, [2 x i64] }, align 8
  %t48 = alloca { i64, [5 x i64] }, align 8
  %t92 = alloca { i64, [4 x i64] }, align 8
  %t142 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t5 = load i32, ptr %l2, !tbaa !23
  %t8 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePayloadOf(ptr %v0, ptr %t4, i32 %t5)
  store i32 %t8, ptr %l11
  br label %bb1
bb1:
  %t9 = load i32, ptr %l11, !tbaa !23
  store i32 %t9, ptr %l5, !tbaa !23
  %t10 = load i32, ptr %l5, !tbaa !23
  %t11 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t14 = icmp eq i32 %t10, %t11
  br i1 %t14, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb3:
  br label %bb4
bb4:
  %t16 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t16, ptr %l15
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/check:Checker", ptr %t17, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !29
  %t22 = getelementptr %"compiler/generic:Program", ptr %t20, i32 0, i32 2
  store ptr %t22, ptr %l18, !tbaa !29
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextType(ptr %v0, ptr %t23)
  store i32 %t25, ptr %l20
  br label %bb5
bb5:
  %t26 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  %t27 = load ptr, ptr %l18, !tbaa !29
  %t28 = load i32, ptr %l20, !tbaa !23
  %t30 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t27, i32 %t28, i64 %t26)
  store i32 %t30, ptr %l22
  br label %bb6
bb6:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t31)
  store ptr %t33, ptr %l24
  br label %bb7
bb7:
  %t34 = load ptr, ptr %l24, !tbaa !29
  %t36 = getelementptr %"compiler/check:frame", ptr %t34, i32 0, i32 2
  %t37 = load i64, ptr %t36, !tbaa !24
  store { i64, [2 x i64] } zeroinitializer, ptr %t40
  %t41 = getelementptr { i64, [2 x i64] }, ptr %t40, i32 0, i32 0
  store i64 1, ptr %t41
  %t43 = insertvalue { { i64, ptr } } undef, { i64, ptr } %a4, 0
  %t44 = getelementptr { i64, [2 x i64] }, ptr %t40, i32 0, i32 1
  store { { i64, ptr } } %t43, ptr %t44
  %t45 = load { i64, [2 x i64] }, ptr %t40
  %t47 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 24, i64 8)
  store { i64, [2 x i64] } %t45, ptr %t47
  store { i64, [5 x i64] } zeroinitializer, ptr %t48
  %t49 = getelementptr { i64, [5 x i64] }, ptr %t48, i32 0, i32 0
  store i64 1, ptr %t49
  %t50 = load %"compiler/source:Span", ptr %l15
  %t51 = insertvalue { %"compiler/source:Span", i32, i64, ptr } undef, %"compiler/source:Span" %t50, 0
  %t52 = load i32, ptr %l22, !tbaa !23
  %t53 = insertvalue { %"compiler/source:Span", i32, i64, ptr } %t51, i32 %t52, 1
  %t55 = insertvalue { %"compiler/source:Span", i32, i64, ptr } %t53, i64 %t37, 2
  %t57 = insertvalue { %"compiler/source:Span", i32, i64, ptr } %t55, ptr %t47, 3
  %t58 = getelementptr { i64, [5 x i64] }, ptr %t48, i32 0, i32 1
  store { %"compiler/source:Span", i32, i64, ptr } %t57, ptr %t58
  %t59 = load { i64, [5 x i64] }, ptr %t48
  %t60 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 48, i64 8)
  store ptr %t60, ptr %lp6
  %t62 = load ptr, ptr %lp6
  store { i64, [5 x i64] } %t59, ptr %t62
  %t63 = load ptr, ptr %l0, !tbaa !29
  store ptr %t63, ptr %l32, !tbaa !29
  %t64 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t64, ptr %l33
  %t65 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t65, ptr %l34
  %t66 = load i32, ptr %l5, !tbaa !23
  store i32 %t66, ptr %l35, !tbaa !23
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr %"compiler/check:Checker", ptr %t67, i32 0, i32 1
  %t70 = load ptr, ptr %t69, !tbaa !29
  store ptr %t70, ptr %l37, !tbaa !29
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"compiler/check:Checker", ptr %t71, i32 0, i32 1
  %t74 = load ptr, ptr %t73, !tbaa !29
  %t76 = getelementptr %"compiler/generic:Program", ptr %t74, i32 0, i32 2
  %t77 = load i32, ptr %l2, !tbaa !23
  %t80 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t76, i32 %t77)
  store i32 %t80, ptr %l42
  br label %bb8
bb8:
  %t81 = load ptr, ptr %l37, !tbaa !29
  %t82 = load i32, ptr %l42, !tbaa !23
  %t83 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorWords(ptr %v0, ptr %s0, ptr %t81, i32 %t82)
  store { i64, ptr } %t83, ptr %l43
  br label %bb9
bb9:
  %t84 = load { i64, ptr }, ptr %l43, !tbaa !27
  store { i64, ptr } %t84, ptr %l44, !tbaa !27
  %t87 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t88 = load ptr, ptr %t87, !tbaa !27
  %t89 = getelementptr i32, ptr %t88, i64 %a3
  %t90 = load i32, ptr %t89, !tbaa !33
  %t91 = load %"compiler/source:Span", ptr %l1
  store { i64, [4 x i64] } zeroinitializer, ptr %t92
  %t93 = getelementptr { i64, [4 x i64] }, ptr %t92, i32 0, i32 0
  store i64 1, ptr %t93
  %t95 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t91, 0
  %t97 = insertvalue { %"compiler/source:Span", i32 } %t95, i32 5, 1
  %t98 = getelementptr { i64, [4 x i64] }, ptr %t92, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t97, ptr %t98
  %t99 = load { i64, [4 x i64] }, ptr %t92
  %t101 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store { i64, [4 x i64] } %t99, ptr %t101
  %t102 = mul i64 1, 8
  %t103 = call ptr @__olang_scope_alloc_zeroed(ptr %v0, i64 %t102)
  %t104 = insertvalue { i64, ptr } undef, i64 1, 0
  %t105 = insertvalue { i64, ptr } %t104, ptr %t103, 1
  store { i64, ptr } %t105, ptr %l51, !tbaa !27
  %t107 = getelementptr { i64, ptr }, ptr %l51, i32 0, i32 1
  %t108 = load ptr, ptr %t107, !tbaa !27
  %t109 = getelementptr ptr, ptr %t108, i64 0
  store ptr %t101, ptr %t109, !tbaa !39
  %t110 = load ptr, ptr %lp6
  %t111 = mul i64 1, 8
  %t112 = call ptr @__olang_scope_alloc_zeroed(ptr %v0, i64 %t111)
  %t113 = insertvalue { i64, ptr } undef, i64 1, 0
  %t114 = insertvalue { i64, ptr } %t113, ptr %t112, 1
  store { i64, ptr } %t114, ptr %l53, !tbaa !27
  %t116 = getelementptr { i64, ptr }, ptr %l53, i32 0, i32 1
  %t117 = load ptr, ptr %t116, !tbaa !27
  %t118 = getelementptr ptr, ptr %t117, i64 0
  store ptr %t110, ptr %t118, !tbaa !39
  %t119 = load ptr, ptr %l32, !tbaa !29
  %t120 = load %"compiler/source:Span", ptr %l33
  %t121 = load %"compiler/source:Span", ptr %l34
  %t122 = load i32, ptr %l35, !tbaa !23
  %t124 = load { i64, ptr }, ptr %l51, !tbaa !27
  %t125 = load { i64, ptr }, ptr %l53, !tbaa !27
  %t126 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eenumCase(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %t119, %"compiler/source:Span" %t120, %"compiler/source:Span" %t121, i32 %t122, i32 %t90, { i64, ptr } %t124, { i64, ptr } %t125)
  store ptr %t126, ptr %l54
  br label %bb10
bb10:
  %t127 = load ptr, ptr %l54, !tbaa !29
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t130 = getelementptr %"compiler/check:Checker", ptr %t128, i32 0, i32 37
  store ptr %t130, ptr %l56, !tbaa !29
  %t131 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t131, ptr %l57
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t133 = load %"compiler/source:Span", ptr %l1
  %t134 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t141 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %t132, %"compiler/source:Span" %t133, i32 %t134, i32 45, ptr %t127, ptr null)
  store ptr %t141, ptr %l63
  br label %bb11
bb11:
  store { i64, [3 x i64] } zeroinitializer, ptr %t142
  %t143 = getelementptr { i64, [3 x i64] }, ptr %t142, i32 0, i32 0
  store i64 2, ptr %t143
  %t144 = load %"compiler/source:Span", ptr %l57
  %t145 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t144, 0
  %t146 = load ptr, ptr %l63, !tbaa !29
  %t147 = insertvalue { %"compiler/source:Span", ptr } %t145, ptr %t146, 1
  %t148 = getelementptr { i64, [3 x i64] }, ptr %t142, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t147, ptr %t148
  %t149 = load { i64, [3 x i64] }, ptr %t142
  %t151 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t149, ptr %t151
  %t152 = load ptr, ptr %l56, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t152, ptr %t151)
  br label %bb12
bb12:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebecomeWhere(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca ptr
  %l7 = alloca ptr
  %l10 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca { i64, ptr }
  %l16 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l18 = alloca i64
  %l19 = alloca { i64, ptr }
  %l23 = alloca { i64, ptr }
  %l24 = alloca { i64, ptr }
  %l25 = alloca i64
  %l26 = alloca { i64, ptr }
  %l30 = alloca i1
  %l33 = alloca { i64, ptr }
  %l34 = alloca { i64, ptr }
  %l35 = alloca i64
  %l36 = alloca { i64, ptr }
  %l40 = alloca { i64, ptr }
  %l41 = alloca { i64, ptr }
  %l42 = alloca i64
  %l43 = alloca { i64, ptr }
  %l48 = alloca ptr
  %l57 = alloca i64
  %l61 = alloca ptr
  %l64 = alloca { i64, ptr }
  %l65 = alloca { i64, ptr }
  %l66 = alloca i64
  %l67 = alloca { i64, ptr }
  %l71 = alloca i1
  %l75 = alloca { i64, ptr }
  %l76 = alloca i1
  %l77 = alloca i1
  %l81 = alloca i64
  %l87 = alloca { i64, ptr }
  %l88 = alloca { i64, ptr }
  %l89 = alloca i64
  %l90 = alloca { i64, ptr }
  %l91 = alloca { i64, ptr }
  %l92 = alloca { i64, ptr }
  %l93 = alloca i64
  %l94 = alloca { i64, ptr }
  %l95 = alloca { i64, ptr }
  %l96 = alloca { i64, ptr }
  %l97 = alloca i64
  %l98 = alloca { i64, ptr }
  %s6 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
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
  store ptr %t4, ptr %l1, !tbaa !29
  %t5 = load ptr, ptr %l1, !tbaa !29
  %t7 = getelementptr %"compiler/check:frame", ptr %t5, i32 0, i32 12
  %t8 = load i1, ptr %t7, !tbaa !21
  br i1 %t8, label %bb2, label %bb3
bb2:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d0, i32 0, i32 1) }, ptr %l10, !tbaa !27
  %t10 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t10, ptr %l11, !tbaa !27
  %t11 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t11, 0
  store i64 %t12, ptr %l12, !tbaa !24
  %t13 = load i64, ptr %l12, !tbaa !24
  %t14 = mul i64 %t13, 1
  %t15 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t14)
  %t16 = insertvalue { i64, ptr } undef, i64 %t13, 0
  %t17 = insertvalue { i64, ptr } %t16, ptr %t15, 1
  store { i64, ptr } %t17, ptr %l13, !tbaa !27
  %t18 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !27
  %t22 = load i64, ptr %l12, !tbaa !24
  %t23 = mul i64 %t22, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t19, ptr %t21, i64 %t23, i1 false)
  %t24 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t24, ptr %l11, !tbaa !27
  %t25 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t25, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t26 = load ptr, ptr %l1, !tbaa !29
  %t28 = getelementptr %"compiler/check:frame", ptr %t26, i32 0, i32 13
  %t29 = load i1, ptr %t28, !tbaa !21
  br i1 %t29, label %bb5, label %bb6
bb5:
  store { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d1, i32 0, i32 1) }, ptr %l16, !tbaa !27
  %t31 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t31, ptr %l17, !tbaa !27
  %t32 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t33 = extractvalue { i64, ptr } %t32, 0
  store i64 %t33, ptr %l18, !tbaa !24
  %t34 = load i64, ptr %l18, !tbaa !24
  %t35 = mul i64 %t34, 1
  %t36 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t35)
  %t37 = insertvalue { i64, ptr } undef, i64 %t34, 0
  %t38 = insertvalue { i64, ptr } %t37, ptr %t36, 1
  store { i64, ptr } %t38, ptr %l19, !tbaa !27
  %t39 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !27
  %t41 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t42 = load ptr, ptr %t41, !tbaa !27
  %t43 = load i64, ptr %l18, !tbaa !24
  %t44 = mul i64 %t43, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t40, ptr %t42, i64 %t44, i1 false)
  %t45 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t45, ptr %l17, !tbaa !27
  %t46 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t46, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t47 = load ptr, ptr %l1, !tbaa !29
  %t49 = getelementptr %"compiler/check:frame", ptr %t47, i32 0, i32 31
  %t50 = load i64, ptr %t49, !tbaa !24
  %t52 = icmp sge i64 %t50, 0
  br i1 %t52, label %bb8, label %bb9
bb8:
  store { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d2, i32 0, i32 1) }, ptr %l23, !tbaa !27
  %t54 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t54, ptr %l24, !tbaa !27
  %t55 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t56 = extractvalue { i64, ptr } %t55, 0
  store i64 %t56, ptr %l25, !tbaa !24
  %t57 = load i64, ptr %l25, !tbaa !24
  %t58 = mul i64 %t57, 1
  %t59 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t58)
  %t60 = insertvalue { i64, ptr } undef, i64 %t57, 0
  %t61 = insertvalue { i64, ptr } %t60, ptr %t59, 1
  store { i64, ptr } %t61, ptr %l26, !tbaa !27
  %t62 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t63 = load ptr, ptr %t62, !tbaa !27
  %t64 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !27
  %t66 = load i64, ptr %l25, !tbaa !24
  %t67 = mul i64 %t66, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t63, ptr %t65, i64 %t67, i1 false)
  %t68 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t68, ptr %l24, !tbaa !27
  %t69 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t69, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t70 = load ptr, ptr %l1, !tbaa !29
  %t72 = getelementptr %"compiler/check:frame", ptr %t70, i32 0, i32 19
  %t73 = load i64, ptr %t72, !tbaa !24
  %t75 = icmp sge i64 %t73, 0
  br i1 %t75, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l30, !tbaa !21
  br label %bb13
bb12:
  %t77 = load ptr, ptr %l1, !tbaa !29
  %t79 = getelementptr %"compiler/check:frame", ptr %t77, i32 0, i32 20
  %t80 = load i1, ptr %t79, !tbaa !21
  store i1 %t80, ptr %l30, !tbaa !21
  br label %bb13
bb13:
  %t82 = load i1, ptr %l30, !tbaa !21
  br i1 %t82, label %bb14, label %bb15
bb14:
  store { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d3, i32 0, i32 1) }, ptr %l33, !tbaa !27
  %t83 = load { i64, ptr }, ptr %l33, !tbaa !27
  store { i64, ptr } %t83, ptr %l34, !tbaa !27
  %t84 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t85 = extractvalue { i64, ptr } %t84, 0
  store i64 %t85, ptr %l35, !tbaa !24
  %t86 = load i64, ptr %l35, !tbaa !24
  %t87 = mul i64 %t86, 1
  %t88 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t87)
  %t89 = insertvalue { i64, ptr } undef, i64 %t86, 0
  %t90 = insertvalue { i64, ptr } %t89, ptr %t88, 1
  store { i64, ptr } %t90, ptr %l36, !tbaa !27
  %t91 = getelementptr { i64, ptr }, ptr %l36, i32 0, i32 1
  %t92 = load ptr, ptr %t91, !tbaa !27
  %t93 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t94 = load ptr, ptr %t93, !tbaa !27
  %t95 = load i64, ptr %l35, !tbaa !24
  %t96 = mul i64 %t95, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t92, ptr %t94, i64 %t96, i1 false)
  %t97 = load { i64, ptr }, ptr %l36, !tbaa !27
  store { i64, ptr } %t97, ptr %l34, !tbaa !27
  %t98 = load { i64, ptr }, ptr %l34, !tbaa !27
  store { i64, ptr } %t98, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  %t99 = load ptr, ptr %l1, !tbaa !29
  %t101 = getelementptr %"compiler/check:frame", ptr %t99, i32 0, i32 0
  %t102 = load i64, ptr %t101, !tbaa !24
  %t104 = icmp slt i64 %t102, 0
  br i1 %t104, label %bb17, label %bb18
bb17:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d4, i32 0, i32 1) }, ptr %l40, !tbaa !27
  %t106 = load { i64, ptr }, ptr %l40, !tbaa !27
  store { i64, ptr } %t106, ptr %l41, !tbaa !27
  %t107 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t108 = extractvalue { i64, ptr } %t107, 0
  store i64 %t108, ptr %l42, !tbaa !24
  %t109 = load i64, ptr %l42, !tbaa !24
  %t110 = mul i64 %t109, 1
  %t111 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t110)
  %t112 = insertvalue { i64, ptr } undef, i64 %t109, 0
  %t113 = insertvalue { i64, ptr } %t112, ptr %t111, 1
  store { i64, ptr } %t113, ptr %l43, !tbaa !27
  %t114 = getelementptr { i64, ptr }, ptr %l43, i32 0, i32 1
  %t115 = load ptr, ptr %t114, !tbaa !27
  %t116 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t117 = load ptr, ptr %t116, !tbaa !27
  %t118 = load i64, ptr %l42, !tbaa !24
  %t119 = mul i64 %t118, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t115, ptr %t117, i64 %t119, i1 false)
  %t120 = load { i64, ptr }, ptr %l43, !tbaa !27
  store { i64, ptr } %t120, ptr %l41, !tbaa !27
  %t121 = load { i64, ptr }, ptr %l41, !tbaa !27
  store { i64, ptr } %t121, ptr %rv
  br label %ret
bb18:
  br label %bb19
bb19:
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t124 = getelementptr %"compiler/check:Checker", ptr %t122, i32 0, i32 14
  %t125 = load ptr, ptr %l1, !tbaa !29
  %t127 = getelementptr %"compiler/check:frame", ptr %t125, i32 0, i32 0
  %t128 = load i64, ptr %t127, !tbaa !24
  %t131 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t124, i64 %t128)
  store ptr %t131, ptr %l48
  br label %bb20
bb20:
  %t132 = load ptr, ptr %l48, !tbaa !29
  %t134 = getelementptr %"compiler/typed:Body", ptr %t132, i32 0, i32 1
  %t135 = load { i64, [2 x i64] }, ptr %t134
  store { i64, [2 x i64] } %t135, ptr %l2
  %t137 = load { i64, [2 x i64] }, ptr %l2
  %t139 = extractvalue { i64, [2 x i64] } %t137, 0
  %t140 = icmp eq i64 %t139, 0
  br i1 %t140, label %bb21, label %bb22
bb21:
  %t142 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t143 = getelementptr { i64 }, ptr %t142, i32 0, i32 0
  %t144 = load i64, ptr %t143
  store i64 %t144, ptr %l3, !tbaa !24
  br label %bb23
bb22:
  br label %bb41
bb23:
  store %olang.scope zeroinitializer, ptr %s6
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t148 = getelementptr %"compiler/check:Checker", ptr %t146, i32 0, i32 1
  %t149 = load ptr, ptr %t148, !tbaa !29
  %t150 = load i64, ptr %l3, !tbaa !24
  %t153 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %t149, i64 %t150)
  store i64 %t153, ptr %l57
  br label %bb24
bb24:
  %t154 = load i64, ptr %l57, !tbaa !24
  store i64 %t154, ptr %l4, !tbaa !24
  %t155 = load ptr, ptr %l0, !tbaa !29
  %t157 = getelementptr %"compiler/check:Checker", ptr %t155, i32 0, i32 1
  %t158 = load ptr, ptr %t157, !tbaa !29
  %t159 = load i64, ptr %l4, !tbaa !24
  %t162 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t158, i64 %t159)
  store ptr %t162, ptr %l61
  br label %bb25
bb25:
  %t163 = load ptr, ptr %l61, !tbaa !29
  store ptr %t163, ptr %l5, !tbaa !29
  %t164 = load ptr, ptr %l5, !tbaa !29
  %t166 = getelementptr %"compiler/ast:Func", ptr %t164, i32 0, i32 7
  %t167 = load i1, ptr %t166, !tbaa !21
  br i1 %t167, label %bb26, label %bb27
bb26:
  store { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d5, i32 0, i32 1) }, ptr %l64, !tbaa !27
  %t169 = load { i64, ptr }, ptr %l64, !tbaa !27
  store { i64, ptr } %t169, ptr %l65, !tbaa !27
  %t170 = load { i64, ptr }, ptr %l65, !tbaa !27
  %t171 = extractvalue { i64, ptr } %t170, 0
  store i64 %t171, ptr %l66, !tbaa !24
  %t172 = load i64, ptr %l66, !tbaa !24
  %t173 = mul i64 %t172, 1
  %t174 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t173)
  %t175 = insertvalue { i64, ptr } undef, i64 %t172, 0
  %t176 = insertvalue { i64, ptr } %t175, ptr %t174, 1
  store { i64, ptr } %t176, ptr %l67, !tbaa !27
  %t177 = getelementptr { i64, ptr }, ptr %l67, i32 0, i32 1
  %t178 = load ptr, ptr %t177, !tbaa !27
  %t179 = getelementptr { i64, ptr }, ptr %l65, i32 0, i32 1
  %t180 = load ptr, ptr %t179, !tbaa !27
  %t181 = load i64, ptr %l66, !tbaa !24
  %t182 = mul i64 %t181, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t178, ptr %t180, i64 %t182, i1 false)
  %t183 = load { i64, ptr }, ptr %l67, !tbaa !27
  store { i64, ptr } %t183, ptr %l65, !tbaa !27
  call void @__olang_scope_close(ptr %s6)
  %t184 = load { i64, ptr }, ptr %l65, !tbaa !27
  store { i64, ptr } %t184, ptr %rv
  br label %ret
bb27:
  br label %bb28
bb28:
  %t185 = load ptr, ptr %l5, !tbaa !29
  %t187 = getelementptr %"compiler/ast:Func", ptr %t185, i32 0, i32 1
  %t188 = load ptr, ptr %t187, !tbaa !29
  %t190 = icmp eq ptr %t188, null
  br i1 %t190, label %bb29, label %bb30
bb29:
  %t192 = load ptr, ptr %l0, !tbaa !29
  %t193 = load ptr, ptr %l5, !tbaa !29
  %t195 = getelementptr %"compiler/ast:Func", ptr %t193, i32 0, i32 2
  %t196 = load i32, ptr %t195, !tbaa !23
  %t199 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t192, i32 %t196)
  store { i64, ptr } %t199, ptr %l75
  br label %bb31
bb30:
  store i1 false, ptr %l71, !tbaa !21
  br label %bb33
bb31:
  %t200 = load { i64, ptr }, ptr %l75, !tbaa !27
  %t201 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s6, { i64, ptr } %t200, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d6, i32 0, i32 1) })
  store i1 %t201, ptr %l76
  br label %bb32
bb32:
  %t202 = load i1, ptr %l76, !tbaa !21
  store i1 %t202, ptr %l71, !tbaa !21
  br label %bb33
bb33:
  %t203 = load i1, ptr %l71, !tbaa !21
  br i1 %t203, label %bb34, label %bb35
bb34:
  %t204 = load ptr, ptr %l0, !tbaa !29
  %t206 = getelementptr %"compiler/check:Checker", ptr %t204, i32 0, i32 1
  %t207 = load ptr, ptr %t206, !tbaa !29
  %t208 = load i64, ptr %l4, !tbaa !24
  %t211 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t207, i64 %t208)
  store i64 %t211, ptr %l81
  br label %bb36
bb35:
  store i1 false, ptr %l77, !tbaa !21
  br label %bb37
bb36:
  %t212 = load ptr, ptr %l0, !tbaa !29
  %t214 = getelementptr %"compiler/check:Checker", ptr %t212, i32 0, i32 1
  %t215 = load ptr, ptr %t214, !tbaa !29
  %t217 = getelementptr %"compiler/generic:Program", ptr %t215, i32 0, i32 0
  %t218 = load ptr, ptr %t217, !tbaa !29
  %t220 = getelementptr %"compiler/load:Loader", ptr %t218, i32 0, i32 12
  %t221 = load i64, ptr %t220, !tbaa !24
  %t222 = load i64, ptr %l81, !tbaa !24
  %t224 = icmp eq i64 %t222, %t221
  store i1 %t224, ptr %l77, !tbaa !21
  br label %bb37
bb37:
  %t226 = load i1, ptr %l77, !tbaa !21
  br i1 %t226, label %bb38, label %bb39
bb38:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d7, i32 0, i32 1) }, ptr %l87, !tbaa !27
  %t227 = load { i64, ptr }, ptr %l87, !tbaa !27
  store { i64, ptr } %t227, ptr %l88, !tbaa !27
  %t228 = load { i64, ptr }, ptr %l88, !tbaa !27
  %t229 = extractvalue { i64, ptr } %t228, 0
  store i64 %t229, ptr %l89, !tbaa !24
  %t230 = load i64, ptr %l89, !tbaa !24
  %t231 = mul i64 %t230, 1
  %t232 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t231)
  %t233 = insertvalue { i64, ptr } undef, i64 %t230, 0
  %t234 = insertvalue { i64, ptr } %t233, ptr %t232, 1
  store { i64, ptr } %t234, ptr %l90, !tbaa !27
  %t235 = getelementptr { i64, ptr }, ptr %l90, i32 0, i32 1
  %t236 = load ptr, ptr %t235, !tbaa !27
  %t237 = getelementptr { i64, ptr }, ptr %l88, i32 0, i32 1
  %t238 = load ptr, ptr %t237, !tbaa !27
  %t239 = load i64, ptr %l89, !tbaa !24
  %t240 = mul i64 %t239, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t236, ptr %t238, i64 %t240, i1 false)
  %t241 = load { i64, ptr }, ptr %l90, !tbaa !27
  store { i64, ptr } %t241, ptr %l88, !tbaa !27
  call void @__olang_scope_close(ptr %s6)
  %t242 = load { i64, ptr }, ptr %l88, !tbaa !27
  store { i64, ptr } %t242, ptr %rv
  br label %ret
bb39:
  br label %bb40
bb40:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d8, i32 0, i32 1) }, ptr %l91, !tbaa !27
  %t243 = load { i64, ptr }, ptr %l91, !tbaa !27
  store { i64, ptr } %t243, ptr %l92, !tbaa !27
  %t244 = load { i64, ptr }, ptr %l92, !tbaa !27
  %t245 = extractvalue { i64, ptr } %t244, 0
  store i64 %t245, ptr %l93, !tbaa !24
  %t246 = load i64, ptr %l93, !tbaa !24
  %t247 = mul i64 %t246, 1
  %t248 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t247)
  %t249 = insertvalue { i64, ptr } undef, i64 %t246, 0
  %t250 = insertvalue { i64, ptr } %t249, ptr %t248, 1
  store { i64, ptr } %t250, ptr %l94, !tbaa !27
  %t251 = getelementptr { i64, ptr }, ptr %l94, i32 0, i32 1
  %t252 = load ptr, ptr %t251, !tbaa !27
  %t253 = getelementptr { i64, ptr }, ptr %l92, i32 0, i32 1
  %t254 = load ptr, ptr %t253, !tbaa !27
  %t255 = load i64, ptr %l93, !tbaa !24
  %t256 = mul i64 %t255, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t252, ptr %t254, i64 %t256, i1 false)
  %t257 = load { i64, ptr }, ptr %l94, !tbaa !27
  store { i64, ptr } %t257, ptr %l92, !tbaa !27
  call void @__olang_scope_close(ptr %s6)
  %t258 = load { i64, ptr }, ptr %l92, !tbaa !27
  store { i64, ptr } %t258, ptr %rv
  br label %ret
bb41:
  br i1 true, label %bb42, label %bb43
bb42:
  br label %bb44
bb43:
  br label %bb45
bb44:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d9, i32 0, i32 1) }, ptr %l95, !tbaa !27
  %t259 = load { i64, ptr }, ptr %l95, !tbaa !27
  store { i64, ptr } %t259, ptr %l96, !tbaa !27
  %t260 = load { i64, ptr }, ptr %l96, !tbaa !27
  %t261 = extractvalue { i64, ptr } %t260, 0
  store i64 %t261, ptr %l97, !tbaa !24
  %t262 = load i64, ptr %l97, !tbaa !24
  %t263 = mul i64 %t262, 1
  %t264 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t263)
  %t265 = insertvalue { i64, ptr } undef, i64 %t262, 0
  %t266 = insertvalue { i64, ptr } %t265, ptr %t264, 1
  store { i64, ptr } %t266, ptr %l98, !tbaa !27
  %t267 = getelementptr { i64, ptr }, ptr %l98, i32 0, i32 1
  %t268 = load ptr, ptr %t267, !tbaa !27
  %t269 = getelementptr { i64, ptr }, ptr %l96, i32 0, i32 1
  %t270 = load ptr, ptr %t269, !tbaa !27
  %t271 = load i64, ptr %l97, !tbaa !24
  %t272 = mul i64 %t271, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t268, ptr %t270, i64 %t272, i1 false)
  %t273 = load { i64, ptr }, ptr %l98, !tbaa !27
  store { i64, ptr } %t273, ptr %l96, !tbaa !27
  %t274 = load { i64, ptr }, ptr %l96, !tbaa !27
  store { i64, ptr } %t274, ptr %rv
  br label %ret
bb45:
  call void @__olang_check_failed(ptr @olang_loc_f81894e5c7369345_c463cf9fb70b97d1)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebuilderNamed(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca %"compiler/check:ownerAt"
  %l5 = alloca ptr
  %l6 = alloca i1
  %l15 = alloca %"compiler/check:ownerAt"
  %l25 = alloca i64
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 30}
  %t8 = icmp eq i64 %t6, 14
  store i1 %t8, ptr %l6, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l6, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t12, i32 0, i32 1
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [4 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t18, i32 0, i32 2
  %t20 = load i32, ptr %t19
  store i32 %t20, ptr %l3, !tbaa !23
  br label %bb5
bb4:
  br label %bb11
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = load ptr, ptr %l2, !tbaa !29
  %t26 = call %"compiler/check:ownerAt" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eownerOf(ptr %v0, ptr %v1, ptr %t22, ptr %t23)
  store %"compiler/check:ownerAt" %t26, ptr %l15
  br label %bb6
bb6:
  %t27 = load %"compiler/check:ownerAt", ptr %l15
  store %"compiler/check:ownerAt" %t27, ptr %l4
  %t28 = getelementptr %"compiler/check:ownerAt", ptr %l4, i32 0, i32 0
  %t29 = load i32, ptr %t28, !tbaa !23
  %t30 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t33 = icmp eq i32 %t29, %t30
  br i1 %t33, label %bb7, label %bb8
bb7:
  store i64 -1, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/check:Checker", ptr %t36, i32 0, i32 1
  %t39 = load ptr, ptr %t38, !tbaa !29
  %t40 = getelementptr %"compiler/check:ownerAt", ptr %l4, i32 0, i32 0
  %t41 = load i32, ptr %t40, !tbaa !23
  %t42 = load i32, ptr %l3, !tbaa !23
  %t43 = getelementptr %"compiler/check:ownerAt", ptr %l4, i32 0, i32 1
  %t44 = load i1, ptr %t43, !tbaa !21
  %t49 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBuilderOf(ptr %v0, ptr %t39, i32 %t41, i32 %t42, i1 %t44)
  store i64 %t49, ptr %l25
  br label %bb10
bb10:
  %t50 = load i64, ptr %l25, !tbaa !24
  store i64 %t50, ptr %rv
  br label %ret
bb11:
  br i1 true, label %bb12, label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb15
bb14:
  store i64 -1, ptr %rv
  br label %ret
bb15:
  call void @__olang_check_failed(ptr @olang_loc_5d13064994ae0ba3_8fd3ca0506e03b5f)
  unreachable
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i32, { i64, ptr } } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebyField(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2, ptr %a3, i1 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l3 = alloca ptr
  %l4 = alloca i1
  %l5 = alloca i64
  %lp6 = alloca ptr
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i1
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca ptr
  %l14 = alloca { i32, ptr }
  %l15 = alloca i32
  %l16 = alloca ptr
  %l17 = alloca i64
  %l21 = alloca i64
  %l24 = alloca ptr
  %l28 = alloca i64
  %l38 = alloca { i64, ptr }
  %l44 = alloca { i32, ptr }
  %l52 = alloca ptr
  %l53 = alloca i1
  %l55 = alloca %"compiler/source:Span"
  %l58 = alloca %"compiler/diagmsg:Msg"
  %l60 = alloca i32
  %l63 = alloca ptr
  %l64 = alloca i1
  %l66 = alloca %"compiler/source:Span"
  %l67 = alloca %"compiler/diagmsg:Msg"
  %l69 = alloca i32
  %l83 = alloca ptr
  %l84 = alloca i1
  %l87 = alloca %"compiler/source:Span"
  %l92 = alloca %"compiler/diagmsg:Msg"
  %l94 = alloca i32
  %l99 = alloca i64
  %l102 = alloca i1
  %l106 = alloca i1
  %l108 = alloca ptr
  %l109 = alloca i1
  %l112 = alloca %"compiler/source:Span"
  %l116 = alloca ptr
  %l117 = alloca i32
  %l121 = alloca ptr
  %l122 = alloca i1
  %l125 = alloca %"compiler/source:Span"
  %l129 = alloca ptr
  %l132 = alloca { i64, ptr }
  %l133 = alloca %"compiler/diagmsg:Msg"
  %l137 = alloca { i64, ptr }
  %l138 = alloca %"compiler/diagmsg:Msg"
  %l140 = alloca i32
  %l150 = alloca i1
  %l153 = alloca i1
  %l157 = alloca ptr
  %l158 = alloca i1
  %l159 = alloca %"compiler/source:Span"
  %l160 = alloca i64
  %l163 = alloca { i64, ptr }
  %l165 = alloca %"compiler/diagmsg:Msg"
  %l167 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca { i32, { i64, ptr } }
  %t10 = alloca { i64, [4 x i64] }, align 8
  %t28 = alloca i64
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a3, ptr %l3
  store i1 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l3, !tbaa !29
  %t3 = getelementptr %"compiler/check:fieldSet", ptr %t1, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 0
  store i64 %t6, ptr %l5, !tbaa !24
  %t8 = load i64, ptr %l5, !tbaa !24
  store i64 %t8, ptr %l21, !tbaa !24
  %t9 = load %"compiler/source:Span", ptr %l1
  store { i64, [4 x i64] } zeroinitializer, ptr %t10
  %t11 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 0
  store i64 0, ptr %t11
  %t13 = insertvalue { %"compiler/source:Span" } undef, %"compiler/source:Span" %t9, 0
  %t14 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  store { %"compiler/source:Span" } %t13, ptr %t14
  %t15 = load { i64, [4 x i64] }, ptr %t10
  %t17 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 40, i64 8)
  store { i64, [4 x i64] } %t15, ptr %t17
  store ptr %t17, ptr %l24, !tbaa !29
  %t18 = load i64, ptr %l21, !tbaa !24
  %t19 = icmp sge i64 %t18, 0
  br i1 %t19, label %bb1, label %bb2
bb1:
  %t21 = load i64, ptr %l21, !tbaa !24
  %t22 = icmp sle i64 %t21, 1152921504606846975
  br i1 %t22, label %bb3, label %bb4
bb2:
  call void @__olang_check_failed(ptr @olang_loc_7e33472f03e5a723_adcfc8d4e22973ef)
  unreachable
bb3:
  %t24 = load i64, ptr %l21, !tbaa !24
  %t25 = mul i64 %t24, 8
  %t26 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t25)
  %t27 = load ptr, ptr %l24, !tbaa !29
  store i64 0, ptr %t28
  br label %fill.29
fill.29:
  %t32 = load i64, ptr %t28
  %t33 = icmp slt i64 %t32, %t24
  br i1 %t33, label %fillb.30, label %filld.31
fillb.30:
  %t34 = getelementptr ptr, ptr %t26, i64 %t32
  store ptr %t27, ptr %t34
  %t35 = add i64 %t32, 1
  store i64 %t35, ptr %t28
  br label %fill.29
filld.31:
  %t36 = insertvalue { i64, ptr } undef, i64 %t24, 0
  %t37 = insertvalue { i64, ptr } %t36, ptr %t26, 1
  %t38 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 16, i64 8)
  store ptr %t38, ptr %lp6
  %t40 = load ptr, ptr %lp6
  store { i64, ptr } %t37, ptr %t40, !tbaa !27
  %t41 = load i64, ptr %l5, !tbaa !24
  store i64 %t41, ptr %l28, !tbaa !24
  %t42 = load i64, ptr %l28, !tbaa !24
  %t43 = icmp sge i64 %t42, 0
  br i1 %t43, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_7e33472f03e5a723_adcfc8d4e22973ef)
  unreachable
bb5:
  %t45 = load i64, ptr %l28, !tbaa !24
  %t46 = mul i64 %t45, 1
  %t47 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t46)
  %t48 = insertvalue { i64, ptr } undef, i64 %t45, 0
  %t49 = insertvalue { i64, ptr } %t48, ptr %t47, 1
  store { i64, ptr } %t49, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  store i1 false, ptr %l9, !tbaa !21
  store { i64, ptr } %a2, ptr %l10, !tbaa !27
  store i64 0, ptr %l11, !tbaa !24
  %t53 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t55 = extractvalue { i64, ptr } %t53, 0
  store i64 %t55, ptr %l12, !tbaa !24
  br label %bb7
bb6:
  call void @__olang_check_failed(ptr @olang_loc_d27f09f1ed434aae_8d18f82803f9a31a)
  unreachable
bb7:
  %t57 = load i64, ptr %l11, !tbaa !24
  %t58 = load i64, ptr %l12, !tbaa !24
  %t61 = icmp slt i64 %t57, %t58
  %t63 = xor i1 %t61, true
  br i1 %t63, label %bb8, label %bb9
bb8:
  br label %bb70
bb9:
  br label %bb10
bb10:
  %t65 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t65, ptr %l38, !tbaa !27
  %t66 = load i64, ptr %l11, !tbaa !24
  %t68 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t69 = load ptr, ptr %t68, !tbaa !27
  %t70 = getelementptr ptr, ptr %t69, i64 %t66
  %t71 = load ptr, ptr %t70, !tbaa !39
  store ptr %t71, ptr %l13, !tbaa !29
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t74 = load ptr, ptr %l13, !tbaa !29
  %t75 = load ptr, ptr %l3, !tbaa !29
  %t79 = call { i32, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eitemOf(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t73, ptr %t74, ptr %t75)
  store { i32, ptr } %t79, ptr %l44
  br label %bb11
bb11:
  %t80 = load { i32, ptr }, ptr %l44
  store { i32, ptr } %t80, ptr %l14
  %t81 = getelementptr { i32, ptr }, ptr %l14, i32 0, i32 0
  %t82 = load i32, ptr %t81, !tbaa !23
  store i32 %t82, ptr %l15, !tbaa !23
  %t84 = getelementptr { i32, ptr }, ptr %l14, i32 0, i32 1
  %t85 = load ptr, ptr %t84, !tbaa !29
  store ptr %t85, ptr %l16, !tbaa !29
  %t87 = load i32, ptr %l15, !tbaa !23
  %t89 = icmp eq i32 %t87, 0
  br i1 %t89, label %bb12, label %bb13
bb12:
  %t91 = load ptr, ptr %l3, !tbaa !29
  %t93 = getelementptr %"compiler/check:fieldSet", ptr %t91, i32 0, i32 1
  %t94 = load i32, ptr %t93, !tbaa !23
  %t96 = icmp sge i32 %t94, 0
  br i1 %t96, label %bb14, label %bb15
bb13:
  br label %bb33
bb14:
  %t98 = load ptr, ptr %l0, !tbaa !29
  store ptr %t98, ptr %l52, !tbaa !29
  %t99 = load i1, ptr %l4, !tbaa !21
  store i1 %t99, ptr %l53, !tbaa !21
  %t100 = load ptr, ptr %l13, !tbaa !29
  %t102 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aPattern_2eSpan(ptr %v1, ptr %t100)
  store %"compiler/source:Span" %t102, ptr %l55
  br label %bb16
bb15:
  br label %bb21
bb16:
  %t103 = load ptr, ptr %l3, !tbaa !29
  %t105 = getelementptr %"compiler/check:fieldSet", ptr %t103, i32 0, i32 2
  %t106 = load { i64, ptr }, ptr %t105, !tbaa !27
  %t108 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eStructPatPositional(ptr %v2, ptr %v0, { i64, ptr } %t106)
  store %"compiler/diagmsg:Msg" %t108, ptr %l58
  br label %bb17
bb17:
  %t109 = load ptr, ptr %l52, !tbaa !29
  %t110 = load i1, ptr %l53, !tbaa !21
  %t111 = load %"compiler/source:Span", ptr %l55
  %t113 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebadItem(ptr %v0, ptr %v0, ptr %t109, i1 %t110, %"compiler/source:Span" %t111, ptr %l58)
  store i32 %t113, ptr %l60
  %t114 = icmp ne i32 %t113, 0
  br i1 %t114, label %bb19, label %ok.115, !prof !99
ok.115:
  br label %bb18
bb18:
  br label %bb20
bb19:
  %t116 = load i32, ptr %l60, !tbaa !23
  %t117 = lshr i32 %t116, 16
  %t118 = and i32 %t116, 65535
  %t119 = icmp eq i32 %t117, 1
  %t120 = select i1 %t119, i32 1, i32 0
  %t121 = icmp eq i32 %t116, 0
  %t122 = shl i32 %t120, 16
  %t123 = or i32 %t122, %t118
  %t124 = select i1 %t121, i32 0, i32 %t123
  call void @__olang_scope_close(ptr %s0)
  %t126 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t124, 0
  store { i32, { i64, ptr } } %t126, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  %t127 = load i1, ptr %l9, !tbaa !21
  br i1 %t127, label %bb22, label %bb23
bb22:
  %t129 = load ptr, ptr %l0, !tbaa !29
  store ptr %t129, ptr %l63, !tbaa !29
  %t130 = load i1, ptr %l4, !tbaa !21
  store i1 %t130, ptr %l64, !tbaa !21
  %t131 = load ptr, ptr %l13, !tbaa !29
  %t133 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aPattern_2eSpan(ptr %v1, ptr %t131)
  store %"compiler/source:Span" %t133, ptr %l66
  br label %bb24
bb23:
  br label %bb29
bb24:
  %t134 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePatPositionAfterName(ptr %v0)
  store %"compiler/diagmsg:Msg" %t134, ptr %l67
  br label %bb25
bb25:
  %t135 = load ptr, ptr %l63, !tbaa !29
  %t136 = load i1, ptr %l64, !tbaa !21
  %t137 = load %"compiler/source:Span", ptr %l66
  %t139 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebadItem(ptr %v0, ptr %v0, ptr %t135, i1 %t136, %"compiler/source:Span" %t137, ptr %l67)
  store i32 %t139, ptr %l69
  %t140 = icmp ne i32 %t139, 0
  br i1 %t140, label %bb27, label %ok.141, !prof !99
ok.141:
  br label %bb26
bb26:
  br label %bb28
bb27:
  %t142 = load i32, ptr %l69, !tbaa !23
  %t143 = lshr i32 %t142, 16
  %t144 = and i32 %t142, 65535
  %t145 = icmp eq i32 %t143, 1
  %t146 = select i1 %t145, i32 1, i32 0
  %t147 = icmp eq i32 %t142, 0
  %t148 = shl i32 %t146, 16
  %t149 = or i32 %t148, %t144
  %t150 = select i1 %t147, i32 0, i32 %t149
  call void @__olang_scope_close(ptr %s0)
  %t152 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t150, 0
  store { i32, { i64, ptr } } %t152, ptr %rv
  br label %ret
bb28:
  br label %bb29
bb29:
  %t153 = load i64, ptr %l8, !tbaa !24
  %t154 = load i64, ptr %l5, !tbaa !24
  %t157 = icmp slt i64 %t153, %t154
  br i1 %t157, label %bb30, label %bb31
bb30:
  %t159 = load i64, ptr %l8, !tbaa !24
  %t160 = load ptr, ptr %l13, !tbaa !29
  %t162 = load ptr, ptr %lp6
  %t164 = getelementptr { i64, ptr }, ptr %t162, i32 0, i32 1
  %t165 = load ptr, ptr %t164, !tbaa !27
  %t166 = getelementptr ptr, ptr %t165, i64 %t159
  store ptr %t160, ptr %t166, !tbaa !39
  %t167 = load i64, ptr %l8, !tbaa !24
  %t169 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t170 = load ptr, ptr %t169, !tbaa !27
  %t171 = getelementptr i1, ptr %t170, i64 %t167
  store i1 true, ptr %t171, !tbaa !31
  br label %bb32
bb31:
  br label %bb32
bb32:
  %t172 = load i64, ptr %l8, !tbaa !24
  %t174 = add i64 %t172, 1
  store i64 %t174, ptr %l8, !tbaa !24
  br label %bb69
bb33:
  store i1 true, ptr %l9, !tbaa !21
  %t176 = load ptr, ptr %l3, !tbaa !29
  %t178 = getelementptr %"compiler/check:fieldSet", ptr %t176, i32 0, i32 3
  %t179 = load { i64, ptr }, ptr %t178, !tbaa !27
  %t181 = extractvalue { i64, ptr } %t179, 0
  %t183 = icmp sgt i64 %t181, 0
  br i1 %t183, label %bb34, label %bb35
bb34:
  %t185 = load ptr, ptr %l0, !tbaa !29
  store ptr %t185, ptr %l83, !tbaa !29
  %t186 = load i1, ptr %l4, !tbaa !21
  store i1 %t186, ptr %l84, !tbaa !21
  %t187 = load ptr, ptr %l0, !tbaa !29
  %t188 = load ptr, ptr %l13, !tbaa !29
  %t191 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enameAt(ptr %v0, ptr %v1, ptr %t187, ptr %t188)
  store %"compiler/source:Span" %t191, ptr %l87
  br label %bb36
bb35:
  br label %bb41
bb36:
  %t192 = load ptr, ptr %l3, !tbaa !29
  %t194 = getelementptr %"compiler/check:fieldSet", ptr %t192, i32 0, i32 2
  %t195 = load { i64, ptr }, ptr %t194, !tbaa !27
  %t196 = load ptr, ptr %l3, !tbaa !29
  %t198 = getelementptr %"compiler/check:fieldSet", ptr %t196, i32 0, i32 3
  %t199 = load { i64, ptr }, ptr %t198, !tbaa !27
  %t202 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eWholeCaseNamed(ptr %v2, ptr %v2, ptr %v0, { i64, ptr } %t195, { i64, ptr } %t199)
  store %"compiler/diagmsg:Msg" %t202, ptr %l92
  br label %bb37
bb37:
  %t203 = load ptr, ptr %l83, !tbaa !29
  %t204 = load i1, ptr %l84, !tbaa !21
  %t205 = load %"compiler/source:Span", ptr %l87
  %t207 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebadItem(ptr %v0, ptr %v0, ptr %t203, i1 %t204, %"compiler/source:Span" %t205, ptr %l92)
  store i32 %t207, ptr %l94
  %t208 = icmp ne i32 %t207, 0
  br i1 %t208, label %bb39, label %ok.209, !prof !99
ok.209:
  br label %bb38
bb38:
  br label %bb40
bb39:
  %t210 = load i32, ptr %l94, !tbaa !23
  %t211 = lshr i32 %t210, 16
  %t212 = and i32 %t210, 65535
  %t213 = icmp eq i32 %t211, 1
  %t214 = select i1 %t213, i32 1, i32 0
  %t215 = icmp eq i32 %t210, 0
  %t216 = shl i32 %t214, 16
  %t217 = or i32 %t216, %t212
  %t218 = select i1 %t215, i32 0, i32 %t217
  call void @__olang_scope_close(ptr %s0)
  %t220 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t218, 0
  store { i32, { i64, ptr } } %t220, ptr %rv
  br label %ret
bb40:
  br label %bb41
bb41:
  %t221 = load ptr, ptr %l3, !tbaa !29
  %t223 = getelementptr %"compiler/check:fieldSet", ptr %t221, i32 0, i32 0
  %t224 = load { i64, ptr }, ptr %t223, !tbaa !27
  %t225 = load i32, ptr %l15, !tbaa !23
  %t228 = call i64 @compiler_2fcheck_2enameIndex(ptr %v2, { i64, ptr } %t224, i32 %t225)
  store i64 %t228, ptr %l99
  br label %bb42
bb42:
  %t229 = load i64, ptr %l99, !tbaa !24
  store i64 %t229, ptr %l17, !tbaa !24
  %t230 = load i64, ptr %l17, !tbaa !24
  %t232 = icmp slt i64 %t230, 0
  br i1 %t232, label %bb43, label %bb44
bb43:
  store i1 true, ptr %l102, !tbaa !21
  br label %bb46
bb44:
  %t234 = load ptr, ptr %l0, !tbaa !29
  %t235 = load ptr, ptr %l3, !tbaa !29
  %t236 = load i32, ptr %l15, !tbaa !23
  %t240 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efieldReadable(ptr %v0, ptr %v2, ptr %t234, ptr %t235, i32 %t236)
  store i1 %t240, ptr %l106
  br label %bb45
bb45:
  %t241 = load i1, ptr %l106, !tbaa !21
  %t242 = xor i1 %t241, true
  store i1 %t242, ptr %l102, !tbaa !21
  br label %bb46
bb46:
  %t244 = load i1, ptr %l102, !tbaa !21
  br i1 %t244, label %bb47, label %bb48
bb47:
  %t245 = load ptr, ptr %l0, !tbaa !29
  store ptr %t245, ptr %l108, !tbaa !29
  %t246 = load i1, ptr %l4, !tbaa !21
  store i1 %t246, ptr %l109, !tbaa !21
  %t247 = load ptr, ptr %l0, !tbaa !29
  %t248 = load ptr, ptr %l13, !tbaa !29
  %t251 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enameAt(ptr %v0, ptr %v1, ptr %t247, ptr %t248)
  store %"compiler/source:Span" %t251, ptr %l112
  br label %bb49
bb48:
  br label %bb54
bb49:
  %t252 = load ptr, ptr %l0, !tbaa !29
  %t253 = load ptr, ptr %l3, !tbaa !29
  %t254 = load i32, ptr %l15, !tbaa !23
  %t258 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enoItemField(ptr %v0, ptr %v2, ptr %v0, ptr %t252, ptr %t253, i32 %t254)
  store ptr %t258, ptr %l116
  br label %bb50
bb50:
  %t259 = load ptr, ptr %l108, !tbaa !29
  %t260 = load i1, ptr %l109, !tbaa !21
  %t261 = load %"compiler/source:Span", ptr %l112
  %t262 = load ptr, ptr %l116, !tbaa !29
  %t263 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebadItem(ptr %v0, ptr %v0, ptr %t259, i1 %t260, %"compiler/source:Span" %t261, ptr %t262)
  store i32 %t263, ptr %l117
  %t264 = icmp ne i32 %t263, 0
  br i1 %t264, label %bb52, label %ok.265, !prof !99
ok.265:
  br label %bb51
bb51:
  br label %bb53
bb52:
  %t266 = load i32, ptr %l117, !tbaa !23
  %t267 = lshr i32 %t266, 16
  %t268 = and i32 %t266, 65535
  %t269 = icmp eq i32 %t267, 1
  %t270 = select i1 %t269, i32 1, i32 0
  %t271 = icmp eq i32 %t266, 0
  %t272 = shl i32 %t270, 16
  %t273 = or i32 %t272, %t268
  %t274 = select i1 %t271, i32 0, i32 %t273
  call void @__olang_scope_close(ptr %s0)
  %t276 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t274, 0
  store { i32, { i64, ptr } } %t276, ptr %rv
  br label %ret
bb53:
  br label %bb54
bb54:
  %t277 = load i64, ptr %l17, !tbaa !24
  %t279 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t280 = load ptr, ptr %t279, !tbaa !27
  %t281 = getelementptr i1, ptr %t280, i64 %t277
  %t282 = load i1, ptr %t281, !tbaa !31
  br i1 %t282, label %bb55, label %bb56
bb55:
  %t284 = load ptr, ptr %l0, !tbaa !29
  store ptr %t284, ptr %l121, !tbaa !29
  %t285 = load i1, ptr %l4, !tbaa !21
  store i1 %t285, ptr %l122, !tbaa !21
  %t286 = load ptr, ptr %l0, !tbaa !29
  %t287 = load ptr, ptr %l13, !tbaa !29
  %t290 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enameAt(ptr %v0, ptr %v1, ptr %t286, ptr %t287)
  store %"compiler/source:Span" %t290, ptr %l125
  br label %bb57
bb56:
  br label %bb68
bb57:
  %t291 = load i64, ptr %l17, !tbaa !24
  %t292 = load i64, ptr %l8, !tbaa !24
  %t295 = icmp slt i64 %t291, %t292
  br i1 %t295, label %bb58, label %bb59
bb58:
  %t297 = load ptr, ptr %l0, !tbaa !29
  %t298 = load i32, ptr %l15, !tbaa !23
  %t301 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t297, i32 %t298)
  store { i64, ptr } %t301, ptr %l132
  br label %bb60
bb59:
  %t302 = load ptr, ptr %l0, !tbaa !29
  %t303 = load i32, ptr %l15, !tbaa !23
  %t306 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t302, i32 %t303)
  store { i64, ptr } %t306, ptr %l137
  br label %bb62
bb60:
  %t307 = load { i64, ptr }, ptr %l132, !tbaa !27
  %t308 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePatFieldBothWays(ptr %v0, ptr %v0, { i64, ptr } %t307)
  store %"compiler/diagmsg:Msg" %t308, ptr %l133
  br label %bb61
bb61:
  %t309 = load %"compiler/diagmsg:Msg", ptr %l133
  %t310 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store %"compiler/diagmsg:Msg" %t309, ptr %t310
  store ptr %t310, ptr %l129, !tbaa !29
  br label %bb64
bb62:
  %t312 = load { i64, ptr }, ptr %l137, !tbaa !27
  %t313 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePatFieldTwice(ptr %v0, ptr %v0, { i64, ptr } %t312)
  store %"compiler/diagmsg:Msg" %t313, ptr %l138
  br label %bb63
bb63:
  %t314 = load %"compiler/diagmsg:Msg", ptr %l138
  %t315 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store %"compiler/diagmsg:Msg" %t314, ptr %t315
  store ptr %t315, ptr %l129, !tbaa !29
  br label %bb64
bb64:
  %t317 = load ptr, ptr %l121, !tbaa !29
  %t318 = load i1, ptr %l122, !tbaa !21
  %t319 = load %"compiler/source:Span", ptr %l125
  %t320 = load ptr, ptr %l129, !tbaa !29
  %t321 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebadItem(ptr %v0, ptr %v0, ptr %t317, i1 %t318, %"compiler/source:Span" %t319, ptr %t320)
  store i32 %t321, ptr %l140
  %t322 = icmp ne i32 %t321, 0
  br i1 %t322, label %bb66, label %ok.323, !prof !99
ok.323:
  br label %bb65
bb65:
  br label %bb67
bb66:
  %t324 = load i32, ptr %l140, !tbaa !23
  %t325 = lshr i32 %t324, 16
  %t326 = and i32 %t324, 65535
  %t327 = icmp eq i32 %t325, 1
  %t328 = select i1 %t327, i32 1, i32 0
  %t329 = icmp eq i32 %t324, 0
  %t330 = shl i32 %t328, 16
  %t331 = or i32 %t330, %t326
  %t332 = select i1 %t329, i32 0, i32 %t331
  call void @__olang_scope_close(ptr %s0)
  %t334 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t332, 0
  store { i32, { i64, ptr } } %t334, ptr %rv
  br label %ret
bb67:
  br label %bb68
bb68:
  %t335 = load i64, ptr %l17, !tbaa !24
  %t336 = load ptr, ptr %l16, !tbaa !29
  %t338 = load ptr, ptr %lp6
  %t340 = getelementptr { i64, ptr }, ptr %t338, i32 0, i32 1
  %t341 = load ptr, ptr %t340, !tbaa !27
  %t342 = getelementptr ptr, ptr %t341, i64 %t335
  store ptr %t336, ptr %t342, !tbaa !39
  %t343 = load i64, ptr %l17, !tbaa !24
  %t345 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t346 = load ptr, ptr %t345, !tbaa !27
  %t347 = getelementptr i1, ptr %t346, i64 %t343
  store i1 true, ptr %t347, !tbaa !31
  br label %bb69
bb69:
  %t348 = load i64, ptr %l11, !tbaa !24
  %t350 = add i64 %t348, 1
  store i64 %t350, ptr %l11, !tbaa !24
  br label %bb7
bb70:
  %t352 = load i64, ptr %l8, !tbaa !24
  %t353 = load i64, ptr %l5, !tbaa !24
  %t356 = icmp sgt i64 %t352, %t353
  br i1 %t356, label %bb71, label %bb72
bb71:
  store i1 true, ptr %l150, !tbaa !21
  br label %bb76
bb72:
  %t358 = load i1, ptr %l9, !tbaa !21
  %t360 = xor i1 %t358, true
  br i1 %t360, label %bb73, label %bb74
bb73:
  %t362 = load i64, ptr %l8, !tbaa !24
  %t363 = load i64, ptr %l5, !tbaa !24
  %t366 = icmp ne i64 %t362, %t363
  store i1 %t366, ptr %l153, !tbaa !21
  br label %bb75
bb74:
  store i1 false, ptr %l153, !tbaa !21
  br label %bb75
bb75:
  %t368 = load i1, ptr %l153, !tbaa !21
  store i1 %t368, ptr %l150, !tbaa !21
  br label %bb76
bb76:
  %t369 = load i1, ptr %l150, !tbaa !21
  br i1 %t369, label %bb77, label %bb78
bb77:
  %t370 = load ptr, ptr %l0, !tbaa !29
  store ptr %t370, ptr %l157, !tbaa !29
  %t371 = load i1, ptr %l4, !tbaa !21
  store i1 %t371, ptr %l158, !tbaa !21
  %t372 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t372, ptr %l159
  %t373 = load i64, ptr %l5, !tbaa !24
  store i64 %t373, ptr %l160, !tbaa !24
  %t374 = load i64, ptr %l5, !tbaa !24
  %t376 = icmp eq i64 %t374, 1
  br i1 %t376, label %bb79, label %bb80
bb78:
  br label %bb86
bb79:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d10, i32 0, i32 1) }, ptr %l163, !tbaa !27
  br label %bb81
bb80:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) }, ptr %l163, !tbaa !27
  br label %bb81
bb81:
  %t378 = load i64, ptr %l8, !tbaa !24
  %t379 = load i64, ptr %l160, !tbaa !24
  %t380 = load { i64, ptr }, ptr %l163, !tbaa !27
  %t382 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eArgCount(ptr %v0, ptr %v0, i64 %t379, { i64, ptr } %t380, i64 %t378)
  store %"compiler/diagmsg:Msg" %t382, ptr %l165
  br label %bb82
bb82:
  %t383 = load ptr, ptr %l157, !tbaa !29
  %t384 = load i1, ptr %l158, !tbaa !21
  %t385 = load %"compiler/source:Span", ptr %l159
  %t387 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebadItem(ptr %v0, ptr %v0, ptr %t383, i1 %t384, %"compiler/source:Span" %t385, ptr %l165)
  store i32 %t387, ptr %l167
  %t388 = icmp ne i32 %t387, 0
  br i1 %t388, label %bb84, label %ok.389, !prof !99
ok.389:
  br label %bb83
bb83:
  br label %bb85
bb84:
  %t390 = load i32, ptr %l167, !tbaa !23
  %t391 = lshr i32 %t390, 16
  %t392 = and i32 %t390, 65535
  %t393 = icmp eq i32 %t391, 1
  %t394 = select i1 %t393, i32 1, i32 0
  %t395 = icmp eq i32 %t390, 0
  %t396 = shl i32 %t394, 16
  %t397 = or i32 %t396, %t392
  %t398 = select i1 %t395, i32 0, i32 %t397
  call void @__olang_scope_close(ptr %s0)
  %t400 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t398, 0
  store { i32, { i64, ptr } } %t400, ptr %rv
  br label %ret
bb85:
  br label %bb86
bb86:
  %t401 = load ptr, ptr %lp6
  %t402 = load { i64, ptr }, ptr %t401, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t404 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t402, 1
  store { i32, { i64, ptr } } %t404, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecallOfBody(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i64 %a3, { i64, ptr } %a4, i1 %a5) #0 {
entry:
  %l1 = alloca %"compiler/source:Span"
  %l6 = alloca %"compiler/source:Span"
  %l7 = alloca i32
  %l12 = alloca ptr
  %l13 = alloca { i64, ptr }
  %l17 = alloca i32
  %l19 = alloca %"compiler/typed:Call"
  %rv = alloca ptr
  %t7 = alloca { i64, [3 x i64] }, align 8
  %t30 = alloca { i64, [5 x i64] }, align 8
  store %"compiler/source:Span" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t1, ptr %l6
  store i32 %a2, ptr %l7, !tbaa !23
  %t5 = trunc i64 %a3 to i32
  store { i64, [3 x i64] } zeroinitializer, ptr %t7
  %t8 = getelementptr { i64, [3 x i64] }, ptr %t7, i32 0, i32 0
  store i64 0, ptr %t8
  %t10 = insertvalue { i32 } undef, i32 %t5, 0
  %t11 = getelementptr { i64, [3 x i64] }, ptr %t7, i32 0, i32 1
  store { i32 } %t10, ptr %t11
  %t12 = load { i64, [3 x i64] }, ptr %t7
  %t14 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store { i64, [3 x i64] } %t12, ptr %t14
  store ptr %t14, ptr %l12, !tbaa !29
  store { i64, ptr } %a4, ptr %l13, !tbaa !27
  %t17 = load %"compiler/source:Span", ptr %l1
  %t21 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esite(ptr %v0, ptr %a0, i32 0, %"compiler/source:Span" %t17)
  store i32 %t21, ptr %l17
  br label %bb1
bb1:
  %t23 = load ptr, ptr %l12, !tbaa !29
  %t24 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t25 = load i32, ptr %l17, !tbaa !23
  %t27 = call %"compiler/typed:Call" @compiler_2ftyped_3aCall_2ector(ptr %v2, ptr %v1, ptr %v2, ptr %t23, { i64, ptr } %t24, i32 %t25, i1 %a5, i1 false)
  store %"compiler/typed:Call" %t27, ptr %l19
  br label %bb2
bb2:
  %t28 = load %"compiler/typed:Call", ptr %l19
  %t29 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store %"compiler/typed:Call" %t28, ptr %t29
  store { i64, [5 x i64] } zeroinitializer, ptr %t30
  %t31 = getelementptr { i64, [5 x i64] }, ptr %t30, i32 0, i32 0
  store i64 6, ptr %t31
  %t32 = load %"compiler/source:Span", ptr %l6
  %t33 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t32, 0
  %t34 = load i32, ptr %l7, !tbaa !23
  %t35 = insertvalue { %"compiler/source:Span", i32, ptr } %t33, i32 %t34, 1
  %t37 = insertvalue { %"compiler/source:Span", i32, ptr } %t35, ptr %t29, 2
  %t38 = getelementptr { i64, [5 x i64] }, ptr %t30, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t37, ptr %t38
  %t39 = load { i64, [5 x i64] }, ptr %t30
  %t41 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t39, ptr %t41
  store ptr %t41, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecapturedValue(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l14 = alloca ptr
  %l15 = alloca i1
  %l21 = alloca ptr
  %l23 = alloca %"compiler/typed:Local"
  %l29 = alloca ptr
  %l32 = alloca i64
  %l34 = alloca i64
  %l39 = alloca ptr
  %l46 = alloca i1
  %l47 = alloca ptr
  %l48 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call ptr @compiler_2fcheck_2eunwrapped(ptr %v1, ptr %v1, ptr %a1)
  store ptr %t3, ptr %l9
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l9, !tbaa !29
  %t5 = call ptr @compiler_2fcheck_2ereadPlace(ptr %v1, ptr %v1, ptr %t4)
  store ptr %t5, ptr %l10
  br label %bb2
bb2:
  %t6 = load ptr, ptr %l10, !tbaa !29
  store ptr %t6, ptr %l2, !tbaa !29
  %t7 = load ptr, ptr %l2, !tbaa !29
  %t9 = icmp eq ptr %t7, null
  br i1 %t9, label %bb3, label %bb4
bb3:
  store i1 false, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t12 = load ptr, ptr %l2, !tbaa !29
  store ptr %t12, ptr %l14, !tbaa !29
  store i1 false, ptr %l15, !tbaa !21
  %t13 = load ptr, ptr %l14, !tbaa !29
  %t14 = icmp ne ptr %t13, null
  br i1 %t14, label %bb6, label %bb7
bb6:
  %t16 = load ptr, ptr %l14, !tbaa !29
  %t17 = load i64, ptr %t16, !range !{i64 0, i64 8}
  %t19 = icmp eq i64 %t17, 0
  store i1 %t19, ptr %l15, !tbaa !21
  br label %bb7
bb7:
  %t20 = load i1, ptr %l15, !tbaa !21
  br i1 %t20, label %bb8, label %bb9
bb8:
  %t21 = load ptr, ptr %l2, !tbaa !29
  %t23 = getelementptr { i64, [4 x i64] }, ptr %t21, i32 0, i32 1
  %t24 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t23, i32 0, i32 2
  %t25 = load i32, ptr %t24
  store i32 %t25, ptr %l3, !tbaa !23
  br label %bb10
bb9:
  br label %bb39
bb10:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t27)
  store ptr %t29, ptr %l21
  br label %bb11
bb11:
  %t30 = load i32, ptr %l3, !tbaa !23
  %t31 = load ptr, ptr %l21, !tbaa !29
  %t33 = call %"compiler/typed:Local" @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eLocal(ptr %v0, ptr %t31, i32 %t30)
  store %"compiler/typed:Local" %t33, ptr %l23
  br label %bb12
bb12:
  %t34 = getelementptr %"compiler/typed:Local", ptr %l23, i32 0, i32 4
  %t35 = load i32, ptr %t34, !range !{i32 0, i32 7}
  %t37 = trunc i64 5 to i32
  %t38 = icmp eq i32 %t35, %t37
  %t40 = xor i1 %t38, true
  br i1 %t40, label %bb13, label %bb14
bb13:
  store i1 false, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t43)
  store ptr %t45, ptr %l29
  br label %bb16
bb16:
  %t46 = load ptr, ptr %l29, !tbaa !29
  %t48 = getelementptr %"compiler/check:frame", ptr %t46, i32 0, i32 30
  store ptr %t48, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb17
bb17:
  %t50 = load i64, ptr %l5, !tbaa !24
  store i64 %t50, ptr %l32, !tbaa !24
  %t51 = load ptr, ptr %l4, !tbaa !29
  %t53 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aCapture_26_3e_2eLen_H3aff79531665083e8df6fb2351948096(ptr %v0, ptr %t51)
  store i64 %t53, ptr %l34
  br label %bb18
bb18:
  %t54 = load i64, ptr %l32, !tbaa !24
  %t55 = load i64, ptr %l34, !tbaa !24
  %t56 = icmp slt i64 %t54, %t55
  %t58 = xor i1 %t56, true
  br i1 %t58, label %bb19, label %bb20
bb19:
  br label %bb38
bb20:
  br label %bb21
bb21:
  %t60 = load ptr, ptr %l4, !tbaa !29
  %t61 = load i64, ptr %l5, !tbaa !24
  %t64 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aCapture_26_3e_2eAt__H223e9cc5a62bb13aec2c4037d58f7975(ptr %v0, ptr %v0, ptr %t60, i64 %t61)
  store ptr %t64, ptr %l39
  br label %bb22
bb22:
  %t65 = load ptr, ptr %l39, !tbaa !29
  store ptr %t65, ptr %l6, !tbaa !29
  %t66 = load ptr, ptr %l6, !tbaa !29
  %t68 = getelementptr %"compiler/typed:Capture", ptr %t66, i32 0, i32 0
  %t69 = load i32, ptr %t68, !tbaa !23
  %t70 = load i32, ptr %l3, !tbaa !23
  %t73 = icmp ne i32 %t69, %t70
  br i1 %t73, label %bb23, label %bb24
bb23:
  br label %bb37
bb24:
  br label %bb25
bb25:
  %t75 = load ptr, ptr %l6, !tbaa !29
  %t77 = getelementptr %"compiler/typed:Capture", ptr %t75, i32 0, i32 1
  %t78 = load ptr, ptr %t77, !tbaa !29
  store ptr %t78, ptr %l47, !tbaa !29
  store i1 false, ptr %l48, !tbaa !21
  %t81 = load ptr, ptr %l47, !tbaa !29
  %t82 = icmp ne ptr %t81, null
  br i1 %t82, label %bb26, label %bb27
bb26:
  %t84 = load ptr, ptr %l47, !tbaa !29
  %t85 = load i64, ptr %t84, !range !{i64 0, i64 18}
  %t87 = icmp eq i64 %t85, 3
  store i1 %t87, ptr %l48, !tbaa !21
  br label %bb27
bb27:
  %t88 = load i1, ptr %l48, !tbaa !21
  br i1 %t88, label %bb28, label %bb29
bb28:
  br label %bb30
bb29:
  br label %bb31
bb30:
  store i1 true, ptr %l46, !tbaa !21
  br label %bb36
bb31:
  br i1 true, label %bb32, label %bb33
bb32:
  br label %bb34
bb33:
  br label %bb35
bb34:
  store i1 false, ptr %l46, !tbaa !21
  br label %bb36
bb35:
  call void @__olang_check_failed(ptr @olang_loc_3fa0bc2758d24028_39c102aa9b869b2c)
  unreachable
bb36:
  %t89 = load i1, ptr %l46, !tbaa !21
  store i1 %t89, ptr %rv
  br label %ret
bb37:
  %t90 = load i64, ptr %l5, !tbaa !24
  %t92 = add i64 %t90, 1
  store i64 %t92, ptr %l5, !tbaa !24
  br label %bb17
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
  call void @__olang_check_failed(ptr @olang_loc_386bb7dc57d3fef9_468931e243621ddd)
  unreachable
bb44:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclaresNames(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
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
  %l11 = alloca { i64, ptr }
  %l12 = alloca ptr
  %l13 = alloca { i64, ptr }
  %l14 = alloca ptr
  %l15 = alloca ptr
  %l16 = alloca ptr
  %l17 = alloca { i64, ptr }
  %l18 = alloca ptr
  %l19 = alloca { i64, ptr }
  %l20 = alloca ptr
  %l24 = alloca i1
  %l25 = alloca ptr
  %l26 = alloca i1
  %l29 = alloca ptr
  %l30 = alloca i1
  %l33 = alloca ptr
  %l34 = alloca i1
  %l37 = alloca ptr
  %l38 = alloca i1
  %l43 = alloca ptr
  %l44 = alloca i1
  %l49 = alloca ptr
  %l50 = alloca i1
  %l55 = alloca ptr
  %l56 = alloca i1
  %l61 = alloca ptr
  %l62 = alloca i1
  %l67 = alloca ptr
  %l68 = alloca i1
  %l76 = alloca i1
  %l77 = alloca ptr
  %l78 = alloca i1
  %l83 = alloca ptr
  %l84 = alloca i1
  %l89 = alloca ptr
  %l90 = alloca i1
  %l98 = alloca i1
  %l99 = alloca ptr
  %l100 = alloca i1
  %l107 = alloca ptr
  %l108 = alloca i1
  %l115 = alloca ptr
  %l116 = alloca i1
  %l126 = alloca i1
  %l127 = alloca i1
  %l131 = alloca i1
  %l132 = alloca ptr
  %l133 = alloca i1
  %l145 = alloca i1
  %l146 = alloca i1
  %l150 = alloca i1
  %l151 = alloca i1
  %l155 = alloca i1
  %l156 = alloca ptr
  %l157 = alloca i1
  %l165 = alloca i1
  %l166 = alloca ptr
  %l167 = alloca i1
  %l177 = alloca i1
  %l178 = alloca i1
  %l181 = alloca i1
  %l182 = alloca ptr
  %l183 = alloca i1
  %l193 = alloca i1
  %l194 = alloca i1
  %l197 = alloca i1
  %l198 = alloca ptr
  %l199 = alloca i1
  %l211 = alloca i1
  %l212 = alloca i1
  %l215 = alloca i1
  %l216 = alloca i1
  %l219 = alloca i1
  %l220 = alloca ptr
  %l221 = alloca i1
  %l226 = alloca ptr
  %l227 = alloca i1
  %l232 = alloca ptr
  %l233 = alloca i1
  %l238 = alloca ptr
  %l239 = alloca i1
  %l244 = alloca ptr
  %l245 = alloca i1
  %l252 = alloca i1
  %l253 = alloca ptr
  %l254 = alloca i1
  %l264 = alloca i1
  %l265 = alloca i1
  %l269 = alloca ptr
  %l270 = alloca i1
  %l277 = alloca i1
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
  store ptr %t6, ptr %l25, !tbaa !29
  store i1 false, ptr %l26, !tbaa !21
  %t7 = load ptr, ptr %l25, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb4, label %bb5
bb4:
  %t10 = load ptr, ptr %l25, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 30}
  %t13 = icmp eq i64 %t11, 0
  store i1 %t13, ptr %l26, !tbaa !21
  br label %bb5
bb5:
  %t14 = load i1, ptr %l26, !tbaa !21
  br i1 %t14, label %bb6, label %bb7
bb6:
  br label %bb16
bb7:
  %t15 = load ptr, ptr %l1, !tbaa !29
  store ptr %t15, ptr %l29, !tbaa !29
  store i1 false, ptr %l30, !tbaa !21
  %t16 = load ptr, ptr %l29, !tbaa !29
  %t17 = icmp ne ptr %t16, null
  br i1 %t17, label %bb8, label %bb9
bb8:
  %t19 = load ptr, ptr %l29, !tbaa !29
  %t20 = load i64, ptr %t19, !range !{i64 0, i64 30}
  %t22 = icmp eq i64 %t20, 1
  store i1 %t22, ptr %l30, !tbaa !21
  br label %bb9
bb9:
  %t23 = load i1, ptr %l30, !tbaa !21
  br i1 %t23, label %bb10, label %bb11
bb10:
  br label %bb16
bb11:
  %t24 = load ptr, ptr %l1, !tbaa !29
  store ptr %t24, ptr %l33, !tbaa !29
  store i1 false, ptr %l34, !tbaa !21
  %t25 = load ptr, ptr %l33, !tbaa !29
  %t26 = icmp ne ptr %t25, null
  br i1 %t26, label %bb12, label %bb13
bb12:
  %t28 = load ptr, ptr %l33, !tbaa !29
  %t29 = load i64, ptr %t28, !range !{i64 0, i64 30}
  %t31 = icmp eq i64 %t29, 25
  store i1 %t31, ptr %l34, !tbaa !21
  br label %bb13
bb13:
  %t32 = load i1, ptr %l34, !tbaa !21
  br i1 %t32, label %bb14, label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb17
bb16:
  store i1 false, ptr %l24, !tbaa !21
  br label %bb182
bb17:
  %t33 = load ptr, ptr %l1, !tbaa !29
  store ptr %t33, ptr %l37, !tbaa !29
  store i1 false, ptr %l38, !tbaa !21
  %t34 = load ptr, ptr %l37, !tbaa !29
  %t35 = icmp ne ptr %t34, null
  br i1 %t35, label %bb18, label %bb19
bb18:
  %t37 = load ptr, ptr %l37, !tbaa !29
  %t38 = load i64, ptr %t37, !range !{i64 0, i64 30}
  %t40 = icmp eq i64 %t38, 2
  store i1 %t40, ptr %l38, !tbaa !21
  br label %bb19
bb19:
  %t41 = load i1, ptr %l38, !tbaa !21
  br i1 %t41, label %bb20, label %bb21
bb20:
  %t42 = load ptr, ptr %l1, !tbaa !29
  %t44 = getelementptr { i64, [4 x i64] }, ptr %t42, i32 0, i32 1
  %t45 = getelementptr { %"compiler/source:Span", ptr }, ptr %t44, i32 0, i32 1
  %t46 = load ptr, ptr %t45
  store ptr %t46, ptr %l2, !tbaa !29
  br label %bb42
bb21:
  %t48 = load ptr, ptr %l1, !tbaa !29
  store ptr %t48, ptr %l43, !tbaa !29
  store i1 false, ptr %l44, !tbaa !21
  %t49 = load ptr, ptr %l43, !tbaa !29
  %t50 = icmp ne ptr %t49, null
  br i1 %t50, label %bb22, label %bb23
bb22:
  %t52 = load ptr, ptr %l43, !tbaa !29
  %t53 = load i64, ptr %t52, !range !{i64 0, i64 30}
  %t55 = icmp eq i64 %t53, 26
  store i1 %t55, ptr %l44, !tbaa !21
  br label %bb23
bb23:
  %t56 = load i1, ptr %l44, !tbaa !21
  br i1 %t56, label %bb24, label %bb25
bb24:
  %t57 = load ptr, ptr %l1, !tbaa !29
  %t59 = getelementptr { i64, [4 x i64] }, ptr %t57, i32 0, i32 1
  %t60 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t59, i32 0, i32 2
  %t61 = load ptr, ptr %t60
  store ptr %t61, ptr %l2, !tbaa !29
  br label %bb42
bb25:
  %t63 = load ptr, ptr %l1, !tbaa !29
  store ptr %t63, ptr %l49, !tbaa !29
  store i1 false, ptr %l50, !tbaa !21
  %t64 = load ptr, ptr %l49, !tbaa !29
  %t65 = icmp ne ptr %t64, null
  br i1 %t65, label %bb26, label %bb27
bb26:
  %t67 = load ptr, ptr %l49, !tbaa !29
  %t68 = load i64, ptr %t67, !range !{i64 0, i64 30}
  %t70 = icmp eq i64 %t68, 28
  store i1 %t70, ptr %l50, !tbaa !21
  br label %bb27
bb27:
  %t71 = load i1, ptr %l50, !tbaa !21
  br i1 %t71, label %bb28, label %bb29
bb28:
  %t72 = load ptr, ptr %l1, !tbaa !29
  %t74 = getelementptr { i64, [4 x i64] }, ptr %t72, i32 0, i32 1
  %t75 = getelementptr { %"compiler/source:Span", ptr }, ptr %t74, i32 0, i32 1
  %t76 = load ptr, ptr %t75
  store ptr %t76, ptr %l2, !tbaa !29
  br label %bb42
bb29:
  %t78 = load ptr, ptr %l1, !tbaa !29
  store ptr %t78, ptr %l55, !tbaa !29
  store i1 false, ptr %l56, !tbaa !21
  %t79 = load ptr, ptr %l55, !tbaa !29
  %t80 = icmp ne ptr %t79, null
  br i1 %t80, label %bb30, label %bb31
bb30:
  %t82 = load ptr, ptr %l55, !tbaa !29
  %t83 = load i64, ptr %t82, !range !{i64 0, i64 30}
  %t85 = icmp eq i64 %t83, 3
  store i1 %t85, ptr %l56, !tbaa !21
  br label %bb31
bb31:
  %t86 = load i1, ptr %l56, !tbaa !21
  br i1 %t86, label %bb32, label %bb33
bb32:
  %t87 = load ptr, ptr %l1, !tbaa !29
  %t89 = getelementptr { i64, [4 x i64] }, ptr %t87, i32 0, i32 1
  %t90 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t89, i32 0, i32 2
  %t91 = load ptr, ptr %t90
  store ptr %t91, ptr %l2, !tbaa !29
  br label %bb42
bb33:
  %t93 = load ptr, ptr %l1, !tbaa !29
  store ptr %t93, ptr %l61, !tbaa !29
  store i1 false, ptr %l62, !tbaa !21
  %t94 = load ptr, ptr %l61, !tbaa !29
  %t95 = icmp ne ptr %t94, null
  br i1 %t95, label %bb34, label %bb35
bb34:
  %t97 = load ptr, ptr %l61, !tbaa !29
  %t98 = load i64, ptr %t97, !range !{i64 0, i64 30}
  %t100 = icmp eq i64 %t98, 4
  store i1 %t100, ptr %l62, !tbaa !21
  br label %bb35
bb35:
  %t101 = load i1, ptr %l62, !tbaa !21
  br i1 %t101, label %bb36, label %bb37
bb36:
  %t102 = load ptr, ptr %l1, !tbaa !29
  %t104 = getelementptr { i64, [4 x i64] }, ptr %t102, i32 0, i32 1
  %t105 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t104, i32 0, i32 2
  %t106 = load ptr, ptr %t105
  store ptr %t106, ptr %l2, !tbaa !29
  br label %bb42
bb37:
  %t108 = load ptr, ptr %l1, !tbaa !29
  store ptr %t108, ptr %l67, !tbaa !29
  store i1 false, ptr %l68, !tbaa !21
  %t109 = load ptr, ptr %l67, !tbaa !29
  %t110 = icmp ne ptr %t109, null
  br i1 %t110, label %bb38, label %bb39
bb38:
  %t112 = load ptr, ptr %l67, !tbaa !29
  %t113 = load i64, ptr %t112, !range !{i64 0, i64 30}
  %t115 = icmp eq i64 %t113, 14
  store i1 %t115, ptr %l68, !tbaa !21
  br label %bb39
bb39:
  %t116 = load i1, ptr %l68, !tbaa !21
  br i1 %t116, label %bb40, label %bb41
bb40:
  %t117 = load ptr, ptr %l1, !tbaa !29
  %t119 = getelementptr { i64, [4 x i64] }, ptr %t117, i32 0, i32 1
  %t120 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t119, i32 0, i32 1
  %t121 = load ptr, ptr %t120
  store ptr %t121, ptr %l2, !tbaa !29
  br label %bb42
bb41:
  br label %bb44
bb42:
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t124 = load ptr, ptr %l2, !tbaa !29
  %t128 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclaresNames(ptr %v0, ptr %v1, ptr %t123, ptr %t124)
  store i1 %t128, ptr %l76
  br label %bb43
bb43:
  %t129 = load i1, ptr %l76, !tbaa !21
  store i1 %t129, ptr %l24, !tbaa !21
  br label %bb182
bb44:
  %t130 = load ptr, ptr %l1, !tbaa !29
  store ptr %t130, ptr %l77, !tbaa !29
  store i1 false, ptr %l78, !tbaa !21
  %t131 = load ptr, ptr %l77, !tbaa !29
  %t132 = icmp ne ptr %t131, null
  br i1 %t132, label %bb45, label %bb46
bb45:
  %t134 = load ptr, ptr %l77, !tbaa !29
  %t135 = load i64, ptr %t134, !range !{i64 0, i64 30}
  %t137 = icmp eq i64 %t135, 9
  store i1 %t137, ptr %l78, !tbaa !21
  br label %bb46
bb46:
  %t138 = load i1, ptr %l78, !tbaa !21
  br i1 %t138, label %bb47, label %bb48
bb47:
  %t139 = load ptr, ptr %l1, !tbaa !29
  %t141 = getelementptr { i64, [4 x i64] }, ptr %t139, i32 0, i32 1
  %t142 = getelementptr { %"compiler/source:Span", ptr, ptr, i1 }, ptr %t141, i32 0, i32 1
  %t143 = load ptr, ptr %t142
  store ptr %t143, ptr %l3, !tbaa !29
  br label %bb57
bb48:
  %t145 = load ptr, ptr %l1, !tbaa !29
  store ptr %t145, ptr %l83, !tbaa !29
  store i1 false, ptr %l84, !tbaa !21
  %t146 = load ptr, ptr %l83, !tbaa !29
  %t147 = icmp ne ptr %t146, null
  br i1 %t147, label %bb49, label %bb50
bb49:
  %t149 = load ptr, ptr %l83, !tbaa !29
  %t150 = load i64, ptr %t149, !range !{i64 0, i64 30}
  %t152 = icmp eq i64 %t150, 11
  store i1 %t152, ptr %l84, !tbaa !21
  br label %bb50
bb50:
  %t153 = load i1, ptr %l84, !tbaa !21
  br i1 %t153, label %bb51, label %bb52
bb51:
  %t154 = load ptr, ptr %l1, !tbaa !29
  %t156 = getelementptr { i64, [4 x i64] }, ptr %t154, i32 0, i32 1
  %t157 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t156, i32 0, i32 1
  %t158 = load ptr, ptr %t157
  store ptr %t158, ptr %l3, !tbaa !29
  br label %bb57
bb52:
  %t160 = load ptr, ptr %l1, !tbaa !29
  store ptr %t160, ptr %l89, !tbaa !29
  store i1 false, ptr %l90, !tbaa !21
  %t161 = load ptr, ptr %l89, !tbaa !29
  %t162 = icmp ne ptr %t161, null
  br i1 %t162, label %bb53, label %bb54
bb53:
  %t164 = load ptr, ptr %l89, !tbaa !29
  %t165 = load i64, ptr %t164, !range !{i64 0, i64 30}
  %t167 = icmp eq i64 %t165, 13
  store i1 %t167, ptr %l90, !tbaa !21
  br label %bb54
bb54:
  %t168 = load i1, ptr %l90, !tbaa !21
  br i1 %t168, label %bb55, label %bb56
bb55:
  %t169 = load ptr, ptr %l1, !tbaa !29
  %t171 = getelementptr { i64, [4 x i64] }, ptr %t169, i32 0, i32 1
  %t172 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t171, i32 0, i32 1
  %t173 = load ptr, ptr %t172
  store ptr %t173, ptr %l3, !tbaa !29
  br label %bb57
bb56:
  br label %bb59
bb57:
  %t175 = load ptr, ptr %l0, !tbaa !29
  %t176 = load ptr, ptr %l3, !tbaa !29
  %t180 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclaresNames(ptr %v0, ptr %v1, ptr %t175, ptr %t176)
  store i1 %t180, ptr %l98
  br label %bb58
bb58:
  %t181 = load i1, ptr %l98, !tbaa !21
  store i1 %t181, ptr %l24, !tbaa !21
  br label %bb182
bb59:
  %t182 = load ptr, ptr %l1, !tbaa !29
  store ptr %t182, ptr %l99, !tbaa !29
  store i1 false, ptr %l100, !tbaa !21
  %t183 = load ptr, ptr %l99, !tbaa !29
  %t184 = icmp ne ptr %t183, null
  br i1 %t184, label %bb60, label %bb61
bb60:
  %t186 = load ptr, ptr %l99, !tbaa !29
  %t187 = load i64, ptr %t186, !range !{i64 0, i64 30}
  %t189 = icmp eq i64 %t187, 5
  store i1 %t189, ptr %l100, !tbaa !21
  br label %bb61
bb61:
  %t190 = load i1, ptr %l100, !tbaa !21
  br i1 %t190, label %bb62, label %bb63
bb62:
  %t191 = load ptr, ptr %l1, !tbaa !29
  %t193 = getelementptr { i64, [4 x i64] }, ptr %t191, i32 0, i32 1
  %t194 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t193, i32 0, i32 2
  %t195 = load ptr, ptr %t194
  store ptr %t195, ptr %l4, !tbaa !29
  %t197 = load ptr, ptr %l1, !tbaa !29
  %t199 = getelementptr { i64, [4 x i64] }, ptr %t197, i32 0, i32 1
  %t200 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t199, i32 0, i32 3
  %t201 = load ptr, ptr %t200
  store ptr %t201, ptr %l5, !tbaa !29
  br label %bb72
bb63:
  %t203 = load ptr, ptr %l1, !tbaa !29
  store ptr %t203, ptr %l107, !tbaa !29
  store i1 false, ptr %l108, !tbaa !21
  %t204 = load ptr, ptr %l107, !tbaa !29
  %t205 = icmp ne ptr %t204, null
  br i1 %t205, label %bb64, label %bb65
bb64:
  %t207 = load ptr, ptr %l107, !tbaa !29
  %t208 = load i64, ptr %t207, !range !{i64 0, i64 30}
  %t210 = icmp eq i64 %t208, 6
  store i1 %t210, ptr %l108, !tbaa !21
  br label %bb65
bb65:
  %t211 = load i1, ptr %l108, !tbaa !21
  br i1 %t211, label %bb66, label %bb67
bb66:
  %t212 = load ptr, ptr %l1, !tbaa !29
  %t214 = getelementptr { i64, [4 x i64] }, ptr %t212, i32 0, i32 1
  %t215 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t214, i32 0, i32 1
  %t216 = load ptr, ptr %t215
  store ptr %t216, ptr %l4, !tbaa !29
  %t218 = load ptr, ptr %l1, !tbaa !29
  %t220 = getelementptr { i64, [4 x i64] }, ptr %t218, i32 0, i32 1
  %t221 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t220, i32 0, i32 2
  %t222 = load ptr, ptr %t221
  store ptr %t222, ptr %l5, !tbaa !29
  br label %bb72
bb67:
  %t224 = load ptr, ptr %l1, !tbaa !29
  store ptr %t224, ptr %l115, !tbaa !29
  store i1 false, ptr %l116, !tbaa !21
  %t225 = load ptr, ptr %l115, !tbaa !29
  %t226 = icmp ne ptr %t225, null
  br i1 %t226, label %bb68, label %bb69
bb68:
  %t228 = load ptr, ptr %l115, !tbaa !29
  %t229 = load i64, ptr %t228, !range !{i64 0, i64 30}
  %t231 = icmp eq i64 %t229, 10
  store i1 %t231, ptr %l116, !tbaa !21
  br label %bb69
bb69:
  %t232 = load i1, ptr %l116, !tbaa !21
  br i1 %t232, label %bb70, label %bb71
bb70:
  %t233 = load ptr, ptr %l1, !tbaa !29
  %t235 = getelementptr { i64, [4 x i64] }, ptr %t233, i32 0, i32 1
  %t236 = getelementptr { %"compiler/source:Span", ptr, ptr, i1 }, ptr %t235, i32 0, i32 1
  %t237 = load ptr, ptr %t236
  store ptr %t237, ptr %l4, !tbaa !29
  %t239 = load ptr, ptr %l1, !tbaa !29
  %t241 = getelementptr { i64, [4 x i64] }, ptr %t239, i32 0, i32 1
  %t242 = getelementptr { %"compiler/source:Span", ptr, ptr, i1 }, ptr %t241, i32 0, i32 2
  %t243 = load ptr, ptr %t242
  store ptr %t243, ptr %l5, !tbaa !29
  br label %bb72
bb71:
  br label %bb78
bb72:
  %t245 = load ptr, ptr %l0, !tbaa !29
  %t246 = load ptr, ptr %l4, !tbaa !29
  %t250 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclaresNames(ptr %v0, ptr %v1, ptr %t245, ptr %t246)
  store i1 %t250, ptr %l126
  br label %bb73
bb73:
  %t251 = load i1, ptr %l126, !tbaa !21
  br i1 %t251, label %bb74, label %bb75
bb74:
  store i1 true, ptr %l127, !tbaa !21
  br label %bb77
bb75:
  %t252 = load ptr, ptr %l0, !tbaa !29
  %t253 = load ptr, ptr %l5, !tbaa !29
  %t257 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclaresNames(ptr %v0, ptr %v1, ptr %t252, ptr %t253)
  store i1 %t257, ptr %l131
  br label %bb76
bb76:
  %t258 = load i1, ptr %l131, !tbaa !21
  store i1 %t258, ptr %l127, !tbaa !21
  br label %bb77
bb77:
  %t259 = load i1, ptr %l127, !tbaa !21
  store i1 %t259, ptr %l24, !tbaa !21
  br label %bb182
bb78:
  %t260 = load ptr, ptr %l1, !tbaa !29
  store ptr %t260, ptr %l132, !tbaa !29
  store i1 false, ptr %l133, !tbaa !21
  %t261 = load ptr, ptr %l132, !tbaa !29
  %t262 = icmp ne ptr %t261, null
  br i1 %t262, label %bb79, label %bb80
bb79:
  %t264 = load ptr, ptr %l132, !tbaa !29
  %t265 = load i64, ptr %t264, !range !{i64 0, i64 30}
  %t267 = icmp eq i64 %t265, 8
  store i1 %t267, ptr %l133, !tbaa !21
  br label %bb80
bb80:
  %t268 = load i1, ptr %l133, !tbaa !21
  br i1 %t268, label %bb81, label %bb82
bb81:
  %t269 = load ptr, ptr %l1, !tbaa !29
  %t271 = getelementptr { i64, [4 x i64] }, ptr %t269, i32 0, i32 1
  %t272 = getelementptr { %"compiler/source:Span", ptr, ptr, ptr }, ptr %t271, i32 0, i32 1
  %t273 = load ptr, ptr %t272
  store ptr %t273, ptr %l6, !tbaa !29
  %t275 = load ptr, ptr %l1, !tbaa !29
  %t277 = getelementptr { i64, [4 x i64] }, ptr %t275, i32 0, i32 1
  %t278 = getelementptr { %"compiler/source:Span", ptr, ptr, ptr }, ptr %t277, i32 0, i32 2
  %t279 = load ptr, ptr %t278
  store ptr %t279, ptr %l7, !tbaa !29
  %t281 = load ptr, ptr %l1, !tbaa !29
  %t283 = getelementptr { i64, [4 x i64] }, ptr %t281, i32 0, i32 1
  %t284 = getelementptr { %"compiler/source:Span", ptr, ptr, ptr }, ptr %t283, i32 0, i32 3
  %t285 = load ptr, ptr %t284
  store ptr %t285, ptr %l8, !tbaa !29
  br label %bb83
bb82:
  br label %bb93
bb83:
  %t287 = load ptr, ptr %l0, !tbaa !29
  %t288 = load ptr, ptr %l6, !tbaa !29
  %t292 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclaresNames(ptr %v0, ptr %v1, ptr %t287, ptr %t288)
  store i1 %t292, ptr %l145
  br label %bb84
bb84:
  %t293 = load i1, ptr %l145, !tbaa !21
  br i1 %t293, label %bb85, label %bb86
bb85:
  store i1 true, ptr %l146, !tbaa !21
  br label %bb88
bb86:
  %t294 = load ptr, ptr %l0, !tbaa !29
  %t295 = load ptr, ptr %l7, !tbaa !29
  %t299 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclaresNames(ptr %v0, ptr %v1, ptr %t294, ptr %t295)
  store i1 %t299, ptr %l150
  br label %bb87
bb87:
  %t300 = load i1, ptr %l150, !tbaa !21
  store i1 %t300, ptr %l146, !tbaa !21
  br label %bb88
bb88:
  %t301 = load i1, ptr %l146, !tbaa !21
  br i1 %t301, label %bb89, label %bb90
bb89:
  store i1 true, ptr %l151, !tbaa !21
  br label %bb92
bb90:
  %t302 = load ptr, ptr %l0, !tbaa !29
  %t303 = load ptr, ptr %l8, !tbaa !29
  %t307 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclaresNames(ptr %v0, ptr %v1, ptr %t302, ptr %t303)
  store i1 %t307, ptr %l155
  br label %bb91
bb91:
  %t308 = load i1, ptr %l155, !tbaa !21
  store i1 %t308, ptr %l151, !tbaa !21
  br label %bb92
bb92:
  %t309 = load i1, ptr %l151, !tbaa !21
  store i1 %t309, ptr %l24, !tbaa !21
  br label %bb182
bb93:
  %t310 = load ptr, ptr %l1, !tbaa !29
  store ptr %t310, ptr %l156, !tbaa !29
  store i1 false, ptr %l157, !tbaa !21
  %t311 = load ptr, ptr %l156, !tbaa !29
  %t312 = icmp ne ptr %t311, null
  br i1 %t312, label %bb94, label %bb95
bb94:
  %t314 = load ptr, ptr %l156, !tbaa !29
  %t315 = load i64, ptr %t314, !range !{i64 0, i64 30}
  %t317 = icmp eq i64 %t315, 7
  store i1 %t317, ptr %l157, !tbaa !21
  br label %bb95
bb95:
  %t318 = load i1, ptr %l157, !tbaa !21
  br i1 %t318, label %bb96, label %bb97
bb96:
  %t319 = load ptr, ptr %l1, !tbaa !29
  %t321 = getelementptr { i64, [4 x i64] }, ptr %t319, i32 0, i32 1
  %t322 = getelementptr { %"compiler/source:Span", ptr }, ptr %t321, i32 0, i32 1
  %t323 = load ptr, ptr %t322
  store ptr %t323, ptr %l9, !tbaa !29
  br label %bb98
bb97:
  br label %bb100
bb98:
  %t325 = load ptr, ptr %l0, !tbaa !29
  %t326 = load ptr, ptr %l9, !tbaa !29
  %t328 = getelementptr %"compiler/ast:Chain", ptr %t326, i32 0, i32 1
  %t329 = load { i64, ptr }, ptr %t328, !tbaa !27
  %t332 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eanyDeclaresNames(ptr %v0, ptr %v1, ptr %t325, { i64, ptr } %t329)
  store i1 %t332, ptr %l165
  br label %bb99
bb99:
  %t333 = load i1, ptr %l165, !tbaa !21
  store i1 %t333, ptr %l24, !tbaa !21
  br label %bb182
bb100:
  %t334 = load ptr, ptr %l1, !tbaa !29
  store ptr %t334, ptr %l166, !tbaa !29
  store i1 false, ptr %l167, !tbaa !21
  %t335 = load ptr, ptr %l166, !tbaa !29
  %t336 = icmp ne ptr %t335, null
  br i1 %t336, label %bb101, label %bb102
bb101:
  %t338 = load ptr, ptr %l166, !tbaa !29
  %t339 = load i64, ptr %t338, !range !{i64 0, i64 30}
  %t341 = icmp eq i64 %t339, 12
  store i1 %t341, ptr %l167, !tbaa !21
  br label %bb102
bb102:
  %t342 = load i1, ptr %l167, !tbaa !21
  br i1 %t342, label %bb103, label %bb104
bb103:
  %t343 = load ptr, ptr %l1, !tbaa !29
  %t345 = getelementptr { i64, [4 x i64] }, ptr %t343, i32 0, i32 1
  %t346 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t345, i32 0, i32 1
  %t347 = load ptr, ptr %t346
  store ptr %t347, ptr %l10, !tbaa !29
  %t349 = load ptr, ptr %l1, !tbaa !29
  %t351 = getelementptr { i64, [4 x i64] }, ptr %t349, i32 0, i32 1
  %t352 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t351, i32 0, i32 2
  %t353 = load { i64, ptr }, ptr %t352
  store { i64, ptr } %t353, ptr %l11, !tbaa !27
  br label %bb105
bb104:
  br label %bb111
bb105:
  %t355 = load ptr, ptr %l0, !tbaa !29
  %t356 = load ptr, ptr %l10, !tbaa !29
  %t360 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclaresNames(ptr %v0, ptr %v1, ptr %t355, ptr %t356)
  store i1 %t360, ptr %l177
  br label %bb106
bb106:
  %t361 = load i1, ptr %l177, !tbaa !21
  br i1 %t361, label %bb107, label %bb108
bb107:
  store i1 true, ptr %l178, !tbaa !21
  br label %bb110
bb108:
  %t362 = load ptr, ptr %l0, !tbaa !29
  %t363 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t366 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eanyDeclaresNames(ptr %v0, ptr %v1, ptr %t362, { i64, ptr } %t363)
  store i1 %t366, ptr %l181
  br label %bb109
bb109:
  %t367 = load i1, ptr %l181, !tbaa !21
  store i1 %t367, ptr %l178, !tbaa !21
  br label %bb110
bb110:
  %t368 = load i1, ptr %l178, !tbaa !21
  store i1 %t368, ptr %l24, !tbaa !21
  br label %bb182
bb111:
  %t369 = load ptr, ptr %l1, !tbaa !29
  store ptr %t369, ptr %l182, !tbaa !29
  store i1 false, ptr %l183, !tbaa !21
  %t370 = load ptr, ptr %l182, !tbaa !29
  %t371 = icmp ne ptr %t370, null
  br i1 %t371, label %bb112, label %bb113
bb112:
  %t373 = load ptr, ptr %l182, !tbaa !29
  %t374 = load i64, ptr %t373, !range !{i64 0, i64 30}
  %t376 = icmp eq i64 %t374, 15
  store i1 %t376, ptr %l183, !tbaa !21
  br label %bb113
bb113:
  %t377 = load i1, ptr %l183, !tbaa !21
  br i1 %t377, label %bb114, label %bb115
bb114:
  %t378 = load ptr, ptr %l1, !tbaa !29
  %t380 = getelementptr { i64, [4 x i64] }, ptr %t378, i32 0, i32 1
  %t381 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t380, i32 0, i32 1
  %t382 = load ptr, ptr %t381
  store ptr %t382, ptr %l12, !tbaa !29
  %t384 = load ptr, ptr %l1, !tbaa !29
  %t386 = getelementptr { i64, [4 x i64] }, ptr %t384, i32 0, i32 1
  %t387 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t386, i32 0, i32 2
  %t388 = load { i64, ptr }, ptr %t387
  store { i64, ptr } %t388, ptr %l13, !tbaa !27
  br label %bb116
bb115:
  br label %bb122
bb116:
  %t390 = load ptr, ptr %l0, !tbaa !29
  %t391 = load ptr, ptr %l12, !tbaa !29
  %t395 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclaresNames(ptr %v0, ptr %v1, ptr %t390, ptr %t391)
  store i1 %t395, ptr %l193
  br label %bb117
bb117:
  %t396 = load i1, ptr %l193, !tbaa !21
  br i1 %t396, label %bb118, label %bb119
bb118:
  store i1 true, ptr %l194, !tbaa !21
  br label %bb121
bb119:
  %t397 = load ptr, ptr %l0, !tbaa !29
  %t398 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t401 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eanyDeclaresNames(ptr %v0, ptr %v1, ptr %t397, { i64, ptr } %t398)
  store i1 %t401, ptr %l197
  br label %bb120
bb120:
  %t402 = load i1, ptr %l197, !tbaa !21
  store i1 %t402, ptr %l194, !tbaa !21
  br label %bb121
bb121:
  %t403 = load i1, ptr %l194, !tbaa !21
  store i1 %t403, ptr %l24, !tbaa !21
  br label %bb182
bb122:
  %t404 = load ptr, ptr %l1, !tbaa !29
  store ptr %t404, ptr %l198, !tbaa !29
  store i1 false, ptr %l199, !tbaa !21
  %t405 = load ptr, ptr %l198, !tbaa !29
  %t406 = icmp ne ptr %t405, null
  br i1 %t406, label %bb123, label %bb124
bb123:
  %t408 = load ptr, ptr %l198, !tbaa !29
  %t409 = load i64, ptr %t408, !range !{i64 0, i64 30}
  %t411 = icmp eq i64 %t409, 16
  store i1 %t411, ptr %l199, !tbaa !21
  br label %bb124
bb124:
  %t412 = load i1, ptr %l199, !tbaa !21
  br i1 %t412, label %bb125, label %bb126
bb125:
  %t413 = load ptr, ptr %l1, !tbaa !29
  %t415 = getelementptr { i64, [4 x i64] }, ptr %t413, i32 0, i32 1
  %t416 = getelementptr { %"compiler/source:Span", ptr, ptr, ptr }, ptr %t415, i32 0, i32 1
  %t417 = load ptr, ptr %t416
  store ptr %t417, ptr %l14, !tbaa !29
  %t419 = load ptr, ptr %l1, !tbaa !29
  %t421 = getelementptr { i64, [4 x i64] }, ptr %t419, i32 0, i32 1
  %t422 = getelementptr { %"compiler/source:Span", ptr, ptr, ptr }, ptr %t421, i32 0, i32 2
  %t423 = load ptr, ptr %t422
  store ptr %t423, ptr %l15, !tbaa !29
  %t425 = load ptr, ptr %l1, !tbaa !29
  %t427 = getelementptr { i64, [4 x i64] }, ptr %t425, i32 0, i32 1
  %t428 = getelementptr { %"compiler/source:Span", ptr, ptr, ptr }, ptr %t427, i32 0, i32 3
  %t429 = load ptr, ptr %t428
  store ptr %t429, ptr %l16, !tbaa !29
  br label %bb127
bb126:
  br label %bb137
bb127:
  %t431 = load ptr, ptr %l0, !tbaa !29
  %t432 = load ptr, ptr %l14, !tbaa !29
  %t436 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclaresNames(ptr %v0, ptr %v1, ptr %t431, ptr %t432)
  store i1 %t436, ptr %l211
  br label %bb128
bb128:
  %t437 = load i1, ptr %l211, !tbaa !21
  br i1 %t437, label %bb129, label %bb130
bb129:
  store i1 true, ptr %l212, !tbaa !21
  br label %bb132
bb130:
  %t438 = load ptr, ptr %l0, !tbaa !29
  %t439 = load ptr, ptr %l15, !tbaa !29
  %t442 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclaresNames(ptr %v0, ptr %v1, ptr %t438, ptr %t439)
  store i1 %t442, ptr %l215
  br label %bb131
bb131:
  %t443 = load i1, ptr %l215, !tbaa !21
  store i1 %t443, ptr %l212, !tbaa !21
  br label %bb132
bb132:
  %t444 = load i1, ptr %l212, !tbaa !21
  br i1 %t444, label %bb133, label %bb134
bb133:
  store i1 true, ptr %l216, !tbaa !21
  br label %bb136
bb134:
  %t445 = load ptr, ptr %l0, !tbaa !29
  %t446 = load ptr, ptr %l16, !tbaa !29
  %t449 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclaresNames(ptr %v0, ptr %v1, ptr %t445, ptr %t446)
  store i1 %t449, ptr %l219
  br label %bb135
bb135:
  %t450 = load i1, ptr %l219, !tbaa !21
  store i1 %t450, ptr %l216, !tbaa !21
  br label %bb136
bb136:
  %t451 = load i1, ptr %l216, !tbaa !21
  store i1 %t451, ptr %l24, !tbaa !21
  br label %bb182
bb137:
  %t452 = load ptr, ptr %l1, !tbaa !29
  store ptr %t452, ptr %l220, !tbaa !29
  store i1 false, ptr %l221, !tbaa !21
  %t453 = load ptr, ptr %l220, !tbaa !29
  %t454 = icmp ne ptr %t453, null
  br i1 %t454, label %bb138, label %bb139
bb138:
  %t456 = load ptr, ptr %l220, !tbaa !29
  %t457 = load i64, ptr %t456, !range !{i64 0, i64 30}
  %t459 = icmp eq i64 %t457, 17
  store i1 %t459, ptr %l221, !tbaa !21
  br label %bb139
bb139:
  %t460 = load i1, ptr %l221, !tbaa !21
  br i1 %t460, label %bb140, label %bb141
bb140:
  %t461 = load ptr, ptr %l1, !tbaa !29
  %t463 = getelementptr { i64, [4 x i64] }, ptr %t461, i32 0, i32 1
  %t464 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t463, i32 0, i32 2
  %t465 = load { i64, ptr }, ptr %t464
  store { i64, ptr } %t465, ptr %l17, !tbaa !27
  br label %bb158
bb141:
  %t467 = load ptr, ptr %l1, !tbaa !29
  store ptr %t467, ptr %l226, !tbaa !29
  store i1 false, ptr %l227, !tbaa !21
  %t468 = load ptr, ptr %l226, !tbaa !29
  %t469 = icmp ne ptr %t468, null
  br i1 %t469, label %bb142, label %bb143
bb142:
  %t471 = load ptr, ptr %l226, !tbaa !29
  %t472 = load i64, ptr %t471, !range !{i64 0, i64 30}
  %t474 = icmp eq i64 %t472, 18
  store i1 %t474, ptr %l227, !tbaa !21
  br label %bb143
bb143:
  %t475 = load i1, ptr %l227, !tbaa !21
  br i1 %t475, label %bb144, label %bb145
bb144:
  %t476 = load ptr, ptr %l1, !tbaa !29
  %t478 = getelementptr { i64, [4 x i64] }, ptr %t476, i32 0, i32 1
  %t479 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t478, i32 0, i32 1
  %t480 = load { i64, ptr }, ptr %t479
  store { i64, ptr } %t480, ptr %l17, !tbaa !27
  br label %bb158
bb145:
  %t482 = load ptr, ptr %l1, !tbaa !29
  store ptr %t482, ptr %l232, !tbaa !29
  store i1 false, ptr %l233, !tbaa !21
  %t483 = load ptr, ptr %l232, !tbaa !29
  %t484 = icmp ne ptr %t483, null
  br i1 %t484, label %bb146, label %bb147
bb146:
  %t486 = load ptr, ptr %l232, !tbaa !29
  %t487 = load i64, ptr %t486, !range !{i64 0, i64 30}
  %t489 = icmp eq i64 %t487, 29
  store i1 %t489, ptr %l233, !tbaa !21
  br label %bb147
bb147:
  %t490 = load i1, ptr %l233, !tbaa !21
  br i1 %t490, label %bb148, label %bb149
bb148:
  %t491 = load ptr, ptr %l1, !tbaa !29
  %t493 = getelementptr { i64, [4 x i64] }, ptr %t491, i32 0, i32 1
  %t494 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t493, i32 0, i32 1
  %t495 = load { i64, ptr }, ptr %t494
  store { i64, ptr } %t495, ptr %l17, !tbaa !27
  br label %bb158
bb149:
  %t497 = load ptr, ptr %l1, !tbaa !29
  store ptr %t497, ptr %l238, !tbaa !29
  store i1 false, ptr %l239, !tbaa !21
  %t498 = load ptr, ptr %l238, !tbaa !29
  %t499 = icmp ne ptr %t498, null
  br i1 %t499, label %bb150, label %bb151
bb150:
  %t501 = load ptr, ptr %l238, !tbaa !29
  %t502 = load i64, ptr %t501, !range !{i64 0, i64 30}
  %t504 = icmp eq i64 %t502, 20
  store i1 %t504, ptr %l239, !tbaa !21
  br label %bb151
bb151:
  %t505 = load i1, ptr %l239, !tbaa !21
  br i1 %t505, label %bb152, label %bb153
bb152:
  %t506 = load ptr, ptr %l1, !tbaa !29
  %t508 = getelementptr { i64, [4 x i64] }, ptr %t506, i32 0, i32 1
  %t509 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t508, i32 0, i32 1
  %t510 = load { i64, ptr }, ptr %t509
  store { i64, ptr } %t510, ptr %l17, !tbaa !27
  br label %bb158
bb153:
  %t512 = load ptr, ptr %l1, !tbaa !29
  store ptr %t512, ptr %l244, !tbaa !29
  store i1 false, ptr %l245, !tbaa !21
  %t513 = load ptr, ptr %l244, !tbaa !29
  %t514 = icmp ne ptr %t513, null
  br i1 %t514, label %bb154, label %bb155
bb154:
  %t516 = load ptr, ptr %l244, !tbaa !29
  %t517 = load i64, ptr %t516, !range !{i64 0, i64 30}
  %t519 = icmp eq i64 %t517, 24
  store i1 %t519, ptr %l245, !tbaa !21
  br label %bb155
bb155:
  %t520 = load i1, ptr %l245, !tbaa !21
  br i1 %t520, label %bb156, label %bb157
bb156:
  %t521 = load ptr, ptr %l1, !tbaa !29
  %t523 = getelementptr { i64, [4 x i64] }, ptr %t521, i32 0, i32 1
  %t524 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t523, i32 0, i32 1
  %t525 = load { i64, ptr }, ptr %t524
  store { i64, ptr } %t525, ptr %l17, !tbaa !27
  br label %bb158
bb157:
  br label %bb160
bb158:
  %t527 = load ptr, ptr %l0, !tbaa !29
  %t528 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t531 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eanyDeclaresNames(ptr %v0, ptr %v1, ptr %t527, { i64, ptr } %t528)
  store i1 %t531, ptr %l252
  br label %bb159
bb159:
  %t532 = load i1, ptr %l252, !tbaa !21
  store i1 %t532, ptr %l24, !tbaa !21
  br label %bb182
bb160:
  %t533 = load ptr, ptr %l1, !tbaa !29
  store ptr %t533, ptr %l253, !tbaa !29
  store i1 false, ptr %l254, !tbaa !21
  %t534 = load ptr, ptr %l253, !tbaa !29
  %t535 = icmp ne ptr %t534, null
  br i1 %t535, label %bb161, label %bb162
bb161:
  %t537 = load ptr, ptr %l253, !tbaa !29
  %t538 = load i64, ptr %t537, !range !{i64 0, i64 30}
  %t540 = icmp eq i64 %t538, 21
  store i1 %t540, ptr %l254, !tbaa !21
  br label %bb162
bb162:
  %t541 = load i1, ptr %l254, !tbaa !21
  br i1 %t541, label %bb163, label %bb164
bb163:
  %t542 = load ptr, ptr %l1, !tbaa !29
  %t544 = getelementptr { i64, [4 x i64] }, ptr %t542, i32 0, i32 1
  %t545 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t544, i32 0, i32 1
  %t546 = load ptr, ptr %t545
  store ptr %t546, ptr %l18, !tbaa !29
  %t548 = load ptr, ptr %l1, !tbaa !29
  %t550 = getelementptr { i64, [4 x i64] }, ptr %t548, i32 0, i32 1
  %t551 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t550, i32 0, i32 2
  %t552 = load { i64, ptr }, ptr %t551
  store { i64, ptr } %t552, ptr %l19, !tbaa !27
  br label %bb165
bb164:
  br label %bb170
bb165:
  %t554 = load ptr, ptr %l0, !tbaa !29
  %t555 = load ptr, ptr %l18, !tbaa !29
  %t559 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclaresNames(ptr %v0, ptr %v1, ptr %t554, ptr %t555)
  store i1 %t559, ptr %l264
  br label %bb166
bb166:
  %t560 = load i1, ptr %l264, !tbaa !21
  br i1 %t560, label %bb167, label %bb168
bb167:
  store i1 true, ptr %l265, !tbaa !21
  br label %bb169
bb168:
  %t561 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t563 = extractvalue { i64, ptr } %t561, 0
  %t565 = icmp sgt i64 %t563, 0
  store i1 %t565, ptr %l265, !tbaa !21
  br label %bb169
bb169:
  %t567 = load i1, ptr %l265, !tbaa !21
  store i1 %t567, ptr %l24, !tbaa !21
  br label %bb182
bb170:
  %t568 = load ptr, ptr %l1, !tbaa !29
  store ptr %t568, ptr %l269, !tbaa !29
  store i1 false, ptr %l270, !tbaa !21
  %t569 = load ptr, ptr %l269, !tbaa !29
  %t570 = icmp ne ptr %t569, null
  br i1 %t570, label %bb171, label %bb172
bb171:
  %t572 = load ptr, ptr %l269, !tbaa !29
  %t573 = load i64, ptr %t572, !range !{i64 0, i64 30}
  %t575 = icmp eq i64 %t573, 27
  store i1 %t575, ptr %l270, !tbaa !21
  br label %bb172
bb172:
  %t576 = load i1, ptr %l270, !tbaa !21
  br i1 %t576, label %bb173, label %bb174
bb173:
  %t577 = load ptr, ptr %l1, !tbaa !29
  %t579 = getelementptr { i64, [4 x i64] }, ptr %t577, i32 0, i32 1
  %t580 = getelementptr { %"compiler/source:Span", ptr }, ptr %t579, i32 0, i32 1
  %t581 = load ptr, ptr %t580
  store ptr %t581, ptr %l20, !tbaa !29
  br label %bb175
bb174:
  br label %bb177
bb175:
  %t583 = load ptr, ptr %l0, !tbaa !29
  %t584 = load ptr, ptr %l20, !tbaa !29
  %t587 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclaresNames(ptr %v0, ptr %v1, ptr %t583, ptr %t584)
  store i1 %t587, ptr %l277
  br label %bb176
bb176:
  %t588 = load i1, ptr %l277, !tbaa !21
  store i1 %t588, ptr %l24, !tbaa !21
  br label %bb182
bb177:
  br i1 true, label %bb178, label %bb179
bb178:
  br label %bb180
bb179:
  br label %bb181
bb180:
  store i1 true, ptr %l24, !tbaa !21
  br label %bb182
bb181:
  call void @__olang_check_failed(ptr @olang_loc_35a8764184624626_7069e8aee12fde2)
  unreachable
bb182:
  %t589 = load i1, ptr %l24, !tbaa !21
  store i1 %t589, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edestructs(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l5 = alloca ptr
  %l8 = alloca i32
  %l9 = alloca i32
  %l12 = alloca i1
  %l13 = alloca i1
  %l18 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  store ptr %t6, ptr %l5, !tbaa !29
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t11 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t7, i32 %a1)
  store i32 %t11, ptr %l8
  br label %bb1
bb1:
  %t12 = load ptr, ptr %l5, !tbaa !29
  %t13 = load i32, ptr %l8, !tbaa !23
  %t14 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t12, i32 %t13)
  store i32 %t14, ptr %l9
  br label %bb2
bb2:
  %t15 = load i32, ptr %l9, !tbaa !23
  store i32 %t15, ptr %l2, !tbaa !23
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load i32, ptr %l2, !tbaa !23
  %t20 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisStruct(ptr %v0, ptr %t16, i32 %t17)
  store i1 %t20, ptr %l12
  br label %bb3
bb3:
  %t21 = load i1, ptr %l12, !tbaa !21
  br i1 %t21, label %bb4, label %bb5
bb4:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/check:Checker", ptr %t22, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t27 = getelementptr %"compiler/generic:Program", ptr %t25, i32 0, i32 2
  %t28 = load i32, ptr %l2, !tbaa !23
  %t31 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDestructs(ptr %v0, ptr %t27, i32 %t28)
  store i1 %t31, ptr %l18
  br label %bb6
bb5:
  store i1 false, ptr %l13, !tbaa !21
  br label %bb7
bb6:
  %t32 = load i1, ptr %l18, !tbaa !21
  store i1 %t32, ptr %l13, !tbaa !21
  br label %bb7
bb7:
  %t33 = load i1, ptr %l13, !tbaa !21
  store i1 %t33, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eentryOf(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l3 = alloca i64
  %l4 = alloca i64
  %l7 = alloca i64
  %l12 = alloca i64
  %l15 = alloca i64
  %l17 = alloca i32
  %l24 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i64 %a2, ptr %l4, !tbaa !65
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t3 = load i32, ptr %l1, !tbaa !23
  %t6 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eallWords(ptr %v0, ptr %t2, i32 %t3)
  store i64 %t6, ptr %l7
  br label %bb1
bb1:
  %t7 = load i64, ptr %l4, !tbaa !65
  %t8 = load i64, ptr %l7, !tbaa !65
  %t9 = and i64 %t7, %t8
  store i64 %t9, ptr %l3, !tbaa !65
  %t11 = load i64, ptr %l3, !tbaa !65
  %t13 = icmp eq i64 %t11, 0
  br i1 %t13, label %bb2, label %bb3
bb2:
  %t15 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t15, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t17 = load i64, ptr %l3, !tbaa !65
  store i64 %t17, ptr %l12, !tbaa !65
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t19 = load i32, ptr %l1, !tbaa !23
  %t22 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eallWords(ptr %v0, ptr %t18, i32 %t19)
  store i64 %t22, ptr %l15
  br label %bb5
bb5:
  %t23 = load i64, ptr %l12, !tbaa !65
  %t24 = load i64, ptr %l15, !tbaa !65
  %t25 = icmp eq i64 %t23, %t24
  br i1 %t25, label %bb6, label %bb7
bb6:
  %t27 = load i32, ptr %l1, !tbaa !23
  store i32 %t27, ptr %l17, !tbaa !23
  br label %bb9
bb7:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/check:Checker", ptr %t29, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !29
  %t34 = getelementptr %"compiler/generic:Program", ptr %t32, i32 0, i32 2
  %t35 = load i32, ptr %l1, !tbaa !23
  %t36 = load i64, ptr %l3, !tbaa !65
  %t40 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrWords(ptr %v0, ptr %t34, i32 %t35, i64 %t36)
  store i32 %t40, ptr %l24
  br label %bb8
bb8:
  %t41 = load i32, ptr %l24, !tbaa !23
  store i32 %t41, ptr %l17, !tbaa !23
  br label %bb9
bb9:
  %t42 = load i32, ptr %l17, !tbaa !23
  store i32 %t42, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrorResult(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca { i64, ptr }
  %l4 = alloca %"compiler/names:Ref"
  %l5 = alloca { i64, ptr }
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca i1
  %l21 = alloca ptr
  %l23 = alloca ptr
  %l27 = alloca %"compiler/names:Ref"
  %l31 = alloca i1
  %l36 = alloca ptr
  %l38 = alloca ptr
  %l42 = alloca %"compiler/names:Ref"
  %l46 = alloca i1
  %l52 = alloca ptr
  %l57 = alloca i32
  %l58 = alloca i32
  %l64 = alloca { i64, ptr }
  %l69 = alloca { i64, ptr }
  %l70 = alloca ptr
  %l77 = alloca %"compiler/source:Span"
  %l79 = alloca %"compiler/diagmsg:Msg"
  %l80 = alloca i64
  %l82 = alloca ptr
  %l83 = alloca i1
  %l91 = alloca i1
  %l92 = alloca ptr
  %l93 = alloca i1
  %l100 = alloca i1
  %s2 = alloca %olang.scope
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
  store ptr %t6, ptr %l11, !tbaa !29
  store i1 false, ptr %l12, !tbaa !21
  %t7 = load ptr, ptr %l11, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb4, label %bb5
bb4:
  %t10 = load ptr, ptr %l11, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 8}
  %t13 = icmp eq i64 %t11, 0
  store i1 %t13, ptr %l12, !tbaa !21
  br label %bb5
bb5:
  %t14 = load i1, ptr %l12, !tbaa !21
  br i1 %t14, label %bb6, label %bb7
bb6:
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t17 = getelementptr { i64, [5 x i64] }, ptr %t15, i32 0, i32 1
  %t18 = getelementptr { %"compiler/source:Span", { i64, ptr }, { i64, ptr } }, ptr %t17, i32 0, i32 0
  %t19 = load %"compiler/source:Span", ptr %t18
  store %"compiler/source:Span" %t19, ptr %l2
  %t21 = load ptr, ptr %l1, !tbaa !29
  %t23 = getelementptr { i64, [5 x i64] }, ptr %t21, i32 0, i32 1
  %t24 = getelementptr { %"compiler/source:Span", { i64, ptr }, { i64, ptr } }, ptr %t23, i32 0, i32 1
  %t25 = load { i64, ptr }, ptr %t24
  store { i64, ptr } %t25, ptr %l3, !tbaa !27
  br label %bb8
bb7:
  br label %bb34
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/check:Checker", ptr %t27, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !29
  %t32 = getelementptr %"compiler/generic:Program", ptr %t30, i32 0, i32 1
  %t33 = load ptr, ptr %t32, !tbaa !29
  store ptr %t33, ptr %l21, !tbaa !29
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t34)
  store ptr %t36, ptr %l23
  br label %bb9
bb9:
  %t37 = load ptr, ptr %l23, !tbaa !29
  %t39 = getelementptr %"compiler/check:frame", ptr %t37, i32 0, i32 2
  %t40 = load i64, ptr %t39, !tbaa !24
  %t41 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t42 = load i32, ptr %t41, !tbaa !23
  %t43 = load ptr, ptr %l21, !tbaa !29
  %t46 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %t43, i64 %t40, i32 %t42)
  store %"compiler/names:Ref" %t46, ptr %l27
  br label %bb10
bb10:
  %t47 = load %"compiler/names:Ref", ptr %l27
  store %"compiler/names:Ref" %t47, ptr %l4
  %t48 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t50 = extractvalue { i64, ptr } %t48, 0
  %t52 = icmp sgt i64 %t50, 1
  br i1 %t52, label %bb11, label %bb12
bb11:
  %t54 = getelementptr %"compiler/names:Ref", ptr %l4, i32 0, i32 0
  %t55 = load i32, ptr %t54, !range !{i32 0, i32 9}
  %t57 = trunc i64 0 to i32
  %t58 = icmp eq i32 %t55, %t57
  store i1 %t58, ptr %l31, !tbaa !21
  br label %bb13
bb12:
  store i1 false, ptr %l31, !tbaa !21
  br label %bb13
bb13:
  %t60 = load i1, ptr %l31, !tbaa !21
  br i1 %t60, label %bb14, label %bb15
bb14:
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t63 = getelementptr %"compiler/check:Checker", ptr %t61, i32 0, i32 1
  %t64 = load ptr, ptr %t63, !tbaa !29
  %t66 = getelementptr %"compiler/generic:Program", ptr %t64, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !29
  store ptr %t67, ptr %l36, !tbaa !29
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t68)
  store ptr %t70, ptr %l38
  br label %bb16
bb15:
  br label %bb18
bb16:
  %t71 = load ptr, ptr %l38, !tbaa !29
  %t73 = getelementptr %"compiler/check:frame", ptr %t71, i32 0, i32 2
  %t74 = load i64, ptr %t73, !tbaa !24
  %t75 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 1
  %t76 = load i32, ptr %t75, !tbaa !23
  %t77 = load ptr, ptr %l36, !tbaa !29
  %t80 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eMember(ptr %v0, ptr %t77, i64 %t74, i32 %t76)
  store %"compiler/names:Ref" %t80, ptr %l42
  br label %bb17
bb17:
  %t81 = load %"compiler/names:Ref", ptr %l42
  store %"compiler/names:Ref" %t81, ptr %l4
  br label %bb18
bb18:
  %t82 = getelementptr %"compiler/names:Ref", ptr %l4, i32 0, i32 0
  %t83 = load i32, ptr %t82, !range !{i32 0, i32 9}
  %t85 = trunc i64 4 to i32
  %t86 = icmp eq i32 %t83, %t85
  %t88 = xor i1 %t86, true
  br i1 %t88, label %bb19, label %bb20
bb19:
  store i1 true, ptr %l46, !tbaa !21
  br label %bb21
bb20:
  %t90 = getelementptr %"compiler/names:Ref", ptr %l4, i32 0, i32 2
  %t91 = load i64, ptr %t90, !tbaa !24
  %t93 = icmp slt i64 %t91, 0
  store i1 %t93, ptr %l46, !tbaa !21
  br label %bb21
bb21:
  %t95 = load i1, ptr %l46, !tbaa !21
  br i1 %t95, label %bb22, label %bb23
bb22:
  call void @__olang_scope_close(ptr %s2)
  store i1 false, ptr %rv
  br label %ret
bb23:
  br label %bb24
bb24:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t99 = getelementptr %"compiler/check:Checker", ptr %t97, i32 0, i32 1
  %t100 = load ptr, ptr %t99, !tbaa !29
  %t102 = getelementptr %"compiler/generic:Program", ptr %t100, i32 0, i32 2
  store ptr %t102, ptr %l52, !tbaa !29
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t105 = getelementptr %"compiler/check:Checker", ptr %t103, i32 0, i32 1
  %t106 = load ptr, ptr %t105, !tbaa !29
  %t107 = getelementptr %"compiler/names:Ref", ptr %l4, i32 0, i32 1
  %t108 = load i64, ptr %t107, !tbaa !24
  %t109 = getelementptr %"compiler/names:Ref", ptr %l4, i32 0, i32 2
  %t110 = load i64, ptr %t109, !tbaa !24
  %t114 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclFor(ptr %v0, ptr %t106, i64 %t108, i64 %t110)
  store i32 %t114, ptr %l57
  br label %bb25
bb25:
  %t115 = load ptr, ptr %l52, !tbaa !29
  %t116 = load i32, ptr %l57, !tbaa !23
  %t117 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t115, i32 %t116)
  store i32 %t117, ptr %l58
  br label %bb26
bb26:
  %t118 = load i32, ptr %l58, !range !{i32 0, i32 6}
  %t120 = trunc i64 2 to i32
  %t121 = icmp eq i32 %t118, %t120
  %t123 = xor i1 %t121, true
  br i1 %t123, label %bb27, label %bb28
bb27:
  call void @__olang_scope_close(ptr %s2)
  store i1 false, ptr %rv
  br label %ret
bb28:
  br label %bb29
bb29:
  %t126 = load ptr, ptr %l0, !tbaa !29
  %t127 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t127, ptr %l64, !tbaa !27
  %t128 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t130 = extractvalue { i64, ptr } %t128, 0
  %t132 = sub i64 %t130, 1
  %t134 = getelementptr { i64, ptr }, ptr %l64, i32 0, i32 1
  %t135 = load ptr, ptr %t134, !tbaa !27
  %t136 = getelementptr i32, ptr %t135, i64 %t132
  %t137 = load i32, ptr %t136, !tbaa !33
  %t140 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t126, i32 %t137)
  store { i64, ptr } %t140, ptr %l69
  br label %bb30
bb30:
  %t141 = load { i64, ptr }, ptr %l69, !tbaa !27
  store { i64, ptr } %t141, ptr %l5, !tbaa !27
  %t142 = load ptr, ptr %l0, !tbaa !29
  store ptr %t142, ptr %l70, !tbaa !29
  %t143 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 1
  %t144 = load i32, ptr %t143, !tbaa !23
  %t145 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t147 = extractvalue { i64, ptr } %t145, 0
  %t149 = trunc i64 %t147 to i32
  %t152 = sub i32 %t144, %t149
  %t153 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 1
  %t154 = load i32, ptr %t153, !tbaa !23
  %t157 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s2, i32 %t152, i32 %t154)
  store %"compiler/source:Span" %t157, ptr %l77
  br label %bb31
bb31:
  %t158 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t160 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eErrorAsResult(ptr %v0, ptr %v0, { i64, ptr } %t158)
  store %"compiler/diagmsg:Msg" %t160, ptr %l79
  br label %bb32
bb32:
  %t161 = load ptr, ptr %l70, !tbaa !29
  %t162 = load %"compiler/source:Span", ptr %l77
  %t163 = load %"compiler/diagmsg:Msg", ptr %l79
  %t164 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t161, %"compiler/source:Span" %t162, %"compiler/diagmsg:Msg" %t163)
  store i64 %t164, ptr %l80
  br label %bb33
bb33:
  call void @__olang_scope_close(ptr %s2)
  store i1 true, ptr %rv
  br label %ret
bb34:
  %t166 = load ptr, ptr %l1, !tbaa !29
  store ptr %t166, ptr %l82, !tbaa !29
  store i1 false, ptr %l83, !tbaa !21
  %t167 = load ptr, ptr %l82, !tbaa !29
  %t168 = icmp ne ptr %t167, null
  br i1 %t168, label %bb35, label %bb36
bb35:
  %t170 = load ptr, ptr %l82, !tbaa !29
  %t171 = load i64, ptr %t170, !range !{i64 0, i64 8}
  %t173 = icmp eq i64 %t171, 3
  store i1 %t173, ptr %l83, !tbaa !21
  br label %bb36
bb36:
  %t174 = load i1, ptr %l83, !tbaa !21
  br i1 %t174, label %bb37, label %bb38
bb37:
  %t175 = load ptr, ptr %l1, !tbaa !29
  %t177 = getelementptr { i64, [5 x i64] }, ptr %t175, i32 0, i32 1
  %t178 = getelementptr { %"compiler/source:Span", ptr, i1, i1 }, ptr %t177, i32 0, i32 1
  %t179 = load ptr, ptr %t178
  store ptr %t179, ptr %l6, !tbaa !29
  br label %bb39
bb38:
  br label %bb41
bb39:
  %t181 = load ptr, ptr %l0, !tbaa !29
  %t182 = load ptr, ptr %l6, !tbaa !29
  %t186 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrorResult(ptr %v0, ptr %v1, ptr %t181, ptr %t182)
  store i1 %t186, ptr %l91
  br label %bb40
bb40:
  %t187 = load i1, ptr %l91, !tbaa !21
  store i1 %t187, ptr %rv
  br label %ret
bb41:
  %t188 = load ptr, ptr %l1, !tbaa !29
  store ptr %t188, ptr %l92, !tbaa !29
  store i1 false, ptr %l93, !tbaa !21
  %t189 = load ptr, ptr %l92, !tbaa !29
  %t190 = icmp ne ptr %t189, null
  br i1 %t190, label %bb42, label %bb43
bb42:
  %t192 = load ptr, ptr %l92, !tbaa !29
  %t193 = load i64, ptr %t192, !range !{i64 0, i64 8}
  %t195 = icmp eq i64 %t193, 4
  store i1 %t195, ptr %l93, !tbaa !21
  br label %bb43
bb43:
  %t196 = load i1, ptr %l93, !tbaa !21
  br i1 %t196, label %bb44, label %bb45
bb44:
  %t197 = load ptr, ptr %l1, !tbaa !29
  %t199 = getelementptr { i64, [5 x i64] }, ptr %t197, i32 0, i32 1
  %t200 = getelementptr { %"compiler/source:Span", ptr, i1 }, ptr %t199, i32 0, i32 1
  %t201 = load ptr, ptr %t200
  store ptr %t201, ptr %l7, !tbaa !29
  br label %bb46
bb45:
  br label %bb48
bb46:
  %t203 = load ptr, ptr %l0, !tbaa !29
  %t204 = load ptr, ptr %l7, !tbaa !29
  %t207 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrorResult(ptr %v0, ptr %v1, ptr %t203, ptr %t204)
  store i1 %t207, ptr %l100
  br label %bb47
bb47:
  %t208 = load i1, ptr %l100, !tbaa !21
  store i1 %t208, ptr %rv
  br label %ret
bb48:
  br i1 true, label %bb49, label %bb50
bb49:
  br label %bb51
bb50:
  br label %bb52
bb51:
  store i1 false, ptr %rv
  br label %ret
bb52:
  call void @__olang_check_failed(ptr @olang_loc_8058995779d73e9c_6a6c2092014b34b0)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efactFound(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l5 = alloca i32
  %l10 = alloca ptr
  %l13 = alloca %"compiler/effects:Facts"
  %l16 = alloca i1
  %l18 = alloca ptr
  %l19 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i32
  %l26 = alloca %"compiler/effects:Facts"
  %l29 = alloca i1
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/check:factRead", ptr %t1, i32 0, i32 2
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = call i32 @compiler_2feffects_2eFact_2eNamed(ptr %v1, { i64, ptr } %t4)
  store i32 %t6, ptr %l5
  br label %bb1
bb1:
  %t7 = load i32, ptr %l5, !range !{i32 0, i32 10}
  store i32 %t7, ptr %l2
  %t8 = load ptr, ptr %l1, !tbaa !29
  %t10 = getelementptr %"compiler/check:factRead", ptr %t8, i32 0, i32 1
  %t11 = load i64, ptr %t10, !tbaa !24
  %t13 = icmp sge i64 %t11, 0
  br i1 %t13, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eEffects(ptr %v0, ptr %v0, ptr %t15)
  store ptr %t17, ptr %l10
  br label %bb4
bb3:
  br label %bb7
bb4:
  %t18 = load ptr, ptr %l1, !tbaa !29
  %t20 = getelementptr %"compiler/check:factRead", ptr %t18, i32 0, i32 1
  %t21 = load i64, ptr %t20, !tbaa !24
  %t22 = load ptr, ptr %l10, !tbaa !29
  %t24 = call %"compiler/effects:Facts" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eOfExtern(ptr %v0, ptr %t22, i64 %t21)
  store %"compiler/effects:Facts" %t24, ptr %l13
  br label %bb5
bb5:
  %t25 = load i32, ptr %l2, !range !{i32 0, i32 10}
  %t28 = call i1 @compiler_2feffects_2ecompiler_2feffects_3aFacts_2eHolds(ptr %s1, ptr %l13, i32 %t25)
  store i1 %t28, ptr %l16
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t29 = load i1, ptr %l16, !tbaa !21
  store i1 %t29, ptr %rv
  br label %ret
bb7:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eEffects(ptr %v0, ptr %v0, ptr %t30)
  store ptr %t32, ptr %l18
  br label %bb8
bb8:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/check:Checker", ptr %t33, i32 0, i32 20
  %t36 = load ptr, ptr %l1, !tbaa !29
  %t38 = getelementptr %"compiler/check:factRead", ptr %t36, i32 0, i32 0
  %t39 = load i64, ptr %t38, !tbaa !24
  %t42 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t35, i64 %t39)
  %t43 = extractvalue { i32, i64 } %t42, 1
  %t44 = extractvalue { i32, i64 } %t42, 0
  store i32 %t44, ptr %l25
  %t45 = icmp ne i32 %t44, 0
  br i1 %t45, label %bb10, label %ok.46, !prof !99
ok.46:
  store i64 %t43, ptr %l24
  br label %bb9
bb9:
  %t47 = load i64, ptr %l24, !tbaa !24
  store i64 %t47, ptr %l19, !tbaa !24
  br label %bb12
bb10:
  br label %bb11
bb11:
  store i64 -1, ptr %l19, !tbaa !24
  br label %bb12
bb12:
  %t48 = load ptr, ptr %l18, !tbaa !29
  %t49 = load i64, ptr %l19, !tbaa !24
  %t50 = call %"compiler/effects:Facts" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eOf(ptr %v0, ptr %t48, i64 %t49)
  store %"compiler/effects:Facts" %t50, ptr %l26
  br label %bb13
bb13:
  %t51 = load i32, ptr %l2, !range !{i32 0, i32 10}
  %t54 = call i1 @compiler_2feffects_2ecompiler_2feffects_3aFacts_2eHolds(ptr %s0, ptr %l26, i32 %t51)
  store i1 %t54, ptr %l29
  br label %bb14
bb14:
  call void @__olang_scope_close(ptr %s0)
  %t55 = load i1, ptr %l29, !tbaa !21
  store i1 %t55, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehandOn(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i64 %a2, i1 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l4 = alloca i64
  %l6 = alloca ptr
  %l10 = alloca i1
  %l16 = alloca %"compiler/source:Span"
  %l19 = alloca i32
  %l25 = alloca %"compiler/typed:Seq"
  %l31 = alloca i64
  %l32 = alloca ptr
  %l34 = alloca %"compiler/source:Span"
  %l37 = alloca %"compiler/source:Span"
  %l40 = alloca i32
  %l44 = alloca { i64, ptr }
  %l47 = alloca %"compiler/typed:Seq"
  %rv = alloca ptr
  %t41 = alloca { i64, [5 x i64] }, align 8
  %t89 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t1)
  store ptr %t3, ptr %l6
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l6, !tbaa !29
  %t6 = getelementptr %"compiler/check:frame", ptr %t4, i32 0, i32 23
  %t7 = load i64, ptr %l2, !tbaa !24
  %t10 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %v0, ptr %t6, i64 %t7)
  store i1 %t10, ptr %l10
  br label %bb2
bb2:
  %t11 = load i1, ptr %l10, !tbaa !21
  %t12 = xor i1 %t11, true
  br i1 %t12, label %bb3, label %bb4
bb3:
  %t16 = xor i1 %a3, true
  br i1 %t16, label %bb5, label %bb6
bb4:
  br label %bb15
bb5:
  %t18 = load ptr, ptr %l1, !tbaa !29
  store ptr %t18, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t20 = load ptr, ptr %l1, !tbaa !29
  %t22 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t20)
  store %"compiler/source:Span" %t22, ptr %l16
  br label %bb8
bb8:
  %t23 = load ptr, ptr %l1, !tbaa !29
  %t26 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t23)
  store i32 %t26, ptr %l19
  br label %bb9
bb9:
  %t27 = icmp sge i64 0, 0
  br i1 %t27, label %bb10, label %bb11
bb10:
  %t29 = icmp sle i64 0, 1152921504606846975
  br i1 %t29, label %bb12, label %bb13
bb11:
  call void @__olang_check_failed(ptr @olang_loc_98ce29d556b624b0_f7d4e217aacf6834)
  unreachable
bb12:
  %t31 = mul i64 0, 8
  %t32 = insertvalue { i64, ptr } undef, i64 0, 0
  %t33 = insertvalue { i64, ptr } %t32, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t34 = load ptr, ptr %l1, !tbaa !29
  %t38 = call %"compiler/typed:Seq" @compiler_2ftyped_3aSeq_2ector(ptr %v2, ptr %v1, ptr %v2, { i64, ptr } %t33, ptr %t34, i1 true)
  store %"compiler/typed:Seq" %t38, ptr %l25
  br label %bb14
bb13:
  call void @__olang_check_failed(ptr @olang_loc_98ce29d556b624b0_f7d4e217aacf6834)
  unreachable
bb14:
  %t39 = load %"compiler/typed:Seq", ptr %l25
  %t40 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store %"compiler/typed:Seq" %t39, ptr %t40
  store { i64, [5 x i64] } zeroinitializer, ptr %t41
  %t42 = getelementptr { i64, [5 x i64] }, ptr %t41, i32 0, i32 0
  store i64 12, ptr %t42
  %t43 = load %"compiler/source:Span", ptr %l16
  %t44 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t43, 0
  %t45 = load i32, ptr %l19, !tbaa !23
  %t46 = insertvalue { %"compiler/source:Span", i32, ptr } %t44, i32 %t45, 1
  %t48 = insertvalue { %"compiler/source:Span", i32, ptr } %t46, ptr %t40, 2
  %t49 = getelementptr { i64, [5 x i64] }, ptr %t41, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t48, ptr %t49
  %t50 = load { i64, [5 x i64] }, ptr %t41
  %t52 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t50, ptr %t52
  store ptr %t52, ptr %rv
  br label %ret
bb15:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/check:Checker", ptr %t54, i32 0, i32 37
  %t58 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t56)
  store i64 %t58, ptr %l31
  br label %bb16
bb16:
  %t59 = load i64, ptr %l31, !tbaa !24
  store i64 %t59, ptr %l4, !tbaa !24
  %t60 = load ptr, ptr %l0, !tbaa !29
  store ptr %t60, ptr %l32, !tbaa !29
  %t61 = load ptr, ptr %l1, !tbaa !29
  %t63 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t61)
  store %"compiler/source:Span" %t63, ptr %l34
  br label %bb17
bb17:
  %t64 = load i64, ptr %l2, !tbaa !24
  %t65 = load ptr, ptr %l32, !tbaa !29
  %t66 = load %"compiler/source:Span", ptr %l34
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropsGone(ptr %v0, ptr %t65, %"compiler/source:Span" %t66, i64 %t64)
  br label %bb18
bb18:
  %t68 = load ptr, ptr %l1, !tbaa !29
  %t70 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t68)
  store %"compiler/source:Span" %t70, ptr %l37
  br label %bb19
bb19:
  %t71 = load ptr, ptr %l1, !tbaa !29
  %t74 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t71)
  store i32 %t74, ptr %l40
  br label %bb20
bb20:
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t77 = getelementptr %"compiler/check:Checker", ptr %t75, i32 0, i32 37
  %t78 = load i64, ptr %l4, !tbaa !24
  %t81 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t77, i64 %t78)
  store { i64, ptr } %t81, ptr %l44
  br label %bb21
bb21:
  %t82 = load ptr, ptr %l1, !tbaa !29
  %t84 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t86 = call %"compiler/typed:Seq" @compiler_2ftyped_3aSeq_2ector(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %t84, ptr %t82, i1 true)
  store %"compiler/typed:Seq" %t86, ptr %l47
  br label %bb22
bb22:
  %t87 = load %"compiler/typed:Seq", ptr %l47
  %t88 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store %"compiler/typed:Seq" %t87, ptr %t88
  store { i64, [5 x i64] } zeroinitializer, ptr %t89
  %t90 = getelementptr { i64, [5 x i64] }, ptr %t89, i32 0, i32 0
  store i64 12, ptr %t90
  %t91 = load %"compiler/source:Span", ptr %l37
  %t92 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t91, 0
  %t93 = load i32, ptr %l40, !tbaa !23
  %t94 = insertvalue { %"compiler/source:Span", i32, ptr } %t92, i32 %t93, 1
  %t96 = insertvalue { %"compiler/source:Span", i32, ptr } %t94, ptr %t88, 2
  %t97 = getelementptr { i64, [5 x i64] }, ptr %t89, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t96, ptr %t97
  %t98 = load { i64, [5 x i64] }, ptr %t89
  %t100 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t98, ptr %t100
  store ptr %t100, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehasCase(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l11 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %s1 = alloca %olang.scope
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s1
  %t3 = getelementptr %"compiler/check:Checker", ptr %a0, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  %t10 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCaseNames(ptr %v0, ptr %s1, ptr %t6, i32 %a1)
  store { i64, ptr } %t10, ptr %l11
  br label %bb1
bb1:
  %t11 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t11, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t12 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t14 = extractvalue { i64, ptr } %t12, 0
  store i64 %t14, ptr %l5, !tbaa !24
  br label %bb2
bb2:
  %t16 = load i64, ptr %l4, !tbaa !24
  %t17 = load i64, ptr %l5, !tbaa !24
  %t20 = icmp slt i64 %t16, %t17
  %t22 = xor i1 %t20, true
  br i1 %t22, label %bb3, label %bb4
bb3:
  br label %bb10
bb4:
  br label %bb5
bb5:
  %t24 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t24, ptr %l18, !tbaa !27
  %t25 = load i64, ptr %l4, !tbaa !24
  %t27 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !27
  %t29 = getelementptr i32, ptr %t28, i64 %t25
  %t30 = load i32, ptr %t29, !tbaa !33
  %t36 = icmp eq i32 %t30, %a2
  br i1 %t36, label %bb6, label %bb7
bb6:
  call void @__olang_scope_close(ptr %s1)
  store i1 true, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  br label %bb9
bb9:
  %t39 = load i64, ptr %l4, !tbaa !24
  %t41 = add i64 %t39, 1
  store i64 %t41, ptr %l4, !tbaa !24
  br label %bb2
bb10:
  call void @__olang_scope_close(ptr %s1)
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eheld(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca i32
  %l6 = alloca i32
  %l10 = alloca i1
  %l14 = alloca i1
  %l17 = alloca i1
  %l18 = alloca i1
  %l23 = alloca i1
  %l28 = alloca i64
  %l30 = alloca i1
  %l32 = alloca ptr
  %l37 = alloca ptr
  %l39 = alloca ptr
  %l42 = alloca %"compiler/source:Span"
  %l48 = alloca i32
  %l49 = alloca ptr
  %l53 = alloca i32
  %l54 = alloca %"compiler/typed:Promote"
  %rv = alloca ptr
  %t98 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t4 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t1)
  store i32 %t4, ptr %l6
  br label %bb1
bb1:
  %t5 = load i32, ptr %l6, !tbaa !23
  store i32 %t5, ptr %l3, !tbaa !23
  %t6 = load i32, ptr %l3, !tbaa !23
  %t7 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t10 = icmp eq i32 %t6, %t7
  br i1 %t10, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l10, !tbaa !21
  br label %bb4
bb3:
  %t12 = load i32, ptr %l3, !tbaa !23
  %t13 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t16 = icmp eq i32 %t12, %t13
  store i1 %t16, ptr %l10, !tbaa !21
  br label %bb4
bb4:
  %t18 = load i1, ptr %l10, !tbaa !21
  br i1 %t18, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l14, !tbaa !21
  br label %bb8
bb6:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t20 = load i32, ptr %l3, !tbaa !23
  %t23 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t19, i32 %t20)
  store i1 %t23, ptr %l17
  br label %bb7
bb7:
  %t24 = load i1, ptr %l17, !tbaa !21
  store i1 %t24, ptr %l14, !tbaa !21
  br label %bb8
bb8:
  %t25 = load i1, ptr %l14, !tbaa !21
  br i1 %t25, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l18, !tbaa !21
  br label %bb12
bb10:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/check:Checker", ptr %t26, i32 0, i32 1
  %t29 = load ptr, ptr %t28, !tbaa !29
  %t31 = getelementptr %"compiler/generic:Program", ptr %t29, i32 0, i32 2
  %t32 = load i32, ptr %l3, !tbaa !23
  %t35 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNeedsDrop(ptr %v0, ptr %t31, i32 %t32)
  store i1 %t35, ptr %l23
  br label %bb11
bb11:
  %t36 = load i1, ptr %l23, !tbaa !21
  %t37 = xor i1 %t36, true
  store i1 %t37, ptr %l18, !tbaa !21
  br label %bb12
bb12:
  %t39 = load i1, ptr %l18, !tbaa !21
  br i1 %t39, label %bb13, label %bb14
bb13:
  %t40 = load ptr, ptr %l2, !tbaa !29
  store ptr %t40, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/check:Checker", ptr %t42, i32 0, i32 16
  %t46 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2_H2251bc8fca359ca0394d0bb11af7ba0a(ptr %v0, ptr %t44)
  store i64 %t46, ptr %l28
  br label %bb16
bb16:
  %t47 = load i64, ptr %l28, !tbaa !24
  %t48 = icmp sgt i64 %t47, 0
  br i1 %t48, label %bb17, label %bb18
bb17:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t50)
  store ptr %t52, ptr %l32
  br label %bb19
bb18:
  store i1 false, ptr %l30, !tbaa !21
  br label %bb20
bb19:
  %t53 = load ptr, ptr %l32, !tbaa !29
  %t55 = getelementptr %"compiler/check:frame", ptr %t53, i32 0, i32 0
  %t56 = load i64, ptr %t55, !tbaa !24
  %t58 = icmp sge i64 %t56, 0
  store i1 %t58, ptr %l30, !tbaa !21
  br label %bb20
bb20:
  %t60 = load i1, ptr %l30, !tbaa !21
  br i1 %t60, label %bb21, label %bb22
bb21:
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t63 = getelementptr %"compiler/check:Checker", ptr %t61, i32 0, i32 67
  store ptr %t63, ptr %l37, !tbaa !29
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t64)
  store ptr %t66, ptr %l39
  br label %bb23
bb22:
  br label %bb25
bb23:
  %t67 = load ptr, ptr %l39, !tbaa !29
  %t69 = getelementptr %"compiler/check:frame", ptr %t67, i32 0, i32 0
  %t70 = load i64, ptr %t69, !tbaa !24
  %t71 = load ptr, ptr %l37, !tbaa !29
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t71, i64 %t70, i1 true)
  br label %bb24
bb24:
  br label %bb25
bb25:
  %t73 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t73, ptr %l42
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr %"compiler/check:Checker", ptr %t74, i32 0, i32 1
  %t77 = load ptr, ptr %t76, !tbaa !29
  %t79 = getelementptr %"compiler/generic:Program", ptr %t77, i32 0, i32 2
  %t80 = load i32, ptr %l3, !tbaa !23
  %t81 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t85 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t79, i32 %t80, i64 %t81)
  store i32 %t85, ptr %l48
  br label %bb26
bb26:
  %t86 = load ptr, ptr %l2, !tbaa !29
  store ptr %t86, ptr %l49, !tbaa !29
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t88 = load %"compiler/source:Span", ptr %l1
  %t92 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esite(ptr %v0, ptr %t87, i32 2, %"compiler/source:Span" %t88)
  store i32 %t92, ptr %l53
  br label %bb27
bb27:
  %t93 = load ptr, ptr %l49, !tbaa !29
  %t94 = load i32, ptr %l53, !tbaa !23
  %t95 = call %"compiler/typed:Promote" @compiler_2ftyped_3aPromote_2ector(ptr %v1, ptr %v2, ptr %t93, i32 %t94)
  store %"compiler/typed:Promote" %t95, ptr %l54
  br label %bb28
bb28:
  %t96 = load %"compiler/typed:Promote", ptr %l54
  %t97 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store %"compiler/typed:Promote" %t96, ptr %t97
  store { i64, [5 x i64] } zeroinitializer, ptr %t98
  %t99 = getelementptr { i64, [5 x i64] }, ptr %t98, i32 0, i32 0
  store i64 5, ptr %t99
  %t100 = load %"compiler/source:Span", ptr %l42
  %t101 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t100, 0
  %t102 = load i32, ptr %l48, !tbaa !23
  %t103 = insertvalue { %"compiler/source:Span", i32, ptr } %t101, i32 %t102, 1
  %t105 = insertvalue { %"compiler/source:Span", i32, ptr } %t103, ptr %t97, 2
  %t106 = getelementptr { i64, [5 x i64] }, ptr %t98, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t105, ptr %t106
  %t107 = load { i64, [5 x i64] }, ptr %t98
  %t109 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t107, ptr %t109
  store ptr %t109, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eholdsWritable(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l4 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eholdsWritableAt(ptr %v0, ptr %a0, i32 %a1, i64 0)
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

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %a0) #0 {
entry:
  %l4 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = getelementptr %"compiler/check:Checker", ptr %a0, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  %t8 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s0, ptr %t6, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d12, i32 0, i32 1) })
  store i32 %t8, ptr %l4
  br label %bb1
bb1:
  call void @__olang_scope_close(ptr %s0)
  %t9 = load i32, ptr %l4, !tbaa !23
  store i32 %t9, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einvoke(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i64 %a3, ptr %a4, { i64, ptr } %a5, { i64, ptr } %a6, { i64, ptr } %a7) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca i32
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca { i64, ptr }
  %lp16 = alloca ptr
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %lp24 = alloca ptr
  %l25 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l26 = alloca i64
  %l27 = alloca i64
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca i64
  %l31 = alloca i64
  %l32 = alloca i64
  %l33 = alloca i64
  %l34 = alloca ptr
  %l35 = alloca %"compiler/check:litv"
  %l36 = alloca i1
  %l37 = alloca ptr
  %l38 = alloca i64
  %l39 = alloca i64
  %l40 = alloca i64
  %l41 = alloca i64
  %l42 = alloca i64
  %l43 = alloca i64
  %l44 = alloca ptr
  %l45 = alloca i64
  %l46 = alloca i64
  %l47 = alloca ptr
  %l48 = alloca i64
  %l49 = alloca { i64, ptr }
  %l50 = alloca i64
  %l51 = alloca i64
  %l52 = alloca i64
  %l53 = alloca i64
  %l54 = alloca i64
  %l55 = alloca i64
  %l56 = alloca i32
  %l58 = alloca ptr
  %l59 = alloca i64
  %l60 = alloca i64
  %l61 = alloca { i64, ptr }
  %l62 = alloca i64
  %l63 = alloca i64
  %l64 = alloca i64
  %l65 = alloca i64
  %l66 = alloca i64
  %l67 = alloca i64
  %l68 = alloca i64
  %l69 = alloca ptr
  %l70 = alloca ptr
  %l71 = alloca i64
  %l72 = alloca i64
  %l73 = alloca i64
  %l74 = alloca i64
  %l75 = alloca i64
  %l76 = alloca i64
  %l77 = alloca i64
  %l78 = alloca i64
  %l79 = alloca i64
  %l80 = alloca i64
  %l81 = alloca i64
  %l82 = alloca i64
  %l83 = alloca i64
  %l84 = alloca i64
  %l85 = alloca i64
  %l86 = alloca i64
  %l87 = alloca i64
  %l88 = alloca i64
  %l89 = alloca i64
  %l90 = alloca i32
  %l91 = alloca i32
  %l93 = alloca i32
  %l94 = alloca { i64, ptr }
  %l95 = alloca { i64, ptr }
  %l96 = alloca i64
  %l97 = alloca i64
  %l99 = alloca { i64, ptr }
  %l100 = alloca { i64, ptr }
  %l101 = alloca i64
  %l102 = alloca %"compiler/generic:Origin"
  %l103 = alloca i64
  %l104 = alloca i64
  %l105 = alloca { i64, ptr }
  %l106 = alloca ptr
  %l107 = alloca i64
  %l108 = alloca i64
  %l109 = alloca i64
  %lp110 = alloca ptr
  %l111 = alloca i64
  %l112 = alloca i64
  %l113 = alloca i64
  %l114 = alloca i64
  %l115 = alloca i64
  %l116 = alloca i64
  %l117 = alloca ptr
  %l118 = alloca ptr
  %l119 = alloca i32
  %l126 = alloca ptr
  %l127 = alloca ptr
  %l130 = alloca ptr
  %l134 = alloca i32
  %l135 = alloca i64
  %l139 = alloca i64
  %l143 = alloca { i64, ptr }
  %l144 = alloca [0 x i64]
  %l145 = alloca { i64, ptr }
  %l147 = alloca i1
  %l148 = alloca ptr
  %l152 = alloca ptr
  %l155 = alloca { i64, ptr }
  %l156 = alloca { i64, ptr }
  %l157 = alloca ptr
  %l161 = alloca ptr
  %l164 = alloca { i64, ptr }
  %l165 = alloca { i64, ptr }
  %l173 = alloca ptr
  %l176 = alloca { i64, ptr }
  %l177 = alloca { i64, ptr }
  %l179 = alloca i64
  %l181 = alloca i64
  %l182 = alloca { i64, ptr }
  %l188 = alloca i32
  %l192 = alloca i1
  %l206 = alloca ptr
  %l208 = alloca i64
  %l212 = alloca i64
  %l218 = alloca i64
  %l221 = alloca i64
  %l224 = alloca ptr
  %l225 = alloca %"compiler/source:Span"
  %l226 = alloca %"compiler/source:Span"
  %l230 = alloca i32
  %l240 = alloca ptr
  %l245 = alloca i64
  %l246 = alloca ptr
  %l249 = alloca ptr
  %l254 = alloca i32
  %l255 = alloca { i64, ptr }
  %l256 = alloca { i64, ptr }
  %l259 = alloca %"compiler/generic:Binding"
  %l268 = alloca i64
  %l271 = alloca i64
  %l289 = alloca { i64, ptr }
  %l294 = alloca { i64, ptr }
  %l296 = alloca { i64, ptr }
  %l307 = alloca ptr
  %l308 = alloca { i64, ptr }
  %l309 = alloca i32
  %l312 = alloca i32
  %l314 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l315 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l320 = alloca i1
  %l324 = alloca i1
  %l330 = alloca i1
  %l331 = alloca { i64, ptr }
  %l333 = alloca i1
  %l335 = alloca { i64, ptr }
  %l337 = alloca { i64, ptr }
  %l341 = alloca i64
  %l347 = alloca i1
  %l358 = alloca i64
  %l361 = alloca i64
  %l382 = alloca i1
  %l387 = alloca { i64, ptr }
  %l394 = alloca i1
  %l395 = alloca { i64, ptr }
  %l398 = alloca i1
  %l400 = alloca { i64, ptr }
  %l403 = alloca { i64, ptr }
  %l407 = alloca ptr
  %l409 = alloca { i64, ptr }
  %l413 = alloca %"compiler/check:litv"
  %l415 = alloca i1
  %l417 = alloca { i64, ptr }
  %l420 = alloca i1
  %l422 = alloca i1
  %l425 = alloca { i64, ptr }
  %l428 = alloca i1
  %l433 = alloca ptr
  %l434 = alloca { i64, ptr }
  %l436 = alloca i32
  %l438 = alloca i32
  %l442 = alloca i32
  %l444 = alloca i1
  %l446 = alloca { i64, ptr }
  %l449 = alloca i1
  %l450 = alloca i32
  %l454 = alloca i32
  %l456 = alloca i32
  %l458 = alloca { i64, ptr }
  %l461 = alloca ptr
  %l462 = alloca i1
  %l467 = alloca ptr
  %l468 = alloca i1
  %l471 = alloca ptr
  %l472 = alloca { i64, ptr }
  %l475 = alloca ptr
  %l479 = alloca i32
  %l484 = alloca i32
  %l486 = alloca ptr
  %l491 = alloca i1
  %l496 = alloca i1
  %l498 = alloca ptr
  %l500 = alloca i32
  %l503 = alloca i1
  %l505 = alloca ptr
  %l507 = alloca i32
  %l510 = alloca ptr
  %l511 = alloca { i64, ptr }
  %l513 = alloca i32
  %l515 = alloca ptr
  %l517 = alloca i32
  %l520 = alloca ptr
  %l534 = alloca i64
  %l537 = alloca i64
  %l555 = alloca { i64, ptr }
  %l560 = alloca { i64, ptr }
  %l562 = alloca { i64, ptr }
  %l565 = alloca { i64, ptr }
  %l584 = alloca i1
  %l586 = alloca i64
  %l589 = alloca i64
  %l591 = alloca i64
  %l596 = alloca i64
  %l597 = alloca { i64, ptr }
  %l600 = alloca ptr
  %l608 = alloca i1
  %l612 = alloca { i64, ptr }
  %l615 = alloca i32
  %l621 = alloca ptr
  %l625 = alloca { i64, ptr }
  %l628 = alloca i32
  %l629 = alloca { i64, ptr }
  %l640 = alloca i64
  %l643 = alloca i64
  %l665 = alloca i1
  %l671 = alloca { i64, ptr }
  %l677 = alloca ptr
  %l678 = alloca { i64, ptr }
  %l680 = alloca i32
  %l681 = alloca ptr
  %l687 = alloca { i64, ptr }
  %l691 = alloca i32
  %l703 = alloca i1
  %l712 = alloca ptr
  %l718 = alloca { i64, ptr }
  %l721 = alloca i32
  %l725 = alloca { i64, ptr }
  %l728 = alloca i32
  %l739 = alloca i64
  %l741 = alloca i64
  %l746 = alloca i64
  %l747 = alloca i64
  %l755 = alloca i64
  %l758 = alloca i64
  %l776 = alloca i64
  %l777 = alloca { i64, ptr }
  %l782 = alloca i1
  %l787 = alloca i1
  %l789 = alloca i32
  %l790 = alloca { i64, ptr }
  %l799 = alloca i32
  %l809 = alloca ptr
  %l810 = alloca { i64, ptr }
  %l813 = alloca %"compiler/source:Span"
  %l814 = alloca { i64, ptr }
  %l817 = alloca ptr
  %l820 = alloca ptr
  %l822 = alloca ptr
  %l823 = alloca { i64, ptr }
  %l825 = alloca i32
  %l826 = alloca i64
  %l831 = alloca i32
  %l832 = alloca i32
  %l833 = alloca ptr
  %l836 = alloca i32
  %l839 = alloca ptr
  %l840 = alloca { i64, ptr }
  %l842 = alloca i32
  %l845 = alloca i32
  %l850 = alloca { i64, ptr }
  %l853 = alloca i32
  %l856 = alloca i1
  %l859 = alloca ptr
  %l862 = alloca i32
  %l863 = alloca i32
  %l867 = alloca ptr
  %l871 = alloca { i64, ptr }
  %l874 = alloca i32
  %l877 = alloca ptr
  %l880 = alloca i32
  %l881 = alloca i32
  %l883 = alloca i32
  %l910 = alloca i64
  %l913 = alloca i64
  %l931 = alloca { i64, ptr }
  %l936 = alloca i1
  %l941 = alloca i1
  %l942 = alloca { i64, ptr }
  %l943 = alloca i64
  %l946 = alloca i32
  %l953 = alloca i64
  %l956 = alloca i64
  %l974 = alloca { i64, ptr }
  %l980 = alloca i64
  %l984 = alloca i64
  %l987 = alloca i64
  %l1010 = alloca ptr
  %l1012 = alloca i1
  %l1017 = alloca ptr
  %l1019 = alloca { i64, ptr }
  %l1022 = alloca i32
  %l1023 = alloca i32
  %l1031 = alloca i32
  %l1032 = alloca ptr
  %l1035 = alloca ptr
  %l1036 = alloca i32
  %l1037 = alloca i32
  %l1040 = alloca i32
  %l1043 = alloca i1
  %l1048 = alloca i32
  %l1051 = alloca i1
  %l1056 = alloca i64
  %l1059 = alloca i1
  %l1064 = alloca i64
  %l1067 = alloca i1
  %l1071 = alloca i1
  %l1076 = alloca i32
  %l1078 = alloca { i64, ptr }
  %l1079 = alloca i64
  %l1083 = alloca i32
  %l1086 = alloca { i64, ptr }
  %l1091 = alloca i64
  %l1101 = alloca { i64, ptr }
  %l1110 = alloca ptr
  %l1114 = alloca ptr
  %l1117 = alloca { i64, ptr }
  %l1118 = alloca ptr
  %l1123 = alloca %"compiler/generic:varRow"
  %l1125 = alloca { i64, ptr }
  %l1129 = alloca ptr
  %l1130 = alloca %"compiler/source:Span"
  %l1133 = alloca %"compiler/diagmsg:Msg"
  %l1134 = alloca i64
  %l1136 = alloca i1
  %l1137 = alloca ptr
  %l1138 = alloca %"compiler/source:Span"
  %l1141 = alloca %"compiler/diagmsg:Msg"
  %l1142 = alloca i64
  %l1143 = alloca ptr
  %l1144 = alloca %"compiler/source:Span"
  %l1146 = alloca %"compiler/diagmsg:Msg"
  %l1147 = alloca i64
  %l1150 = alloca ptr
  %l1153 = alloca ptr
  %l1154 = alloca i64
  %l1159 = alloca i32
  %l1161 = alloca i1
  %l1165 = alloca ptr
  %l1166 = alloca i64
  %l1170 = alloca i64
  %l1171 = alloca i32
  %l1177 = alloca ptr
  %l1180 = alloca { i64, [3 x i64] }
  %l1181 = alloca %"compiler/diagmsg:Msg"
  %l1182 = alloca i64
  %l1185 = alloca ptr
  %l1187 = alloca ptr
  %l1188 = alloca i64
  %l1193 = alloca i32
  %l1196 = alloca { i64, [3 x i64] }
  %l1197 = alloca i1
  %l1200 = alloca ptr
  %l1205 = alloca ptr
  %l1208 = alloca %"compiler/generic:Origin"
  %l1210 = alloca ptr
  %l1211 = alloca i64
  %l1216 = alloca i32
  %l1217 = alloca i64
  %l1221 = alloca ptr
  %l1225 = alloca i32
  %l1227 = alloca i1
  %l1231 = alloca ptr
  %l1235 = alloca i1
  %l1244 = alloca i64
  %l1247 = alloca ptr
  %l1250 = alloca ptr
  %l1254 = alloca i32
  %l1255 = alloca i32
  %l1256 = alloca { i64, ptr }
  %l1258 = alloca i64
  %l1260 = alloca i64
  %l1265 = alloca i64
  %l1273 = alloca i1
  %l1278 = alloca i1
  %l1282 = alloca { i64, ptr }
  %l1285 = alloca i32
  %l1288 = alloca i1
  %l1289 = alloca ptr
  %l1293 = alloca { i64, ptr }
  %l1296 = alloca i32
  %l1298 = alloca i1
  %l1299 = alloca ptr
  %l1300 = alloca i64
  %l1301 = alloca ptr
  %l1304 = alloca ptr
  %l1308 = alloca { i64, ptr }
  %l1311 = alloca i32
  %l1312 = alloca ptr
  %l1316 = alloca i64
  %l1318 = alloca ptr
  %l1323 = alloca i64
  %l1327 = alloca i64
  %l1330 = alloca i64
  %l1350 = alloca ptr
  %l1360 = alloca ptr
  %l1361 = alloca %"compiler/source:Span"
  %l1362 = alloca %"compiler/source:Span"
  %l1366 = alloca i32
  %l1376 = alloca ptr
  %l1382 = alloca ptr
  %l1383 = alloca ptr
  %l1386 = alloca i32
  %l1387 = alloca i32
  %l1388 = alloca i32
  %l1392 = alloca i1
  %l1393 = alloca i1
  %l1396 = alloca i32
  %l1399 = alloca i1
  %l1402 = alloca ptr
  %l1405 = alloca i32
  %l1410 = alloca i32
  %l1411 = alloca i1
  %l1416 = alloca ptr
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s22 = alloca %olang.scope
  %s46 = alloca %olang.scope
  %s61 = alloca %olang.scope
  %s63 = alloca %olang.scope
  %s73 = alloca %olang.scope
  %rv = alloca ptr
  %t183 = alloca { i64, [3 x i64] }, align 8
  %t257 = alloca { i64, [3 x i64] }, align 8
  %t2596 = alloca i64
  %t2702 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store %"compiler/source:Span" %a2, ptr %l2
  store i64 %a3, ptr %l3
  store ptr %a4, ptr %l4
  store { i64, ptr } %a5, ptr %l5
  store { i64, ptr } %a6, ptr %l6
  store { i64, ptr } %a7, ptr %l7
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i64, ptr %l3, !tbaa !24
  %t3 = icmp slt i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t6 = load %"compiler/source:Span", ptr %l2
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %v0, ptr %t5, %"compiler/source:Span" %t6, { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d13, i32 0, i32 1) })
  br label %bb3
bb2:
  br label %bb5
bb3:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load %"compiler/source:Span", ptr %l1
  %t13 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v5, ptr %t9, %"compiler/source:Span" %t10)
  store ptr %t13, ptr %l126
  br label %bb4
bb4:
  call void @__olang_scope_close(ptr %s0)
  %t14 = load ptr, ptr %l126, !tbaa !29
  store ptr %t14, ptr %rv
  br label %ret
bb5:
  %t15 = load ptr, ptr %l0, !tbaa !29
  store ptr %t15, ptr %l127, !tbaa !29
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/check:Checker", ptr %t16, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !29
  %t21 = getelementptr %"compiler/generic:Program", ptr %t19, i32 0, i32 2
  store ptr %t21, ptr %l130, !tbaa !29
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/check:Checker", ptr %t22, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t26 = load i64, ptr %l3, !tbaa !24
  %t29 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %t25, i64 %t26)
  store i32 %t29, ptr %l134
  br label %bb6
bb6:
  %t30 = load ptr, ptr %l130, !tbaa !29
  %t31 = load i32, ptr %l134, !tbaa !23
  %t32 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSpreadAt(ptr %v0, ptr %t30, i32 %t31)
  store i64 %t32, ptr %l135
  br label %bb7
bb7:
  %t33 = load ptr, ptr %l4, !tbaa !29
  %t35 = icmp eq ptr %t33, null
  %t37 = xor i1 %t35, true
  br i1 %t37, label %bb8, label %bb9
bb8:
  store i64 1, ptr %l139, !tbaa !24
  br label %bb10
bb9:
  store i64 0, ptr %l139, !tbaa !24
  br label %bb10
bb10:
  %t39 = load i64, ptr %l135, !tbaa !24
  %t40 = load i64, ptr %l139, !tbaa !24
  %t41 = sub i64 %t39, %t40
  %t42 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t43 = load %"compiler/source:Span", ptr %l1
  %t44 = load ptr, ptr %l127, !tbaa !29
  %t48 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egatherVariadic(ptr %v0, ptr %v2, ptr %v0, ptr %t44, i64 %t41, { i64, ptr } %t42, %"compiler/source:Span" %t43)
  store { i64, ptr } %t48, ptr %l143
  br label %bb11
bb11:
  %t49 = load { i64, ptr }, ptr %l143, !tbaa !27
  store { i64, ptr } %t49, ptr %l5, !tbaa !27
  store [0 x i64] zeroinitializer, ptr %l144
  %t50 = mul i64 0, 8
  %t51 = insertvalue { i64, ptr } undef, i64 0, 0
  %t52 = insertvalue { i64, ptr } %t51, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t52, ptr %l145, !tbaa !27
  %t53 = getelementptr { i64, ptr }, ptr %l145, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !27
  %t55 = mul i64 0, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t54, ptr %l144, i64 %t55, i1 false)
  %t56 = load { i64, ptr }, ptr %l145, !tbaa !27
  store { i64, ptr } %t56, ptr %l8, !tbaa !27
  %t57 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t59 = call i1 @compiler_2fcheck_2ehasNamed(ptr %v0, { i64, ptr } %t57)
  store i1 %t59, ptr %l147
  br label %bb12
bb12:
  %t60 = load i1, ptr %l147, !tbaa !21
  br i1 %t60, label %bb13, label %bb14
bb13:
  store %olang.scope zeroinitializer, ptr %s2
  %t61 = load ptr, ptr %l0, !tbaa !29
  store ptr %t61, ptr %l148, !tbaa !29
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/check:Checker", ptr %t62, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !29
  %t66 = load i64, ptr %l3, !tbaa !24
  %t69 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t65, i64 %t66)
  store ptr %t69, ptr %l152
  br label %bb15
bb14:
  br label %bb29
bb15:
  %t70 = load ptr, ptr %l152, !tbaa !29
  %t72 = getelementptr %"compiler/ast:Func", ptr %t70, i32 0, i32 3
  %t73 = load ptr, ptr %t72, !tbaa !29
  %t75 = getelementptr %"compiler/ast:Sig", ptr %t73, i32 0, i32 0
  %t76 = load { i64, ptr }, ptr %t75, !tbaa !27
  store { i64, ptr } %t76, ptr %l155, !tbaa !27
  %t77 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t77, ptr %l156, !tbaa !27
  %t78 = load ptr, ptr %l0, !tbaa !29
  store ptr %t78, ptr %l157, !tbaa !29
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"compiler/check:Checker", ptr %t79, i32 0, i32 1
  %t82 = load ptr, ptr %t81, !tbaa !29
  %t83 = load i64, ptr %l3, !tbaa !24
  %t86 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %s2, ptr %t82, i64 %t83)
  store ptr %t86, ptr %l161
  br label %bb16
bb16:
  %t87 = load ptr, ptr %l161, !tbaa !29
  %t89 = getelementptr %"compiler/ast:Func", ptr %t87, i32 0, i32 2
  %t90 = load i32, ptr %t89, !tbaa !23
  %t91 = load ptr, ptr %l157, !tbaa !29
  %t93 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t91, i32 %t90)
  store { i64, ptr } %t93, ptr %l164
  br label %bb17
bb17:
  %t94 = load ptr, ptr %l148, !tbaa !29
  %t95 = load { i64, ptr }, ptr %l155, !tbaa !27
  %t96 = load { i64, ptr }, ptr %l156, !tbaa !27
  %t97 = load { i64, ptr }, ptr %l164, !tbaa !27
  %t98 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enamedArgs(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %t94, { i64, ptr } %t95, { i64, ptr } %t96, { i64, ptr } %t97)
  store { i64, ptr } %t98, ptr %l165
  br label %bb18
bb18:
  %t99 = load { i64, ptr }, ptr %l165, !tbaa !27
  store { i64, ptr } %t99, ptr %l5, !tbaa !27
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t102 = getelementptr %"compiler/check:Checker", ptr %t100, i32 0, i32 153
  %t103 = load i1, ptr %t102, !tbaa !21
  br i1 %t103, label %bb19, label %bb20
bb19:
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t107 = getelementptr %"compiler/check:Checker", ptr %t105, i32 0, i32 153
  store i1 false, ptr %t107, !tbaa !21
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t109 = load { i64, ptr }, ptr %l5, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v0, ptr %t108, { i64, ptr } %t109)
  br label %bb21
bb20:
  br label %bb23
bb21:
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t113 = load %"compiler/source:Span", ptr %l1
  %t116 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v5, ptr %t112, %"compiler/source:Span" %t113)
  store ptr %t116, ptr %l173
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t117 = load ptr, ptr %l173, !tbaa !29
  store ptr %t117, ptr %rv
  br label %ret
bb23:
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t120 = getelementptr %"compiler/check:Checker", ptr %t118, i32 0, i32 154
  %t122 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %v0, ptr %s2, ptr %t120)
  store { i64, ptr } %t122, ptr %l176
  br label %bb24
bb24:
  %t123 = load { i64, ptr }, ptr %l176, !tbaa !27
  store { i64, ptr } %t123, ptr %l177, !tbaa !27
  %t124 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t125 = extractvalue { i64, ptr } %t124, 0
  %t126 = load { i64, ptr }, ptr %l177, !tbaa !27
  %t127 = extractvalue { i64, ptr } %t126, 0
  store i64 %t127, ptr %l179, !tbaa !24
  %t129 = load i64, ptr %l179, !tbaa !24
  %t130 = icmp eq i64 %t125, %t129
  br i1 %t130, label %bb25, label %bb26
bb25:
  %t132 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t133 = load ptr, ptr %t132, !tbaa !27
  %t134 = getelementptr { i64, ptr }, ptr %l177, i32 0, i32 1
  %t135 = load ptr, ptr %t134, !tbaa !27
  %t136 = load i64, ptr %l179, !tbaa !24
  %t137 = mul i64 %t136, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t133, ptr %t135, i64 %t137, i1 false)
  br label %bb27
bb26:
  %t138 = load { i64, ptr }, ptr %l177, !tbaa !27
  %t139 = extractvalue { i64, ptr } %t138, 0
  store i64 %t139, ptr %l181, !tbaa !24
  %t140 = load i64, ptr %l181, !tbaa !24
  %t141 = mul i64 %t140, 8
  %t142 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t141)
  %t143 = insertvalue { i64, ptr } undef, i64 %t140, 0
  %t144 = insertvalue { i64, ptr } %t143, ptr %t142, 1
  store { i64, ptr } %t144, ptr %l182, !tbaa !27
  %t145 = getelementptr { i64, ptr }, ptr %l182, i32 0, i32 1
  %t146 = load ptr, ptr %t145, !tbaa !27
  %t147 = getelementptr { i64, ptr }, ptr %l177, i32 0, i32 1
  %t148 = load ptr, ptr %t147, !tbaa !27
  %t149 = load i64, ptr %l181, !tbaa !24
  %t150 = mul i64 %t149, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t146, ptr %t148, i64 %t150, i1 false)
  %t151 = load { i64, ptr }, ptr %l182, !tbaa !27
  store { i64, ptr } %t151, ptr %l8, !tbaa !27
  br label %bb27
bb27:
  %t152 = load ptr, ptr %l0, !tbaa !29
  %t154 = getelementptr %"compiler/check:Checker", ptr %t152, i32 0, i32 154
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t154)
  br label %bb28
bb28:
  call void @__olang_scope_close(ptr %s2)
  br label %bb29
bb29:
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t158 = getelementptr %"compiler/check:Checker", ptr %t156, i32 0, i32 1
  %t159 = load ptr, ptr %t158, !tbaa !29
  %t160 = load i64, ptr %l3, !tbaa !24
  %t163 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %t159, i64 %t160)
  store i32 %t163, ptr %l188
  br label %bb30
bb30:
  %t164 = load i32, ptr %l188, !tbaa !23
  store i32 %t164, ptr %l9, !tbaa !23
  %t165 = load ptr, ptr %l0, !tbaa !29
  %t167 = getelementptr %"compiler/check:Checker", ptr %t165, i32 0, i32 1
  %t168 = load ptr, ptr %t167, !tbaa !29
  %t169 = load i64, ptr %l3, !tbaa !24
  %t172 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnIsExtern(ptr %v0, ptr %t168, i64 %t169)
  store i1 %t172, ptr %l192
  br label %bb31
bb31:
  %t173 = load i1, ptr %l192, !tbaa !21
  br i1 %t173, label %bb32, label %bb33
bb32:
  %t174 = load ptr, ptr %l0, !tbaa !29
  %t175 = load { i64, ptr }, ptr %l8, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetOrder(ptr %v0, ptr %s0, ptr %t174, { i64, ptr } %t175)
  br label %bb34
bb33:
  br label %bb36
bb34:
  %t178 = load ptr, ptr %l0, !tbaa !29
  %t179 = load %"compiler/source:Span", ptr %l1
  %t180 = load %"compiler/source:Span", ptr %l2
  %t181 = load i32, ptr %l9, !tbaa !23
  %t182 = load i64, ptr %l3, !tbaa !24
  store { i64, [3 x i64] } zeroinitializer, ptr %t183
  %t184 = getelementptr { i64, [3 x i64] }, ptr %t183, i32 0, i32 0
  store i64 1, ptr %t184
  %t186 = insertvalue { i64 } undef, i64 %t182, 0
  %t187 = getelementptr { i64, [3 x i64] }, ptr %t183, i32 0, i32 1
  store { i64 } %t186, ptr %t187
  %t188 = load { i64, [3 x i64] }, ptr %t183
  %t190 = call ptr @__olang_scope_alloc_a(ptr %v5, i64 32, i64 8)
  store { i64, [3 x i64] } %t188, ptr %t190
  %t191 = load i64, ptr %l3, !tbaa !24
  %t192 = load ptr, ptr %l4, !tbaa !29
  %t193 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t194 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t204 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecallBody(ptr %v0, ptr %v5, ptr %v1, ptr %v0, ptr %v3, ptr %v5, ptr %t178, %"compiler/source:Span" %t179, %"compiler/source:Span" %t180, i32 %t181, ptr %t190, i64 %t191, ptr %t192, { i64, ptr } %t193, { i64, ptr } %t194)
  store ptr %t204, ptr %l206
  br label %bb35
bb35:
  call void @__olang_scope_close(ptr %s0)
  %t205 = load ptr, ptr %l206, !tbaa !29
  store ptr %t205, ptr %rv
  br label %ret
bb36:
  %t206 = load i64, ptr %l3, !tbaa !24
  %t208 = call i64 @compiler_2fgeneric_2eFnOwner(i64 %t206)
  store i64 %t208, ptr %l208
  br label %bb37
bb37:
  %t209 = load i64, ptr %l208, !tbaa !24
  store i64 %t209, ptr %l10, !tbaa !24
  %t210 = load ptr, ptr %l0, !tbaa !29
  %t212 = getelementptr %"compiler/check:Checker", ptr %t210, i32 0, i32 1
  %t213 = load ptr, ptr %t212, !tbaa !29
  %t214 = load i64, ptr %l10, !tbaa !24
  %t217 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %t213, i64 %t214)
  store i64 %t217, ptr %l212
  br label %bb38
bb38:
  %t218 = load i64, ptr %l212, !tbaa !24
  store i64 %t218, ptr %l11, !tbaa !24
  %t219 = load i64, ptr %l11, !tbaa !24
  %t221 = icmp eq i64 %t219, 0
  br i1 %t221, label %bb39, label %bb40
bb39:
  %t223 = load ptr, ptr %l0, !tbaa !29
  %t225 = getelementptr %"compiler/check:Checker", ptr %t223, i32 0, i32 1
  %t226 = load ptr, ptr %t225, !tbaa !29
  %t227 = load i64, ptr %l3, !tbaa !24
  %t230 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnInstance(ptr %v0, ptr %t226, i64 %t227, i32 0)
  store i64 %t230, ptr %l218
  br label %bb41
bb40:
  br label %bb46
bb41:
  %t231 = load i64, ptr %l218, !tbaa !24
  store i64 %t231, ptr %l12, !tbaa !24
  %t232 = load ptr, ptr %l0, !tbaa !29
  %t233 = load i64, ptr %l12, !tbaa !24
  %t236 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efnBody(ptr %v0, ptr %t232, i64 %t233)
  store i64 %t236, ptr %l221
  br label %bb42
bb42:
  %t237 = load i64, ptr %l221, !tbaa !24
  store i64 %t237, ptr %l13, !tbaa !24
  %t238 = load ptr, ptr %l0, !tbaa !29
  %t239 = load { i64, ptr }, ptr %l8, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetOrder(ptr %v0, ptr %s0, ptr %t238, { i64, ptr } %t239)
  br label %bb43
bb43:
  %t242 = load ptr, ptr %l0, !tbaa !29
  store ptr %t242, ptr %l224, !tbaa !29
  %t243 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t243, ptr %l225
  %t244 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t244, ptr %l226
  %t245 = load ptr, ptr %l0, !tbaa !29
  %t247 = getelementptr %"compiler/check:Checker", ptr %t245, i32 0, i32 1
  %t248 = load ptr, ptr %t247, !tbaa !29
  %t249 = load i64, ptr %l12, !tbaa !24
  %t252 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceSig(ptr %v0, ptr %t248, i64 %t249)
  store i32 %t252, ptr %l230
  br label %bb44
bb44:
  %t253 = load i64, ptr %l13, !tbaa !24
  %t255 = trunc i64 %t253 to i32
  store { i64, [3 x i64] } zeroinitializer, ptr %t257
  %t258 = getelementptr { i64, [3 x i64] }, ptr %t257, i32 0, i32 0
  store i64 0, ptr %t258
  %t260 = insertvalue { i32 } undef, i32 %t255, 0
  %t261 = getelementptr { i64, [3 x i64] }, ptr %t257, i32 0, i32 1
  store { i32 } %t260, ptr %t261
  %t262 = load { i64, [3 x i64] }, ptr %t257
  %t264 = call ptr @__olang_scope_alloc_a(ptr %v5, i64 32, i64 8)
  store { i64, [3 x i64] } %t262, ptr %t264
  %t265 = load i64, ptr %l3, !tbaa !24
  %t266 = load ptr, ptr %l4, !tbaa !29
  %t267 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t268 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t269 = load ptr, ptr %l224, !tbaa !29
  %t270 = load %"compiler/source:Span", ptr %l225
  %t271 = load %"compiler/source:Span", ptr %l226
  %t272 = load i32, ptr %l230, !tbaa !23
  %t278 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecallBody(ptr %v0, ptr %v5, ptr %v1, ptr %v0, ptr %v3, ptr %v5, ptr %t269, %"compiler/source:Span" %t270, %"compiler/source:Span" %t271, i32 %t272, ptr %t264, i64 %t265, ptr %t266, { i64, ptr } %t267, { i64, ptr } %t268)
  store ptr %t278, ptr %l240
  br label %bb45
bb45:
  call void @__olang_scope_close(ptr %s0)
  %t279 = load ptr, ptr %l240, !tbaa !29
  store ptr %t279, ptr %rv
  br label %ret
bb46:
  %t280 = load ptr, ptr %l0, !tbaa !29
  %t282 = getelementptr %"compiler/check:Checker", ptr %t280, i32 0, i32 1
  %t283 = load ptr, ptr %t282, !tbaa !29
  %t285 = getelementptr %"compiler/generic:Program", ptr %t283, i32 0, i32 2
  %t286 = load i32, ptr %l9, !tbaa !23
  %t289 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSpreadAt(ptr %v0, ptr %t285, i32 %t286)
  store i64 %t289, ptr %l245
  br label %bb47
bb47:
  %t290 = load i64, ptr %l245, !tbaa !24
  store i64 %t290, ptr %l14, !tbaa !24
  %t291 = load ptr, ptr %l0, !tbaa !29
  store ptr %t291, ptr %l246, !tbaa !29
  %t292 = load ptr, ptr %l0, !tbaa !29
  %t294 = getelementptr %"compiler/check:Checker", ptr %t292, i32 0, i32 1
  %t295 = load ptr, ptr %t294, !tbaa !29
  %t297 = getelementptr %"compiler/generic:Program", ptr %t295, i32 0, i32 2
  store ptr %t297, ptr %l249, !tbaa !29
  %t298 = load ptr, ptr %l0, !tbaa !29
  %t300 = getelementptr %"compiler/check:Checker", ptr %t298, i32 0, i32 1
  %t301 = load ptr, ptr %t300, !tbaa !29
  %t303 = getelementptr %"compiler/generic:Program", ptr %t301, i32 0, i32 2
  %t304 = load i32, ptr %l9, !tbaa !23
  %t307 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t303, i32 %t304)
  store i32 %t307, ptr %l254
  br label %bb48
bb48:
  %t308 = load ptr, ptr %l249, !tbaa !29
  %t309 = load i32, ptr %l254, !tbaa !23
  %t310 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t308, i32 %t309)
  store { i64, ptr } %t310, ptr %l255
  br label %bb49
bb49:
  %t311 = load ptr, ptr %l246, !tbaa !29
  %t312 = load { i64, ptr }, ptr %l255, !tbaa !27
  %t313 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunspreadAll(ptr %v0, ptr %v0, ptr %v5, ptr %t311, { i64, ptr } %t312)
  store { i64, ptr } %t313, ptr %l256
  br label %bb50
bb50:
  %t314 = load { i64, ptr }, ptr %l256, !tbaa !27
  store { i64, ptr } %t314, ptr %l15, !tbaa !27
  %t315 = load i64, ptr %l10, !tbaa !24
  %t316 = load i64, ptr %l11, !tbaa !24
  %t319 = call %"compiler/generic:Binding" @compiler_2fgeneric_3aBinding_2ector(ptr %v5, i64 %t315, i64 %t316)
  store %"compiler/generic:Binding" %t319, ptr %l259
  br label %bb51
bb51:
  %t320 = call ptr @__olang_scope_alloc_a(ptr %v5, i64 64, i64 8)
  store ptr %t320, ptr %lp16
  %t321 = load %"compiler/generic:Binding", ptr %l259
  %t322 = load ptr, ptr %lp16
  store %"compiler/generic:Binding" %t321, ptr %t322
  %t323 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t325 = extractvalue { i64, ptr } %t323, 0
  %t327 = icmp sgt i64 %t325, 0
  br i1 %t327, label %bb52, label %bb53
bb52:
  store i64 0, ptr %l17, !tbaa !24
  %t329 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t331 = extractvalue { i64, ptr } %t329, 0
  store i64 %t331, ptr %l18, !tbaa !24
  store i64 1, ptr %l19, !tbaa !24
  %t333 = load i64, ptr %l18, !tbaa !24
  %t334 = load i64, ptr %l17, !tbaa !24
  %t337 = icmp sgt i64 %t333, %t334
  br i1 %t337, label %bb54, label %bb55
bb53:
  br label %bb69
bb54:
  %t339 = load i64, ptr %l19, !tbaa !24
  %t341 = icmp sgt i64 %t339, 0
  br i1 %t341, label %bb56, label %bb57
bb55:
  store i64 0, ptr %l268, !tbaa !24
  br label %bb59
bb56:
  %t343 = load i64, ptr %l18, !tbaa !24
  %t344 = load i64, ptr %l17, !tbaa !24
  %t347 = sub i64 %t343, %t344
  %t348 = load i64, ptr %l19, !tbaa !24
  %t351 = add i64 %t347, %t348
  %t353 = sub i64 %t351, 1
  %t354 = load i64, ptr %l19, !tbaa !24
  %t357 = sdiv i64 %t353, %t354
  store i64 %t357, ptr %l271, !tbaa !24
  br label %bb58
bb57:
  store i64 0, ptr %l271, !tbaa !24
  br label %bb58
bb58:
  %t359 = load i64, ptr %l271, !tbaa !24
  store i64 %t359, ptr %l268, !tbaa !24
  br label %bb59
bb59:
  %t360 = load i64, ptr %l268, !tbaa !24
  store i64 %t360, ptr %l20, !tbaa !24
  store i64 0, ptr %l21, !tbaa !24
  br label %bb60
bb60:
  %t361 = load i64, ptr %l21, !tbaa !24
  %t362 = load i64, ptr %l20, !tbaa !24
  %t365 = icmp slt i64 %t361, %t362
  %t367 = xor i1 %t365, true
  br i1 %t367, label %bb61, label %bb62
bb61:
  br label %bb68
bb62:
  br label %bb63
bb63:
  %t369 = load i64, ptr %l17, !tbaa !24
  %t370 = load i64, ptr %l21, !tbaa !24
  %t371 = load i64, ptr %l19, !tbaa !24
  %t374 = mul i64 %t370, %t371
  %t377 = add i64 %t369, %t374
  store i64 %t377, ptr %l22, !tbaa !24
  %t379 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t379, ptr %l289, !tbaa !27
  %t380 = load i64, ptr %l22, !tbaa !24
  %t382 = getelementptr { i64, ptr }, ptr %l289, i32 0, i32 1
  %t383 = load ptr, ptr %t382, !tbaa !27
  %t384 = getelementptr i32, ptr %t383, i64 %t380
  %t385 = load i32, ptr %t384, !tbaa !33
  %t386 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t389 = icmp ne i32 %t385, %t386
  br i1 %t389, label %bb64, label %bb65
bb64:
  %t391 = load ptr, ptr %lp16
  %t392 = getelementptr %"compiler/generic:Binding", ptr %t391, i32 0, i32 2
  %t393 = load { i64, ptr }, ptr %t392, !tbaa !27
  store { i64, ptr } %t393, ptr %l294, !tbaa !27
  %t394 = load i64, ptr %l22, !tbaa !24
  %t395 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t395, ptr %l296, !tbaa !27
  %t396 = load i64, ptr %l22, !tbaa !24
  %t398 = getelementptr { i64, ptr }, ptr %l296, i32 0, i32 1
  %t399 = load ptr, ptr %t398, !tbaa !27
  %t400 = getelementptr i32, ptr %t399, i64 %t396
  %t401 = load i32, ptr %t400, !tbaa !33
  %t404 = getelementptr { i64, ptr }, ptr %l294, i32 0, i32 1
  %t405 = load ptr, ptr %t404, !tbaa !27
  %t406 = getelementptr i32, ptr %t405, i64 %t394
  store i32 %t401, ptr %t406, !tbaa !33
  br label %bb66
bb65:
  br label %bb66
bb66:
  br label %bb67
bb67:
  %t407 = load i64, ptr %l21, !tbaa !24
  %t409 = add i64 %t407, 1
  store i64 %t409, ptr %l21, !tbaa !24
  br label %bb60
bb68:
  br label %bb69
bb69:
  store i64 0, ptr %l23, !tbaa !24
  %t411 = load ptr, ptr %l4, !tbaa !29
  %t413 = icmp eq ptr %t411, null
  %t415 = xor i1 %t413, true
  br i1 %t415, label %bb70, label %bb71
bb70:
  %t417 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t419 = extractvalue { i64, ptr } %t417, 0
  %t421 = icmp sgt i64 %t419, 0
  br i1 %t421, label %bb72, label %bb73
bb71:
  br label %bb77
bb72:
  %t423 = load ptr, ptr %l0, !tbaa !29
  store ptr %t423, ptr %l307, !tbaa !29
  %t424 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t424, ptr %l308, !tbaa !27
  %t425 = getelementptr { i64, ptr }, ptr %l308, i32 0, i32 1
  %t426 = load ptr, ptr %t425, !tbaa !27
  %t427 = getelementptr i32, ptr %t426, i64 0
  %t428 = load i32, ptr %t427, !tbaa !33
  store i32 %t428, ptr %l309, !tbaa !23
  %t429 = load ptr, ptr %l4, !tbaa !29
  %t432 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t429)
  store i32 %t432, ptr %l312
  br label %bb74
bb73:
  br label %bb76
bb74:
  %t433 = load ptr, ptr %lp16
  %t434 = load ptr, ptr %l307, !tbaa !29
  %t435 = load i32, ptr %l309, !tbaa !23
  %t436 = load i32, ptr %l312, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunify(ptr %v0, ptr %v5, ptr %t434, i32 %t435, i32 %t436, ptr %t433, i1 false, i1 true)
  br label %bb75
bb75:
  br label %bb76
bb76:
  store i64 1, ptr %l23, !tbaa !24
  br label %bb77
bb77:
  %t438 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_3f_26_3e_2ector(ptr %v5, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t438, ptr %l314
  br label %bb78
bb78:
  %t439 = call ptr @__olang_scope_alloc_a(ptr %v5, i64 32, i64 8)
  store ptr %t439, ptr %lp24
  %t440 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l314
  %t441 = load ptr, ptr %lp24
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t440, ptr %t441
  %t442 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t442, ptr %l315
  br label %bb79
bb79:
  %t443 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l315
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t443, ptr %l25
  %t444 = load i64, ptr %l23, !tbaa !24
  store i64 %t444, ptr %l26, !tbaa !24
  %t446 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t448 = extractvalue { i64, ptr } %t446, 0
  %t450 = icmp eq i64 %t448, 0
  br i1 %t450, label %bb80, label %bb81
bb80:
  %t452 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t454 = extractvalue { i64, ptr } %t452, 0
  %t456 = icmp eq i64 %t454, 1
  store i1 %t456, ptr %l320, !tbaa !21
  br label %bb82
bb81:
  store i1 false, ptr %l320, !tbaa !21
  br label %bb82
bb82:
  %t458 = load i1, ptr %l320, !tbaa !21
  br i1 %t458, label %bb83, label %bb84
bb83:
  %t459 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t461 = extractvalue { i64, ptr } %t459, 0
  %t462 = load i64, ptr %l23, !tbaa !24
  %t465 = sub i64 %t461, %t462
  %t467 = icmp sgt i64 %t465, 1
  store i1 %t467, ptr %l324, !tbaa !21
  br label %bb85
bb84:
  store i1 false, ptr %l324, !tbaa !21
  br label %bb85
bb85:
  %t469 = load i1, ptr %l324, !tbaa !21
  br i1 %t469, label %bb86, label %bb87
bb86:
  %t470 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t470, ptr %l331, !tbaa !27
  %t471 = getelementptr { i64, ptr }, ptr %l331, i32 0, i32 1
  %t472 = load ptr, ptr %t471, !tbaa !27
  %t473 = getelementptr ptr, ptr %t472, i64 0
  %t474 = load ptr, ptr %t473, !tbaa !39
  %t476 = call i1 @compiler_2fcheck_2ecallLike(ptr %v0, ptr %t474)
  store i1 %t476, ptr %l333
  br label %bb88
bb87:
  store i1 false, ptr %l330, !tbaa !21
  br label %bb89
bb88:
  %t477 = load i1, ptr %l333, !tbaa !21
  store i1 %t477, ptr %l330, !tbaa !21
  br label %bb89
bb89:
  %t478 = load i1, ptr %l330, !tbaa !21
  br i1 %t478, label %bb90, label %bb91
bb90:
  %t479 = load ptr, ptr %l0, !tbaa !29
  %t480 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t480, ptr %l335, !tbaa !27
  %t481 = getelementptr { i64, ptr }, ptr %l335, i32 0, i32 1
  %t482 = load ptr, ptr %t481, !tbaa !27
  %t483 = getelementptr ptr, ptr %t482, i64 0
  %t484 = load ptr, ptr %t483, !tbaa !39
  %t487 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2espread(ptr %v0, ptr %v0, ptr %v5, ptr %t479, ptr %t484)
  store { i64, ptr } %t487, ptr %l337
  br label %bb92
bb91:
  br label %bb93
bb92:
  %t488 = load { i64, ptr }, ptr %l337, !tbaa !27
  store { i64, ptr } %t488, ptr %l6, !tbaa !27
  br label %bb93
bb93:
  %t489 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t491 = extractvalue { i64, ptr } %t489, 0
  %t493 = icmp sgt i64 %t491, 0
  br i1 %t493, label %bb94, label %bb95
bb94:
  %t495 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t497 = extractvalue { i64, ptr } %t495, 0
  store i64 %t497, ptr %l341, !tbaa !24
  br label %bb96
bb95:
  store i64 0, ptr %l341, !tbaa !24
  br label %bb96
bb96:
  %t499 = load i64, ptr %l341, !tbaa !24
  store i64 %t499, ptr %l27, !tbaa !24
  %t500 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t502 = extractvalue { i64, ptr } %t500, 0
  %t504 = icmp sgt i64 %t502, 0
  br i1 %t504, label %bb97, label %bb98
bb97:
  %t506 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t508 = extractvalue { i64, ptr } %t506, 0
  %t509 = load i64, ptr %l27, !tbaa !24
  %t512 = icmp sgt i64 %t508, %t509
  store i1 %t512, ptr %l347, !tbaa !21
  br label %bb99
bb98:
  store i1 false, ptr %l347, !tbaa !21
  br label %bb99
bb99:
  %t514 = load i1, ptr %l347, !tbaa !21
  br i1 %t514, label %bb100, label %bb101
bb100:
  %t515 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t517 = extractvalue { i64, ptr } %t515, 0
  store i64 %t517, ptr %l27, !tbaa !24
  br label %bb102
bb101:
  br label %bb102
bb102:
  store i64 0, ptr %l28, !tbaa !24
  %t519 = load i64, ptr %l27, !tbaa !24
  store i64 %t519, ptr %l29, !tbaa !24
  store i64 1, ptr %l30, !tbaa !24
  %t521 = load i64, ptr %l29, !tbaa !24
  %t522 = load i64, ptr %l28, !tbaa !24
  %t525 = icmp sgt i64 %t521, %t522
  br i1 %t525, label %bb103, label %bb104
bb103:
  %t527 = load i64, ptr %l30, !tbaa !24
  %t529 = icmp sgt i64 %t527, 0
  br i1 %t529, label %bb105, label %bb106
bb104:
  store i64 0, ptr %l358, !tbaa !24
  br label %bb108
bb105:
  %t531 = load i64, ptr %l29, !tbaa !24
  %t532 = load i64, ptr %l28, !tbaa !24
  %t535 = sub i64 %t531, %t532
  %t536 = load i64, ptr %l30, !tbaa !24
  %t539 = add i64 %t535, %t536
  %t541 = sub i64 %t539, 1
  %t542 = load i64, ptr %l30, !tbaa !24
  %t545 = sdiv i64 %t541, %t542
  store i64 %t545, ptr %l361, !tbaa !24
  br label %bb107
bb106:
  store i64 0, ptr %l361, !tbaa !24
  br label %bb107
bb107:
  %t547 = load i64, ptr %l361, !tbaa !24
  store i64 %t547, ptr %l358, !tbaa !24
  br label %bb108
bb108:
  %t548 = load i64, ptr %l358, !tbaa !24
  store i64 %t548, ptr %l31, !tbaa !24
  store i64 0, ptr %l32, !tbaa !24
  br label %bb109
bb109:
  %t549 = load i64, ptr %l32, !tbaa !24
  %t550 = load i64, ptr %l31, !tbaa !24
  %t553 = icmp slt i64 %t549, %t550
  %t555 = xor i1 %t553, true
  br i1 %t555, label %bb110, label %bb111
bb110:
  br label %bb197
bb111:
  br label %bb112
bb112:
  %t557 = load i64, ptr %l28, !tbaa !24
  %t558 = load i64, ptr %l32, !tbaa !24
  %t559 = load i64, ptr %l30, !tbaa !24
  %t562 = mul i64 %t558, %t559
  %t565 = add i64 %t557, %t562
  store i64 %t565, ptr %l33, !tbaa !24
  store ptr null, ptr %l34, !tbaa !29
  %t567 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t569 = extractvalue { i64, ptr } %t567, 0
  %t571 = icmp sgt i64 %t569, 0
  br i1 %t571, label %bb113, label %bb114
bb113:
  %t573 = load i64, ptr %l33, !tbaa !24
  %t574 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t576 = extractvalue { i64, ptr } %t574, 0
  %t579 = icmp slt i64 %t573, %t576
  store i1 %t579, ptr %l382, !tbaa !21
  br label %bb115
bb114:
  store i1 false, ptr %l382, !tbaa !21
  br label %bb115
bb115:
  %t581 = load i1, ptr %l382, !tbaa !21
  br i1 %t581, label %bb116, label %bb117
bb116:
  %t582 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t582, ptr %l387, !tbaa !27
  %t583 = load i64, ptr %l33, !tbaa !24
  %t585 = getelementptr { i64, ptr }, ptr %l387, i32 0, i32 1
  %t586 = load ptr, ptr %t585, !tbaa !27
  %t587 = getelementptr ptr, ptr %t586, i64 %t583
  %t588 = load ptr, ptr %t587, !tbaa !39
  store ptr %t588, ptr %l34, !tbaa !29
  br label %bb178
bb117:
  %t591 = load i64, ptr %l23, !tbaa !24
  %t592 = load i64, ptr %l14, !tbaa !24
  %t595 = icmp eq i64 %t591, %t592
  br i1 %t595, label %bb118, label %bb119
bb118:
  %t597 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t597, ptr %l395, !tbaa !27
  %t598 = load i64, ptr %l33, !tbaa !24
  %t600 = getelementptr { i64, ptr }, ptr %l395, i32 0, i32 1
  %t601 = load ptr, ptr %t600, !tbaa !27
  %t602 = getelementptr ptr, ptr %t601, i64 %t598
  %t603 = load ptr, ptr %t602, !tbaa !39
  %t605 = call i1 @compiler_2fast_2ecompiler_2fast_3aExpr_2eIsGathered(ptr %v0, ptr %t603)
  store i1 %t605, ptr %l398
  br label %bb120
bb119:
  store i1 false, ptr %l394, !tbaa !21
  br label %bb121
bb120:
  %t606 = load i1, ptr %l398, !tbaa !21
  store i1 %t606, ptr %l394, !tbaa !21
  br label %bb121
bb121:
  %t607 = load i1, ptr %l394, !tbaa !21
  br i1 %t607, label %bb122, label %bb123
bb122:
  %t608 = load ptr, ptr %l0, !tbaa !29
  %t609 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t609, ptr %l400, !tbaa !27
  %t610 = load i64, ptr %l33, !tbaa !24
  %t612 = getelementptr { i64, ptr }, ptr %l400, i32 0, i32 1
  %t613 = load ptr, ptr %t612, !tbaa !27
  %t614 = getelementptr ptr, ptr %t613, i64 %t610
  %t615 = load ptr, ptr %t614, !tbaa !39
  %t616 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t616, ptr %l403, !tbaa !27
  %t617 = load i64, ptr %l23, !tbaa !24
  %t619 = getelementptr { i64, ptr }, ptr %l403, i32 0, i32 1
  %t620 = load ptr, ptr %t619, !tbaa !27
  %t621 = getelementptr i32, ptr %t620, i64 %t617
  %t622 = load i32, ptr %t621, !tbaa !33
  %t623 = load ptr, ptr %lp16
  %t628 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evariadicUnify(ptr %v0, ptr %v0, ptr %v5, ptr %v5, ptr %t608, ptr %t615, i32 %t622, ptr %t623)
  store ptr %t628, ptr %l407
  br label %bb124
bb123:
  %t629 = load ptr, ptr %l0, !tbaa !29
  %t630 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t630, ptr %l409, !tbaa !27
  %t631 = load i64, ptr %l33, !tbaa !24
  %t633 = getelementptr { i64, ptr }, ptr %l409, i32 0, i32 1
  %t634 = load ptr, ptr %t633, !tbaa !27
  %t635 = getelementptr ptr, ptr %t634, i64 %t631
  %t636 = load ptr, ptr %t635, !tbaa !39
  %t640 = call %"compiler/check:litv" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efold(ptr %v0, ptr %v0, ptr %t629, ptr %t636)
  store %"compiler/check:litv" %t640, ptr %l413
  br label %bb125
bb124:
  %t641 = load ptr, ptr %l407, !tbaa !29
  store ptr %t641, ptr %l34, !tbaa !29
  br label %bb177
bb125:
  %t642 = load %"compiler/check:litv", ptr %l413
  store %"compiler/check:litv" %t642, ptr %l35
  %t643 = getelementptr %"compiler/check:litv", ptr %l35, i32 0, i32 0
  %t644 = load i1, ptr %t643, !tbaa !21
  br i1 %t644, label %bb126, label %bb127
bb126:
  store i1 true, ptr %l415, !tbaa !21
  br label %bb129
bb127:
  %t646 = load ptr, ptr %l0, !tbaa !29
  %t647 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t647, ptr %l417, !tbaa !27
  %t648 = load i64, ptr %l33, !tbaa !24
  %t650 = getelementptr { i64, ptr }, ptr %l417, i32 0, i32 1
  %t651 = load ptr, ptr %t650, !tbaa !27
  %t652 = getelementptr ptr, ptr %t651, i64 %t648
  %t653 = load ptr, ptr %t652, !tbaa !39
  %t656 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitLike(ptr %v0, ptr %v0, ptr %t646, ptr %t653)
  store i1 %t656, ptr %l420
  br label %bb128
bb128:
  %t657 = load i1, ptr %l420, !tbaa !21
  store i1 %t657, ptr %l415, !tbaa !21
  br label %bb129
bb129:
  %t658 = load i1, ptr %l415, !tbaa !21
  br i1 %t658, label %bb130, label %bb131
bb130:
  %t659 = getelementptr %"compiler/check:litv", ptr %l35, i32 0, i32 0
  %t660 = load i1, ptr %t659, !tbaa !21
  br i1 %t660, label %bb132, label %bb133
bb131:
  %t662 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t662, ptr %l458, !tbaa !27
  %t663 = load i64, ptr %l33, !tbaa !24
  %t665 = getelementptr { i64, ptr }, ptr %l458, i32 0, i32 1
  %t666 = load ptr, ptr %t665, !tbaa !27
  %t667 = getelementptr ptr, ptr %t666, i64 %t663
  %t668 = load ptr, ptr %t667, !tbaa !39
  store ptr %t668, ptr %l37, !tbaa !29
  %t670 = load ptr, ptr %l37, !tbaa !29
  store ptr %t670, ptr %l461, !tbaa !29
  store i1 false, ptr %l462, !tbaa !21
  %t671 = load ptr, ptr %l461, !tbaa !29
  %t672 = icmp ne ptr %t671, null
  br i1 %t672, label %bb153, label %bb154
bb132:
  %t674 = getelementptr %"compiler/check:litv", ptr %l35, i32 0, i32 1
  %t675 = load i1, ptr %t674, !tbaa !21
  store i1 %t675, ptr %l422, !tbaa !21
  br label %bb135
bb133:
  %t677 = load ptr, ptr %l0, !tbaa !29
  %t678 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t678, ptr %l425, !tbaa !27
  %t679 = load i64, ptr %l33, !tbaa !24
  %t681 = getelementptr { i64, ptr }, ptr %l425, i32 0, i32 1
  %t682 = load ptr, ptr %t681, !tbaa !27
  %t683 = getelementptr ptr, ptr %t682, i64 %t679
  %t684 = load ptr, ptr %t683, !tbaa !39
  %t687 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitFloat(ptr %v0, ptr %v0, ptr %t677, ptr %t684)
  store i1 %t687, ptr %l428
  br label %bb134
bb134:
  %t688 = load i1, ptr %l428, !tbaa !21
  store i1 %t688, ptr %l422, !tbaa !21
  br label %bb135
bb135:
  %t689 = load i1, ptr %l422, !tbaa !21
  store i1 %t689, ptr %l36, !tbaa !21
  %t690 = load i64, ptr %l23, !tbaa !24
  %t691 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t693 = extractvalue { i64, ptr } %t691, 0
  %t696 = icmp slt i64 %t690, %t693
  br i1 %t696, label %bb136, label %bb137
bb136:
  store %olang.scope zeroinitializer, ptr %s22
  %t698 = load ptr, ptr %l0, !tbaa !29
  store ptr %t698, ptr %l433, !tbaa !29
  %t699 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t699, ptr %l434, !tbaa !27
  %t700 = load i64, ptr %l23, !tbaa !24
  %t702 = getelementptr { i64, ptr }, ptr %l434, i32 0, i32 1
  %t703 = load ptr, ptr %t702, !tbaa !27
  %t704 = getelementptr i32, ptr %t703, i64 %t700
  %t705 = load i32, ptr %t704, !tbaa !33
  store i32 %t705, ptr %l436, !tbaa !23
  %t706 = load i1, ptr %l36, !tbaa !21
  br i1 %t706, label %bb138, label %bb139
bb137:
  br label %bb152
bb138:
  %t708 = load ptr, ptr %l0, !tbaa !29
  %t710 = getelementptr %"compiler/check:Checker", ptr %t708, i32 0, i32 1
  %t711 = load ptr, ptr %t710, !tbaa !29
  %t713 = getelementptr %"compiler/generic:Program", ptr %t711, i32 0, i32 2
  %t715 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s22, ptr %t713, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d14, i32 0, i32 1) })
  store i32 %t715, ptr %l442
  br label %bb140
bb139:
  %t716 = getelementptr %"compiler/check:litv", ptr %l35, i32 0, i32 0
  %t717 = load i1, ptr %t716, !tbaa !21
  br i1 %t717, label %bb141, label %bb142
bb140:
  %t719 = load i32, ptr %l442, !tbaa !23
  store i32 %t719, ptr %l438, !tbaa !23
  br label %bb150
bb141:
  %t720 = load ptr, ptr %l0, !tbaa !29
  %t721 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t721, ptr %l446, !tbaa !27
  %t722 = load i64, ptr %l33, !tbaa !24
  %t724 = getelementptr { i64, ptr }, ptr %l446, i32 0, i32 1
  %t725 = load ptr, ptr %t724, !tbaa !27
  %t726 = getelementptr ptr, ptr %t725, i64 %t722
  %t727 = load ptr, ptr %t726, !tbaa !39
  %t730 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitU64(ptr %v0, ptr %v0, ptr %t720, ptr %t727)
  store i1 %t730, ptr %l449
  br label %bb143
bb142:
  store i1 false, ptr %l444, !tbaa !21
  br label %bb144
bb143:
  %t731 = load i1, ptr %l449, !tbaa !21
  store i1 %t731, ptr %l444, !tbaa !21
  br label %bb144
bb144:
  %t732 = load i1, ptr %l444, !tbaa !21
  br i1 %t732, label %bb145, label %bb146
bb145:
  %t733 = load ptr, ptr %l0, !tbaa !29
  %t735 = getelementptr %"compiler/check:Checker", ptr %t733, i32 0, i32 1
  %t736 = load ptr, ptr %t735, !tbaa !29
  %t738 = getelementptr %"compiler/generic:Program", ptr %t736, i32 0, i32 2
  %t740 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s22, ptr %t738, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d15, i32 0, i32 1) })
  store i32 %t740, ptr %l454
  br label %bb147
bb146:
  %t741 = load ptr, ptr %l0, !tbaa !29
  %t743 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t741)
  store i32 %t743, ptr %l456
  br label %bb148
bb147:
  %t744 = load i32, ptr %l454, !tbaa !23
  store i32 %t744, ptr %l450, !tbaa !23
  br label %bb149
bb148:
  %t745 = load i32, ptr %l456, !tbaa !23
  store i32 %t745, ptr %l450, !tbaa !23
  br label %bb149
bb149:
  %t746 = load i32, ptr %l450, !tbaa !23
  store i32 %t746, ptr %l438, !tbaa !23
  br label %bb150
bb150:
  %t747 = load ptr, ptr %lp16
  %t748 = load ptr, ptr %l433, !tbaa !29
  %t749 = load i32, ptr %l436, !tbaa !23
  %t750 = load i32, ptr %l438, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunify(ptr %v0, ptr %v5, ptr %t748, i32 %t749, i32 %t750, ptr %t747, i1 true, i1 false)
  br label %bb151
bb151:
  call void @__olang_scope_close(ptr %s22)
  br label %bb152
bb152:
  br label %bb176
bb153:
  %t752 = load ptr, ptr %l461, !tbaa !29
  %t753 = load i64, ptr %t752, !range !{i64 0, i64 30}
  %t755 = icmp eq i64 %t753, 22
  store i1 %t755, ptr %l462, !tbaa !21
  br label %bb154
bb154:
  %t756 = load i1, ptr %l462, !tbaa !21
  br i1 %t756, label %bb155, label %bb156
bb155:
  br label %bb157
bb156:
  br label %bb159
bb157:
  %t757 = load i64, ptr %l33, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l25, i64 %t757)
  br label %bb158
bb158:
  br label %bb175
bb159:
  %t760 = load ptr, ptr %l37, !tbaa !29
  store ptr %t760, ptr %l467, !tbaa !29
  store i1 false, ptr %l468, !tbaa !21
  %t761 = load ptr, ptr %l467, !tbaa !29
  %t762 = icmp ne ptr %t761, null
  br i1 %t762, label %bb160, label %bb161
bb160:
  %t764 = load ptr, ptr %l467, !tbaa !29
  %t765 = load i64, ptr %t764, !range !{i64 0, i64 30}
  %t767 = icmp eq i64 %t765, 25
  store i1 %t767, ptr %l468, !tbaa !21
  br label %bb161
bb161:
  %t768 = load i1, ptr %l468, !tbaa !21
  br i1 %t768, label %bb162, label %bb163
bb162:
  br label %bb164
bb163:
  br label %bb165
bb164:
  br label %bb175
bb165:
  br i1 true, label %bb166, label %bb167
bb166:
  br label %bb168
bb167:
  br label %bb174
bb168:
  %t769 = load ptr, ptr %l0, !tbaa !29
  store ptr %t769, ptr %l471, !tbaa !29
  %t770 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t770, ptr %l472, !tbaa !27
  %t771 = load i64, ptr %l33, !tbaa !24
  %t773 = getelementptr { i64, ptr }, ptr %l472, i32 0, i32 1
  %t774 = load ptr, ptr %t773, !tbaa !27
  %t775 = getelementptr ptr, ptr %t774, i64 %t771
  %t776 = load ptr, ptr %t775, !tbaa !39
  store ptr %t776, ptr %l475, !tbaa !29
  %t778 = load ptr, ptr %l4, !tbaa !29
  %t780 = icmp eq ptr %t778, null
  %t782 = xor i1 %t780, true
  br i1 %t782, label %bb169, label %bb170
bb169:
  %t784 = load ptr, ptr %l0, !tbaa !29
  %t785 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t786 = load i64, ptr %l23, !tbaa !24
  %t787 = load ptr, ptr %lp16
  %t792 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eboundParam(ptr %v0, ptr %v5, ptr %v5, ptr %t784, { i64, ptr } %t785, i64 %t786, ptr %t787)
  store i32 %t792, ptr %l484
  br label %bb171
bb170:
  %t793 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t793, ptr %l479, !tbaa !23
  br label %bb172
bb171:
  %t795 = load i32, ptr %l484, !tbaa !23
  store i32 %t795, ptr %l479, !tbaa !23
  br label %bb172
bb172:
  %t796 = load ptr, ptr %l471, !tbaa !29
  %t797 = load ptr, ptr %l475, !tbaa !29
  %t798 = load i32, ptr %l479, !tbaa !23
  %t799 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v0, ptr %v5, ptr %t796, ptr %t797, i32 %t798)
  store ptr %t799, ptr %l486
  br label %bb173
bb173:
  %t800 = load ptr, ptr %l486, !tbaa !29
  store ptr %t800, ptr %l34, !tbaa !29
  br label %bb175
bb174:
  call void @__olang_check_failed(ptr @olang_loc_47b75a606f91649b_c44fdf7beb312f17)
  unreachable
bb175:
  br label %bb176
bb176:
  br label %bb177
bb177:
  br label %bb178
bb178:
  %t802 = load ptr, ptr %l34, !tbaa !29
  %t804 = icmp eq ptr %t802, null
  %t806 = xor i1 %t804, true
  br i1 %t806, label %bb179, label %bb180
bb179:
  %t808 = load i64, ptr %l23, !tbaa !24
  %t809 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t811 = extractvalue { i64, ptr } %t809, 0
  %t814 = icmp slt i64 %t808, %t811
  store i1 %t814, ptr %l491, !tbaa !21
  br label %bb181
bb180:
  store i1 false, ptr %l491, !tbaa !21
  br label %bb181
bb181:
  %t816 = load i1, ptr %l491, !tbaa !21
  br i1 %t816, label %bb182, label %bb183
bb182:
  %t817 = load ptr, ptr %l34, !tbaa !29
  store ptr %t817, ptr %l498, !tbaa !29
  %t819 = load ptr, ptr %l498, !tbaa !29
  %t820 = call ptr @__olang_scope_of(ptr %t819, ptr null)
  %t821 = ptrtoint ptr %t820 to i64
  %t823 = inttoptr i64 %t821 to ptr
  %t824 = load ptr, ptr %l498, !tbaa !29
  %t825 = call i32 @compiler_2fcheck_2etypeOf(ptr %t823, ptr %t824)
  store i32 %t825, ptr %l500
  br label %bb184
bb183:
  store i1 false, ptr %l496, !tbaa !21
  br label %bb185
bb184:
  %t826 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t827 = load i32, ptr %l500, !tbaa !23
  %t829 = icmp ne i32 %t827, %t826
  store i1 %t829, ptr %l496, !tbaa !21
  br label %bb185
bb185:
  %t831 = load i1, ptr %l496, !tbaa !21
  br i1 %t831, label %bb186, label %bb187
bb186:
  %t832 = load ptr, ptr %l34, !tbaa !29
  store ptr %t832, ptr %l505, !tbaa !29
  %t834 = load ptr, ptr %l505, !tbaa !29
  %t835 = call ptr @__olang_scope_of(ptr %t834, ptr null)
  %t836 = ptrtoint ptr %t835 to i64
  %t838 = inttoptr i64 %t836 to ptr
  %t839 = load ptr, ptr %l505, !tbaa !29
  %t840 = call i32 @compiler_2fcheck_2etypeOf(ptr %t838, ptr %t839)
  store i32 %t840, ptr %l507
  br label %bb188
bb187:
  store i1 false, ptr %l503, !tbaa !21
  br label %bb189
bb188:
  %t841 = load i32, ptr @G_2ecompiler_2ftypes_2eNoreturnT, !tbaa !23
  %t842 = load i32, ptr %l507, !tbaa !23
  %t844 = icmp ne i32 %t842, %t841
  store i1 %t844, ptr %l503, !tbaa !21
  br label %bb189
bb189:
  %t846 = load i1, ptr %l503, !tbaa !21
  br i1 %t846, label %bb190, label %bb191
bb190:
  %t847 = load ptr, ptr %l0, !tbaa !29
  store ptr %t847, ptr %l510, !tbaa !29
  %t848 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t848, ptr %l511, !tbaa !27
  %t849 = load i64, ptr %l23, !tbaa !24
  %t851 = getelementptr { i64, ptr }, ptr %l511, i32 0, i32 1
  %t852 = load ptr, ptr %t851, !tbaa !27
  %t853 = getelementptr i32, ptr %t852, i64 %t849
  %t854 = load i32, ptr %t853, !tbaa !33
  store i32 %t854, ptr %l513, !tbaa !23
  %t855 = load ptr, ptr %l0, !tbaa !29
  %t856 = load ptr, ptr %l34, !tbaa !29
  store ptr %t856, ptr %l515, !tbaa !29
  %t857 = load ptr, ptr %l515, !tbaa !29
  %t858 = call ptr @__olang_scope_of(ptr %t857, ptr null)
  %t859 = ptrtoint ptr %t858 to i64
  %t861 = inttoptr i64 %t859 to ptr
  %t863 = load ptr, ptr %l515, !tbaa !29
  %t864 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebindType(ptr %v0, ptr %t861, ptr %t855, ptr %t863)
  store i32 %t864, ptr %l517
  br label %bb192
bb191:
  br label %bb194
bb192:
  %t865 = load ptr, ptr %lp16
  %t866 = load ptr, ptr %l510, !tbaa !29
  %t867 = load i32, ptr %l513, !tbaa !23
  %t868 = load i32, ptr %l517, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunify(ptr %v0, ptr %v5, ptr %t866, i32 %t867, i32 %t868, ptr %t865, i1 false, i1 false)
  br label %bb193
bb193:
  br label %bb194
bb194:
  %t870 = load ptr, ptr %lp24
  %t871 = load ptr, ptr %l34, !tbaa !29
  store ptr %t871, ptr %l520, !tbaa !29
  %t872 = load ptr, ptr %l520, !tbaa !29
  %t873 = call ptr @__olang_scope_of(ptr %t872, ptr null)
  %t874 = ptrtoint ptr %t873 to i64
  %t876 = inttoptr i64 %t874 to ptr
  %t878 = load ptr, ptr %l520, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_3f_26_3e_2ePus_H0c70e9e86794aea54789ff5f3987086b(ptr %v5, ptr %t876, ptr %t870, ptr %t878)
  br label %bb195
bb195:
  %t879 = load i64, ptr %l23, !tbaa !24
  %t881 = add i64 %t879, 1
  store i64 %t881, ptr %l23, !tbaa !24
  br label %bb196
bb196:
  %t883 = load i64, ptr %l32, !tbaa !24
  %t885 = add i64 %t883, 1
  store i64 %t885, ptr %l32, !tbaa !24
  br label %bb109
bb197:
  %t887 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t889 = extractvalue { i64, ptr } %t887, 0
  %t891 = icmp sgt i64 %t889, 0
  br i1 %t891, label %bb198, label %bb199
bb198:
  store i64 0, ptr %l38, !tbaa !24
  %t893 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t895 = extractvalue { i64, ptr } %t893, 0
  store i64 %t895, ptr %l39, !tbaa !24
  store i64 1, ptr %l40, !tbaa !24
  %t897 = load i64, ptr %l39, !tbaa !24
  %t898 = load i64, ptr %l38, !tbaa !24
  %t901 = icmp sgt i64 %t897, %t898
  br i1 %t901, label %bb200, label %bb201
bb199:
  br label %bb215
bb200:
  %t903 = load i64, ptr %l40, !tbaa !24
  %t905 = icmp sgt i64 %t903, 0
  br i1 %t905, label %bb202, label %bb203
bb201:
  store i64 0, ptr %l534, !tbaa !24
  br label %bb205
bb202:
  %t907 = load i64, ptr %l39, !tbaa !24
  %t908 = load i64, ptr %l38, !tbaa !24
  %t911 = sub i64 %t907, %t908
  %t912 = load i64, ptr %l40, !tbaa !24
  %t915 = add i64 %t911, %t912
  %t917 = sub i64 %t915, 1
  %t918 = load i64, ptr %l40, !tbaa !24
  %t921 = sdiv i64 %t917, %t918
  store i64 %t921, ptr %l537, !tbaa !24
  br label %bb204
bb203:
  store i64 0, ptr %l537, !tbaa !24
  br label %bb204
bb204:
  %t923 = load i64, ptr %l537, !tbaa !24
  store i64 %t923, ptr %l534, !tbaa !24
  br label %bb205
bb205:
  %t924 = load i64, ptr %l534, !tbaa !24
  store i64 %t924, ptr %l41, !tbaa !24
  store i64 0, ptr %l42, !tbaa !24
  br label %bb206
bb206:
  %t925 = load i64, ptr %l42, !tbaa !24
  %t926 = load i64, ptr %l41, !tbaa !24
  %t929 = icmp slt i64 %t925, %t926
  %t931 = xor i1 %t929, true
  br i1 %t931, label %bb207, label %bb208
bb207:
  br label %bb214
bb208:
  br label %bb209
bb209:
  %t933 = load i64, ptr %l38, !tbaa !24
  %t934 = load i64, ptr %l42, !tbaa !24
  %t935 = load i64, ptr %l40, !tbaa !24
  %t938 = mul i64 %t934, %t935
  %t941 = add i64 %t933, %t938
  store i64 %t941, ptr %l43, !tbaa !24
  %t943 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t943, ptr %l555, !tbaa !27
  %t944 = load i64, ptr %l43, !tbaa !24
  %t946 = getelementptr { i64, ptr }, ptr %l555, i32 0, i32 1
  %t947 = load ptr, ptr %t946, !tbaa !27
  %t948 = getelementptr i32, ptr %t947, i64 %t944
  %t949 = load i32, ptr %t948, !tbaa !33
  %t950 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t953 = icmp eq i32 %t949, %t950
  br i1 %t953, label %bb210, label %bb211
bb210:
  br label %bb213
bb211:
  br label %bb212
bb212:
  %t955 = load ptr, ptr %lp16
  %t956 = getelementptr %"compiler/generic:Binding", ptr %t955, i32 0, i32 2
  %t957 = load { i64, ptr }, ptr %t956, !tbaa !27
  store { i64, ptr } %t957, ptr %l560, !tbaa !27
  %t958 = load i64, ptr %l43, !tbaa !24
  %t959 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t959, ptr %l562, !tbaa !27
  %t960 = load i64, ptr %l43, !tbaa !24
  %t962 = getelementptr { i64, ptr }, ptr %l562, i32 0, i32 1
  %t963 = load ptr, ptr %t962, !tbaa !27
  %t964 = getelementptr i32, ptr %t963, i64 %t960
  %t965 = load i32, ptr %t964, !tbaa !33
  %t968 = getelementptr { i64, ptr }, ptr %l560, i32 0, i32 1
  %t969 = load ptr, ptr %t968, !tbaa !27
  %t970 = getelementptr i32, ptr %t969, i64 %t958
  store i32 %t965, ptr %t970, !tbaa !33
  %t971 = load ptr, ptr %lp16
  %t972 = getelementptr %"compiler/generic:Binding", ptr %t971, i32 0, i32 3
  %t973 = load { i64, ptr }, ptr %t972, !tbaa !27
  store { i64, ptr } %t973, ptr %l565, !tbaa !27
  %t974 = load i64, ptr %l43, !tbaa !24
  %t976 = getelementptr { i64, ptr }, ptr %l565, i32 0, i32 1
  %t977 = load ptr, ptr %t976, !tbaa !27
  %t978 = getelementptr i1, ptr %t977, i64 %t974
  store i1 false, ptr %t978, !tbaa !31
  br label %bb213
bb213:
  %t979 = load i64, ptr %l42, !tbaa !24
  %t981 = add i64 %t979, 1
  store i64 %t981, ptr %l42, !tbaa !24
  br label %bb206
bb214:
  br label %bb215
bb215:
  %t983 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t985 = extractvalue { i64, ptr } %t983, 0
  %t987 = icmp eq i64 %t985, 0
  br i1 %t987, label %bb216, label %bb217
bb216:
  %t989 = load ptr, ptr %l0, !tbaa !29
  %t990 = load i64, ptr %l10, !tbaa !24
  %t991 = load ptr, ptr %lp16
  %t992 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t993 = load i64, ptr %l26, !tbaa !24
  %t994 = load { i64, ptr }, ptr %l5, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eliteralBinding(ptr %v0, ptr %v5, ptr %v5, ptr %v0, ptr %t989, i64 %t990, ptr %t991, { i64, ptr } %t992, i64 %t993, { i64, ptr } %t994)
  br label %bb218
bb217:
  br label %bb219
bb218:
  br label %bb219
bb219:
  %t1001 = load ptr, ptr %l0, !tbaa !29
  %t1003 = getelementptr %"compiler/check:Checker", ptr %t1001, i32 0, i32 1
  %t1004 = load ptr, ptr %t1003, !tbaa !29
  %t1005 = load ptr, ptr %lp16
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInferThroughBounds(ptr %v0, ptr %v5, ptr %t1004, ptr %t1005)
  br label %bb220
bb220:
  %t1008 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t1010 = extractvalue { i64, ptr } %t1008, 0
  %t1012 = icmp eq i64 %t1010, 0
  br i1 %t1012, label %bb221, label %bb222
bb221:
  %t1015 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l25)
  store i64 %t1015, ptr %l586
  br label %bb223
bb222:
  store i1 false, ptr %l584, !tbaa !21
  br label %bb224
bb223:
  %t1016 = load i64, ptr %l586, !tbaa !24
  %t1017 = icmp sgt i64 %t1016, 0
  store i1 %t1017, ptr %l584, !tbaa !21
  br label %bb224
bb224:
  %t1019 = load i1, ptr %l584, !tbaa !21
  br i1 %t1019, label %bb225, label %bb226
bb225:
  store ptr %l25, ptr %l44, !tbaa !29
  store i64 0, ptr %l45, !tbaa !24
  br label %bb227
bb226:
  br label %bb293
bb227:
  %t1021 = load i64, ptr %l45, !tbaa !24
  store i64 %t1021, ptr %l589, !tbaa !24
  %t1022 = load ptr, ptr %l44, !tbaa !29
  %t1024 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t1022)
  store i64 %t1024, ptr %l591
  br label %bb228
bb228:
  %t1025 = load i64, ptr %l589, !tbaa !24
  %t1026 = load i64, ptr %l591, !tbaa !24
  %t1027 = icmp slt i64 %t1025, %t1026
  %t1029 = xor i1 %t1027, true
  br i1 %t1029, label %bb229, label %bb230
bb229:
  br label %bb291
bb230:
  br label %bb231
bb231:
  %t1031 = load ptr, ptr %l44, !tbaa !29
  %t1032 = load i64, ptr %l45, !tbaa !24
  %t1035 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t1031, i64 %t1032)
  store i64 %t1035, ptr %l596
  br label %bb232
bb232:
  %t1036 = load i64, ptr %l596, !tbaa !24
  store i64 %t1036, ptr %l46, !tbaa !24
  %t1037 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t1037, ptr %l597, !tbaa !27
  %t1038 = load i64, ptr %l46, !tbaa !24
  %t1040 = getelementptr { i64, ptr }, ptr %l597, i32 0, i32 1
  %t1041 = load ptr, ptr %t1040, !tbaa !27
  %t1042 = getelementptr ptr, ptr %t1041, i64 %t1038
  %t1043 = load ptr, ptr %t1042, !tbaa !39
  %t1045 = call ptr @compiler_2fcheck_2elambdaOf(ptr %v0, ptr %v0, ptr %t1043)
  store ptr %t1045, ptr %l600
  br label %bb233
bb233:
  %t1046 = load ptr, ptr %l600, !tbaa !29
  store ptr %t1046, ptr %l47, !tbaa !29
  %t1047 = load i64, ptr %l46, !tbaa !24
  %t1048 = load i64, ptr %l26, !tbaa !24
  %t1051 = add i64 %t1047, %t1048
  store i64 %t1051, ptr %l48, !tbaa !24
  %t1053 = load i64, ptr %l48, !tbaa !24
  %t1054 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t1056 = extractvalue { i64, ptr } %t1054, 0
  %t1059 = icmp sge i64 %t1053, %t1056
  br i1 %t1059, label %bb234, label %bb235
bb234:
  store i1 true, ptr %l608, !tbaa !21
  br label %bb237
bb235:
  %t1061 = load ptr, ptr %l0, !tbaa !29
  %t1063 = getelementptr %"compiler/check:Checker", ptr %t1061, i32 0, i32 1
  %t1064 = load ptr, ptr %t1063, !tbaa !29
  %t1066 = getelementptr %"compiler/generic:Program", ptr %t1064, i32 0, i32 2
  %t1067 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t1067, ptr %l612, !tbaa !27
  %t1068 = load i64, ptr %l48, !tbaa !24
  %t1070 = getelementptr { i64, ptr }, ptr %l612, i32 0, i32 1
  %t1071 = load ptr, ptr %t1070, !tbaa !27
  %t1072 = getelementptr i32, ptr %t1071, i64 %t1068
  %t1073 = load i32, ptr %t1072, !tbaa !33
  %t1076 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t1066, i32 %t1073)
  store i32 %t1076, ptr %l615
  br label %bb236
bb236:
  %t1077 = load i32, ptr %l615, !range !{i32 0, i32 33}
  %t1079 = trunc i64 21 to i32
  %t1080 = icmp eq i32 %t1077, %t1079
  %t1082 = xor i1 %t1080, true
  store i1 %t1082, ptr %l608, !tbaa !21
  br label %bb237
bb237:
  %t1084 = load i1, ptr %l608, !tbaa !21
  br i1 %t1084, label %bb238, label %bb239
bb238:
  br label %bb290
bb239:
  br label %bb240
bb240:
  %t1085 = load ptr, ptr %l0, !tbaa !29
  %t1087 = getelementptr %"compiler/check:Checker", ptr %t1085, i32 0, i32 1
  %t1088 = load ptr, ptr %t1087, !tbaa !29
  %t1090 = getelementptr %"compiler/generic:Program", ptr %t1088, i32 0, i32 2
  store ptr %t1090, ptr %l621, !tbaa !29
  %t1091 = load ptr, ptr %l0, !tbaa !29
  %t1093 = getelementptr %"compiler/check:Checker", ptr %t1091, i32 0, i32 1
  %t1094 = load ptr, ptr %t1093, !tbaa !29
  %t1096 = getelementptr %"compiler/generic:Program", ptr %t1094, i32 0, i32 2
  %t1097 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t1097, ptr %l625, !tbaa !27
  %t1098 = load i64, ptr %l48, !tbaa !24
  %t1100 = getelementptr { i64, ptr }, ptr %l625, i32 0, i32 1
  %t1101 = load ptr, ptr %t1100, !tbaa !27
  %t1102 = getelementptr i32, ptr %t1101, i64 %t1098
  %t1103 = load i32, ptr %t1102, !tbaa !33
  %t1106 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t1096, i32 %t1103)
  store i32 %t1106, ptr %l628
  br label %bb241
bb241:
  %t1107 = load ptr, ptr %l621, !tbaa !29
  %t1108 = load i32, ptr %l628, !tbaa !23
  %t1109 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t1107, i32 %t1108)
  store { i64, ptr } %t1109, ptr %l629
  br label %bb242
bb242:
  %t1110 = load { i64, ptr }, ptr %l629, !tbaa !27
  store { i64, ptr } %t1110, ptr %l49, !tbaa !27
  store i64 0, ptr %l50, !tbaa !24
  %t1111 = load ptr, ptr %l47, !tbaa !29
  %t1113 = icmp eq ptr %t1111, null
  br i1 %t1113, label %bb243, label %bb244
bb243:
  call void @__olang_check_failed(ptr @olang_loc_34f0859ec847e603_4707f982674ed52f)
  unreachable
bb244:
  br label %bb245
bb245:
  %t1115 = load ptr, ptr %l47, !tbaa !29
  %t1118 = getelementptr %"compiler/ast:Func", ptr %t1115, i32 0, i32 3
  %t1119 = load ptr, ptr %t1118, !tbaa !29
  %t1121 = getelementptr %"compiler/ast:Sig", ptr %t1119, i32 0, i32 0
  %t1122 = load { i64, ptr }, ptr %t1121, !tbaa !27
  %t1124 = extractvalue { i64, ptr } %t1122, 0
  store i64 %t1124, ptr %l51, !tbaa !24
  store i64 1, ptr %l52, !tbaa !24
  %t1126 = load i64, ptr %l51, !tbaa !24
  %t1127 = load i64, ptr %l50, !tbaa !24
  %t1130 = icmp sgt i64 %t1126, %t1127
  br i1 %t1130, label %bb246, label %bb247
bb246:
  %t1132 = load i64, ptr %l52, !tbaa !24
  %t1134 = icmp sgt i64 %t1132, 0
  br i1 %t1134, label %bb248, label %bb249
bb247:
  store i64 0, ptr %l640, !tbaa !24
  br label %bb251
bb248:
  %t1136 = load i64, ptr %l51, !tbaa !24
  %t1137 = load i64, ptr %l50, !tbaa !24
  %t1140 = sub i64 %t1136, %t1137
  %t1141 = load i64, ptr %l52, !tbaa !24
  %t1144 = add i64 %t1140, %t1141
  %t1146 = sub i64 %t1144, 1
  %t1147 = load i64, ptr %l52, !tbaa !24
  %t1150 = sdiv i64 %t1146, %t1147
  store i64 %t1150, ptr %l643, !tbaa !24
  br label %bb250
bb249:
  store i64 0, ptr %l643, !tbaa !24
  br label %bb250
bb250:
  %t1152 = load i64, ptr %l643, !tbaa !24
  store i64 %t1152, ptr %l640, !tbaa !24
  br label %bb251
bb251:
  %t1153 = load i64, ptr %l640, !tbaa !24
  store i64 %t1153, ptr %l53, !tbaa !24
  store i64 0, ptr %l54, !tbaa !24
  br label %bb252
bb252:
  %t1154 = load i64, ptr %l54, !tbaa !24
  %t1155 = load i64, ptr %l53, !tbaa !24
  %t1158 = icmp slt i64 %t1154, %t1155
  %t1160 = xor i1 %t1158, true
  br i1 %t1160, label %bb253, label %bb254
bb253:
  br label %bb271
bb254:
  br label %bb255
bb255:
  %t1162 = load i64, ptr %l50, !tbaa !24
  %t1163 = load i64, ptr %l54, !tbaa !24
  %t1164 = load i64, ptr %l52, !tbaa !24
  %t1167 = mul i64 %t1163, %t1164
  %t1170 = add i64 %t1162, %t1167
  store i64 %t1170, ptr %l55, !tbaa !24
  %t1172 = load i64, ptr %l55, !tbaa !24
  %t1173 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t1175 = extractvalue { i64, ptr } %t1173, 0
  %t1178 = icmp slt i64 %t1172, %t1175
  br i1 %t1178, label %bb256, label %bb257
bb256:
  %t1180 = load ptr, ptr %l47, !tbaa !29
  %t1182 = icmp eq ptr %t1180, null
  br i1 %t1182, label %bb258, label %bb259
bb257:
  store i1 false, ptr %l665, !tbaa !21
  br label %bb261
bb258:
  call void @__olang_check_failed(ptr @olang_loc_6c515d21a4eb8282_6a1200b8d363d17e)
  unreachable
bb259:
  br label %bb260
bb260:
  %t1184 = load ptr, ptr %l47, !tbaa !29
  %t1187 = getelementptr %"compiler/ast:Func", ptr %t1184, i32 0, i32 3
  %t1188 = load ptr, ptr %t1187, !tbaa !29
  %t1190 = getelementptr %"compiler/ast:Sig", ptr %t1188, i32 0, i32 0
  %t1191 = load { i64, ptr }, ptr %t1190, !tbaa !27
  store { i64, ptr } %t1191, ptr %l671, !tbaa !27
  %t1192 = load i64, ptr %l55, !tbaa !24
  %t1194 = getelementptr { i64, ptr }, ptr %l671, i32 0, i32 1
  %t1195 = load ptr, ptr %t1194, !tbaa !27
  %t1196 = getelementptr ptr, ptr %t1195, i64 %t1192
  %t1197 = load ptr, ptr %t1196, !tbaa !39
  %t1199 = getelementptr %"compiler/ast:Param", ptr %t1197, i32 0, i32 2
  %t1200 = load ptr, ptr %t1199, !tbaa !29
  %t1202 = icmp eq ptr %t1200, null
  %t1204 = xor i1 %t1202, true
  store i1 %t1204, ptr %l665, !tbaa !21
  br label %bb261
bb261:
  %t1206 = load i1, ptr %l665, !tbaa !21
  br i1 %t1206, label %bb262, label %bb263
bb262:
  %t1207 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1207, ptr %l677, !tbaa !29
  %t1208 = load { i64, ptr }, ptr %l49, !tbaa !27
  store { i64, ptr } %t1208, ptr %l678, !tbaa !27
  %t1209 = load i64, ptr %l55, !tbaa !24
  %t1211 = getelementptr { i64, ptr }, ptr %l678, i32 0, i32 1
  %t1212 = load ptr, ptr %t1211, !tbaa !27
  %t1213 = getelementptr i32, ptr %t1212, i64 %t1209
  %t1214 = load i32, ptr %t1213, !tbaa !33
  store i32 %t1214, ptr %l680, !tbaa !23
  %t1215 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1215, ptr %l681, !tbaa !29
  %t1216 = load ptr, ptr %l47, !tbaa !29
  %t1218 = icmp eq ptr %t1216, null
  br i1 %t1218, label %bb264, label %bb265
bb263:
  br label %bb269
bb264:
  call void @__olang_check_failed(ptr @olang_loc_6c515d21a4eb8282_6a1200b8d363d17e)
  unreachable
bb265:
  br label %bb266
bb266:
  %t1220 = load ptr, ptr %l47, !tbaa !29
  %t1223 = getelementptr %"compiler/ast:Func", ptr %t1220, i32 0, i32 3
  %t1224 = load ptr, ptr %t1223, !tbaa !29
  %t1226 = getelementptr %"compiler/ast:Sig", ptr %t1224, i32 0, i32 0
  %t1227 = load { i64, ptr }, ptr %t1226, !tbaa !27
  store { i64, ptr } %t1227, ptr %l687, !tbaa !27
  %t1228 = load i64, ptr %l55, !tbaa !24
  %t1230 = getelementptr { i64, ptr }, ptr %l687, i32 0, i32 1
  %t1231 = load ptr, ptr %t1230, !tbaa !27
  %t1232 = getelementptr ptr, ptr %t1231, i64 %t1228
  %t1233 = load ptr, ptr %t1232, !tbaa !39
  %t1235 = getelementptr %"compiler/ast:Param", ptr %t1233, i32 0, i32 2
  %t1236 = load ptr, ptr %t1235, !tbaa !29
  %t1237 = load ptr, ptr %l681, !tbaa !29
  %t1239 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eresolve(ptr %v0, ptr %v0, ptr %t1237, ptr %t1236)
  store i32 %t1239, ptr %l691
  br label %bb267
bb267:
  %t1240 = load ptr, ptr %lp16
  %t1241 = load ptr, ptr %l677, !tbaa !29
  %t1242 = load i32, ptr %l680, !tbaa !23
  %t1243 = load i32, ptr %l691, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunifySoft(ptr %v0, ptr %v5, ptr %t1241, i32 %t1242, i32 %t1243, ptr %t1240)
  br label %bb268
bb268:
  br label %bb269
bb269:
  br label %bb270
bb270:
  %t1245 = load i64, ptr %l54, !tbaa !24
  %t1247 = add i64 %t1245, 1
  store i64 %t1247, ptr %l54, !tbaa !24
  br label %bb252
bb271:
  %t1249 = load ptr, ptr %l47, !tbaa !29
  %t1251 = icmp eq ptr %t1249, null
  br i1 %t1251, label %bb272, label %bb273
bb272:
  call void @__olang_check_failed(ptr @olang_loc_c452b680572d0969_27f0c48facb3ae25)
  unreachable
bb273:
  br label %bb274
bb274:
  %t1253 = load ptr, ptr %l47, !tbaa !29
  %t1256 = getelementptr %"compiler/ast:Func", ptr %t1253, i32 0, i32 3
  %t1257 = load ptr, ptr %t1256, !tbaa !29
  %t1259 = getelementptr %"compiler/ast:Sig", ptr %t1257, i32 0, i32 1
  %t1260 = load { i64, ptr }, ptr %t1259, !tbaa !27
  %t1262 = extractvalue { i64, ptr } %t1260, 0
  %t1264 = icmp sgt i64 %t1262, 0
  br i1 %t1264, label %bb275, label %bb276
bb275:
  %t1266 = load ptr, ptr %l47, !tbaa !29
  %t1268 = icmp eq ptr %t1266, null
  br i1 %t1268, label %bb277, label %bb278
bb276:
  store i1 false, ptr %l703, !tbaa !21
  br label %bb280
bb277:
  call void @__olang_check_failed(ptr @olang_loc_c452b680572d0969_27f0c48facb3ae25)
  unreachable
bb278:
  br label %bb279
bb279:
  %t1270 = load ptr, ptr %l47, !tbaa !29
  %t1273 = getelementptr %"compiler/ast:Func", ptr %t1270, i32 0, i32 3
  %t1274 = load ptr, ptr %t1273, !tbaa !29
  %t1276 = getelementptr %"compiler/ast:Sig", ptr %t1274, i32 0, i32 1
  %t1277 = load { i64, ptr }, ptr %t1276, !tbaa !27
  %t1279 = extractvalue { i64, ptr } %t1277, 0
  %t1281 = icmp eq i64 %t1279, 1
  store i1 %t1281, ptr %l703, !tbaa !21
  br label %bb280
bb280:
  %t1283 = load i1, ptr %l703, !tbaa !21
  br i1 %t1283, label %bb281, label %bb282
bb281:
  %t1284 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1284, ptr %l712, !tbaa !29
  %t1285 = load ptr, ptr %l47, !tbaa !29
  %t1287 = icmp eq ptr %t1285, null
  br i1 %t1287, label %bb283, label %bb284
bb282:
  br label %bb289
bb283:
  call void @__olang_check_failed(ptr @olang_loc_90fff669659753f0_5cdd43b51dc6a454)
  unreachable
bb284:
  br label %bb285
bb285:
  %t1289 = load ptr, ptr %l47, !tbaa !29
  %t1292 = getelementptr %"compiler/ast:Func", ptr %t1289, i32 0, i32 3
  %t1293 = load ptr, ptr %t1292, !tbaa !29
  %t1295 = getelementptr %"compiler/ast:Sig", ptr %t1293, i32 0, i32 1
  %t1296 = load { i64, ptr }, ptr %t1295, !tbaa !27
  store { i64, ptr } %t1296, ptr %l718, !tbaa !27
  %t1297 = getelementptr { i64, ptr }, ptr %l718, i32 0, i32 1
  %t1298 = load ptr, ptr %t1297, !tbaa !27
  %t1299 = getelementptr ptr, ptr %t1298, i64 0
  %t1300 = load ptr, ptr %t1299, !tbaa !39
  %t1302 = load ptr, ptr %l712, !tbaa !29
  %t1304 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eresolve(ptr %v0, ptr %v0, ptr %t1302, ptr %t1300)
  store i32 %t1304, ptr %l721
  br label %bb286
bb286:
  %t1305 = load i32, ptr %l721, !tbaa !23
  store i32 %t1305, ptr %l56, !tbaa !23
  %t1306 = load ptr, ptr %l0, !tbaa !29
  %t1308 = getelementptr %"compiler/check:Checker", ptr %t1306, i32 0, i32 1
  %t1309 = load ptr, ptr %t1308, !tbaa !29
  %t1311 = getelementptr %"compiler/generic:Program", ptr %t1309, i32 0, i32 2
  %t1312 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t1312, ptr %l725, !tbaa !27
  %t1313 = load i64, ptr %l48, !tbaa !24
  %t1315 = getelementptr { i64, ptr }, ptr %l725, i32 0, i32 1
  %t1316 = load ptr, ptr %t1315, !tbaa !27
  %t1317 = getelementptr i32, ptr %t1316, i64 %t1313
  %t1318 = load i32, ptr %t1317, !tbaa !33
  %t1321 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t1311, i32 %t1318)
  store i32 %t1321, ptr %l728
  br label %bb287
bb287:
  %t1322 = load i32, ptr %l728, !tbaa !23
  %t1323 = load ptr, ptr %l0, !tbaa !29
  %t1325 = load i32, ptr %l56, !tbaa !23
  %t1326 = load ptr, ptr %lp16
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunifySoft(ptr %v0, ptr %v5, ptr %t1323, i32 %t1322, i32 %t1325, ptr %t1326)
  br label %bb288
bb288:
  br label %bb289
bb289:
  br label %bb290
bb290:
  %t1331 = load i64, ptr %l45, !tbaa !24
  %t1333 = add i64 %t1331, 1
  store i64 %t1333, ptr %l45, !tbaa !24
  br label %bb227
bb291:
  %t1335 = load ptr, ptr %l0, !tbaa !29
  %t1337 = getelementptr %"compiler/check:Checker", ptr %t1335, i32 0, i32 1
  %t1338 = load ptr, ptr %t1337, !tbaa !29
  %t1339 = load ptr, ptr %lp16
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInferThroughBounds(ptr %v0, ptr %v5, ptr %t1338, ptr %t1339)
  br label %bb292
bb292:
  br label %bb293
bb293:
  store ptr %l25, ptr %l58, !tbaa !29
  store i64 0, ptr %l59, !tbaa !24
  br label %bb294
bb294:
  store %olang.scope zeroinitializer, ptr %s46
  %t1343 = load i64, ptr %l59, !tbaa !24
  store i64 %t1343, ptr %l739, !tbaa !24
  %t1344 = load ptr, ptr %l58, !tbaa !29
  %t1346 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t1344)
  store i64 %t1346, ptr %l741
  br label %bb295
bb295:
  %t1347 = load i64, ptr %l739, !tbaa !24
  %t1348 = load i64, ptr %l741, !tbaa !24
  %t1349 = icmp slt i64 %t1347, %t1348
  %t1351 = xor i1 %t1349, true
  br i1 %t1351, label %bb296, label %bb297
bb296:
  call void @__olang_scope_close(ptr %s46)
  br label %bb360
bb297:
  br label %bb298
bb298:
  %t1353 = load ptr, ptr %l58, !tbaa !29
  %t1354 = load i64, ptr %l59, !tbaa !24
  %t1357 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t1353, i64 %t1354)
  store i64 %t1357, ptr %l746
  br label %bb299
bb299:
  %t1358 = load i64, ptr %l746, !tbaa !24
  store i64 %t1358, ptr %l60, !tbaa !24
  %t1359 = load i64, ptr %l11, !tbaa !24
  store i64 %t1359, ptr %l747, !tbaa !24
  %t1360 = load i64, ptr %l747, !tbaa !24
  %t1361 = icmp sge i64 %t1360, 0
  br i1 %t1361, label %bb300, label %bb301
bb300:
  %t1363 = load i64, ptr %l747, !tbaa !24
  %t1364 = icmp sle i64 %t1363, 2305843009213693951
  br i1 %t1364, label %bb302, label %bb303
bb301:
  call void @__olang_check_failed(ptr @olang_loc_bb28b69c09369b55_697a1a86cf6d98a1)
  unreachable
bb302:
  %t1366 = load i64, ptr %l747, !tbaa !24
  %t1367 = mul i64 %t1366, 4
  %t1368 = call ptr @__olang_scope_alloc(ptr %s46, i64 %t1367)
  %t1369 = insertvalue { i64, ptr } undef, i64 %t1366, 0
  %t1370 = insertvalue { i64, ptr } %t1369, ptr %t1368, 1
  store { i64, ptr } %t1370, ptr %l61, !tbaa !27
  store i64 0, ptr %l62, !tbaa !24
  %t1372 = load i64, ptr %l11, !tbaa !24
  store i64 %t1372, ptr %l63, !tbaa !24
  store i64 1, ptr %l64, !tbaa !24
  %t1374 = load i64, ptr %l63, !tbaa !24
  %t1375 = load i64, ptr %l62, !tbaa !24
  %t1378 = icmp sgt i64 %t1374, %t1375
  br i1 %t1378, label %bb304, label %bb305
bb303:
  call void @__olang_check_failed(ptr @olang_loc_bb28b69c09369b55_697a1a86cf6d98a1)
  unreachable
bb304:
  %t1380 = load i64, ptr %l64, !tbaa !24
  %t1382 = icmp sgt i64 %t1380, 0
  br i1 %t1382, label %bb306, label %bb307
bb305:
  store i64 0, ptr %l755, !tbaa !24
  br label %bb309
bb306:
  %t1384 = load i64, ptr %l63, !tbaa !24
  %t1385 = load i64, ptr %l62, !tbaa !24
  %t1388 = sub i64 %t1384, %t1385
  %t1389 = load i64, ptr %l64, !tbaa !24
  %t1392 = add i64 %t1388, %t1389
  %t1394 = sub i64 %t1392, 1
  %t1395 = load i64, ptr %l64, !tbaa !24
  %t1398 = sdiv i64 %t1394, %t1395
  store i64 %t1398, ptr %l758, !tbaa !24
  br label %bb308
bb307:
  store i64 0, ptr %l758, !tbaa !24
  br label %bb308
bb308:
  %t1400 = load i64, ptr %l758, !tbaa !24
  store i64 %t1400, ptr %l755, !tbaa !24
  br label %bb309
bb309:
  %t1401 = load i64, ptr %l755, !tbaa !24
  store i64 %t1401, ptr %l65, !tbaa !24
  store i64 0, ptr %l66, !tbaa !24
  br label %bb310
bb310:
  %t1402 = load i64, ptr %l66, !tbaa !24
  %t1403 = load i64, ptr %l65, !tbaa !24
  %t1406 = icmp slt i64 %t1402, %t1403
  %t1408 = xor i1 %t1406, true
  br i1 %t1408, label %bb311, label %bb312
bb311:
  br label %bb323
bb312:
  br label %bb313
bb313:
  %t1410 = load i64, ptr %l62, !tbaa !24
  %t1411 = load i64, ptr %l66, !tbaa !24
  %t1412 = load i64, ptr %l64, !tbaa !24
  %t1415 = mul i64 %t1411, %t1412
  %t1418 = add i64 %t1410, %t1415
  store i64 %t1418, ptr %l67, !tbaa !24
  %t1420 = load i64, ptr %l67, !tbaa !24
  store i64 %t1420, ptr %l776, !tbaa !24
  %t1421 = load ptr, ptr %lp16
  %t1422 = getelementptr %"compiler/generic:Binding", ptr %t1421, i32 0, i32 2
  %t1423 = load { i64, ptr }, ptr %t1422, !tbaa !27
  store { i64, ptr } %t1423, ptr %l777, !tbaa !27
  %t1424 = load i64, ptr %l67, !tbaa !24
  %t1426 = getelementptr { i64, ptr }, ptr %l777, i32 0, i32 1
  %t1427 = load ptr, ptr %t1426, !tbaa !27
  %t1428 = getelementptr i32, ptr %t1427, i64 %t1424
  %t1429 = load i32, ptr %t1428, !tbaa !33
  %t1430 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t1433 = icmp ne i32 %t1429, %t1430
  br i1 %t1433, label %bb314, label %bb315
bb314:
  %t1435 = load ptr, ptr %l0, !tbaa !29
  %t1437 = getelementptr %"compiler/check:Checker", ptr %t1435, i32 0, i32 1
  %t1438 = load ptr, ptr %t1437, !tbaa !29
  %t1439 = load i64, ptr %l10, !tbaa !24
  %t1440 = load i64, ptr %l67, !tbaa !24
  %t1444 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrVarAt(ptr %v0, ptr %t1438, i64 %t1439, i64 %t1440)
  store i1 %t1444, ptr %l787
  br label %bb316
bb315:
  store i1 false, ptr %l782, !tbaa !21
  br label %bb317
bb316:
  %t1445 = load i1, ptr %l787, !tbaa !21
  %t1446 = xor i1 %t1445, true
  store i1 %t1446, ptr %l782, !tbaa !21
  br label %bb317
bb317:
  %t1448 = load i1, ptr %l782, !tbaa !21
  br i1 %t1448, label %bb318, label %bb319
bb318:
  %t1449 = load ptr, ptr %lp16
  %t1450 = getelementptr %"compiler/generic:Binding", ptr %t1449, i32 0, i32 2
  %t1451 = load { i64, ptr }, ptr %t1450, !tbaa !27
  store { i64, ptr } %t1451, ptr %l790, !tbaa !27
  %t1452 = load i64, ptr %l67, !tbaa !24
  %t1454 = getelementptr { i64, ptr }, ptr %l790, i32 0, i32 1
  %t1455 = load ptr, ptr %t1454, !tbaa !27
  %t1456 = getelementptr i32, ptr %t1455, i64 %t1452
  %t1457 = load i32, ptr %t1456, !tbaa !33
  store i32 %t1457, ptr %l789, !tbaa !23
  br label %bb321
bb319:
  %t1459 = load ptr, ptr %l0, !tbaa !29
  %t1461 = getelementptr %"compiler/check:Checker", ptr %t1459, i32 0, i32 1
  %t1462 = load ptr, ptr %t1461, !tbaa !29
  %t1464 = getelementptr %"compiler/generic:Program", ptr %t1462, i32 0, i32 2
  %t1465 = load i64, ptr %l10, !tbaa !24
  %t1466 = load i64, ptr %l67, !tbaa !24
  %t1467 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  %t1472 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eVar(ptr %v0, ptr %t1464, i64 %t1465, i64 %t1466, i64 %t1467)
  store i32 %t1472, ptr %l799
  br label %bb320
bb320:
  %t1473 = load i32, ptr %l799, !tbaa !23
  store i32 %t1473, ptr %l789, !tbaa !23
  br label %bb321
bb321:
  %t1474 = load i32, ptr %l789, !tbaa !23
  %t1475 = load i64, ptr %l776, !tbaa !24
  %t1476 = getelementptr { i64, ptr }, ptr %l61, i32 0, i32 1
  %t1477 = load ptr, ptr %t1476, !tbaa !27
  %t1478 = getelementptr i32, ptr %t1477, i64 %t1475
  store i32 %t1474, ptr %t1478, !tbaa !33
  br label %bb322
bb322:
  %t1479 = load i64, ptr %l66, !tbaa !24
  %t1481 = add i64 %t1479, 1
  store i64 %t1481, ptr %l66, !tbaa !24
  br label %bb310
bb323:
  %t1483 = load i64, ptr %l60, !tbaa !24
  %t1484 = load i64, ptr %l26, !tbaa !24
  %t1487 = add i64 %t1483, %t1484
  store i64 %t1487, ptr %l68, !tbaa !24
  %t1489 = load i64, ptr %l68, !tbaa !24
  %t1490 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t1492 = extractvalue { i64, ptr } %t1490, 0
  %t1495 = icmp sge i64 %t1489, %t1492
  br i1 %t1495, label %bb324, label %bb325
bb324:
  call void @__olang_scope_close(ptr %s46)
  br label %bb359
bb325:
  br label %bb326
bb326:
  %t1497 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1497, ptr %l809, !tbaa !29
  %t1498 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t1498, ptr %l810, !tbaa !27
  %t1499 = load i64, ptr %l60, !tbaa !24
  %t1501 = getelementptr { i64, ptr }, ptr %l810, i32 0, i32 1
  %t1502 = load ptr, ptr %t1501, !tbaa !27
  %t1503 = getelementptr ptr, ptr %t1502, i64 %t1499
  %t1504 = load ptr, ptr %t1503, !tbaa !39
  %t1506 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v0, ptr %t1504)
  store %"compiler/source:Span" %t1506, ptr %l813
  br label %bb327
bb327:
  %t1507 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t1507, ptr %l814, !tbaa !27
  %t1508 = load i64, ptr %l60, !tbaa !24
  %t1510 = getelementptr { i64, ptr }, ptr %l814, i32 0, i32 1
  %t1511 = load ptr, ptr %t1510, !tbaa !27
  %t1512 = getelementptr ptr, ptr %t1511, i64 %t1508
  %t1513 = load ptr, ptr %t1512, !tbaa !39
  %t1515 = call ptr @compiler_2fcheck_2elambdaOf(ptr %v0, ptr %v0, ptr %t1513)
  store ptr %t1515, ptr %l817
  br label %bb328
bb328:
  %t1516 = load ptr, ptr %l817, !tbaa !29
  store ptr %t1516, ptr %l69, !tbaa !29
  %t1517 = load ptr, ptr %l69, !tbaa !29
  %t1519 = icmp eq ptr %t1517, null
  br i1 %t1519, label %bb329, label %bb330
bb329:
  call void @__olang_check_failed(ptr @olang_loc_5a8c9496fbc2a69e_a7d03ac53ab89be2)
  unreachable
bb330:
  br label %bb331
bb331:
  %t1521 = load ptr, ptr %l69, !tbaa !29
  store ptr %t1521, ptr %l820, !tbaa !29
  %t1522 = load ptr, ptr %l0, !tbaa !29
  %t1524 = getelementptr %"compiler/check:Checker", ptr %t1522, i32 0, i32 1
  %t1525 = load ptr, ptr %t1524, !tbaa !29
  store ptr %t1525, ptr %l822, !tbaa !29
  %t1526 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t1526, ptr %l823, !tbaa !27
  %t1527 = load i64, ptr %l68, !tbaa !24
  %t1529 = getelementptr { i64, ptr }, ptr %l823, i32 0, i32 1
  %t1530 = load ptr, ptr %t1529, !tbaa !27
  %t1531 = getelementptr i32, ptr %t1530, i64 %t1527
  %t1532 = load i32, ptr %t1531, !tbaa !33
  store i32 %t1532, ptr %l825, !tbaa !23
  %t1533 = load i64, ptr %l10, !tbaa !24
  store i64 %t1533, ptr %l826, !tbaa !24
  %t1534 = load ptr, ptr %l0, !tbaa !29
  %t1536 = getelementptr %"compiler/check:Checker", ptr %t1534, i32 0, i32 1
  %t1537 = load ptr, ptr %t1536, !tbaa !29
  %t1539 = getelementptr %"compiler/generic:Program", ptr %t1537, i32 0, i32 2
  %t1540 = load { i64, ptr }, ptr %l61, !tbaa !27
  %t1543 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s46, ptr %t1539, { i64, ptr } %t1540)
  store i32 %t1543, ptr %l831
  br label %bb332
bb332:
  %t1544 = load ptr, ptr %l822, !tbaa !29
  %t1545 = load i32, ptr %l825, !tbaa !23
  %t1546 = load i64, ptr %l826, !tbaa !24
  %t1547 = load i32, ptr %l831, !tbaa !23
  %t1548 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSubst(ptr %v0, ptr %t1544, i32 %t1545, i64 %t1546, i32 %t1547)
  store i32 %t1548, ptr %l832
  br label %bb333
bb333:
  %t1549 = load ptr, ptr %l809, !tbaa !29
  %t1550 = load %"compiler/source:Span", ptr %l813
  %t1551 = load ptr, ptr %l820, !tbaa !29
  %t1552 = load i32, ptr %l832, !tbaa !23
  %t1553 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elambda(ptr %v0, ptr %v0, ptr %v5, ptr %t1549, %"compiler/source:Span" %t1550, ptr %t1551, i32 %t1552)
  store ptr %t1553, ptr %l833
  br label %bb334
bb334:
  %t1554 = load ptr, ptr %l833, !tbaa !29
  store ptr %t1554, ptr %l70, !tbaa !29
  %t1555 = load ptr, ptr %l70, !tbaa !29
  %t1558 = call i32 @compiler_2fcheck_2etypeOf(ptr %v5, ptr %t1555)
  store i32 %t1558, ptr %l836
  br label %bb335
bb335:
  %t1559 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t1560 = load i32, ptr %l836, !tbaa !23
  %t1562 = icmp ne i32 %t1560, %t1559
  br i1 %t1562, label %bb336, label %bb337
bb336:
  %t1564 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1564, ptr %l839, !tbaa !29
  %t1565 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t1565, ptr %l840, !tbaa !27
  %t1566 = load i64, ptr %l68, !tbaa !24
  %t1568 = getelementptr { i64, ptr }, ptr %l840, i32 0, i32 1
  %t1569 = load ptr, ptr %t1568, !tbaa !27
  %t1570 = getelementptr i32, ptr %t1569, i64 %t1566
  %t1571 = load i32, ptr %t1570, !tbaa !33
  store i32 %t1571, ptr %l842, !tbaa !23
  %t1572 = load ptr, ptr %l70, !tbaa !29
  %t1575 = call i32 @compiler_2fcheck_2etypeOf(ptr %v5, ptr %t1572)
  store i32 %t1575, ptr %l845
  br label %bb338
bb337:
  br label %bb356
bb338:
  %t1576 = load ptr, ptr %lp16
  %t1577 = load ptr, ptr %l839, !tbaa !29
  %t1578 = load i32, ptr %l842, !tbaa !23
  %t1579 = load i32, ptr %l845, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunifySoft(ptr %v0, ptr %v5, ptr %t1577, i32 %t1578, i32 %t1579, ptr %t1576)
  br label %bb339
bb339:
  %t1581 = load ptr, ptr %l0, !tbaa !29
  %t1583 = getelementptr %"compiler/check:Checker", ptr %t1581, i32 0, i32 1
  %t1584 = load ptr, ptr %t1583, !tbaa !29
  %t1586 = getelementptr %"compiler/generic:Program", ptr %t1584, i32 0, i32 2
  %t1587 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t1587, ptr %l850, !tbaa !27
  %t1588 = load i64, ptr %l68, !tbaa !24
  %t1590 = getelementptr { i64, ptr }, ptr %l850, i32 0, i32 1
  %t1591 = load ptr, ptr %t1590, !tbaa !27
  %t1592 = getelementptr i32, ptr %t1591, i64 %t1588
  %t1593 = load i32, ptr %t1592, !tbaa !33
  %t1596 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t1586, i32 %t1593)
  store i32 %t1596, ptr %l853
  br label %bb340
bb340:
  %t1597 = load i32, ptr %l853, !range !{i32 0, i32 33}
  %t1599 = trunc i64 21 to i32
  %t1600 = icmp eq i32 %t1597, %t1599
  br i1 %t1600, label %bb341, label %bb342
bb341:
  %t1602 = load ptr, ptr %l0, !tbaa !29
  %t1604 = getelementptr %"compiler/check:Checker", ptr %t1602, i32 0, i32 1
  %t1605 = load ptr, ptr %t1604, !tbaa !29
  %t1607 = getelementptr %"compiler/generic:Program", ptr %t1605, i32 0, i32 2
  store ptr %t1607, ptr %l859, !tbaa !29
  %t1608 = load ptr, ptr %l70, !tbaa !29
  %t1611 = call i32 @compiler_2fcheck_2etypeOf(ptr %v5, ptr %t1608)
  store i32 %t1611, ptr %l862
  br label %bb343
bb342:
  store i1 false, ptr %l856, !tbaa !21
  br label %bb345
bb343:
  %t1612 = load ptr, ptr %l859, !tbaa !29
  %t1613 = load i32, ptr %l862, !tbaa !23
  %t1614 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t1612, i32 %t1613)
  store i32 %t1614, ptr %l863
  br label %bb344
bb344:
  %t1615 = load i32, ptr %l863, !range !{i32 0, i32 33}
  %t1617 = trunc i64 21 to i32
  %t1618 = icmp eq i32 %t1615, %t1617
  store i1 %t1618, ptr %l856, !tbaa !21
  br label %bb345
bb345:
  %t1620 = load i1, ptr %l856, !tbaa !21
  br i1 %t1620, label %bb346, label %bb347
bb346:
  %t1621 = load ptr, ptr %l0, !tbaa !29
  %t1623 = getelementptr %"compiler/check:Checker", ptr %t1621, i32 0, i32 1
  %t1624 = load ptr, ptr %t1623, !tbaa !29
  store ptr %t1624, ptr %l867, !tbaa !29
  %t1625 = load ptr, ptr %l0, !tbaa !29
  %t1627 = getelementptr %"compiler/check:Checker", ptr %t1625, i32 0, i32 1
  %t1628 = load ptr, ptr %t1627, !tbaa !29
  %t1630 = getelementptr %"compiler/generic:Program", ptr %t1628, i32 0, i32 2
  %t1631 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t1631, ptr %l871, !tbaa !27
  %t1632 = load i64, ptr %l68, !tbaa !24
  %t1634 = getelementptr { i64, ptr }, ptr %l871, i32 0, i32 1
  %t1635 = load ptr, ptr %t1634, !tbaa !27
  %t1636 = getelementptr i32, ptr %t1635, i64 %t1632
  %t1637 = load i32, ptr %t1636, !tbaa !33
  %t1640 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t1630, i32 %t1637)
  store i32 %t1640, ptr %l874
  br label %bb348
bb347:
  br label %bb355
bb348:
  %t1641 = load ptr, ptr %l0, !tbaa !29
  %t1643 = getelementptr %"compiler/check:Checker", ptr %t1641, i32 0, i32 1
  %t1644 = load ptr, ptr %t1643, !tbaa !29
  %t1646 = getelementptr %"compiler/generic:Program", ptr %t1644, i32 0, i32 2
  store ptr %t1646, ptr %l877, !tbaa !29
  %t1647 = load ptr, ptr %l70, !tbaa !29
  %t1650 = call i32 @compiler_2fcheck_2etypeOf(ptr %v5, ptr %t1647)
  store i32 %t1650, ptr %l880
  br label %bb349
bb349:
  %t1651 = load ptr, ptr %l877, !tbaa !29
  %t1652 = load i32, ptr %l880, !tbaa !23
  %t1653 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t1651, i32 %t1652)
  store i32 %t1653, ptr %l881
  br label %bb350
bb350:
  %t1654 = load ptr, ptr %lp16
  %t1655 = load ptr, ptr %l867, !tbaa !29
  %t1656 = load i32, ptr %l874, !tbaa !23
  %t1657 = load i32, ptr %l881, !tbaa !23
  %t1659 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnifyErrors(ptr %v0, ptr %v5, ptr %t1655, i32 %t1656, i32 %t1657, ptr %t1654)
  store i32 %t1659, ptr %l883
  %t1660 = icmp ne i32 %t1659, 0
  br i1 %t1660, label %bb352, label %ok.1661, !prof !99
ok.1661:
  br label %bb351
bb351:
  br label %bb354
bb352:
  br label %bb353
bb353:
  br label %bb354
bb354:
  br label %bb355
bb355:
  br label %bb356
bb356:
  %t1662 = load ptr, ptr %lp24
  %t1663 = load i64, ptr %l60, !tbaa !24
  %t1664 = load ptr, ptr %l70, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_3f_26_3e_2eSet_H54ebfdc15a9c097858a2e264494e7d5a(ptr %v5, ptr %v5, ptr %t1662, i64 %t1663, ptr %t1664)
  br label %bb357
bb357:
  %t1669 = load ptr, ptr %l0, !tbaa !29
  %t1671 = getelementptr %"compiler/check:Checker", ptr %t1669, i32 0, i32 1
  %t1672 = load ptr, ptr %t1671, !tbaa !29
  %t1673 = load ptr, ptr %lp16
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInferThroughBounds(ptr %v0, ptr %v5, ptr %t1672, ptr %t1673)
  br label %bb358
bb358:
  call void @__olang_scope_close(ptr %s46)
  br label %bb359
bb359:
  %t1676 = load i64, ptr %l59, !tbaa !24
  %t1678 = add i64 %t1676, 1
  store i64 %t1678, ptr %l59, !tbaa !24
  br label %bb294
bb360:
  %t1680 = load ptr, ptr %l0, !tbaa !29
  %t1681 = load %"compiler/source:Span", ptr %l2
  %t1682 = load i64, ptr %l3, !tbaa !24
  %t1683 = load i64, ptr %l10, !tbaa !24
  %t1684 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t1685 = load i64, ptr %l23, !tbaa !24
  %t1686 = load ptr, ptr %l4, !tbaa !29
  %t1688 = icmp eq ptr %t1686, null
  %t1690 = xor i1 %t1688, true
  %t1691 = load ptr, ptr %lp16
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edefaultBinds(ptr %v0, ptr %v5, ptr %v5, ptr %t1680, %"compiler/source:Span" %t1681, i64 %t1682, i64 %t1683, { i64, ptr } %t1684, i64 %t1685, i1 %t1690, ptr %t1691)
  br label %bb361
bb361:
  %t1700 = load ptr, ptr %l0, !tbaa !29
  %t1702 = getelementptr %"compiler/check:Checker", ptr %t1700, i32 0, i32 1
  %t1703 = load ptr, ptr %t1702, !tbaa !29
  %t1704 = load ptr, ptr %lp16
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInferThroughBounds(ptr %v0, ptr %v5, ptr %t1703, ptr %t1704)
  br label %bb362
bb362:
  store i64 0, ptr %l71, !tbaa !24
  %t1707 = load i64, ptr %l11, !tbaa !24
  store i64 %t1707, ptr %l72, !tbaa !24
  store i64 1, ptr %l73, !tbaa !24
  %t1709 = load i64, ptr %l72, !tbaa !24
  %t1710 = load i64, ptr %l71, !tbaa !24
  %t1713 = icmp sgt i64 %t1709, %t1710
  br i1 %t1713, label %bb363, label %bb364
bb363:
  %t1715 = load i64, ptr %l73, !tbaa !24
  %t1717 = icmp sgt i64 %t1715, 0
  br i1 %t1717, label %bb365, label %bb366
bb364:
  store i64 0, ptr %l910, !tbaa !24
  br label %bb368
bb365:
  %t1719 = load i64, ptr %l72, !tbaa !24
  %t1720 = load i64, ptr %l71, !tbaa !24
  %t1723 = sub i64 %t1719, %t1720
  %t1724 = load i64, ptr %l73, !tbaa !24
  %t1727 = add i64 %t1723, %t1724
  %t1729 = sub i64 %t1727, 1
  %t1730 = load i64, ptr %l73, !tbaa !24
  %t1733 = sdiv i64 %t1729, %t1730
  store i64 %t1733, ptr %l913, !tbaa !24
  br label %bb367
bb366:
  store i64 0, ptr %l913, !tbaa !24
  br label %bb367
bb367:
  %t1735 = load i64, ptr %l913, !tbaa !24
  store i64 %t1735, ptr %l910, !tbaa !24
  br label %bb368
bb368:
  %t1736 = load i64, ptr %l910, !tbaa !24
  store i64 %t1736, ptr %l74, !tbaa !24
  store i64 0, ptr %l75, !tbaa !24
  br label %bb369
bb369:
  %t1737 = load i64, ptr %l75, !tbaa !24
  %t1738 = load i64, ptr %l74, !tbaa !24
  %t1741 = icmp slt i64 %t1737, %t1738
  %t1743 = xor i1 %t1741, true
  br i1 %t1743, label %bb370, label %bb371
bb370:
  br label %bb382
bb371:
  br label %bb372
bb372:
  %t1745 = load i64, ptr %l71, !tbaa !24
  %t1746 = load i64, ptr %l75, !tbaa !24
  %t1747 = load i64, ptr %l73, !tbaa !24
  %t1750 = mul i64 %t1746, %t1747
  %t1753 = add i64 %t1745, %t1750
  store i64 %t1753, ptr %l76, !tbaa !24
  %t1755 = load ptr, ptr %lp16
  %t1756 = getelementptr %"compiler/generic:Binding", ptr %t1755, i32 0, i32 2
  %t1757 = load { i64, ptr }, ptr %t1756, !tbaa !27
  store { i64, ptr } %t1757, ptr %l931, !tbaa !27
  %t1758 = load i64, ptr %l76, !tbaa !24
  %t1760 = getelementptr { i64, ptr }, ptr %l931, i32 0, i32 1
  %t1761 = load ptr, ptr %t1760, !tbaa !27
  %t1762 = getelementptr i32, ptr %t1761, i64 %t1758
  %t1763 = load i32, ptr %t1762, !tbaa !33
  %t1764 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t1767 = icmp eq i32 %t1763, %t1764
  br i1 %t1767, label %bb373, label %bb374
bb373:
  %t1769 = load ptr, ptr %l0, !tbaa !29
  %t1771 = getelementptr %"compiler/check:Checker", ptr %t1769, i32 0, i32 1
  %t1772 = load ptr, ptr %t1771, !tbaa !29
  %t1773 = load i64, ptr %l10, !tbaa !24
  %t1774 = load i64, ptr %l76, !tbaa !24
  %t1778 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrVarAt(ptr %v0, ptr %t1772, i64 %t1773, i64 %t1774)
  store i1 %t1778, ptr %l941
  br label %bb375
bb374:
  store i1 false, ptr %l936, !tbaa !21
  br label %bb376
bb375:
  %t1779 = load i1, ptr %l941, !tbaa !21
  store i1 %t1779, ptr %l936, !tbaa !21
  br label %bb376
bb376:
  %t1780 = load i1, ptr %l936, !tbaa !21
  br i1 %t1780, label %bb377, label %bb378
bb377:
  %t1781 = load ptr, ptr %lp16
  %t1782 = getelementptr %"compiler/generic:Binding", ptr %t1781, i32 0, i32 2
  %t1783 = load { i64, ptr }, ptr %t1782, !tbaa !27
  store { i64, ptr } %t1783, ptr %l942, !tbaa !27
  %t1784 = load i64, ptr %l76, !tbaa !24
  store i64 %t1784, ptr %l943, !tbaa !24
  %t1785 = load ptr, ptr %l0, !tbaa !29
  %t1787 = getelementptr %"compiler/check:Checker", ptr %t1785, i32 0, i32 1
  %t1788 = load ptr, ptr %t1787, !tbaa !29
  %t1790 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrSetOf(ptr %v0, ptr %t1788, i32 0)
  store i32 %t1790, ptr %l946
  br label %bb379
bb378:
  br label %bb380
bb379:
  %t1791 = load i32, ptr %l946, !tbaa !23
  %t1792 = load i64, ptr %l943, !tbaa !24
  %t1793 = getelementptr { i64, ptr }, ptr %l942, i32 0, i32 1
  %t1794 = load ptr, ptr %t1793, !tbaa !27
  %t1795 = getelementptr i32, ptr %t1794, i64 %t1792
  store i32 %t1791, ptr %t1795, !tbaa !33
  br label %bb380
bb380:
  br label %bb381
bb381:
  %t1796 = load i64, ptr %l75, !tbaa !24
  %t1798 = add i64 %t1796, 1
  store i64 %t1798, ptr %l75, !tbaa !24
  br label %bb369
bb382:
  store i64 0, ptr %l77, !tbaa !24
  %t1800 = load i64, ptr %l11, !tbaa !24
  store i64 %t1800, ptr %l78, !tbaa !24
  store i64 1, ptr %l79, !tbaa !24
  %t1802 = load i64, ptr %l78, !tbaa !24
  %t1803 = load i64, ptr %l77, !tbaa !24
  %t1806 = icmp sgt i64 %t1802, %t1803
  br i1 %t1806, label %bb383, label %bb384
bb383:
  %t1808 = load i64, ptr %l79, !tbaa !24
  %t1810 = icmp sgt i64 %t1808, 0
  br i1 %t1810, label %bb385, label %bb386
bb384:
  store i64 0, ptr %l953, !tbaa !24
  br label %bb388
bb385:
  %t1812 = load i64, ptr %l78, !tbaa !24
  %t1813 = load i64, ptr %l77, !tbaa !24
  %t1816 = sub i64 %t1812, %t1813
  %t1817 = load i64, ptr %l79, !tbaa !24
  %t1820 = add i64 %t1816, %t1817
  %t1822 = sub i64 %t1820, 1
  %t1823 = load i64, ptr %l79, !tbaa !24
  %t1826 = sdiv i64 %t1822, %t1823
  store i64 %t1826, ptr %l956, !tbaa !24
  br label %bb387
bb386:
  store i64 0, ptr %l956, !tbaa !24
  br label %bb387
bb387:
  %t1828 = load i64, ptr %l956, !tbaa !24
  store i64 %t1828, ptr %l953, !tbaa !24
  br label %bb388
bb388:
  %t1829 = load i64, ptr %l953, !tbaa !24
  store i64 %t1829, ptr %l80, !tbaa !24
  store i64 0, ptr %l81, !tbaa !24
  br label %bb389
bb389:
  %t1830 = load i64, ptr %l81, !tbaa !24
  %t1831 = load i64, ptr %l80, !tbaa !24
  %t1834 = icmp slt i64 %t1830, %t1831
  %t1836 = xor i1 %t1834, true
  br i1 %t1836, label %bb390, label %bb391
bb390:
  br label %bb480
bb391:
  br label %bb392
bb392:
  %t1838 = load i64, ptr %l77, !tbaa !24
  %t1839 = load i64, ptr %l81, !tbaa !24
  %t1840 = load i64, ptr %l79, !tbaa !24
  %t1843 = mul i64 %t1839, %t1840
  %t1846 = add i64 %t1838, %t1843
  store i64 %t1846, ptr %l82, !tbaa !24
  %t1848 = load ptr, ptr %lp16
  %t1849 = getelementptr %"compiler/generic:Binding", ptr %t1848, i32 0, i32 2
  %t1850 = load { i64, ptr }, ptr %t1849, !tbaa !27
  store { i64, ptr } %t1850, ptr %l974, !tbaa !27
  %t1851 = load i64, ptr %l82, !tbaa !24
  %t1853 = getelementptr { i64, ptr }, ptr %l974, i32 0, i32 1
  %t1854 = load ptr, ptr %t1853, !tbaa !27
  %t1855 = getelementptr i32, ptr %t1854, i64 %t1851
  %t1856 = load i32, ptr %t1855, !tbaa !33
  %t1857 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t1860 = icmp eq i32 %t1856, %t1857
  br i1 %t1860, label %bb393, label %bb394
bb393:
  store %olang.scope zeroinitializer, ptr %s61
  store i64 0, ptr %l83, !tbaa !24
  %t1862 = load ptr, ptr %lp24
  %t1864 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_3f_26_3e_2eLen_Hc575045927fec77698bb4606712f5690(ptr %v5, ptr %t1862)
  store i64 %t1864, ptr %l980
  br label %bb395
bb394:
  br label %bb478
bb395:
  %t1865 = load i64, ptr %l980, !tbaa !24
  store i64 %t1865, ptr %l84, !tbaa !24
  store i64 1, ptr %l85, !tbaa !24
  %t1866 = load i64, ptr %l84, !tbaa !24
  %t1867 = load i64, ptr %l83, !tbaa !24
  %t1870 = icmp sgt i64 %t1866, %t1867
  br i1 %t1870, label %bb396, label %bb397
bb396:
  %t1872 = load i64, ptr %l85, !tbaa !24
  %t1874 = icmp sgt i64 %t1872, 0
  br i1 %t1874, label %bb398, label %bb399
bb397:
  store i64 0, ptr %l984, !tbaa !24
  br label %bb401
bb398:
  %t1876 = load i64, ptr %l84, !tbaa !24
  %t1877 = load i64, ptr %l83, !tbaa !24
  %t1880 = sub i64 %t1876, %t1877
  %t1881 = load i64, ptr %l85, !tbaa !24
  %t1884 = add i64 %t1880, %t1881
  %t1886 = sub i64 %t1884, 1
  %t1887 = load i64, ptr %l85, !tbaa !24
  %t1890 = sdiv i64 %t1886, %t1887
  store i64 %t1890, ptr %l987, !tbaa !24
  br label %bb400
bb399:
  store i64 0, ptr %l987, !tbaa !24
  br label %bb400
bb400:
  %t1892 = load i64, ptr %l987, !tbaa !24
  store i64 %t1892, ptr %l984, !tbaa !24
  br label %bb401
bb401:
  %t1893 = load i64, ptr %l984, !tbaa !24
  store i64 %t1893, ptr %l86, !tbaa !24
  store i64 0, ptr %l87, !tbaa !24
  br label %bb402
bb402:
  store %olang.scope zeroinitializer, ptr %s63
  %t1894 = load i64, ptr %l87, !tbaa !24
  %t1895 = load i64, ptr %l86, !tbaa !24
  %t1898 = icmp slt i64 %t1894, %t1895
  %t1900 = xor i1 %t1898, true
  br i1 %t1900, label %bb403, label %bb404
bb403:
  call void @__olang_scope_close(ptr %s63)
  br label %bb447
bb404:
  br label %bb405
bb405:
  %t1902 = load i64, ptr %l83, !tbaa !24
  %t1903 = load i64, ptr %l87, !tbaa !24
  %t1904 = load i64, ptr %l85, !tbaa !24
  %t1907 = mul i64 %t1903, %t1904
  %t1910 = add i64 %t1902, %t1907
  store i64 %t1910, ptr %l88, !tbaa !24
  %t1912 = load i64, ptr %l88, !tbaa !24
  %t1913 = load i64, ptr %l26, !tbaa !24
  %t1916 = add i64 %t1912, %t1913
  store i64 %t1916, ptr %l89, !tbaa !24
  %t1918 = load ptr, ptr %lp24
  %t1919 = load i64, ptr %l88, !tbaa !24
  %t1922 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_3f_26_3e_2eAt__H2e4a6474e10b73ca754517844b8d7700(ptr %v5, ptr %s63, ptr %t1918, i64 %t1919)
  store ptr %t1922, ptr %l1010
  br label %bb406
bb406:
  %t1923 = load ptr, ptr %l1010, !tbaa !29
  %t1924 = icmp eq ptr %t1923, null
  br i1 %t1924, label %bb407, label %bb408
bb407:
  store i1 true, ptr %l1012, !tbaa !21
  br label %bb409
bb408:
  %t1926 = load i64, ptr %l89, !tbaa !24
  %t1927 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t1929 = extractvalue { i64, ptr } %t1927, 0
  %t1932 = icmp sge i64 %t1926, %t1929
  store i1 %t1932, ptr %l1012, !tbaa !21
  br label %bb409
bb409:
  %t1934 = load i1, ptr %l1012, !tbaa !21
  br i1 %t1934, label %bb410, label %bb411
bb410:
  call void @__olang_scope_close(ptr %s63)
  br label %bb446
bb411:
  br label %bb412
bb412:
  %t1935 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1935, ptr %l1017, !tbaa !29
  %t1936 = load ptr, ptr %l0, !tbaa !29
  %t1937 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t1937, ptr %l1019, !tbaa !27
  %t1938 = load i64, ptr %l89, !tbaa !24
  %t1940 = getelementptr { i64, ptr }, ptr %l1019, i32 0, i32 1
  %t1941 = load ptr, ptr %t1940, !tbaa !27
  %t1942 = getelementptr i32, ptr %t1941, i64 %t1938
  %t1943 = load i32, ptr %t1942, !tbaa !33
  %t1946 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t1936, i32 %t1943)
  store i32 %t1946, ptr %l1022
  br label %bb413
bb413:
  %t1947 = load ptr, ptr %l1017, !tbaa !29
  %t1948 = load i32, ptr %l1022, !tbaa !23
  %t1949 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earrayOf(ptr %v0, ptr %t1947, i32 %t1948)
  store i32 %t1949, ptr %l1023
  br label %bb414
bb414:
  %t1950 = load i32, ptr %l1023, !tbaa !23
  store i32 %t1950, ptr %l90, !tbaa !23
  %t1951 = load i32, ptr %l90, !tbaa !23
  %t1952 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t1955 = icmp eq i32 %t1951, %t1952
  br i1 %t1955, label %bb415, label %bb416
bb415:
  call void @__olang_scope_close(ptr %s63)
  br label %bb446
bb416:
  br label %bb417
bb417:
  %t1957 = load ptr, ptr %l0, !tbaa !29
  %t1959 = getelementptr %"compiler/check:Checker", ptr %t1957, i32 0, i32 1
  %t1960 = load ptr, ptr %t1959, !tbaa !29
  %t1962 = getelementptr %"compiler/generic:Program", ptr %t1960, i32 0, i32 2
  %t1963 = load i32, ptr %l90, !tbaa !23
  %t1966 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t1962, i32 %t1963)
  store i32 %t1966, ptr %l1031
  br label %bb418
bb418:
  %t1967 = load i32, ptr %l1031, !tbaa !23
  store i32 %t1967, ptr %l91, !tbaa !23
  %t1968 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1968, ptr %l1032, !tbaa !29
  %t1969 = load ptr, ptr %lp24
  %t1970 = load i64, ptr %l88, !tbaa !24
  %t1973 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_3f_26_3e_2eAt__H2e4a6474e10b73ca754517844b8d7700(ptr %v5, ptr %v5, ptr %t1969, i64 %t1970)
  store ptr %t1973, ptr %l1035
  br label %bb419
bb419:
  %t1974 = load ptr, ptr %l1035, !tbaa !29
  %t1975 = call i32 @compiler_2fcheck_2etypeOf(ptr %v5, ptr %t1974)
  store i32 %t1975, ptr %l1036
  br label %bb420
bb420:
  %t1976 = load ptr, ptr %l1032, !tbaa !29
  %t1977 = load i32, ptr %l1036, !tbaa !23
  %t1978 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t1976, i32 %t1977)
  store i32 %t1978, ptr %l1037
  br label %bb421
bb421:
  %t1979 = load i32, ptr %l1037, !tbaa !23
  %t1980 = load ptr, ptr %l0, !tbaa !29
  %t1984 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earrayOf(ptr %v0, ptr %t1980, i32 %t1979)
  store i32 %t1984, ptr %l1040
  br label %bb422
bb422:
  %t1985 = load i32, ptr %l1040, !tbaa !23
  store i32 %t1985, ptr %l93, !tbaa !23
  %t1986 = load i32, ptr %l91, !tbaa !23
  %t1988 = icmp ne i32 %t1986, 0
  br i1 %t1988, label %bb423, label %bb424
bb423:
  %t1990 = load ptr, ptr %l0, !tbaa !29
  %t1992 = getelementptr %"compiler/check:Checker", ptr %t1990, i32 0, i32 1
  %t1993 = load ptr, ptr %t1992, !tbaa !29
  %t1995 = getelementptr %"compiler/generic:Program", ptr %t1993, i32 0, i32 2
  %t1996 = load i32, ptr %l91, !tbaa !23
  %t1999 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t1995, i32 %t1996)
  store i32 %t1999, ptr %l1048
  br label %bb425
bb424:
  store i1 false, ptr %l1043, !tbaa !21
  br label %bb426
bb425:
  %t2000 = load i32, ptr %l1048, !range !{i32 0, i32 33}
  %t2002 = trunc i64 25 to i32
  %t2003 = icmp eq i32 %t2000, %t2002
  store i1 %t2003, ptr %l1043, !tbaa !21
  br label %bb426
bb426:
  %t2005 = load i1, ptr %l1043, !tbaa !21
  br i1 %t2005, label %bb427, label %bb428
bb427:
  %t2006 = load ptr, ptr %l0, !tbaa !29
  %t2008 = getelementptr %"compiler/check:Checker", ptr %t2006, i32 0, i32 1
  %t2009 = load ptr, ptr %t2008, !tbaa !29
  %t2011 = getelementptr %"compiler/generic:Program", ptr %t2009, i32 0, i32 2
  %t2012 = load i32, ptr %l91, !tbaa !23
  %t2015 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eA(ptr %v0, ptr %t2011, i32 %t2012)
  store i64 %t2015, ptr %l1056
  br label %bb429
bb428:
  store i1 false, ptr %l1051, !tbaa !21
  br label %bb430
bb429:
  %t2016 = load i64, ptr %l10, !tbaa !24
  %t2017 = load i64, ptr %l1056, !tbaa !24
  %t2019 = icmp eq i64 %t2017, %t2016
  store i1 %t2019, ptr %l1051, !tbaa !21
  br label %bb430
bb430:
  %t2021 = load i1, ptr %l1051, !tbaa !21
  br i1 %t2021, label %bb431, label %bb432
bb431:
  %t2022 = load ptr, ptr %l0, !tbaa !29
  %t2024 = getelementptr %"compiler/check:Checker", ptr %t2022, i32 0, i32 1
  %t2025 = load ptr, ptr %t2024, !tbaa !29
  %t2027 = getelementptr %"compiler/generic:Program", ptr %t2025, i32 0, i32 2
  %t2028 = load i32, ptr %l91, !tbaa !23
  %t2031 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eB(ptr %v0, ptr %t2027, i32 %t2028)
  store i64 %t2031, ptr %l1064
  br label %bb433
bb432:
  store i1 false, ptr %l1059, !tbaa !21
  br label %bb434
bb433:
  %t2032 = load i64, ptr %l82, !tbaa !24
  %t2033 = load i64, ptr %l1064, !tbaa !24
  %t2035 = icmp eq i64 %t2033, %t2032
  store i1 %t2035, ptr %l1059, !tbaa !21
  br label %bb434
bb434:
  %t2037 = load i1, ptr %l1059, !tbaa !21
  br i1 %t2037, label %bb435, label %bb436
bb435:
  %t2038 = load i32, ptr %l93, !tbaa !23
  %t2039 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t2042 = icmp ne i32 %t2038, %t2039
  store i1 %t2042, ptr %l1067, !tbaa !21
  br label %bb437
bb436:
  store i1 false, ptr %l1067, !tbaa !21
  br label %bb437
bb437:
  %t2044 = load i1, ptr %l1067, !tbaa !21
  br i1 %t2044, label %bb438, label %bb439
bb438:
  %t2045 = load ptr, ptr %l0, !tbaa !29
  %t2047 = getelementptr %"compiler/check:Checker", ptr %t2045, i32 0, i32 1
  %t2048 = load ptr, ptr %t2047, !tbaa !29
  %t2050 = getelementptr %"compiler/generic:Program", ptr %t2048, i32 0, i32 2
  %t2051 = load i32, ptr %l93, !tbaa !23
  %t2054 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t2050, i32 %t2051)
  store i32 %t2054, ptr %l1076
  br label %bb440
bb439:
  store i1 false, ptr %l1071, !tbaa !21
  br label %bb441
bb440:
  %t2055 = load i32, ptr %l1076, !tbaa !23
  %t2056 = icmp eq i32 %t2055, 0
  store i1 %t2056, ptr %l1071, !tbaa !21
  br label %bb441
bb441:
  %t2058 = load i1, ptr %l1071, !tbaa !21
  br i1 %t2058, label %bb442, label %bb443
bb442:
  %t2059 = load ptr, ptr %lp16
  %t2060 = getelementptr %"compiler/generic:Binding", ptr %t2059, i32 0, i32 2
  %t2061 = load { i64, ptr }, ptr %t2060, !tbaa !27
  store { i64, ptr } %t2061, ptr %l1078, !tbaa !27
  %t2062 = load i64, ptr %l82, !tbaa !24
  store i64 %t2062, ptr %l1079, !tbaa !24
  %t2063 = load ptr, ptr %l0, !tbaa !29
  %t2065 = getelementptr %"compiler/check:Checker", ptr %t2063, i32 0, i32 1
  %t2066 = load ptr, ptr %t2065, !tbaa !29
  %t2068 = getelementptr %"compiler/generic:Program", ptr %t2066, i32 0, i32 2
  %t2070 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRunLength(ptr %v0, ptr %t2068)
  store i32 %t2070, ptr %l1083
  br label %bb444
bb443:
  br label %bb445
bb444:
  %t2071 = load i32, ptr %l1083, !tbaa !23
  %t2072 = load i64, ptr %l1079, !tbaa !24
  %t2073 = getelementptr { i64, ptr }, ptr %l1078, i32 0, i32 1
  %t2074 = load ptr, ptr %t2073, !tbaa !27
  %t2075 = getelementptr i32, ptr %t2074, i64 %t2072
  store i32 %t2071, ptr %t2075, !tbaa !33
  call void @__olang_scope_close(ptr %s63)
  br label %bb447
bb445:
  call void @__olang_scope_close(ptr %s63)
  br label %bb446
bb446:
  %t2076 = load i64, ptr %l87, !tbaa !24
  %t2078 = add i64 %t2076, 1
  store i64 %t2078, ptr %l87, !tbaa !24
  br label %bb402
bb447:
  %t2080 = load ptr, ptr %lp16
  %t2081 = getelementptr %"compiler/generic:Binding", ptr %t2080, i32 0, i32 2
  %t2082 = load { i64, ptr }, ptr %t2081, !tbaa !27
  store { i64, ptr } %t2082, ptr %l1086, !tbaa !27
  %t2083 = load i64, ptr %l82, !tbaa !24
  %t2085 = getelementptr { i64, ptr }, ptr %l1086, i32 0, i32 1
  %t2086 = load ptr, ptr %t2085, !tbaa !27
  %t2087 = getelementptr i32, ptr %t2086, i64 %t2083
  %t2088 = load i32, ptr %t2087, !tbaa !33
  %t2089 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t2092 = icmp ne i32 %t2088, %t2089
  br i1 %t2092, label %bb448, label %bb449
bb448:
  call void @__olang_scope_close(ptr %s61)
  br label %bb479
bb449:
  br label %bb450
bb450:
  %t2094 = load i64, ptr %l11, !tbaa !24
  store i64 %t2094, ptr %l1091, !tbaa !24
  %t2095 = load i64, ptr %l1091, !tbaa !24
  %t2096 = icmp sge i64 %t2095, 0
  br i1 %t2096, label %bb451, label %bb452
bb451:
  %t2098 = load i64, ptr %l1091, !tbaa !24
  %t2099 = mul i64 %t2098, 1
  %t2100 = call ptr @__olang_scope_alloc_zeroed(ptr %s61, i64 %t2099)
  %t2101 = insertvalue { i64, ptr } undef, i64 %t2098, 0
  %t2102 = insertvalue { i64, ptr } %t2101, ptr %t2100, 1
  store { i64, ptr } %t2102, ptr %l94, !tbaa !27
  %t2104 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t2104, ptr %l95, !tbaa !27
  store i64 0, ptr %l96, !tbaa !24
  %t2106 = load { i64, ptr }, ptr %l95, !tbaa !27
  %t2108 = extractvalue { i64, ptr } %t2106, 0
  store i64 %t2108, ptr %l97, !tbaa !24
  br label %bb453
bb452:
  call void @__olang_check_failed(ptr @olang_loc_bbc6ff9b49c776cb_b2202ad52bef7037)
  unreachable
bb453:
  %t2110 = load i64, ptr %l96, !tbaa !24
  %t2111 = load i64, ptr %l97, !tbaa !24
  %t2114 = icmp slt i64 %t2110, %t2111
  %t2116 = xor i1 %t2114, true
  br i1 %t2116, label %bb454, label %bb455
bb454:
  br label %bb459
bb455:
  br label %bb456
bb456:
  %t2118 = load { i64, ptr }, ptr %l95, !tbaa !27
  store { i64, ptr } %t2118, ptr %l1101, !tbaa !27
  %t2119 = load i64, ptr %l96, !tbaa !24
  %t2121 = getelementptr { i64, ptr }, ptr %l1101, i32 0, i32 1
  %t2122 = load ptr, ptr %t2121, !tbaa !27
  %t2123 = getelementptr i32, ptr %t2122, i64 %t2119
  %t2124 = load i32, ptr %t2123, !tbaa !33
  %t2126 = load ptr, ptr %l0, !tbaa !29
  %t2128 = load i64, ptr %l10, !tbaa !24
  %t2129 = load { i64, ptr }, ptr %l94, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evarsIn(ptr %v0, ptr %s61, ptr %t2126, i32 %t2124, i64 %t2128, { i64, ptr } %t2129, i64 0)
  br label %bb457
bb457:
  br label %bb458
bb458:
  %t2134 = load i64, ptr %l96, !tbaa !24
  %t2136 = add i64 %t2134, 1
  store i64 %t2136, ptr %l96, !tbaa !24
  br label %bb453
bb459:
  %t2138 = load ptr, ptr %l0, !tbaa !29
  store ptr %t2138, ptr %l1110, !tbaa !29
  %t2139 = load ptr, ptr %l0, !tbaa !29
  %t2141 = getelementptr %"compiler/check:Checker", ptr %t2139, i32 0, i32 1
  %t2142 = load ptr, ptr %t2141, !tbaa !29
  %t2143 = load i64, ptr %l3, !tbaa !24
  %t2146 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %s61, ptr %t2142, i64 %t2143)
  store ptr %t2146, ptr %l1114
  br label %bb460
bb460:
  %t2147 = load ptr, ptr %l1114, !tbaa !29
  %t2149 = getelementptr %"compiler/ast:Func", ptr %t2147, i32 0, i32 2
  %t2150 = load i32, ptr %t2149, !tbaa !23
  %t2151 = load ptr, ptr %l1110, !tbaa !29
  %t2153 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t2151, i32 %t2150)
  store { i64, ptr } %t2153, ptr %l1117
  br label %bb461
bb461:
  %t2154 = load { i64, ptr }, ptr %l1117, !tbaa !27
  store { i64, ptr } %t2154, ptr %l99, !tbaa !27
  %t2155 = load ptr, ptr %l0, !tbaa !29
  store ptr %t2155, ptr %l1118, !tbaa !29
  %t2156 = load ptr, ptr %l0, !tbaa !29
  %t2158 = getelementptr %"compiler/check:Checker", ptr %t2156, i32 0, i32 1
  %t2159 = load ptr, ptr %t2158, !tbaa !29
  %t2160 = load i64, ptr %l10, !tbaa !24
  %t2161 = load i64, ptr %l82, !tbaa !24
  %t2165 = call %"compiler/generic:varRow" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarAt(ptr %v0, ptr %t2159, i64 %t2160, i64 %t2161)
  store %"compiler/generic:varRow" %t2165, ptr %l1123
  br label %bb462
bb462:
  %t2166 = getelementptr %"compiler/generic:varRow", ptr %l1123, i32 0, i32 1
  %t2167 = load i32, ptr %t2166, !tbaa !23
  %t2168 = load ptr, ptr %l1118, !tbaa !29
  %t2170 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t2168, i32 %t2167)
  store { i64, ptr } %t2170, ptr %l1125
  br label %bb463
bb463:
  %t2171 = load { i64, ptr }, ptr %l1125, !tbaa !27
  store { i64, ptr } %t2171, ptr %l100, !tbaa !27
  %t2172 = load i64, ptr %l82, !tbaa !24
  %t2174 = getelementptr { i64, ptr }, ptr %l94, i32 0, i32 1
  %t2175 = load ptr, ptr %t2174, !tbaa !27
  %t2176 = getelementptr i1, ptr %t2175, i64 %t2172
  %t2177 = load i1, ptr %t2176, !tbaa !31
  %t2179 = xor i1 %t2177, true
  br i1 %t2179, label %bb464, label %bb465
bb464:
  %t2181 = load ptr, ptr %l0, !tbaa !29
  store ptr %t2181, ptr %l1129, !tbaa !29
  %t2182 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t2182, ptr %l1130
  %t2183 = load { i64, ptr }, ptr %l100, !tbaa !27
  %t2184 = load { i64, ptr }, ptr %l99, !tbaa !27
  %t2187 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeVarNotInferable(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t2183, { i64, ptr } %t2184)
  store %"compiler/diagmsg:Msg" %t2187, ptr %l1133
  br label %bb466
bb465:
  store %olang.scope zeroinitializer, ptr %s73
  %t2188 = load { i64, ptr }, ptr %l100, !tbaa !27
  %t2190 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v0, ptr %s73, { i64, ptr } %t2188, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d16, i32 0, i32 1) })
  store i1 %t2190, ptr %l1136
  br label %bb468
bb466:
  %t2191 = load ptr, ptr %l1129, !tbaa !29
  %t2192 = load %"compiler/source:Span", ptr %l1130
  %t2193 = load %"compiler/diagmsg:Msg", ptr %l1133
  %t2194 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t2191, %"compiler/source:Span" %t2192, %"compiler/diagmsg:Msg" %t2193)
  store i64 %t2194, ptr %l1134
  br label %bb467
bb467:
  br label %bb476
bb468:
  %t2195 = load i1, ptr %l1136, !tbaa !21
  br i1 %t2195, label %bb469, label %bb470
bb469:
  %t2196 = load ptr, ptr %l0, !tbaa !29
  store ptr %t2196, ptr %l1137, !tbaa !29
  %t2197 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t2197, ptr %l1138
  %t2198 = load { i64, ptr }, ptr %l99, !tbaa !27
  %t2199 = load { i64, ptr }, ptr %l100, !tbaa !27
  %t2202 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLengthNotInferable(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t2198, { i64, ptr } %t2199)
  store %"compiler/diagmsg:Msg" %t2202, ptr %l1141
  br label %bb471
bb470:
  %t2203 = load ptr, ptr %l0, !tbaa !29
  store ptr %t2203, ptr %l1143, !tbaa !29
  %t2204 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t2204, ptr %l1144
  %t2205 = load { i64, ptr }, ptr %l99, !tbaa !27
  %t2207 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeArgsNotInferable(ptr %v0, ptr %v0, { i64, ptr } %t2205)
  store %"compiler/diagmsg:Msg" %t2207, ptr %l1146
  br label %bb473
bb471:
  %t2208 = load ptr, ptr %l1137, !tbaa !29
  %t2209 = load %"compiler/source:Span", ptr %l1138
  %t2210 = load %"compiler/diagmsg:Msg", ptr %l1141
  %t2211 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t2208, %"compiler/source:Span" %t2209, %"compiler/diagmsg:Msg" %t2210)
  store i64 %t2211, ptr %l1142
  br label %bb472
bb472:
  br label %bb475
bb473:
  %t2212 = load ptr, ptr %l1143, !tbaa !29
  %t2213 = load %"compiler/source:Span", ptr %l1144
  %t2214 = load %"compiler/diagmsg:Msg", ptr %l1146
  %t2215 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t2212, %"compiler/source:Span" %t2213, %"compiler/diagmsg:Msg" %t2214)
  store i64 %t2215, ptr %l1147
  br label %bb474
bb474:
  br label %bb475
bb475:
  call void @__olang_scope_close(ptr %s73)
  br label %bb476
bb476:
  %t2216 = load ptr, ptr %l0, !tbaa !29
  %t2217 = load %"compiler/source:Span", ptr %l1
  %t2220 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v5, ptr %t2216, %"compiler/source:Span" %t2217)
  store ptr %t2220, ptr %l1150
  br label %bb477
bb477:
  call void @__olang_scope_close(ptr %s61)
  call void @__olang_scope_close(ptr %s0)
  %t2221 = load ptr, ptr %l1150, !tbaa !29
  store ptr %t2221, ptr %rv
  br label %ret
bb478:
  br label %bb479
bb479:
  %t2222 = load i64, ptr %l81, !tbaa !24
  %t2224 = add i64 %t2222, 1
  store i64 %t2224, ptr %l81, !tbaa !24
  br label %bb389
bb480:
  %t2226 = load ptr, ptr %l0, !tbaa !29
  store ptr %t2226, ptr %l1153, !tbaa !29
  %t2227 = load i64, ptr %l10, !tbaa !24
  store i64 %t2227, ptr %l1154, !tbaa !24
  %t2228 = load ptr, ptr %l0, !tbaa !29
  %t2230 = getelementptr %"compiler/check:Checker", ptr %t2228, i32 0, i32 1
  %t2231 = load ptr, ptr %t2230, !tbaa !29
  %t2233 = getelementptr %"compiler/generic:Program", ptr %t2231, i32 0, i32 2
  %t2234 = load ptr, ptr %lp16
  %t2235 = getelementptr %"compiler/generic:Binding", ptr %t2234, i32 0, i32 2
  %t2236 = load { i64, ptr }, ptr %t2235, !tbaa !27
  %t2239 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %v5, ptr %t2233, { i64, ptr } %t2236)
  store i32 %t2239, ptr %l1159
  br label %bb481
bb481:
  %t2240 = load %"compiler/source:Span", ptr %l2
  %t2241 = load ptr, ptr %l1153, !tbaa !29
  %t2242 = load i64, ptr %l1154, !tbaa !24
  %t2243 = load i32, ptr %l1159, !tbaa !23
  %t2245 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebound(ptr %v0, ptr %t2241, i64 %t2242, i32 %t2243, %"compiler/source:Span" %t2240)
  store i1 %t2245, ptr %l1161
  br label %bb482
bb482:
  %t2246 = load i1, ptr %l1161, !tbaa !21
  %t2247 = xor i1 %t2246, true
  br i1 %t2247, label %bb483, label %bb484
bb483:
  %t2249 = load ptr, ptr %l0, !tbaa !29
  %t2250 = load %"compiler/source:Span", ptr %l1
  %t2253 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v5, ptr %t2249, %"compiler/source:Span" %t2250)
  store ptr %t2253, ptr %l1165
  br label %bb485
bb484:
  br label %bb486
bb485:
  call void @__olang_scope_close(ptr %s0)
  %t2254 = load ptr, ptr %l1165, !tbaa !29
  store ptr %t2254, ptr %rv
  br label %ret
bb486:
  %t2255 = load ptr, ptr %l0, !tbaa !29
  %t2257 = getelementptr %"compiler/check:Checker", ptr %t2255, i32 0, i32 22
  %t2258 = load i64, ptr %l3, !tbaa !24
  %t2261 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t2257, i64 %t2258)
  %t2262 = extractvalue { i32, i64 } %t2261, 1
  %t2263 = extractvalue { i32, i64 } %t2261, 0
  store i32 %t2263, ptr %l1171
  %t2264 = icmp ne i32 %t2263, 0
  br i1 %t2264, label %bb488, label %ok.2265, !prof !99
ok.2265:
  store i64 %t2262, ptr %l1170
  br label %bb487
bb487:
  %t2266 = load i64, ptr %l1170, !tbaa !24
  store i64 %t2266, ptr %l1166, !tbaa !24
  br label %bb490
bb488:
  br label %bb489
bb489:
  store i64 0, ptr %l1166, !tbaa !24
  br label %bb490
bb490:
  %t2267 = load i64, ptr %l1166, !tbaa !24
  store i64 %t2267, ptr %l101, !tbaa !24
  %t2268 = load i64, ptr %l101, !tbaa !24
  %t2270 = icmp sgt i64 %t2268, 1000
  br i1 %t2270, label %bb491, label %bb492
bb491:
  %t2272 = load ptr, ptr %l0, !tbaa !29
  %t2274 = getelementptr %"compiler/check:Checker", ptr %t2272, i32 0, i32 1
  %t2275 = load ptr, ptr %t2274, !tbaa !29
  %t2277 = getelementptr %"compiler/generic:Program", ptr %t2275, i32 0, i32 0
  %t2278 = load ptr, ptr %t2277, !tbaa !29
  %t2280 = getelementptr %"compiler/load:Loader", ptr %t2278, i32 0, i32 4
  %t2281 = load ptr, ptr %t2280, !tbaa !29
  store ptr %t2281, ptr %l1177, !tbaa !29
  %t2282 = load ptr, ptr %l0, !tbaa !29
  %t2283 = load %"compiler/source:Span", ptr %l2
  %t2286 = call { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eat(ptr %v0, ptr %t2282, %"compiler/source:Span" %t2283)
  store { i64, [3 x i64] } %t2286, ptr %l1180
  br label %bb493
bb492:
  br label %bb497
bb493:
  %t2287 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnboundedInstantiation(ptr %v0)
  store %"compiler/diagmsg:Msg" %t2287, ptr %l1181
  br label %bb494
bb494:
  %t2288 = load ptr, ptr %l1177, !tbaa !29
  %t2289 = load { i64, [3 x i64] }, ptr %l1180
  %t2290 = load %"compiler/diagmsg:Msg", ptr %l1181
  %t2291 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrorOncePerLine(ptr %v0, ptr %v0, ptr %t2288, { i64, [3 x i64] } %t2289, %"compiler/diagmsg:Msg" %t2290)
  store i64 %t2291, ptr %l1182
  br label %bb495
bb495:
  %t2292 = load ptr, ptr %l0, !tbaa !29
  %t2293 = load %"compiler/source:Span", ptr %l1
  %t2296 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v5, ptr %t2292, %"compiler/source:Span" %t2293)
  store ptr %t2296, ptr %l1185
  br label %bb496
bb496:
  call void @__olang_scope_close(ptr %s0)
  %t2297 = load ptr, ptr %l1185, !tbaa !29
  store ptr %t2297, ptr %rv
  br label %ret
bb497:
  %t2298 = load ptr, ptr %l0, !tbaa !29
  %t2300 = getelementptr %"compiler/check:Checker", ptr %t2298, i32 0, i32 1
  %t2301 = load ptr, ptr %t2300, !tbaa !29
  store ptr %t2301, ptr %l1187, !tbaa !29
  %t2302 = load i64, ptr %l3, !tbaa !24
  store i64 %t2302, ptr %l1188, !tbaa !24
  %t2303 = load ptr, ptr %l0, !tbaa !29
  %t2305 = getelementptr %"compiler/check:Checker", ptr %t2303, i32 0, i32 1
  %t2306 = load ptr, ptr %t2305, !tbaa !29
  %t2308 = getelementptr %"compiler/generic:Program", ptr %t2306, i32 0, i32 2
  %t2309 = load ptr, ptr %lp16
  %t2310 = getelementptr %"compiler/generic:Binding", ptr %t2309, i32 0, i32 2
  %t2311 = load { i64, ptr }, ptr %t2310, !tbaa !27
  %t2314 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %v5, ptr %t2308, { i64, ptr } %t2311)
  store i32 %t2314, ptr %l1193
  br label %bb498
bb498:
  %t2315 = load ptr, ptr %l0, !tbaa !29
  %t2316 = load i64, ptr %l3, !tbaa !24
  %t2319 = call { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efnNameAt(ptr %v0, ptr %t2315, i64 %t2316)
  store { i64, [3 x i64] } %t2319, ptr %l1196
  br label %bb499
bb499:
  %t2320 = load ptr, ptr %l1187, !tbaa !29
  %t2321 = load i64, ptr %l1188, !tbaa !24
  %t2322 = load i32, ptr %l1193, !tbaa !23
  %t2323 = load { i64, [3 x i64] }, ptr %l1196
  %t2324 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnTooDeep(ptr %v0, ptr %t2320, i64 %t2321, i32 %t2322, { i64, [3 x i64] } %t2323)
  store i1 %t2324, ptr %l1197
  br label %bb500
bb500:
  %t2325 = load i1, ptr %l1197, !tbaa !21
  br i1 %t2325, label %bb501, label %bb502
bb501:
  %t2326 = load ptr, ptr %l0, !tbaa !29
  %t2327 = load %"compiler/source:Span", ptr %l1
  %t2330 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v5, ptr %t2326, %"compiler/source:Span" %t2327)
  store ptr %t2330, ptr %l1200
  br label %bb503
bb502:
  br label %bb504
bb503:
  call void @__olang_scope_close(ptr %s0)
  %t2331 = load ptr, ptr %l1200, !tbaa !29
  store ptr %t2331, ptr %rv
  br label %ret
bb504:
  %t2332 = load ptr, ptr %l0, !tbaa !29
  %t2334 = getelementptr %"compiler/check:Checker", ptr %t2332, i32 0, i32 1
  %t2335 = load ptr, ptr %t2334, !tbaa !29
  %t2337 = getelementptr %"compiler/generic:Program", ptr %t2335, i32 0, i32 51
  %t2338 = load %"compiler/generic:Origin", ptr %t2337
  store %"compiler/generic:Origin" %t2338, ptr %l102
  %t2340 = load ptr, ptr %l0, !tbaa !29
  %t2342 = getelementptr %"compiler/check:Checker", ptr %t2340, i32 0, i32 1
  %t2343 = load ptr, ptr %t2342, !tbaa !29
  store ptr %t2343, ptr %l1205, !tbaa !29
  %t2344 = load ptr, ptr %l0, !tbaa !29
  %t2345 = load %"compiler/source:Span", ptr %l2
  %t2348 = call %"compiler/generic:Origin" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eorigin(ptr %v0, ptr %t2344, %"compiler/source:Span" %t2345)
  store %"compiler/generic:Origin" %t2348, ptr %l1208
  br label %bb505
bb505:
  %t2349 = load %"compiler/generic:Origin", ptr %l1208
  %t2350 = load ptr, ptr %l1205, !tbaa !29
  %t2351 = getelementptr %"compiler/generic:Program", ptr %t2350, i32 0, i32 51
  store %"compiler/generic:Origin" %t2349, ptr %t2351
  %t2352 = load ptr, ptr %l0, !tbaa !29
  %t2354 = getelementptr %"compiler/check:Checker", ptr %t2352, i32 0, i32 1
  %t2355 = load ptr, ptr %t2354, !tbaa !29
  store ptr %t2355, ptr %l1210, !tbaa !29
  %t2356 = load i64, ptr %l3, !tbaa !24
  store i64 %t2356, ptr %l1211, !tbaa !24
  %t2357 = load ptr, ptr %l0, !tbaa !29
  %t2359 = getelementptr %"compiler/check:Checker", ptr %t2357, i32 0, i32 1
  %t2360 = load ptr, ptr %t2359, !tbaa !29
  %t2362 = getelementptr %"compiler/generic:Program", ptr %t2360, i32 0, i32 2
  %t2363 = load ptr, ptr %lp16
  %t2364 = getelementptr %"compiler/generic:Binding", ptr %t2363, i32 0, i32 2
  %t2365 = load { i64, ptr }, ptr %t2364, !tbaa !27
  %t2368 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %v5, ptr %t2362, { i64, ptr } %t2365)
  store i32 %t2368, ptr %l1216
  br label %bb506
bb506:
  %t2369 = load ptr, ptr %l1210, !tbaa !29
  %t2370 = load i64, ptr %l1211, !tbaa !24
  %t2371 = load i32, ptr %l1216, !tbaa !23
  %t2372 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnInstance(ptr %v0, ptr %t2369, i64 %t2370, i32 %t2371)
  store i64 %t2372, ptr %l1217
  br label %bb507
bb507:
  %t2373 = load i64, ptr %l1217, !tbaa !24
  store i64 %t2373, ptr %l103, !tbaa !24
  %t2374 = load ptr, ptr %l0, !tbaa !29
  %t2376 = getelementptr %"compiler/check:Checker", ptr %t2374, i32 0, i32 1
  %t2377 = load ptr, ptr %t2376, !tbaa !29
  %t2378 = load %"compiler/generic:Origin", ptr %l102
  %t2381 = getelementptr %"compiler/generic:Program", ptr %t2377, i32 0, i32 51
  store %"compiler/generic:Origin" %t2378, ptr %t2381
  %t2382 = load ptr, ptr %l0, !tbaa !29
  store ptr %t2382, ptr %l1221, !tbaa !29
  %t2383 = load ptr, ptr %l0, !tbaa !29
  %t2385 = getelementptr %"compiler/check:Checker", ptr %t2383, i32 0, i32 1
  %t2386 = load ptr, ptr %t2385, !tbaa !29
  %t2387 = load i64, ptr %l103, !tbaa !24
  %t2390 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceSig(ptr %v0, ptr %t2386, i64 %t2387)
  store i32 %t2390, ptr %l1225
  br label %bb508
bb508:
  %t2391 = load %"compiler/source:Span", ptr %l2
  %t2392 = load ptr, ptr %l1221, !tbaa !29
  %t2393 = load i32, ptr %l1225, !tbaa !23
  %t2395 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einstancesMet(ptr %v0, ptr %t2392, i32 %t2393, %"compiler/source:Span" %t2391)
  store i1 %t2395, ptr %l1227
  br label %bb509
bb509:
  %t2396 = load i1, ptr %l1227, !tbaa !21
  %t2397 = xor i1 %t2396, true
  br i1 %t2397, label %bb510, label %bb511
bb510:
  %t2399 = load ptr, ptr %l0, !tbaa !29
  %t2400 = load %"compiler/source:Span", ptr %l1
  %t2403 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v5, ptr %t2399, %"compiler/source:Span" %t2400)
  store ptr %t2403, ptr %l1231
  br label %bb512
bb511:
  br label %bb513
bb512:
  call void @__olang_scope_close(ptr %s0)
  %t2404 = load ptr, ptr %l1231, !tbaa !29
  store ptr %t2404, ptr %rv
  br label %ret
bb513:
  %t2405 = load ptr, ptr %l0, !tbaa !29
  %t2407 = getelementptr %"compiler/check:Checker", ptr %t2405, i32 0, i32 20
  %t2408 = load i64, ptr %l103, !tbaa !24
  %t2411 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %v0, ptr %t2407, i64 %t2408)
  store i1 %t2411, ptr %l1235
  br label %bb514
bb514:
  %t2412 = load i1, ptr %l1235, !tbaa !21
  %t2413 = xor i1 %t2412, true
  br i1 %t2413, label %bb515, label %bb516
bb515:
  %t2415 = load ptr, ptr %l0, !tbaa !29
  %t2417 = getelementptr %"compiler/check:Checker", ptr %t2415, i32 0, i32 22
  %t2418 = load i64, ptr %l3, !tbaa !24
  %t2419 = load i64, ptr %l101, !tbaa !24
  %t2421 = add i64 %t2419, 1
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %t2417, i64 %t2418, i64 %t2421)
  br label %bb517
bb516:
  br label %bb518
bb517:
  br label %bb518
bb518:
  %t2425 = load ptr, ptr %l0, !tbaa !29
  %t2426 = load i64, ptr %l103, !tbaa !24
  %t2429 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efnBody(ptr %v0, ptr %t2425, i64 %t2426)
  store i64 %t2429, ptr %l1244
  br label %bb519
bb519:
  %t2430 = load i64, ptr %l1244, !tbaa !24
  store i64 %t2430, ptr %l104, !tbaa !24
  %t2431 = load ptr, ptr %l0, !tbaa !29
  %t2433 = getelementptr %"compiler/check:Checker", ptr %t2431, i32 0, i32 1
  %t2434 = load ptr, ptr %t2433, !tbaa !29
  %t2436 = getelementptr %"compiler/generic:Program", ptr %t2434, i32 0, i32 2
  store ptr %t2436, ptr %l1247, !tbaa !29
  %t2437 = load ptr, ptr %l0, !tbaa !29
  %t2439 = getelementptr %"compiler/check:Checker", ptr %t2437, i32 0, i32 1
  %t2440 = load ptr, ptr %t2439, !tbaa !29
  %t2442 = getelementptr %"compiler/generic:Program", ptr %t2440, i32 0, i32 2
  store ptr %t2442, ptr %l1250, !tbaa !29
  %t2443 = load ptr, ptr %l0, !tbaa !29
  %t2445 = getelementptr %"compiler/check:Checker", ptr %t2443, i32 0, i32 1
  %t2446 = load ptr, ptr %t2445, !tbaa !29
  %t2447 = load i64, ptr %l103, !tbaa !24
  %t2450 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceSig(ptr %v0, ptr %t2446, i64 %t2447)
  store i32 %t2450, ptr %l1254
  br label %bb520
bb520:
  %t2451 = load ptr, ptr %l1250, !tbaa !29
  %t2452 = load i32, ptr %l1254, !tbaa !23
  %t2453 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t2451, i32 %t2452)
  store i32 %t2453, ptr %l1255
  br label %bb521
bb521:
  %t2454 = load ptr, ptr %l1247, !tbaa !29
  %t2455 = load i32, ptr %l1255, !tbaa !23
  %t2456 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t2454, i32 %t2455)
  store { i64, ptr } %t2456, ptr %l1256
  br label %bb522
bb522:
  %t2457 = load { i64, ptr }, ptr %l1256, !tbaa !27
  store { i64, ptr } %t2457, ptr %l105, !tbaa !27
  store ptr %l25, ptr %l106, !tbaa !29
  store i64 0, ptr %l107, !tbaa !24
  br label %bb523
bb523:
  %t2459 = load i64, ptr %l107, !tbaa !24
  store i64 %t2459, ptr %l1258, !tbaa !24
  %t2460 = load ptr, ptr %l106, !tbaa !29
  %t2462 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t2460)
  store i64 %t2462, ptr %l1260
  br label %bb524
bb524:
  %t2463 = load i64, ptr %l1258, !tbaa !24
  %t2464 = load i64, ptr %l1260, !tbaa !24
  %t2465 = icmp slt i64 %t2463, %t2464
  %t2467 = xor i1 %t2465, true
  br i1 %t2467, label %bb525, label %bb526
bb525:
  br label %bb549
bb526:
  br label %bb527
bb527:
  %t2469 = load ptr, ptr %l106, !tbaa !29
  %t2470 = load i64, ptr %l107, !tbaa !24
  %t2473 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t2469, i64 %t2470)
  store i64 %t2473, ptr %l1265
  br label %bb528
bb528:
  %t2474 = load i64, ptr %l1265, !tbaa !24
  store i64 %t2474, ptr %l108, !tbaa !24
  %t2475 = load i64, ptr %l108, !tbaa !24
  %t2476 = load i64, ptr %l26, !tbaa !24
  %t2479 = add i64 %t2475, %t2476
  store i64 %t2479, ptr %l109, !tbaa !24
  %t2481 = load i64, ptr %l109, !tbaa !24
  %t2482 = load { i64, ptr }, ptr %l105, !tbaa !27
  %t2484 = extractvalue { i64, ptr } %t2482, 0
  %t2487 = icmp slt i64 %t2481, %t2484
  br i1 %t2487, label %bb529, label %bb530
bb529:
  %t2489 = load i64, ptr %l109, !tbaa !24
  %t2490 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t2492 = extractvalue { i64, ptr } %t2490, 0
  %t2495 = icmp slt i64 %t2489, %t2492
  store i1 %t2495, ptr %l1273, !tbaa !21
  br label %bb531
bb530:
  store i1 false, ptr %l1273, !tbaa !21
  br label %bb531
bb531:
  %t2497 = load i1, ptr %l1273, !tbaa !21
  br i1 %t2497, label %bb532, label %bb533
bb532:
  %t2498 = load ptr, ptr %l0, !tbaa !29
  %t2500 = getelementptr %"compiler/check:Checker", ptr %t2498, i32 0, i32 1
  %t2501 = load ptr, ptr %t2500, !tbaa !29
  %t2503 = getelementptr %"compiler/generic:Program", ptr %t2501, i32 0, i32 2
  %t2504 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t2504, ptr %l1282, !tbaa !27
  %t2505 = load i64, ptr %l109, !tbaa !24
  %t2507 = getelementptr { i64, ptr }, ptr %l1282, i32 0, i32 1
  %t2508 = load ptr, ptr %t2507, !tbaa !27
  %t2509 = getelementptr i32, ptr %t2508, i64 %t2505
  %t2510 = load i32, ptr %t2509, !tbaa !33
  %t2513 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t2503, i32 %t2510)
  store i32 %t2513, ptr %l1285
  br label %bb534
bb533:
  store i1 false, ptr %l1278, !tbaa !21
  br label %bb535
bb534:
  %t2514 = load i32, ptr %l1285, !range !{i32 0, i32 33}
  %t2516 = trunc i64 21 to i32
  %t2517 = icmp eq i32 %t2514, %t2516
  store i1 %t2517, ptr %l1278, !tbaa !21
  br label %bb535
bb535:
  %t2519 = load i1, ptr %l1278, !tbaa !21
  br i1 %t2519, label %bb536, label %bb537
bb536:
  %t2520 = load ptr, ptr %l0, !tbaa !29
  store ptr %t2520, ptr %l1289, !tbaa !29
  %t2521 = load ptr, ptr %l0, !tbaa !29
  %t2523 = getelementptr %"compiler/check:Checker", ptr %t2521, i32 0, i32 1
  %t2524 = load ptr, ptr %t2523, !tbaa !29
  %t2526 = getelementptr %"compiler/generic:Program", ptr %t2524, i32 0, i32 2
  %t2527 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t2527, ptr %l1293, !tbaa !27
  %t2528 = load i64, ptr %l109, !tbaa !24
  %t2530 = getelementptr { i64, ptr }, ptr %l1293, i32 0, i32 1
  %t2531 = load ptr, ptr %t2530, !tbaa !27
  %t2532 = getelementptr i32, ptr %t2531, i64 %t2528
  %t2533 = load i32, ptr %t2532, !tbaa !33
  %t2536 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t2526, i32 %t2533)
  store i32 %t2536, ptr %l1296
  br label %bb538
bb537:
  store i1 false, ptr %l1288, !tbaa !21
  br label %bb540
bb538:
  %t2537 = load i64, ptr %l10, !tbaa !24
  %t2538 = load ptr, ptr %l1289, !tbaa !29
  %t2539 = load i32, ptr %l1296, !tbaa !23
  %t2541 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elistMentions(ptr %v0, ptr %t2538, i32 %t2539, i64 %t2537)
  store i1 %t2541, ptr %l1298
  br label %bb539
bb539:
  %t2542 = load i1, ptr %l1298, !tbaa !21
  store i1 %t2542, ptr %l1288, !tbaa !21
  br label %bb540
bb540:
  %t2543 = load i1, ptr %l1288, !tbaa !21
  br i1 %t2543, label %bb541, label %bb542
bb541:
  %t2544 = load ptr, ptr %lp24
  store ptr %t2544, ptr %l1299, !tbaa !29
  %t2545 = load i64, ptr %l108, !tbaa !24
  store i64 %t2545, ptr %l1300, !tbaa !24
  %t2546 = load ptr, ptr %l0, !tbaa !29
  store ptr %t2546, ptr %l1301, !tbaa !29
  %t2547 = load ptr, ptr %lp24
  %t2548 = load i64, ptr %l108, !tbaa !24
  %t2551 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_3f_26_3e_2eAt__H2e4a6474e10b73ca754517844b8d7700(ptr %v5, ptr %v5, ptr %t2547, i64 %t2548)
  store ptr %t2551, ptr %l1304
  br label %bb543
bb542:
  br label %bb547
bb543:
  %t2552 = load ptr, ptr %l0, !tbaa !29
  %t2554 = getelementptr %"compiler/check:Checker", ptr %t2552, i32 0, i32 1
  %t2555 = load ptr, ptr %t2554, !tbaa !29
  %t2557 = getelementptr %"compiler/generic:Program", ptr %t2555, i32 0, i32 2
  %t2558 = load { i64, ptr }, ptr %l105, !tbaa !27
  store { i64, ptr } %t2558, ptr %l1308, !tbaa !27
  %t2559 = load i64, ptr %l109, !tbaa !24
  %t2561 = getelementptr { i64, ptr }, ptr %l1308, i32 0, i32 1
  %t2562 = load ptr, ptr %t2561, !tbaa !27
  %t2563 = getelementptr i32, ptr %t2562, i64 %t2559
  %t2564 = load i32, ptr %t2563, !tbaa !33
  %t2567 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t2557, i32 %t2564)
  store i32 %t2567, ptr %l1311
  br label %bb544
bb544:
  %t2568 = load ptr, ptr %l1301, !tbaa !29
  %t2569 = load ptr, ptr %l1304, !tbaa !29
  %t2570 = load i32, ptr %l1311, !tbaa !23
  %t2571 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elambdaErrs(ptr %v0, ptr %v5, ptr %v5, ptr %t2568, ptr %t2569, i32 %t2570)
  store ptr %t2571, ptr %l1312
  br label %bb545
bb545:
  %t2572 = load ptr, ptr %l1299, !tbaa !29
  %t2573 = load i64, ptr %l1300, !tbaa !24
  %t2574 = load ptr, ptr %l1312, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_3f_26_3e_2eSet_H54ebfdc15a9c097858a2e264494e7d5a(ptr %v5, ptr %v5, ptr %t2572, i64 %t2573, ptr %t2574)
  br label %bb546
bb546:
  br label %bb547
bb547:
  br label %bb548
bb548:
  %t2575 = load i64, ptr %l107, !tbaa !24
  %t2577 = add i64 %t2575, 1
  store i64 %t2577, ptr %l107, !tbaa !24
  br label %bb523
bb549:
  %t2579 = load ptr, ptr %lp24
  %t2581 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_3f_26_3e_2eLen_Hc575045927fec77698bb4606712f5690(ptr %v5, ptr %t2579)
  store i64 %t2581, ptr %l1316
  br label %bb550
bb550:
  %t2582 = load ptr, ptr %l0, !tbaa !29
  %t2584 = getelementptr %"compiler/check:Checker", ptr %t2582, i32 0, i32 0
  %t2585 = load ptr, ptr %t2584, !tbaa !29
  store ptr %t2585, ptr %l1318, !tbaa !29
  %t2586 = load i64, ptr %l1316, !tbaa !24
  %t2587 = icmp sge i64 %t2586, 0
  br i1 %t2587, label %bb551, label %bb552
bb551:
  %t2589 = load i64, ptr %l1316, !tbaa !24
  %t2590 = icmp sle i64 %t2589, 1152921504606846975
  br i1 %t2590, label %bb553, label %bb554
bb552:
  call void @__olang_check_failed(ptr @olang_loc_f2400520286f812c_d0a82b3f931d6b40)
  unreachable
bb553:
  %t2592 = load i64, ptr %l1316, !tbaa !24
  %t2593 = mul i64 %t2592, 8
  %t2594 = call ptr @__olang_scope_alloc(ptr %v5, i64 %t2593)
  %t2595 = load ptr, ptr %l1318, !tbaa !29
  store i64 0, ptr %t2596
  br label %fill.2597
fill.2597:
  %t2600 = load i64, ptr %t2596
  %t2601 = icmp slt i64 %t2600, %t2592
  br i1 %t2601, label %fillb.2598, label %filld.2599
fillb.2598:
  %t2602 = getelementptr ptr, ptr %t2594, i64 %t2600
  store ptr %t2595, ptr %t2602
  %t2603 = add i64 %t2600, 1
  store i64 %t2603, ptr %t2596
  br label %fill.2597
filld.2599:
  %t2604 = insertvalue { i64, ptr } undef, i64 %t2592, 0
  %t2605 = insertvalue { i64, ptr } %t2604, ptr %t2594, 1
  %t2606 = call ptr @__olang_scope_alloc_a(ptr %v5, i64 16, i64 8)
  store ptr %t2606, ptr %lp110
  %t2608 = load ptr, ptr %lp110
  store { i64, ptr } %t2605, ptr %t2608, !tbaa !27
  store i64 0, ptr %l111, !tbaa !24
  %t2609 = load ptr, ptr %lp24
  %t2611 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_3f_26_3e_2eLen_Hc575045927fec77698bb4606712f5690(ptr %v5, ptr %t2609)
  store i64 %t2611, ptr %l1323
  br label %bb555
bb554:
  call void @__olang_check_failed(ptr @olang_loc_f2400520286f812c_d0a82b3f931d6b40)
  unreachable
bb555:
  %t2612 = load i64, ptr %l1323, !tbaa !24
  store i64 %t2612, ptr %l112, !tbaa !24
  store i64 1, ptr %l113, !tbaa !24
  %t2613 = load i64, ptr %l112, !tbaa !24
  %t2614 = load i64, ptr %l111, !tbaa !24
  %t2617 = icmp sgt i64 %t2613, %t2614
  br i1 %t2617, label %bb556, label %bb557
bb556:
  %t2619 = load i64, ptr %l113, !tbaa !24
  %t2621 = icmp sgt i64 %t2619, 0
  br i1 %t2621, label %bb558, label %bb559
bb557:
  store i64 0, ptr %l1327, !tbaa !24
  br label %bb561
bb558:
  %t2623 = load i64, ptr %l112, !tbaa !24
  %t2624 = load i64, ptr %l111, !tbaa !24
  %t2627 = sub i64 %t2623, %t2624
  %t2628 = load i64, ptr %l113, !tbaa !24
  %t2631 = add i64 %t2627, %t2628
  %t2633 = sub i64 %t2631, 1
  %t2634 = load i64, ptr %l113, !tbaa !24
  %t2637 = sdiv i64 %t2633, %t2634
  store i64 %t2637, ptr %l1330, !tbaa !24
  br label %bb560
bb559:
  store i64 0, ptr %l1330, !tbaa !24
  br label %bb560
bb560:
  %t2639 = load i64, ptr %l1330, !tbaa !24
  store i64 %t2639, ptr %l1327, !tbaa !24
  br label %bb561
bb561:
  %t2640 = load i64, ptr %l1327, !tbaa !24
  store i64 %t2640, ptr %l114, !tbaa !24
  store i64 0, ptr %l115, !tbaa !24
  br label %bb562
bb562:
  %t2641 = load i64, ptr %l115, !tbaa !24
  %t2642 = load i64, ptr %l114, !tbaa !24
  %t2645 = icmp slt i64 %t2641, %t2642
  %t2647 = xor i1 %t2645, true
  br i1 %t2647, label %bb563, label %bb564
bb563:
  br label %bb571
bb564:
  br label %bb565
bb565:
  %t2649 = load i64, ptr %l111, !tbaa !24
  %t2650 = load i64, ptr %l115, !tbaa !24
  %t2651 = load i64, ptr %l113, !tbaa !24
  %t2654 = mul i64 %t2650, %t2651
  %t2657 = add i64 %t2649, %t2654
  store i64 %t2657, ptr %l116, !tbaa !24
  %t2659 = load ptr, ptr %lp24
  %t2660 = load i64, ptr %l116, !tbaa !24
  %t2663 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_3f_26_3e_2eAt__H2e4a6474e10b73ca754517844b8d7700(ptr %v5, ptr %v5, ptr %t2659, i64 %t2660)
  store ptr %t2663, ptr %l1350
  br label %bb566
bb566:
  %t2664 = load ptr, ptr %l1350, !tbaa !29
  store ptr %t2664, ptr %l117, !tbaa !29
  %t2665 = load ptr, ptr %l117, !tbaa !29
  %t2667 = icmp eq ptr %t2665, null
  %t2669 = xor i1 %t2667, true
  br i1 %t2669, label %bb567, label %bb568
bb567:
  %t2671 = load i64, ptr %l116, !tbaa !24
  %t2672 = load ptr, ptr %l117, !tbaa !29
  %t2674 = load ptr, ptr %lp110
  %t2676 = getelementptr { i64, ptr }, ptr %t2674, i32 0, i32 1
  %t2677 = load ptr, ptr %t2676, !tbaa !27
  %t2678 = getelementptr ptr, ptr %t2677, i64 %t2671
  store ptr %t2672, ptr %t2678, !tbaa !39
  br label %bb569
bb568:
  br label %bb569
bb569:
  br label %bb570
bb570:
  %t2679 = load i64, ptr %l115, !tbaa !24
  %t2681 = add i64 %t2679, 1
  store i64 %t2681, ptr %l115, !tbaa !24
  br label %bb562
bb571:
  %t2683 = load ptr, ptr %l0, !tbaa !29
  %t2684 = load { i64, ptr }, ptr %l8, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetOrder(ptr %v0, ptr %s0, ptr %t2683, { i64, ptr } %t2684)
  br label %bb572
bb572:
  %t2687 = load ptr, ptr %l0, !tbaa !29
  store ptr %t2687, ptr %l1360, !tbaa !29
  %t2688 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t2688, ptr %l1361
  %t2689 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t2689, ptr %l1362
  %t2690 = load ptr, ptr %l0, !tbaa !29
  %t2692 = getelementptr %"compiler/check:Checker", ptr %t2690, i32 0, i32 1
  %t2693 = load ptr, ptr %t2692, !tbaa !29
  %t2694 = load i64, ptr %l103, !tbaa !24
  %t2697 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceSig(ptr %v0, ptr %t2693, i64 %t2694)
  store i32 %t2697, ptr %l1366
  br label %bb573
bb573:
  %t2698 = load i64, ptr %l104, !tbaa !24
  %t2700 = trunc i64 %t2698 to i32
  store { i64, [3 x i64] } zeroinitializer, ptr %t2702
  %t2703 = getelementptr { i64, [3 x i64] }, ptr %t2702, i32 0, i32 0
  store i64 0, ptr %t2703
  %t2705 = insertvalue { i32 } undef, i32 %t2700, 0
  %t2706 = getelementptr { i64, [3 x i64] }, ptr %t2702, i32 0, i32 1
  store { i32 } %t2705, ptr %t2706
  %t2707 = load { i64, [3 x i64] }, ptr %t2702
  %t2709 = call ptr @__olang_scope_alloc_a(ptr %v5, i64 32, i64 8)
  store { i64, [3 x i64] } %t2707, ptr %t2709
  %t2710 = load i64, ptr %l3, !tbaa !24
  %t2711 = load ptr, ptr %l4, !tbaa !29
  %t2712 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t2713 = load ptr, ptr %lp110
  %t2714 = load { i64, ptr }, ptr %t2713, !tbaa !27
  %t2715 = load ptr, ptr %l1360, !tbaa !29
  %t2716 = load %"compiler/source:Span", ptr %l1361
  %t2717 = load %"compiler/source:Span", ptr %l1362
  %t2718 = load i32, ptr %l1366, !tbaa !23
  %t2724 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecallBody(ptr %v0, ptr %v5, ptr %v1, ptr %v0, ptr %v5, ptr %v5, ptr %t2715, %"compiler/source:Span" %t2716, %"compiler/source:Span" %t2717, i32 %t2718, ptr %t2709, i64 %t2710, ptr %t2711, { i64, ptr } %t2712, { i64, ptr } %t2714)
  store ptr %t2724, ptr %l1376
  br label %bb574
bb574:
  %t2725 = load ptr, ptr %l1376, !tbaa !29
  store ptr %t2725, ptr %l118, !tbaa !29
  %t2726 = load ptr, ptr %l4, !tbaa !29
  %t2728 = icmp eq ptr %t2726, null
  %t2730 = xor i1 %t2728, true
  br i1 %t2730, label %bb575, label %bb576
bb575:
  %t2732 = load ptr, ptr %l0, !tbaa !29
  %t2734 = getelementptr %"compiler/check:Checker", ptr %t2732, i32 0, i32 1
  %t2735 = load ptr, ptr %t2734, !tbaa !29
  %t2737 = getelementptr %"compiler/generic:Program", ptr %t2735, i32 0, i32 2
  store ptr %t2737, ptr %l1382, !tbaa !29
  %t2738 = load ptr, ptr %l0, !tbaa !29
  store ptr %t2738, ptr %l1383, !tbaa !29
  %t2739 = load ptr, ptr %l4, !tbaa !29
  %t2742 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t2739)
  store i32 %t2742, ptr %l1386
  br label %bb577
bb576:
  br label %bb595
bb577:
  %t2743 = load ptr, ptr %l1383, !tbaa !29
  %t2744 = load i32, ptr %l1386, !tbaa !23
  %t2745 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t2743, i32 %t2744)
  store i32 %t2745, ptr %l1387
  br label %bb578
bb578:
  %t2746 = load ptr, ptr %l1382, !tbaa !29
  %t2747 = load i32, ptr %l1387, !tbaa !23
  %t2748 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t2746, i32 %t2747)
  store i32 %t2748, ptr %l1388
  br label %bb579
bb579:
  %t2749 = load i32, ptr %l1388, !tbaa !23
  store i32 %t2749, ptr %l119, !tbaa !23
  %t2750 = load ptr, ptr %l0, !tbaa !29
  %t2752 = getelementptr %"compiler/check:Checker", ptr %t2750, i32 0, i32 1
  %t2753 = load ptr, ptr %t2752, !tbaa !29
  %t2754 = load i32, ptr %l119, !tbaa !23
  %t2757 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eExtends(ptr %v0, ptr %t2753, i32 %t2754)
  store i1 %t2757, ptr %l1392
  br label %bb580
bb580:
  %t2758 = load i1, ptr %l1392, !tbaa !21
  br i1 %t2758, label %bb581, label %bb582
bb581:
  %t2759 = load ptr, ptr %l0, !tbaa !29
  %t2760 = load i32, ptr %l119, !tbaa !23
  %t2763 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earrayOf(ptr %v0, ptr %t2759, i32 %t2760)
  store i32 %t2763, ptr %l1396
  br label %bb583
bb582:
  store i1 false, ptr %l1393, !tbaa !21
  br label %bb584
bb583:
  %t2764 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t2765 = load i32, ptr %l1396, !tbaa !23
  %t2767 = icmp ne i32 %t2765, %t2764
  store i1 %t2767, ptr %l1393, !tbaa !21
  br label %bb584
bb584:
  %t2769 = load i1, ptr %l1393, !tbaa !21
  br i1 %t2769, label %bb585, label %bb586
bb585:
  %t2770 = load ptr, ptr %l0, !tbaa !29
  %t2772 = getelementptr %"compiler/check:Checker", ptr %t2770, i32 0, i32 1
  %t2773 = load ptr, ptr %t2772, !tbaa !29
  %t2775 = getelementptr %"compiler/generic:Program", ptr %t2773, i32 0, i32 2
  store ptr %t2775, ptr %l1402, !tbaa !29
  %t2776 = load ptr, ptr %l118, !tbaa !29
  %t2779 = call i32 @compiler_2fcheck_2etypeOf(ptr %v5, ptr %t2776)
  store i32 %t2779, ptr %l1405
  br label %bb587
bb586:
  store i1 false, ptr %l1399, !tbaa !21
  br label %bb590
bb587:
  %t2780 = load ptr, ptr %l0, !tbaa !29
  %t2782 = getelementptr %"compiler/check:Checker", ptr %t2780, i32 0, i32 1
  %t2783 = load ptr, ptr %t2782, !tbaa !29
  %t2785 = getelementptr %"compiler/generic:Program", ptr %t2783, i32 0, i32 2
  %t2786 = load i32, ptr %l119, !tbaa !23
  %t2789 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %t2785, i32 %t2786)
  store i32 %t2789, ptr %l1410
  br label %bb588
bb588:
  %t2790 = load ptr, ptr %l1402, !tbaa !29
  %t2791 = load i32, ptr %l1405, !tbaa !23
  %t2792 = load i32, ptr %l1410, !tbaa !23
  %t2793 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t2790, i32 %t2791, i32 %t2792)
  store i1 %t2793, ptr %l1411
  br label %bb589
bb589:
  %t2794 = load i1, ptr %l1411, !tbaa !21
  store i1 %t2794, ptr %l1399, !tbaa !21
  br label %bb590
bb590:
  %t2795 = load i1, ptr %l1399, !tbaa !21
  br i1 %t2795, label %bb591, label %bb592
bb591:
  %t2796 = load ptr, ptr %l0, !tbaa !29
  %t2797 = load %"compiler/source:Span", ptr %l1
  %t2798 = load ptr, ptr %l118, !tbaa !29
  %t2799 = load i32, ptr %l119, !tbaa !23
  %t2804 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econvert(ptr %v0, ptr %v5, ptr %v5, ptr %t2796, %"compiler/source:Span" %t2797, ptr %t2798, i32 %t2799)
  store ptr %t2804, ptr %l1416
  br label %bb593
bb592:
  br label %bb594
bb593:
  call void @__olang_scope_close(ptr %s0)
  %t2805 = load ptr, ptr %l1416, !tbaa !29
  store ptr %t2805, ptr %rv
  br label %ret
bb594:
  br label %bb595
bb595:
  %t2806 = load ptr, ptr %l118, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t2806, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eletOut(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %lp2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca i64
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l12 = alloca i64
  %l14 = alloca i64
  %l19 = alloca i32
  %l26 = alloca i64
  %l28 = alloca i64
  %l33 = alloca i32
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l9
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store ptr %t2, ptr %lp2
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9
  %t4 = load ptr, ptr %lp2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  %t5 = load ptr, ptr %l1, !tbaa !29
  %t7 = getelementptr %"compiler/check:frame", ptr %t5, i32 0, i32 28
  store ptr %t7, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  %t9 = load i64, ptr %l4, !tbaa !24
  store i64 %t9, ptr %l12, !tbaa !24
  %t10 = load ptr, ptr %l3, !tbaa !29
  %t12 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v1, ptr %t10)
  store i64 %t12, ptr %l14
  br label %bb3
bb3:
  %t13 = load i64, ptr %l12, !tbaa !24
  %t14 = load i64, ptr %l14, !tbaa !24
  %t15 = icmp slt i64 %t13, %t14
  %t17 = xor i1 %t15, true
  br i1 %t17, label %bb4, label %bb5
bb4:
  br label %bb10
bb5:
  br label %bb6
bb6:
  %t19 = load ptr, ptr %l3, !tbaa !29
  %t20 = load i64, ptr %l4, !tbaa !24
  %t23 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v1, ptr %t19, i64 %t20)
  store i32 %t23, ptr %l19
  br label %bb7
bb7:
  %t24 = load i32, ptr %l19, !tbaa !23
  %t25 = load ptr, ptr %lp2
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v2, ptr %t25, i32 %t24)
  br label %bb8
bb8:
  br label %bb9
bb9:
  %t29 = load i64, ptr %l4, !tbaa !24
  %t31 = add i64 %t29, 1
  store i64 %t31, ptr %l4, !tbaa !24
  br label %bb2
bb10:
  %t33 = load ptr, ptr %l1, !tbaa !29
  %t35 = getelementptr %"compiler/check:frame", ptr %t33, i32 0, i32 29
  store ptr %t35, ptr %l6, !tbaa !29
  store i64 0, ptr %l7, !tbaa !24
  br label %bb11
bb11:
  %t37 = load i64, ptr %l7, !tbaa !24
  store i64 %t37, ptr %l26, !tbaa !24
  %t38 = load ptr, ptr %l6, !tbaa !29
  %t40 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v1, ptr %t38)
  store i64 %t40, ptr %l28
  br label %bb12
bb12:
  %t41 = load i64, ptr %l26, !tbaa !24
  %t42 = load i64, ptr %l28, !tbaa !24
  %t43 = icmp slt i64 %t41, %t42
  %t45 = xor i1 %t43, true
  br i1 %t45, label %bb13, label %bb14
bb13:
  br label %bb19
bb14:
  br label %bb15
bb15:
  %t47 = load ptr, ptr %l6, !tbaa !29
  %t48 = load i64, ptr %l7, !tbaa !24
  %t51 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v1, ptr %t47, i64 %t48)
  store i32 %t51, ptr %l33
  br label %bb16
bb16:
  %t52 = load i32, ptr %l33, !tbaa !23
  %t53 = load ptr, ptr %lp2
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v2, ptr %t53, i32 %t52)
  br label %bb17
bb17:
  br label %bb18
bb18:
  %t57 = load i64, ptr %l7, !tbaa !24
  %t59 = add i64 %t57, 1
  store i64 %t59, ptr %l7, !tbaa !24
  br label %bb11
bb19:
  %t61 = load ptr, ptr %lp2
  %t62 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t61
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t62, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emembersWritten(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i32
  %l9 = alloca { i64, ptr }
  %l16 = alloca { i64, ptr }
  %l27 = alloca i32
  %l30 = alloca i1
  %l33 = alloca ptr
  %l38 = alloca i32
  %l39 = alloca i64
  %l42 = alloca ptr
  %l47 = alloca i32
  %l48 = alloca { i64, ptr }
  %s2 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t8 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMembers(ptr %v0, ptr %v0, ptr %t4, i32 %a1)
  store { i64, ptr } %t8, ptr %l9
  br label %bb1
bb1:
  %t9 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t9, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t10 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t10, 0
  store i64 %t12, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  store %olang.scope zeroinitializer, ptr %s2
  %t14 = load i64, ptr %l3, !tbaa !24
  %t15 = load i64, ptr %l4, !tbaa !24
  %t18 = icmp slt i64 %t14, %t15
  %t20 = xor i1 %t18, true
  br i1 %t20, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s2)
  br label %bb21
bb4:
  br label %bb5
bb5:
  %t22 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t22, ptr %l16, !tbaa !27
  %t23 = load i64, ptr %l3, !tbaa !24
  %t25 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !27
  %t27 = getelementptr i32, ptr %t26, i64 %t23
  %t28 = load i32, ptr %t27, !tbaa !33
  store i32 %t28, ptr %l5, !tbaa !23
  %t30 = load i32, ptr %l5, !tbaa !23
  %t31 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t34 = icmp eq i32 %t30, %t31
  br i1 %t34, label %bb6, label %bb7
bb6:
  call void @__olang_scope_close(ptr %s2)
  store i1 false, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/check:Checker", ptr %t37, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !29
  %t42 = getelementptr %"compiler/generic:Program", ptr %t40, i32 0, i32 2
  %t43 = load i32, ptr %l5, !tbaa !23
  %t46 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t42, i32 %t43)
  store i32 %t46, ptr %l27
  br label %bb9
bb9:
  %t47 = load i32, ptr %l27, !range !{i32 0, i32 33}
  %t49 = trunc i64 18 to i32
  %t50 = icmp eq i32 %t47, %t49
  br i1 %t50, label %bb10, label %bb11
bb10:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/check:Checker", ptr %t52, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !29
  %t57 = getelementptr %"compiler/generic:Program", ptr %t55, i32 0, i32 2
  store ptr %t57, ptr %l33, !tbaa !29
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/check:Checker", ptr %t58, i32 0, i32 1
  %t61 = load ptr, ptr %t60, !tbaa !29
  %t63 = getelementptr %"compiler/generic:Program", ptr %t61, i32 0, i32 2
  %t64 = load i32, ptr %l5, !tbaa !23
  %t67 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t63, i32 %t64)
  store i32 %t67, ptr %l38
  br label %bb12
bb11:
  store i1 false, ptr %l30, !tbaa !21
  br label %bb16
bb12:
  %t68 = load ptr, ptr %l33, !tbaa !29
  %t69 = load i32, ptr %l38, !tbaa !23
  %t70 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclParams(ptr %v0, ptr %t68, i32 %t69)
  store i64 %t70, ptr %l39
  br label %bb13
bb13:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"compiler/check:Checker", ptr %t71, i32 0, i32 1
  %t74 = load ptr, ptr %t73, !tbaa !29
  %t76 = getelementptr %"compiler/generic:Program", ptr %t74, i32 0, i32 2
  store ptr %t76, ptr %l42, !tbaa !29
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/check:Checker", ptr %t77, i32 0, i32 1
  %t80 = load ptr, ptr %t79, !tbaa !29
  %t82 = getelementptr %"compiler/generic:Program", ptr %t80, i32 0, i32 2
  %t83 = load i32, ptr %l5, !tbaa !23
  %t86 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %t82, i32 %t83)
  store i32 %t86, ptr %l47
  br label %bb14
bb14:
  %t87 = load ptr, ptr %l42, !tbaa !29
  %t88 = load i32, ptr %l47, !tbaa !23
  %t89 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s2, ptr %t87, i32 %t88)
  store { i64, ptr } %t89, ptr %l48
  br label %bb15
bb15:
  %t90 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t91 = extractvalue { i64, ptr } %t90, 0
  %t92 = load i64, ptr %l39, !tbaa !24
  %t94 = icmp ne i64 %t92, %t91
  store i1 %t94, ptr %l30, !tbaa !21
  br label %bb16
bb16:
  %t96 = load i1, ptr %l30, !tbaa !21
  br i1 %t96, label %bb17, label %bb18
bb17:
  call void @__olang_scope_close(ptr %s2)
  store i1 false, ptr %rv
  br label %ret
bb18:
  br label %bb19
bb19:
  call void @__olang_scope_close(ptr %s2)
  br label %bb20
bb20:
  %t98 = load i64, ptr %l3, !tbaa !24
  %t100 = add i64 %t98, 1
  store i64 %t100, ptr %l3, !tbaa !24
  br label %bb2
bb21:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enamedMet(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, %"compiler/source:Span" %a2, { i64, ptr } %a3, { i64, ptr } %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca i32
  %l6 = alloca i1
  %l7 = alloca i1
  %l8 = alloca %"compiler/names:Ref"
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca ptr
  %l13 = alloca i32
  %l17 = alloca i1
  %l19 = alloca ptr
  %l22 = alloca { i64, ptr }
  %l24 = alloca i1
  %l26 = alloca i1
  %l29 = alloca ptr
  %l31 = alloca ptr
  %l35 = alloca %"compiler/names:Ref"
  %l40 = alloca { i64, ptr }
  %l46 = alloca i1
  %l48 = alloca ptr
  %l51 = alloca { i64, ptr }
  %l53 = alloca i1
  %l54 = alloca i32
  %l56 = alloca ptr
  %l59 = alloca { i64, ptr }
  %l61 = alloca i32
  %l62 = alloca i32
  %l67 = alloca i1
  %l68 = alloca i1
  %l73 = alloca i32
  %l76 = alloca ptr
  %l77 = alloca %"compiler/source:Span"
  %l79 = alloca { i64, ptr }
  %l81 = alloca { i64, ptr }
  %l82 = alloca { i64, ptr }
  %l84 = alloca { i64, ptr }
  %l86 = alloca { i64, ptr }
  %l87 = alloca %"compiler/diagmsg:Msg"
  %l88 = alloca i64
  %l93 = alloca i1
  %l98 = alloca i1
  %l101 = alloca i1
  %l102 = alloca ptr
  %l103 = alloca %"compiler/source:Span"
  %l104 = alloca ptr
  %l106 = alloca %"compiler/source:Span"
  %l107 = alloca { i64, ptr }
  %l108 = alloca %"compiler/diagmsg:Msg"
  %l109 = alloca i64
  %l119 = alloca i1
  %l120 = alloca ptr
  %l121 = alloca %"compiler/source:Span"
  %l122 = alloca ptr
  %l124 = alloca %"compiler/source:Span"
  %l125 = alloca { i64, ptr }
  %l126 = alloca %"compiler/diagmsg:Msg"
  %l127 = alloca i64
  %l131 = alloca i1
  %l133 = alloca ptr
  %l135 = alloca ptr
  %l137 = alloca ptr
  %l142 = alloca i32
  %l143 = alloca i1
  %l150 = alloca ptr
  %l152 = alloca ptr
  %l156 = alloca %"compiler/names:Ref"
  %l159 = alloca i1
  %l162 = alloca i1
  %l164 = alloca ptr
  %l167 = alloca { i64, ptr }
  %l172 = alloca i1
  %l174 = alloca i1
  %l179 = alloca i1
  %l189 = alloca i1
  %l193 = alloca i1
  %l195 = alloca { i64, ptr }
  %l197 = alloca { i64, ptr }
  %l198 = alloca i1
  %l199 = alloca i1
  %l202 = alloca ptr
  %l203 = alloca { i64, ptr }
  %l205 = alloca %"compiler/source:Span"
  %l208 = alloca %"compiler/diagmsg:Msg"
  %l209 = alloca i64
  %l218 = alloca { i64, ptr }
  %l222 = alloca i1
  %l226 = alloca i1
  %l232 = alloca ptr
  %l234 = alloca ptr
  %l239 = alloca i32
  %l242 = alloca i1
  %l243 = alloca ptr
  %l244 = alloca { i64, ptr }
  %l247 = alloca i32
  %l248 = alloca i1
  %l251 = alloca ptr
  %l252 = alloca i32
  %l253 = alloca { i64, ptr }
  %l255 = alloca %"compiler/source:Span"
  %l256 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store %"compiler/source:Span" %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  store { i64, ptr } %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp eq i64 %t3, 1
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t7)
  store ptr %t9, ptr %l19
  br label %bb3
bb2:
  store i1 false, ptr %l17, !tbaa !21
  br label %bb5
bb3:
  %t10 = load ptr, ptr %l19, !tbaa !29
  %t12 = getelementptr %"compiler/check:frame", ptr %t10, i32 0, i32 4
  %t13 = getelementptr %"compiler/generic:Context", ptr %t12, i32 0, i32 2
  %t14 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t14, ptr %l22, !tbaa !27
  %t15 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !27
  %t17 = getelementptr i32, ptr %t16, i64 0
  %t18 = load i32, ptr %t17, !tbaa !33
  %t21 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_He6be2b0836caba7ddc59483ff74db438(ptr %v0, ptr %t13, i32 %t18)
  store i1 %t21, ptr %l24
  br label %bb4
bb4:
  %t22 = load i1, ptr %l24, !tbaa !21
  %t23 = xor i1 %t22, true
  store i1 %t23, ptr %l17, !tbaa !21
  br label %bb5
bb5:
  %t25 = load i1, ptr %l17, !tbaa !21
  br i1 %t25, label %bb6, label %bb7
bb6:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/check:Checker", ptr %t26, i32 0, i32 1
  %t29 = load ptr, ptr %t28, !tbaa !29
  %t31 = getelementptr %"compiler/generic:Program", ptr %t29, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !29
  store ptr %t32, ptr %l29, !tbaa !29
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t33)
  store ptr %t35, ptr %l31
  br label %bb8
bb7:
  store i1 false, ptr %l26, !tbaa !21
  br label %bb10
bb8:
  %t36 = load ptr, ptr %l31, !tbaa !29
  %t38 = getelementptr %"compiler/check:frame", ptr %t36, i32 0, i32 2
  %t39 = load i64, ptr %t38, !tbaa !24
  %t40 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t41 = load i32, ptr %t40, !tbaa !23
  %t42 = load ptr, ptr %l29, !tbaa !29
  %t45 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %t42, i64 %t39, i32 %t41)
  store %"compiler/names:Ref" %t45, ptr %l35
  br label %bb9
bb9:
  %t46 = getelementptr %"compiler/names:Ref", ptr %l35, i32 0, i32 0
  %t47 = load i32, ptr %t46, !range !{i32 0, i32 9}
  %t49 = trunc i64 0 to i32
  %t50 = icmp eq i32 %t47, %t49
  store i1 %t50, ptr %l26, !tbaa !21
  br label %bb10
bb10:
  %t52 = load i1, ptr %l26, !tbaa !21
  br i1 %t52, label %bb11, label %bb12
bb11:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t54 = load %"compiler/source:Span", ptr %l2
  %t55 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t55, ptr %l40, !tbaa !27
  %t56 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t57 = load ptr, ptr %t56, !tbaa !27
  %t58 = getelementptr i32, ptr %t57, i64 0
  %t59 = load i32, ptr %t58, !tbaa !33
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknownType(ptr %v0, ptr %t53, %"compiler/source:Span" %t54, i32 %t59)
  br label %bb13
bb12:
  br label %bb14
bb13:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb14:
  %t64 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t66 = extractvalue { i64, ptr } %t64, 0
  %t68 = icmp eq i64 %t66, 1
  br i1 %t68, label %bb15, label %bb16
bb15:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t70)
  store ptr %t72, ptr %l48
  br label %bb17
bb16:
  store i1 false, ptr %l46, !tbaa !21
  br label %bb19
bb17:
  %t73 = load ptr, ptr %l48, !tbaa !29
  %t75 = getelementptr %"compiler/check:frame", ptr %t73, i32 0, i32 4
  %t76 = getelementptr %"compiler/generic:Context", ptr %t75, i32 0, i32 2
  %t77 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t77, ptr %l51, !tbaa !27
  %t78 = getelementptr { i64, ptr }, ptr %l51, i32 0, i32 1
  %t79 = load ptr, ptr %t78, !tbaa !27
  %t80 = getelementptr i32, ptr %t79, i64 0
  %t81 = load i32, ptr %t80, !tbaa !33
  %t84 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_He6be2b0836caba7ddc59483ff74db438(ptr %v0, ptr %t76, i32 %t81)
  store i1 %t84, ptr %l53
  br label %bb18
bb18:
  %t85 = load i1, ptr %l53, !tbaa !21
  store i1 %t85, ptr %l46, !tbaa !21
  br label %bb19
bb19:
  %t86 = load i1, ptr %l46, !tbaa !21
  br i1 %t86, label %bb20, label %bb21
bb20:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t87)
  store ptr %t89, ptr %l56
  br label %bb22
bb21:
  br label %bb39
bb22:
  %t90 = load ptr, ptr %l56, !tbaa !29
  %t92 = getelementptr %"compiler/check:frame", ptr %t90, i32 0, i32 4
  %t93 = getelementptr %"compiler/generic:Context", ptr %t92, i32 0, i32 2
  %t94 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t94, ptr %l59, !tbaa !27
  %t95 = getelementptr { i64, ptr }, ptr %l59, i32 0, i32 1
  %t96 = load ptr, ptr %t95, !tbaa !27
  %t97 = getelementptr i32, ptr %t96, i64 0
  %t98 = load i32, ptr %t97, !tbaa !33
  %t101 = call { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_Hfd0413fe7fd4e5914f6cad5b418b7a6d(ptr %v0, ptr %t93, i32 %t98)
  %t102 = extractvalue { i32, i32 } %t101, 1
  %t103 = extractvalue { i32, i32 } %t101, 0
  store i32 %t103, ptr %l62
  %t104 = icmp ne i32 %t103, 0
  br i1 %t104, label %bb24, label %ok.105, !prof !99
ok.105:
  store i32 %t102, ptr %l61
  br label %bb23
bb23:
  %t106 = load i32, ptr %l61, !tbaa !23
  store i32 %t106, ptr %l54, !tbaa !23
  br label %bb26
bb24:
  br label %bb25
bb25:
  %t107 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t107, ptr %l54, !tbaa !23
  br label %bb26
bb26:
  %t109 = load i32, ptr %l54, !tbaa !23
  store i32 %t109, ptr %l5, !tbaa !23
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t112 = getelementptr %"compiler/check:Checker", ptr %t110, i32 0, i32 1
  %t113 = load ptr, ptr %t112, !tbaa !29
  %t114 = load i32, ptr %l5, !tbaa !23
  %t117 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsErrVar(ptr %v0, ptr %t113, i32 %t114)
  store i1 %t117, ptr %l67
  br label %bb27
bb27:
  %t118 = load i1, ptr %l67, !tbaa !21
  br i1 %t118, label %bb28, label %bb29
bb28:
  store i1 true, ptr %l68, !tbaa !21
  br label %bb31
bb29:
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t121 = getelementptr %"compiler/check:Checker", ptr %t119, i32 0, i32 1
  %t122 = load ptr, ptr %t121, !tbaa !29
  %t124 = getelementptr %"compiler/generic:Program", ptr %t122, i32 0, i32 2
  %t125 = load i32, ptr %l5, !tbaa !23
  %t128 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t124, i32 %t125)
  store i32 %t128, ptr %l73
  br label %bb30
bb30:
  %t129 = load i32, ptr %l73, !range !{i32 0, i32 33}
  %t131 = trunc i64 30 to i32
  %t132 = icmp eq i32 %t129, %t131
  store i1 %t132, ptr %l68, !tbaa !21
  br label %bb31
bb31:
  %t134 = load i1, ptr %l68, !tbaa !21
  br i1 %t134, label %bb32, label %bb33
bb32:
  %t135 = load ptr, ptr %l0, !tbaa !29
  store ptr %t135, ptr %l76, !tbaa !29
  %t136 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t136, ptr %l77
  %t137 = load ptr, ptr %l0, !tbaa !29
  %t138 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t138, ptr %l79, !tbaa !27
  %t139 = getelementptr { i64, ptr }, ptr %l79, i32 0, i32 1
  %t140 = load ptr, ptr %t139, !tbaa !27
  %t141 = getelementptr i32, ptr %t140, i64 0
  %t142 = load i32, ptr %t141, !tbaa !33
  %t145 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %v0, ptr %t137, i32 %t142)
  store { i64, ptr } %t145, ptr %l81
  br label %bb34
bb33:
  br label %bb38
bb34:
  %t146 = load { i64, ptr }, ptr %l81, !tbaa !27
  %t147 = extractvalue { i64, ptr } %t146, 0
  %t148 = extractvalue { i64, ptr } %t146, 1
  %t149 = mul i64 %t147, 1
  %t150 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t149)
  call void @llvm.memcpy.p0.p0.i64(ptr %t150, ptr %t148, i64 %t149, i1 false)
  %t151 = insertvalue { i64, ptr } undef, i64 %t147, 0
  %t152 = insertvalue { i64, ptr } %t151, ptr %t150, 1
  store { i64, ptr } %t152, ptr %l82, !tbaa !27
  %t153 = load ptr, ptr %l0, !tbaa !29
  %t154 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t154, ptr %l84, !tbaa !27
  %t155 = getelementptr { i64, ptr }, ptr %l84, i32 0, i32 1
  %t156 = load ptr, ptr %t155, !tbaa !27
  %t157 = getelementptr i32, ptr %t156, i64 0
  %t158 = load i32, ptr %t157, !tbaa !33
  %t161 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t153, i32 %t158)
  store { i64, ptr } %t161, ptr %l86
  br label %bb35
bb35:
  %t162 = load { i64, ptr }, ptr %l82, !tbaa !27
  %t163 = load { i64, ptr }, ptr %l86, !tbaa !27
  %t164 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eErrVarNotType(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t162, { i64, ptr } %t163)
  store %"compiler/diagmsg:Msg" %t164, ptr %l87
  br label %bb36
bb36:
  %t165 = load ptr, ptr %l76, !tbaa !29
  %t166 = load %"compiler/source:Span", ptr %l77
  %t167 = load %"compiler/diagmsg:Msg", ptr %l87
  %t168 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t165, %"compiler/source:Span" %t166, %"compiler/diagmsg:Msg" %t167)
  store i64 %t168, ptr %l88
  br label %bb37
bb37:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb38:
  br label %bb39
bb39:
  %t170 = load ptr, ptr %l0, !tbaa !29
  %t171 = load ptr, ptr %l1, !tbaa !29
  %t172 = load ptr, ptr %l1, !tbaa !29
  %t176 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etraitWritten(ptr %v0, ptr %v1, ptr %v1, ptr %t170, ptr %t171, ptr %t172)
  store i1 %t176, ptr %l93
  br label %bb40
bb40:
  %t177 = load i1, ptr %l93, !tbaa !21
  br i1 %t177, label %bb41, label %bb42
bb41:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb42:
  br label %bb43
bb43:
  %t179 = load ptr, ptr %l0, !tbaa !29
  %t181 = getelementptr %"compiler/check:Checker", ptr %t179, i32 0, i32 96
  %t182 = load i1, ptr %t181, !tbaa !21
  %t184 = xor i1 %t182, true
  br i1 %t184, label %bb44, label %bb45
bb44:
  %t186 = load ptr, ptr %l0, !tbaa !29
  %t187 = load ptr, ptr %l1, !tbaa !29
  %t190 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efuncNamed(ptr %v0, ptr %v1, ptr %t186, ptr %t187)
  store i1 %t190, ptr %l101
  br label %bb46
bb45:
  store i1 false, ptr %l98, !tbaa !21
  br label %bb47
bb46:
  %t191 = load i1, ptr %l101, !tbaa !21
  store i1 %t191, ptr %l98, !tbaa !21
  br label %bb47
bb47:
  %t192 = load i1, ptr %l98, !tbaa !21
  br i1 %t192, label %bb48, label %bb49
bb48:
  %t193 = load ptr, ptr %l0, !tbaa !29
  store ptr %t193, ptr %l102, !tbaa !29
  %t194 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t194, ptr %l103
  %t195 = load ptr, ptr %l0, !tbaa !29
  store ptr %t195, ptr %l104, !tbaa !29
  %t196 = load ptr, ptr %l1, !tbaa !29
  %t198 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v1, ptr %t196)
  store %"compiler/source:Span" %t198, ptr %l106
  br label %bb50
bb49:
  br label %bb54
bb50:
  %t199 = load ptr, ptr %l104, !tbaa !29
  %t200 = load %"compiler/source:Span", ptr %l106
  %t201 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t199, %"compiler/source:Span" %t200)
  store { i64, ptr } %t201, ptr %l107
  br label %bb51
bb51:
  %t202 = load { i64, ptr }, ptr %l107, !tbaa !27
  %t203 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFuncDeclBare(ptr %v0, ptr %v0, { i64, ptr } %t202)
  store %"compiler/diagmsg:Msg" %t203, ptr %l108
  br label %bb52
bb52:
  %t204 = load ptr, ptr %l102, !tbaa !29
  %t205 = load %"compiler/source:Span", ptr %l103
  %t206 = load %"compiler/diagmsg:Msg", ptr %l108
  %t207 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t204, %"compiler/source:Span" %t205, %"compiler/diagmsg:Msg" %t206)
  store i64 %t207, ptr %l109
  br label %bb53
bb53:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb54:
  %t209 = load ptr, ptr %l0, !tbaa !29
  %t211 = getelementptr %"compiler/check:Checker", ptr %t209, i32 0, i32 101
  %t212 = load i1, ptr %t211, !tbaa !21
  store i1 %t212, ptr %l6, !tbaa !21
  %t214 = load ptr, ptr %l0, !tbaa !29
  %t216 = getelementptr %"compiler/check:Checker", ptr %t214, i32 0, i32 96
  %t217 = load i1, ptr %t216, !tbaa !21
  store i1 %t217, ptr %l7, !tbaa !21
  %t219 = load ptr, ptr %l0, !tbaa !29
  %t221 = getelementptr %"compiler/check:Checker", ptr %t219, i32 0, i32 96
  store i1 false, ptr %t221, !tbaa !21
  %t222 = load ptr, ptr %l0, !tbaa !29
  %t224 = getelementptr %"compiler/check:Checker", ptr %t222, i32 0, i32 101
  store i1 false, ptr %t224, !tbaa !21
  %t225 = load ptr, ptr %l0, !tbaa !29
  %t226 = load ptr, ptr %l1, !tbaa !29
  %t229 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eforeignNamed(ptr %v0, ptr %v1, ptr %t225, ptr %t226)
  store i1 %t229, ptr %l119
  br label %bb55
bb55:
  %t230 = load i1, ptr %l119, !tbaa !21
  br i1 %t230, label %bb56, label %bb57
bb56:
  %t231 = load ptr, ptr %l0, !tbaa !29
  store ptr %t231, ptr %l120, !tbaa !29
  %t232 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t232, ptr %l121
  %t233 = load ptr, ptr %l0, !tbaa !29
  store ptr %t233, ptr %l122, !tbaa !29
  %t234 = load ptr, ptr %l1, !tbaa !29
  %t236 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v1, ptr %t234)
  store %"compiler/source:Span" %t236, ptr %l124
  br label %bb58
bb57:
  br label %bb62
bb58:
  %t237 = load ptr, ptr %l122, !tbaa !29
  %t238 = load %"compiler/source:Span", ptr %l124
  %t239 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t237, %"compiler/source:Span" %t238)
  store { i64, ptr } %t239, ptr %l125
  br label %bb59
bb59:
  %t240 = load { i64, ptr }, ptr %l125, !tbaa !27
  %t241 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eForeignByValue(ptr %v0, ptr %v0, { i64, ptr } %t240)
  store %"compiler/diagmsg:Msg" %t241, ptr %l126
  br label %bb60
bb60:
  %t242 = load ptr, ptr %l120, !tbaa !29
  %t243 = load %"compiler/source:Span", ptr %l121
  %t244 = load %"compiler/diagmsg:Msg", ptr %l126
  %t245 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t242, %"compiler/source:Span" %t243, %"compiler/diagmsg:Msg" %t244)
  store i64 %t245, ptr %l127
  br label %bb61
bb61:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb62:
  %t247 = load i1, ptr %l7, !tbaa !21
  %t249 = xor i1 %t247, true
  br i1 %t249, label %bb63, label %bb64
bb63:
  %t251 = load ptr, ptr %l0, !tbaa !29
  %t253 = getelementptr %"compiler/check:Checker", ptr %t251, i32 0, i32 1
  %t254 = load ptr, ptr %t253, !tbaa !29
  store ptr %t254, ptr %l133, !tbaa !29
  %t255 = load ptr, ptr %l0, !tbaa !29
  %t257 = getelementptr %"compiler/check:Checker", ptr %t255, i32 0, i32 1
  %t258 = load ptr, ptr %t257, !tbaa !29
  store ptr %t258, ptr %l135, !tbaa !29
  %t259 = load ptr, ptr %l0, !tbaa !29
  %t261 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t259)
  store ptr %t261, ptr %l137
  br label %bb65
bb64:
  store i1 false, ptr %l131, !tbaa !21
  br label %bb68
bb65:
  %t262 = load ptr, ptr %l137, !tbaa !29
  %t264 = getelementptr %"compiler/check:frame", ptr %t262, i32 0, i32 4
  %t265 = load ptr, ptr %l1, !tbaa !29
  %t267 = load ptr, ptr %l135, !tbaa !29
  %t270 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %v0, ptr %v1, ptr %t267, ptr %t264, ptr %t265)
  store i32 %t270, ptr %l142
  br label %bb66
bb66:
  %t271 = load ptr, ptr %l133, !tbaa !29
  %t272 = load i32, ptr %l142, !tbaa !23
  %t273 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eGenerational(ptr %v0, ptr %t271, i32 %t272)
  store i1 %t273, ptr %l143
  br label %bb67
bb67:
  %t274 = load i1, ptr %l143, !tbaa !21
  store i1 %t274, ptr %l131, !tbaa !21
  br label %bb68
bb68:
  %t275 = load i1, ptr %l131, !tbaa !21
  br i1 %t275, label %bb69, label %bb70
bb69:
  %t276 = load ptr, ptr %l0, !tbaa !29
  %t277 = load ptr, ptr %l1, !tbaa !29
  %t278 = load %"compiler/source:Span", ptr %l2
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenByValue(ptr %v0, ptr %v1, ptr %t276, ptr %t277, %"compiler/source:Span" %t278)
  br label %bb71
bb70:
  br label %bb72
bb71:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb72:
  %t283 = load ptr, ptr %l0, !tbaa !29
  %t285 = getelementptr %"compiler/check:Checker", ptr %t283, i32 0, i32 1
  %t286 = load ptr, ptr %t285, !tbaa !29
  %t288 = getelementptr %"compiler/generic:Program", ptr %t286, i32 0, i32 1
  %t289 = load ptr, ptr %t288, !tbaa !29
  store ptr %t289, ptr %l150, !tbaa !29
  %t290 = load ptr, ptr %l0, !tbaa !29
  %t292 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t290)
  store ptr %t292, ptr %l152
  br label %bb73
bb73:
  %t293 = load ptr, ptr %l152, !tbaa !29
  %t295 = getelementptr %"compiler/check:frame", ptr %t293, i32 0, i32 2
  %t296 = load i64, ptr %t295, !tbaa !24
  %t297 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t298 = load i32, ptr %t297, !tbaa !23
  %t299 = load ptr, ptr %l150, !tbaa !29
  %t302 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %t299, i64 %t296, i32 %t298)
  store %"compiler/names:Ref" %t302, ptr %l156
  br label %bb74
bb74:
  %t303 = load %"compiler/names:Ref", ptr %l156
  store %"compiler/names:Ref" %t303, ptr %l8
  %t304 = getelementptr %"compiler/names:Ref", ptr %l8, i32 0, i32 0
  %t305 = load i32, ptr %t304, !range !{i32 0, i32 9}
  %t307 = trunc i64 4 to i32
  %t308 = icmp eq i32 %t305, %t307
  br i1 %t308, label %bb75, label %bb76
bb75:
  %t310 = getelementptr %"compiler/names:Ref", ptr %l8, i32 0, i32 2
  %t311 = load i64, ptr %t310, !tbaa !24
  %t313 = icmp sge i64 %t311, 0
  store i1 %t313, ptr %l159, !tbaa !21
  br label %bb77
bb76:
  store i1 false, ptr %l159, !tbaa !21
  br label %bb77
bb77:
  %t315 = load i1, ptr %l159, !tbaa !21
  br i1 %t315, label %bb78, label %bb79
bb78:
  %t316 = load ptr, ptr %l0, !tbaa !29
  %t318 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t316)
  store ptr %t318, ptr %l164
  br label %bb80
bb79:
  store i1 false, ptr %l162, !tbaa !21
  br label %bb82
bb80:
  %t319 = load ptr, ptr %l164, !tbaa !29
  %t321 = getelementptr %"compiler/check:frame", ptr %t319, i32 0, i32 4
  %t322 = getelementptr %"compiler/generic:Context", ptr %t321, i32 0, i32 2
  %t323 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t323, ptr %l167, !tbaa !27
  %t324 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t326 = extractvalue { i64, ptr } %t324, 0
  %t328 = sub i64 %t326, 1
  %t330 = getelementptr { i64, ptr }, ptr %l167, i32 0, i32 1
  %t331 = load ptr, ptr %t330, !tbaa !27
  %t332 = getelementptr i32, ptr %t331, i64 %t328
  %t333 = load i32, ptr %t332, !tbaa !33
  %t336 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_He6be2b0836caba7ddc59483ff74db438(ptr %v0, ptr %t322, i32 %t333)
  store i1 %t336, ptr %l172
  br label %bb81
bb81:
  %t337 = load i1, ptr %l172, !tbaa !21
  %t338 = xor i1 %t337, true
  store i1 %t338, ptr %l162, !tbaa !21
  br label %bb82
bb82:
  %t340 = load i1, ptr %l162, !tbaa !21
  br i1 %t340, label %bb83, label %bb84
bb83:
  %t341 = load ptr, ptr %l0, !tbaa !29
  %t342 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t343 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t344 = load %"compiler/names:Ref", ptr %l8
  %t349 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeArgCountMet(ptr %v0, ptr %v2, ptr %v3, ptr %t341, { i64, ptr } %t342, { i64, ptr } %t343, %"compiler/names:Ref" %t344)
  store i1 %t349, ptr %l179
  br label %bb85
bb84:
  store i1 false, ptr %l174, !tbaa !21
  br label %bb86
bb85:
  %t350 = load i1, ptr %l179, !tbaa !21
  %t351 = xor i1 %t350, true
  store i1 %t351, ptr %l174, !tbaa !21
  br label %bb86
bb86:
  %t353 = load i1, ptr %l174, !tbaa !21
  br i1 %t353, label %bb87, label %bb88
bb87:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb88:
  br label %bb89
bb89:
  %t355 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t357 = extractvalue { i64, ptr } %t355, 0
  %t359 = icmp eq i64 %t357, 0
  br i1 %t359, label %bb90, label %bb91
bb90:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb91:
  br label %bb92
bb92:
  %t362 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t364 = extractvalue { i64, ptr } %t362, 0
  %t366 = icmp eq i64 %t364, 1
  br i1 %t366, label %bb93, label %bb94
bb93:
  %t368 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t370 = extractvalue { i64, ptr } %t368, 0
  %t372 = icmp sgt i64 %t370, 1
  store i1 %t372, ptr %l189, !tbaa !21
  br label %bb95
bb94:
  store i1 false, ptr %l189, !tbaa !21
  br label %bb95
bb95:
  %t374 = load i1, ptr %l189, !tbaa !21
  br i1 %t374, label %bb96, label %bb97
bb96:
  %t375 = load ptr, ptr %l0, !tbaa !29
  %t376 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t376, ptr %l195, !tbaa !27
  %t377 = getelementptr { i64, ptr }, ptr %l195, i32 0, i32 1
  %t378 = load ptr, ptr %t377, !tbaa !27
  %t379 = getelementptr i32, ptr %t378, i64 0
  %t380 = load i32, ptr %t379, !tbaa !33
  %t383 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t375, i32 %t380)
  store { i64, ptr } %t383, ptr %l197
  br label %bb98
bb97:
  store i1 false, ptr %l193, !tbaa !21
  br label %bb100
bb98:
  %t384 = load { i64, ptr }, ptr %l197, !tbaa !27
  %t385 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t384, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d17, i32 0, i32 1) })
  store i1 %t385, ptr %l198
  br label %bb99
bb99:
  %t386 = load i1, ptr %l198, !tbaa !21
  store i1 %t386, ptr %l193, !tbaa !21
  br label %bb100
bb100:
  %t387 = load i1, ptr %l193, !tbaa !21
  br i1 %t387, label %bb101, label %bb102
bb101:
  %t388 = getelementptr %"compiler/names:Ref", ptr %l8, i32 0, i32 0
  %t389 = load i32, ptr %t388, !range !{i32 0, i32 9}
  %t391 = trunc i64 7 to i32
  %t392 = icmp eq i32 %t389, %t391
  store i1 %t392, ptr %l199, !tbaa !21
  br label %bb103
bb102:
  store i1 false, ptr %l199, !tbaa !21
  br label %bb103
bb103:
  %t394 = load i1, ptr %l199, !tbaa !21
  br i1 %t394, label %bb104, label %bb105
bb104:
  %t395 = load ptr, ptr %l0, !tbaa !29
  store ptr %t395, ptr %l202, !tbaa !29
  %t396 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t396, ptr %l203, !tbaa !27
  %t397 = getelementptr { i64, ptr }, ptr %l203, i32 0, i32 1
  %t398 = load ptr, ptr %t397, !tbaa !27
  %t399 = getelementptr ptr, ptr %t398, i64 1
  %t400 = load ptr, ptr %t399, !tbaa !39
  %t402 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v3, ptr %t400)
  store %"compiler/source:Span" %t402, ptr %l205
  br label %bb106
bb105:
  br label %bb109
bb106:
  %t403 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t405 = extractvalue { i64, ptr } %t403, 0
  %t407 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eArrayTooManyArgs(ptr %v0, i64 %t405)
  store %"compiler/diagmsg:Msg" %t407, ptr %l208
  br label %bb107
bb107:
  %t408 = load ptr, ptr %l202, !tbaa !29
  %t409 = load %"compiler/source:Span", ptr %l205
  %t410 = load %"compiler/diagmsg:Msg", ptr %l208
  %t411 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t408, %"compiler/source:Span" %t409, %"compiler/diagmsg:Msg" %t410)
  store i64 %t411, ptr %l209
  br label %bb108
bb108:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb109:
  %t413 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t413, ptr %l9, !tbaa !27
  store i64 0, ptr %l10, !tbaa !24
  %t415 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t417 = extractvalue { i64, ptr } %t415, 0
  store i64 %t417, ptr %l11, !tbaa !24
  br label %bb110
bb110:
  %t419 = load i64, ptr %l10, !tbaa !24
  %t420 = load i64, ptr %l11, !tbaa !24
  %t423 = icmp slt i64 %t419, %t420
  %t425 = xor i1 %t423, true
  br i1 %t425, label %bb111, label %bb112
bb111:
  br label %bb123
bb112:
  br label %bb113
bb113:
  %t427 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t427, ptr %l218, !tbaa !27
  %t428 = load i64, ptr %l10, !tbaa !24
  %t430 = getelementptr { i64, ptr }, ptr %l218, i32 0, i32 1
  %t431 = load ptr, ptr %t430, !tbaa !27
  %t432 = getelementptr ptr, ptr %t431, i64 %t428
  %t433 = load ptr, ptr %t432, !tbaa !39
  store ptr %t433, ptr %l12, !tbaa !29
  %t435 = load ptr, ptr %l12, !tbaa !29
  %t437 = call i1 @compiler_2fgeneric_2eIsErrsArgOf(ptr %v3, ptr %t435)
  store i1 %t437, ptr %l222
  br label %bb114
bb114:
  %t438 = load i1, ptr %l222, !tbaa !21
  br i1 %t438, label %bb115, label %bb116
bb115:
  br label %bb122
bb116:
  br label %bb117
bb117:
  %t439 = load ptr, ptr %l0, !tbaa !29
  %t441 = getelementptr %"compiler/check:Checker", ptr %t439, i32 0, i32 97
  store i1 true, ptr %t441, !tbaa !21
  %t442 = load ptr, ptr %l0, !tbaa !29
  %t443 = load ptr, ptr %l12, !tbaa !29
  %t446 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeArgMet(ptr %v0, ptr %v3, ptr %t442, ptr %t443)
  store i1 %t446, ptr %l226
  br label %bb118
bb118:
  %t447 = load i1, ptr %l226, !tbaa !21
  %t448 = xor i1 %t447, true
  br i1 %t448, label %bb119, label %bb120
bb119:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb120:
  br label %bb121
bb121:
  br label %bb122
bb122:
  %t451 = load i64, ptr %l10, !tbaa !24
  %t453 = add i64 %t451, 1
  store i64 %t453, ptr %l10, !tbaa !24
  br label %bb110
bb123:
  %t455 = load ptr, ptr %l0, !tbaa !29
  %t457 = getelementptr %"compiler/check:Checker", ptr %t455, i32 0, i32 1
  %t458 = load ptr, ptr %t457, !tbaa !29
  store ptr %t458, ptr %l232, !tbaa !29
  %t459 = load ptr, ptr %l0, !tbaa !29
  %t461 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t459)
  store ptr %t461, ptr %l234
  br label %bb124
bb124:
  %t462 = load ptr, ptr %l234, !tbaa !29
  %t464 = getelementptr %"compiler/check:frame", ptr %t462, i32 0, i32 4
  %t465 = load ptr, ptr %l1, !tbaa !29
  %t467 = load ptr, ptr %l232, !tbaa !29
  %t470 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %v0, ptr %v1, ptr %t467, ptr %t464, ptr %t465)
  store i32 %t470, ptr %l239
  br label %bb125
bb125:
  %t471 = load i32, ptr %l239, !tbaa !23
  store i32 %t471, ptr %l13, !tbaa !23
  %t472 = load i1, ptr %l6, !tbaa !21
  %t474 = xor i1 %t472, true
  br i1 %t474, label %bb126, label %bb127
bb126:
  %t476 = load ptr, ptr %l0, !tbaa !29
  store ptr %t476, ptr %l243, !tbaa !29
  %t477 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t477, ptr %l244, !tbaa !27
  %t478 = load ptr, ptr %l0, !tbaa !29
  %t479 = load i32, ptr %l13, !tbaa !23
  %t482 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eownBuffer(ptr %v0, ptr %t478, i32 %t479)
  store i32 %t482, ptr %l247
  br label %bb128
bb127:
  store i1 false, ptr %l242, !tbaa !21
  br label %bb130
bb128:
  %t483 = load ptr, ptr %l243, !tbaa !29
  %t484 = load { i64, ptr }, ptr %l244, !tbaa !27
  %t485 = load i32, ptr %l247, !tbaa !23
  %t486 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunendedArgs(ptr %v0, ptr %v3, ptr %t483, { i64, ptr } %t484, i32 %t485)
  store i1 %t486, ptr %l248
  br label %bb129
bb129:
  %t487 = load i1, ptr %l248, !tbaa !21
  %t488 = xor i1 %t487, true
  store i1 %t488, ptr %l242, !tbaa !21
  br label %bb130
bb130:
  %t490 = load i1, ptr %l242, !tbaa !21
  br i1 %t490, label %bb131, label %bb132
bb131:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb132:
  br label %bb133
bb133:
  %t492 = load ptr, ptr %l0, !tbaa !29
  store ptr %t492, ptr %l251, !tbaa !29
  %t493 = load i32, ptr %l13, !tbaa !23
  store i32 %t493, ptr %l252, !tbaa !23
  %t494 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t494, ptr %l253, !tbaa !27
  %t495 = getelementptr { i64, ptr }, ptr %l253, i32 0, i32 1
  %t496 = load ptr, ptr %t495, !tbaa !27
  %t497 = getelementptr ptr, ptr %t496, i64 0
  %t498 = load ptr, ptr %t497, !tbaa !39
  %t500 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v3, ptr %t498)
  store %"compiler/source:Span" %t500, ptr %l255
  br label %bb134
bb134:
  %t501 = load ptr, ptr %l251, !tbaa !29
  %t502 = load i32, ptr %l252, !tbaa !23
  %t503 = load %"compiler/source:Span", ptr %l255
  %t504 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einstancesMet(ptr %v0, ptr %t501, i32 %t502, %"compiler/source:Span" %t503)
  store i1 %t504, ptr %l256
  br label %bb135
bb135:
  call void @__olang_scope_close(ptr %s0)
  %t505 = load i1, ptr %l256, !tbaa !21
  store i1 %t505, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enothingFails(ptr %v0, ptr %a0, %"compiler/source:Span" %a1) #0 {
entry:
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l6 = alloca %"compiler/source:Span"
  %l7 = alloca %"compiler/diagmsg:Msg"
  %l8 = alloca i64
  %s0 = alloca %olang.scope
  store %"compiler/source:Span" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store ptr %a0, ptr %l2, !tbaa !29
  %t2 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t3 = load i32, ptr %t2, !tbaa !23
  %t4 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t5 = load i32, ptr %t4, !tbaa !23
  %t7 = add i32 %t5, 3
  %t10 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 %t3, i32 %t7)
  store %"compiler/source:Span" %t10, ptr %l6
  br label %bb1
bb1:
  %t11 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTryNothingFails(ptr %v0, ptr %v0, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d18, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t11, ptr %l7
  br label %bb2
bb2:
  %t12 = load ptr, ptr %l2, !tbaa !29
  %t13 = load %"compiler/source:Span", ptr %l6
  %t14 = load %"compiler/diagmsg:Msg", ptr %l7
  %t15 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t12, %"compiler/source:Span" %t13, %"compiler/diagmsg:Msg" %t14)
  store i64 %t15, ptr %l8
  br label %bb3
bb3:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enullRead(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca %"compiler/source:Span"
  %l5 = alloca i32
  %l10 = alloca i1
  %l13 = alloca %"compiler/source:Span"
  %l14 = alloca ptr
  %l15 = alloca %"compiler/source:Span"
  %l18 = alloca { i64, ptr }
  %l21 = alloca { i64, ptr }
  %l22 = alloca { i64, ptr }
  %l25 = alloca { i64, ptr }
  %l26 = alloca { i64, ptr }
  %l27 = alloca i64
  %l28 = alloca { i64, ptr }
  %l30 = alloca %"compiler/diagmsg:Msg"
  %l31 = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t1)
  store i32 %t3, ptr %l5
  br label %bb1
bb1:
  %t4 = load i32, ptr %l5, !tbaa !23
  store i32 %t4, ptr %l2, !tbaa !23
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/check:Checker", ptr %t5, i32 0, i32 1
  %t8 = load ptr, ptr %t7, !tbaa !29
  %t10 = getelementptr %"compiler/generic:Program", ptr %t8, i32 0, i32 2
  %t11 = load i32, ptr %l2, !tbaa !23
  %t14 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNullable(ptr %v0, ptr %t10, i32 %t11)
  store i1 %t14, ptr %l10
  br label %bb2
bb2:
  %t15 = load i1, ptr %l10, !tbaa !21
  %t16 = xor i1 %t15, true
  br i1 %t16, label %bb3, label %bb4
bb3:
  br label %ret
bb4:
  br label %bb5
bb5:
  %t18 = load ptr, ptr %l1, !tbaa !29
  %t20 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eSpan(ptr %v1, ptr %t18)
  store %"compiler/source:Span" %t20, ptr %l13
  br label %bb6
bb6:
  %t21 = load %"compiler/source:Span", ptr %l13
  store %"compiler/source:Span" %t21, ptr %l3
  %t22 = load ptr, ptr %l0, !tbaa !29
  store ptr %t22, ptr %l14, !tbaa !29
  %t23 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t23, ptr %l15
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t25 = load %"compiler/source:Span", ptr %l3
  %t28 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t24, %"compiler/source:Span" %t25)
  store { i64, ptr } %t28, ptr %l18
  br label %bb7
bb7:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t30 = load i32, ptr %l2, !tbaa !23
  %t33 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t29, i32 %t30)
  store { i64, ptr } %t33, ptr %l21
  br label %bb8
bb8:
  %t34 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t35 = extractvalue { i64, ptr } %t34, 0
  %t36 = extractvalue { i64, ptr } %t34, 1
  %t37 = mul i64 %t35, 1
  %t38 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t37)
  call void @llvm.memcpy.p0.p0.i64(ptr %t38, ptr %t36, i64 %t37, i1 false)
  %t39 = insertvalue { i64, ptr } undef, i64 %t35, 0
  %t40 = insertvalue { i64, ptr } %t39, ptr %t38, 1
  store { i64, ptr } %t40, ptr %l22, !tbaa !27
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t42 = load %"compiler/source:Span", ptr %l3
  %t45 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t41, %"compiler/source:Span" %t42)
  store { i64, ptr } %t45, ptr %l25
  br label %bb9
bb9:
  %t46 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t47 = call { i64, ptr } @compiler_2fcheck_2ebangOf(ptr %v0, ptr %v0, { i64, ptr } %t46)
  store { i64, ptr } %t47, ptr %l26
  br label %bb10
bb10:
  %t48 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t49 = extractvalue { i64, ptr } %t48, 0
  store i64 %t49, ptr %l27, !tbaa !24
  %t50 = load i64, ptr %l27, !tbaa !24
  %t51 = mul i64 %t50, 1
  %t52 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t51)
  %t53 = insertvalue { i64, ptr } undef, i64 %t50, 0
  %t54 = insertvalue { i64, ptr } %t53, ptr %t52, 1
  store { i64, ptr } %t54, ptr %l28, !tbaa !27
  %t55 = getelementptr { i64, ptr }, ptr %l28, i32 0, i32 1
  %t56 = load ptr, ptr %t55, !tbaa !27
  %t57 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t58 = load ptr, ptr %t57, !tbaa !27
  %t59 = load i64, ptr %l27, !tbaa !24
  %t60 = mul i64 %t59, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t56, ptr %t58, i64 %t60, i1 false)
  %t61 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t62 = extractvalue { i64, ptr } %t61, 0
  %t63 = extractvalue { i64, ptr } %t61, 1
  %t64 = mul i64 %t62, 1
  %t65 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t64)
  call void @llvm.memcpy.p0.p0.i64(ptr %t65, ptr %t63, i64 %t64, i1 false)
  %t66 = insertvalue { i64, ptr } undef, i64 %t62, 0
  %t67 = insertvalue { i64, ptr } %t66, ptr %t65, 1
  %t68 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t69 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t71 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReadMaybeNull(ptr %v0, ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t68, { i64, ptr } %t69, { i64, ptr } %t67)
  store %"compiler/diagmsg:Msg" %t71, ptr %l30
  br label %bb11
bb11:
  %t72 = load ptr, ptr %l14, !tbaa !29
  %t73 = load %"compiler/source:Span", ptr %l15
  %t74 = load %"compiler/diagmsg:Msg", ptr %l30
  %t75 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t72, %"compiler/source:Span" %t73, %"compiler/diagmsg:Msg" %t74)
  store i64 %t75, ptr %l31
  br label %bb12
bb12:
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eoutOfRange(ptr %v0, ptr %a0) #0 {
entry:
  %l2 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epreludeWord(ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %a0, { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d19, i32 0, i32 1) }, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d20, i32 0, i32 1) }, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d21, i32 0, i32 1) })
  store i32 %t3, ptr %l2
  br label %bb1
bb1:
  call void @__olang_scope_close(ptr %s0)
  %t4 = load i32, ptr %l2, !tbaa !23
  store i32 %t4, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eownerWritten(ptr %v0, ptr %a0, i64 %a1, i32 %a2, %"compiler/source:Span" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l10 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca ptr
  %l15 = alloca { i64, ptr }
  %l16 = alloca i32
  %l21 = alloca ptr
  %l23 = alloca ptr
  %l28 = alloca i32
  %l29 = alloca ptr
  %l32 = alloca i1
  %l43 = alloca ptr
  %l44 = alloca i1
  %l56 = alloca { i64, ptr }
  %l57 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l58 = alloca { i64, ptr }
  %l59 = alloca { i64, ptr }
  %l60 = alloca i64
  %l61 = alloca { i64, ptr }
  %l70 = alloca { i64, ptr }
  %l78 = alloca { i64, ptr }
  %l79 = alloca { i64, ptr }
  %l81 = alloca i64
  %l83 = alloca ptr
  %l87 = alloca { i64, ptr }
  %l91 = alloca { i64, ptr }
  %l93 = alloca { i64, ptr }
  %l98 = alloca ptr
  %l99 = alloca ptr
  %l102 = alloca ptr
  %l106 = alloca i32
  %l107 = alloca i32
  %l108 = alloca i32
  %l109 = alloca i32
  %l114 = alloca i32
  %l117 = alloca i1
  %l122 = alloca i32
  %l127 = alloca i32
  %l129 = alloca i1
  %l132 = alloca { i64, ptr }
  %l135 = alloca i1
  %l137 = alloca { i64, ptr }
  %l140 = alloca { i64, ptr }
  %l143 = alloca ptr
  %l144 = alloca %"compiler/source:Span"
  %l145 = alloca { i64, ptr }
  %l146 = alloca { i64, ptr }
  %l147 = alloca { i64, ptr }
  %l151 = alloca { i64, ptr }
  %l152 = alloca %"compiler/diagmsg:Msg"
  %l153 = alloca i64
  %s0 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i32 %a2, ptr %l2
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
  store ptr %t9, ptr %l4, !tbaa !29
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/check:Checker", ptr %t10, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !29
  store ptr %t13, ptr %l23, !tbaa !29
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/check:Checker", ptr %t14, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !29
  %t19 = getelementptr %"compiler/generic:Program", ptr %t17, i32 0, i32 2
  %t20 = load i32, ptr %l2, !tbaa !23
  %t23 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t19, i32 %t20)
  store i32 %t23, ptr %l28
  br label %bb2
bb2:
  %t24 = load ptr, ptr %l23, !tbaa !29
  %t25 = load i32, ptr %l28, !tbaa !23
  %t26 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeDecl(ptr %v0, ptr %v0, ptr %t24, i32 %t25)
  store ptr %t26, ptr %l29
  br label %bb3
bb3:
  %t27 = load ptr, ptr %l29, !tbaa !29
  store ptr %t27, ptr %l5, !tbaa !29
  %t28 = load ptr, ptr %l5, !tbaa !29
  %t30 = icmp eq ptr %t28, null
  br i1 %t30, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l32, !tbaa !21
  br label %bb6
bb5:
  %t32 = load ptr, ptr %l5, !tbaa !29
  %t34 = getelementptr %"compiler/ast:TypeDecl", ptr %t32, i32 0, i32 1
  %t35 = load { i64, ptr }, ptr %t34, !tbaa !27
  %t37 = extractvalue { i64, ptr } %t35, 0
  %t39 = icmp eq i64 %t37, 0
  store i1 %t39, ptr %l32, !tbaa !21
  br label %bb6
bb6:
  %t41 = load i1, ptr %l32, !tbaa !21
  br i1 %t41, label %bb7, label %bb8
bb7:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t43 = load ptr, ptr %l4, !tbaa !29
  %t45 = getelementptr %"compiler/ast:Func", ptr %t43, i32 0, i32 9
  %t46 = load ptr, ptr %t45, !tbaa !29
  %t48 = icmp eq ptr %t46, null
  br i1 %t48, label %bb10, label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_cc787edf2deeff46_6db42fab5d8ba9ba)
  unreachable
bb11:
  br label %bb12
bb12:
  %t50 = load ptr, ptr %l4, !tbaa !29
  %t52 = getelementptr %"compiler/ast:Func", ptr %t50, i32 0, i32 9
  %t53 = load ptr, ptr %t52, !tbaa !29
  store ptr %t53, ptr %l6, !tbaa !29
  %t55 = load ptr, ptr %l6, !tbaa !29
  store ptr %t55, ptr %l43, !tbaa !29
  store i1 false, ptr %l44, !tbaa !21
  %t56 = load ptr, ptr %l43, !tbaa !29
  %t57 = icmp ne ptr %t56, null
  br i1 %t57, label %bb13, label %bb14
bb13:
  %t59 = load ptr, ptr %l43, !tbaa !29
  %t60 = load i64, ptr %t59, !range !{i64 0, i64 8}
  %t62 = icmp eq i64 %t60, 0
  store i1 %t62, ptr %l44, !tbaa !21
  br label %bb14
bb14:
  %t63 = load i1, ptr %l44, !tbaa !21
  br i1 %t63, label %bb15, label %bb16
bb15:
  %t64 = load ptr, ptr %l6, !tbaa !29
  %t66 = getelementptr { i64, [5 x i64] }, ptr %t64, i32 0, i32 1
  %t67 = getelementptr { %"compiler/source:Span", { i64, ptr }, { i64, ptr } }, ptr %t66, i32 0, i32 2
  %t68 = load { i64, ptr }, ptr %t67
  store { i64, ptr } %t68, ptr %l7, !tbaa !27
  br label %bb17
bb16:
  br label %bb20
bb17:
  %t70 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t72 = extractvalue { i64, ptr } %t70, 0
  %t74 = icmp sgt i64 %t72, 0
  br i1 %t74, label %bb18, label %bb19
bb18:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  br i1 true, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb24
bb23:
  br label %bb25
bb24:
  call void @__olang_check_failed(ptr @olang_loc_ca5f636100c98fd4_9c6d5a533441f8c8)
  unreachable
bb25:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t78 = load ptr, ptr %l5, !tbaa !29
  %t80 = getelementptr %"compiler/ast:TypeDecl", ptr %t78, i32 0, i32 0
  %t81 = load i32, ptr %t80, !tbaa !23
  %t84 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t77, i32 %t81)
  store { i64, ptr } %t84, ptr %l56
  br label %bb26
bb26:
  %t85 = load { i64, ptr }, ptr %l56, !tbaa !27
  store { i64, ptr } %t85, ptr %l8, !tbaa !27
  %t86 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t86, ptr %l57
  br label %bb27
bb27:
  %t87 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l57
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t87, ptr %l9
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d22, i32 0, i32 1) }, ptr %l58, !tbaa !27
  %t88 = load { i64, ptr }, ptr %l58, !tbaa !27
  store { i64, ptr } %t88, ptr %l59, !tbaa !27
  %t89 = load { i64, ptr }, ptr %l59, !tbaa !27
  %t90 = extractvalue { i64, ptr } %t89, 0
  store i64 %t90, ptr %l60, !tbaa !24
  %t91 = load i64, ptr %l60, !tbaa !24
  %t92 = mul i64 %t91, 1
  %t93 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t92)
  %t94 = insertvalue { i64, ptr } undef, i64 %t91, 0
  %t95 = insertvalue { i64, ptr } %t94, ptr %t93, 1
  store { i64, ptr } %t95, ptr %l61, !tbaa !27
  %t96 = getelementptr { i64, ptr }, ptr %l61, i32 0, i32 1
  %t97 = load ptr, ptr %t96, !tbaa !27
  %t98 = getelementptr { i64, ptr }, ptr %l59, i32 0, i32 1
  %t99 = load ptr, ptr %t98, !tbaa !27
  %t100 = load i64, ptr %l60, !tbaa !24
  %t101 = mul i64 %t100, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t97, ptr %t99, i64 %t101, i1 false)
  %t102 = load { i64, ptr }, ptr %l61, !tbaa !27
  store { i64, ptr } %t102, ptr %l10, !tbaa !27
  %t103 = load ptr, ptr %l5, !tbaa !29
  %t105 = getelementptr %"compiler/ast:TypeDecl", ptr %t103, i32 0, i32 1
  %t106 = load { i64, ptr }, ptr %t105, !tbaa !27
  store { i64, ptr } %t106, ptr %l11, !tbaa !27
  store i64 0, ptr %l12, !tbaa !24
  %t108 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t110 = extractvalue { i64, ptr } %t108, 0
  store i64 %t110, ptr %l13, !tbaa !24
  br label %bb28
bb28:
  %t112 = load i64, ptr %l12, !tbaa !24
  %t113 = load i64, ptr %l13, !tbaa !24
  %t116 = icmp slt i64 %t112, %t113
  %t118 = xor i1 %t116, true
  br i1 %t118, label %bb29, label %bb30
bb29:
  br label %bb42
bb30:
  br label %bb31
bb31:
  %t120 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t120, ptr %l70, !tbaa !27
  %t121 = load i64, ptr %l12, !tbaa !24
  %t123 = getelementptr { i64, ptr }, ptr %l70, i32 0, i32 1
  %t124 = load ptr, ptr %t123, !tbaa !27
  %t125 = getelementptr ptr, ptr %t124, i64 %t121
  %t126 = load ptr, ptr %t125, !tbaa !39
  store ptr %t126, ptr %l14, !tbaa !29
  %t128 = load ptr, ptr %l14, !tbaa !29
  %t130 = getelementptr %"compiler/ast:TypeParam", ptr %t128, i32 0, i32 4
  %t131 = load i1, ptr %t130, !tbaa !21
  br i1 %t131, label %bb32, label %bb33
bb32:
  store %olang.scope zeroinitializer, ptr %s6
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t134 = load ptr, ptr %l14, !tbaa !29
  %t136 = getelementptr %"compiler/ast:TypeParam", ptr %t134, i32 0, i32 1
  %t137 = load i32, ptr %t136, !tbaa !23
  %t140 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s6, ptr %t133, i32 %t137)
  store { i64, ptr } %t140, ptr %l78
  br label %bb34
bb33:
  store %olang.scope zeroinitializer, ptr %s8
  store ptr %l9, ptr %l83, !tbaa !29
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t142 = load ptr, ptr %l14, !tbaa !29
  %t144 = getelementptr %"compiler/ast:TypeParam", ptr %t142, i32 0, i32 1
  %t145 = load i32, ptr %t144, !tbaa !23
  %t148 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s8, ptr %t141, i32 %t145)
  store { i64, ptr } %t148, ptr %l87
  br label %bb38
bb34:
  %t149 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d23, i32 0, i32 1) }, 1
  %t150 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d23, i32 0, i32 1) }, 0
  %t151 = load { i64, ptr }, ptr %l78, !tbaa !27
  %t152 = extractvalue { i64, ptr } %t151, 1
  %t153 = extractvalue { i64, ptr } %t151, 0
  %t154 = add i64 %t150, %t153
  %t155 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t154)
  call void @olang_textcopy(ptr %t155, ptr %t149, i64 %t150)
  %t156 = getelementptr i8, ptr %t155, i64 %t150
  call void @olang_textcopy(ptr %t156, ptr %t152, i64 %t153)
  %t157 = insertvalue { i64, ptr } undef, i64 %t154, 0
  %t158 = insertvalue { i64, ptr } %t157, ptr %t155, 1
  store { i64, ptr } %t158, ptr %l79, !tbaa !27
  %t159 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t160 = extractvalue { i64, ptr } %t159, 0
  %t161 = load { i64, ptr }, ptr %l79, !tbaa !27
  %t162 = extractvalue { i64, ptr } %t161, 0
  store i64 %t162, ptr %l81, !tbaa !24
  %t164 = load i64, ptr %l81, !tbaa !24
  %t165 = icmp eq i64 %t160, %t164
  br i1 %t165, label %bb35, label %bb36
bb35:
  %t167 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t168 = load ptr, ptr %t167, !tbaa !27
  %t169 = getelementptr { i64, ptr }, ptr %l79, i32 0, i32 1
  %t170 = load ptr, ptr %t169, !tbaa !27
  %t171 = load i64, ptr %l81, !tbaa !24
  %t172 = mul i64 %t171, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t168, ptr %t170, i64 %t172, i1 false)
  br label %bb37
bb36:
  %t173 = load { i64, ptr }, ptr %l79, !tbaa !27
  store { i64, ptr } %t173, ptr %l10, !tbaa !27
  br label %bb37
bb37:
  call void @__olang_scope_close(ptr %s6)
  br label %bb40
bb38:
  %t174 = load { i64, ptr }, ptr %l87, !tbaa !27
  %t175 = extractvalue { i64, ptr } %t174, 1
  %t176 = extractvalue { i64, ptr } %t174, 0
  %t177 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t176)
  call void @olang_textcopy(ptr %t177, ptr %t175, i64 %t176)
  %t178 = insertvalue { i64, ptr } undef, i64 %t176, 0
  %t179 = insertvalue { i64, ptr } %t178, ptr %t177, 1
  %t180 = load ptr, ptr %l83, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_3e_2ePus_H7d1143c374f11cf9cab67f1e79e7bcb4(ptr %s0, ptr %t180, { i64, ptr } %t179)
  br label %bb39
bb39:
  call void @__olang_scope_close(ptr %s8)
  br label %bb40
bb40:
  br label %bb41
bb41:
  %t182 = load i64, ptr %l12, !tbaa !24
  %t184 = add i64 %t182, 1
  store i64 %t184, ptr %l12, !tbaa !24
  br label %bb28
bb42:
  %t186 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t186, ptr %l91, !tbaa !27
  %t188 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_3e_2eJoin(ptr %s0, ptr %s0, ptr %s0, ptr %l9, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d24, i32 0, i32 1) })
  store { i64, ptr } %t188, ptr %l93
  br label %bb43
bb43:
  %t189 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t190 = load { i64, ptr }, ptr %l91, !tbaa !27
  %t191 = extractvalue { i64, ptr } %t190, 1
  %t192 = extractvalue { i64, ptr } %t190, 0
  %t193 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d25, i32 0, i32 1) }, 1
  %t194 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d25, i32 0, i32 1) }, 0
  %t195 = add i64 %t192, %t194
  %t196 = load { i64, ptr }, ptr %l93, !tbaa !27
  %t197 = extractvalue { i64, ptr } %t196, 1
  %t198 = extractvalue { i64, ptr } %t196, 0
  %t199 = add i64 %t195, %t198
  %t201 = extractvalue { i64, ptr } %t189, 1
  %t202 = extractvalue { i64, ptr } %t189, 0
  %t203 = add i64 %t199, %t202
  %t204 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d26, i32 0, i32 1) }, 1
  %t205 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d26, i32 0, i32 1) }, 0
  %t206 = add i64 %t203, %t205
  %t207 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t206)
  call void @olang_textcopy(ptr %t207, ptr %t191, i64 %t192)
  %t208 = getelementptr i8, ptr %t207, i64 %t192
  call void @olang_textcopy(ptr %t208, ptr %t193, i64 %t194)
  %t209 = getelementptr i8, ptr %t208, i64 %t194
  call void @olang_textcopy(ptr %t209, ptr %t197, i64 %t198)
  %t210 = getelementptr i8, ptr %t209, i64 %t198
  call void @olang_textcopy(ptr %t210, ptr %t201, i64 %t202)
  %t211 = getelementptr i8, ptr %t210, i64 %t202
  call void @olang_textcopy(ptr %t211, ptr %t204, i64 %t205)
  %t212 = insertvalue { i64, ptr } undef, i64 %t206, 0
  %t213 = insertvalue { i64, ptr } %t212, ptr %t207, 1
  store { i64, ptr } %t213, ptr %l15, !tbaa !27
  %t215 = load ptr, ptr %l0, !tbaa !29
  %t217 = getelementptr %"compiler/check:Checker", ptr %t215, i32 0, i32 1
  %t218 = load ptr, ptr %t217, !tbaa !29
  %t220 = getelementptr %"compiler/generic:Program", ptr %t218, i32 0, i32 2
  store ptr %t220, ptr %l98, !tbaa !29
  %t221 = load ptr, ptr %l0, !tbaa !29
  store ptr %t221, ptr %l99, !tbaa !29
  %t222 = load ptr, ptr %l0, !tbaa !29
  %t224 = getelementptr %"compiler/check:Checker", ptr %t222, i32 0, i32 1
  %t225 = load ptr, ptr %t224, !tbaa !29
  %t227 = getelementptr %"compiler/generic:Program", ptr %t225, i32 0, i32 2
  store ptr %t227, ptr %l102, !tbaa !29
  %t228 = load ptr, ptr %l0, !tbaa !29
  %t230 = getelementptr %"compiler/check:Checker", ptr %t228, i32 0, i32 1
  %t231 = load ptr, ptr %t230, !tbaa !29
  %t232 = load i64, ptr %l1, !tbaa !24
  %t235 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %t231, i64 %t232)
  store i32 %t235, ptr %l106
  br label %bb44
bb44:
  %t236 = load ptr, ptr %l102, !tbaa !29
  %t237 = load i32, ptr %l106, !tbaa !23
  %t238 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t236, i32 %t237)
  store i32 %t238, ptr %l107
  br label %bb45
bb45:
  %t239 = load ptr, ptr %l99, !tbaa !29
  %t240 = load i32, ptr %l107, !tbaa !23
  %t241 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t239, i32 %t240)
  store i32 %t241, ptr %l108
  br label %bb46
bb46:
  %t242 = load ptr, ptr %l98, !tbaa !29
  %t243 = load i32, ptr %l108, !tbaa !23
  %t244 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t242, i32 %t243)
  store i32 %t244, ptr %l109
  br label %bb47
bb47:
  %t245 = load i32, ptr %l109, !tbaa !23
  store i32 %t245, ptr %l16, !tbaa !23
  %t246 = load ptr, ptr %l0, !tbaa !29
  %t248 = getelementptr %"compiler/check:Checker", ptr %t246, i32 0, i32 1
  %t249 = load ptr, ptr %t248, !tbaa !29
  %t251 = getelementptr %"compiler/generic:Program", ptr %t249, i32 0, i32 2
  %t252 = load i32, ptr %l16, !tbaa !23
  %t255 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t251, i32 %t252)
  store i32 %t255, ptr %l114
  br label %bb48
bb48:
  %t256 = load i32, ptr %l114, !range !{i32 0, i32 33}
  %t258 = trunc i64 18 to i32
  %t259 = icmp eq i32 %t256, %t258
  br i1 %t259, label %bb49, label %bb50
bb49:
  %t261 = load ptr, ptr %l0, !tbaa !29
  %t263 = getelementptr %"compiler/check:Checker", ptr %t261, i32 0, i32 1
  %t264 = load ptr, ptr %t263, !tbaa !29
  %t266 = getelementptr %"compiler/generic:Program", ptr %t264, i32 0, i32 2
  %t267 = load i32, ptr %l16, !tbaa !23
  %t270 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t266, i32 %t267)
  store i32 %t270, ptr %l122
  br label %bb51
bb50:
  store i1 false, ptr %l117, !tbaa !21
  br label %bb53
bb51:
  %t271 = load ptr, ptr %l0, !tbaa !29
  %t273 = getelementptr %"compiler/check:Checker", ptr %t271, i32 0, i32 1
  %t274 = load ptr, ptr %t273, !tbaa !29
  %t276 = getelementptr %"compiler/generic:Program", ptr %t274, i32 0, i32 2
  %t277 = load i32, ptr %l2, !tbaa !23
  %t280 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t276, i32 %t277)
  store i32 %t280, ptr %l127
  br label %bb52
bb52:
  %t281 = load i32, ptr %l122, !tbaa !23
  %t282 = load i32, ptr %l127, !tbaa !23
  %t283 = icmp eq i32 %t281, %t282
  store i1 %t283, ptr %l117, !tbaa !21
  br label %bb53
bb53:
  %t285 = load i1, ptr %l117, !tbaa !21
  br i1 %t285, label %bb54, label %bb55
bb54:
  %t286 = load ptr, ptr %l0, !tbaa !29
  %t287 = load i32, ptr %l16, !tbaa !23
  %t290 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s0, ptr %t286, i32 %t287)
  store { i64, ptr } %t290, ptr %l132
  br label %bb56
bb55:
  store i1 false, ptr %l129, !tbaa !21
  br label %bb58
bb56:
  %t291 = load { i64, ptr }, ptr %l132, !tbaa !27
  %t292 = extractvalue { i64, ptr } %t291, 0
  %t293 = extractvalue { i64, ptr } %t291, 1
  %t294 = mul i64 %t292, 1
  %t295 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t294)
  call void @llvm.memcpy.p0.p0.i64(ptr %t295, ptr %t293, i64 %t294, i1 false)
  %t296 = insertvalue { i64, ptr } undef, i64 %t292, 0
  %t297 = insertvalue { i64, ptr } %t296, ptr %t295, 1
  %t298 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t301 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t297, { i64, ptr } %t298)
  store i1 %t301, ptr %l135
  br label %bb57
bb57:
  %t302 = load i1, ptr %l135, !tbaa !21
  %t303 = xor i1 %t302, true
  store i1 %t303, ptr %l129, !tbaa !21
  br label %bb58
bb58:
  %t305 = load i1, ptr %l129, !tbaa !21
  br i1 %t305, label %bb59, label %bb60
bb59:
  %t306 = load ptr, ptr %l0, !tbaa !29
  %t307 = load i32, ptr %l16, !tbaa !23
  %t310 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s0, ptr %t306, i32 %t307)
  store { i64, ptr } %t310, ptr %l140
  br label %bb61
bb60:
  %t311 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t313 = extractvalue { i64, ptr } %t311, 1
  %t314 = extractvalue { i64, ptr } %t311, 0
  %t315 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d27, i32 0, i32 1) }, 1
  %t316 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d27, i32 0, i32 1) }, 0
  %t317 = add i64 %t314, %t316
  %t318 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t317)
  call void @olang_textcopy(ptr %t318, ptr %t313, i64 %t314)
  %t319 = getelementptr i8, ptr %t318, i64 %t314
  call void @olang_textcopy(ptr %t319, ptr %t315, i64 %t316)
  %t320 = insertvalue { i64, ptr } undef, i64 %t317, 0
  %t321 = insertvalue { i64, ptr } %t320, ptr %t318, 1
  store { i64, ptr } %t321, ptr %l137, !tbaa !27
  br label %bb62
bb61:
  %t323 = load { i64, ptr }, ptr %l140, !tbaa !27
  store { i64, ptr } %t323, ptr %l137, !tbaa !27
  br label %bb62
bb62:
  %t324 = load { i64, ptr }, ptr %l137, !tbaa !27
  %t325 = load ptr, ptr %l0, !tbaa !29
  store ptr %t325, ptr %l143, !tbaa !29
  store %"compiler/source:Span" %a3, ptr %l144
  %t327 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t327, ptr %l145, !tbaa !27
  %t328 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t328, ptr %l146, !tbaa !27
  store { i64, ptr } %t324, ptr %l147, !tbaa !27
  %t330 = load ptr, ptr %l0, !tbaa !29
  %t331 = load ptr, ptr %l4, !tbaa !29
  %t333 = getelementptr %"compiler/ast:Func", ptr %t331, i32 0, i32 10
  %t334 = load i32, ptr %t333, !tbaa !23
  %t337 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t330, i32 %t334)
  store { i64, ptr } %t337, ptr %l151
  br label %bb63
bb63:
  %t338 = load { i64, ptr }, ptr %l145, !tbaa !27
  %t339 = load { i64, ptr }, ptr %l146, !tbaa !27
  %t340 = load { i64, ptr }, ptr %l147, !tbaa !27
  %t341 = load { i64, ptr }, ptr %l151, !tbaa !27
  %t342 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBuilderOwnerBare(ptr %v0, ptr %s0, ptr %s0, ptr %v0, ptr %v0, { i64, ptr } %t338, { i64, ptr } %t339, { i64, ptr } %t340, { i64, ptr } %t341)
  store %"compiler/diagmsg:Msg" %t342, ptr %l152
  br label %bb64
bb64:
  %t343 = load ptr, ptr %l143, !tbaa !29
  %t344 = load %"compiler/source:Span", ptr %l144
  %t345 = load %"compiler/diagmsg:Msg", ptr %l152
  %t346 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t343, %"compiler/source:Span" %t344, %"compiler/diagmsg:Msg" %t345)
  store i64 %t346, ptr %l153
  br label %bb65
bb65:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erawValue(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i32 %a3, ptr %a4, { i64, ptr } %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i32
  %l5 = alloca { i64, ptr }
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca i32
  %l10 = alloca i64
  %l11 = alloca ptr
  %l12 = alloca i64
  %l13 = alloca ptr
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l20 = alloca i64
  %l24 = alloca ptr
  %l29 = alloca ptr
  %l30 = alloca %"compiler/source:Span"
  %l33 = alloca { i64, ptr }
  %l35 = alloca %"compiler/diagmsg:Msg"
  %l36 = alloca i64
  %l41 = alloca ptr
  %l45 = alloca ptr
  %l46 = alloca %"compiler/source:Span"
  %l47 = alloca %"compiler/diagmsg:Msg"
  %l48 = alloca i64
  %l53 = alloca ptr
  %l57 = alloca ptr
  %l58 = alloca ptr
  %l59 = alloca i1
  %l67 = alloca i1
  %l77 = alloca ptr
  %l81 = alloca ptr
  %l83 = alloca i32
  %l86 = alloca i64
  %l90 = alloca ptr
  %l93 = alloca ptr
  %l98 = alloca i32
  %l99 = alloca { i64, ptr }
  %l106 = alloca ptr
  %l112 = alloca i64
  %l115 = alloca i64
  %l137 = alloca ptr
  %l138 = alloca %"compiler/source:Span"
  %l139 = alloca i32
  %l140 = alloca i32
  %l144 = alloca ptr
  %l145 = alloca ptr
  %l146 = alloca %"compiler/source:Span"
  %l148 = alloca i32
  %l150 = alloca ptr
  %l152 = alloca ptr
  %l153 = alloca %"compiler/source:Span"
  %l154 = alloca i32
  %l155 = alloca ptr
  %l160 = alloca ptr
  %l163 = alloca %"compiler/typed:Cond"
  %l171 = alloca i64
  %l174 = alloca %"compiler/source:Span"
  %l175 = alloca i32
  %l179 = alloca { i64, ptr }
  %l182 = alloca %"compiler/typed:Seq"
  %s0 = alloca %olang.scope
  %rv = alloca ptr
  %t290 = alloca { i64, [5 x i64] }, align 8
  %t333 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store %"compiler/source:Span" %a2, ptr %l2
  store i32 %a3, ptr %l3
  store { i64, ptr } %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l3, !tbaa !23
  %t5 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erawsOf(ptr %v0, ptr %v3, ptr %t1, i32 %t2)
  store ptr %t5, ptr %l24
  br label %bb1
bb1:
  %t6 = load ptr, ptr %l24, !tbaa !29
  store ptr %t6, ptr %l6, !tbaa !29
  %t7 = load ptr, ptr %l6, !tbaa !29
  %t9 = getelementptr %"compiler/check:rawTable", ptr %t7, i32 0, i32 0
  %t10 = load i32, ptr %t9, !tbaa !23
  %t11 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t14 = icmp eq i32 %t10, %t11
  br i1 %t14, label %bb2, label %bb3
bb2:
  %t16 = load ptr, ptr %l0, !tbaa !29
  store ptr %t16, ptr %l29, !tbaa !29
  %t17 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t17, ptr %l30
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t19 = load i32, ptr %l3, !tbaa !23
  %t22 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t18, i32 %t19)
  store { i64, ptr } %t22, ptr %l33
  br label %bb4
bb3:
  br label %bb9
bb4:
  %t23 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t24 = extractvalue { i64, ptr } %t23, 0
  %t25 = extractvalue { i64, ptr } %t23, 1
  %t26 = mul i64 %t24, 1
  %t27 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t26)
  call void @llvm.memcpy.p0.p0.i64(ptr %t27, ptr %t25, i64 %t26, i1 false)
  %t28 = insertvalue { i64, ptr } undef, i64 %t24, 0
  %t29 = insertvalue { i64, ptr } %t28, ptr %t27, 1
  %t31 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoRawValues(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t29, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d28, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t31, ptr %l35
  br label %bb5
bb5:
  %t32 = load ptr, ptr %l29, !tbaa !29
  %t33 = load %"compiler/source:Span", ptr %l30
  %t34 = load %"compiler/diagmsg:Msg", ptr %l35
  %t35 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t32, %"compiler/source:Span" %t33, %"compiler/diagmsg:Msg" %t34)
  store i64 %t35, ptr %l36
  br label %bb6
bb6:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t37 = load { i64, ptr }, ptr %l5, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v2, ptr %t36, { i64, ptr } %t37)
  br label %bb7
bb7:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t41 = load %"compiler/source:Span", ptr %l1
  %t44 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t40, %"compiler/source:Span" %t41)
  store ptr %t44, ptr %l41
  br label %bb8
bb8:
  call void @__olang_scope_close(ptr %s0)
  %t45 = load ptr, ptr %l41, !tbaa !29
  store ptr %t45, ptr %rv
  br label %ret
bb9:
  %t46 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t48 = extractvalue { i64, ptr } %t46, 0
  %t50 = icmp sgt i64 %t48, 0
  br i1 %t50, label %bb10, label %bb11
bb10:
  %t52 = load ptr, ptr %l0, !tbaa !29
  store ptr %t52, ptr %l45, !tbaa !29
  %t53 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t53, ptr %l46
  %t54 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTakesNoArgs(ptr %v0, ptr %v0, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d29, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t54, ptr %l47
  br label %bb12
bb11:
  br label %bb16
bb12:
  %t55 = load ptr, ptr %l45, !tbaa !29
  %t56 = load %"compiler/source:Span", ptr %l46
  %t57 = load %"compiler/diagmsg:Msg", ptr %l47
  %t58 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t55, %"compiler/source:Span" %t56, %"compiler/diagmsg:Msg" %t57)
  store i64 %t58, ptr %l48
  br label %bb13
bb13:
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t60 = load { i64, ptr }, ptr %l5, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v2, ptr %t59, { i64, ptr } %t60)
  br label %bb14
bb14:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t64 = load %"compiler/source:Span", ptr %l1
  %t67 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t63, %"compiler/source:Span" %t64)
  store ptr %t67, ptr %l53
  br label %bb15
bb15:
  call void @__olang_scope_close(ptr %s0)
  %t68 = load ptr, ptr %l53, !tbaa !29
  store ptr %t68, ptr %rv
  br label %ret
bb16:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = load %"compiler/source:Span", ptr %l1
  %t75 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalue(ptr %v0, ptr %v1, ptr %v3, ptr %t69, ptr %a4, %"compiler/source:Span" %t71)
  store ptr %t75, ptr %l57
  br label %bb17
bb17:
  %t76 = load ptr, ptr %l57, !tbaa !29
  store ptr %t76, ptr %l7, !tbaa !29
  %t77 = load ptr, ptr %l7, !tbaa !29
  store ptr %t77, ptr %l58, !tbaa !29
  store i1 false, ptr %l59, !tbaa !21
  %t78 = load ptr, ptr %l58, !tbaa !29
  %t79 = icmp ne ptr %t78, null
  br i1 %t79, label %bb18, label %bb19
bb18:
  %t81 = load ptr, ptr %l58, !tbaa !29
  %t82 = load i64, ptr %t81, !range !{i64 0, i64 18}
  %t84 = icmp eq i64 %t82, 7
  store i1 %t84, ptr %l59, !tbaa !21
  br label %bb19
bb19:
  %t85 = load i1, ptr %l59, !tbaa !21
  br i1 %t85, label %bb20, label %bb21
bb20:
  %t86 = load ptr, ptr %l7, !tbaa !29
  %t88 = getelementptr { i64, [5 x i64] }, ptr %t86, i32 0, i32 1
  %t89 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t88, i32 0, i32 2
  %t90 = load ptr, ptr %t89
  store ptr %t90, ptr %l8, !tbaa !29
  br label %bb22
bb21:
  br label %bb30
bb22:
  %t92 = load ptr, ptr %l8, !tbaa !29
  %t94 = getelementptr %"compiler/typed:Make", ptr %t92, i32 0, i32 0
  %t95 = load i32, ptr %t94, !range !{i32 0, i32 5}
  %t97 = trunc i64 1 to i32
  %t98 = icmp eq i32 %t95, %t97
  br i1 %t98, label %bb23, label %bb24
bb23:
  %t100 = load ptr, ptr %l8, !tbaa !29
  %t102 = getelementptr %"compiler/typed:Make", ptr %t100, i32 0, i32 2
  %t103 = load { i64, ptr }, ptr %t102, !tbaa !27
  %t105 = extractvalue { i64, ptr } %t103, 0
  %t107 = icmp eq i64 %t105, 0
  store i1 %t107, ptr %l67, !tbaa !21
  br label %bb25
bb24:
  store i1 false, ptr %l67, !tbaa !21
  br label %bb25
bb25:
  %t109 = load i1, ptr %l67, !tbaa !21
  br i1 %t109, label %bb26, label %bb27
bb26:
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t111 = load %"compiler/source:Span", ptr %l1
  %t112 = load ptr, ptr %l6, !tbaa !29
  %t113 = load ptr, ptr %l8, !tbaa !29
  %t115 = getelementptr %"compiler/typed:Make", ptr %t113, i32 0, i32 1
  %t116 = load i64, ptr %t115, !tbaa !24
  %t121 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erawOf(ptr %v0, ptr %v3, ptr %v3, ptr %t110, %"compiler/source:Span" %t111, ptr %t112, i64 %t116)
  store ptr %t121, ptr %l77
  br label %bb28
bb27:
  br label %bb29
bb28:
  call void @__olang_scope_close(ptr %s0)
  %t122 = load ptr, ptr %l77, !tbaa !29
  store ptr %t122, ptr %rv
  br label %ret
bb29:
  br label %bb35
bb30:
  br i1 true, label %bb31, label %bb32
bb31:
  br label %bb33
bb32:
  br label %bb34
bb33:
  br label %bb35
bb34:
  call void @__olang_check_failed(ptr @olang_loc_ae47705a59a44e66_359fd7be25172bfa)
  unreachable
bb35:
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t124 = load %"compiler/source:Span", ptr %l1
  %t125 = load ptr, ptr %l6, !tbaa !29
  %t129 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erawOf(ptr %v0, ptr %v3, ptr %s0, ptr %t123, %"compiler/source:Span" %t124, ptr %t125, i64 0)
  store ptr %t129, ptr %l81
  br label %bb36
bb36:
  %t130 = load ptr, ptr %l81, !tbaa !29
  %t132 = call i32 @compiler_2fcheck_2etypeOf(ptr %s0, ptr %t130)
  store i32 %t132, ptr %l83
  br label %bb37
bb37:
  %t133 = load i32, ptr %l83, !tbaa !23
  store i32 %t133, ptr %l9, !tbaa !23
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t136 = getelementptr %"compiler/check:Checker", ptr %t134, i32 0, i32 37
  %t138 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t136)
  store i64 %t138, ptr %l86
  br label %bb38
bb38:
  %t139 = load i64, ptr %l86, !tbaa !24
  store i64 %t139, ptr %l10, !tbaa !24
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t141 = load %"compiler/source:Span", ptr %l1
  %t142 = load ptr, ptr %l7, !tbaa !29
  %t146 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eheldOf(ptr %v0, ptr %v3, ptr %v3, ptr %t140, %"compiler/source:Span" %t141, ptr %t142)
  store ptr %t146, ptr %l90
  br label %bb39
bb39:
  %t147 = load ptr, ptr %l90, !tbaa !29
  store ptr %t147, ptr %l11, !tbaa !29
  %t148 = load ptr, ptr %l0, !tbaa !29
  %t150 = getelementptr %"compiler/check:Checker", ptr %t148, i32 0, i32 1
  %t151 = load ptr, ptr %t150, !tbaa !29
  %t153 = getelementptr %"compiler/generic:Program", ptr %t151, i32 0, i32 2
  store ptr %t153, ptr %l93, !tbaa !29
  %t154 = load ptr, ptr %l0, !tbaa !29
  %t156 = getelementptr %"compiler/check:Checker", ptr %t154, i32 0, i32 1
  %t157 = load ptr, ptr %t156, !tbaa !29
  %t159 = getelementptr %"compiler/generic:Program", ptr %t157, i32 0, i32 2
  %t160 = load i32, ptr %l3, !tbaa !23
  %t163 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %t159, i32 %t160)
  store i32 %t163, ptr %l98
  br label %bb40
bb40:
  %t164 = load ptr, ptr %l93, !tbaa !29
  %t165 = load i32, ptr %l98, !tbaa !23
  %t166 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t164, i32 %t165)
  store { i64, ptr } %t166, ptr %l99
  br label %bb41
bb41:
  %t167 = load { i64, ptr }, ptr %l99, !tbaa !27
  %t168 = extractvalue { i64, ptr } %t167, 0
  store i64 %t168, ptr %l12, !tbaa !24
  %t170 = load ptr, ptr %l0, !tbaa !29
  %t171 = load %"compiler/source:Span", ptr %l1
  %t172 = load ptr, ptr %l6, !tbaa !29
  %t173 = load i64, ptr %l12, !tbaa !24
  %t175 = sub i64 %t173, 1
  %t180 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erawOf(ptr %v0, ptr %v3, ptr %v3, ptr %t170, %"compiler/source:Span" %t171, ptr %t172, i64 %t175)
  store ptr %t180, ptr %l106
  br label %bb42
bb42:
  %t181 = load ptr, ptr %l106, !tbaa !29
  store ptr %t181, ptr %l13, !tbaa !29
  store i64 0, ptr %l14, !tbaa !24
  %t182 = load i64, ptr %l12, !tbaa !24
  %t184 = sub i64 %t182, 1
  store i64 %t184, ptr %l15, !tbaa !24
  store i64 1, ptr %l16, !tbaa !24
  %t186 = load i64, ptr %l15, !tbaa !24
  %t187 = load i64, ptr %l14, !tbaa !24
  %t190 = icmp sgt i64 %t186, %t187
  br i1 %t190, label %bb43, label %bb44
bb43:
  %t192 = load i64, ptr %l16, !tbaa !24
  %t194 = icmp sgt i64 %t192, 0
  br i1 %t194, label %bb45, label %bb46
bb44:
  store i64 0, ptr %l112, !tbaa !24
  br label %bb48
bb45:
  %t196 = load i64, ptr %l15, !tbaa !24
  %t197 = load i64, ptr %l14, !tbaa !24
  %t200 = sub i64 %t196, %t197
  %t201 = load i64, ptr %l16, !tbaa !24
  %t204 = add i64 %t200, %t201
  %t206 = sub i64 %t204, 1
  %t207 = load i64, ptr %l16, !tbaa !24
  %t210 = sdiv i64 %t206, %t207
  store i64 %t210, ptr %l115, !tbaa !24
  br label %bb47
bb46:
  store i64 0, ptr %l115, !tbaa !24
  br label %bb47
bb47:
  %t212 = load i64, ptr %l115, !tbaa !24
  store i64 %t212, ptr %l112, !tbaa !24
  br label %bb48
bb48:
  %t213 = load i64, ptr %l112, !tbaa !24
  store i64 %t213, ptr %l17, !tbaa !24
  store i64 0, ptr %l18, !tbaa !24
  br label %bb49
bb49:
  %t214 = load i64, ptr %l18, !tbaa !24
  %t215 = load i64, ptr %l17, !tbaa !24
  %t218 = icmp slt i64 %t214, %t215
  %t220 = xor i1 %t218, true
  br i1 %t220, label %bb50, label %bb51
bb50:
  br label %bb60
bb51:
  br label %bb52
bb52:
  %t222 = load i64, ptr %l14, !tbaa !24
  %t223 = load i64, ptr %l18, !tbaa !24
  %t224 = load i64, ptr %l16, !tbaa !24
  %t227 = mul i64 %t223, %t224
  %t230 = add i64 %t222, %t227
  %t232 = load i64, ptr %l12, !tbaa !24
  %t234 = sub i64 %t232, 2
  %t238 = sub i64 %t234, %t230
  store i64 %t238, ptr %l20, !tbaa !24
  %t240 = load ptr, ptr %l0, !tbaa !29
  store ptr %t240, ptr %l137, !tbaa !29
  %t241 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t241, ptr %l138
  %t242 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t242, ptr %l139, !tbaa !23
  store i32 23, ptr %l140
  %t243 = load ptr, ptr %l0, !tbaa !29
  %t244 = load %"compiler/source:Span", ptr %l1
  %t245 = load ptr, ptr %l11, !tbaa !29
  %t249 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v3, ptr %v3, ptr %t243, %"compiler/source:Span" %t244, ptr %t245)
  store ptr %t249, ptr %l144
  br label %bb53
bb53:
  %t250 = load ptr, ptr %l0, !tbaa !29
  store ptr %t250, ptr %l145, !tbaa !29
  %t251 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t251, ptr %l146
  %t252 = load ptr, ptr %l0, !tbaa !29
  %t254 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t252)
  store i32 %t254, ptr %l148
  br label %bb54
bb54:
  %t255 = load i64, ptr %l20, !tbaa !24
  %t256 = load ptr, ptr %l145, !tbaa !29
  %t257 = load %"compiler/source:Span", ptr %l146
  %t258 = load i32, ptr %l148, !tbaa !23
  %t260 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v0, ptr %t256, %"compiler/source:Span" %t257, i32 %t258, i64 %t255)
  store ptr %t260, ptr %l150
  br label %bb55
bb55:
  %t261 = load ptr, ptr %l150, !tbaa !29
  %t262 = load ptr, ptr %l137, !tbaa !29
  %t263 = load %"compiler/source:Span", ptr %l138
  %t264 = load i32, ptr %l139, !tbaa !23
  %t265 = load i32, ptr %l140, !range !{i32 0, i32 52}
  %t266 = load ptr, ptr %l144, !tbaa !29
  %t268 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v3, ptr %v0, ptr %v3, ptr %t262, %"compiler/source:Span" %t263, i32 %t264, i32 %t265, ptr %t266, ptr %t261)
  store ptr %t268, ptr %l152
  br label %bb56
bb56:
  %t269 = load ptr, ptr %l152, !tbaa !29
  %t270 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t270, ptr %l153
  %t271 = load i32, ptr %l9, !tbaa !23
  store i32 %t271, ptr %l154, !tbaa !23
  store ptr %t269, ptr %l155, !tbaa !29
  %t273 = load ptr, ptr %l0, !tbaa !29
  %t274 = load %"compiler/source:Span", ptr %l1
  %t275 = load ptr, ptr %l6, !tbaa !29
  %t276 = load i64, ptr %l20, !tbaa !24
  %t281 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erawOf(ptr %v0, ptr %v3, ptr %v3, ptr %t273, %"compiler/source:Span" %t274, ptr %t275, i64 %t276)
  store ptr %t281, ptr %l160
  br label %bb57
bb57:
  %t282 = load ptr, ptr %l160, !tbaa !29
  %t283 = load ptr, ptr %l13, !tbaa !29
  %t284 = load ptr, ptr %l155, !tbaa !29
  %t287 = call %"compiler/typed:Cond" @compiler_2ftyped_3aCond_2ector(ptr %v3, ptr %v3, ptr %v3, ptr %v3, ptr %t284, ptr %t282, ptr %t283)
  store %"compiler/typed:Cond" %t287, ptr %l163
  br label %bb58
bb58:
  %t288 = load %"compiler/typed:Cond", ptr %l163
  %t289 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 24, i64 8)
  store %"compiler/typed:Cond" %t288, ptr %t289
  store { i64, [5 x i64] } zeroinitializer, ptr %t290
  %t291 = getelementptr { i64, [5 x i64] }, ptr %t290, i32 0, i32 0
  store i64 11, ptr %t291
  %t292 = load %"compiler/source:Span", ptr %l153
  %t293 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t292, 0
  %t294 = load i32, ptr %l154, !tbaa !23
  %t295 = insertvalue { %"compiler/source:Span", i32, ptr } %t293, i32 %t294, 1
  %t297 = insertvalue { %"compiler/source:Span", i32, ptr } %t295, ptr %t289, 2
  %t298 = getelementptr { i64, [5 x i64] }, ptr %t290, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t297, ptr %t298
  %t299 = load { i64, [5 x i64] }, ptr %t290
  %t301 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 48, i64 8)
  store { i64, [5 x i64] } %t299, ptr %t301
  store ptr %t301, ptr %l13, !tbaa !29
  br label %bb59
bb59:
  %t303 = load i64, ptr %l18, !tbaa !24
  %t305 = add i64 %t303, 1
  store i64 %t305, ptr %l18, !tbaa !24
  br label %bb49
bb60:
  %t307 = load ptr, ptr %l0, !tbaa !29
  %t309 = getelementptr %"compiler/check:Checker", ptr %t307, i32 0, i32 37
  %t311 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t309)
  store i64 %t311, ptr %l171
  br label %bb61
bb61:
  %t312 = load i64, ptr %l10, !tbaa !24
  %t313 = load i64, ptr %l171, !tbaa !24
  %t315 = icmp sgt i64 %t313, %t312
  br i1 %t315, label %bb62, label %bb63
bb62:
  %t317 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t317, ptr %l174
  %t318 = load i32, ptr %l9, !tbaa !23
  store i32 %t318, ptr %l175, !tbaa !23
  %t319 = load ptr, ptr %l0, !tbaa !29
  %t321 = getelementptr %"compiler/check:Checker", ptr %t319, i32 0, i32 37
  %t322 = load i64, ptr %l10, !tbaa !24
  %t325 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t321, i64 %t322)
  store { i64, ptr } %t325, ptr %l179
  br label %bb64
bb63:
  br label %bb66
bb64:
  %t326 = load ptr, ptr %l13, !tbaa !29
  %t328 = load { i64, ptr }, ptr %l179, !tbaa !27
  %t330 = call %"compiler/typed:Seq" @compiler_2ftyped_3aSeq_2ector(ptr %v0, ptr %v3, ptr %v3, { i64, ptr } %t328, ptr %t326, i1 false)
  store %"compiler/typed:Seq" %t330, ptr %l182
  br label %bb65
bb65:
  %t331 = load %"compiler/typed:Seq", ptr %l182
  %t332 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 32, i64 8)
  store %"compiler/typed:Seq" %t331, ptr %t332
  store { i64, [5 x i64] } zeroinitializer, ptr %t333
  %t334 = getelementptr { i64, [5 x i64] }, ptr %t333, i32 0, i32 0
  store i64 12, ptr %t334
  %t335 = load %"compiler/source:Span", ptr %l174
  %t336 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t335, 0
  %t337 = load i32, ptr %l175, !tbaa !23
  %t338 = insertvalue { %"compiler/source:Span", i32, ptr } %t336, i32 %t337, 1
  %t340 = insertvalue { %"compiler/source:Span", i32, ptr } %t338, ptr %t332, 2
  %t341 = getelementptr { i64, [5 x i64] }, ptr %t333, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t340, ptr %t341
  %t342 = load { i64, [5 x i64] }, ptr %t333
  %t344 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 48, i64 8)
  store { i64, [5 x i64] } %t342, ptr %t344
  call void @__olang_scope_close(ptr %s0)
  store ptr %t344, ptr %rv
  br label %ret
bb66:
  %t346 = load ptr, ptr %l13, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t346, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erefWritten(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca { i64, ptr }
  %l5 = alloca i1
  %l7 = alloca ptr
  %l8 = alloca i1
  %l18 = alloca i1
  %l21 = alloca ptr
  %l23 = alloca ptr
  %l27 = alloca %"compiler/names:Ref"
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = call i1 @compiler_2fcheck_2erefWrittenTop(ptr %v1, ptr %t1)
  store i1 %t3, ptr %l5
  br label %bb1
bb1:
  %t4 = load i1, ptr %l5, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  store i1 true, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t6 = load ptr, ptr %l1, !tbaa !29
  store ptr %t6, ptr %l7, !tbaa !29
  store i1 false, ptr %l8, !tbaa !21
  %t7 = load ptr, ptr %l7, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb5, label %bb6
bb5:
  %t10 = load ptr, ptr %l7, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 8}
  %t13 = icmp eq i64 %t11, 0
  store i1 %t13, ptr %l8, !tbaa !21
  br label %bb6
bb6:
  %t14 = load i1, ptr %l8, !tbaa !21
  br i1 %t14, label %bb7, label %bb8
bb7:
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t17 = getelementptr { i64, [5 x i64] }, ptr %t15, i32 0, i32 1
  %t18 = getelementptr { %"compiler/source:Span", { i64, ptr }, { i64, ptr } }, ptr %t17, i32 0, i32 0
  %t19 = load %"compiler/source:Span", ptr %t18
  store %"compiler/source:Span" %t19, ptr %l2
  %t21 = load ptr, ptr %l1, !tbaa !29
  %t23 = getelementptr { i64, [5 x i64] }, ptr %t21, i32 0, i32 1
  %t24 = getelementptr { %"compiler/source:Span", { i64, ptr }, { i64, ptr } }, ptr %t23, i32 0, i32 1
  %t25 = load { i64, ptr }, ptr %t24
  store { i64, ptr } %t25, ptr %l3, !tbaa !27
  br label %bb9
bb8:
  br label %bb15
bb9:
  %t27 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t29 = extractvalue { i64, ptr } %t27, 0
  %t31 = icmp eq i64 %t29, 1
  br i1 %t31, label %bb10, label %bb11
bb10:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/check:Checker", ptr %t33, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !29
  %t38 = getelementptr %"compiler/generic:Program", ptr %t36, i32 0, i32 1
  %t39 = load ptr, ptr %t38, !tbaa !29
  store ptr %t39, ptr %l21, !tbaa !29
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t40)
  store ptr %t42, ptr %l23
  br label %bb12
bb11:
  store i1 false, ptr %l18, !tbaa !21
  br label %bb14
bb12:
  %t43 = load ptr, ptr %l23, !tbaa !29
  %t45 = getelementptr %"compiler/check:frame", ptr %t43, i32 0, i32 2
  %t46 = load i64, ptr %t45, !tbaa !24
  %t47 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t48 = load i32, ptr %t47, !tbaa !23
  %t49 = load ptr, ptr %l21, !tbaa !29
  %t52 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %t49, i64 %t46, i32 %t48)
  store %"compiler/names:Ref" %t52, ptr %l27
  br label %bb13
bb13:
  %t53 = getelementptr %"compiler/names:Ref", ptr %l27, i32 0, i32 0
  %t54 = load i32, ptr %t53, !range !{i32 0, i32 9}
  %t56 = trunc i64 8 to i32
  %t57 = icmp eq i32 %t54, %t56
  store i1 %t57, ptr %l18, !tbaa !21
  br label %bb14
bb14:
  %t59 = load i1, ptr %l18, !tbaa !21
  store i1 %t59, ptr %rv
  br label %ret
bb15:
  br i1 true, label %bb16, label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb19
bb18:
  store i1 false, ptr %rv
  br label %ret
bb19:
  call void @__olang_check_failed(ptr @olang_loc_58f5ed8d4062e7cf_cb67a99e0ba25c43)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esameRepr(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca i32
  %l10 = alloca i1
  %l14 = alloca i32
  %l17 = alloca i32
  %l23 = alloca i1
  %l29 = alloca i1
  %l30 = alloca i1
  %l35 = alloca i1
  %l43 = alloca i32
  %l46 = alloca i1
  %l51 = alloca i32
  %l58 = alloca i32
  %l60 = alloca i1
  %l64 = alloca i1
  %l67 = alloca ptr
  %l72 = alloca i32
  %l77 = alloca i32
  %l78 = alloca i1
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
  %t8 = load i32, ptr %l2, !tbaa !23
  %t12 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t6, i32 %t7, i32 %t8)
  store i1 %t12, ptr %l10
  br label %bb1
bb1:
  %t13 = load i1, ptr %l10, !tbaa !21
  br i1 %t13, label %bb2, label %bb3
bb2:
  store i1 true, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load i32, ptr %l1, !tbaa !23
  %t19 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %t15, i32 %t16)
  store i32 %t19, ptr %l14
  br label %bb5
bb5:
  %t20 = load i32, ptr %l14, !tbaa !23
  store i32 %t20, ptr %l3, !tbaa !23
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = load i32, ptr %l2, !tbaa !23
  %t25 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %t21, i32 %t22)
  store i32 %t25, ptr %l17
  br label %bb6
bb6:
  %t26 = load i32, ptr %l17, !tbaa !23
  store i32 %t26, ptr %l4, !tbaa !23
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/check:Checker", ptr %t27, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !29
  %t32 = getelementptr %"compiler/generic:Program", ptr %t30, i32 0, i32 2
  %t33 = load i32, ptr %l3, !tbaa !23
  %t34 = load i32, ptr %l4, !tbaa !23
  %t38 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t32, i32 %t33, i32 %t34)
  store i1 %t38, ptr %l23
  br label %bb7
bb7:
  %t39 = load i1, ptr %l23, !tbaa !21
  br i1 %t39, label %bb8, label %bb9
bb8:
  store i1 true, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/check:Checker", ptr %t41, i32 0, i32 1
  %t44 = load ptr, ptr %t43, !tbaa !29
  %t46 = getelementptr %"compiler/generic:Program", ptr %t44, i32 0, i32 2
  %t47 = load i32, ptr %l3, !tbaa !23
  %t50 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNumber(ptr %v0, ptr %t46, i32 %t47)
  store i1 %t50, ptr %l29
  br label %bb11
bb11:
  %t51 = load i1, ptr %l29, !tbaa !21
  br i1 %t51, label %bb12, label %bb13
bb12:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/check:Checker", ptr %t52, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !29
  %t57 = getelementptr %"compiler/generic:Program", ptr %t55, i32 0, i32 2
  %t58 = load i32, ptr %l4, !tbaa !23
  %t61 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNumber(ptr %v0, ptr %t57, i32 %t58)
  store i1 %t61, ptr %l35
  br label %bb14
bb13:
  store i1 false, ptr %l30, !tbaa !21
  br label %bb15
bb14:
  %t62 = load i1, ptr %l35, !tbaa !21
  store i1 %t62, ptr %l30, !tbaa !21
  br label %bb15
bb15:
  %t63 = load i1, ptr %l30, !tbaa !21
  br i1 %t63, label %bb16, label %bb17
bb16:
  %t64 = load i32, ptr %l3, !tbaa !23
  %t65 = load i32, ptr %l4, !tbaa !23
  %t68 = icmp eq i32 %t64, %t65
  store i1 %t68, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/check:Checker", ptr %t70, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !29
  %t75 = getelementptr %"compiler/generic:Program", ptr %t73, i32 0, i32 2
  %t76 = load i32, ptr %l3, !tbaa !23
  %t79 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t75, i32 %t76)
  store i32 %t79, ptr %l43
  br label %bb19
bb19:
  %t80 = load i32, ptr %l43, !range !{i32 0, i32 33}
  %t82 = trunc i64 19 to i32
  %t83 = icmp eq i32 %t80, %t82
  br i1 %t83, label %bb20, label %bb21
bb20:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = getelementptr %"compiler/check:Checker", ptr %t85, i32 0, i32 1
  %t88 = load ptr, ptr %t87, !tbaa !29
  %t90 = getelementptr %"compiler/generic:Program", ptr %t88, i32 0, i32 2
  %t91 = load i32, ptr %l4, !tbaa !23
  %t94 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t90, i32 %t91)
  store i32 %t94, ptr %l51
  br label %bb22
bb21:
  store i1 false, ptr %l46, !tbaa !21
  br label %bb23
bb22:
  %t95 = load i32, ptr %l51, !range !{i32 0, i32 33}
  %t97 = trunc i64 19 to i32
  %t98 = icmp eq i32 %t95, %t97
  store i1 %t98, ptr %l46, !tbaa !21
  br label %bb23
bb23:
  %t100 = load i1, ptr %l46, !tbaa !21
  br i1 %t100, label %bb24, label %bb25
bb24:
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t103 = getelementptr %"compiler/check:Checker", ptr %t101, i32 0, i32 1
  %t104 = load ptr, ptr %t103, !tbaa !29
  %t106 = getelementptr %"compiler/generic:Program", ptr %t104, i32 0, i32 2
  %t107 = load i32, ptr %l4, !tbaa !23
  %t110 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t106, i32 %t107)
  store i32 %t110, ptr %l58
  br label %bb26
bb25:
  br label %bb37
bb26:
  %t111 = load i32, ptr %l58, !tbaa !23
  %t112 = icmp ne i32 %t111, 0
  br i1 %t112, label %bb27, label %bb28
bb27:
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t115 = load i32, ptr %l3, !tbaa !23
  %t116 = load i32, ptr %l4, !tbaa !23
  %t120 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elengthsMeet(ptr %v0, ptr %t114, i32 %t115, i32 %t116)
  store i1 %t120, ptr %l64
  br label %bb29
bb28:
  store i1 false, ptr %l60, !tbaa !21
  br label %bb30
bb29:
  %t121 = load i1, ptr %l64, !tbaa !21
  %t122 = xor i1 %t121, true
  store i1 %t122, ptr %l60, !tbaa !21
  br label %bb30
bb30:
  %t124 = load i1, ptr %l60, !tbaa !21
  br i1 %t124, label %bb31, label %bb32
bb31:
  store i1 false, ptr %rv
  br label %ret
bb32:
  br label %bb33
bb33:
  %t126 = load ptr, ptr %l0, !tbaa !29
  store ptr %t126, ptr %l67, !tbaa !29
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t129 = getelementptr %"compiler/check:Checker", ptr %t127, i32 0, i32 1
  %t130 = load ptr, ptr %t129, !tbaa !29
  %t132 = getelementptr %"compiler/generic:Program", ptr %t130, i32 0, i32 2
  %t133 = load i32, ptr %l3, !tbaa !23
  %t136 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t132, i32 %t133)
  store i32 %t136, ptr %l72
  br label %bb34
bb34:
  %t137 = load ptr, ptr %l0, !tbaa !29
  %t139 = getelementptr %"compiler/check:Checker", ptr %t137, i32 0, i32 1
  %t140 = load ptr, ptr %t139, !tbaa !29
  %t142 = getelementptr %"compiler/generic:Program", ptr %t140, i32 0, i32 2
  %t143 = load i32, ptr %l4, !tbaa !23
  %t146 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t142, i32 %t143)
  store i32 %t146, ptr %l77
  br label %bb35
bb35:
  %t147 = load ptr, ptr %l67, !tbaa !29
  %t148 = load i32, ptr %l72, !tbaa !23
  %t149 = load i32, ptr %l77, !tbaa !23
  %t150 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esameRepr(ptr %v0, ptr %t147, i32 %t148, i32 %t149)
  store i1 %t150, ptr %l78
  br label %bb36
bb36:
  %t151 = load i1, ptr %l78, !tbaa !21
  store i1 %t151, ptr %rv
  br label %ret
bb37:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eseqColumn(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca i64
  %l6 = alloca i64
  %l8 = alloca i64
  %l13 = alloca { i64, ptr }
  %l15 = alloca { i64, ptr }
  %l17 = alloca ptr
  %s2 = alloca %olang.scope
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a1, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb1
bb1:
  store %olang.scope zeroinitializer, ptr %s2
  %t3 = load i64, ptr %l3, !tbaa !24
  store i64 %t3, ptr %l6, !tbaa !24
  %t4 = load ptr, ptr %l2, !tbaa !29
  %t6 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fast_3aPattern_26_3e_H06f4ae43b564aa38800728c5b9a6edfe(ptr %v1, ptr %t4)
  store i64 %t6, ptr %l8
  br label %bb2
bb2:
  %t7 = load i64, ptr %l6, !tbaa !24
  %t8 = load i64, ptr %l8, !tbaa !24
  %t9 = icmp slt i64 %t7, %t8
  %t11 = xor i1 %t9, true
  br i1 %t11, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s2)
  br label %bb12
bb4:
  br label %bb5
bb5:
  %t13 = load ptr, ptr %l2, !tbaa !29
  %t14 = load i64, ptr %l3, !tbaa !24
  %t17 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fast_3aPattern_26_3e_Hb04d670045d084ea2498d9030c4fbba9(ptr %v1, ptr %v1, ptr %t13, i64 %t14)
  store { i64, ptr } %t17, ptr %l13
  br label %bb6
bb6:
  %t18 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t18, ptr %l15, !tbaa !27
  %t21 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr ptr, ptr %t22, i64 0
  %t24 = load ptr, ptr %t23, !tbaa !39
  %t27 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eshapeOf(ptr %v0, ptr %v1, ptr %s2, ptr %a0, ptr %t24)
  store ptr %t27, ptr %l17
  br label %bb7
bb7:
  %t28 = load ptr, ptr %l17, !tbaa !29
  %t30 = getelementptr %"compiler/check:elemsShape", ptr %t28, i32 0, i32 1
  %t31 = load i64, ptr %t30, !tbaa !24
  %t33 = icmp sge i64 %t31, -1
  br i1 %t33, label %bb8, label %bb9
bb8:
  call void @__olang_scope_close(ptr %s2)
  store i1 true, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  call void @__olang_scope_close(ptr %s2)
  br label %bb11
bb11:
  %t36 = load i64, ptr %l3, !tbaa !24
  %t38 = add i64 %t36, 1
  store i64 %t38, ptr %l3, !tbaa !24
  br label %bb1
bb12:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eseqLen(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca %"compiler/source:Span"
  %l9 = alloca %"compiler/source:Span"
  %l11 = alloca i64
  %l15 = alloca ptr
  %l16 = alloca ptr
  %l19 = alloca { i64, ptr }
  %l22 = alloca { i64, ptr }
  %l26 = alloca ptr
  %l27 = alloca ptr
  %l28 = alloca %"compiler/source:Span"
  %l30 = alloca i32
  %l31 = alloca i32
  %l32 = alloca %"compiler/source:Span"
  %l35 = alloca ptr
  %l37 = alloca i32
  %l39 = alloca i32
  %l43 = alloca ptr
  %rv = alloca ptr
  %t75 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l3, !tbaa !29
  %t3 = getelementptr %"compiler/check:seqOf", ptr %t1, i32 0, i32 1
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = icmp sge i64 %t4, 0
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = load ptr, ptr %l0, !tbaa !29
  store ptr %t8, ptr %l7, !tbaa !29
  %t9 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t9, ptr %l8
  %t10 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t10, ptr %l9
  %t11 = load ptr, ptr %l3, !tbaa !29
  %t13 = getelementptr %"compiler/check:seqOf", ptr %t11, i32 0, i32 2
  %t14 = load i64, ptr %t13, !tbaa !24
  store i64 %t14, ptr %l11, !tbaa !24
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load %"compiler/source:Span", ptr %l1
  %t17 = load ptr, ptr %l2, !tbaa !29
  %t21 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v1, ptr %v0, ptr %t15, %"compiler/source:Span" %t16, ptr %t17)
  store ptr %t21, ptr %l15
  br label %bb3
bb2:
  br label %bb17
bb3:
  %t22 = load ptr, ptr %l15, !tbaa !29
  store ptr %t22, ptr %l16, !tbaa !29
  %t23 = icmp sge i64 0, 0
  br i1 %t23, label %bb4, label %bb5
bb4:
  %t25 = icmp sle i64 0, 1152921504606846975
  br i1 %t25, label %bb6, label %bb7
bb5:
  call void @__olang_check_failed(ptr @olang_loc_207369a2ec6f9fee_7129d1e6d10224a2)
  unreachable
bb6:
  %t27 = mul i64 0, 8
  %t28 = insertvalue { i64, ptr } undef, i64 0, 0
  %t29 = insertvalue { i64, ptr } %t28, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t29, ptr %l19, !tbaa !27
  %t30 = icmp sge i64 0, 0
  br i1 %t30, label %bb8, label %bb9
bb7:
  call void @__olang_check_failed(ptr @olang_loc_207369a2ec6f9fee_7129d1e6d10224a2)
  unreachable
bb8:
  %t32 = icmp sle i64 0, 1152921504606846975
  br i1 %t32, label %bb10, label %bb11
bb9:
  call void @__olang_check_failed(ptr @olang_loc_207369a2ec6f9fee_7129d1e6d10224a2)
  unreachable
bb10:
  %t34 = mul i64 0, 8
  %t35 = insertvalue { i64, ptr } undef, i64 0, 0
  %t36 = insertvalue { i64, ptr } %t35, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t36, ptr %l22, !tbaa !27
  %t37 = icmp sge i64 0, 0
  br i1 %t37, label %bb12, label %bb13
bb11:
  call void @__olang_check_failed(ptr @olang_loc_207369a2ec6f9fee_7129d1e6d10224a2)
  unreachable
bb12:
  %t39 = icmp sle i64 0, 2305843009213693951
  br i1 %t39, label %bb14, label %bb15
bb13:
  call void @__olang_check_failed(ptr @olang_loc_3d307812d0489f63_908317b964e2b157)
  unreachable
bb14:
  %t41 = mul i64 0, 4
  %t42 = insertvalue { i64, ptr } undef, i64 0, 0
  %t43 = insertvalue { i64, ptr } %t42, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t44 = load ptr, ptr %l7, !tbaa !29
  %t45 = load %"compiler/source:Span", ptr %l8
  %t46 = load %"compiler/source:Span", ptr %l9
  %t47 = load i64, ptr %l11, !tbaa !24
  %t48 = load ptr, ptr %l16, !tbaa !29
  %t49 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t50 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t52 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einvoke(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v3, ptr %v3, ptr %t44, %"compiler/source:Span" %t45, %"compiler/source:Span" %t46, i64 %t47, ptr %t48, { i64, ptr } %t49, { i64, ptr } %t50, { i64, ptr } %t43)
  store ptr %t52, ptr %l26
  br label %bb16
bb15:
  call void @__olang_check_failed(ptr @olang_loc_3d307812d0489f63_908317b964e2b157)
  unreachable
bb16:
  %t53 = load ptr, ptr %l26, !tbaa !29
  store ptr %t53, ptr %rv
  br label %ret
bb17:
  %t54 = load ptr, ptr %l0, !tbaa !29
  store ptr %t54, ptr %l27, !tbaa !29
  %t55 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t55, ptr %l28
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t56)
  store i32 %t58, ptr %l30
  br label %bb18
bb18:
  store i32 22, ptr %l31
  %t59 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t59, ptr %l32
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/check:Checker", ptr %t60, i32 0, i32 1
  %t63 = load ptr, ptr %t62, !tbaa !29
  %t65 = getelementptr %"compiler/generic:Program", ptr %t63, i32 0, i32 2
  store ptr %t65, ptr %l35, !tbaa !29
  %t66 = load ptr, ptr %l2, !tbaa !29
  %t68 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t66)
  store i32 %t68, ptr %l37
  br label %bb19
bb19:
  %t69 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  %t70 = load ptr, ptr %l35, !tbaa !29
  %t71 = load i32, ptr %l37, !tbaa !23
  %t73 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t70, i32 %t71, i64 %t69)
  store i32 %t73, ptr %l39
  br label %bb20
bb20:
  %t74 = load ptr, ptr %l2, !tbaa !29
  store { i64, [5 x i64] } zeroinitializer, ptr %t75
  %t76 = getelementptr { i64, [5 x i64] }, ptr %t75, i32 0, i32 0
  store i64 3, ptr %t76
  %t77 = load %"compiler/source:Span", ptr %l32
  %t78 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t77, 0
  %t79 = load i32, ptr %l39, !tbaa !23
  %t80 = insertvalue { %"compiler/source:Span", i32, ptr } %t78, i32 %t79, 1
  %t82 = insertvalue { %"compiler/source:Span", i32, ptr } %t80, ptr %t74, 2
  %t83 = getelementptr { i64, [5 x i64] }, ptr %t75, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t82, ptr %t83
  %t84 = load { i64, [5 x i64] }, ptr %t75
  %t86 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 48, i64 8)
  store { i64, [5 x i64] } %t84, ptr %t86
  %t87 = load ptr, ptr %l27, !tbaa !29
  %t88 = load %"compiler/source:Span", ptr %l28
  %t89 = load i32, ptr %l30, !tbaa !23
  %t90 = load i32, ptr %l31, !range !{i32 0, i32 52}
  %t92 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v0, ptr %v0, ptr %v3, ptr %t87, %"compiler/source:Span" %t88, i32 %t89, i32 %t90, ptr %t86, ptr null)
  store ptr %t92, ptr %l43
  br label %bb21
bb21:
  %t93 = load ptr, ptr %l43, !tbaa !29
  store ptr %t93, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esettleDropOrder(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca %"compiler/typed:DropHolding"
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca ptr
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l23 = alloca %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l24 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i32
  %l29 = alloca i1
  %l30 = alloca i64
  %l33 = alloca i64
  %l38 = alloca ptr
  %l43 = alloca %"compiler/typed:DropHolding"
  %l45 = alloca i64
  %l49 = alloca i64
  %l52 = alloca i64
  %l72 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l74 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l76 = alloca i64
  %l78 = alloca i64
  %l83 = alloca i64
  %l86 = alloca i64
  %l90 = alloca i1
  %l91 = alloca i1
  %l95 = alloca i1
  %l105 = alloca i64
  %l109 = alloca i64
  %l112 = alloca i64
  %s2 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %t44 = alloca %"compiler/typed:DropHolding", align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 67
  %t5 = call %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eKeys_3cI64_2c_20Bool_3e(ptr %v0, ptr %v0, ptr %t3)
  store %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" %t5, ptr %l23
  br label %bb1
bb1:
  %t6 = load %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %l23
  store %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" %t6, ptr %l1
  br label %bb2
bb2:
  store %olang.scope zeroinitializer, ptr %s2
  %t8 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapKeyIter_3cI64_2c_20Bool_3e_2eNext_3cI64_2c_20Bool_3e(ptr %v0, ptr %l1)
  %t9 = extractvalue { i32, i64 } %t8, 1
  %t10 = extractvalue { i32, i64 } %t8, 0
  store i32 %t10, ptr %l27
  %t11 = icmp ne i32 %t10, 0
  br i1 %t11, label %bb4, label %ok.12, !prof !99
ok.12:
  store i64 %t9, ptr %l26
  br label %bb3
bb3:
  %t13 = load i64, ptr %l26, !tbaa !24
  store i64 %t13, ptr %l24, !tbaa !24
  br label %bb6
bb4:
  %t14 = load i32, ptr %l27, !tbaa !23
  %t15 = ashr i32 %t14, 16
  %t17 = icmp eq i32 %t15, 1
  store i1 %t17, ptr %l29, !tbaa !21
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s2)
  br label %bb61
bb6:
  %t18 = load i64, ptr %l24, !tbaa !24
  store i64 %t18, ptr %l2, !tbaa !24
  %t19 = load i64, ptr %l2, !tbaa !24
  store i64 %t19, ptr %l30, !tbaa !24
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/check:Checker", ptr %t20, i32 0, i32 14
  %t24 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t22)
  store i64 %t24, ptr %l33
  br label %bb7
bb7:
  %t25 = load i64, ptr %l30, !tbaa !24
  %t26 = load i64, ptr %l33, !tbaa !24
  %t27 = icmp sge i64 %t25, %t26
  br i1 %t27, label %bb8, label %bb9
bb8:
  call void @__olang_scope_close(ptr %s2)
  br label %bb60
bb9:
  br label %bb10
bb10:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/check:Checker", ptr %t29, i32 0, i32 14
  %t32 = load i64, ptr %l2, !tbaa !24
  %t35 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t31, i64 %t32)
  store ptr %t35, ptr %l38
  br label %bb11
bb11:
  %t36 = load ptr, ptr %l38, !tbaa !29
  store ptr %t36, ptr %l3, !tbaa !29
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/check:Checker", ptr %t37, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !29
  %t42 = getelementptr %"compiler/generic:Program", ptr %t40, i32 0, i32 2
  %t43 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2ftyped_2eDropHolding_2eJudged(ptr %t44, ptr %v0, ptr %v0, ptr %s2, ptr %t42, ptr %t43)
  call void @llvm.memmove.p0.p0.i64(ptr %l43, ptr %t44, i64 224, i1 false)
  br label %bb12
bb12:
  call void @llvm.memmove.p0.p0.i64(ptr %l4, ptr %l43, i64 224, i1 false)
  store i64 0, ptr %l5, !tbaa !24
  %t47 = getelementptr %"compiler/typed:DropHolding", ptr %l4, i32 0, i32 0
  %t49 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s2, ptr %t47)
  store i64 %t49, ptr %l45
  br label %bb13
bb13:
  %t50 = load i64, ptr %l45, !tbaa !24
  store i64 %t50, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t51 = load i64, ptr %l6, !tbaa !24
  %t52 = load i64, ptr %l5, !tbaa !24
  %t55 = icmp sgt i64 %t51, %t52
  br i1 %t55, label %bb14, label %bb15
bb14:
  %t57 = load i64, ptr %l7, !tbaa !24
  %t59 = icmp sgt i64 %t57, 0
  br i1 %t59, label %bb16, label %bb17
bb15:
  store i64 0, ptr %l49, !tbaa !24
  br label %bb19
bb16:
  %t61 = load i64, ptr %l6, !tbaa !24
  %t62 = load i64, ptr %l5, !tbaa !24
  %t65 = sub i64 %t61, %t62
  %t66 = load i64, ptr %l7, !tbaa !24
  %t69 = add i64 %t65, %t66
  %t71 = sub i64 %t69, 1
  %t72 = load i64, ptr %l7, !tbaa !24
  %t75 = sdiv i64 %t71, %t72
  store i64 %t75, ptr %l52, !tbaa !24
  br label %bb18
bb17:
  store i64 0, ptr %l52, !tbaa !24
  br label %bb18
bb18:
  %t77 = load i64, ptr %l52, !tbaa !24
  store i64 %t77, ptr %l49, !tbaa !24
  br label %bb19
bb19:
  %t78 = load i64, ptr %l49, !tbaa !24
  store i64 %t78, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb20
bb20:
  %t79 = load i64, ptr %l9, !tbaa !24
  %t80 = load i64, ptr %l8, !tbaa !24
  %t83 = icmp slt i64 %t79, %t80
  %t85 = xor i1 %t83, true
  br i1 %t85, label %bb21, label %bb22
bb21:
  br label %bb45
bb22:
  br label %bb23
bb23:
  %t87 = load i64, ptr %l5, !tbaa !24
  %t88 = load i64, ptr %l9, !tbaa !24
  %t89 = load i64, ptr %l7, !tbaa !24
  %t92 = mul i64 %t88, %t89
  %t95 = add i64 %t87, %t92
  store i64 %t95, ptr %l10, !tbaa !24
  store %olang.scope zeroinitializer, ptr %s6
  %t97 = getelementptr %"compiler/typed:DropHolding", ptr %l4, i32 0, i32 2
  %t98 = load i64, ptr %l10, !tbaa !24
  %t101 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__H7b6d4eff6fc9c3821aae8b284e12e095(ptr %s2, ptr %s6, ptr %t97, i64 %t98)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t101, ptr %l72
  br label %bb24
bb24:
  %t103 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %s6, ptr %l72)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t103, ptr %l74
  br label %bb25
bb25:
  %t104 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l74
  %t105 = call ptr @__olang_scope_alloc_a(ptr %s6, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t104, ptr %t105
  store ptr %t105, ptr %l11, !tbaa !29
  store i64 0, ptr %l12, !tbaa !24
  br label %bb26
bb26:
  %t107 = load i64, ptr %l12, !tbaa !24
  store i64 %t107, ptr %l76, !tbaa !24
  %t108 = load ptr, ptr %l11, !tbaa !29
  %t110 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s6, ptr %t108)
  store i64 %t110, ptr %l78
  br label %bb27
bb27:
  %t111 = load i64, ptr %l76, !tbaa !24
  %t112 = load i64, ptr %l78, !tbaa !24
  %t113 = icmp slt i64 %t111, %t112
  %t115 = xor i1 %t113, true
  br i1 %t115, label %bb28, label %bb29
bb28:
  br label %bb43
bb29:
  br label %bb30
bb30:
  %t117 = load ptr, ptr %l11, !tbaa !29
  %t118 = load i64, ptr %l12, !tbaa !24
  %t121 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s6, ptr %t117, i64 %t118)
  store i64 %t121, ptr %l83
  br label %bb31
bb31:
  %t122 = load i64, ptr %l83, !tbaa !24
  store i64 %t122, ptr %l13, !tbaa !24
  %t123 = getelementptr %"compiler/typed:DropHolding", ptr %l4, i32 0, i32 0
  %t124 = load i64, ptr %l10, !tbaa !24
  %t127 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s2, ptr %t123, i64 %t124)
  store i64 %t127, ptr %l86
  br label %bb32
bb32:
  %t128 = load i64, ptr %l86, !tbaa !24
  store i64 %t128, ptr %l14, !tbaa !24
  %t129 = load i64, ptr %l13, !tbaa !24
  %t130 = load i64, ptr %l14, !tbaa !24
  %t134 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aDropHolding_2eHolds(ptr %s2, ptr %l4, i64 %t129, i64 %t130)
  store i1 %t134, ptr %l90
  br label %bb33
bb33:
  %t135 = load i1, ptr %l90, !tbaa !21
  br i1 %t135, label %bb34, label %bb35
bb34:
  %t136 = load i64, ptr %l14, !tbaa !24
  %t137 = load i64, ptr %l13, !tbaa !24
  %t141 = call i1 @compiler_2fcheck_2eregisteredBefore(ptr %s2, ptr %l4, i64 %t136, i64 %t137)
  store i1 %t141, ptr %l95
  br label %bb36
bb35:
  store i1 false, ptr %l91, !tbaa !21
  br label %bb37
bb36:
  %t142 = load i1, ptr %l95, !tbaa !21
  store i1 %t142, ptr %l91, !tbaa !21
  br label %bb37
bb37:
  %t143 = load i1, ptr %l91, !tbaa !21
  br i1 %t143, label %bb38, label %bb39
bb38:
  %t144 = load ptr, ptr %l0, !tbaa !29
  %t145 = load ptr, ptr %l3, !tbaa !29
  %t146 = load i64, ptr %l14, !tbaa !24
  %t147 = load i64, ptr %l13, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropCycle(ptr %v0, ptr %v0, ptr %t144, ptr %t145, i64 %t146, i64 %t147)
  br label %bb40
bb39:
  br label %bb41
bb40:
  br label %bb41
bb41:
  br label %bb42
bb42:
  %t152 = load i64, ptr %l12, !tbaa !24
  %t154 = add i64 %t152, 1
  store i64 %t154, ptr %l12, !tbaa !24
  br label %bb26
bb43:
  call void @__olang_scope_close(ptr %s6)
  br label %bb44
bb44:
  %t156 = load i64, ptr %l9, !tbaa !24
  %t158 = add i64 %t156, 1
  store i64 %t158, ptr %l9, !tbaa !24
  br label %bb20
bb45:
  store i64 0, ptr %l15, !tbaa !24
  %t160 = getelementptr %"compiler/typed:DropHolding", ptr %l4, i32 0, i32 3
  %t162 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s2, ptr %t160)
  store i64 %t162, ptr %l105
  br label %bb46
bb46:
  %t163 = load i64, ptr %l105, !tbaa !24
  store i64 %t163, ptr %l16, !tbaa !24
  store i64 1, ptr %l17, !tbaa !24
  %t164 = load i64, ptr %l16, !tbaa !24
  %t165 = load i64, ptr %l15, !tbaa !24
  %t168 = icmp sgt i64 %t164, %t165
  br i1 %t168, label %bb47, label %bb48
bb47:
  %t170 = load i64, ptr %l17, !tbaa !24
  %t172 = icmp sgt i64 %t170, 0
  br i1 %t172, label %bb49, label %bb50
bb48:
  store i64 0, ptr %l109, !tbaa !24
  br label %bb52
bb49:
  %t174 = load i64, ptr %l16, !tbaa !24
  %t175 = load i64, ptr %l15, !tbaa !24
  %t178 = sub i64 %t174, %t175
  %t179 = load i64, ptr %l17, !tbaa !24
  %t182 = add i64 %t178, %t179
  %t184 = sub i64 %t182, 1
  %t185 = load i64, ptr %l17, !tbaa !24
  %t188 = sdiv i64 %t184, %t185
  store i64 %t188, ptr %l112, !tbaa !24
  br label %bb51
bb50:
  store i64 0, ptr %l112, !tbaa !24
  br label %bb51
bb51:
  %t190 = load i64, ptr %l112, !tbaa !24
  store i64 %t190, ptr %l109, !tbaa !24
  br label %bb52
bb52:
  %t191 = load i64, ptr %l109, !tbaa !24
  store i64 %t191, ptr %l18, !tbaa !24
  store i64 0, ptr %l19, !tbaa !24
  br label %bb53
bb53:
  %t192 = load i64, ptr %l19, !tbaa !24
  %t193 = load i64, ptr %l18, !tbaa !24
  %t196 = icmp slt i64 %t192, %t193
  %t198 = xor i1 %t196, true
  br i1 %t198, label %bb54, label %bb55
bb54:
  br label %bb59
bb55:
  br label %bb56
bb56:
  %t200 = load i64, ptr %l15, !tbaa !24
  %t201 = load i64, ptr %l19, !tbaa !24
  %t202 = load i64, ptr %l17, !tbaa !24
  %t205 = mul i64 %t201, %t202
  %t208 = add i64 %t200, %t205
  %t210 = load ptr, ptr %l0, !tbaa !29
  %t211 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropRegistered(ptr %v0, ptr %v0, ptr %s2, ptr %t210, ptr %t211, ptr %l4, i64 %t208)
  br label %bb57
bb57:
  br label %bb58
bb58:
  %t217 = load i64, ptr %l19, !tbaa !24
  %t219 = add i64 %t217, 1
  store i64 %t219, ptr %l19, !tbaa !24
  br label %bb53
bb59:
  call void @__olang_scope_close(ptr %s2)
  br label %bb60
bb60:
  br label %bb2
bb61:
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc2(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"compiler/source:Span" %a2) #0 {
entry:
  %l2 = alloca %"compiler/source:Span"
  %l8 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l11 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %rv = alloca { i64, ptr }
  store %"compiler/source:Span" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/check:Checker", ptr %a0, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 0
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t9 = getelementptr %"compiler/load:Loader", ptr %t7, i32 0, i32 4
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t14 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eTextOf(ptr %v0, ptr %v0, ptr %t10, i64 %a1)
  store { i64, ptr } %t14, ptr %l8
  br label %bb1
bb1:
  %t15 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t15, ptr %l9, !tbaa !27
  %t16 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t17 = load i32, ptr %t16, !tbaa !23
  %t19 = sext i32 %t17 to i64
  store i64 %t19, ptr %l11, !tbaa !24
  %t20 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 1
  %t21 = load i32, ptr %t20, !tbaa !23
  %t23 = sext i32 %t21 to i64
  store i64 %t23, ptr %l13, !tbaa !24
  %t24 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t25 = extractvalue { i64, ptr } %t24, 0
  store i64 %t25, ptr %l14, !tbaa !24
  %t26 = load i64, ptr %l11, !tbaa !24
  %t27 = icmp sge i64 %t26, 0
  br i1 %t27, label %bb2, label %bb3
bb2:
  %t29 = load i64, ptr %l11, !tbaa !24
  %t30 = load i64, ptr %l13, !tbaa !24
  %t31 = icmp sle i64 %t29, %t30
  br i1 %t31, label %bb4, label %bb5
bb3:
  call void @__olang_check_failed(ptr @olang_loc_acadf2af31b93e38_18751a402ed16b84)
  unreachable
bb4:
  %t33 = load i64, ptr %l13, !tbaa !24
  %t34 = load i64, ptr %l14, !tbaa !24
  %t35 = icmp sle i64 %t33, %t34
  br i1 %t35, label %bb6, label %bb7
bb5:
  call void @__olang_check_failed(ptr @olang_loc_acadf2af31b93e38_18751a402ed16b84)
  unreachable
bb6:
  %t37 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !27
  %t39 = load i64, ptr %l11, !tbaa !24
  %t40 = load i64, ptr %l13, !tbaa !24
  %t41 = getelementptr i8, ptr %t38, i64 %t39
  %t42 = sub i64 %t40, %t39
  %t43 = insertvalue { i64, ptr } undef, i64 %t42, 0
  %t44 = insertvalue { i64, ptr } %t43, ptr %t41, 1
  %t46 = extractvalue { i64, ptr } %t44, 1
  %t47 = extractvalue { i64, ptr } %t44, 0
  %t48 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t47)
  call void @olang_textcopy(ptr %t48, ptr %t46, i64 %t47)
  %t49 = insertvalue { i64, ptr } undef, i64 %t47, 0
  %t50 = insertvalue { i64, ptr } %t49, ptr %t48, 1
  store { i64, ptr } %t50, ptr %rv
  br label %ret
bb7:
  call void @__olang_check_failed(ptr @olang_loc_acadf2af31b93e38_18751a402ed16b84)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etargetHoldsRefs(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i1
  %l4 = alloca ptr
  %l5 = alloca i1
  %l14 = alloca i1
  %rv = alloca i1
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
  %t8 = icmp eq i64 %t6, 7
  store i1 %t8, ptr %l5, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l5, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32 }, ptr %t12, i32 0, i32 1
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l2, !tbaa !23
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t18 = getelementptr %"compiler/check:Checker", ptr %a0, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !29
  %t21 = getelementptr %"compiler/generic:Program", ptr %t19, i32 0, i32 2
  %t22 = load i32, ptr %l2, !tbaa !23
  %t25 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHoldsRefs(ptr %v0, ptr %t21, i32 %t22)
  store i1 %t25, ptr %l14
  br label %bb6
bb6:
  %t26 = load i1, ptr %l14, !tbaa !21
  store i1 %t26, ptr %l3, !tbaa !21
  br label %bb12
bb7:
  br i1 true, label %bb8, label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb11
bb10:
  store i1 false, ptr %l3, !tbaa !21
  br label %bb12
bb11:
  call void @__olang_check_failed(ptr @olang_loc_5f447d0cb8af3524_fdbf87197f7ceb70)
  unreachable
bb12:
  %t27 = load i1, ptr %l3, !tbaa !21
  store i1 %t27, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etoAny(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca i32
  %l11 = alloca i64
  %lp12 = alloca ptr
  %l16 = alloca i32
  %l21 = alloca i32
  %l26 = alloca i1
  %l27 = alloca ptr
  %l28 = alloca %"compiler/source:Span"
  %l31 = alloca { i64, ptr }
  %l32 = alloca { i64, ptr }
  %l35 = alloca { i64, ptr }
  %l37 = alloca %"compiler/diagmsg:Msg"
  %l38 = alloca i64
  %l41 = alloca ptr
  %l44 = alloca i32
  %l48 = alloca i1
  %l57 = alloca i32
  %l60 = alloca i1
  %l65 = alloca i32
  %l68 = alloca i1
  %l72 = alloca i1
  %l76 = alloca i1
  %l81 = alloca i32
  %l84 = alloca ptr
  %l85 = alloca %"compiler/source:Span"
  %l88 = alloca { i64, ptr }
  %l89 = alloca { i64, ptr }
  %l92 = alloca { i64, ptr }
  %l94 = alloca %"compiler/diagmsg:Msg"
  %l95 = alloca i64
  %l101 = alloca i1
  %l105 = alloca ptr
  %l110 = alloca i64
  %l115 = alloca ptr
  %l120 = alloca i64
  %l127 = alloca i1
  %l132 = alloca ptr
  %l136 = alloca i32
  %l142 = alloca i64
  %l146 = alloca %"compiler/source:Span"
  %l147 = alloca i32
  %l148 = alloca i32
  %l152 = alloca { i64, ptr }
  %l154 = alloca %"compiler/typed:Make"
  %l158 = alloca %"compiler/source:Span"
  %l166 = alloca i32
  %l167 = alloca ptr
  %l171 = alloca i32
  %l172 = alloca %"compiler/typed:Promote"
  %l175 = alloca ptr
  %l176 = alloca %"compiler/source:Span"
  %l177 = alloca i32
  %l178 = alloca i32
  %l179 = alloca ptr
  %l180 = alloca ptr
  %l181 = alloca %"compiler/source:Span"
  %l183 = alloca i32
  %l185 = alloca ptr
  %l187 = alloca ptr
  %l188 = alloca ptr
  %l189 = alloca ptr
  %l195 = alloca i32
  %l197 = alloca ptr
  %l198 = alloca ptr
  %l199 = alloca %"compiler/source:Span"
  %l200 = alloca i32
  %l201 = alloca i32
  %l202 = alloca ptr
  %l203 = alloca ptr
  %l204 = alloca %"compiler/source:Span"
  %l206 = alloca i32
  %l208 = alloca ptr
  %l210 = alloca ptr
  %rv = alloca ptr
  %t299 = alloca { i64, [5 x i64] }, align 8
  %t341 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
  store %"compiler/source:Span" %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t4 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t1)
  store i32 %t4, ptr %l16
  br label %bb1
bb1:
  %t5 = load i32, ptr %l16, !tbaa !23
  store i32 %t5, ptr %l4, !tbaa !23
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/check:Checker", ptr %t6, i32 0, i32 1
  %t9 = load ptr, ptr %t8, !tbaa !29
  %t11 = getelementptr %"compiler/generic:Program", ptr %t9, i32 0, i32 2
  %t12 = load i32, ptr %l2, !tbaa !23
  %t15 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAnyTrait(ptr %v0, ptr %t11, i32 %t12)
  store i32 %t15, ptr %l21
  br label %bb2
bb2:
  %t16 = load i32, ptr %l21, !tbaa !23
  store i32 %t16, ptr %l5, !tbaa !23
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/check:Checker", ptr %t17, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !29
  %t22 = getelementptr %"compiler/generic:Program", ptr %t20, i32 0, i32 2
  %t23 = load i32, ptr %l4, !tbaa !23
  %t26 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsAny(ptr %v0, ptr %t22, i32 %t23)
  store i1 %t26, ptr %l26
  br label %bb3
bb3:
  %t27 = load i1, ptr %l26, !tbaa !21
  br i1 %t27, label %bb4, label %bb5
bb4:
  %t28 = load ptr, ptr %l0, !tbaa !29
  store ptr %t28, ptr %l27, !tbaa !29
  %t29 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t29, ptr %l28
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load i32, ptr %l4, !tbaa !23
  %t34 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t30, i32 %t31)
  store { i64, ptr } %t34, ptr %l31
  br label %bb6
bb5:
  br label %bb11
bb6:
  %t35 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t36 = extractvalue { i64, ptr } %t35, 0
  %t37 = extractvalue { i64, ptr } %t35, 1
  %t38 = mul i64 %t36, 1
  %t39 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t38)
  call void @llvm.memcpy.p0.p0.i64(ptr %t39, ptr %t37, i64 %t38, i1 false)
  %t40 = insertvalue { i64, ptr } undef, i64 %t36, 0
  %t41 = insertvalue { i64, ptr } %t40, ptr %t39, 1
  store { i64, ptr } %t41, ptr %l32, !tbaa !27
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load i32, ptr %l2, !tbaa !23
  %t46 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t42, i32 %t43)
  store { i64, ptr } %t46, ptr %l35
  br label %bb7
bb7:
  %t47 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t48 = extractvalue { i64, ptr } %t47, 0
  %t49 = extractvalue { i64, ptr } %t47, 1
  %t50 = mul i64 %t48, 1
  %t51 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t50)
  call void @llvm.memcpy.p0.p0.i64(ptr %t51, ptr %t49, i64 %t50, i1 false)
  %t52 = insertvalue { i64, ptr } undef, i64 %t48, 0
  %t53 = insertvalue { i64, ptr } %t52, ptr %t51, 1
  %t54 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t56 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAnyNotConverted(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t54, { i64, ptr } %t53)
  store %"compiler/diagmsg:Msg" %t56, ptr %l37
  br label %bb8
bb8:
  %t57 = load ptr, ptr %l27, !tbaa !29
  %t58 = load %"compiler/source:Span", ptr %l28
  %t59 = load %"compiler/diagmsg:Msg", ptr %l37
  %t60 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t57, %"compiler/source:Span" %t58, %"compiler/diagmsg:Msg" %t59)
  store i64 %t60, ptr %l38
  br label %bb9
bb9:
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t62 = load %"compiler/source:Span", ptr %l3
  %t65 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t61, %"compiler/source:Span" %t62)
  store ptr %t65, ptr %l41
  br label %bb10
bb10:
  %t66 = load ptr, ptr %l41, !tbaa !29
  store ptr %t66, ptr %rv
  br label %ret
bb11:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t68 = load i32, ptr %l4, !tbaa !23
  %t71 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t67, i32 %t68)
  store i32 %t71, ptr %l44
  br label %bb12
bb12:
  %t72 = load i32, ptr %l44, !tbaa !23
  store i32 %t72, ptr %l6, !tbaa !23
  %t73 = load i32, ptr %l6, !tbaa !23
  %t74 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t77 = icmp eq i32 %t73, %t74
  br i1 %t77, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l48, !tbaa !21
  br label %bb15
bb14:
  %t79 = load i32, ptr %l5, !tbaa !23
  %t80 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t83 = icmp eq i32 %t79, %t80
  store i1 %t83, ptr %l48, !tbaa !21
  br label %bb15
bb15:
  %t85 = load i1, ptr %l48, !tbaa !21
  br i1 %t85, label %bb16, label %bb17
bb16:
  %t86 = load ptr, ptr %l1, !tbaa !29
  store ptr %t86, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t90 = getelementptr %"compiler/check:Checker", ptr %t88, i32 0, i32 1
  %t91 = load ptr, ptr %t90, !tbaa !29
  %t93 = getelementptr %"compiler/generic:Program", ptr %t91, i32 0, i32 2
  %t94 = load i32, ptr %l6, !tbaa !23
  %t97 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t93, i32 %t94)
  store i32 %t97, ptr %l57
  br label %bb19
bb19:
  %t98 = load i32, ptr %l57, !range !{i32 0, i32 33}
  %t100 = trunc i64 29 to i32
  %t101 = icmp eq i32 %t98, %t100
  br i1 %t101, label %bb20, label %bb21
bb20:
  store i1 true, ptr %l60, !tbaa !21
  br label %bb23
bb21:
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t105 = getelementptr %"compiler/check:Checker", ptr %t103, i32 0, i32 1
  %t106 = load ptr, ptr %t105, !tbaa !29
  %t108 = getelementptr %"compiler/generic:Program", ptr %t106, i32 0, i32 2
  %t109 = load i32, ptr %l6, !tbaa !23
  %t112 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t108, i32 %t109)
  store i32 %t112, ptr %l65
  br label %bb22
bb22:
  %t113 = load i32, ptr %l65, !range !{i32 0, i32 33}
  %t115 = trunc i64 21 to i32
  %t116 = icmp eq i32 %t113, %t115
  store i1 %t116, ptr %l60, !tbaa !21
  br label %bb23
bb23:
  %t118 = load i1, ptr %l60, !tbaa !21
  br i1 %t118, label %bb24, label %bb25
bb24:
  store i1 true, ptr %l68, !tbaa !21
  br label %bb26
bb25:
  %t119 = load i32, ptr %l6, !tbaa !23
  %t120 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t123 = icmp eq i32 %t119, %t120
  store i1 %t123, ptr %l68, !tbaa !21
  br label %bb26
bb26:
  %t125 = load i1, ptr %l68, !tbaa !21
  br i1 %t125, label %bb27, label %bb28
bb27:
  store i1 true, ptr %l72, !tbaa !21
  br label %bb29
bb28:
  %t126 = load i32, ptr %l6, !tbaa !23
  %t127 = load i32, ptr @G_2ecompiler_2ftypes_2eNoreturnT, !tbaa !23
  %t130 = icmp eq i32 %t126, %t127
  store i1 %t130, ptr %l72, !tbaa !21
  br label %bb29
bb29:
  %t132 = load i1, ptr %l72, !tbaa !21
  br i1 %t132, label %bb30, label %bb31
bb30:
  store i1 true, ptr %l76, !tbaa !21
  br label %bb33
bb31:
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t135 = getelementptr %"compiler/check:Checker", ptr %t133, i32 0, i32 1
  %t136 = load ptr, ptr %t135, !tbaa !29
  %t138 = getelementptr %"compiler/generic:Program", ptr %t136, i32 0, i32 2
  %t139 = load i32, ptr %l6, !tbaa !23
  %t142 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t138, i32 %t139)
  store i32 %t142, ptr %l81
  br label %bb32
bb32:
  %t143 = load i32, ptr %l81, !range !{i32 0, i32 33}
  %t145 = trunc i64 22 to i32
  %t146 = icmp eq i32 %t143, %t145
  store i1 %t146, ptr %l76, !tbaa !21
  br label %bb33
bb33:
  %t148 = load i1, ptr %l76, !tbaa !21
  br i1 %t148, label %bb34, label %bb35
bb34:
  %t149 = load ptr, ptr %l0, !tbaa !29
  store ptr %t149, ptr %l84, !tbaa !29
  %t150 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t150, ptr %l85
  %t151 = load ptr, ptr %l0, !tbaa !29
  %t152 = load i32, ptr %l2, !tbaa !23
  %t155 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t151, i32 %t152)
  store { i64, ptr } %t155, ptr %l88
  br label %bb36
bb35:
  br label %bb40
bb36:
  %t156 = load { i64, ptr }, ptr %l88, !tbaa !27
  %t157 = extractvalue { i64, ptr } %t156, 0
  %t158 = extractvalue { i64, ptr } %t156, 1
  %t159 = mul i64 %t157, 1
  %t160 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t159)
  call void @llvm.memcpy.p0.p0.i64(ptr %t160, ptr %t158, i64 %t159, i1 false)
  %t161 = insertvalue { i64, ptr } undef, i64 %t157, 0
  %t162 = insertvalue { i64, ptr } %t161, ptr %t160, 1
  store { i64, ptr } %t162, ptr %l89, !tbaa !27
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t164 = load ptr, ptr %l1, !tbaa !29
  %t167 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etyOf(ptr %v0, ptr %v1, ptr %v0, ptr %t163, ptr %t164)
  store { i64, ptr } %t167, ptr %l92
  br label %bb37
bb37:
  %t168 = load { i64, ptr }, ptr %l92, !tbaa !27
  %t169 = extractvalue { i64, ptr } %t168, 0
  %t170 = extractvalue { i64, ptr } %t168, 1
  %t171 = mul i64 %t169, 1
  %t172 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t171)
  call void @llvm.memcpy.p0.p0.i64(ptr %t172, ptr %t170, i64 %t171, i1 false)
  %t173 = insertvalue { i64, ptr } undef, i64 %t169, 0
  %t174 = insertvalue { i64, ptr } %t173, ptr %t172, 1
  %t175 = load { i64, ptr }, ptr %l89, !tbaa !27
  %t177 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeMismatch(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t175, { i64, ptr } %t174)
  store %"compiler/diagmsg:Msg" %t177, ptr %l94
  br label %bb38
bb38:
  %t178 = load ptr, ptr %l84, !tbaa !29
  %t179 = load %"compiler/source:Span", ptr %l85
  %t180 = load %"compiler/diagmsg:Msg", ptr %l94
  %t181 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t178, %"compiler/source:Span" %t179, %"compiler/diagmsg:Msg" %t180)
  store i64 %t181, ptr %l95
  br label %bb39
bb39:
  %t182 = load ptr, ptr %l1, !tbaa !29
  store ptr %t182, ptr %rv
  br label %ret
bb40:
  %t184 = load ptr, ptr %l0, !tbaa !29
  %t185 = load i32, ptr %l6, !tbaa !23
  %t186 = load i32, ptr %l5, !tbaa !23
  %t187 = load %"compiler/source:Span", ptr %l3
  %t192 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eanyMeets(ptr %v0, ptr %t184, i32 %t185, i32 %t186, %"compiler/source:Span" %t187)
  store i1 %t192, ptr %l101
  br label %bb41
bb41:
  %t193 = load i1, ptr %l101, !tbaa !21
  %t194 = xor i1 %t193, true
  br i1 %t194, label %bb42, label %bb43
bb42:
  %t196 = load ptr, ptr %l0, !tbaa !29
  %t197 = load %"compiler/source:Span", ptr %l3
  %t200 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t196, %"compiler/source:Span" %t197)
  store ptr %t200, ptr %l105
  br label %bb44
bb43:
  br label %bb45
bb44:
  %t201 = load ptr, ptr %l105, !tbaa !29
  store ptr %t201, ptr %rv
  br label %ret
bb45:
  %t202 = load ptr, ptr %l0, !tbaa !29
  %t203 = load i32, ptr %l6, !tbaa !23
  %t204 = load i32, ptr %l5, !tbaa !23
  %t205 = load %"compiler/source:Span", ptr %l3
  %t210 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eanyTable(ptr %v0, ptr %t202, i32 %t203, i32 %t204, %"compiler/source:Span" %t205)
  store i64 %t210, ptr %l110
  br label %bb46
bb46:
  %t211 = load i64, ptr %l110, !tbaa !24
  store i64 %t211, ptr %l7, !tbaa !24
  %t212 = load i64, ptr %l7, !tbaa !24
  %t214 = icmp slt i64 %t212, 0
  br i1 %t214, label %bb47, label %bb48
bb47:
  %t216 = load ptr, ptr %l0, !tbaa !29
  %t217 = load %"compiler/source:Span", ptr %l3
  %t220 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t216, %"compiler/source:Span" %t217)
  store ptr %t220, ptr %l115
  br label %bb49
bb48:
  br label %bb50
bb49:
  %t221 = load ptr, ptr %l115, !tbaa !29
  store ptr %t221, ptr %rv
  br label %ret
bb50:
  %t222 = load ptr, ptr %l0, !tbaa !29
  %t224 = getelementptr %"compiler/check:Checker", ptr %t222, i32 0, i32 1
  %t225 = load ptr, ptr %t224, !tbaa !29
  %t227 = getelementptr %"compiler/generic:Program", ptr %t225, i32 0, i32 2
  %t228 = load i32, ptr %l2, !tbaa !23
  %t231 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t227, i32 %t228)
  store i64 %t231, ptr %l120
  br label %bb51
bb51:
  %t232 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t233 = load i64, ptr @G_2ecompiler_2ftypes_2eNullable, !tbaa !24
  %t236 = or i64 %t232, %t233
  %t237 = load i64, ptr %l120, !tbaa !24
  %t239 = and i64 %t237, %t236
  store i64 %t239, ptr %l8, !tbaa !24
  %t241 = load ptr, ptr %l0, !tbaa !29
  %t242 = load i32, ptr %l6, !tbaa !23
  %t245 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eanyCopies(ptr %v0, ptr %t241, i32 %t242)
  store i1 %t245, ptr %l127
  br label %bb52
bb52:
  %t246 = load i1, ptr %l127, !tbaa !21
  br i1 %t246, label %bb53, label %bb54
bb53:
  %t247 = load ptr, ptr %l0, !tbaa !29
  %t248 = load ptr, ptr %l1, !tbaa !29
  %t249 = load i32, ptr %l6, !tbaa !23
  %t250 = load %"compiler/source:Span", ptr %l3
  %t255 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v1, ptr %v2, ptr %t247, ptr %t248, i32 %t249, %"compiler/source:Span" %t250)
  store ptr %t255, ptr %l132
  br label %bb55
bb54:
  br label %bb70
bb55:
  %t256 = load ptr, ptr %l132, !tbaa !29
  store ptr %t256, ptr %l9, !tbaa !29
  %t257 = load ptr, ptr %l0, !tbaa !29
  %t259 = getelementptr %"compiler/check:Checker", ptr %t257, i32 0, i32 1
  %t260 = load ptr, ptr %t259, !tbaa !29
  %t261 = load i32, ptr %l6, !tbaa !23
  %t264 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAnyStored(ptr %v0, ptr %t260, i32 %t261)
  store i32 %t264, ptr %l136
  br label %bb56
bb56:
  %t265 = load i32, ptr %l136, !tbaa !23
  store i32 %t265, ptr %l10, !tbaa !23
  %t266 = load i32, ptr %l10, !tbaa !23
  %t267 = load i32, ptr %l6, !tbaa !23
  %t270 = icmp ne i32 %t266, %t267
  br i1 %t270, label %bb57, label %bb58
bb57:
  %t272 = load ptr, ptr %l0, !tbaa !29
  %t274 = getelementptr %"compiler/check:Checker", ptr %t272, i32 0, i32 36
  %t276 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t274)
  store i64 %t276, ptr %l142
  br label %bb59
bb58:
  br label %bb63
bb59:
  %t277 = load i64, ptr %l142, !tbaa !24
  store i64 %t277, ptr %l11, !tbaa !24
  %t278 = load ptr, ptr %l0, !tbaa !29
  %t280 = getelementptr %"compiler/check:Checker", ptr %t278, i32 0, i32 36
  %t281 = load ptr, ptr %l9, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v2, ptr %t280, ptr %t281)
  br label %bb60
bb60:
  %t284 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t284, ptr %l146
  %t285 = load i32, ptr %l10, !tbaa !23
  store i32 %t285, ptr %l147, !tbaa !23
  store i32 0, ptr %l148
  %t286 = load ptr, ptr %l0, !tbaa !29
  %t288 = getelementptr %"compiler/check:Checker", ptr %t286, i32 0, i32 36
  %t289 = load i64, ptr %l11, !tbaa !24
  %t292 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t288, i64 %t289)
  store { i64, ptr } %t292, ptr %l152
  br label %bb61
bb61:
  %t293 = load i32, ptr %l148, !range !{i32 0, i32 5}
  %t294 = load { i64, ptr }, ptr %l152, !tbaa !27
  %t296 = call %"compiler/typed:Make" @compiler_2ftyped_3aMake_2ector(ptr %v0, ptr %v2, ptr %v2, i32 %t293, i64 0, { i64, ptr } %t294, ptr null, i32 -1, i32 0, i1 false)
  store %"compiler/typed:Make" %t296, ptr %l154
  br label %bb62
bb62:
  %t297 = load %"compiler/typed:Make", ptr %l154
  %t298 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 56, i64 8)
  store %"compiler/typed:Make" %t297, ptr %t298
  store { i64, [5 x i64] } zeroinitializer, ptr %t299
  %t300 = getelementptr { i64, [5 x i64] }, ptr %t299, i32 0, i32 0
  store i64 7, ptr %t300
  %t301 = load %"compiler/source:Span", ptr %l146
  %t302 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t301, 0
  %t303 = load i32, ptr %l147, !tbaa !23
  %t304 = insertvalue { %"compiler/source:Span", i32, ptr } %t302, i32 %t303, 1
  %t306 = insertvalue { %"compiler/source:Span", i32, ptr } %t304, ptr %t298, 2
  %t307 = getelementptr { i64, [5 x i64] }, ptr %t299, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t306, ptr %t307
  %t308 = load { i64, [5 x i64] }, ptr %t299
  %t310 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t308, ptr %t310
  store ptr %t310, ptr %l9, !tbaa !29
  br label %bb63
bb63:
  %t312 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t312, ptr %l158
  %t313 = load ptr, ptr %l0, !tbaa !29
  %t315 = getelementptr %"compiler/check:Checker", ptr %t313, i32 0, i32 1
  %t316 = load ptr, ptr %t315, !tbaa !29
  %t318 = getelementptr %"compiler/generic:Program", ptr %t316, i32 0, i32 2
  %t319 = load i32, ptr %l10, !tbaa !23
  %t320 = load i64, ptr %l8, !tbaa !24
  %t321 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t324 = and i64 %t320, %t321
  %t328 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t318, i32 %t319, i64 %t324)
  store i32 %t328, ptr %l166
  br label %bb64
bb64:
  %t329 = load ptr, ptr %l9, !tbaa !29
  store ptr %t329, ptr %l167, !tbaa !29
  %t330 = load ptr, ptr %l0, !tbaa !29
  %t331 = load %"compiler/source:Span", ptr %l3
  %t335 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esite(ptr %v0, ptr %t330, i32 2, %"compiler/source:Span" %t331)
  store i32 %t335, ptr %l171
  br label %bb65
bb65:
  %t336 = load ptr, ptr %l167, !tbaa !29
  %t337 = load i32, ptr %l171, !tbaa !23
  %t338 = call %"compiler/typed:Promote" @compiler_2ftyped_3aPromote_2ector(ptr %v2, ptr %v2, ptr %t336, i32 %t337)
  store %"compiler/typed:Promote" %t338, ptr %l172
  br label %bb66
bb66:
  %t339 = load %"compiler/typed:Promote", ptr %l172
  %t340 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store %"compiler/typed:Promote" %t339, ptr %t340
  store { i64, [5 x i64] } zeroinitializer, ptr %t341
  %t342 = getelementptr { i64, [5 x i64] }, ptr %t341, i32 0, i32 0
  store i64 5, ptr %t342
  %t343 = load %"compiler/source:Span", ptr %l158
  %t344 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t343, 0
  %t345 = load i32, ptr %l166, !tbaa !23
  %t346 = insertvalue { %"compiler/source:Span", i32, ptr } %t344, i32 %t345, 1
  %t348 = insertvalue { %"compiler/source:Span", i32, ptr } %t346, ptr %t340, 2
  %t349 = getelementptr { i64, [5 x i64] }, ptr %t341, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t348, ptr %t349
  %t350 = load { i64, [5 x i64] }, ptr %t341
  %t351 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store ptr %t351, ptr %lp12
  %t353 = load ptr, ptr %lp12
  store { i64, [5 x i64] } %t350, ptr %t353
  %t354 = load ptr, ptr %l0, !tbaa !29
  store ptr %t354, ptr %l175, !tbaa !29
  %t355 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t355, ptr %l176
  %t356 = load i32, ptr %l2, !tbaa !23
  store i32 %t356, ptr %l177, !tbaa !23
  store i32 42, ptr %l178
  %t357 = load ptr, ptr %lp12
  store ptr %t357, ptr %l179, !tbaa !29
  %t358 = load ptr, ptr %l0, !tbaa !29
  store ptr %t358, ptr %l180, !tbaa !29
  %t359 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t359, ptr %l181
  %t360 = load ptr, ptr %l0, !tbaa !29
  %t362 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t360)
  store i32 %t362, ptr %l183
  br label %bb67
bb67:
  %t363 = load i64, ptr %l7, !tbaa !24
  %t364 = load ptr, ptr %l180, !tbaa !29
  %t365 = load %"compiler/source:Span", ptr %l181
  %t366 = load i32, ptr %l183, !tbaa !23
  %t368 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v0, ptr %t364, %"compiler/source:Span" %t365, i32 %t366, i64 %t363)
  store ptr %t368, ptr %l185
  br label %bb68
bb68:
  %t369 = load ptr, ptr %l185, !tbaa !29
  %t370 = load ptr, ptr %l175, !tbaa !29
  %t371 = load %"compiler/source:Span", ptr %l176
  %t372 = load i32, ptr %l177, !tbaa !23
  %t373 = load i32, ptr %l178, !range !{i32 0, i32 52}
  %t374 = load ptr, ptr %l179, !tbaa !29
  %t376 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v2, ptr %v0, ptr %v2, ptr %t370, %"compiler/source:Span" %t371, i32 %t372, i32 %t373, ptr %t374, ptr %t369)
  store ptr %t376, ptr %l187
  br label %bb69
bb69:
  %t377 = load ptr, ptr %l187, !tbaa !29
  store ptr %t377, ptr %rv
  br label %ret
bb70:
  %t378 = load ptr, ptr %l0, !tbaa !29
  store ptr %t378, ptr %l188, !tbaa !29
  %t379 = load ptr, ptr %l1, !tbaa !29
  store ptr %t379, ptr %l189, !tbaa !29
  %t380 = load ptr, ptr %l0, !tbaa !29
  %t382 = getelementptr %"compiler/check:Checker", ptr %t380, i32 0, i32 1
  %t383 = load ptr, ptr %t382, !tbaa !29
  %t385 = getelementptr %"compiler/generic:Program", ptr %t383, i32 0, i32 2
  %t386 = load i32, ptr %l6, !tbaa !23
  %t387 = load i64, ptr %l8, !tbaa !24
  %t391 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t385, i32 %t386, i64 %t387)
  store i32 %t391, ptr %l195
  br label %bb71
bb71:
  %t392 = load %"compiler/source:Span", ptr %l3
  %t393 = load ptr, ptr %l188, !tbaa !29
  %t394 = load ptr, ptr %l189, !tbaa !29
  %t395 = load i32, ptr %l195, !tbaa !23
  %t397 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v1, ptr %v2, ptr %t393, ptr %t394, i32 %t395, %"compiler/source:Span" %t392)
  store ptr %t397, ptr %l197
  br label %bb72
bb72:
  %t398 = load ptr, ptr %l197, !tbaa !29
  %t399 = load ptr, ptr %l0, !tbaa !29
  store ptr %t399, ptr %l198, !tbaa !29
  %t400 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t400, ptr %l199
  %t401 = load i32, ptr %l2, !tbaa !23
  store i32 %t401, ptr %l200, !tbaa !23
  store i32 42, ptr %l201
  store ptr %t398, ptr %l202, !tbaa !29
  %t403 = load ptr, ptr %l0, !tbaa !29
  store ptr %t403, ptr %l203, !tbaa !29
  %t404 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t404, ptr %l204
  %t405 = load ptr, ptr %l0, !tbaa !29
  %t407 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t405)
  store i32 %t407, ptr %l206
  br label %bb73
bb73:
  %t408 = load i64, ptr %l7, !tbaa !24
  %t409 = load ptr, ptr %l203, !tbaa !29
  %t410 = load %"compiler/source:Span", ptr %l204
  %t411 = load i32, ptr %l206, !tbaa !23
  %t413 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v0, ptr %t409, %"compiler/source:Span" %t410, i32 %t411, i64 %t408)
  store ptr %t413, ptr %l208
  br label %bb74
bb74:
  %t414 = load ptr, ptr %l208, !tbaa !29
  %t415 = load ptr, ptr %l198, !tbaa !29
  %t416 = load %"compiler/source:Span", ptr %l199
  %t417 = load i32, ptr %l200, !tbaa !23
  %t418 = load i32, ptr %l201, !range !{i32 0, i32 52}
  %t419 = load ptr, ptr %l202, !tbaa !29
  %t421 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v2, ptr %v0, ptr %v2, ptr %t415, %"compiler/source:Span" %t416, i32 %t417, i32 %t418, ptr %t419, ptr %t414)
  store ptr %t421, ptr %l210
  br label %bb75
bb75:
  %t422 = load ptr, ptr %l210, !tbaa !29
  store ptr %t422, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etopBody(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca %"compiler/source:Span"
  %l9 = alloca i64
  %l11 = alloca i64
  %l18 = alloca i64
  %l21 = alloca i64
  %l25 = alloca %"compiler/source:Span"
  %l26 = alloca ptr
  %l29 = alloca { i64, [2 x i64] }
  %l34 = alloca i32
  %l37 = alloca i64
  %l45 = alloca ptr
  %l46 = alloca ptr
  %l47 = alloca i64
  %l50 = alloca %"compiler/generic:Context"
  %l52 = alloca %"compiler/generic:Context"
  %l55 = alloca ptr
  %l58 = alloca i32
  %l61 = alloca i64
  %l65 = alloca ptr
  %l68 = alloca ptr
  %l69 = alloca ptr
  %l74 = alloca ptr
  %l77 = alloca ptr
  %l86 = alloca ptr
  %l87 = alloca ptr
  %l91 = alloca { i64, ptr }
  %l92 = alloca %"compiler/typed:Block"
  %l100 = alloca i64
  %l103 = alloca i1
  %l106 = alloca i64
  %l109 = alloca i1
  %l117 = alloca ptr
  %rv = alloca i64
  %t35 = alloca { i64, [2 x i64] }, align 8
  %t85 = alloca %"compiler/generic:Context", align 8
  %t234 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store ptr %a2, ptr %l2
  store i32 %a3, ptr %l3
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
  store ptr %t10, ptr %l4, !tbaa !29
  %t12 = load ptr, ptr %l4, !tbaa !29
  %t14 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eCount(ptr %v0, ptr %t12)
  store i64 %t14, ptr %l18
  br label %bb1
bb1:
  %t15 = load i64, ptr %l18, !tbaa !24
  store i64 %t15, ptr %l5, !tbaa !24
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/check:Checker", ptr %t16, i32 0, i32 15
  %t20 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aGap_3e_2eLen_3ccompiler_2fcheck_3aGap_3e(ptr %v0, ptr %t18)
  store i64 %t20, ptr %l21
  br label %bb2
bb2:
  %t21 = load i64, ptr %l21, !tbaa !24
  store i64 %t21, ptr %l6, !tbaa !24
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/check:Checker", ptr %t22, i32 0, i32 138
  %t25 = load i64, ptr %t24, !tbaa !24
  store i64 %t25, ptr %l7, !tbaa !24
  %t27 = load ptr, ptr %l2, !tbaa !29
  %t29 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t27)
  store %"compiler/source:Span" %t29, ptr %l25
  br label %bb3
bb3:
  %t30 = load %"compiler/source:Span", ptr %l25
  store %"compiler/source:Span" %t30, ptr %l8
  %t31 = load ptr, ptr %l0, !tbaa !29
  store ptr %t31, ptr %l26, !tbaa !29
  %t32 = load i64, ptr %l1, !tbaa !24
  %t33 = getelementptr %"compiler/source:Span", ptr %l8, i32 0, i32 0
  %t34 = load i32, ptr %t33, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t35
  %t36 = getelementptr { i64, [2 x i64] }, ptr %t35, i32 0, i32 0
  store i64 7, ptr %t36
  %t38 = insertvalue { i64, i32 } undef, i64 %t32, 0
  %t40 = insertvalue { i64, i32 } %t38, i32 %t34, 1
  %t41 = getelementptr { i64, [2 x i64] }, ptr %t35, i32 0, i32 1
  store { i64, i32 } %t40, ptr %t41
  %t42 = load { i64, [2 x i64] }, ptr %t35
  store { i64, [2 x i64] } %t42, ptr %l29
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/check:Checker", ptr %t43, i32 0, i32 1
  %t46 = load ptr, ptr %t45, !tbaa !29
  %t48 = getelementptr %"compiler/generic:Program", ptr %t46, i32 0, i32 2
  %t49 = load i32, ptr %l3, !tbaa !23
  %t52 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %t48, i32 0, i32 %t49, i32 0, i32 0, i64 0, i1 false, i32 0, i64 0)
  store i32 %t52, ptr %l34
  br label %bb4
bb4:
  %t53 = load i64, ptr %l1, !tbaa !24
  %t54 = load %"compiler/source:Span", ptr %l8
  %t55 = load ptr, ptr %l26, !tbaa !29
  %t56 = load { i64, [2 x i64] }, ptr %l29
  %t57 = load i32, ptr %l34, !tbaa !23
  %t60 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enewBody(ptr %v0, ptr %t55, { i64, [2 x i64] } %t56, i32 %t57, i64 %t53, %"compiler/source:Span" %t54)
  store i64 %t60, ptr %l37
  br label %bb5
bb5:
  %t61 = load i64, ptr %l37, !tbaa !24
  store i64 %t61, ptr %l9, !tbaa !24
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/check:Checker", ptr %t62, i32 0, i32 19
  %t65 = load i64, ptr %l9, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t64, i64 %t65, i64 1)
  br label %bb6
bb6:
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t69 = load i64, ptr %l9, !tbaa !24
  %t70 = load i64, ptr %l1, !tbaa !24
  %t71 = load i32, ptr %l3, !tbaa !23
  %t76 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epush(ptr %v0, ptr %v0, ptr %t68, i64 %t69, i64 %t70, i32 %t71, i32 0)
  store ptr %t76, ptr %l45
  br label %bb7
bb7:
  %t77 = load ptr, ptr %l45, !tbaa !29
  store ptr %t77, ptr %l46, !tbaa !29
  %t79 = ptrtoint ptr %v0 to i64
  store i64 %t79, ptr %l47, !tbaa !24
  %t80 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t80, label %bb8, label %bb9
bb8:
  %t82 = call ptr @__olang_region_make(ptr %v0)
  %t83 = ptrtoint ptr %t82 to i64
  store i64 %t83, ptr %l47, !tbaa !24
  br label %bb9
bb9:
  %t84 = load i64, ptr %l1, !tbaa !24
  %t86 = load i64, ptr %l47
  %t87 = inttoptr i64 %t86 to ptr
  call void @compiler_2fgeneric_3aContext_2ector(ptr %t85, ptr %t87, i64 %t84, i64 -1)
  call void @llvm.memmove.p0.p0.i64(ptr %l50, ptr %t85, i64 160, i1 false)
  br label %bb10
bb10:
  %t89 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t89, label %bb11, label %bb12
bb11:
  %t91 = load i64, ptr %l47
  %t92 = inttoptr i64 %t91 to ptr
  %t93 = getelementptr %"compiler/generic:Context", ptr %l50, i32 0, i32 3
  %t94 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t93, i32 0, i32 2
  %t95 = load { i64, ptr }, ptr %t94
  %t96 = extractvalue { i64, ptr } %t95, 1
  %t97 = call ptr @__olang_region_or(ptr %t96, ptr null)
  %t98 = icmp ne ptr %t97, null
  %t99 = select i1 %t98, ptr %t97, ptr null
  %t100 = getelementptr %"compiler/generic:Context", ptr %l50, i32 0, i32 3
  %t101 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t100, i32 0, i32 1
  %t102 = load { i64, ptr }, ptr %t101
  %t103 = extractvalue { i64, ptr } %t102, 1
  %t104 = call ptr @__olang_region_or(ptr %t103, ptr null)
  %t105 = icmp ne ptr %t104, null
  %t106 = select i1 %t105, ptr %t104, ptr %t99
  %t107 = getelementptr %"compiler/generic:Context", ptr %l50, i32 0, i32 3
  %t108 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t107, i32 0, i32 0
  %t109 = load { i64, ptr }, ptr %t108
  %t110 = extractvalue { i64, ptr } %t109, 1
  %t111 = call ptr @__olang_region_or(ptr %t110, ptr null)
  %t112 = icmp ne ptr %t111, null
  %t113 = select i1 %t112, ptr %t111, ptr %t106
  %t114 = getelementptr %"compiler/generic:Context", ptr %l50, i32 0, i32 2
  %t115 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t114, i32 0, i32 2
  %t116 = load { i64, ptr }, ptr %t115
  %t117 = extractvalue { i64, ptr } %t116, 1
  %t118 = call ptr @__olang_region_or(ptr %t117, ptr null)
  %t119 = icmp ne ptr %t118, null
  %t120 = select i1 %t119, ptr %t118, ptr %t113
  %t121 = getelementptr %"compiler/generic:Context", ptr %l50, i32 0, i32 2
  %t122 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t121, i32 0, i32 1
  %t123 = load { i64, ptr }, ptr %t122
  %t124 = extractvalue { i64, ptr } %t123, 1
  %t125 = call ptr @__olang_region_or(ptr %t124, ptr null)
  %t126 = icmp ne ptr %t125, null
  %t127 = select i1 %t126, ptr %t125, ptr %t120
  %t128 = getelementptr %"compiler/generic:Context", ptr %l50, i32 0, i32 2
  %t129 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t128, i32 0, i32 0
  %t130 = load { i64, ptr }, ptr %t129
  %t131 = extractvalue { i64, ptr } %t130, 1
  %t132 = call ptr @__olang_region_or(ptr %t131, ptr null)
  %t133 = icmp ne ptr %t132, null
  %t134 = select i1 %t133, ptr %t132, ptr %t127
  %t135 = icmp eq ptr %t134, %t92
  call void @__olang_region_settle(ptr %t92, i1 %t135)
  br label %bb12
bb12:
  %t136 = load ptr, ptr %l46, !tbaa !29
  %t137 = getelementptr %"compiler/check:frame", ptr %t136, i32 0, i32 4
  call void @llvm.memmove.p0.p0.i64(ptr %l52, ptr %t137, i64 160, i1 false)
  %t138 = load ptr, ptr %l46, !tbaa !29
  %t139 = getelementptr %"compiler/check:frame", ptr %t138, i32 0, i32 4
  call void @llvm.memmove.p0.p0.i64(ptr %t139, ptr %l50, i64 160, i1 false)
  %t140 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t140, label %bb13, label %bb14
bb13:
  %t142 = getelementptr %"compiler/generic:Context", ptr %l52, i32 0, i32 3
  %t143 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t142, i32 0, i32 2
  %t144 = load { i64, ptr }, ptr %t143
  %t145 = extractvalue { i64, ptr } %t144, 1
  %t146 = call ptr @__olang_region_or(ptr %t145, ptr null)
  %t147 = icmp ne ptr %t146, null
  %t148 = select i1 %t147, ptr %t146, ptr null
  %t149 = getelementptr %"compiler/generic:Context", ptr %l52, i32 0, i32 3
  %t150 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t149, i32 0, i32 1
  %t151 = load { i64, ptr }, ptr %t150
  %t152 = extractvalue { i64, ptr } %t151, 1
  %t153 = call ptr @__olang_region_or(ptr %t152, ptr null)
  %t154 = icmp ne ptr %t153, null
  %t155 = select i1 %t154, ptr %t153, ptr %t148
  %t156 = getelementptr %"compiler/generic:Context", ptr %l52, i32 0, i32 3
  %t157 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t156, i32 0, i32 0
  %t158 = load { i64, ptr }, ptr %t157
  %t159 = extractvalue { i64, ptr } %t158, 1
  %t160 = call ptr @__olang_region_or(ptr %t159, ptr null)
  %t161 = icmp ne ptr %t160, null
  %t162 = select i1 %t161, ptr %t160, ptr %t155
  %t163 = getelementptr %"compiler/generic:Context", ptr %l52, i32 0, i32 2
  %t164 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t163, i32 0, i32 2
  %t165 = load { i64, ptr }, ptr %t164
  %t166 = extractvalue { i64, ptr } %t165, 1
  %t167 = call ptr @__olang_region_or(ptr %t166, ptr null)
  %t168 = icmp ne ptr %t167, null
  %t169 = select i1 %t168, ptr %t167, ptr %t162
  %t170 = getelementptr %"compiler/generic:Context", ptr %l52, i32 0, i32 2
  %t171 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t170, i32 0, i32 1
  %t172 = load { i64, ptr }, ptr %t171
  %t173 = extractvalue { i64, ptr } %t172, 1
  %t174 = call ptr @__olang_region_or(ptr %t173, ptr null)
  %t175 = icmp ne ptr %t174, null
  %t176 = select i1 %t175, ptr %t174, ptr %t169
  %t177 = getelementptr %"compiler/generic:Context", ptr %l52, i32 0, i32 2
  %t178 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t177, i32 0, i32 0
  %t179 = load { i64, ptr }, ptr %t178
  %t180 = extractvalue { i64, ptr } %t179, 1
  %t181 = call ptr @__olang_region_or(ptr %t180, ptr null)
  %t182 = icmp ne ptr %t181, null
  %t183 = select i1 %t182, ptr %t181, ptr %t176
  call void @__olang_region_drop(ptr %t183)
  store %"compiler/generic:Context" zeroinitializer, ptr %l52
  br label %bb14
bb14:
  %t184 = load ptr, ptr %l0, !tbaa !29
  %t186 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t184)
  store ptr %t186, ptr %l55
  br label %bb15
bb15:
  %t187 = load %"compiler/source:Span", ptr %l8
  %t188 = load ptr, ptr %l55, !tbaa !29
  %t191 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eAddBlock(ptr %v0, ptr %t188, i32 -1, i32 0, %"compiler/source:Span" %t187)
  store i32 %t191, ptr %l58
  br label %bb16
bb16:
  %t192 = load ptr, ptr %l0, !tbaa !29
  %t194 = getelementptr %"compiler/check:Checker", ptr %t192, i32 0, i32 37
  %t196 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t194)
  store i64 %t196, ptr %l61
  br label %bb17
bb17:
  %t197 = load i64, ptr %l61, !tbaa !24
  store i64 %t197, ptr %l11, !tbaa !24
  %t198 = load i32, ptr %l3, !tbaa !23
  %t199 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t202 = icmp eq i32 %t198, %t199
  br i1 %t202, label %bb18, label %bb19
bb18:
  %t204 = load ptr, ptr %l0, !tbaa !29
  %t205 = load ptr, ptr %l2, !tbaa !29
  %t208 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econd1(ptr %v0, ptr %v1, ptr %v0, ptr %t204, ptr %t205)
  store ptr %t208, ptr %l68
  br label %bb20
bb19:
  %t209 = load ptr, ptr %l0, !tbaa !29
  store ptr %t209, ptr %l69, !tbaa !29
  %t210 = load ptr, ptr %l0, !tbaa !29
  %t211 = load ptr, ptr %l2, !tbaa !29
  %t213 = load i32, ptr %l3, !tbaa !23
  %t217 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v0, ptr %t210, ptr %t211, i32 %t213)
  store ptr %t217, ptr %l74
  br label %bb21
bb20:
  %t218 = load ptr, ptr %l68, !tbaa !29
  store ptr %t218, ptr %l65, !tbaa !29
  br label %bb23
bb21:
  %t219 = load i32, ptr %l3, !tbaa !23
  %t220 = load %"compiler/source:Span", ptr %l8
  %t221 = load ptr, ptr %l69, !tbaa !29
  %t222 = load ptr, ptr %l74, !tbaa !29
  %t225 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v0, ptr %v0, ptr %t221, ptr %t222, i32 %t219, %"compiler/source:Span" %t220)
  store ptr %t225, ptr %l77
  br label %bb22
bb22:
  %t226 = load ptr, ptr %l77, !tbaa !29
  store ptr %t226, ptr %l65, !tbaa !29
  br label %bb23
bb23:
  %t227 = load ptr, ptr %l65, !tbaa !29
  %t228 = load ptr, ptr %l0, !tbaa !29
  %t230 = getelementptr %"compiler/check:Checker", ptr %t228, i32 0, i32 37
  %t231 = load %"compiler/source:Span", ptr %l8
  store { i64, [3 x i64] } zeroinitializer, ptr %t234
  %t235 = getelementptr { i64, [3 x i64] }, ptr %t234, i32 0, i32 0
  store i64 6, ptr %t235
  %t237 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t231, 0
  %t239 = insertvalue { %"compiler/source:Span", ptr } %t237, ptr %t227, 1
  %t240 = getelementptr { i64, [3 x i64] }, ptr %t234, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t239, ptr %t240
  %t241 = load { i64, [3 x i64] }, ptr %t234
  %t243 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t241, ptr %t243
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t230, ptr %t243)
  br label %bb24
bb24:
  %t246 = load ptr, ptr %l0, !tbaa !29
  %t248 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t246)
  store ptr %t248, ptr %l86
  br label %bb25
bb25:
  %t249 = load ptr, ptr %l86, !tbaa !29
  store ptr %t249, ptr %l87, !tbaa !29
  %t250 = load ptr, ptr %l0, !tbaa !29
  %t252 = getelementptr %"compiler/check:Checker", ptr %t250, i32 0, i32 37
  %t253 = load i64, ptr %l11, !tbaa !24
  %t256 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t252, i64 %t253)
  store { i64, ptr } %t256, ptr %l91
  br label %bb26
bb26:
  %t257 = load { i64, ptr }, ptr %l91, !tbaa !27
  %t258 = call %"compiler/typed:Block" @compiler_2ftyped_3aBlock_2ector(ptr %v0, ptr %v0, i32 0, { i64, ptr } %t257)
  store %"compiler/typed:Block" %t258, ptr %l92
  br label %bb27
bb27:
  %t259 = load %"compiler/typed:Block", ptr %l92
  %t260 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 24, i64 8)
  store %"compiler/typed:Block" %t259, ptr %t260
  %t262 = load ptr, ptr %l87, !tbaa !29
  %t263 = getelementptr %"compiler/typed:Body", ptr %t262, i32 0, i32 11
  store ptr %t260, ptr %t263, !tbaa !29
  %t264 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %t264)
  br label %bb28
bb28:
  %t266 = load ptr, ptr %l0, !tbaa !29
  %t268 = getelementptr %"compiler/check:Checker", ptr %t266, i32 0, i32 19
  %t269 = load i64, ptr %l9, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t268, i64 %t269, i64 2)
  br label %bb29
bb29:
  %t272 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edrain(ptr %v0, ptr %t272)
  br label %bb30
bb30:
  %t274 = load ptr, ptr %l4, !tbaa !29
  %t276 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eCount(ptr %v0, ptr %t274)
  store i64 %t276, ptr %l100
  br label %bb31
bb31:
  %t277 = load i64, ptr %l5, !tbaa !24
  %t278 = load i64, ptr %l100, !tbaa !24
  %t280 = icmp sgt i64 %t278, %t277
  br i1 %t280, label %bb32, label %bb33
bb32:
  store i1 true, ptr %l103, !tbaa !21
  br label %bb35
bb33:
  %t282 = load ptr, ptr %l0, !tbaa !29
  %t284 = getelementptr %"compiler/check:Checker", ptr %t282, i32 0, i32 15
  %t286 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aGap_3e_2eLen_3ccompiler_2fcheck_3aGap_3e(ptr %v0, ptr %t284)
  store i64 %t286, ptr %l106
  br label %bb34
bb34:
  %t287 = load i64, ptr %l6, !tbaa !24
  %t288 = load i64, ptr %l106, !tbaa !24
  %t290 = icmp sgt i64 %t288, %t287
  store i1 %t290, ptr %l103, !tbaa !21
  br label %bb35
bb35:
  %t292 = load i1, ptr %l103, !tbaa !21
  br i1 %t292, label %bb36, label %bb37
bb36:
  store i1 true, ptr %l109, !tbaa !21
  br label %bb38
bb37:
  %t293 = load ptr, ptr %l0, !tbaa !29
  %t295 = getelementptr %"compiler/check:Checker", ptr %t293, i32 0, i32 138
  %t296 = load i64, ptr %t295, !tbaa !24
  %t297 = load i64, ptr %l7, !tbaa !24
  %t300 = icmp sgt i64 %t296, %t297
  store i1 %t300, ptr %l109, !tbaa !21
  br label %bb38
bb38:
  %t302 = load i1, ptr %l109, !tbaa !21
  br i1 %t302, label %bb39, label %bb40
bb39:
  %t303 = load ptr, ptr %l0, !tbaa !29
  %t305 = getelementptr %"compiler/check:Checker", ptr %t303, i32 0, i32 14
  %t306 = load i64, ptr %l9, !tbaa !24
  %t309 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t305, i64 %t306)
  store ptr %t309, ptr %l117
  br label %bb41
bb40:
  br label %bb42
bb41:
  %t310 = load ptr, ptr %l117, !tbaa !29
  %t312 = getelementptr %"compiler/typed:Body", ptr %t310, i32 0, i32 11
  store ptr null, ptr %t312, !tbaa !29
  store i64 -1, ptr %rv
  br label %ret
bb42:
  %t314 = load i64, ptr %l9, !tbaa !24
  store i64 %t314, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewalkIter(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3, i64 %a4, ptr %a5, i32 %a6) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca i32
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca { i64, i64, i64 }
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l19 = alloca ptr
  %l20 = alloca %"compiler/source:Span"
  %l23 = alloca i32
  %l24 = alloca i64
  %l27 = alloca i1
  %l29 = alloca ptr
  %l35 = alloca ptr
  %l36 = alloca i1
  %l41 = alloca ptr
  %l42 = alloca i1
  %l48 = alloca ptr
  %l50 = alloca %"compiler/typed:Local"
  %l54 = alloca ptr
  %l56 = alloca ptr
  %l62 = alloca %"compiler/check:heldCand"
  %l74 = alloca ptr
  %l75 = alloca %"compiler/source:Span"
  %l77 = alloca i32
  %l78 = alloca i64
  %l79 = alloca ptr
  %l80 = alloca %"compiler/source:Span"
  %l83 = alloca i32
  %l84 = alloca ptr
  %l85 = alloca %"compiler/source:Span"
  %l87 = alloca i32
  %l88 = alloca ptr
  %l93 = alloca i64
  %l97 = alloca { i64, i64, i64 }
  %l102 = alloca ptr
  %l107 = alloca ptr
  %l111 = alloca ptr
  %l112 = alloca %"compiler/source:Span"
  %l113 = alloca i64
  %l117 = alloca ptr
  %l121 = alloca ptr
  %l126 = alloca ptr
  %l136 = alloca i64
  %l138 = alloca ptr
  %l141 = alloca i64
  %l142 = alloca i32
  %l143 = alloca i64
  %l145 = alloca ptr
  %l148 = alloca i64
  %l149 = alloca i32
  %l155 = alloca ptr
  %l156 = alloca ptr
  %l157 = alloca %"compiler/source:Span"
  %l158 = alloca ptr
  %l162 = alloca ptr
  %s4 = alloca %olang.scope
  %t100 = alloca { i64, [3 x i64] }, align 8
  %t146 = alloca { i64, [3 x i64] }, align 8
  %t300 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l19, !tbaa !29
  %t2 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t2, ptr %l20
  %t3 = load ptr, ptr %l3, !tbaa !29
  %t6 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %t3)
  store i32 %t6, ptr %l23
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l19, !tbaa !29
  %t8 = load %"compiler/source:Span", ptr %l20
  %t9 = load i32, ptr %l23, !tbaa !23
  %t10 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehidden(ptr %v0, ptr %t7, %"compiler/source:Span" %t8, i32 %t9)
  store i64 %t10, ptr %l24
  br label %bb2
bb2:
  %t11 = load i64, ptr %l24, !tbaa !24
  store i64 %t11, ptr %l7, !tbaa !24
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t13 = load ptr, ptr %l3, !tbaa !29
  %t16 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egeneratorCall(ptr %v0, ptr %v2, ptr %t12, ptr %t13)
  store i1 %t16, ptr %l27
  br label %bb3
bb3:
  %t17 = load i1, ptr %l27, !tbaa !21
  br i1 %t17, label %bb4, label %bb5
bb4:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t18)
  store ptr %t20, ptr %l29
  br label %bb6
bb5:
  br label %bb8
bb6:
  %t21 = load ptr, ptr %l29, !tbaa !29
  %t23 = getelementptr %"compiler/typed:Body", ptr %t21, i32 0, i32 17
  %t24 = load i64, ptr %l7, !tbaa !24
  %t26 = trunc i64 %t24 to i32
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2ePush_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t23, i32 %t26)
  br label %bb7
bb7:
  br label %bb8
bb8:
  %t30 = load ptr, ptr %l3, !tbaa !29
  store ptr %t30, ptr %l35, !tbaa !29
  store i1 false, ptr %l36, !tbaa !21
  %t31 = load ptr, ptr %l35, !tbaa !29
  %t32 = icmp ne ptr %t31, null
  br i1 %t32, label %bb9, label %bb10
bb9:
  %t34 = load ptr, ptr %l35, !tbaa !29
  %t35 = load i64, ptr %t34, !range !{i64 0, i64 18}
  %t37 = icmp eq i64 %t35, 2
  store i1 %t37, ptr %l36, !tbaa !21
  br label %bb10
bb10:
  %t38 = load i1, ptr %l36, !tbaa !21
  br i1 %t38, label %bb11, label %bb12
bb11:
  %t39 = load ptr, ptr %l3, !tbaa !29
  %t41 = getelementptr { i64, [5 x i64] }, ptr %t39, i32 0, i32 1
  %t42 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t41, i32 0, i32 2
  %t43 = load ptr, ptr %t42
  store ptr %t43, ptr %l8, !tbaa !29
  br label %bb13
bb12:
  br label %bb33
bb13:
  %t45 = load ptr, ptr %l8, !tbaa !29
  store ptr %t45, ptr %l41, !tbaa !29
  store i1 false, ptr %l42, !tbaa !21
  %t46 = load ptr, ptr %l41, !tbaa !29
  %t47 = icmp ne ptr %t46, null
  br i1 %t47, label %bb14, label %bb15
bb14:
  %t49 = load ptr, ptr %l41, !tbaa !29
  %t50 = load i64, ptr %t49, !range !{i64 0, i64 8}
  %t52 = icmp eq i64 %t50, 0
  store i1 %t52, ptr %l42, !tbaa !21
  br label %bb15
bb15:
  %t53 = load i1, ptr %l42, !tbaa !21
  br i1 %t53, label %bb16, label %bb17
bb16:
  %t54 = load ptr, ptr %l8, !tbaa !29
  %t56 = getelementptr { i64, [4 x i64] }, ptr %t54, i32 0, i32 1
  %t57 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t56, i32 0, i32 2
  %t58 = load i32, ptr %t57
  store i32 %t58, ptr %l9, !tbaa !23
  br label %bb18
bb17:
  br label %bb27
bb18:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t60)
  store ptr %t62, ptr %l48
  br label %bb19
bb19:
  %t63 = load i32, ptr %l9, !tbaa !23
  %t64 = load ptr, ptr %l48, !tbaa !29
  %t66 = call %"compiler/typed:Local" @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eLocal(ptr %v0, ptr %t64, i32 %t63)
  store %"compiler/typed:Local" %t66, ptr %l50
  br label %bb20
bb20:
  %t67 = getelementptr %"compiler/typed:Local", ptr %l50, i32 0, i32 4
  %t68 = load i32, ptr %t67, !range !{i32 0, i32 7}
  %t70 = trunc i64 1 to i32
  %t71 = icmp eq i32 %t68, %t70
  br i1 %t71, label %bb21, label %bb22
bb21:
  store %olang.scope zeroinitializer, ptr %s4
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/check:Checker", ptr %t73, i32 0, i32 113
  store ptr %t75, ptr %l54, !tbaa !29
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t76)
  store ptr %t78, ptr %l56
  br label %bb23
bb22:
  br label %bb26
bb23:
  %t79 = load ptr, ptr %l56, !tbaa !29
  %t81 = getelementptr %"compiler/check:frame", ptr %t79, i32 0, i32 0
  %t82 = load i64, ptr %t81, !tbaa !24
  %t83 = load i32, ptr %l9, !tbaa !23
  %t85 = sext i32 %t83 to i64
  %t86 = load i64, ptr %l7, !tbaa !24
  %t90 = call %"compiler/check:heldCand" @compiler_2fcheck_3aheldCand_2ector(ptr %s4, i64 %t82, i64 %t85, i64 %t86)
  store %"compiler/check:heldCand" %t90, ptr %l62
  br label %bb24
bb24:
  %t91 = load ptr, ptr %l54, !tbaa !29
  %t92 = load %"compiler/check:heldCand", ptr %l62
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aheldCand_3e_2ePush_3ccompiler_2fcheck_3aheldCand_3e(ptr %v0, ptr %t91, %"compiler/check:heldCand" %t92)
  br label %bb25
bb25:
  call void @__olang_scope_close(ptr %s4)
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
  call void @__olang_check_failed(ptr @olang_loc_b35f41bb006554d6_a1d87dcad76a5f72)
  unreachable
bb32:
  br label %bb38
bb33:
  br i1 true, label %bb34, label %bb35
bb34:
  br label %bb36
bb35:
  br label %bb37
bb36:
  br label %bb38
bb37:
  call void @__olang_check_failed(ptr @olang_loc_943678799cf3b8f7_240de00f13c53f3)
  unreachable
bb38:
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t94 = load %"compiler/source:Span", ptr %l1
  %t95 = load i64, ptr %l7, !tbaa !24
  %t97 = trunc i64 %t95 to i32
  %t99 = load ptr, ptr %l3, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t100
  %t101 = getelementptr { i64, [3 x i64] }, ptr %t100, i32 0, i32 0
  store i64 0, ptr %t101
  %t103 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t94, 0
  %t105 = insertvalue { %"compiler/source:Span", i32, ptr } %t103, i32 %t97, 1
  %t107 = insertvalue { %"compiler/source:Span", i32, ptr } %t105, ptr %t99, 2
  %t108 = getelementptr { i64, [3 x i64] }, ptr %t100, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t107, ptr %t108
  %t109 = load { i64, [3 x i64] }, ptr %t100
  %t111 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t109, ptr %t111
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t93, ptr %t111)
  br label %bb39
bb39:
  store i64 -1, ptr %l10, !tbaa !24
  %t114 = load ptr, ptr %l2, !tbaa !29
  %t116 = getelementptr %"compiler/ast:ForIn", ptr %t114, i32 0, i32 0
  %t117 = load i32, ptr %t116, !tbaa !23
  %t119 = icmp ne i32 %t117, 0
  br i1 %t119, label %bb40, label %bb41
bb40:
  %t121 = load ptr, ptr %l0, !tbaa !29
  store ptr %t121, ptr %l74, !tbaa !29
  %t122 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t122, ptr %l75
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t125 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t123)
  store i32 %t125, ptr %l77
  br label %bb42
bb41:
  br label %bb47
bb42:
  %t126 = load ptr, ptr %l74, !tbaa !29
  %t127 = load %"compiler/source:Span", ptr %l75
  %t128 = load i32, ptr %l77, !tbaa !23
  %t129 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehidden(ptr %v0, ptr %t126, %"compiler/source:Span" %t127, i32 %t128)
  store i64 %t129, ptr %l78
  br label %bb43
bb43:
  %t130 = load i64, ptr %l78, !tbaa !24
  store i64 %t130, ptr %l10, !tbaa !24
  %t131 = load ptr, ptr %l0, !tbaa !29
  store ptr %t131, ptr %l79, !tbaa !29
  %t132 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t132, ptr %l80
  %t133 = load i64, ptr %l10, !tbaa !24
  %t135 = trunc i64 %t133 to i32
  store i32 %t135, ptr %l83, !tbaa !23
  %t137 = load ptr, ptr %l0, !tbaa !29
  store ptr %t137, ptr %l84, !tbaa !29
  %t138 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t138, ptr %l85
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t141 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t139)
  store i32 %t141, ptr %l87
  br label %bb44
bb44:
  %t142 = load ptr, ptr %l84, !tbaa !29
  %t143 = load %"compiler/source:Span", ptr %l85
  %t144 = load i32, ptr %l87, !tbaa !23
  %t145 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v0, ptr %t142, %"compiler/source:Span" %t143, i32 %t144, i64 0)
  store ptr %t145, ptr %l88
  br label %bb45
bb45:
  store { i64, [3 x i64] } zeroinitializer, ptr %t146
  %t147 = getelementptr { i64, [3 x i64] }, ptr %t146, i32 0, i32 0
  store i64 0, ptr %t147
  %t148 = load %"compiler/source:Span", ptr %l80
  %t149 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t148, 0
  %t150 = load i32, ptr %l83, !tbaa !23
  %t151 = insertvalue { %"compiler/source:Span", i32, ptr } %t149, i32 %t150, 1
  %t152 = load ptr, ptr %l88, !tbaa !29
  %t153 = insertvalue { %"compiler/source:Span", i32, ptr } %t151, ptr %t152, 2
  %t154 = getelementptr { i64, [3 x i64] }, ptr %t146, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t153, ptr %t154
  %t155 = load { i64, [3 x i64] }, ptr %t146
  %t157 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t155, ptr %t157
  %t158 = load ptr, ptr %l79, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t158, ptr %t157)
  br label %bb46
bb46:
  br label %bb47
bb47:
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t162 = getelementptr %"compiler/check:Checker", ptr %t160, i32 0, i32 37
  %t164 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t162)
  store i64 %t164, ptr %l93
  br label %bb48
bb48:
  %t165 = load i64, ptr %l93, !tbaa !24
  store i64 %t165, ptr %l11, !tbaa !24
  %t166 = load ptr, ptr %l0, !tbaa !29
  %t167 = load %"compiler/source:Span", ptr %l1
  %t171 = call { i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopen(ptr %v0, ptr %t166, i32 2, %"compiler/source:Span" %t167)
  store { i64, i64, i64 } %t171, ptr %l97
  br label %bb49
bb49:
  %t172 = load { i64, i64, i64 }, ptr %l97
  store { i64, i64, i64 } %t172, ptr %l12
  %t173 = getelementptr { i64, i64, i64 }, ptr %l12, i32 0, i32 0
  %t174 = load i64, ptr %t173, !tbaa !24
  store i64 %t174, ptr %l13, !tbaa !24
  %t176 = getelementptr { i64, i64, i64 }, ptr %l12, i32 0, i32 1
  %t177 = load i64, ptr %t176, !tbaa !24
  store i64 %t177, ptr %l14, !tbaa !24
  %t179 = getelementptr { i64, i64, i64 }, ptr %l12, i32 0, i32 2
  %t180 = load i64, ptr %t179, !tbaa !24
  store i64 %t180, ptr %l15, !tbaa !24
  %t182 = load ptr, ptr %l0, !tbaa !29
  %t184 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t182)
  store ptr %t184, ptr %l102
  br label %bb50
bb50:
  %t185 = load ptr, ptr %l102, !tbaa !29
  %t187 = getelementptr %"compiler/check:frame", ptr %t185, i32 0, i32 10
  %t188 = load i64, ptr %l13, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t187, i64 %t188)
  br label %bb51
bb51:
  %t191 = load ptr, ptr %l0, !tbaa !29
  %t193 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t191)
  store ptr %t193, ptr %l107
  br label %bb52
bb52:
  %t194 = load ptr, ptr %l107, !tbaa !29
  %t196 = getelementptr %"compiler/check:frame", ptr %t194, i32 0, i32 11
  %t197 = load i64, ptr %l13, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t196, i64 %t197)
  br label %bb53
bb53:
  %t200 = load ptr, ptr %l0, !tbaa !29
  store ptr %t200, ptr %l111, !tbaa !29
  %t201 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t201, ptr %l112
  store i64 %a4, ptr %l113, !tbaa !24
  %t203 = load ptr, ptr %l0, !tbaa !29
  %t204 = load %"compiler/source:Span", ptr %l1
  %t205 = load i64, ptr %l7, !tbaa !24
  %t209 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t203, %"compiler/source:Span" %t204, i64 %t205)
  store ptr %t209, ptr %l117
  br label %bb54
bb54:
  %t210 = icmp sge i64 0, 0
  br i1 %t210, label %bb55, label %bb56
bb55:
  %t212 = icmp sle i64 0, 1152921504606846975
  br i1 %t212, label %bb57, label %bb58
bb56:
  call void @__olang_check_failed(ptr @olang_loc_dcf5b9aec39ad50b_4fa64d0de79beb7f)
  unreachable
bb57:
  %t214 = mul i64 0, 8
  %t215 = insertvalue { i64, ptr } undef, i64 0, 0
  %t216 = insertvalue { i64, ptr } %t215, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t217 = load ptr, ptr %l111, !tbaa !29
  %t218 = load %"compiler/source:Span", ptr %l112
  %t219 = load i64, ptr %l113, !tbaa !24
  %t220 = load ptr, ptr %l117, !tbaa !29
  %t222 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eloopCall(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %t217, %"compiler/source:Span" %t218, i64 %t219, ptr %t220, { i64, ptr } %t216)
  store ptr %t222, ptr %l121
  br label %bb59
bb58:
  call void @__olang_check_failed(ptr @olang_loc_dcf5b9aec39ad50b_4fa64d0de79beb7f)
  unreachable
bb59:
  %t223 = load ptr, ptr %l121, !tbaa !29
  %t224 = load ptr, ptr %l0, !tbaa !29
  %t225 = load %"compiler/source:Span", ptr %l1
  %t227 = load i64, ptr %l13, !tbaa !24
  %t232 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexhaustedOrBreak(ptr %v0, ptr %v0, ptr %v0, ptr %t224, %"compiler/source:Span" %t225, ptr %t223, i64 %t227)
  store ptr %t232, ptr %l126
  br label %bb60
bb60:
  %t233 = load ptr, ptr %l126, !tbaa !29
  %t234 = load ptr, ptr %l0, !tbaa !29
  %t235 = load %"compiler/source:Span", ptr %l1
  %t236 = load ptr, ptr %l2, !tbaa !29
  %t237 = load i64, ptr %l10, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eelementLocals(ptr %v0, ptr %v1, ptr %v0, ptr %t234, %"compiler/source:Span" %t235, ptr %t236, i64 %t237, ptr %t233)
  br label %bb61
bb61:
  %t244 = load ptr, ptr %l0, !tbaa !29
  %t245 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewalkBody(ptr %v0, ptr %v1, ptr %v3, ptr %t244, ptr %t245, ptr %a5, i32 %a6)
  br label %bb62
bb62:
  %t252 = load ptr, ptr %l0, !tbaa !29
  %t254 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t252)
  store ptr %t254, ptr %l138
  br label %bb63
bb63:
  %t255 = load ptr, ptr %l138, !tbaa !29
  %t257 = getelementptr %"compiler/check:frame", ptr %t255, i32 0, i32 10
  %t259 = call { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %t257)
  %t260 = extractvalue { i32, i64 } %t259, 1
  %t261 = extractvalue { i32, i64 } %t259, 0
  store i32 %t261, ptr %l142
  %t262 = icmp ne i32 %t261, 0
  br i1 %t262, label %bb65, label %ok.263, !prof !99
ok.263:
  store i64 %t260, ptr %l141
  br label %bb64
bb64:
  %t264 = load i64, ptr %l141, !tbaa !24
  store i64 %t264, ptr %l136, !tbaa !24
  br label %bb67
bb65:
  br label %bb66
bb66:
  br label %bb67
bb67:
  %t265 = load ptr, ptr %l0, !tbaa !29
  %t267 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t265)
  store ptr %t267, ptr %l145
  br label %bb68
bb68:
  %t268 = load ptr, ptr %l145, !tbaa !29
  %t270 = getelementptr %"compiler/check:frame", ptr %t268, i32 0, i32 11
  %t272 = call { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %t270)
  %t273 = extractvalue { i32, i64 } %t272, 1
  %t274 = extractvalue { i32, i64 } %t272, 0
  store i32 %t274, ptr %l149
  %t275 = icmp ne i32 %t274, 0
  br i1 %t275, label %bb70, label %ok.276, !prof !99
ok.276:
  store i64 %t273, ptr %l148
  br label %bb69
bb69:
  %t277 = load i64, ptr %l148, !tbaa !24
  store i64 %t277, ptr %l143, !tbaa !24
  br label %bb72
bb70:
  br label %bb71
bb71:
  br label %bb72
bb72:
  %t278 = load ptr, ptr %l0, !tbaa !29
  %t279 = load i64, ptr %l13, !tbaa !24
  %t280 = load i64, ptr %l14, !tbaa !24
  %t281 = load i64, ptr %l15, !tbaa !24
  %t282 = load i64, ptr %l11, !tbaa !24
  %t288 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclose(ptr %v0, ptr %v0, ptr %t278, i64 %t279, i64 %t280, i64 %t281, i64 %t282)
  store ptr %t288, ptr %l155
  br label %bb73
bb73:
  %t289 = load ptr, ptr %l155, !tbaa !29
  %t290 = load ptr, ptr %l0, !tbaa !29
  store ptr %t290, ptr %l156, !tbaa !29
  %t291 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t291, ptr %l157
  store ptr %t289, ptr %l158, !tbaa !29
  %t293 = load ptr, ptr %l0, !tbaa !29
  %t294 = load %"compiler/source:Span", ptr %l1
  %t295 = load i64, ptr %l10, !tbaa !24
  %t299 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecountPost(ptr %v0, ptr %v0, ptr %t293, %"compiler/source:Span" %t294, i64 %t295)
  store ptr %t299, ptr %l162
  br label %bb74
bb74:
  store { i64, [3 x i64] } zeroinitializer, ptr %t300
  %t301 = getelementptr { i64, [3 x i64] }, ptr %t300, i32 0, i32 0
  store i64 4, ptr %t301
  %t302 = load %"compiler/source:Span", ptr %l157
  %t303 = insertvalue { %"compiler/source:Span", ptr, ptr } undef, %"compiler/source:Span" %t302, 0
  %t304 = load ptr, ptr %l158, !tbaa !29
  %t305 = insertvalue { %"compiler/source:Span", ptr, ptr } %t303, ptr %t304, 1
  %t306 = load ptr, ptr %l162, !tbaa !29
  %t307 = insertvalue { %"compiler/source:Span", ptr, ptr } %t305, ptr %t306, 2
  %t308 = getelementptr { i64, [3 x i64] }, ptr %t300, i32 0, i32 1
  store { %"compiler/source:Span", ptr, ptr } %t307, ptr %t308
  %t309 = load { i64, [3 x i64] }, ptr %t300
  %t311 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t309, ptr %t311
  %t312 = load ptr, ptr %l156, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t312, ptr %t311)
  br label %bb75
bb75:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ezeroCalls(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l5 = alloca i1
  %l9 = alloca i1
  %l11 = alloca i1
  %l14 = alloca i32
  %l18 = alloca i1
  %l22 = alloca i1
  %l28 = alloca i32
  %l32 = alloca i1
  %l35 = alloca ptr
  %l40 = alloca i32
  %l41 = alloca { i64, ptr }
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
  %t5 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisStruct(ptr %v0, ptr %t1, i32 %t2)
  store i1 %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load i1, ptr %l5, !tbaa !21
  br i1 %t6, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t9 = load i32, ptr %l1, !tbaa !23
  %t12 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t8, i32 %t9)
  store i1 %t12, ptr %l9
  br label %bb5
bb5:
  %t13 = load i1, ptr %l9, !tbaa !21
  %t14 = xor i1 %t13, true
  br i1 %t14, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l11, !tbaa !21
  br label %bb9
bb7:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load i32, ptr %l1, !tbaa !23
  %t20 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclKind(ptr %v0, ptr %t16, i32 %t17)
  store i32 %t20, ptr %l14
  br label %bb8
bb8:
  %t21 = load i32, ptr %l14, !range !{i32 0, i32 6}
  %t23 = trunc i64 4 to i32
  %t24 = icmp eq i32 %t21, %t23
  %t26 = xor i1 %t24, true
  store i1 %t26, ptr %l11, !tbaa !21
  br label %bb9
bb9:
  %t28 = load i1, ptr %l11, !tbaa !21
  br i1 %t28, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l18, !tbaa !21
  br label %bb13
bb11:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/check:Checker", ptr %t29, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !29
  %t33 = load i32, ptr %l1, !tbaa !23
  %t36 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %t32, i32 %t33)
  store i1 %t36, ptr %l22
  br label %bb12
bb12:
  %t37 = load i1, ptr %l22, !tbaa !21
  %t38 = xor i1 %t37, true
  store i1 %t38, ptr %l18, !tbaa !21
  br label %bb13
bb13:
  %t40 = load i1, ptr %l18, !tbaa !21
  br i1 %t40, label %bb14, label %bb15
bb14:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/check:Checker", ptr %t42, i32 0, i32 1
  %t45 = load ptr, ptr %t44, !tbaa !29
  %t46 = load i32, ptr %l1, !tbaa !23
  %t49 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCtorSig(ptr %v0, ptr %t45, i32 %t46)
  store i32 %t49, ptr %l28
  br label %bb17
bb17:
  %t50 = load i32, ptr %l28, !tbaa !23
  store i32 %t50, ptr %l2, !tbaa !23
  %t51 = load i32, ptr %l2, !tbaa !23
  %t52 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t55 = icmp ne i32 %t51, %t52
  br i1 %t55, label %bb18, label %bb19
bb18:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/check:Checker", ptr %t57, i32 0, i32 1
  %t60 = load ptr, ptr %t59, !tbaa !29
  %t62 = getelementptr %"compiler/generic:Program", ptr %t60, i32 0, i32 2
  store ptr %t62, ptr %l35, !tbaa !29
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/check:Checker", ptr %t63, i32 0, i32 1
  %t66 = load ptr, ptr %t65, !tbaa !29
  %t68 = getelementptr %"compiler/generic:Program", ptr %t66, i32 0, i32 2
  %t69 = load i32, ptr %l2, !tbaa !23
  %t72 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t68, i32 %t69)
  store i32 %t72, ptr %l40
  br label %bb20
bb19:
  store i1 false, ptr %l32, !tbaa !21
  br label %bb22
bb20:
  %t73 = load ptr, ptr %l35, !tbaa !29
  %t74 = load i32, ptr %l40, !tbaa !23
  %t75 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t73, i32 %t74)
  store { i64, ptr } %t75, ptr %l41
  br label %bb21
bb21:
  %t76 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t77 = extractvalue { i64, ptr } %t76, 0
  %t79 = icmp eq i64 %t77, 1
  store i1 %t79, ptr %l32, !tbaa !21
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s0)
  %t81 = load i1, ptr %l32, !tbaa !21
  store i1 %t81, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2elaneMethodName(ptr %v0, { i64, ptr } %a0, i64 %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca i1
  %l4 = alloca i1
  %l6 = alloca i1
  %l8 = alloca i1
  %l10 = alloca i1
  %l12 = alloca i1
  %l16 = alloca i1
  %l18 = alloca i1
  %l22 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store { i64, ptr } %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d30, i32 0, i32 1) })
  store i1 %t3, ptr %l4
  br label %bb1
bb1:
  %t4 = load i1, ptr %l4, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  br label %bb16
bb3:
  %t5 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t7 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t5, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d31, i32 0, i32 1) })
  store i1 %t7, ptr %l6
  br label %bb4
bb4:
  %t8 = load i1, ptr %l6, !tbaa !21
  br i1 %t8, label %bb5, label %bb6
bb5:
  br label %bb16
bb6:
  %t9 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t11 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t9, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d32, i32 0, i32 1) })
  store i1 %t11, ptr %l8
  br label %bb7
bb7:
  %t12 = load i1, ptr %l8, !tbaa !21
  br i1 %t12, label %bb8, label %bb9
bb8:
  br label %bb16
bb9:
  %t13 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t15 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t13, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d33, i32 0, i32 1) })
  store i1 %t15, ptr %l10
  br label %bb10
bb10:
  %t16 = load i1, ptr %l10, !tbaa !21
  br i1 %t16, label %bb11, label %bb12
bb11:
  br label %bb16
bb12:
  %t17 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t19 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t17, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d34, i32 0, i32 1) })
  store i1 %t19, ptr %l12
  br label %bb13
bb13:
  %t20 = load i1, ptr %l12, !tbaa !21
  br i1 %t20, label %bb14, label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb17
bb16:
  %t21 = load i64, ptr %l1, !tbaa !24
  %t23 = icmp eq i64 %t21, 0
  store i1 %t23, ptr %l2, !tbaa !21
  br label %bb35
bb17:
  %t25 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t27 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t25, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d35, i32 0, i32 1) })
  store i1 %t27, ptr %l16
  br label %bb18
bb18:
  %t28 = load i1, ptr %l16, !tbaa !21
  br i1 %t28, label %bb19, label %bb20
bb19:
  br label %bb24
bb20:
  %t29 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t31 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t29, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d36, i32 0, i32 1) })
  store i1 %t31, ptr %l18
  br label %bb21
bb21:
  %t32 = load i1, ptr %l18, !tbaa !21
  br i1 %t32, label %bb22, label %bb23
bb22:
  br label %bb24
bb23:
  br label %bb25
bb24:
  %t33 = load i64, ptr %l1, !tbaa !24
  %t35 = icmp eq i64 %t33, 1
  store i1 %t35, ptr %l2, !tbaa !21
  br label %bb35
bb25:
  %t37 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t39 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t37, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d37, i32 0, i32 1) })
  store i1 %t39, ptr %l22
  br label %bb26
bb26:
  %t40 = load i1, ptr %l22, !tbaa !21
  br i1 %t40, label %bb27, label %bb28
bb27:
  br label %bb29
bb28:
  br label %bb30
bb29:
  %t41 = load i64, ptr %l1, !tbaa !24
  %t43 = icmp eq i64 %t41, 2
  store i1 %t43, ptr %l2, !tbaa !21
  br label %bb35
bb30:
  br i1 true, label %bb31, label %bb32
bb31:
  br label %bb33
bb32:
  br label %bb34
bb33:
  store i1 false, ptr %l2, !tbaa !21
  br label %bb35
bb34:
  call void @__olang_check_failed(ptr @olang_loc_679df2ab066560af_73bde1caf560602b)
  unreachable
bb35:
  call void @__olang_scope_close(ptr %s0)
  %t45 = load i1, ptr %l2, !tbaa !21
  store i1 %t45, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"compiler/check:litv" @compiler_2fcheck_2elitv_2eintLit(i64 %a0) #0 {
entry:
  %l2 = alloca %"compiler/check:litv"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/check:litv"
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = call %"compiler/check:litv" @compiler_2fcheck_3alitv_2ector(ptr %s0, i1 true, i1 false, i1 false, i64 %a0, double 0x0000000000000000)
  store %"compiler/check:litv" %t3, ptr %l2
  br label %bb1
bb1:
  call void @__olang_scope_close(ptr %s0)
  %t4 = load %"compiler/check:litv", ptr %l2
  store %"compiler/check:litv" %t4, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:litv", ptr %rv
  ret %"compiler/check:litv" %rr
}

define dso_local void @compiler_2fcheck_2estoredCatches(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca ptr
  %l16 = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp eq i64 %t3, 0
  br i1 %t5, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t7 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t7, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t9 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t9, 0
  store i64 %t11, ptr %l4, !tbaa !24
  br label %bb4
bb4:
  %t13 = load i64, ptr %l3, !tbaa !24
  %t14 = load i64, ptr %l4, !tbaa !24
  %t17 = icmp slt i64 %t13, %t14
  %t19 = xor i1 %t17, true
  br i1 %t19, label %bb5, label %bb6
bb5:
  br label %bb11
bb6:
  br label %bb7
bb7:
  %t21 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t21, ptr %l16, !tbaa !27
  %t22 = load i64, ptr %l3, !tbaa !24
  %t24 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !27
  %t26 = getelementptr ptr, ptr %t25, i64 %t22
  %t27 = load ptr, ptr %t26, !tbaa !39
  store ptr %t27, ptr %l5, !tbaa !29
  %t29 = load ptr, ptr %l5, !tbaa !29
  %t31 = getelementptr %"compiler/ast:Catch", ptr %t29, i32 0, i32 2
  %t32 = load { i64, ptr }, ptr %t31, !tbaa !27
  %t33 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2estoredIn(ptr %v0, ptr %v1, { i64, ptr } %t32, ptr %t33)
  br label %bb8
bb8:
  %t36 = load ptr, ptr %l5, !tbaa !29
  %t38 = getelementptr %"compiler/ast:Catch", ptr %t36, i32 0, i32 3
  %t39 = load { i64, ptr }, ptr %t38, !tbaa !27
  %t40 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2estoredExprs(ptr %v0, ptr %v1, { i64, ptr } %t39, ptr %t40)
  br label %bb9
bb9:
  br label %bb10
bb10:
  %t43 = load i64, ptr %l3, !tbaa !24
  %t45 = add i64 %t43, 1
  store i64 %t45, ptr %l3, !tbaa !24
  br label %bb4
bb11:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fcheck_3aChecker_2ector(ptr %out, ptr %v0, ptr %v1, ptr %a0, i1 %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i1
  %l5 = alloca i1
  %l6 = alloca i1
  %l7 = alloca i1
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i1
  %l11 = alloca ptr
  %l12 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l13 = alloca i1
  %l14 = alloca i1
  %l15 = alloca { i64, [3 x i64] }
  %l16 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l17 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l18 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l19 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l20 = alloca i64
  %l21 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l22 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l23 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l24 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l25 = alloca i32
  %l26 = alloca i64
  %l27 = alloca %"compiler/source:Span"
  %l28 = alloca i32
  %l29 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l30 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l31 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l32 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l33 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l34 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l35 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l36 = alloca %"compiler/source:Span"
  %l37 = alloca i1
  %l38 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l39 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l40 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l41 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l42 = alloca i1
  %l43 = alloca i64
  %l44 = alloca i32
  %l45 = alloca i1
  %l46 = alloca i1
  %l47 = alloca %"compiler/source:Span"
  %l48 = alloca %"compiler/source:Span"
  %l49 = alloca %"compiler/source:Span"
  %l50 = alloca %"compiler/source:Span"
  %l51 = alloca %"compiler/source:Span"
  %l52 = alloca { i64, ptr }
  %l53 = alloca i32
  %l54 = alloca i32
  %l55 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l56 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l57 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l58 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l59 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l60 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l61 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l62 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l63 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l64 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l65 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l66 = alloca i1
  %l67 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l68 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l69 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l70 = alloca i1
  %l71 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l72 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l73 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l74 = alloca i64
  %l75 = alloca i1
  %l76 = alloca i64
  %l77 = alloca i64
  %l78 = alloca i1
  %l79 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l80 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l81 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l82 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l83 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l84 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l85 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l86 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l87 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l88 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l89 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l90 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l91 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l92 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l93 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l94 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l95 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l96 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l97 = alloca i1
  %l98 = alloca i1
  %l99 = alloca i1
  %l100 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l101 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l102 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l103 = alloca i1
  %l104 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l105 = alloca i1
  %l106 = alloca i64
  %l107 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l108 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l109 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l110 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l111 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l112 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l113 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l114 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l115 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l116 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l117 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l118 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l119 = alloca i64
  %l120 = alloca i64
  %l121 = alloca i64
  %l122 = alloca i64
  %l123 = alloca i64
  %l124 = alloca i64
  %l125 = alloca i64
  %l126 = alloca i64
  %l127 = alloca i1
  %l128 = alloca i1
  %l129 = alloca i1
  %l130 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l131 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l132 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l133 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l134 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l135 = alloca i1
  %l136 = alloca i1
  %l137 = alloca i64
  %l138 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l139 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l140 = alloca i64
  %l141 = alloca i1
  %l142 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l143 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l144 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l145 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l146 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l147 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l148 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l149 = alloca i1
  %l150 = alloca i1
  %l151 = alloca i1
  %l152 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l153 = alloca i1
  %l154 = alloca %"std/prelude/text:StringBuilder"
  %l155 = alloca i1
  %l156 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l157 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l158 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l160 = alloca %"compiler/source:Span"
  %l166 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l168 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l169 = alloca i64
  %l171 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l173 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l174 = alloca i64
  %l176 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l178 = alloca i64
  %l180 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l182 = alloca i64
  %l184 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l186 = alloca i64
  %l188 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l190 = alloca i64
  %l192 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l195 = alloca %"compiler/source:Span"
  %l196 = alloca i64
  %l198 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l200 = alloca i64
  %l202 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l204 = alloca i64
  %l206 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l208 = alloca i64
  %l210 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l212 = alloca i64
  %l214 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l216 = alloca i64
  %l218 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l220 = alloca i64
  %l222 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l224 = alloca %"compiler/source:Span"
  %l225 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l226 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l227 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l228 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l229 = alloca %"compiler/source:Span"
  %l230 = alloca %"compiler/source:Span"
  %l231 = alloca %"compiler/source:Span"
  %l232 = alloca %"compiler/source:Span"
  %l233 = alloca %"compiler/source:Span"
  %l234 = alloca i64
  %l236 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l238 = alloca i64
  %l240 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l242 = alloca i64
  %l244 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l246 = alloca i64
  %l248 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l250 = alloca i64
  %l252 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l254 = alloca i64
  %l256 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l258 = alloca i64
  %l260 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l262 = alloca i64
  %l264 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l266 = alloca i64
  %l268 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l270 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l271 = alloca i64
  %l273 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l275 = alloca i64
  %l277 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l279 = alloca i64
  %l281 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l283 = alloca i64
  %l285 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l287 = alloca i64
  %l289 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l291 = alloca i64
  %l293 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l295 = alloca i64
  %l297 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l299 = alloca i64
  %l301 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l303 = alloca i64
  %l305 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l307 = alloca i64
  %l309 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l311 = alloca i64
  %l313 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l315 = alloca i64
  %l317 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l319 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l320 = alloca i64
  %l322 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l324 = alloca i64
  %l326 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l328 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l329 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l330 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l331 = alloca i64
  %l333 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l335 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l336 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l337 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l338 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l339 = alloca i64
  %l341 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l343 = alloca i64
  %l345 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l347 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l348 = alloca i64
  %l350 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l352 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l353 = alloca i64
  %l355 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l357 = alloca i64
  %l359 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l361 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l362 = alloca i64
  %l364 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l366 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l367 = alloca i64
  %l369 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l371 = alloca i64
  %l373 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l375 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l376 = alloca i64
  %l378 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l380 = alloca i64
  %l382 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l384 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l385 = alloca i64
  %l387 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l389 = alloca i64
  %l391 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l393 = alloca i64
  %l395 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l397 = alloca i64
  %l399 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l401 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l402 = alloca i64
  %l404 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l406 = alloca i64
  %l408 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l410 = alloca i64
  %l412 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l414 = alloca i64
  %l416 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l418 = alloca i64
  %l420 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l422 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l423 = alloca i64
  %l425 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l427 = alloca i64
  %l429 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l431 = alloca i64
  %l433 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l435 = alloca i64
  %l437 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l439 = alloca i64
  %l441 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l443 = alloca i64
  %l445 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l447 = alloca i64
  %l449 = alloca %"std/prelude/text:StringBuilder"
  %l451 = alloca i64
  %l453 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l455 = alloca i64
  %l457 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l459 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l460 = alloca i64
  %l462 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l464 = alloca %"compiler/check:Checker"
  %t3 = alloca { i64, [5 x i64] }, align 8
  %t21 = alloca { i64, [3 x i64] }, align 8
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v1, i32 0, i32 0)
  store %"compiler/source:Span" %t1, ptr %l160
  br label %bb1
bb1:
  %t2 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store { i64, [5 x i64] } zeroinitializer, ptr %t3
  %t4 = getelementptr { i64, [5 x i64] }, ptr %t3, i32 0, i32 0
  store i64 0, ptr %t4
  %t5 = load %"compiler/source:Span", ptr %l160
  %t6 = insertvalue { %"compiler/source:Span", i32, i64 } undef, %"compiler/source:Span" %t5, 0
  %t8 = insertvalue { %"compiler/source:Span", i32, i64 } %t6, i32 %t2, 1
  %t9 = insertvalue { %"compiler/source:Span", i32, i64 } %t8, i64 0, 2
  %t10 = getelementptr { i64, [5 x i64] }, ptr %t3, i32 0, i32 1
  store { %"compiler/source:Span", i32, i64 } %t9, ptr %t10
  %t11 = load { i64, [5 x i64] }, ptr %t3
  %t13 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 48, i64 8)
  store { i64, [5 x i64] } %t11, ptr %t13
  store ptr %t13, ptr %l2, !tbaa !29
  store ptr %a0, ptr %l3, !tbaa !29
  store i1 %a1, ptr %l4, !tbaa !21
  store i1 false, ptr %l5, !tbaa !21
  store i1 false, ptr %l6, !tbaa !21
  store i1 false, ptr %l7, !tbaa !21
  store i64 -1, ptr %l8, !tbaa !24
  store i64 -1, ptr %l9, !tbaa !24
  store i1 false, ptr %l10, !tbaa !21
  store ptr null, ptr %l11, !tbaa !29
  %t19 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t19, ptr %l166
  br label %bb2
bb2:
  %t20 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l166
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t20, ptr %l12
  store i1 false, ptr %l13, !tbaa !21
  store i1 false, ptr %l14, !tbaa !21
  store { i64, [3 x i64] } zeroinitializer, ptr %t21
  %t22 = getelementptr { i64, [3 x i64] }, ptr %t21, i32 0, i32 0
  store i64 0, ptr %t22
  %t23 = load { i64, [3 x i64] }, ptr %t21
  store { i64, [3 x i64] } %t23, ptr %l15
  %t25 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t25, ptr %l168
  br label %bb3
bb3:
  %t26 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l168
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t26, ptr %l16
  %t27 = ptrtoint ptr %v1 to i64
  store i64 %t27, ptr %l169, !tbaa !24
  %t28 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e15
  br i1 %t28, label %bb4, label %bb5
bb4:
  %t30 = call ptr @__olang_region_make(ptr %v1)
  %t31 = ptrtoint ptr %t30 to i64
  store i64 %t31, ptr %l169, !tbaa !24
  br label %bb5
bb5:
  %t32 = load i64, ptr %l169
  %t33 = inttoptr i64 %t32 to ptr
  %t34 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aGap_3e_2ector(ptr %t33, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t34, ptr %l171
  br label %bb6
bb6:
  %t35 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e15
  br i1 %t35, label %bb7, label %bb8
bb7:
  %t37 = load i64, ptr %l169
  %t38 = inttoptr i64 %t37 to ptr
  %t39 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l171, i32 0, i32 0
  %t40 = load { i64, ptr }, ptr %t39
  %t41 = extractvalue { i64, ptr } %t40, 1
  %t42 = call ptr @__olang_region_or(ptr %t41, ptr null)
  %t43 = icmp ne ptr %t42, null
  %t44 = select i1 %t43, ptr %t42, ptr null
  %t45 = icmp eq ptr %t44, %t38
  call void @__olang_region_settle(ptr %t38, i1 %t45)
  br label %bb8
bb8:
  %t46 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l171
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t46, ptr %l17
  %t47 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t47, ptr %l173
  br label %bb9
bb9:
  %t48 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l173
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t48, ptr %l18
  %t49 = ptrtoint ptr %v1 to i64
  store i64 %t49, ptr %l174, !tbaa !24
  %t50 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e17
  br i1 %t50, label %bb10, label %bb11
bb10:
  %t52 = call ptr @__olang_region_make(ptr %v1)
  %t53 = ptrtoint ptr %t52 to i64
  store i64 %t53, ptr %l174, !tbaa !24
  br label %bb11
bb11:
  %t54 = load i64, ptr %l174
  %t55 = inttoptr i64 %t54 to ptr
  %t56 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t55, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t56, ptr %l176
  br label %bb12
bb12:
  %t57 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e17
  br i1 %t57, label %bb13, label %bb14
bb13:
  %t59 = load i64, ptr %l174
  %t60 = inttoptr i64 %t59 to ptr
  %t61 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l176, i32 0, i32 0
  %t62 = load { i64, ptr }, ptr %t61
  %t63 = extractvalue { i64, ptr } %t62, 1
  %t64 = call ptr @__olang_region_or(ptr %t63, ptr null)
  %t65 = icmp ne ptr %t64, null
  %t66 = select i1 %t65, ptr %t64, ptr null
  %t67 = icmp eq ptr %t66, %t60
  call void @__olang_region_settle(ptr %t60, i1 %t67)
  br label %bb14
bb14:
  %t68 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l176
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t68, ptr %l19
  store i64 0, ptr %l20, !tbaa !24
  %t69 = ptrtoint ptr %v1 to i64
  store i64 %t69, ptr %l178, !tbaa !24
  %t70 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e19
  br i1 %t70, label %bb15, label %bb16
bb15:
  %t72 = call ptr @__olang_region_make(ptr %v1)
  %t73 = ptrtoint ptr %t72 to i64
  store i64 %t73, ptr %l178, !tbaa !24
  br label %bb16
bb16:
  %t74 = load i64, ptr %l178
  %t75 = inttoptr i64 %t74 to ptr
  %t76 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t75, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t76, ptr %l180
  br label %bb17
bb17:
  %t77 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e19
  br i1 %t77, label %bb18, label %bb19
bb18:
  %t79 = load i64, ptr %l178
  %t80 = inttoptr i64 %t79 to ptr
  %t81 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l180, i32 0, i32 0
  %t82 = load { i64, ptr }, ptr %t81
  %t83 = extractvalue { i64, ptr } %t82, 1
  %t84 = call ptr @__olang_region_or(ptr %t83, ptr null)
  %t85 = icmp ne ptr %t84, null
  %t86 = select i1 %t85, ptr %t84, ptr null
  %t87 = icmp eq ptr %t86, %t80
  call void @__olang_region_settle(ptr %t80, i1 %t87)
  br label %bb19
bb19:
  %t88 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l180
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t88, ptr %l21
  %t89 = ptrtoint ptr %v1 to i64
  store i64 %t89, ptr %l182, !tbaa !24
  %t90 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e20
  br i1 %t90, label %bb20, label %bb21
bb20:
  %t92 = call ptr @__olang_region_make(ptr %v1)
  %t93 = ptrtoint ptr %t92 to i64
  store i64 %t93, ptr %l182, !tbaa !24
  br label %bb21
bb21:
  %t94 = load i64, ptr %l182
  %t95 = inttoptr i64 %t94 to ptr
  %t96 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %t95)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t96, ptr %l184
  br label %bb22
bb22:
  %t97 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e20
  br i1 %t97, label %bb23, label %bb24
bb23:
  %t99 = load i64, ptr %l182
  %t100 = inttoptr i64 %t99 to ptr
  %t101 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l184, i32 0, i32 2
  %t102 = load { i64, ptr }, ptr %t101
  %t103 = extractvalue { i64, ptr } %t102, 1
  %t104 = call ptr @__olang_region_or(ptr %t103, ptr null)
  %t105 = icmp ne ptr %t104, null
  %t106 = select i1 %t105, ptr %t104, ptr null
  %t107 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l184, i32 0, i32 1
  %t108 = load { i64, ptr }, ptr %t107
  %t109 = extractvalue { i64, ptr } %t108, 1
  %t110 = call ptr @__olang_region_or(ptr %t109, ptr null)
  %t111 = icmp ne ptr %t110, null
  %t112 = select i1 %t111, ptr %t110, ptr %t106
  %t113 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l184, i32 0, i32 0
  %t114 = load { i64, ptr }, ptr %t113
  %t115 = extractvalue { i64, ptr } %t114, 1
  %t116 = call ptr @__olang_region_or(ptr %t115, ptr null)
  %t117 = icmp ne ptr %t116, null
  %t118 = select i1 %t117, ptr %t116, ptr %t112
  %t119 = icmp eq ptr %t118, %t100
  call void @__olang_region_settle(ptr %t100, i1 %t119)
  br label %bb24
bb24:
  %t120 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l184
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t120, ptr %l22
  %t121 = ptrtoint ptr %v1 to i64
  store i64 %t121, ptr %l186, !tbaa !24
  %t122 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e21
  br i1 %t122, label %bb25, label %bb26
bb25:
  %t124 = call ptr @__olang_region_make(ptr %v1)
  %t125 = ptrtoint ptr %t124 to i64
  store i64 %t125, ptr %l186, !tbaa !24
  br label %bb26
bb26:
  %t126 = load i64, ptr %l186
  %t127 = inttoptr i64 %t126 to ptr
  %t128 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20I64_3e(ptr %t127)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t128, ptr %l188
  br label %bb27
bb27:
  %t129 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e21
  br i1 %t129, label %bb28, label %bb29
bb28:
  %t131 = load i64, ptr %l186
  %t132 = inttoptr i64 %t131 to ptr
  %t133 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l188, i32 0, i32 2
  %t134 = load { i64, ptr }, ptr %t133
  %t135 = extractvalue { i64, ptr } %t134, 1
  %t136 = call ptr @__olang_region_or(ptr %t135, ptr null)
  %t137 = icmp ne ptr %t136, null
  %t138 = select i1 %t137, ptr %t136, ptr null
  %t139 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l188, i32 0, i32 1
  %t140 = load { i64, ptr }, ptr %t139
  %t141 = extractvalue { i64, ptr } %t140, 1
  %t142 = call ptr @__olang_region_or(ptr %t141, ptr null)
  %t143 = icmp ne ptr %t142, null
  %t144 = select i1 %t143, ptr %t142, ptr %t138
  %t145 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l188, i32 0, i32 0
  %t146 = load { i64, ptr }, ptr %t145
  %t147 = extractvalue { i64, ptr } %t146, 1
  %t148 = call ptr @__olang_region_or(ptr %t147, ptr null)
  %t149 = icmp ne ptr %t148, null
  %t150 = select i1 %t149, ptr %t148, ptr %t144
  %t151 = icmp eq ptr %t150, %t132
  call void @__olang_region_settle(ptr %t132, i1 %t151)
  br label %bb29
bb29:
  %t152 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l188
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t152, ptr %l23
  %t153 = ptrtoint ptr %v1 to i64
  store i64 %t153, ptr %l190, !tbaa !24
  %t154 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e22
  br i1 %t154, label %bb30, label %bb31
bb30:
  %t156 = call ptr @__olang_region_make(ptr %v1)
  %t157 = ptrtoint ptr %t156 to i64
  store i64 %t157, ptr %l190, !tbaa !24
  br label %bb31
bb31:
  %t158 = load i64, ptr %l190
  %t159 = inttoptr i64 %t158 to ptr
  %t160 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %t159)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t160, ptr %l192
  br label %bb32
bb32:
  %t161 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e22
  br i1 %t161, label %bb33, label %bb34
bb33:
  %t163 = load i64, ptr %l190
  %t164 = inttoptr i64 %t163 to ptr
  %t165 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l192, i32 0, i32 2
  %t166 = load { i64, ptr }, ptr %t165
  %t167 = extractvalue { i64, ptr } %t166, 1
  %t168 = call ptr @__olang_region_or(ptr %t167, ptr null)
  %t169 = icmp ne ptr %t168, null
  %t170 = select i1 %t169, ptr %t168, ptr null
  %t171 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l192, i32 0, i32 1
  %t172 = load { i64, ptr }, ptr %t171
  %t173 = extractvalue { i64, ptr } %t172, 1
  %t174 = call ptr @__olang_region_or(ptr %t173, ptr null)
  %t175 = icmp ne ptr %t174, null
  %t176 = select i1 %t175, ptr %t174, ptr %t170
  %t177 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l192, i32 0, i32 0
  %t178 = load { i64, ptr }, ptr %t177
  %t179 = extractvalue { i64, ptr } %t178, 1
  %t180 = call ptr @__olang_region_or(ptr %t179, ptr null)
  %t181 = icmp ne ptr %t180, null
  %t182 = select i1 %t181, ptr %t180, ptr %t176
  %t183 = icmp eq ptr %t182, %t164
  call void @__olang_region_settle(ptr %t164, i1 %t183)
  br label %bb34
bb34:
  %t184 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l192
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t184, ptr %l24
  %t185 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t185, ptr %l25, !tbaa !23
  store i64 -1, ptr %l26, !tbaa !24
  %t187 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v1, i32 0, i32 0)
  store %"compiler/source:Span" %t187, ptr %l195
  br label %bb35
bb35:
  %t188 = load %"compiler/source:Span", ptr %l195
  store %"compiler/source:Span" %t188, ptr %l27
  store i32 -1, ptr %l28, !tbaa !23
  %t189 = ptrtoint ptr %v1 to i64
  store i64 %t189, ptr %l196, !tbaa !24
  %t190 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e27
  br i1 %t190, label %bb36, label %bb37
bb36:
  %t192 = call ptr @__olang_region_make(ptr %v1)
  %t193 = ptrtoint ptr %t192 to i64
  store i64 %t193, ptr %l196, !tbaa !24
  br label %bb37
bb37:
  %t194 = load i64, ptr %l196
  %t195 = inttoptr i64 %t194 to ptr
  %t196 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20I64_3e(ptr %t195)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t196, ptr %l198
  br label %bb38
bb38:
  %t197 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e27
  br i1 %t197, label %bb39, label %bb40
bb39:
  %t199 = load i64, ptr %l196
  %t200 = inttoptr i64 %t199 to ptr
  %t201 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l198, i32 0, i32 2
  %t202 = load { i64, ptr }, ptr %t201
  %t203 = extractvalue { i64, ptr } %t202, 1
  %t204 = call ptr @__olang_region_or(ptr %t203, ptr null)
  %t205 = icmp ne ptr %t204, null
  %t206 = select i1 %t205, ptr %t204, ptr null
  %t207 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l198, i32 0, i32 1
  %t208 = load { i64, ptr }, ptr %t207
  %t209 = extractvalue { i64, ptr } %t208, 1
  %t210 = call ptr @__olang_region_or(ptr %t209, ptr null)
  %t211 = icmp ne ptr %t210, null
  %t212 = select i1 %t211, ptr %t210, ptr %t206
  %t213 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l198, i32 0, i32 0
  %t214 = load { i64, ptr }, ptr %t213
  %t215 = extractvalue { i64, ptr } %t214, 1
  %t216 = call ptr @__olang_region_or(ptr %t215, ptr null)
  %t217 = icmp ne ptr %t216, null
  %t218 = select i1 %t217, ptr %t216, ptr %t212
  %t219 = icmp eq ptr %t218, %t200
  call void @__olang_region_settle(ptr %t200, i1 %t219)
  br label %bb40
bb40:
  %t220 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l198
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t220, ptr %l29
  %t221 = ptrtoint ptr %v1 to i64
  store i64 %t221, ptr %l200, !tbaa !24
  %t222 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e28
  br i1 %t222, label %bb41, label %bb42
bb41:
  %t224 = call ptr @__olang_region_make(ptr %v1)
  %t225 = ptrtoint ptr %t224 to i64
  store i64 %t225, ptr %l200, !tbaa !24
  br label %bb42
bb42:
  %t226 = load i64, ptr %l200
  %t227 = inttoptr i64 %t226 to ptr
  %t228 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_Ha679347de08598409825f08e1f70cb0e(ptr %t227)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t228, ptr %l202
  br label %bb43
bb43:
  %t229 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e28
  br i1 %t229, label %bb44, label %bb45
bb44:
  %t231 = load i64, ptr %l200
  %t232 = inttoptr i64 %t231 to ptr
  %t233 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l202, i32 0, i32 2
  %t234 = load { i64, ptr }, ptr %t233
  %t235 = extractvalue { i64, ptr } %t234, 1
  %t236 = call ptr @__olang_region_or(ptr %t235, ptr null)
  %t237 = icmp ne ptr %t236, null
  %t238 = select i1 %t237, ptr %t236, ptr null
  %t239 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l202, i32 0, i32 1
  %t240 = load { i64, ptr }, ptr %t239
  %t241 = extractvalue { i64, ptr } %t240, 1
  %t242 = call ptr @__olang_region_or(ptr %t241, ptr null)
  %t243 = icmp ne ptr %t242, null
  %t244 = select i1 %t243, ptr %t242, ptr %t238
  %t245 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l202, i32 0, i32 0
  %t246 = load { i64, ptr }, ptr %t245
  %t247 = extractvalue { i64, ptr } %t246, 1
  %t248 = call ptr @__olang_region_or(ptr %t247, ptr null)
  %t249 = icmp ne ptr %t248, null
  %t250 = select i1 %t249, ptr %t248, ptr %t244
  %t251 = icmp eq ptr %t250, %t232
  call void @__olang_region_settle(ptr %t232, i1 %t251)
  br label %bb45
bb45:
  %t252 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l202
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t252, ptr %l30
  %t253 = ptrtoint ptr %v1 to i64
  store i64 %t253, ptr %l204, !tbaa !24
  %t254 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e29
  br i1 %t254, label %bb46, label %bb47
bb46:
  %t256 = call ptr @__olang_region_make(ptr %v1)
  %t257 = ptrtoint ptr %t256 to i64
  store i64 %t257, ptr %l204, !tbaa !24
  br label %bb47
bb47:
  %t258 = load i64, ptr %l204
  %t259 = inttoptr i64 %t258 to ptr
  %t260 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_2ector(ptr %t259, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t260, ptr %l206
  br label %bb48
bb48:
  %t261 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e29
  br i1 %t261, label %bb49, label %bb50
bb49:
  %t263 = load i64, ptr %l204
  %t264 = inttoptr i64 %t263 to ptr
  %t265 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l206, i32 0, i32 0
  %t266 = load { i64, ptr }, ptr %t265
  %t267 = extractvalue { i64, ptr } %t266, 1
  %t268 = call ptr @__olang_region_or(ptr %t267, ptr null)
  %t269 = icmp ne ptr %t268, null
  %t270 = select i1 %t269, ptr %t268, ptr null
  %t271 = icmp eq ptr %t270, %t264
  call void @__olang_region_settle(ptr %t264, i1 %t271)
  br label %bb50
bb50:
  %t272 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l206
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t272, ptr %l31
  %t273 = ptrtoint ptr %v1 to i64
  store i64 %t273, ptr %l208, !tbaa !24
  %t274 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e30
  br i1 %t274, label %bb51, label %bb52
bb51:
  %t276 = call ptr @__olang_region_make(ptr %v1)
  %t277 = ptrtoint ptr %t276 to i64
  store i64 %t277, ptr %l208, !tbaa !24
  br label %bb52
bb52:
  %t278 = load i64, ptr %l208
  %t279 = inttoptr i64 %t278 to ptr
  %t280 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %t279)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t280, ptr %l210
  br label %bb53
bb53:
  %t281 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e30
  br i1 %t281, label %bb54, label %bb55
bb54:
  %t283 = load i64, ptr %l208
  %t284 = inttoptr i64 %t283 to ptr
  %t285 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l210, i32 0, i32 2
  %t286 = load { i64, ptr }, ptr %t285
  %t287 = extractvalue { i64, ptr } %t286, 1
  %t288 = call ptr @__olang_region_or(ptr %t287, ptr null)
  %t289 = icmp ne ptr %t288, null
  %t290 = select i1 %t289, ptr %t288, ptr null
  %t291 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l210, i32 0, i32 1
  %t292 = load { i64, ptr }, ptr %t291
  %t293 = extractvalue { i64, ptr } %t292, 1
  %t294 = call ptr @__olang_region_or(ptr %t293, ptr null)
  %t295 = icmp ne ptr %t294, null
  %t296 = select i1 %t295, ptr %t294, ptr %t290
  %t297 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l210, i32 0, i32 0
  %t298 = load { i64, ptr }, ptr %t297
  %t299 = extractvalue { i64, ptr } %t298, 1
  %t300 = call ptr @__olang_region_or(ptr %t299, ptr null)
  %t301 = icmp ne ptr %t300, null
  %t302 = select i1 %t301, ptr %t300, ptr %t296
  %t303 = icmp eq ptr %t302, %t284
  call void @__olang_region_settle(ptr %t284, i1 %t303)
  br label %bb55
bb55:
  %t304 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l210
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t304, ptr %l32
  %t305 = ptrtoint ptr %v1 to i64
  store i64 %t305, ptr %l212, !tbaa !24
  %t306 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e31
  br i1 %t306, label %bb56, label %bb57
bb56:
  %t308 = call ptr @__olang_region_make(ptr %v1)
  %t309 = ptrtoint ptr %t308 to i64
  store i64 %t309, ptr %l212, !tbaa !24
  br label %bb57
bb57:
  %t310 = load i64, ptr %l212
  %t311 = inttoptr i64 %t310 to ptr
  %t312 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e(ptr %t311)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t312, ptr %l214
  br label %bb58
bb58:
  %t313 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e31
  br i1 %t313, label %bb59, label %bb60
bb59:
  %t315 = load i64, ptr %l212
  %t316 = inttoptr i64 %t315 to ptr
  %t317 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l214, i32 0, i32 2
  %t318 = load { i64, ptr }, ptr %t317
  %t319 = extractvalue { i64, ptr } %t318, 1
  %t320 = call ptr @__olang_region_or(ptr %t319, ptr null)
  %t321 = icmp ne ptr %t320, null
  %t322 = select i1 %t321, ptr %t320, ptr null
  %t323 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l214, i32 0, i32 1
  %t324 = load { i64, ptr }, ptr %t323
  %t325 = extractvalue { i64, ptr } %t324, 1
  %t326 = call ptr @__olang_region_or(ptr %t325, ptr null)
  %t327 = icmp ne ptr %t326, null
  %t328 = select i1 %t327, ptr %t326, ptr %t322
  %t329 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l214, i32 0, i32 0
  %t330 = load { i64, ptr }, ptr %t329
  %t331 = extractvalue { i64, ptr } %t330, 1
  %t332 = call ptr @__olang_region_or(ptr %t331, ptr null)
  %t333 = icmp ne ptr %t332, null
  %t334 = select i1 %t333, ptr %t332, ptr %t328
  %t335 = icmp eq ptr %t334, %t316
  call void @__olang_region_settle(ptr %t316, i1 %t335)
  br label %bb60
bb60:
  %t336 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l214
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t336, ptr %l33
  %t337 = ptrtoint ptr %v1 to i64
  store i64 %t337, ptr %l216, !tbaa !24
  %t338 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e32
  br i1 %t338, label %bb61, label %bb62
bb61:
  %t340 = call ptr @__olang_region_make(ptr %v1)
  %t341 = ptrtoint ptr %t340 to i64
  store i64 %t341, ptr %l216, !tbaa !24
  br label %bb62
bb62:
  %t342 = load i64, ptr %l216
  %t343 = inttoptr i64 %t342 to ptr
  %t344 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_Ha2d2b8fd05526b0fff2aee14fc193d17(ptr %t343)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t344, ptr %l218
  br label %bb63
bb63:
  %t345 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e32
  br i1 %t345, label %bb64, label %bb65
bb64:
  %t347 = load i64, ptr %l216
  %t348 = inttoptr i64 %t347 to ptr
  %t349 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l218, i32 0, i32 2
  %t350 = load { i64, ptr }, ptr %t349
  %t351 = extractvalue { i64, ptr } %t350, 1
  %t352 = call ptr @__olang_region_or(ptr %t351, ptr null)
  %t353 = icmp ne ptr %t352, null
  %t354 = select i1 %t353, ptr %t352, ptr null
  %t355 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l218, i32 0, i32 1
  %t356 = load { i64, ptr }, ptr %t355
  %t357 = extractvalue { i64, ptr } %t356, 1
  %t358 = call ptr @__olang_region_or(ptr %t357, ptr null)
  %t359 = icmp ne ptr %t358, null
  %t360 = select i1 %t359, ptr %t358, ptr %t354
  %t361 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l218, i32 0, i32 0
  %t362 = load { i64, ptr }, ptr %t361
  %t363 = extractvalue { i64, ptr } %t362, 1
  %t364 = call ptr @__olang_region_or(ptr %t363, ptr null)
  %t365 = icmp ne ptr %t364, null
  %t366 = select i1 %t365, ptr %t364, ptr %t360
  %t367 = icmp eq ptr %t366, %t348
  call void @__olang_region_settle(ptr %t348, i1 %t367)
  br label %bb65
bb65:
  %t368 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l218
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t368, ptr %l34
  %t369 = ptrtoint ptr %v1 to i64
  store i64 %t369, ptr %l220, !tbaa !24
  %t370 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e33
  br i1 %t370, label %bb66, label %bb67
bb66:
  %t372 = call ptr @__olang_region_make(ptr %v1)
  %t373 = ptrtoint ptr %t372 to i64
  store i64 %t373, ptr %l220, !tbaa !24
  br label %bb67
bb67:
  %t374 = load i64, ptr %l220
  %t375 = inttoptr i64 %t374 to ptr
  %t376 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e(ptr %t375)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t376, ptr %l222
  br label %bb68
bb68:
  %t377 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e33
  br i1 %t377, label %bb69, label %bb70
bb69:
  %t379 = load i64, ptr %l220
  %t380 = inttoptr i64 %t379 to ptr
  %t381 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l222, i32 0, i32 2
  %t382 = load { i64, ptr }, ptr %t381
  %t383 = extractvalue { i64, ptr } %t382, 1
  %t384 = call ptr @__olang_region_or(ptr %t383, ptr null)
  %t385 = icmp ne ptr %t384, null
  %t386 = select i1 %t385, ptr %t384, ptr null
  %t387 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l222, i32 0, i32 1
  %t388 = load { i64, ptr }, ptr %t387
  %t389 = extractvalue { i64, ptr } %t388, 1
  %t390 = call ptr @__olang_region_or(ptr %t389, ptr null)
  %t391 = icmp ne ptr %t390, null
  %t392 = select i1 %t391, ptr %t390, ptr %t386
  %t393 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l222, i32 0, i32 0
  %t394 = load { i64, ptr }, ptr %t393
  %t395 = extractvalue { i64, ptr } %t394, 1
  %t396 = call ptr @__olang_region_or(ptr %t395, ptr null)
  %t397 = icmp ne ptr %t396, null
  %t398 = select i1 %t397, ptr %t396, ptr %t392
  %t399 = icmp eq ptr %t398, %t380
  call void @__olang_region_settle(ptr %t380, i1 %t399)
  br label %bb70
bb70:
  %t400 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l222
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t400, ptr %l35
  %t401 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v1, i32 -1, i32 -1)
  store %"compiler/source:Span" %t401, ptr %l224
  br label %bb71
bb71:
  %t402 = load %"compiler/source:Span", ptr %l224
  store %"compiler/source:Span" %t402, ptr %l36
  store i1 false, ptr %l37, !tbaa !21
  %t403 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t403, ptr %l225
  br label %bb72
bb72:
  %t404 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l225
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t404, ptr %l38
  %t405 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t405, ptr %l226
  br label %bb73
bb73:
  %t406 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l226
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t406, ptr %l39
  %t407 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aatRec_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t407, ptr %l227
  br label %bb74
bb74:
  %t408 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l227
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t408, ptr %l40
  %t409 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alaneNode_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t409, ptr %l228
  br label %bb75
bb75:
  %t410 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l228
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t410, ptr %l41
  store i1 false, ptr %l42, !tbaa !21
  store i64 0, ptr %l43, !tbaa !24
  store i32 0, ptr %l44, !tbaa !23
  store i1 false, ptr %l45, !tbaa !21
  store i1 false, ptr %l46, !tbaa !21
  %t411 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v1, i32 -1, i32 -1)
  store %"compiler/source:Span" %t411, ptr %l229
  br label %bb76
bb76:
  %t412 = load %"compiler/source:Span", ptr %l229
  store %"compiler/source:Span" %t412, ptr %l47
  %t413 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v1, i32 -1, i32 -1)
  store %"compiler/source:Span" %t413, ptr %l230
  br label %bb77
bb77:
  %t414 = load %"compiler/source:Span", ptr %l230
  store %"compiler/source:Span" %t414, ptr %l48
  %t415 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v1, i32 -1, i32 -1)
  store %"compiler/source:Span" %t415, ptr %l231
  br label %bb78
bb78:
  %t416 = load %"compiler/source:Span", ptr %l231
  store %"compiler/source:Span" %t416, ptr %l49
  %t417 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v1, i32 -1, i32 -1)
  store %"compiler/source:Span" %t417, ptr %l232
  br label %bb79
bb79:
  %t418 = load %"compiler/source:Span", ptr %l232
  store %"compiler/source:Span" %t418, ptr %l50
  %t419 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v1, i32 -1, i32 -1)
  store %"compiler/source:Span" %t419, ptr %l233
  br label %bb80
bb80:
  %t420 = load %"compiler/source:Span", ptr %l233
  store %"compiler/source:Span" %t420, ptr %l51
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d38, i32 0, i32 1) }, ptr %l52, !tbaa !27
  store i32 -1, ptr %l53, !tbaa !23
  store i32 -1, ptr %l54, !tbaa !23
  %t421 = ptrtoint ptr %v1 to i64
  store i64 %t421, ptr %l234, !tbaa !24
  %t422 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e53
  br i1 %t422, label %bb81, label %bb82
bb81:
  %t424 = call ptr @__olang_region_make(ptr %v1)
  %t425 = ptrtoint ptr %t424 to i64
  store i64 %t425, ptr %l234, !tbaa !24
  br label %bb82
bb82:
  %t426 = load i64, ptr %l234
  %t427 = inttoptr i64 %t426 to ptr
  %t428 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fcheck_3arawTable_26_3e(ptr %t427)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t428, ptr %l236
  br label %bb83
bb83:
  %t429 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e53
  br i1 %t429, label %bb84, label %bb85
bb84:
  %t431 = load i64, ptr %l234
  %t432 = inttoptr i64 %t431 to ptr
  %t433 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l236, i32 0, i32 2
  %t434 = load { i64, ptr }, ptr %t433
  %t435 = extractvalue { i64, ptr } %t434, 1
  %t436 = call ptr @__olang_region_or(ptr %t435, ptr null)
  %t437 = icmp ne ptr %t436, null
  %t438 = select i1 %t437, ptr %t436, ptr null
  %t439 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l236, i32 0, i32 1
  %t440 = load { i64, ptr }, ptr %t439
  %t441 = extractvalue { i64, ptr } %t440, 1
  %t442 = call ptr @__olang_region_or(ptr %t441, ptr null)
  %t443 = icmp ne ptr %t442, null
  %t444 = select i1 %t443, ptr %t442, ptr %t438
  %t445 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l236, i32 0, i32 0
  %t446 = load { i64, ptr }, ptr %t445
  %t447 = extractvalue { i64, ptr } %t446, 1
  %t448 = call ptr @__olang_region_or(ptr %t447, ptr null)
  %t449 = icmp ne ptr %t448, null
  %t450 = select i1 %t449, ptr %t448, ptr %t444
  %t451 = icmp eq ptr %t450, %t432
  call void @__olang_region_settle(ptr %t432, i1 %t451)
  br label %bb85
bb85:
  %t452 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l236
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t452, ptr %l55
  %t453 = ptrtoint ptr %v1 to i64
  store i64 %t453, ptr %l238, !tbaa !24
  %t454 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e54
  br i1 %t454, label %bb86, label %bb87
bb86:
  %t456 = call ptr @__olang_region_make(ptr %v1)
  %t457 = ptrtoint ptr %t456 to i64
  store i64 %t457, ptr %l238, !tbaa !24
  br label %bb87
bb87:
  %t458 = load i64, ptr %l238
  %t459 = inttoptr i64 %t458 to ptr
  %t460 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %t459)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t460, ptr %l240
  br label %bb88
bb88:
  %t461 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e54
  br i1 %t461, label %bb89, label %bb90
bb89:
  %t463 = load i64, ptr %l238
  %t464 = inttoptr i64 %t463 to ptr
  %t465 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l240, i32 0, i32 2
  %t466 = load { i64, ptr }, ptr %t465
  %t467 = extractvalue { i64, ptr } %t466, 1
  %t468 = call ptr @__olang_region_or(ptr %t467, ptr null)
  %t469 = icmp ne ptr %t468, null
  %t470 = select i1 %t469, ptr %t468, ptr null
  %t471 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l240, i32 0, i32 1
  %t472 = load { i64, ptr }, ptr %t471
  %t473 = extractvalue { i64, ptr } %t472, 1
  %t474 = call ptr @__olang_region_or(ptr %t473, ptr null)
  %t475 = icmp ne ptr %t474, null
  %t476 = select i1 %t475, ptr %t474, ptr %t470
  %t477 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l240, i32 0, i32 0
  %t478 = load { i64, ptr }, ptr %t477
  %t479 = extractvalue { i64, ptr } %t478, 1
  %t480 = call ptr @__olang_region_or(ptr %t479, ptr null)
  %t481 = icmp ne ptr %t480, null
  %t482 = select i1 %t481, ptr %t480, ptr %t476
  %t483 = icmp eq ptr %t482, %t464
  call void @__olang_region_settle(ptr %t464, i1 %t483)
  br label %bb90
bb90:
  %t484 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l240
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t484, ptr %l56
  %t485 = ptrtoint ptr %v1 to i64
  store i64 %t485, ptr %l242, !tbaa !24
  %t486 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e55
  br i1 %t486, label %bb91, label %bb92
bb91:
  %t488 = call ptr @__olang_region_make(ptr %v1)
  %t489 = ptrtoint ptr %t488 to i64
  store i64 %t489, ptr %l242, !tbaa !24
  br label %bb92
bb92:
  %t490 = load i64, ptr %l242
  %t491 = inttoptr i64 %t490 to ptr
  %t492 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftypes_3aListId_3e(ptr %t491)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t492, ptr %l244
  br label %bb93
bb93:
  %t493 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e55
  br i1 %t493, label %bb94, label %bb95
bb94:
  %t495 = load i64, ptr %l242
  %t496 = inttoptr i64 %t495 to ptr
  %t497 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l244, i32 0, i32 2
  %t498 = load { i64, ptr }, ptr %t497
  %t499 = extractvalue { i64, ptr } %t498, 1
  %t500 = call ptr @__olang_region_or(ptr %t499, ptr null)
  %t501 = icmp ne ptr %t500, null
  %t502 = select i1 %t501, ptr %t500, ptr null
  %t503 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l244, i32 0, i32 1
  %t504 = load { i64, ptr }, ptr %t503
  %t505 = extractvalue { i64, ptr } %t504, 1
  %t506 = call ptr @__olang_region_or(ptr %t505, ptr null)
  %t507 = icmp ne ptr %t506, null
  %t508 = select i1 %t507, ptr %t506, ptr %t502
  %t509 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l244, i32 0, i32 0
  %t510 = load { i64, ptr }, ptr %t509
  %t511 = extractvalue { i64, ptr } %t510, 1
  %t512 = call ptr @__olang_region_or(ptr %t511, ptr null)
  %t513 = icmp ne ptr %t512, null
  %t514 = select i1 %t513, ptr %t512, ptr %t508
  %t515 = icmp eq ptr %t514, %t496
  call void @__olang_region_settle(ptr %t496, i1 %t515)
  br label %bb95
bb95:
  %t516 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l244
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t516, ptr %l57
  %t517 = ptrtoint ptr %v1 to i64
  store i64 %t517, ptr %l246, !tbaa !24
  %t518 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e56
  br i1 %t518, label %bb96, label %bb97
bb96:
  %t520 = call ptr @__olang_region_make(ptr %v1)
  %t521 = ptrtoint ptr %t520 to i64
  store i64 %t521, ptr %l246, !tbaa !24
  br label %bb97
bb97:
  %t522 = load i64, ptr %l246
  %t523 = inttoptr i64 %t522 to ptr
  %t524 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_2ector(ptr %t523, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t524, ptr %l248
  br label %bb98
bb98:
  %t525 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e56
  br i1 %t525, label %bb99, label %bb100
bb99:
  %t527 = load i64, ptr %l246
  %t528 = inttoptr i64 %t527 to ptr
  %t529 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l248, i32 0, i32 0
  %t530 = load { i64, ptr }, ptr %t529
  %t531 = extractvalue { i64, ptr } %t530, 1
  %t532 = call ptr @__olang_region_or(ptr %t531, ptr null)
  %t533 = icmp ne ptr %t532, null
  %t534 = select i1 %t533, ptr %t532, ptr null
  %t535 = icmp eq ptr %t534, %t528
  call void @__olang_region_settle(ptr %t528, i1 %t535)
  br label %bb100
bb100:
  %t536 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l248
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t536, ptr %l58
  %t537 = ptrtoint ptr %v1 to i64
  store i64 %t537, ptr %l250, !tbaa !24
  %t538 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e57
  br i1 %t538, label %bb101, label %bb102
bb101:
  %t540 = call ptr @__olang_region_make(ptr %v1)
  %t541 = ptrtoint ptr %t540 to i64
  store i64 %t541, ptr %l250, !tbaa !24
  br label %bb102
bb102:
  %t542 = load i64, ptr %l250
  %t543 = inttoptr i64 %t542 to ptr
  %t544 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %t543)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t544, ptr %l252
  br label %bb103
bb103:
  %t545 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e57
  br i1 %t545, label %bb104, label %bb105
bb104:
  %t547 = load i64, ptr %l250
  %t548 = inttoptr i64 %t547 to ptr
  %t549 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l252, i32 0, i32 2
  %t550 = load { i64, ptr }, ptr %t549
  %t551 = extractvalue { i64, ptr } %t550, 1
  %t552 = call ptr @__olang_region_or(ptr %t551, ptr null)
  %t553 = icmp ne ptr %t552, null
  %t554 = select i1 %t553, ptr %t552, ptr null
  %t555 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l252, i32 0, i32 1
  %t556 = load { i64, ptr }, ptr %t555
  %t557 = extractvalue { i64, ptr } %t556, 1
  %t558 = call ptr @__olang_region_or(ptr %t557, ptr null)
  %t559 = icmp ne ptr %t558, null
  %t560 = select i1 %t559, ptr %t558, ptr %t554
  %t561 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l252, i32 0, i32 0
  %t562 = load { i64, ptr }, ptr %t561
  %t563 = extractvalue { i64, ptr } %t562, 1
  %t564 = call ptr @__olang_region_or(ptr %t563, ptr null)
  %t565 = icmp ne ptr %t564, null
  %t566 = select i1 %t565, ptr %t564, ptr %t560
  %t567 = icmp eq ptr %t566, %t548
  call void @__olang_region_settle(ptr %t548, i1 %t567)
  br label %bb105
bb105:
  %t568 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l252
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t568, ptr %l59
  %t569 = ptrtoint ptr %v1 to i64
  store i64 %t569, ptr %l254, !tbaa !24
  %t570 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e58
  br i1 %t570, label %bb106, label %bb107
bb106:
  %t572 = call ptr @__olang_region_make(ptr %v1)
  %t573 = ptrtoint ptr %t572 to i64
  store i64 %t573, ptr %l254, !tbaa !24
  br label %bb107
bb107:
  %t574 = load i64, ptr %l254
  %t575 = inttoptr i64 %t574 to ptr
  %t576 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_H921f32905926c1e0ead43da4a44f7b3d(ptr %t575)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t576, ptr %l256
  br label %bb108
bb108:
  %t577 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e58
  br i1 %t577, label %bb109, label %bb110
bb109:
  %t579 = load i64, ptr %l254
  %t580 = inttoptr i64 %t579 to ptr
  %t581 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l256, i32 0, i32 2
  %t582 = load { i64, ptr }, ptr %t581
  %t583 = extractvalue { i64, ptr } %t582, 1
  %t584 = call ptr @__olang_region_or(ptr %t583, ptr null)
  %t585 = icmp ne ptr %t584, null
  %t586 = select i1 %t585, ptr %t584, ptr null
  %t587 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l256, i32 0, i32 1
  %t588 = load { i64, ptr }, ptr %t587
  %t589 = extractvalue { i64, ptr } %t588, 1
  %t590 = call ptr @__olang_region_or(ptr %t589, ptr null)
  %t591 = icmp ne ptr %t590, null
  %t592 = select i1 %t591, ptr %t590, ptr %t586
  %t593 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l256, i32 0, i32 0
  %t594 = load { i64, ptr }, ptr %t593
  %t595 = extractvalue { i64, ptr } %t594, 1
  %t596 = call ptr @__olang_region_or(ptr %t595, ptr null)
  %t597 = icmp ne ptr %t596, null
  %t598 = select i1 %t597, ptr %t596, ptr %t592
  %t599 = icmp eq ptr %t598, %t580
  call void @__olang_region_settle(ptr %t580, i1 %t599)
  br label %bb110
bb110:
  %t600 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l256
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t600, ptr %l60
  %t601 = ptrtoint ptr %v1 to i64
  store i64 %t601, ptr %l258, !tbaa !24
  %t602 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e59
  br i1 %t602, label %bb111, label %bb112
bb111:
  %t604 = call ptr @__olang_region_make(ptr %v1)
  %t605 = ptrtoint ptr %t604 to i64
  store i64 %t605, ptr %l258, !tbaa !24
  br label %bb112
bb112:
  %t606 = load i64, ptr %l258
  %t607 = inttoptr i64 %t606 to ptr
  %t608 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_H921f32905926c1e0ead43da4a44f7b3d(ptr %t607)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t608, ptr %l260
  br label %bb113
bb113:
  %t609 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e59
  br i1 %t609, label %bb114, label %bb115
bb114:
  %t611 = load i64, ptr %l258
  %t612 = inttoptr i64 %t611 to ptr
  %t613 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l260, i32 0, i32 2
  %t614 = load { i64, ptr }, ptr %t613
  %t615 = extractvalue { i64, ptr } %t614, 1
  %t616 = call ptr @__olang_region_or(ptr %t615, ptr null)
  %t617 = icmp ne ptr %t616, null
  %t618 = select i1 %t617, ptr %t616, ptr null
  %t619 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l260, i32 0, i32 1
  %t620 = load { i64, ptr }, ptr %t619
  %t621 = extractvalue { i64, ptr } %t620, 1
  %t622 = call ptr @__olang_region_or(ptr %t621, ptr null)
  %t623 = icmp ne ptr %t622, null
  %t624 = select i1 %t623, ptr %t622, ptr %t618
  %t625 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l260, i32 0, i32 0
  %t626 = load { i64, ptr }, ptr %t625
  %t627 = extractvalue { i64, ptr } %t626, 1
  %t628 = call ptr @__olang_region_or(ptr %t627, ptr null)
  %t629 = icmp ne ptr %t628, null
  %t630 = select i1 %t629, ptr %t628, ptr %t624
  %t631 = icmp eq ptr %t630, %t612
  call void @__olang_region_settle(ptr %t612, i1 %t631)
  br label %bb115
bb115:
  %t632 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l260
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t632, ptr %l61
  %t633 = ptrtoint ptr %v1 to i64
  store i64 %t633, ptr %l262, !tbaa !24
  %t634 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e60
  br i1 %t634, label %bb116, label %bb117
bb116:
  %t636 = call ptr @__olang_region_make(ptr %v1)
  %t637 = ptrtoint ptr %t636 to i64
  store i64 %t637, ptr %l262, !tbaa !24
  br label %bb117
bb117:
  %t638 = load i64, ptr %l262
  %t639 = inttoptr i64 %t638 to ptr
  %t640 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3afactRead_3e_2ector(ptr %t639, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t640, ptr %l264
  br label %bb118
bb118:
  %t641 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e60
  br i1 %t641, label %bb119, label %bb120
bb119:
  %t643 = load i64, ptr %l262
  %t644 = inttoptr i64 %t643 to ptr
  %t645 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l264, i32 0, i32 0
  %t646 = load { i64, ptr }, ptr %t645
  %t647 = extractvalue { i64, ptr } %t646, 1
  %t648 = call ptr @__olang_region_or(ptr %t647, ptr null)
  %t649 = icmp ne ptr %t648, null
  %t650 = select i1 %t649, ptr %t648, ptr null
  %t651 = icmp eq ptr %t650, %t644
  call void @__olang_region_settle(ptr %t644, i1 %t651)
  br label %bb120
bb120:
  %t652 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l264
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t652, ptr %l62
  %t653 = ptrtoint ptr %v1 to i64
  store i64 %t653, ptr %l266, !tbaa !24
  %t654 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e61
  br i1 %t654, label %bb121, label %bb122
bb121:
  %t656 = call ptr @__olang_region_make(ptr %v1)
  %t657 = ptrtoint ptr %t656 to i64
  store i64 %t657, ptr %l266, !tbaa !24
  br label %bb122
bb122:
  %t658 = load i64, ptr %l266
  %t659 = inttoptr i64 %t658 to ptr
  %t660 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20Bool_3e(ptr %t659)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t660, ptr %l268
  br label %bb123
bb123:
  %t661 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e61
  br i1 %t661, label %bb124, label %bb125
bb124:
  %t663 = load i64, ptr %l266
  %t664 = inttoptr i64 %t663 to ptr
  %t665 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l268, i32 0, i32 2
  %t666 = load { i64, ptr }, ptr %t665
  %t667 = extractvalue { i64, ptr } %t666, 1
  %t668 = call ptr @__olang_region_or(ptr %t667, ptr null)
  %t669 = icmp ne ptr %t668, null
  %t670 = select i1 %t669, ptr %t668, ptr null
  %t671 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l268, i32 0, i32 1
  %t672 = load { i64, ptr }, ptr %t671
  %t673 = extractvalue { i64, ptr } %t672, 1
  %t674 = call ptr @__olang_region_or(ptr %t673, ptr null)
  %t675 = icmp ne ptr %t674, null
  %t676 = select i1 %t675, ptr %t674, ptr %t670
  %t677 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l268, i32 0, i32 0
  %t678 = load { i64, ptr }, ptr %t677
  %t679 = extractvalue { i64, ptr } %t678, 1
  %t680 = call ptr @__olang_region_or(ptr %t679, ptr null)
  %t681 = icmp ne ptr %t680, null
  %t682 = select i1 %t681, ptr %t680, ptr %t676
  %t683 = icmp eq ptr %t682, %t664
  call void @__olang_region_settle(ptr %t664, i1 %t683)
  br label %bb125
bb125:
  %t684 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l268
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t684, ptr %l63
  %t685 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aeffectPlace_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t685, ptr %l270
  br label %bb126
bb126:
  %t686 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l270
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t686, ptr %l64
  %t687 = ptrtoint ptr %v1 to i64
  store i64 %t687, ptr %l271, !tbaa !24
  %t688 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e63
  br i1 %t688, label %bb127, label %bb128
bb127:
  %t690 = call ptr @__olang_region_make(ptr %v1)
  %t691 = ptrtoint ptr %t690 to i64
  store i64 %t691, ptr %l271, !tbaa !24
  br label %bb128
bb128:
  %t692 = load i64, ptr %l271
  %t693 = inttoptr i64 %t692 to ptr
  %t694 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %t693)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t694, ptr %l273
  br label %bb129
bb129:
  %t695 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e63
  br i1 %t695, label %bb130, label %bb131
bb130:
  %t697 = load i64, ptr %l271
  %t698 = inttoptr i64 %t697 to ptr
  %t699 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l273, i32 0, i32 2
  %t700 = load { i64, ptr }, ptr %t699
  %t701 = extractvalue { i64, ptr } %t700, 1
  %t702 = call ptr @__olang_region_or(ptr %t701, ptr null)
  %t703 = icmp ne ptr %t702, null
  %t704 = select i1 %t703, ptr %t702, ptr null
  %t705 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l273, i32 0, i32 1
  %t706 = load { i64, ptr }, ptr %t705
  %t707 = extractvalue { i64, ptr } %t706, 1
  %t708 = call ptr @__olang_region_or(ptr %t707, ptr null)
  %t709 = icmp ne ptr %t708, null
  %t710 = select i1 %t709, ptr %t708, ptr %t704
  %t711 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l273, i32 0, i32 0
  %t712 = load { i64, ptr }, ptr %t711
  %t713 = extractvalue { i64, ptr } %t712, 1
  %t714 = call ptr @__olang_region_or(ptr %t713, ptr null)
  %t715 = icmp ne ptr %t714, null
  %t716 = select i1 %t715, ptr %t714, ptr %t710
  %t717 = icmp eq ptr %t716, %t698
  call void @__olang_region_settle(ptr %t698, i1 %t717)
  br label %bb131
bb131:
  %t718 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l273
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t718, ptr %l65
  store i1 false, ptr %l66, !tbaa !21
  %t719 = ptrtoint ptr %v1 to i64
  store i64 %t719, ptr %l275, !tbaa !24
  %t720 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e65
  br i1 %t720, label %bb132, label %bb133
bb132:
  %t722 = call ptr @__olang_region_make(ptr %v1)
  %t723 = ptrtoint ptr %t722 to i64
  store i64 %t723, ptr %l275, !tbaa !24
  br label %bb133
bb133:
  %t724 = load i64, ptr %l275
  %t725 = inttoptr i64 %t724 to ptr
  %t726 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3ainPlaceRead_3e_2ector(ptr %t725, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t726, ptr %l277
  br label %bb134
bb134:
  %t727 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e65
  br i1 %t727, label %bb135, label %bb136
bb135:
  %t729 = load i64, ptr %l275
  %t730 = inttoptr i64 %t729 to ptr
  %t731 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l277, i32 0, i32 0
  %t732 = load { i64, ptr }, ptr %t731
  %t733 = extractvalue { i64, ptr } %t732, 1
  %t734 = call ptr @__olang_region_or(ptr %t733, ptr null)
  %t735 = icmp ne ptr %t734, null
  %t736 = select i1 %t735, ptr %t734, ptr null
  %t737 = icmp eq ptr %t736, %t730
  call void @__olang_region_settle(ptr %t730, i1 %t737)
  br label %bb136
bb136:
  %t738 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l277
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t738, ptr %l67
  %t739 = ptrtoint ptr %v1 to i64
  store i64 %t739, ptr %l279, !tbaa !24
  %t740 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e66
  br i1 %t740, label %bb137, label %bb138
bb137:
  %t742 = call ptr @__olang_region_make(ptr %v1)
  %t743 = ptrtoint ptr %t742 to i64
  store i64 %t743, ptr %l279, !tbaa !24
  br label %bb138
bb138:
  %t744 = load i64, ptr %l279
  %t745 = inttoptr i64 %t744 to ptr
  %t746 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alanding_3e_2ector(ptr %t745, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t746, ptr %l281
  br label %bb139
bb139:
  %t747 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e66
  br i1 %t747, label %bb140, label %bb141
bb140:
  %t749 = load i64, ptr %l279
  %t750 = inttoptr i64 %t749 to ptr
  %t751 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l281, i32 0, i32 0
  %t752 = load { i64, ptr }, ptr %t751
  %t753 = extractvalue { i64, ptr } %t752, 1
  %t754 = call ptr @__olang_region_or(ptr %t753, ptr null)
  %t755 = icmp ne ptr %t754, null
  %t756 = select i1 %t755, ptr %t754, ptr null
  %t757 = icmp eq ptr %t756, %t750
  call void @__olang_region_settle(ptr %t750, i1 %t757)
  br label %bb141
bb141:
  %t758 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l281
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t758, ptr %l68
  %t759 = ptrtoint ptr %v1 to i64
  store i64 %t759, ptr %l283, !tbaa !24
  %t760 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e67
  br i1 %t760, label %bb142, label %bb143
bb142:
  %t762 = call ptr @__olang_region_make(ptr %v1)
  %t763 = ptrtoint ptr %t762 to i64
  store i64 %t763, ptr %l283, !tbaa !24
  br label %bb143
bb143:
  %t764 = load i64, ptr %l283
  %t765 = inttoptr i64 %t764 to ptr
  %t766 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %t765)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t766, ptr %l285
  br label %bb144
bb144:
  %t767 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e67
  br i1 %t767, label %bb145, label %bb146
bb145:
  %t769 = load i64, ptr %l283
  %t770 = inttoptr i64 %t769 to ptr
  %t771 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l285, i32 0, i32 2
  %t772 = load { i64, ptr }, ptr %t771
  %t773 = extractvalue { i64, ptr } %t772, 1
  %t774 = call ptr @__olang_region_or(ptr %t773, ptr null)
  %t775 = icmp ne ptr %t774, null
  %t776 = select i1 %t775, ptr %t774, ptr null
  %t777 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l285, i32 0, i32 1
  %t778 = load { i64, ptr }, ptr %t777
  %t779 = extractvalue { i64, ptr } %t778, 1
  %t780 = call ptr @__olang_region_or(ptr %t779, ptr null)
  %t781 = icmp ne ptr %t780, null
  %t782 = select i1 %t781, ptr %t780, ptr %t776
  %t783 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l285, i32 0, i32 0
  %t784 = load { i64, ptr }, ptr %t783
  %t785 = extractvalue { i64, ptr } %t784, 1
  %t786 = call ptr @__olang_region_or(ptr %t785, ptr null)
  %t787 = icmp ne ptr %t786, null
  %t788 = select i1 %t787, ptr %t786, ptr %t782
  %t789 = icmp eq ptr %t788, %t770
  call void @__olang_region_settle(ptr %t770, i1 %t789)
  br label %bb146
bb146:
  %t790 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l285
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t790, ptr %l69
  store i1 false, ptr %l70, !tbaa !21
  %t791 = ptrtoint ptr %v1 to i64
  store i64 %t791, ptr %l287, !tbaa !24
  %t792 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e69
  br i1 %t792, label %bb147, label %bb148
bb147:
  %t794 = call ptr @__olang_region_make(ptr %v1)
  %t795 = ptrtoint ptr %t794 to i64
  store i64 %t795, ptr %l287, !tbaa !24
  br label %bb148
bb148:
  %t796 = load i64, ptr %l287
  %t797 = inttoptr i64 %t796 to ptr
  %t798 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t797, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t798, ptr %l289
  br label %bb149
bb149:
  %t799 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e69
  br i1 %t799, label %bb150, label %bb151
bb150:
  %t801 = load i64, ptr %l287
  %t802 = inttoptr i64 %t801 to ptr
  %t803 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l289, i32 0, i32 0
  %t804 = load { i64, ptr }, ptr %t803
  %t805 = extractvalue { i64, ptr } %t804, 1
  %t806 = call ptr @__olang_region_or(ptr %t805, ptr null)
  %t807 = icmp ne ptr %t806, null
  %t808 = select i1 %t807, ptr %t806, ptr null
  %t809 = icmp eq ptr %t808, %t802
  call void @__olang_region_settle(ptr %t802, i1 %t809)
  br label %bb151
bb151:
  %t810 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l289
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t810, ptr %l71
  %t811 = ptrtoint ptr %v1 to i64
  store i64 %t811, ptr %l291, !tbaa !24
  %t812 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e70
  br i1 %t812, label %bb152, label %bb153
bb152:
  %t814 = call ptr @__olang_region_make(ptr %v1)
  %t815 = ptrtoint ptr %t814 to i64
  store i64 %t815, ptr %l291, !tbaa !24
  br label %bb153
bb153:
  %t816 = load i64, ptr %l291
  %t817 = inttoptr i64 %t816 to ptr
  %t818 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e(ptr %t817)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t818, ptr %l293
  br label %bb154
bb154:
  %t819 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e70
  br i1 %t819, label %bb155, label %bb156
bb155:
  %t821 = load i64, ptr %l291
  %t822 = inttoptr i64 %t821 to ptr
  %t823 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l293, i32 0, i32 2
  %t824 = load { i64, ptr }, ptr %t823
  %t825 = extractvalue { i64, ptr } %t824, 1
  %t826 = call ptr @__olang_region_or(ptr %t825, ptr null)
  %t827 = icmp ne ptr %t826, null
  %t828 = select i1 %t827, ptr %t826, ptr null
  %t829 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l293, i32 0, i32 1
  %t830 = load { i64, ptr }, ptr %t829
  %t831 = extractvalue { i64, ptr } %t830, 1
  %t832 = call ptr @__olang_region_or(ptr %t831, ptr null)
  %t833 = icmp ne ptr %t832, null
  %t834 = select i1 %t833, ptr %t832, ptr %t828
  %t835 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l293, i32 0, i32 0
  %t836 = load { i64, ptr }, ptr %t835
  %t837 = extractvalue { i64, ptr } %t836, 1
  %t838 = call ptr @__olang_region_or(ptr %t837, ptr null)
  %t839 = icmp ne ptr %t838, null
  %t840 = select i1 %t839, ptr %t838, ptr %t834
  %t841 = icmp eq ptr %t840, %t822
  call void @__olang_region_settle(ptr %t822, i1 %t841)
  br label %bb156
bb156:
  %t842 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l293
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t842, ptr %l72
  %t843 = ptrtoint ptr %v1 to i64
  store i64 %t843, ptr %l295, !tbaa !24
  %t844 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e71
  br i1 %t844, label %bb157, label %bb158
bb157:
  %t846 = call ptr @__olang_region_make(ptr %v1)
  %t847 = ptrtoint ptr %t846 to i64
  store i64 %t847, ptr %l295, !tbaa !24
  br label %bb158
bb158:
  %t848 = load i64, ptr %l295
  %t849 = inttoptr i64 %t848 to ptr
  %t850 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20Bool_3e(ptr %t849)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t850, ptr %l297
  br label %bb159
bb159:
  %t851 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e71
  br i1 %t851, label %bb160, label %bb161
bb160:
  %t853 = load i64, ptr %l295
  %t854 = inttoptr i64 %t853 to ptr
  %t855 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l297, i32 0, i32 2
  %t856 = load { i64, ptr }, ptr %t855
  %t857 = extractvalue { i64, ptr } %t856, 1
  %t858 = call ptr @__olang_region_or(ptr %t857, ptr null)
  %t859 = icmp ne ptr %t858, null
  %t860 = select i1 %t859, ptr %t858, ptr null
  %t861 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l297, i32 0, i32 1
  %t862 = load { i64, ptr }, ptr %t861
  %t863 = extractvalue { i64, ptr } %t862, 1
  %t864 = call ptr @__olang_region_or(ptr %t863, ptr null)
  %t865 = icmp ne ptr %t864, null
  %t866 = select i1 %t865, ptr %t864, ptr %t860
  %t867 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l297, i32 0, i32 0
  %t868 = load { i64, ptr }, ptr %t867
  %t869 = extractvalue { i64, ptr } %t868, 1
  %t870 = call ptr @__olang_region_or(ptr %t869, ptr null)
  %t871 = icmp ne ptr %t870, null
  %t872 = select i1 %t871, ptr %t870, ptr %t866
  %t873 = icmp eq ptr %t872, %t854
  call void @__olang_region_settle(ptr %t854, i1 %t873)
  br label %bb161
bb161:
  %t874 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l297
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t874, ptr %l73
  store i64 0, ptr %l74, !tbaa !24
  store i1 false, ptr %l75, !tbaa !21
  store i64 0, ptr %l76, !tbaa !24
  store i64 0, ptr %l77, !tbaa !24
  store i1 false, ptr %l78, !tbaa !21
  %t875 = ptrtoint ptr %v1 to i64
  store i64 %t875, ptr %l299, !tbaa !24
  %t876 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e77
  br i1 %t876, label %bb162, label %bb163
bb162:
  %t878 = call ptr @__olang_region_make(ptr %v1)
  %t879 = ptrtoint ptr %t878 to i64
  store i64 %t879, ptr %l299, !tbaa !24
  br label %bb163
bb163:
  %t880 = load i64, ptr %l299
  %t881 = inttoptr i64 %t880 to ptr
  %t882 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %t881)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t882, ptr %l301
  br label %bb164
bb164:
  %t883 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e77
  br i1 %t883, label %bb165, label %bb166
bb165:
  %t885 = load i64, ptr %l299
  %t886 = inttoptr i64 %t885 to ptr
  %t887 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l301, i32 0, i32 2
  %t888 = load { i64, ptr }, ptr %t887
  %t889 = extractvalue { i64, ptr } %t888, 1
  %t890 = call ptr @__olang_region_or(ptr %t889, ptr null)
  %t891 = icmp ne ptr %t890, null
  %t892 = select i1 %t891, ptr %t890, ptr null
  %t893 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l301, i32 0, i32 1
  %t894 = load { i64, ptr }, ptr %t893
  %t895 = extractvalue { i64, ptr } %t894, 1
  %t896 = call ptr @__olang_region_or(ptr %t895, ptr null)
  %t897 = icmp ne ptr %t896, null
  %t898 = select i1 %t897, ptr %t896, ptr %t892
  %t899 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l301, i32 0, i32 0
  %t900 = load { i64, ptr }, ptr %t899
  %t901 = extractvalue { i64, ptr } %t900, 1
  %t902 = call ptr @__olang_region_or(ptr %t901, ptr null)
  %t903 = icmp ne ptr %t902, null
  %t904 = select i1 %t903, ptr %t902, ptr %t898
  %t905 = icmp eq ptr %t904, %t886
  call void @__olang_region_settle(ptr %t886, i1 %t905)
  br label %bb166
bb166:
  %t906 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l301
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t906, ptr %l79
  %t907 = ptrtoint ptr %v1 to i64
  store i64 %t907, ptr %l303, !tbaa !24
  %t908 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e78
  br i1 %t908, label %bb167, label %bb168
bb167:
  %t910 = call ptr @__olang_region_make(ptr %v1)
  %t911 = ptrtoint ptr %t910 to i64
  store i64 %t911, ptr %l303, !tbaa !24
  br label %bb168
bb168:
  %t912 = load i64, ptr %l303
  %t913 = inttoptr i64 %t912 to ptr
  %t914 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_2ector(ptr %t913, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t914, ptr %l305
  br label %bb169
bb169:
  %t915 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e78
  br i1 %t915, label %bb170, label %bb171
bb170:
  %t917 = load i64, ptr %l303
  %t918 = inttoptr i64 %t917 to ptr
  %t919 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l305, i32 0, i32 0
  %t920 = load { i64, ptr }, ptr %t919
  %t921 = extractvalue { i64, ptr } %t920, 1
  %t922 = call ptr @__olang_region_or(ptr %t921, ptr null)
  %t923 = icmp ne ptr %t922, null
  %t924 = select i1 %t923, ptr %t922, ptr null
  %t925 = icmp eq ptr %t924, %t918
  call void @__olang_region_settle(ptr %t918, i1 %t925)
  br label %bb171
bb171:
  %t926 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l305
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t926, ptr %l80
  %t927 = ptrtoint ptr %v1 to i64
  store i64 %t927, ptr %l307, !tbaa !24
  %t928 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e79
  br i1 %t928, label %bb172, label %bb173
bb172:
  %t930 = call ptr @__olang_region_make(ptr %v1)
  %t931 = ptrtoint ptr %t930 to i64
  store i64 %t931, ptr %l307, !tbaa !24
  br label %bb173
bb173:
  %t932 = load i64, ptr %l307
  %t933 = inttoptr i64 %t932 to ptr
  %t934 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e(ptr %t933)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t934, ptr %l309
  br label %bb174
bb174:
  %t935 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e79
  br i1 %t935, label %bb175, label %bb176
bb175:
  %t937 = load i64, ptr %l307
  %t938 = inttoptr i64 %t937 to ptr
  %t939 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l309, i32 0, i32 2
  %t940 = load { i64, ptr }, ptr %t939
  %t941 = extractvalue { i64, ptr } %t940, 1
  %t942 = call ptr @__olang_region_or(ptr %t941, ptr null)
  %t943 = icmp ne ptr %t942, null
  %t944 = select i1 %t943, ptr %t942, ptr null
  %t945 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l309, i32 0, i32 1
  %t946 = load { i64, ptr }, ptr %t945
  %t947 = extractvalue { i64, ptr } %t946, 1
  %t948 = call ptr @__olang_region_or(ptr %t947, ptr null)
  %t949 = icmp ne ptr %t948, null
  %t950 = select i1 %t949, ptr %t948, ptr %t944
  %t951 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l309, i32 0, i32 0
  %t952 = load { i64, ptr }, ptr %t951
  %t953 = extractvalue { i64, ptr } %t952, 1
  %t954 = call ptr @__olang_region_or(ptr %t953, ptr null)
  %t955 = icmp ne ptr %t954, null
  %t956 = select i1 %t955, ptr %t954, ptr %t950
  %t957 = icmp eq ptr %t956, %t938
  call void @__olang_region_settle(ptr %t938, i1 %t957)
  br label %bb176
bb176:
  %t958 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l309
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t958, ptr %l81
  %t959 = ptrtoint ptr %v1 to i64
  store i64 %t959, ptr %l311, !tbaa !24
  %t960 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e80
  br i1 %t960, label %bb177, label %bb178
bb177:
  %t962 = call ptr @__olang_region_make(ptr %v1)
  %t963 = ptrtoint ptr %t962 to i64
  store i64 %t963, ptr %l311, !tbaa !24
  br label %bb178
bb178:
  %t964 = load i64, ptr %l311
  %t965 = inttoptr i64 %t964 to ptr
  %t966 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_Hfe3238fcb2ade77d245307fab149464a(ptr %t965)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t966, ptr %l313
  br label %bb179
bb179:
  %t967 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e80
  br i1 %t967, label %bb180, label %bb181
bb180:
  %t969 = load i64, ptr %l311
  %t970 = inttoptr i64 %t969 to ptr
  %t971 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l313, i32 0, i32 2
  %t972 = load { i64, ptr }, ptr %t971
  %t973 = extractvalue { i64, ptr } %t972, 1
  %t974 = call ptr @__olang_region_or(ptr %t973, ptr null)
  %t975 = icmp ne ptr %t974, null
  %t976 = select i1 %t975, ptr %t974, ptr null
  %t977 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l313, i32 0, i32 1
  %t978 = load { i64, ptr }, ptr %t977
  %t979 = extractvalue { i64, ptr } %t978, 1
  %t980 = call ptr @__olang_region_or(ptr %t979, ptr null)
  %t981 = icmp ne ptr %t980, null
  %t982 = select i1 %t981, ptr %t980, ptr %t976
  %t983 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l313, i32 0, i32 0
  %t984 = load { i64, ptr }, ptr %t983
  %t985 = extractvalue { i64, ptr } %t984, 1
  %t986 = call ptr @__olang_region_or(ptr %t985, ptr null)
  %t987 = icmp ne ptr %t986, null
  %t988 = select i1 %t987, ptr %t986, ptr %t982
  %t989 = icmp eq ptr %t988, %t970
  call void @__olang_region_settle(ptr %t970, i1 %t989)
  br label %bb181
bb181:
  %t990 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l313
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t990, ptr %l82
  %t991 = ptrtoint ptr %v1 to i64
  store i64 %t991, ptr %l315, !tbaa !24
  %t992 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e81
  br i1 %t992, label %bb182, label %bb183
bb182:
  %t994 = call ptr @__olang_region_make(ptr %v1)
  %t995 = ptrtoint ptr %t994 to i64
  store i64 %t995, ptr %l315, !tbaa !24
  br label %bb183
bb183:
  %t996 = load i64, ptr %l315
  %t997 = inttoptr i64 %t996 to ptr
  %t998 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e(ptr %t997)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t998, ptr %l317
  br label %bb184
bb184:
  %t999 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e81
  br i1 %t999, label %bb185, label %bb186
bb185:
  %t1001 = load i64, ptr %l315
  %t1002 = inttoptr i64 %t1001 to ptr
  %t1003 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l317, i32 0, i32 2
  %t1004 = load { i64, ptr }, ptr %t1003
  %t1005 = extractvalue { i64, ptr } %t1004, 1
  %t1006 = call ptr @__olang_region_or(ptr %t1005, ptr null)
  %t1007 = icmp ne ptr %t1006, null
  %t1008 = select i1 %t1007, ptr %t1006, ptr null
  %t1009 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l317, i32 0, i32 1
  %t1010 = load { i64, ptr }, ptr %t1009
  %t1011 = extractvalue { i64, ptr } %t1010, 1
  %t1012 = call ptr @__olang_region_or(ptr %t1011, ptr null)
  %t1013 = icmp ne ptr %t1012, null
  %t1014 = select i1 %t1013, ptr %t1012, ptr %t1008
  %t1015 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l317, i32 0, i32 0
  %t1016 = load { i64, ptr }, ptr %t1015
  %t1017 = extractvalue { i64, ptr } %t1016, 1
  %t1018 = call ptr @__olang_region_or(ptr %t1017, ptr null)
  %t1019 = icmp ne ptr %t1018, null
  %t1020 = select i1 %t1019, ptr %t1018, ptr %t1014
  %t1021 = icmp eq ptr %t1020, %t1002
  call void @__olang_region_settle(ptr %t1002, i1 %t1021)
  br label %bb186
bb186:
  %t1022 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l317
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1022, ptr %l83
  %t1023 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_H0b3f6ff85c841d79e39d4e4d4ddeea35(ptr %v1)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1023, ptr %l319
  br label %bb187
bb187:
  %t1024 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l319
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1024, ptr %l84
  %t1025 = ptrtoint ptr %v1 to i64
  store i64 %t1025, ptr %l320, !tbaa !24
  %t1026 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e83
  br i1 %t1026, label %bb188, label %bb189
bb188:
  %t1028 = call ptr @__olang_region_make(ptr %v1)
  %t1029 = ptrtoint ptr %t1028 to i64
  store i64 %t1029, ptr %l320, !tbaa !24
  br label %bb189
bb189:
  %t1030 = load i64, ptr %l320
  %t1031 = inttoptr i64 %t1030 to ptr
  %t1032 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e(ptr %t1031)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1032, ptr %l322
  br label %bb190
bb190:
  %t1033 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e83
  br i1 %t1033, label %bb191, label %bb192
bb191:
  %t1035 = load i64, ptr %l320
  %t1036 = inttoptr i64 %t1035 to ptr
  %t1037 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l322, i32 0, i32 2
  %t1038 = load { i64, ptr }, ptr %t1037
  %t1039 = extractvalue { i64, ptr } %t1038, 1
  %t1040 = call ptr @__olang_region_or(ptr %t1039, ptr null)
  %t1041 = icmp ne ptr %t1040, null
  %t1042 = select i1 %t1041, ptr %t1040, ptr null
  %t1043 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l322, i32 0, i32 1
  %t1044 = load { i64, ptr }, ptr %t1043
  %t1045 = extractvalue { i64, ptr } %t1044, 1
  %t1046 = call ptr @__olang_region_or(ptr %t1045, ptr null)
  %t1047 = icmp ne ptr %t1046, null
  %t1048 = select i1 %t1047, ptr %t1046, ptr %t1042
  %t1049 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l322, i32 0, i32 0
  %t1050 = load { i64, ptr }, ptr %t1049
  %t1051 = extractvalue { i64, ptr } %t1050, 1
  %t1052 = call ptr @__olang_region_or(ptr %t1051, ptr null)
  %t1053 = icmp ne ptr %t1052, null
  %t1054 = select i1 %t1053, ptr %t1052, ptr %t1048
  %t1055 = icmp eq ptr %t1054, %t1036
  call void @__olang_region_settle(ptr %t1036, i1 %t1055)
  br label %bb192
bb192:
  %t1056 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l322
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1056, ptr %l85
  %t1057 = ptrtoint ptr %v1 to i64
  store i64 %t1057, ptr %l324, !tbaa !24
  %t1058 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e84
  br i1 %t1058, label %bb193, label %bb194
bb193:
  %t1060 = call ptr @__olang_region_make(ptr %v1)
  %t1061 = ptrtoint ptr %t1060 to i64
  store i64 %t1061, ptr %l324, !tbaa !24
  br label %bb194
bb194:
  %t1062 = load i64, ptr %l324
  %t1063 = inttoptr i64 %t1062 to ptr
  %t1064 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_2_Hedf46d61a7b7e16110f4585b041de150(ptr %t1063, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1064, ptr %l326
  br label %bb195
bb195:
  %t1065 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e84
  br i1 %t1065, label %bb196, label %bb197
bb196:
  %t1067 = load i64, ptr %l324
  %t1068 = inttoptr i64 %t1067 to ptr
  %t1069 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l326, i32 0, i32 0
  %t1070 = load { i64, ptr }, ptr %t1069
  %t1071 = extractvalue { i64, ptr } %t1070, 1
  %t1072 = call ptr @__olang_region_or(ptr %t1071, ptr null)
  %t1073 = icmp ne ptr %t1072, null
  %t1074 = select i1 %t1073, ptr %t1072, ptr null
  %t1075 = icmp eq ptr %t1074, %t1068
  call void @__olang_region_settle(ptr %t1068, i1 %t1075)
  br label %bb197
bb197:
  %t1076 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l326
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1076, ptr %l86
  %t1077 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aroArg_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1077, ptr %l328
  br label %bb198
bb198:
  %t1078 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l328
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1078, ptr %l87
  %t1079 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aroFn_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1079, ptr %l329
  br label %bb199
bb199:
  %t1080 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l329
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1080, ptr %l88
  %t1081 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_Hafb5854e4b40025d032cfb7bd955fdd6(ptr %v1)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1081, ptr %l330
  br label %bb200
bb200:
  %t1082 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l330
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1082, ptr %l89
  %t1083 = ptrtoint ptr %v1 to i64
  store i64 %t1083, ptr %l331, !tbaa !24
  %t1084 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e88
  br i1 %t1084, label %bb201, label %bb202
bb201:
  %t1086 = call ptr @__olang_region_make(ptr %v1)
  %t1087 = ptrtoint ptr %t1086 to i64
  store i64 %t1087, ptr %l331, !tbaa !24
  br label %bb202
bb202:
  %t1088 = load i64, ptr %l331
  %t1089 = inttoptr i64 %t1088 to ptr
  %t1090 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e(ptr %t1089)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1090, ptr %l333
  br label %bb203
bb203:
  %t1091 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e88
  br i1 %t1091, label %bb204, label %bb205
bb204:
  %t1093 = load i64, ptr %l331
  %t1094 = inttoptr i64 %t1093 to ptr
  %t1095 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l333, i32 0, i32 2
  %t1096 = load { i64, ptr }, ptr %t1095
  %t1097 = extractvalue { i64, ptr } %t1096, 1
  %t1098 = call ptr @__olang_region_or(ptr %t1097, ptr null)
  %t1099 = icmp ne ptr %t1098, null
  %t1100 = select i1 %t1099, ptr %t1098, ptr null
  %t1101 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l333, i32 0, i32 1
  %t1102 = load { i64, ptr }, ptr %t1101
  %t1103 = extractvalue { i64, ptr } %t1102, 1
  %t1104 = call ptr @__olang_region_or(ptr %t1103, ptr null)
  %t1105 = icmp ne ptr %t1104, null
  %t1106 = select i1 %t1105, ptr %t1104, ptr %t1100
  %t1107 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l333, i32 0, i32 0
  %t1108 = load { i64, ptr }, ptr %t1107
  %t1109 = extractvalue { i64, ptr } %t1108, 1
  %t1110 = call ptr @__olang_region_or(ptr %t1109, ptr null)
  %t1111 = icmp ne ptr %t1110, null
  %t1112 = select i1 %t1111, ptr %t1110, ptr %t1106
  %t1113 = icmp eq ptr %t1112, %t1094
  call void @__olang_region_settle(ptr %t1094, i1 %t1113)
  br label %bb205
bb205:
  %t1114 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l333
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1114, ptr %l90
  %t1115 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1115, ptr %l335
  br label %bb206
bb206:
  %t1116 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l335
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1116, ptr %l91
  %t1117 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1117, ptr %l336
  br label %bb207
bb207:
  %t1118 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l336
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1118, ptr %l92
  %t1119 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aroDeepArg_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1119, ptr %l337
  br label %bb208
bb208:
  %t1120 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l337
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1120, ptr %l93
  %t1121 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aroArg_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1121, ptr %l338
  br label %bb209
bb209:
  %t1122 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l338
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1122, ptr %l94
  %t1123 = ptrtoint ptr %v1 to i64
  store i64 %t1123, ptr %l339, !tbaa !24
  %t1124 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e93
  br i1 %t1124, label %bb210, label %bb211
bb210:
  %t1126 = call ptr @__olang_region_make(ptr %v1)
  %t1127 = ptrtoint ptr %t1126 to i64
  store i64 %t1127, ptr %l339, !tbaa !24
  br label %bb211
bb211:
  %t1128 = load i64, ptr %l339
  %t1129 = inttoptr i64 %t1128 to ptr
  %t1130 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e(ptr %t1129)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1130, ptr %l341
  br label %bb212
bb212:
  %t1131 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e93
  br i1 %t1131, label %bb213, label %bb214
bb213:
  %t1133 = load i64, ptr %l339
  %t1134 = inttoptr i64 %t1133 to ptr
  %t1135 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l341, i32 0, i32 2
  %t1136 = load { i64, ptr }, ptr %t1135
  %t1137 = extractvalue { i64, ptr } %t1136, 1
  %t1138 = call ptr @__olang_region_or(ptr %t1137, ptr null)
  %t1139 = icmp ne ptr %t1138, null
  %t1140 = select i1 %t1139, ptr %t1138, ptr null
  %t1141 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l341, i32 0, i32 1
  %t1142 = load { i64, ptr }, ptr %t1141
  %t1143 = extractvalue { i64, ptr } %t1142, 1
  %t1144 = call ptr @__olang_region_or(ptr %t1143, ptr null)
  %t1145 = icmp ne ptr %t1144, null
  %t1146 = select i1 %t1145, ptr %t1144, ptr %t1140
  %t1147 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l341, i32 0, i32 0
  %t1148 = load { i64, ptr }, ptr %t1147
  %t1149 = extractvalue { i64, ptr } %t1148, 1
  %t1150 = call ptr @__olang_region_or(ptr %t1149, ptr null)
  %t1151 = icmp ne ptr %t1150, null
  %t1152 = select i1 %t1151, ptr %t1150, ptr %t1146
  %t1153 = icmp eq ptr %t1152, %t1134
  call void @__olang_region_settle(ptr %t1134, i1 %t1153)
  br label %bb214
bb214:
  %t1154 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l341
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1154, ptr %l95
  %t1155 = ptrtoint ptr %v1 to i64
  store i64 %t1155, ptr %l343, !tbaa !24
  %t1156 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e94
  br i1 %t1156, label %bb215, label %bb216
bb215:
  %t1158 = call ptr @__olang_region_make(ptr %v1)
  %t1159 = ptrtoint ptr %t1158 to i64
  store i64 %t1159, ptr %l343, !tbaa !24
  br label %bb216
bb216:
  %t1160 = load i64, ptr %l343
  %t1161 = inttoptr i64 %t1160 to ptr
  %t1162 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e(ptr %t1161)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1162, ptr %l345
  br label %bb217
bb217:
  %t1163 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e94
  br i1 %t1163, label %bb218, label %bb219
bb218:
  %t1165 = load i64, ptr %l343
  %t1166 = inttoptr i64 %t1165 to ptr
  %t1167 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l345, i32 0, i32 2
  %t1168 = load { i64, ptr }, ptr %t1167
  %t1169 = extractvalue { i64, ptr } %t1168, 1
  %t1170 = call ptr @__olang_region_or(ptr %t1169, ptr null)
  %t1171 = icmp ne ptr %t1170, null
  %t1172 = select i1 %t1171, ptr %t1170, ptr null
  %t1173 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l345, i32 0, i32 1
  %t1174 = load { i64, ptr }, ptr %t1173
  %t1175 = extractvalue { i64, ptr } %t1174, 1
  %t1176 = call ptr @__olang_region_or(ptr %t1175, ptr null)
  %t1177 = icmp ne ptr %t1176, null
  %t1178 = select i1 %t1177, ptr %t1176, ptr %t1172
  %t1179 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l345, i32 0, i32 0
  %t1180 = load { i64, ptr }, ptr %t1179
  %t1181 = extractvalue { i64, ptr } %t1180, 1
  %t1182 = call ptr @__olang_region_or(ptr %t1181, ptr null)
  %t1183 = icmp ne ptr %t1182, null
  %t1184 = select i1 %t1183, ptr %t1182, ptr %t1178
  %t1185 = icmp eq ptr %t1184, %t1166
  call void @__olang_region_settle(ptr %t1166, i1 %t1185)
  br label %bb219
bb219:
  %t1186 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l345
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1186, ptr %l96
  store i1 false, ptr %l97, !tbaa !21
  store i1 false, ptr %l98, !tbaa !21
  store i1 false, ptr %l99, !tbaa !21
  %t1187 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fdiag_3aWhere_3e(ptr %v1)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1187, ptr %l347
  br label %bb220
bb220:
  %t1188 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l347
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1188, ptr %l100
  %t1189 = ptrtoint ptr %v1 to i64
  store i64 %t1189, ptr %l348, !tbaa !24
  %t1190 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e99
  br i1 %t1190, label %bb221, label %bb222
bb221:
  %t1192 = call ptr @__olang_region_make(ptr %v1)
  %t1193 = ptrtoint ptr %t1192 to i64
  store i64 %t1193, ptr %l348, !tbaa !24
  br label %bb222
bb222:
  %t1194 = load i64, ptr %l348
  %t1195 = inttoptr i64 %t1194 to ptr
  %t1196 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %t1195)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1196, ptr %l350
  br label %bb223
bb223:
  %t1197 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e99
  br i1 %t1197, label %bb224, label %bb225
bb224:
  %t1199 = load i64, ptr %l348
  %t1200 = inttoptr i64 %t1199 to ptr
  %t1201 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l350, i32 0, i32 2
  %t1202 = load { i64, ptr }, ptr %t1201
  %t1203 = extractvalue { i64, ptr } %t1202, 1
  %t1204 = call ptr @__olang_region_or(ptr %t1203, ptr null)
  %t1205 = icmp ne ptr %t1204, null
  %t1206 = select i1 %t1205, ptr %t1204, ptr null
  %t1207 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l350, i32 0, i32 1
  %t1208 = load { i64, ptr }, ptr %t1207
  %t1209 = extractvalue { i64, ptr } %t1208, 1
  %t1210 = call ptr @__olang_region_or(ptr %t1209, ptr null)
  %t1211 = icmp ne ptr %t1210, null
  %t1212 = select i1 %t1211, ptr %t1210, ptr %t1206
  %t1213 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l350, i32 0, i32 0
  %t1214 = load { i64, ptr }, ptr %t1213
  %t1215 = extractvalue { i64, ptr } %t1214, 1
  %t1216 = call ptr @__olang_region_or(ptr %t1215, ptr null)
  %t1217 = icmp ne ptr %t1216, null
  %t1218 = select i1 %t1217, ptr %t1216, ptr %t1212
  %t1219 = icmp eq ptr %t1218, %t1200
  call void @__olang_region_settle(ptr %t1200, i1 %t1219)
  br label %bb225
bb225:
  %t1220 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l350
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1220, ptr %l101
  %t1221 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aweakPlace_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1221, ptr %l352
  br label %bb226
bb226:
  %t1222 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l352
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1222, ptr %l102
  store i1 false, ptr %l103, !tbaa !21
  %t1223 = ptrtoint ptr %v1 to i64
  store i64 %t1223, ptr %l353, !tbaa !24
  %t1224 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e102
  br i1 %t1224, label %bb227, label %bb228
bb227:
  %t1226 = call ptr @__olang_region_make(ptr %v1)
  %t1227 = ptrtoint ptr %t1226 to i64
  store i64 %t1227, ptr %l353, !tbaa !24
  br label %bb228
bb228:
  %t1228 = load i64, ptr %l353
  %t1229 = inttoptr i64 %t1228 to ptr
  %t1230 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e(ptr %t1229)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1230, ptr %l355
  br label %bb229
bb229:
  %t1231 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e102
  br i1 %t1231, label %bb230, label %bb231
bb230:
  %t1233 = load i64, ptr %l353
  %t1234 = inttoptr i64 %t1233 to ptr
  %t1235 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l355, i32 0, i32 2
  %t1236 = load { i64, ptr }, ptr %t1235
  %t1237 = extractvalue { i64, ptr } %t1236, 1
  %t1238 = call ptr @__olang_region_or(ptr %t1237, ptr null)
  %t1239 = icmp ne ptr %t1238, null
  %t1240 = select i1 %t1239, ptr %t1238, ptr null
  %t1241 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l355, i32 0, i32 1
  %t1242 = load { i64, ptr }, ptr %t1241
  %t1243 = extractvalue { i64, ptr } %t1242, 1
  %t1244 = call ptr @__olang_region_or(ptr %t1243, ptr null)
  %t1245 = icmp ne ptr %t1244, null
  %t1246 = select i1 %t1245, ptr %t1244, ptr %t1240
  %t1247 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l355, i32 0, i32 0
  %t1248 = load { i64, ptr }, ptr %t1247
  %t1249 = extractvalue { i64, ptr } %t1248, 1
  %t1250 = call ptr @__olang_region_or(ptr %t1249, ptr null)
  %t1251 = icmp ne ptr %t1250, null
  %t1252 = select i1 %t1251, ptr %t1250, ptr %t1246
  %t1253 = icmp eq ptr %t1252, %t1234
  call void @__olang_region_settle(ptr %t1234, i1 %t1253)
  br label %bb231
bb231:
  %t1254 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l355
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1254, ptr %l104
  store i1 false, ptr %l105, !tbaa !21
  store i64 -1, ptr %l106, !tbaa !24
  %t1255 = ptrtoint ptr %v1 to i64
  store i64 %t1255, ptr %l357, !tbaa !24
  %t1256 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e105
  br i1 %t1256, label %bb232, label %bb233
bb232:
  %t1258 = call ptr @__olang_region_make(ptr %v1)
  %t1259 = ptrtoint ptr %t1258 to i64
  store i64 %t1259, ptr %l357, !tbaa !24
  br label %bb233
bb233:
  %t1260 = load i64, ptr %l357
  %t1261 = inttoptr i64 %t1260 to ptr
  %t1262 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e(ptr %t1261)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1262, ptr %l359
  br label %bb234
bb234:
  %t1263 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e105
  br i1 %t1263, label %bb235, label %bb236
bb235:
  %t1265 = load i64, ptr %l357
  %t1266 = inttoptr i64 %t1265 to ptr
  %t1267 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l359, i32 0, i32 2
  %t1268 = load { i64, ptr }, ptr %t1267
  %t1269 = extractvalue { i64, ptr } %t1268, 1
  %t1270 = call ptr @__olang_region_or(ptr %t1269, ptr null)
  %t1271 = icmp ne ptr %t1270, null
  %t1272 = select i1 %t1271, ptr %t1270, ptr null
  %t1273 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l359, i32 0, i32 1
  %t1274 = load { i64, ptr }, ptr %t1273
  %t1275 = extractvalue { i64, ptr } %t1274, 1
  %t1276 = call ptr @__olang_region_or(ptr %t1275, ptr null)
  %t1277 = icmp ne ptr %t1276, null
  %t1278 = select i1 %t1277, ptr %t1276, ptr %t1272
  %t1279 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l359, i32 0, i32 0
  %t1280 = load { i64, ptr }, ptr %t1279
  %t1281 = extractvalue { i64, ptr } %t1280, 1
  %t1282 = call ptr @__olang_region_or(ptr %t1281, ptr null)
  %t1283 = icmp ne ptr %t1282, null
  %t1284 = select i1 %t1283, ptr %t1282, ptr %t1278
  %t1285 = icmp eq ptr %t1284, %t1266
  call void @__olang_region_settle(ptr %t1266, i1 %t1285)
  br label %bb236
bb236:
  %t1286 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l359
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1286, ptr %l107
  %t1287 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aAsk_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1287, ptr %l361
  br label %bb237
bb237:
  %t1288 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l361
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1288, ptr %l108
  %t1289 = ptrtoint ptr %v1 to i64
  store i64 %t1289, ptr %l362, !tbaa !24
  %t1290 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e107
  br i1 %t1290, label %bb238, label %bb239
bb238:
  %t1292 = call ptr @__olang_region_make(ptr %v1)
  %t1293 = ptrtoint ptr %t1292 to i64
  store i64 %t1293, ptr %l362, !tbaa !24
  br label %bb239
bb239:
  %t1294 = load i64, ptr %l362
  %t1295 = inttoptr i64 %t1294 to ptr
  %t1296 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aEmbedAsk_3e_2ector(ptr %t1295, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1296, ptr %l364
  br label %bb240
bb240:
  %t1297 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e107
  br i1 %t1297, label %bb241, label %bb242
bb241:
  %t1299 = load i64, ptr %l362
  %t1300 = inttoptr i64 %t1299 to ptr
  %t1301 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l364, i32 0, i32 0
  %t1302 = load { i64, ptr }, ptr %t1301
  %t1303 = extractvalue { i64, ptr } %t1302, 1
  %t1304 = call ptr @__olang_region_or(ptr %t1303, ptr null)
  %t1305 = icmp ne ptr %t1304, null
  %t1306 = select i1 %t1305, ptr %t1304, ptr null
  %t1307 = icmp eq ptr %t1306, %t1300
  call void @__olang_region_settle(ptr %t1300, i1 %t1307)
  br label %bb242
bb242:
  %t1308 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l364
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1308, ptr %l109
  %t1309 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aAssertAsk_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1309, ptr %l366
  br label %bb243
bb243:
  %t1310 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l366
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1310, ptr %l110
  %t1311 = ptrtoint ptr %v1 to i64
  store i64 %t1311, ptr %l367, !tbaa !24
  %t1312 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e109
  br i1 %t1312, label %bb244, label %bb245
bb244:
  %t1314 = call ptr @__olang_region_make(ptr %v1)
  %t1315 = ptrtoint ptr %t1314 to i64
  store i64 %t1315, ptr %l367, !tbaa !24
  br label %bb245
bb245:
  %t1316 = load i64, ptr %l367
  %t1317 = inttoptr i64 %t1316 to ptr
  %t1318 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aTopAssertAsk_3e_2ector(ptr %t1317, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1318, ptr %l369
  br label %bb246
bb246:
  %t1319 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e109
  br i1 %t1319, label %bb247, label %bb248
bb247:
  %t1321 = load i64, ptr %l367
  %t1322 = inttoptr i64 %t1321 to ptr
  %t1323 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l369, i32 0, i32 0
  %t1324 = load { i64, ptr }, ptr %t1323
  %t1325 = extractvalue { i64, ptr } %t1324, 1
  %t1326 = call ptr @__olang_region_or(ptr %t1325, ptr null)
  %t1327 = icmp ne ptr %t1326, null
  %t1328 = select i1 %t1327, ptr %t1326, ptr null
  %t1329 = icmp eq ptr %t1328, %t1322
  call void @__olang_region_settle(ptr %t1322, i1 %t1329)
  br label %bb248
bb248:
  %t1330 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l369
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1330, ptr %l111
  %t1331 = ptrtoint ptr %v1 to i64
  store i64 %t1331, ptr %l371, !tbaa !24
  %t1332 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e110
  br i1 %t1332, label %bb249, label %bb250
bb249:
  %t1334 = call ptr @__olang_region_make(ptr %v1)
  %t1335 = ptrtoint ptr %t1334 to i64
  store i64 %t1335, ptr %l371, !tbaa !24
  br label %bb250
bb250:
  %t1336 = load i64, ptr %l371
  %t1337 = inttoptr i64 %t1336 to ptr
  %t1338 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3atailAsk_3e_2ector(ptr %t1337, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1338, ptr %l373
  br label %bb251
bb251:
  %t1339 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e110
  br i1 %t1339, label %bb252, label %bb253
bb252:
  %t1341 = load i64, ptr %l371
  %t1342 = inttoptr i64 %t1341 to ptr
  %t1343 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l373, i32 0, i32 0
  %t1344 = load { i64, ptr }, ptr %t1343
  %t1345 = extractvalue { i64, ptr } %t1344, 1
  %t1346 = call ptr @__olang_region_or(ptr %t1345, ptr null)
  %t1347 = icmp ne ptr %t1346, null
  %t1348 = select i1 %t1347, ptr %t1346, ptr null
  %t1349 = icmp eq ptr %t1348, %t1342
  call void @__olang_region_settle(ptr %t1342, i1 %t1349)
  br label %bb253
bb253:
  %t1350 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l373
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1350, ptr %l112
  %t1351 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aValueAsk_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1351, ptr %l375
  br label %bb254
bb254:
  %t1352 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l375
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1352, ptr %l113
  %t1353 = ptrtoint ptr %v1 to i64
  store i64 %t1353, ptr %l376, !tbaa !24
  %t1354 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e112
  br i1 %t1354, label %bb255, label %bb256
bb255:
  %t1356 = call ptr @__olang_region_make(ptr %v1)
  %t1357 = ptrtoint ptr %t1356 to i64
  store i64 %t1357, ptr %l376, !tbaa !24
  br label %bb256
bb256:
  %t1358 = load i64, ptr %l376
  %t1359 = inttoptr i64 %t1358 to ptr
  %t1360 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aunsetCand_3e_2ector(ptr %t1359, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1360, ptr %l378
  br label %bb257
bb257:
  %t1361 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e112
  br i1 %t1361, label %bb258, label %bb259
bb258:
  %t1363 = load i64, ptr %l376
  %t1364 = inttoptr i64 %t1363 to ptr
  %t1365 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l378, i32 0, i32 0
  %t1366 = load { i64, ptr }, ptr %t1365
  %t1367 = extractvalue { i64, ptr } %t1366, 1
  %t1368 = call ptr @__olang_region_or(ptr %t1367, ptr null)
  %t1369 = icmp ne ptr %t1368, null
  %t1370 = select i1 %t1369, ptr %t1368, ptr null
  %t1371 = icmp eq ptr %t1370, %t1364
  call void @__olang_region_settle(ptr %t1364, i1 %t1371)
  br label %bb259
bb259:
  %t1372 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l378
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1372, ptr %l114
  %t1373 = ptrtoint ptr %v1 to i64
  store i64 %t1373, ptr %l380, !tbaa !24
  %t1374 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e113
  br i1 %t1374, label %bb260, label %bb261
bb260:
  %t1376 = call ptr @__olang_region_make(ptr %v1)
  %t1377 = ptrtoint ptr %t1376 to i64
  store i64 %t1377, ptr %l380, !tbaa !24
  br label %bb261
bb261:
  %t1378 = load i64, ptr %l380
  %t1379 = inttoptr i64 %t1378 to ptr
  %t1380 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aheldCand_3e_2ector(ptr %t1379, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1380, ptr %l382
  br label %bb262
bb262:
  %t1381 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e113
  br i1 %t1381, label %bb263, label %bb264
bb263:
  %t1383 = load i64, ptr %l380
  %t1384 = inttoptr i64 %t1383 to ptr
  %t1385 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l382, i32 0, i32 0
  %t1386 = load { i64, ptr }, ptr %t1385
  %t1387 = extractvalue { i64, ptr } %t1386, 1
  %t1388 = call ptr @__olang_region_or(ptr %t1387, ptr null)
  %t1389 = icmp ne ptr %t1388, null
  %t1390 = select i1 %t1389, ptr %t1388, ptr null
  %t1391 = icmp eq ptr %t1390, %t1384
  call void @__olang_region_settle(ptr %t1384, i1 %t1391)
  br label %bb264
bb264:
  %t1392 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l382
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1392, ptr %l115
  %t1393 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aidleCall_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1393, ptr %l384
  br label %bb265
bb265:
  %t1394 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l384
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1394, ptr %l116
  %t1395 = ptrtoint ptr %v1 to i64
  store i64 %t1395, ptr %l385, !tbaa !24
  %t1396 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e115
  br i1 %t1396, label %bb266, label %bb267
bb266:
  %t1398 = call ptr @__olang_region_make(ptr %v1)
  %t1399 = ptrtoint ptr %t1398 to i64
  store i64 %t1399, ptr %l385, !tbaa !24
  br label %bb267
bb267:
  %t1400 = load i64, ptr %l385
  %t1401 = inttoptr i64 %t1400 to ptr
  %t1402 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t1401, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1402, ptr %l387
  br label %bb268
bb268:
  %t1403 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e115
  br i1 %t1403, label %bb269, label %bb270
bb269:
  %t1405 = load i64, ptr %l385
  %t1406 = inttoptr i64 %t1405 to ptr
  %t1407 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l387, i32 0, i32 0
  %t1408 = load { i64, ptr }, ptr %t1407
  %t1409 = extractvalue { i64, ptr } %t1408, 1
  %t1410 = call ptr @__olang_region_or(ptr %t1409, ptr null)
  %t1411 = icmp ne ptr %t1410, null
  %t1412 = select i1 %t1411, ptr %t1410, ptr null
  %t1413 = icmp eq ptr %t1412, %t1406
  call void @__olang_region_settle(ptr %t1406, i1 %t1413)
  br label %bb270
bb270:
  %t1414 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l387
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1414, ptr %l117
  %t1415 = ptrtoint ptr %v1 to i64
  store i64 %t1415, ptr %l389, !tbaa !24
  %t1416 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e116
  br i1 %t1416, label %bb271, label %bb272
bb271:
  %t1418 = call ptr @__olang_region_make(ptr %v1)
  %t1419 = ptrtoint ptr %t1418 to i64
  store i64 %t1419, ptr %l389, !tbaa !24
  br label %bb272
bb272:
  %t1420 = load i64, ptr %l389
  %t1421 = inttoptr i64 %t1420 to ptr
  %t1422 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e(ptr %t1421)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1422, ptr %l391
  br label %bb273
bb273:
  %t1423 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e116
  br i1 %t1423, label %bb274, label %bb275
bb274:
  %t1425 = load i64, ptr %l389
  %t1426 = inttoptr i64 %t1425 to ptr
  %t1427 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l391, i32 0, i32 2
  %t1428 = load { i64, ptr }, ptr %t1427
  %t1429 = extractvalue { i64, ptr } %t1428, 1
  %t1430 = call ptr @__olang_region_or(ptr %t1429, ptr null)
  %t1431 = icmp ne ptr %t1430, null
  %t1432 = select i1 %t1431, ptr %t1430, ptr null
  %t1433 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l391, i32 0, i32 1
  %t1434 = load { i64, ptr }, ptr %t1433
  %t1435 = extractvalue { i64, ptr } %t1434, 1
  %t1436 = call ptr @__olang_region_or(ptr %t1435, ptr null)
  %t1437 = icmp ne ptr %t1436, null
  %t1438 = select i1 %t1437, ptr %t1436, ptr %t1432
  %t1439 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l391, i32 0, i32 0
  %t1440 = load { i64, ptr }, ptr %t1439
  %t1441 = extractvalue { i64, ptr } %t1440, 1
  %t1442 = call ptr @__olang_region_or(ptr %t1441, ptr null)
  %t1443 = icmp ne ptr %t1442, null
  %t1444 = select i1 %t1443, ptr %t1442, ptr %t1438
  %t1445 = icmp eq ptr %t1444, %t1426
  call void @__olang_region_settle(ptr %t1426, i1 %t1445)
  br label %bb275
bb275:
  %t1446 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l391
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1446, ptr %l118
  store i64 0, ptr %l119, !tbaa !24
  store i64 -1, ptr %l120, !tbaa !24
  store i64 -1, ptr %l121, !tbaa !24
  store i64 -1, ptr %l122, !tbaa !24
  store i64 -1, ptr %l123, !tbaa !24
  store i64 -1, ptr %l124, !tbaa !24
  store i64 -1, ptr %l125, !tbaa !24
  store i64 -1, ptr %l126, !tbaa !24
  store i1 false, ptr %l127, !tbaa !21
  store i1 false, ptr %l128, !tbaa !21
  store i1 false, ptr %l129, !tbaa !21
  %t1447 = ptrtoint ptr %v1 to i64
  store i64 %t1447, ptr %l393, !tbaa !24
  %t1448 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e128
  br i1 %t1448, label %bb276, label %bb277
bb276:
  %t1450 = call ptr @__olang_region_make(ptr %v1)
  %t1451 = ptrtoint ptr %t1450 to i64
  store i64 %t1451, ptr %l393, !tbaa !24
  br label %bb277
bb277:
  %t1452 = load i64, ptr %l393
  %t1453 = inttoptr i64 %t1452 to ptr
  %t1454 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aContractInfo_3e(ptr %t1453)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1454, ptr %l395
  br label %bb278
bb278:
  %t1455 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e128
  br i1 %t1455, label %bb279, label %bb280
bb279:
  %t1457 = load i64, ptr %l393
  %t1458 = inttoptr i64 %t1457 to ptr
  %t1459 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l395, i32 0, i32 2
  %t1460 = load { i64, ptr }, ptr %t1459
  %t1461 = extractvalue { i64, ptr } %t1460, 1
  %t1462 = call ptr @__olang_region_or(ptr %t1461, ptr null)
  %t1463 = icmp ne ptr %t1462, null
  %t1464 = select i1 %t1463, ptr %t1462, ptr null
  %t1465 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l395, i32 0, i32 1
  %t1466 = load { i64, ptr }, ptr %t1465
  %t1467 = extractvalue { i64, ptr } %t1466, 1
  %t1468 = call ptr @__olang_region_or(ptr %t1467, ptr null)
  %t1469 = icmp ne ptr %t1468, null
  %t1470 = select i1 %t1469, ptr %t1468, ptr %t1464
  %t1471 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l395, i32 0, i32 0
  %t1472 = load { i64, ptr }, ptr %t1471
  %t1473 = extractvalue { i64, ptr } %t1472, 1
  %t1474 = call ptr @__olang_region_or(ptr %t1473, ptr null)
  %t1475 = icmp ne ptr %t1474, null
  %t1476 = select i1 %t1475, ptr %t1474, ptr %t1470
  %t1477 = icmp eq ptr %t1476, %t1458
  call void @__olang_region_settle(ptr %t1458, i1 %t1477)
  br label %bb280
bb280:
  %t1478 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l395
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1478, ptr %l130
  %t1479 = ptrtoint ptr %v1 to i64
  store i64 %t1479, ptr %l397, !tbaa !24
  %t1480 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e129
  br i1 %t1480, label %bb281, label %bb282
bb281:
  %t1482 = call ptr @__olang_region_make(ptr %v1)
  %t1483 = ptrtoint ptr %t1482 to i64
  store i64 %t1483, ptr %l397, !tbaa !24
  br label %bb282
bb282:
  %t1484 = load i64, ptr %l397
  %t1485 = inttoptr i64 %t1484 to ptr
  %t1486 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %t1485)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1486, ptr %l399
  br label %bb283
bb283:
  %t1487 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e129
  br i1 %t1487, label %bb284, label %bb285
bb284:
  %t1489 = load i64, ptr %l397
  %t1490 = inttoptr i64 %t1489 to ptr
  %t1491 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l399, i32 0, i32 2
  %t1492 = load { i64, ptr }, ptr %t1491
  %t1493 = extractvalue { i64, ptr } %t1492, 1
  %t1494 = call ptr @__olang_region_or(ptr %t1493, ptr null)
  %t1495 = icmp ne ptr %t1494, null
  %t1496 = select i1 %t1495, ptr %t1494, ptr null
  %t1497 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l399, i32 0, i32 1
  %t1498 = load { i64, ptr }, ptr %t1497
  %t1499 = extractvalue { i64, ptr } %t1498, 1
  %t1500 = call ptr @__olang_region_or(ptr %t1499, ptr null)
  %t1501 = icmp ne ptr %t1500, null
  %t1502 = select i1 %t1501, ptr %t1500, ptr %t1496
  %t1503 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l399, i32 0, i32 0
  %t1504 = load { i64, ptr }, ptr %t1503
  %t1505 = extractvalue { i64, ptr } %t1504, 1
  %t1506 = call ptr @__olang_region_or(ptr %t1505, ptr null)
  %t1507 = icmp ne ptr %t1506, null
  %t1508 = select i1 %t1507, ptr %t1506, ptr %t1502
  %t1509 = icmp eq ptr %t1508, %t1490
  call void @__olang_region_settle(ptr %t1490, i1 %t1509)
  br label %bb285
bb285:
  %t1510 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l399
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1510, ptr %l131
  %t1511 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aContractAsk_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1511, ptr %l401
  br label %bb286
bb286:
  %t1512 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l401
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1512, ptr %l132
  %t1513 = ptrtoint ptr %v1 to i64
  store i64 %t1513, ptr %l402, !tbaa !24
  %t1514 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e131
  br i1 %t1514, label %bb287, label %bb288
bb287:
  %t1516 = call ptr @__olang_region_make(ptr %v1)
  %t1517 = ptrtoint ptr %t1516 to i64
  store i64 %t1517, ptr %l402, !tbaa !24
  br label %bb288
bb288:
  %t1518 = load i64, ptr %l402
  %t1519 = inttoptr i64 %t1518 to ptr
  %t1520 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t1519, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1520, ptr %l404
  br label %bb289
bb289:
  %t1521 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e131
  br i1 %t1521, label %bb290, label %bb291
bb290:
  %t1523 = load i64, ptr %l402
  %t1524 = inttoptr i64 %t1523 to ptr
  %t1525 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l404, i32 0, i32 0
  %t1526 = load { i64, ptr }, ptr %t1525
  %t1527 = extractvalue { i64, ptr } %t1526, 1
  %t1528 = call ptr @__olang_region_or(ptr %t1527, ptr null)
  %t1529 = icmp ne ptr %t1528, null
  %t1530 = select i1 %t1529, ptr %t1528, ptr null
  %t1531 = icmp eq ptr %t1530, %t1524
  call void @__olang_region_settle(ptr %t1524, i1 %t1531)
  br label %bb291
bb291:
  %t1532 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l404
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1532, ptr %l133
  %t1533 = ptrtoint ptr %v1 to i64
  store i64 %t1533, ptr %l406, !tbaa !24
  %t1534 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e132
  br i1 %t1534, label %bb292, label %bb293
bb292:
  %t1536 = call ptr @__olang_region_make(ptr %v1)
  %t1537 = ptrtoint ptr %t1536 to i64
  store i64 %t1537, ptr %l406, !tbaa !24
  br label %bb293
bb293:
  %t1538 = load i64, ptr %l406
  %t1539 = inttoptr i64 %t1538 to ptr
  %t1540 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %t1539)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1540, ptr %l408
  br label %bb294
bb294:
  %t1541 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e132
  br i1 %t1541, label %bb295, label %bb296
bb295:
  %t1543 = load i64, ptr %l406
  %t1544 = inttoptr i64 %t1543 to ptr
  %t1545 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l408, i32 0, i32 2
  %t1546 = load { i64, ptr }, ptr %t1545
  %t1547 = extractvalue { i64, ptr } %t1546, 1
  %t1548 = call ptr @__olang_region_or(ptr %t1547, ptr null)
  %t1549 = icmp ne ptr %t1548, null
  %t1550 = select i1 %t1549, ptr %t1548, ptr null
  %t1551 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l408, i32 0, i32 1
  %t1552 = load { i64, ptr }, ptr %t1551
  %t1553 = extractvalue { i64, ptr } %t1552, 1
  %t1554 = call ptr @__olang_region_or(ptr %t1553, ptr null)
  %t1555 = icmp ne ptr %t1554, null
  %t1556 = select i1 %t1555, ptr %t1554, ptr %t1550
  %t1557 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l408, i32 0, i32 0
  %t1558 = load { i64, ptr }, ptr %t1557
  %t1559 = extractvalue { i64, ptr } %t1558, 1
  %t1560 = call ptr @__olang_region_or(ptr %t1559, ptr null)
  %t1561 = icmp ne ptr %t1560, null
  %t1562 = select i1 %t1561, ptr %t1560, ptr %t1556
  %t1563 = icmp eq ptr %t1562, %t1544
  call void @__olang_region_settle(ptr %t1544, i1 %t1563)
  br label %bb296
bb296:
  %t1564 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l408
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1564, ptr %l134
  store i1 false, ptr %l135, !tbaa !21
  store i1 false, ptr %l136, !tbaa !21
  store i64 0, ptr %l137, !tbaa !24
  %t1565 = ptrtoint ptr %v1 to i64
  store i64 %t1565, ptr %l410, !tbaa !24
  %t1566 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e136
  br i1 %t1566, label %bb297, label %bb298
bb297:
  %t1568 = call ptr @__olang_region_make(ptr %v1)
  %t1569 = ptrtoint ptr %t1568 to i64
  store i64 %t1569, ptr %l410, !tbaa !24
  br label %bb298
bb298:
  %t1570 = load i64, ptr %l410
  %t1571 = inttoptr i64 %t1570 to ptr
  %t1572 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fsource_3aSpan_3e(ptr %t1571)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1572, ptr %l412
  br label %bb299
bb299:
  %t1573 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e136
  br i1 %t1573, label %bb300, label %bb301
bb300:
  %t1575 = load i64, ptr %l410
  %t1576 = inttoptr i64 %t1575 to ptr
  %t1577 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l412, i32 0, i32 2
  %t1578 = load { i64, ptr }, ptr %t1577
  %t1579 = extractvalue { i64, ptr } %t1578, 1
  %t1580 = call ptr @__olang_region_or(ptr %t1579, ptr null)
  %t1581 = icmp ne ptr %t1580, null
  %t1582 = select i1 %t1581, ptr %t1580, ptr null
  %t1583 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l412, i32 0, i32 1
  %t1584 = load { i64, ptr }, ptr %t1583
  %t1585 = extractvalue { i64, ptr } %t1584, 1
  %t1586 = call ptr @__olang_region_or(ptr %t1585, ptr null)
  %t1587 = icmp ne ptr %t1586, null
  %t1588 = select i1 %t1587, ptr %t1586, ptr %t1582
  %t1589 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l412, i32 0, i32 0
  %t1590 = load { i64, ptr }, ptr %t1589
  %t1591 = extractvalue { i64, ptr } %t1590, 1
  %t1592 = call ptr @__olang_region_or(ptr %t1591, ptr null)
  %t1593 = icmp ne ptr %t1592, null
  %t1594 = select i1 %t1593, ptr %t1592, ptr %t1588
  %t1595 = icmp eq ptr %t1594, %t1576
  call void @__olang_region_settle(ptr %t1576, i1 %t1595)
  br label %bb301
bb301:
  %t1596 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l412
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1596, ptr %l138
  %t1597 = ptrtoint ptr %v1 to i64
  store i64 %t1597, ptr %l414, !tbaa !24
  %t1598 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e137
  br i1 %t1598, label %bb302, label %bb303
bb302:
  %t1600 = call ptr @__olang_region_make(ptr %v1)
  %t1601 = ptrtoint ptr %t1600 to i64
  store i64 %t1601, ptr %l414, !tbaa !24
  br label %bb303
bb303:
  %t1602 = load i64, ptr %l414
  %t1603 = inttoptr i64 %t1602 to ptr
  %t1604 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aUnrollAsk_3e_2ector(ptr %t1603, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1604, ptr %l416
  br label %bb304
bb304:
  %t1605 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e137
  br i1 %t1605, label %bb305, label %bb306
bb305:
  %t1607 = load i64, ptr %l414
  %t1608 = inttoptr i64 %t1607 to ptr
  %t1609 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l416, i32 0, i32 0
  %t1610 = load { i64, ptr }, ptr %t1609
  %t1611 = extractvalue { i64, ptr } %t1610, 1
  %t1612 = call ptr @__olang_region_or(ptr %t1611, ptr null)
  %t1613 = icmp ne ptr %t1612, null
  %t1614 = select i1 %t1613, ptr %t1612, ptr null
  %t1615 = icmp eq ptr %t1614, %t1608
  call void @__olang_region_settle(ptr %t1608, i1 %t1615)
  br label %bb306
bb306:
  %t1616 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l416
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1616, ptr %l139
  store i64 0, ptr %l140, !tbaa !24
  store i1 false, ptr %l141, !tbaa !21
  %t1617 = ptrtoint ptr %v1 to i64
  store i64 %t1617, ptr %l418, !tbaa !24
  %t1618 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e140
  br i1 %t1618, label %bb307, label %bb308
bb307:
  %t1620 = call ptr @__olang_region_make(ptr %v1)
  %t1621 = ptrtoint ptr %t1620 to i64
  store i64 %t1621, ptr %l418, !tbaa !24
  br label %bb308
bb308:
  %t1622 = load i64, ptr %l418
  %t1623 = inttoptr i64 %t1622 to ptr
  %t1624 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %t1623)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1624, ptr %l420
  br label %bb309
bb309:
  %t1625 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e140
  br i1 %t1625, label %bb310, label %bb311
bb310:
  %t1627 = load i64, ptr %l418
  %t1628 = inttoptr i64 %t1627 to ptr
  %t1629 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l420, i32 0, i32 2
  %t1630 = load { i64, ptr }, ptr %t1629
  %t1631 = extractvalue { i64, ptr } %t1630, 1
  %t1632 = call ptr @__olang_region_or(ptr %t1631, ptr null)
  %t1633 = icmp ne ptr %t1632, null
  %t1634 = select i1 %t1633, ptr %t1632, ptr null
  %t1635 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l420, i32 0, i32 1
  %t1636 = load { i64, ptr }, ptr %t1635
  %t1637 = extractvalue { i64, ptr } %t1636, 1
  %t1638 = call ptr @__olang_region_or(ptr %t1637, ptr null)
  %t1639 = icmp ne ptr %t1638, null
  %t1640 = select i1 %t1639, ptr %t1638, ptr %t1634
  %t1641 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l420, i32 0, i32 0
  %t1642 = load { i64, ptr }, ptr %t1641
  %t1643 = extractvalue { i64, ptr } %t1642, 1
  %t1644 = call ptr @__olang_region_or(ptr %t1643, ptr null)
  %t1645 = icmp ne ptr %t1644, null
  %t1646 = select i1 %t1645, ptr %t1644, ptr %t1640
  %t1647 = icmp eq ptr %t1646, %t1628
  call void @__olang_region_settle(ptr %t1628, i1 %t1647)
  br label %bb311
bb311:
  %t1648 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l420
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1648, ptr %l142
  %t1649 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_H83a40c854ac540921110879766bd79fd(ptr %v1)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1649, ptr %l422
  br label %bb312
bb312:
  %t1650 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l422
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1650, ptr %l143
  %t1651 = ptrtoint ptr %v1 to i64
  store i64 %t1651, ptr %l423, !tbaa !24
  %t1652 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e142
  br i1 %t1652, label %bb313, label %bb314
bb313:
  %t1654 = call ptr @__olang_region_make(ptr %v1)
  %t1655 = ptrtoint ptr %t1654 to i64
  store i64 %t1655, ptr %l423, !tbaa !24
  br label %bb314
bb314:
  %t1656 = load i64, ptr %l423
  %t1657 = inttoptr i64 %t1656 to ptr
  %t1658 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e(ptr %t1657)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1658, ptr %l425
  br label %bb315
bb315:
  %t1659 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e142
  br i1 %t1659, label %bb316, label %bb317
bb316:
  %t1661 = load i64, ptr %l423
  %t1662 = inttoptr i64 %t1661 to ptr
  %t1663 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l425, i32 0, i32 2
  %t1664 = load { i64, ptr }, ptr %t1663
  %t1665 = extractvalue { i64, ptr } %t1664, 1
  %t1666 = call ptr @__olang_region_or(ptr %t1665, ptr null)
  %t1667 = icmp ne ptr %t1666, null
  %t1668 = select i1 %t1667, ptr %t1666, ptr null
  %t1669 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l425, i32 0, i32 1
  %t1670 = load { i64, ptr }, ptr %t1669
  %t1671 = extractvalue { i64, ptr } %t1670, 1
  %t1672 = call ptr @__olang_region_or(ptr %t1671, ptr null)
  %t1673 = icmp ne ptr %t1672, null
  %t1674 = select i1 %t1673, ptr %t1672, ptr %t1668
  %t1675 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l425, i32 0, i32 0
  %t1676 = load { i64, ptr }, ptr %t1675
  %t1677 = extractvalue { i64, ptr } %t1676, 1
  %t1678 = call ptr @__olang_region_or(ptr %t1677, ptr null)
  %t1679 = icmp ne ptr %t1678, null
  %t1680 = select i1 %t1679, ptr %t1678, ptr %t1674
  %t1681 = icmp eq ptr %t1680, %t1662
  call void @__olang_region_settle(ptr %t1662, i1 %t1681)
  br label %bb317
bb317:
  %t1682 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l425
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1682, ptr %l144
  %t1683 = ptrtoint ptr %v1 to i64
  store i64 %t1683, ptr %l427, !tbaa !24
  %t1684 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e143
  br i1 %t1684, label %bb318, label %bb319
bb318:
  %t1686 = call ptr @__olang_region_make(ptr %v1)
  %t1687 = ptrtoint ptr %t1686 to i64
  store i64 %t1687, ptr %l427, !tbaa !24
  br label %bb319
bb319:
  %t1688 = load i64, ptr %l427
  %t1689 = inttoptr i64 %t1688 to ptr
  %t1690 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t1689, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1690, ptr %l429
  br label %bb320
bb320:
  %t1691 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e143
  br i1 %t1691, label %bb321, label %bb322
bb321:
  %t1693 = load i64, ptr %l427
  %t1694 = inttoptr i64 %t1693 to ptr
  %t1695 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l429, i32 0, i32 0
  %t1696 = load { i64, ptr }, ptr %t1695
  %t1697 = extractvalue { i64, ptr } %t1696, 1
  %t1698 = call ptr @__olang_region_or(ptr %t1697, ptr null)
  %t1699 = icmp ne ptr %t1698, null
  %t1700 = select i1 %t1699, ptr %t1698, ptr null
  %t1701 = icmp eq ptr %t1700, %t1694
  call void @__olang_region_settle(ptr %t1694, i1 %t1701)
  br label %bb322
bb322:
  %t1702 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l429
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1702, ptr %l145
  %t1703 = ptrtoint ptr %v1 to i64
  store i64 %t1703, ptr %l431, !tbaa !24
  %t1704 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e144
  br i1 %t1704, label %bb323, label %bb324
bb323:
  %t1706 = call ptr @__olang_region_make(ptr %v1)
  %t1707 = ptrtoint ptr %t1706 to i64
  store i64 %t1707, ptr %l431, !tbaa !24
  br label %bb324
bb324:
  %t1708 = load i64, ptr %l431
  %t1709 = inttoptr i64 %t1708 to ptr
  %t1710 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %t1709)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1710, ptr %l433
  br label %bb325
bb325:
  %t1711 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e144
  br i1 %t1711, label %bb326, label %bb327
bb326:
  %t1713 = load i64, ptr %l431
  %t1714 = inttoptr i64 %t1713 to ptr
  %t1715 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l433, i32 0, i32 2
  %t1716 = load { i64, ptr }, ptr %t1715
  %t1717 = extractvalue { i64, ptr } %t1716, 1
  %t1718 = call ptr @__olang_region_or(ptr %t1717, ptr null)
  %t1719 = icmp ne ptr %t1718, null
  %t1720 = select i1 %t1719, ptr %t1718, ptr null
  %t1721 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l433, i32 0, i32 1
  %t1722 = load { i64, ptr }, ptr %t1721
  %t1723 = extractvalue { i64, ptr } %t1722, 1
  %t1724 = call ptr @__olang_region_or(ptr %t1723, ptr null)
  %t1725 = icmp ne ptr %t1724, null
  %t1726 = select i1 %t1725, ptr %t1724, ptr %t1720
  %t1727 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l433, i32 0, i32 0
  %t1728 = load { i64, ptr }, ptr %t1727
  %t1729 = extractvalue { i64, ptr } %t1728, 1
  %t1730 = call ptr @__olang_region_or(ptr %t1729, ptr null)
  %t1731 = icmp ne ptr %t1730, null
  %t1732 = select i1 %t1731, ptr %t1730, ptr %t1726
  %t1733 = icmp eq ptr %t1732, %t1714
  call void @__olang_region_settle(ptr %t1714, i1 %t1733)
  br label %bb327
bb327:
  %t1734 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l433
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1734, ptr %l146
  %t1735 = ptrtoint ptr %v1 to i64
  store i64 %t1735, ptr %l435, !tbaa !24
  %t1736 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e145
  br i1 %t1736, label %bb328, label %bb329
bb328:
  %t1738 = call ptr @__olang_region_make(ptr %v1)
  %t1739 = ptrtoint ptr %t1738 to i64
  store i64 %t1739, ptr %l435, !tbaa !24
  br label %bb329
bb329:
  %t1740 = load i64, ptr %l435
  %t1741 = inttoptr i64 %t1740 to ptr
  %t1742 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e(ptr %t1741)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1742, ptr %l437
  br label %bb330
bb330:
  %t1743 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e145
  br i1 %t1743, label %bb331, label %bb332
bb331:
  %t1745 = load i64, ptr %l435
  %t1746 = inttoptr i64 %t1745 to ptr
  %t1747 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l437, i32 0, i32 2
  %t1748 = load { i64, ptr }, ptr %t1747
  %t1749 = extractvalue { i64, ptr } %t1748, 1
  %t1750 = call ptr @__olang_region_or(ptr %t1749, ptr null)
  %t1751 = icmp ne ptr %t1750, null
  %t1752 = select i1 %t1751, ptr %t1750, ptr null
  %t1753 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l437, i32 0, i32 1
  %t1754 = load { i64, ptr }, ptr %t1753
  %t1755 = extractvalue { i64, ptr } %t1754, 1
  %t1756 = call ptr @__olang_region_or(ptr %t1755, ptr null)
  %t1757 = icmp ne ptr %t1756, null
  %t1758 = select i1 %t1757, ptr %t1756, ptr %t1752
  %t1759 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l437, i32 0, i32 0
  %t1760 = load { i64, ptr }, ptr %t1759
  %t1761 = extractvalue { i64, ptr } %t1760, 1
  %t1762 = call ptr @__olang_region_or(ptr %t1761, ptr null)
  %t1763 = icmp ne ptr %t1762, null
  %t1764 = select i1 %t1763, ptr %t1762, ptr %t1758
  %t1765 = icmp eq ptr %t1764, %t1746
  call void @__olang_region_settle(ptr %t1746, i1 %t1765)
  br label %bb332
bb332:
  %t1766 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l437
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1766, ptr %l147
  %t1767 = ptrtoint ptr %v1 to i64
  store i64 %t1767, ptr %l439, !tbaa !24
  %t1768 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e146
  br i1 %t1768, label %bb333, label %bb334
bb333:
  %t1770 = call ptr @__olang_region_make(ptr %v1)
  %t1771 = ptrtoint ptr %t1770 to i64
  store i64 %t1771, ptr %l439, !tbaa !24
  br label %bb334
bb334:
  %t1772 = load i64, ptr %l439
  %t1773 = inttoptr i64 %t1772 to ptr
  %t1774 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %t1773)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1774, ptr %l441
  br label %bb335
bb335:
  %t1775 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e146
  br i1 %t1775, label %bb336, label %bb337
bb336:
  %t1777 = load i64, ptr %l439
  %t1778 = inttoptr i64 %t1777 to ptr
  %t1779 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l441, i32 0, i32 2
  %t1780 = load { i64, ptr }, ptr %t1779
  %t1781 = extractvalue { i64, ptr } %t1780, 1
  %t1782 = call ptr @__olang_region_or(ptr %t1781, ptr null)
  %t1783 = icmp ne ptr %t1782, null
  %t1784 = select i1 %t1783, ptr %t1782, ptr null
  %t1785 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l441, i32 0, i32 1
  %t1786 = load { i64, ptr }, ptr %t1785
  %t1787 = extractvalue { i64, ptr } %t1786, 1
  %t1788 = call ptr @__olang_region_or(ptr %t1787, ptr null)
  %t1789 = icmp ne ptr %t1788, null
  %t1790 = select i1 %t1789, ptr %t1788, ptr %t1784
  %t1791 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l441, i32 0, i32 0
  %t1792 = load { i64, ptr }, ptr %t1791
  %t1793 = extractvalue { i64, ptr } %t1792, 1
  %t1794 = call ptr @__olang_region_or(ptr %t1793, ptr null)
  %t1795 = icmp ne ptr %t1794, null
  %t1796 = select i1 %t1795, ptr %t1794, ptr %t1790
  %t1797 = icmp eq ptr %t1796, %t1778
  call void @__olang_region_settle(ptr %t1778, i1 %t1797)
  br label %bb337
bb337:
  %t1798 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l441
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1798, ptr %l148
  store i1 false, ptr %l149, !tbaa !21
  store i1 false, ptr %l150, !tbaa !21
  store i1 false, ptr %l151, !tbaa !21
  %t1799 = ptrtoint ptr %v1 to i64
  store i64 %t1799, ptr %l443, !tbaa !24
  %t1800 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e150
  br i1 %t1800, label %bb338, label %bb339
bb338:
  %t1802 = call ptr @__olang_region_make(ptr %v1)
  %t1803 = ptrtoint ptr %t1802 to i64
  store i64 %t1803, ptr %l443, !tbaa !24
  br label %bb339
bb339:
  %t1804 = load i64, ptr %l443
  %t1805 = inttoptr i64 %t1804 to ptr
  %t1806 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e(ptr %t1805)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1806, ptr %l445
  br label %bb340
bb340:
  %t1807 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e150
  br i1 %t1807, label %bb341, label %bb342
bb341:
  %t1809 = load i64, ptr %l443
  %t1810 = inttoptr i64 %t1809 to ptr
  %t1811 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l445, i32 0, i32 2
  %t1812 = load { i64, ptr }, ptr %t1811
  %t1813 = extractvalue { i64, ptr } %t1812, 1
  %t1814 = call ptr @__olang_region_or(ptr %t1813, ptr null)
  %t1815 = icmp ne ptr %t1814, null
  %t1816 = select i1 %t1815, ptr %t1814, ptr null
  %t1817 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l445, i32 0, i32 1
  %t1818 = load { i64, ptr }, ptr %t1817
  %t1819 = extractvalue { i64, ptr } %t1818, 1
  %t1820 = call ptr @__olang_region_or(ptr %t1819, ptr null)
  %t1821 = icmp ne ptr %t1820, null
  %t1822 = select i1 %t1821, ptr %t1820, ptr %t1816
  %t1823 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l445, i32 0, i32 0
  %t1824 = load { i64, ptr }, ptr %t1823
  %t1825 = extractvalue { i64, ptr } %t1824, 1
  %t1826 = call ptr @__olang_region_or(ptr %t1825, ptr null)
  %t1827 = icmp ne ptr %t1826, null
  %t1828 = select i1 %t1827, ptr %t1826, ptr %t1822
  %t1829 = icmp eq ptr %t1828, %t1810
  call void @__olang_region_settle(ptr %t1810, i1 %t1829)
  br label %bb342
bb342:
  %t1830 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l445
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1830, ptr %l152
  store i1 false, ptr %l153, !tbaa !21
  %t1831 = ptrtoint ptr %v1 to i64
  store i64 %t1831, ptr %l447, !tbaa !24
  %t1832 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e152
  br i1 %t1832, label %bb343, label %bb344
bb343:
  %t1834 = call ptr @__olang_region_make(ptr %v1)
  %t1835 = ptrtoint ptr %t1834 to i64
  store i64 %t1835, ptr %l447, !tbaa !24
  br label %bb344
bb344:
  %t1836 = load i64, ptr %l447
  %t1837 = inttoptr i64 %t1836 to ptr
  %t1838 = call %"std/prelude/text:StringBuilder" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2ftext_3aStringBuilder(ptr %t1837)
  store %"std/prelude/text:StringBuilder" %t1838, ptr %l449
  br label %bb345
bb345:
  %t1839 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e152
  br i1 %t1839, label %bb346, label %bb347
bb346:
  %t1841 = load i64, ptr %l447
  %t1842 = inttoptr i64 %t1841 to ptr
  %t1843 = getelementptr %"std/prelude/text:StringBuilder", ptr %l449, i32 0, i32 0
  %t1844 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t1843, i32 0, i32 0
  %t1845 = load { i64, ptr }, ptr %t1844
  %t1846 = extractvalue { i64, ptr } %t1845, 1
  %t1847 = call ptr @__olang_region_or(ptr %t1846, ptr null)
  %t1848 = icmp ne ptr %t1847, null
  %t1849 = select i1 %t1848, ptr %t1847, ptr null
  %t1850 = icmp eq ptr %t1849, %t1842
  call void @__olang_region_settle(ptr %t1842, i1 %t1850)
  br label %bb347
bb347:
  %t1851 = load %"std/prelude/text:StringBuilder", ptr %l449
  store %"std/prelude/text:StringBuilder" %t1851, ptr %l154
  store i1 false, ptr %l155, !tbaa !21
  %t1852 = ptrtoint ptr %v1 to i64
  store i64 %t1852, ptr %l451, !tbaa !24
  %t1853 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e154
  br i1 %t1853, label %bb348, label %bb349
bb348:
  %t1855 = call ptr @__olang_region_make(ptr %v1)
  %t1856 = ptrtoint ptr %t1855 to i64
  store i64 %t1856, ptr %l451, !tbaa !24
  br label %bb349
bb349:
  %t1857 = load i64, ptr %l451
  %t1858 = inttoptr i64 %t1857 to ptr
  %t1859 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t1858, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1859, ptr %l453
  br label %bb350
bb350:
  %t1860 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e154
  br i1 %t1860, label %bb351, label %bb352
bb351:
  %t1862 = load i64, ptr %l451
  %t1863 = inttoptr i64 %t1862 to ptr
  %t1864 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l453, i32 0, i32 0
  %t1865 = load { i64, ptr }, ptr %t1864
  %t1866 = extractvalue { i64, ptr } %t1865, 1
  %t1867 = call ptr @__olang_region_or(ptr %t1866, ptr null)
  %t1868 = icmp ne ptr %t1867, null
  %t1869 = select i1 %t1868, ptr %t1867, ptr null
  %t1870 = icmp eq ptr %t1869, %t1863
  call void @__olang_region_settle(ptr %t1863, i1 %t1870)
  br label %bb352
bb352:
  %t1871 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l453
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1871, ptr %l156
  %t1872 = ptrtoint ptr %v1 to i64
  store i64 %t1872, ptr %l455, !tbaa !24
  %t1873 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e155
  br i1 %t1873, label %bb353, label %bb354
bb353:
  %t1875 = call ptr @__olang_region_make(ptr %v1)
  %t1876 = ptrtoint ptr %t1875 to i64
  store i64 %t1876, ptr %l455, !tbaa !24
  br label %bb354
bb354:
  %t1877 = load i64, ptr %l455
  %t1878 = inttoptr i64 %t1877 to ptr
  %t1879 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fsource_3aNameId_2c_20compiler_2ftypes_3aTypeId_3e_3e_2ector(ptr %t1878, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1879, ptr %l457
  br label %bb355
bb355:
  %t1880 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e155
  br i1 %t1880, label %bb356, label %bb357
bb356:
  %t1882 = load i64, ptr %l455
  %t1883 = inttoptr i64 %t1882 to ptr
  %t1884 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l457, i32 0, i32 0
  %t1885 = load { i64, ptr }, ptr %t1884
  %t1886 = extractvalue { i64, ptr } %t1885, 1
  %t1887 = call ptr @__olang_region_or(ptr %t1886, ptr null)
  %t1888 = icmp ne ptr %t1887, null
  %t1889 = select i1 %t1888, ptr %t1887, ptr null
  %t1890 = icmp eq ptr %t1889, %t1883
  call void @__olang_region_settle(ptr %t1883, i1 %t1890)
  br label %bb357
bb357:
  %t1891 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l457
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1891, ptr %l157
  %t1892 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fdiag_3aWhere_3e(ptr %v1)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1892, ptr %l459
  br label %bb358
bb358:
  %t1893 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l459
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1893, ptr %l158
  %t1894 = ptrtoint ptr %v1 to i64
  store i64 %t1894, ptr %l460, !tbaa !24
  %t1895 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e157
  br i1 %t1895, label %bb359, label %bb360
bb359:
  %t1897 = call ptr @__olang_region_make(ptr %v1)
  %t1898 = ptrtoint ptr %t1897 to i64
  store i64 %t1898, ptr %l460, !tbaa !24
  br label %bb360
bb360:
  %t1899 = load i64, ptr %l460
  %t1900 = inttoptr i64 %t1899 to ptr
  %t1901 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t1900, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1901, ptr %l462
  br label %bb361
bb361:
  %t1902 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e157
  br i1 %t1902, label %bb362, label %bb363
bb362:
  %t1904 = load i64, ptr %l460
  %t1905 = inttoptr i64 %t1904 to ptr
  %t1906 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l462, i32 0, i32 0
  %t1907 = load { i64, ptr }, ptr %t1906
  %t1908 = extractvalue { i64, ptr } %t1907, 1
  %t1909 = call ptr @__olang_region_or(ptr %t1908, ptr null)
  %t1910 = icmp ne ptr %t1909, null
  %t1911 = select i1 %t1910, ptr %t1909, ptr null
  %t1912 = icmp eq ptr %t1911, %t1905
  call void @__olang_region_settle(ptr %t1905, i1 %t1912)
  br label %bb363
bb363:
  %t1913 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l462
  %t1914 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 0
  %t1915 = load ptr, ptr %l2, !tbaa !29
  store ptr %t1915, ptr %t1914, !tbaa !29
  %t1916 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 1
  %t1917 = load ptr, ptr %l3, !tbaa !29
  store ptr %t1917, ptr %t1916, !tbaa !29
  %t1918 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 2
  %t1919 = load i1, ptr %l4, !tbaa !21
  store i1 %t1919, ptr %t1918, !tbaa !21
  %t1920 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 3
  %t1921 = load i1, ptr %l5, !tbaa !21
  store i1 %t1921, ptr %t1920, !tbaa !21
  %t1922 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 4
  %t1923 = load i1, ptr %l6, !tbaa !21
  store i1 %t1923, ptr %t1922, !tbaa !21
  %t1924 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 5
  %t1925 = load i1, ptr %l7, !tbaa !21
  store i1 %t1925, ptr %t1924, !tbaa !21
  %t1926 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 6
  %t1927 = load i64, ptr %l8, !tbaa !24
  store i64 %t1927, ptr %t1926, !tbaa !24
  %t1928 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 7
  %t1929 = load i64, ptr %l9, !tbaa !24
  store i64 %t1929, ptr %t1928, !tbaa !24
  %t1930 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 8
  %t1931 = load i1, ptr %l10, !tbaa !21
  store i1 %t1931, ptr %t1930, !tbaa !21
  %t1932 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 9
  %t1933 = load ptr, ptr %l11, !tbaa !29
  store ptr %t1933, ptr %t1932, !tbaa !29
  %t1934 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 10
  %t1935 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l12
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1935, ptr %t1934
  %t1936 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 11
  %t1937 = load i1, ptr %l13, !tbaa !21
  store i1 %t1937, ptr %t1936, !tbaa !21
  %t1938 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 12
  %t1939 = load i1, ptr %l14, !tbaa !21
  store i1 %t1939, ptr %t1938, !tbaa !21
  %t1940 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 13
  %t1941 = load { i64, [3 x i64] }, ptr %l15
  store { i64, [3 x i64] } %t1941, ptr %t1940
  %t1942 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 14
  %t1943 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l16
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1943, ptr %t1942
  %t1944 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 15
  %t1945 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l17
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1945, ptr %t1944
  %t1946 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 16
  %t1947 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l18
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1947, ptr %t1946
  %t1948 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 17
  %t1949 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l19
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1949, ptr %t1948
  %t1950 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 18
  %t1951 = load i64, ptr %l20, !tbaa !24
  store i64 %t1951, ptr %t1950, !tbaa !24
  %t1952 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 19
  %t1953 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l21
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1953, ptr %t1952
  %t1954 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 20
  %t1955 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l22
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1955, ptr %t1954
  %t1956 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 21
  %t1957 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l23
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1957, ptr %t1956
  %t1958 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 22
  %t1959 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l24
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1959, ptr %t1958
  %t1960 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 23
  %t1961 = load i32, ptr %l25, !tbaa !23
  store i32 %t1961, ptr %t1960, !tbaa !23
  %t1962 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 24
  %t1963 = load i64, ptr %l26, !tbaa !24
  store i64 %t1963, ptr %t1962, !tbaa !24
  %t1964 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 25
  %t1965 = load %"compiler/source:Span", ptr %l27
  store %"compiler/source:Span" %t1965, ptr %t1964
  %t1966 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 26
  %t1967 = load i32, ptr %l28, !tbaa !23
  store i32 %t1967, ptr %t1966, !tbaa !23
  %t1968 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 27
  %t1969 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l29
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1969, ptr %t1968
  %t1970 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 28
  %t1971 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l30
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1971, ptr %t1970
  %t1972 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 29
  %t1973 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l31
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1973, ptr %t1972
  %t1974 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 30
  %t1975 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l32
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1975, ptr %t1974
  %t1976 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 31
  %t1977 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l33
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1977, ptr %t1976
  %t1978 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 32
  %t1979 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l34
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1979, ptr %t1978
  %t1980 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 33
  %t1981 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l35
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1981, ptr %t1980
  %t1982 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 34
  %t1983 = load %"compiler/source:Span", ptr %l36
  store %"compiler/source:Span" %t1983, ptr %t1982
  %t1984 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 35
  %t1985 = load i1, ptr %l37, !tbaa !21
  store i1 %t1985, ptr %t1984, !tbaa !21
  %t1986 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 36
  %t1987 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l38
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1987, ptr %t1986
  %t1988 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 37
  %t1989 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l39
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1989, ptr %t1988
  %t1990 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 38
  %t1991 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l40
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1991, ptr %t1990
  %t1992 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 39
  %t1993 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l41
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1993, ptr %t1992
  %t1994 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 40
  %t1995 = load i1, ptr %l42, !tbaa !21
  store i1 %t1995, ptr %t1994, !tbaa !21
  %t1996 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 41
  %t1997 = load i64, ptr %l43, !tbaa !24
  store i64 %t1997, ptr %t1996, !tbaa !24
  %t1998 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 42
  %t1999 = load i32, ptr %l44, !tbaa !23
  store i32 %t1999, ptr %t1998, !tbaa !23
  %t2000 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 43
  %t2001 = load i1, ptr %l45, !tbaa !21
  store i1 %t2001, ptr %t2000, !tbaa !21
  %t2002 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 44
  %t2003 = load i1, ptr %l46, !tbaa !21
  store i1 %t2003, ptr %t2002, !tbaa !21
  %t2004 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 45
  %t2005 = load %"compiler/source:Span", ptr %l47
  store %"compiler/source:Span" %t2005, ptr %t2004
  %t2006 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 46
  %t2007 = load %"compiler/source:Span", ptr %l48
  store %"compiler/source:Span" %t2007, ptr %t2006
  %t2008 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 47
  %t2009 = load %"compiler/source:Span", ptr %l49
  store %"compiler/source:Span" %t2009, ptr %t2008
  %t2010 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 48
  %t2011 = load %"compiler/source:Span", ptr %l50
  store %"compiler/source:Span" %t2011, ptr %t2010
  %t2012 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 49
  %t2013 = load %"compiler/source:Span", ptr %l51
  store %"compiler/source:Span" %t2013, ptr %t2012
  %t2014 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 50
  %t2015 = load { i64, ptr }, ptr %l52, !tbaa !27
  store { i64, ptr } %t2015, ptr %t2014, !tbaa !27
  %t2016 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 51
  %t2017 = load i32, ptr %l53, !tbaa !23
  store i32 %t2017, ptr %t2016, !tbaa !23
  %t2018 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 52
  %t2019 = load i32, ptr %l54, !tbaa !23
  store i32 %t2019, ptr %t2018, !tbaa !23
  %t2020 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 53
  %t2021 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l55
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2021, ptr %t2020
  %t2022 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 54
  %t2023 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l56
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2023, ptr %t2022
  %t2024 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 55
  %t2025 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l57
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2025, ptr %t2024
  %t2026 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 56
  %t2027 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l58
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2027, ptr %t2026
  %t2028 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 57
  %t2029 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l59
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2029, ptr %t2028
  %t2030 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 58
  %t2031 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l60
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2031, ptr %t2030
  %t2032 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 59
  %t2033 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l61
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2033, ptr %t2032
  %t2034 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 60
  %t2035 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l62
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2035, ptr %t2034
  %t2036 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 61
  %t2037 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l63
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2037, ptr %t2036
  %t2038 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 62
  %t2039 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l64
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2039, ptr %t2038
  %t2040 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 63
  %t2041 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l65
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2041, ptr %t2040
  %t2042 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 64
  %t2043 = load i1, ptr %l66, !tbaa !21
  store i1 %t2043, ptr %t2042, !tbaa !21
  %t2044 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 65
  %t2045 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l67
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2045, ptr %t2044
  %t2046 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 66
  %t2047 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l68
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2047, ptr %t2046
  %t2048 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 67
  %t2049 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l69
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2049, ptr %t2048
  %t2050 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 68
  %t2051 = load i1, ptr %l70, !tbaa !21
  store i1 %t2051, ptr %t2050, !tbaa !21
  %t2052 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 69
  %t2053 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l71
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2053, ptr %t2052
  %t2054 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 70
  %t2055 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l72
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2055, ptr %t2054
  %t2056 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 71
  %t2057 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l73
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2057, ptr %t2056
  %t2058 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 72
  %t2059 = load i64, ptr %l74, !tbaa !24
  store i64 %t2059, ptr %t2058, !tbaa !24
  %t2060 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 73
  %t2061 = load i1, ptr %l75, !tbaa !21
  store i1 %t2061, ptr %t2060, !tbaa !21
  %t2062 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 74
  %t2063 = load i64, ptr %l76, !tbaa !24
  store i64 %t2063, ptr %t2062, !tbaa !24
  %t2064 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 75
  %t2065 = load i64, ptr %l77, !tbaa !24
  store i64 %t2065, ptr %t2064, !tbaa !24
  %t2066 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 76
  %t2067 = load i1, ptr %l78, !tbaa !21
  store i1 %t2067, ptr %t2066, !tbaa !21
  %t2068 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 77
  %t2069 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l79
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2069, ptr %t2068
  %t2070 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 78
  %t2071 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l80
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2071, ptr %t2070
  %t2072 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 79
  %t2073 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l81
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2073, ptr %t2072
  %t2074 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 80
  %t2075 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l82
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2075, ptr %t2074
  %t2076 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 81
  %t2077 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l83
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2077, ptr %t2076
  %t2078 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 82
  %t2079 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l84
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2079, ptr %t2078
  %t2080 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 83
  %t2081 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l85
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2081, ptr %t2080
  %t2082 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 84
  %t2083 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l86
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2083, ptr %t2082
  %t2084 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 85
  %t2085 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l87
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2085, ptr %t2084
  %t2086 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 86
  %t2087 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l88
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2087, ptr %t2086
  %t2088 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 87
  %t2089 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l89
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2089, ptr %t2088
  %t2090 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 88
  %t2091 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l90
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2091, ptr %t2090
  %t2092 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 89
  %t2093 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l91
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2093, ptr %t2092
  %t2094 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 90
  %t2095 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l92
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2095, ptr %t2094
  %t2096 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 91
  %t2097 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l93
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2097, ptr %t2096
  %t2098 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 92
  %t2099 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l94
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2099, ptr %t2098
  %t2100 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 93
  %t2101 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l95
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2101, ptr %t2100
  %t2102 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 94
  %t2103 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l96
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2103, ptr %t2102
  %t2104 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 95
  %t2105 = load i1, ptr %l97, !tbaa !21
  store i1 %t2105, ptr %t2104, !tbaa !21
  %t2106 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 96
  %t2107 = load i1, ptr %l98, !tbaa !21
  store i1 %t2107, ptr %t2106, !tbaa !21
  %t2108 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 97
  %t2109 = load i1, ptr %l99, !tbaa !21
  store i1 %t2109, ptr %t2108, !tbaa !21
  %t2110 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 98
  %t2111 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l100
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2111, ptr %t2110
  %t2112 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 99
  %t2113 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l101
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2113, ptr %t2112
  %t2114 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 100
  %t2115 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l102
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2115, ptr %t2114
  %t2116 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 101
  %t2117 = load i1, ptr %l103, !tbaa !21
  store i1 %t2117, ptr %t2116, !tbaa !21
  %t2118 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 102
  %t2119 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l104
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2119, ptr %t2118
  %t2120 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 103
  %t2121 = load i1, ptr %l105, !tbaa !21
  store i1 %t2121, ptr %t2120, !tbaa !21
  %t2122 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 104
  %t2123 = load i64, ptr %l106, !tbaa !24
  store i64 %t2123, ptr %t2122, !tbaa !24
  %t2124 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 105
  %t2125 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l107
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2125, ptr %t2124
  %t2126 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 106
  %t2127 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l108
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2127, ptr %t2126
  %t2128 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 107
  %t2129 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l109
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2129, ptr %t2128
  %t2130 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 108
  %t2131 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l110
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2131, ptr %t2130
  %t2132 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 109
  %t2133 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l111
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2133, ptr %t2132
  %t2134 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 110
  %t2135 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l112
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2135, ptr %t2134
  %t2136 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 111
  %t2137 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l113
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2137, ptr %t2136
  %t2138 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 112
  %t2139 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l114
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2139, ptr %t2138
  %t2140 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 113
  %t2141 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l115
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2141, ptr %t2140
  %t2142 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 114
  %t2143 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l116
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2143, ptr %t2142
  %t2144 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 115
  %t2145 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l117
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2145, ptr %t2144
  %t2146 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 116
  %t2147 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l118
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2147, ptr %t2146
  %t2148 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 117
  %t2149 = load i64, ptr %l119, !tbaa !24
  store i64 %t2149, ptr %t2148, !tbaa !24
  %t2150 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 118
  %t2151 = load i64, ptr %l120, !tbaa !24
  store i64 %t2151, ptr %t2150, !tbaa !24
  %t2152 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 119
  %t2153 = load i64, ptr %l121, !tbaa !24
  store i64 %t2153, ptr %t2152, !tbaa !24
  %t2154 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 120
  %t2155 = load i64, ptr %l122, !tbaa !24
  store i64 %t2155, ptr %t2154, !tbaa !24
  %t2156 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 121
  %t2157 = load i64, ptr %l123, !tbaa !24
  store i64 %t2157, ptr %t2156, !tbaa !24
  %t2158 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 122
  %t2159 = load i64, ptr %l124, !tbaa !24
  store i64 %t2159, ptr %t2158, !tbaa !24
  %t2160 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 123
  %t2161 = load i64, ptr %l125, !tbaa !24
  store i64 %t2161, ptr %t2160, !tbaa !24
  %t2162 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 124
  %t2163 = load i64, ptr %l126, !tbaa !24
  store i64 %t2163, ptr %t2162, !tbaa !24
  %t2164 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 125
  %t2165 = load i1, ptr %l127, !tbaa !21
  store i1 %t2165, ptr %t2164, !tbaa !21
  %t2166 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 126
  %t2167 = load i1, ptr %l128, !tbaa !21
  store i1 %t2167, ptr %t2166, !tbaa !21
  %t2168 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 127
  %t2169 = load i1, ptr %l129, !tbaa !21
  store i1 %t2169, ptr %t2168, !tbaa !21
  %t2170 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 128
  %t2171 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l130
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2171, ptr %t2170
  %t2172 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 129
  %t2173 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l131
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2173, ptr %t2172
  %t2174 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 130
  %t2175 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l132
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2175, ptr %t2174
  %t2176 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 131
  %t2177 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l133
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2177, ptr %t2176
  %t2178 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 132
  %t2179 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l134
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2179, ptr %t2178
  %t2180 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 133
  %t2181 = load i1, ptr %l135, !tbaa !21
  store i1 %t2181, ptr %t2180, !tbaa !21
  %t2182 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 134
  %t2183 = load i1, ptr %l136, !tbaa !21
  store i1 %t2183, ptr %t2182, !tbaa !21
  %t2184 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 135
  %t2185 = load i64, ptr %l137, !tbaa !24
  store i64 %t2185, ptr %t2184, !tbaa !24
  %t2186 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 136
  %t2187 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l138
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2187, ptr %t2186
  %t2188 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 137
  %t2189 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l139
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2189, ptr %t2188
  %t2190 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 138
  %t2191 = load i64, ptr %l140, !tbaa !24
  store i64 %t2191, ptr %t2190, !tbaa !24
  %t2192 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 139
  %t2193 = load i1, ptr %l141, !tbaa !21
  store i1 %t2193, ptr %t2192, !tbaa !21
  %t2194 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 140
  %t2195 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l142
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2195, ptr %t2194
  %t2196 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 141
  %t2197 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l143
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2197, ptr %t2196
  %t2198 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 142
  %t2199 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l144
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2199, ptr %t2198
  %t2200 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 143
  %t2201 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l145
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2201, ptr %t2200
  %t2202 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 144
  %t2203 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l146
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2203, ptr %t2202
  %t2204 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 145
  %t2205 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l147
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2205, ptr %t2204
  %t2206 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 146
  %t2207 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l148
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2207, ptr %t2206
  %t2208 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 147
  %t2209 = load i1, ptr %l149, !tbaa !21
  store i1 %t2209, ptr %t2208, !tbaa !21
  %t2210 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 148
  %t2211 = load i1, ptr %l150, !tbaa !21
  store i1 %t2211, ptr %t2210, !tbaa !21
  %t2212 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 149
  %t2213 = load i1, ptr %l151, !tbaa !21
  store i1 %t2213, ptr %t2212, !tbaa !21
  %t2214 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 150
  %t2215 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l152
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2215, ptr %t2214
  %t2216 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 151
  %t2217 = load i1, ptr %l153, !tbaa !21
  store i1 %t2217, ptr %t2216, !tbaa !21
  %t2218 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 152
  %t2219 = load %"std/prelude/text:StringBuilder", ptr %l154
  store %"std/prelude/text:StringBuilder" %t2219, ptr %t2218
  %t2220 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 153
  %t2221 = load i1, ptr %l155, !tbaa !21
  store i1 %t2221, ptr %t2220, !tbaa !21
  %t2222 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 154
  %t2223 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l156
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2223, ptr %t2222
  %t2224 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 155
  %t2225 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l157
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2225, ptr %t2224
  %t2226 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 156
  %t2227 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l158
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2227, ptr %t2226
  %t2228 = getelementptr %"compiler/check:Checker", ptr %l464, i32 0, i32 157
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1913, ptr %t2228
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l464, i64 5248, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/check:altsCovered" @compiler_2fcheck_3aaltsCovered_2ector(ptr %v0, ptr %v1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a0, i1 %a1, i1 %a2, i1 %a3) #0 {
entry:
  %rv = alloca %"compiler/check:altsCovered"
  br label %start
start:
  br label %bb0
bb0:
  %t10 = insertvalue %"compiler/check:altsCovered" undef, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a0, 0
  %t12 = insertvalue %"compiler/check:altsCovered" %t10, i1 %a1, 1
  %t14 = insertvalue %"compiler/check:altsCovered" %t12, i1 %a2, 2
  %t16 = insertvalue %"compiler/check:altsCovered" %t14, i1 %a3, 3
  %t18 = insertvalue %"compiler/check:altsCovered" %t16, i1 false, 4
  store %"compiler/check:altsCovered" %t18, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:altsCovered", ptr %rv
  ret %"compiler/check:altsCovered" %rr
}

define dso_local %"compiler/check:idleCall" @compiler_2fcheck_3aidleCall_2ector(ptr %v0, ptr %v1, ptr %v2, i64 %a0, i64 %a1, %"compiler/source:Span" %a2, { i64, ptr } %a3, ptr %a4) #0 {
entry:
  %rv = alloca %"compiler/check:idleCall"
  br label %start
start:
  br label %bb0
bb0:
  %t12 = insertvalue %"compiler/check:idleCall" undef, i64 %a0, 0
  %t14 = insertvalue %"compiler/check:idleCall" %t12, i64 %a1, 1
  %t16 = insertvalue %"compiler/check:idleCall" %t14, %"compiler/source:Span" %a2, 2
  %t18 = insertvalue %"compiler/check:idleCall" %t16, { i64, ptr } %a3, 3
  %t20 = insertvalue %"compiler/check:idleCall" %t18, ptr %a4, 4
  store %"compiler/check:idleCall" %t20, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:idleCall", ptr %rv
  ret %"compiler/check:idleCall" %rr
}

define dso_local %"compiler/check:roArg" @compiler_2fcheck_3aroArg_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, i64 %a0, i64 %a1, { i64, [3 x i64] } %a2, { i64, ptr } %a3, { i64, ptr } %a4, { i64, ptr } %a5) #0 {
entry:
  %rv = alloca %"compiler/check:roArg"
  br label %start
start:
  br label %bb0
bb0:
  %t14 = insertvalue %"compiler/check:roArg" undef, i64 %a0, 0
  %t16 = insertvalue %"compiler/check:roArg" %t14, i64 %a1, 1
  %t18 = insertvalue %"compiler/check:roArg" %t16, { i64, [3 x i64] } %a2, 2
  %t20 = insertvalue %"compiler/check:roArg" %t18, { i64, ptr } %a3, 3
  %t22 = insertvalue %"compiler/check:roArg" %t20, { i64, ptr } %a4, 4
  %t24 = insertvalue %"compiler/check:roArg" %t22, { i64, ptr } %a5, 5
  store %"compiler/check:roArg" %t24, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:roArg", ptr %rv
  ret %"compiler/check:roArg" %rr
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
@.d0 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"a test" }>, align 8
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
@.d1 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"a constructor" }>, align 8
@.d2 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"a destructor" }>, align 8
@.d3 = private constant <{ i64, [30 x i8] }> <{ i64 0, [30 x i8] c"a lambda or a generator's body" }>, align 8
@.d4 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"here" }>, align 8
@.d5 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c"an export fn, which C calls" }>, align 8
@.d6 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"main" }>, align 8
@.d7 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"main" }>, align 8
@.d8 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d9 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"here" }>, align 8
declare void @__olang_check_failed(ptr) cold noreturn
@.d10 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d11 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"s" }>, align 8
@__olang_empty_array = external constant [16 x i64]
@.d12 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I64" }>, align 8
@.d13 = private constant <{ i64, [34 x i8] }> <{ i64 0, [34 x i8] c"a function the checker cannot find" }>, align 8
@.d14 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"F64" }>, align 8
@.d15 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"U64" }>, align 8
declare ptr @__olang_scope_of(ptr, ptr) noinline
@.d16 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c".Len()" }>, align 8
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
@.d17 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"Array" }>, align 8
@.d18 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"try" }>, align 8
@.d19 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"std/prelude/array" }>, align 8
@.d20 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"ArrayError" }>, align 8
@.d21 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"OutOfRange" }>, align 8
@.d22 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d23 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" ? " }>, align 8
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
@.d24 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d25 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"<" }>, align 8
@.d26 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c">" }>, align 8
@.d27 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"<I64>" }>, align 8
@.d28 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"Value" }>, align 8
@.d29 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"'Value'" }>, align 8
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

@olang_2esole_2ecompiler_2fcheck_3aframe_2e4 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
declare void @__olang_region_drop(ptr) noinline
@.d30 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Sum" }>, align 8
@.d31 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Min" }>, align 8
@.d32 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Max" }>, align 8
@.d33 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Some" }>, align 8
@.d34 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"Every" }>, align 8
@.d35 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"LanesEqual" }>, align 8
@.d36 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"LanesLess" }>, align 8
@.d37 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"Select" }>, align 8
@olang_2esole_2ecompiler_2fcheck_3aChecker_2e15 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcheck_3aChecker_2e17 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcheck_3aChecker_2e19 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcheck_3aChecker_2e20 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ector(ptr %v0)
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

@olang_2esole_2ecompiler_2fcheck_3aChecker_2e21 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20I64_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20I64_3e_2ector(ptr %v0)
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

@olang_2esole_2ecompiler_2fcheck_3aChecker_2e22 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcheck_3aChecker_2e27 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcheck_3aChecker_2e28 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_Ha679347de08598409825f08e1f70cb0e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20compiler_2ftypes_3aTypeId_3e_2ector(ptr %v0)
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

@olang_2esole_2ecompiler_2fcheck_3aChecker_2e29 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcheck_3aChecker_2e30 = weak hidden constant i1 false
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

@olang_2esole_2ecompiler_2fcheck_3aChecker_2e31 = weak hidden constant i1 false
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

@olang_2esole_2ecompiler_2fcheck_3aChecker_2e32 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_Ha2d2b8fd05526b0fff2aee14fc193d17(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20compiler_2fsource_3aSpan_3e_2ector(ptr %v0)
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

@olang_2esole_2ecompiler_2fcheck_3aChecker_2e33 = weak hidden constant i1 false
@.d38 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2fcheck_3aChecker_2e53 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fcheck_3arawTable_26_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fcheck_3arawTable_26_3e_2ector(ptr %v0)
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

@olang_2esole_2ecompiler_2fcheck_3aChecker_2e54 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcheck_3aChecker_2e55 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftypes_3aListId_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftypes_3aListId_3e_2ector(ptr %v0)
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

@olang_2esole_2ecompiler_2fcheck_3aChecker_2e56 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcheck_3aChecker_2e57 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcheck_3aChecker_2e58 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_H921f32905926c1e0ead43da4a44f7b3d(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20compiler_2ftypes_3aListId_3e_2ector(ptr %v0)
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

@olang_2esole_2ecompiler_2fcheck_3aChecker_2e59 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcheck_3aChecker_2e60 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcheck_3aChecker_2e61 = weak hidden constant i1 false
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

@olang_2esole_2ecompiler_2fcheck_3aChecker_2e63 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcheck_3aChecker_2e65 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcheck_3aChecker_2e66 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcheck_3aChecker_2e67 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcheck_3aChecker_2e69 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcheck_3aChecker_2e70 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_2ector(ptr %v0)
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

@olang_2esole_2ecompiler_2fcheck_3aChecker_2e71 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcheck_3aChecker_2e77 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcheck_3aChecker_2e78 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcheck_3aChecker_2e79 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcheck_3aChecker_2e80 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_Hfe3238fcb2ade77d245307fab149464a(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20compiler_2fsource_3aNameId_3e_2ector(ptr %v0)
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

@olang_2esole_2ecompiler_2fcheck_3aChecker_2e81 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_H0b3f6ff85c841d79e39d4e4d4ddeea35(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20compiler_2fcheck_3aroOrigin_3e_2ector(ptr %v0)
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

@olang_2esole_2ecompiler_2fcheck_3aChecker_2e83 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcheck_3aChecker_2e84 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_Hafb5854e4b40025d032cfb7bd955fdd6(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20std_2fprelude_2fvec_H2e44743f10bee47c9f5386f757b87bf0(ptr %v0)
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

@olang_2esole_2ecompiler_2fcheck_3aChecker_2e88 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcheck_3aChecker_2e93 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcheck_3aChecker_2e94 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fdiag_3aWhere_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fdiag_3aWhere_3e_2ector(ptr %v0)
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

@olang_2esole_2ecompiler_2fcheck_3aChecker_2e99 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcheck_3aChecker_2e102 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcheck_3aChecker_2e105 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcheck_3aChecker_2e107 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcheck_3aChecker_2e109 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcheck_3aChecker_2e110 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcheck_3aChecker_2e112 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcheck_3aChecker_2e113 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcheck_3aChecker_2e115 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcheck_3aChecker_2e116 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_2ector(ptr %v0)
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

@olang_2esole_2ecompiler_2fcheck_3aChecker_2e128 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aContractInfo_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aContractInfo_3e_2ector(ptr %v0)
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

@olang_2esole_2ecompiler_2fcheck_3aChecker_2e129 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcheck_3aChecker_2e131 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcheck_3aChecker_2e132 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcheck_3aChecker_2e136 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fsource_3aSpan_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fsource_3aSpan_3e_2ector(ptr %v0)
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

@olang_2esole_2ecompiler_2fcheck_3aChecker_2e137 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcheck_3aChecker_2e140 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_H83a40c854ac540921110879766bd79fd(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20compiler_2fcheck_3afixedInit_3e_2ector(ptr %v0)
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

@olang_2esole_2ecompiler_2fcheck_3aChecker_2e142 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcheck_3aChecker_2e143 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcheck_3aChecker_2e144 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcheck_3aChecker_2e145 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcheck_3aChecker_2e146 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcheck_3aChecker_2e150 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcheck_3aChecker_2e152 = weak hidden constant i1 false
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

@olang_2esole_2ecompiler_2fcheck_3aChecker_2e154 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcheck_3aChecker_2e155 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcheck_3aChecker_2e157 = weak hidden constant i1 false
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
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebodyErrors(ptr %v0, ptr %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ector(ptr %v0, i64 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBind_26_3e_2eLen_3ccompiler_2ftyped_3aBind_26_3e(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBind_26_3e_2eAt_3ccompiler_2ftyped_3aBind_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/typed:Local" @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eLocal(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eLen_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eAt_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAltBindsOtherNames(ptr %v0)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, %"compiler/diagmsg:Msg" %a2)
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aPattern_2eSpan(ptr %v0, ptr %a0)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePayloadOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextType(ptr %v0, ptr %a0)
@G_2ecompiler_2ftypes_2eReadOnly = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v1, ptr %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorWords(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eenumCase(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i32 %a3, i32 %a4, { i64, ptr } %a5, { i64, ptr } %a6)
@G_2ecompiler_2ftypes_2eVoidT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i32 %a3, ptr %a4, ptr %a5)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_f81894e5c7369345_c463cf9fb70b97d1 = external constant [0 x i8]
declare %"compiler/check:ownerAt" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eownerOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBuilderOf(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i1 %a3)
@olang_loc_5d13064994ae0ba3_8fd3ca0506e03b5f = external constant [0 x i8]
@olang_loc_7e33472f03e5a723_adcfc8d4e22973ef = external constant [0 x i8]
@olang_loc_d27f09f1ed434aae_8d18f82803f9a31a = external constant [0 x i8]
declare { i32, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eitemOf(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eStructPatPositional(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebadItem(ptr %v0, ptr %v1, ptr %a0, i1 %a1, %"compiler/source:Span" %a2, ptr %a3)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePatPositionAfterName(ptr %v0)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enameAt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eWholeCaseNamed(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i64 @compiler_2fcheck_2enameIndex(ptr %v0, { i64, ptr } %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efieldReadable(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enoItemField(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePatFieldBothWays(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePatFieldTwice(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eArgCount(ptr %v0, ptr %v1, i64 %a0, { i64, ptr } %a1, i64 %a2)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esite(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
declare %"compiler/typed:Call" @compiler_2ftyped_3aCall_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i32 %a2, i1 %a3, i1 %a4)
declare ptr @compiler_2fcheck_2eunwrapped(ptr %v0, ptr %v1, ptr %a0)
declare ptr @compiler_2fcheck_2ereadPlace(ptr %v0, ptr %v1, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aCapture_26_3e_2eLen_H3aff79531665083e8df6fb2351948096(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aCapture_26_3e_2eAt__H223e9cc5a62bb13aec2c4037d58f7975(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_3fa0bc2758d24028_39c102aa9b869b2c = external constant [0 x i8]
@olang_loc_386bb7dc57d3fef9_468931e243621ddd = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eanyDeclaresNames(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@olang_loc_35a8764184624626_7069e8aee12fde2 = external constant [0 x i8]
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisStruct(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDestructs(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eallWords(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrWords(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eMember(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclFor(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eErrorAsResult(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_8058995779d73e9c_6a6c2092014b34b0 = external constant [0 x i8]
declare i32 @compiler_2feffects_2eFact_2eNamed(ptr %v0, { i64, ptr } %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eEffects(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/effects:Facts" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eOfExtern(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2feffects_2ecompiler_2feffects_3aFacts_2eHolds(ptr %v0, ptr %a0, i32 %a1)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/effects:Facts" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eOf(ptr %v0, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v0, ptr %a0)
declare i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %a0)
@olang_loc_98ce29d556b624b0_f7d4e217aacf6834 = external constant [0 x i8]
declare %"compiler/typed:Seq" @compiler_2ftyped_3aSeq_2ector(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, ptr %a1, i1 %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropsGone(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i64 %a2)
declare { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCaseNames(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNeedsDrop(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2_H2251bc8fca359ca0394d0bb11af7ba0a(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
@G_2ecompiler_2ftypes_2eWritable = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/typed:Promote" @compiler_2ftyped_3aPromote_2ector(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eholdsWritableAt(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSpreadAt(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egatherVariadic(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, { i64, ptr } %a2, %"compiler/source:Span" %a3)
declare i1 @compiler_2fcheck_2ehasNamed(ptr %v0, { i64, ptr } %a0)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enamedArgs(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %v0, ptr %v1, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %a0)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnIsExtern(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetOrder(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecallBody(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i32 %a3, ptr %a4, i64 %a5, ptr %a6, { i64, ptr } %a7, { i64, ptr } %a8)
declare i64 @compiler_2fgeneric_2eFnOwner(i64 %a0)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnInstance(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efnBody(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceSig(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunspreadAll(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare %"compiler/generic:Binding" @compiler_2fgeneric_3aBinding_2ector(ptr %v0, i64 %a0, i64 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunify(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, ptr %a3, i1 %a4, i1 %a5)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_3f_26_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare i1 @compiler_2fcheck_2ecallLike(ptr %v0, ptr %a0)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2espread(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i1 @compiler_2fast_2ecompiler_2fast_3aExpr_2eIsGathered(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evariadicUnify(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, i32 %a2, ptr %a3)
declare %"compiler/check:litv" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efold(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitLike(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitFloat(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitU64(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eboundParam(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i64 %a2, ptr %a3)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
@olang_loc_47b75a606f91649b_c44fdf7beb312f17 = external constant [0 x i8]
@G_2ecompiler_2ftypes_2eNoreturnT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\11\00\00\00" }>, align 8
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebindType(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_3f_26_3e_2ePus_H0c70e9e86794aea54789ff5f3987086b(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eliteralBinding(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, i64 %a1, ptr %a2, { i64, ptr } %a3, i64 %a4, { i64, ptr } %a5)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInferThroughBounds(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2fcheck_2elambdaOf(ptr %v0, ptr %v1, ptr %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_34f0859ec847e603_4707f982674ed52f = external constant [0 x i8]
@olang_loc_6c515d21a4eb8282_6a1200b8d363d17e = external constant [0 x i8]
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eresolve(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunifySoft(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, ptr %a3)
@olang_loc_c452b680572d0969_27f0c48facb3ae25 = external constant [0 x i8]
@olang_loc_90fff669659753f0_5cdd43b51dc6a454 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_bb28b69c09369b55_697a1a86cf6d98a1 = external constant [0 x i8]
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrVarAt(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eVar(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i64 %a3)
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v0, ptr %a0)
@olang_loc_5a8c9496fbc2a69e_a7d03ac53ab89be2 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSubst(ptr %v0, ptr %a0, i32 %a1, i64 %a2, i32 %a3)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elambda(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i32 %a3)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnifyErrors(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, ptr %a3)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_3f_26_3e_2eSet_H54ebfdc15a9c097858a2e264494e7d5a(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edefaultBinds(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, i64 %a2, i64 %a3, { i64, ptr } %a4, i64 %a5, i1 %a6, ptr %a7)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrSetOf(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_3f_26_3e_2eLen_Hc575045927fec77698bb4606712f5690(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_3f_26_3e_2eAt__H2e4a6474e10b73ca754517844b8d7700(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earrayOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eA(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eB(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRunLength(ptr %v0, ptr %a0)
@olang_loc_bbc6ff9b49c776cb_b2202ad52bef7037 = external constant [0 x i8]
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evarsIn(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i64 %a2, { i64, ptr } %a3, i64 %a4)
declare %"compiler/generic:varRow" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarAt(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeVarNotInferable(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLengthNotInferable(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeArgsNotInferable(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebound(ptr %v0, ptr %a0, i64 %a1, i32 %a2, %"compiler/source:Span" %a3)
declare { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eat(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnboundedInstantiation(ptr %v0)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrorOncePerLine(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2)
declare { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efnNameAt(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnTooDeep(ptr %v0, ptr %a0, i64 %a1, i32 %a2, { i64, [3 x i64] } %a3)
declare %"compiler/generic:Origin" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eorigin(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einstancesMet(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elistMentions(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elambdaErrs(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
@olang_loc_f2400520286f812c_d0a82b3f931d6b40 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eExtends(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econvert(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i32 %a3)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %v0, i64 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMembers(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclParams(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %a0, i32 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_He6be2b0836caba7ddc59483ff74db438(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknownType(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i32 %a2)
declare { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_Hfd0413fe7fd4e5914f6cad5b418b7a6d(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsErrVar(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eErrVarNotType(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etraitWritten(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efuncNamed(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v0, ptr %a0)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFuncDeclBare(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eforeignNamed(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eForeignByValue(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eGenerational(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenByValue(ptr %v0, ptr %v1, ptr %a0, ptr %a1, %"compiler/source:Span" %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeArgCountMet(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, %"compiler/names:Ref" %a3)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eArrayTooManyArgs(ptr %v0, i64 %a0)
declare i1 @compiler_2fgeneric_2eIsErrsArgOf(ptr %v0, ptr %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeArgMet(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eownBuffer(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunendedArgs(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i32 %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTryNothingFails(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v0, ptr %a0)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNullable(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eSpan(ptr %v0, ptr %a0)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fcheck_2ebangOf(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReadMaybeNull(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epreludeWord(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeDecl(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_cc787edf2deeff46_6db42fab5d8ba9ba = external constant [0 x i8]
@olang_loc_ca5f636100c98fd4_9c6d5a533441f8c8 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_3e_2ePus_H7d1143c374f11cf9cab67f1e79e7bcb4(ptr %v0, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_3e_2eJoin(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBuilderOwnerBare(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erawsOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoRawValues(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTakesNoArgs(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalue(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, %"compiler/source:Span" %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erawOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i64 %a3)
@olang_loc_ae47705a59a44e66_359fd7be25172bfa = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eheldOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eBoolT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i64 %a3)
declare %"compiler/typed:Cond" @compiler_2ftyped_3aCond_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2)
declare i1 @compiler_2fcheck_2erefWrittenTop(ptr %v0, ptr %a0)
@olang_loc_58f5ed8d4062e7cf_cb67a99e0ba25c43 = external constant [0 x i8]
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNumber(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elengthsMeet(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fast_3aPattern_26_3e_H06f4ae43b564aa38800728c5b9a6edfe(ptr %v0, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fast_3aPattern_26_3e_Hb04d670045d084ea2498d9030c4fbba9(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eshapeOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
@olang_loc_207369a2ec6f9fee_7129d1e6d10224a2 = external constant [0 x i8]
@olang_loc_3d307812d0489f63_908317b964e2b157 = external constant [0 x i8]
declare %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eKeys_3cI64_2c_20Bool_3e(ptr %v0, ptr %v1, ptr %a0)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapKeyIter_3cI64_2c_20Bool_3e_2eNext_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %a0)
declare void @compiler_2ftyped_2eDropHolding_2eJudged(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__H7b6d4eff6fc9c3821aae8b284e12e095(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2ftyped_2ecompiler_2ftyped_3aDropHolding_2eHolds(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i1 @compiler_2fcheck_2eregisteredBefore(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropCycle(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2, i64 %a3)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropRegistered(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i64 %a3)
declare { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eTextOf(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_acadf2af31b93e38_18751a402ed16b84 = external constant [0 x i8]
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHoldsRefs(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_5f447d0cb8af3524_fdbf87197f7ceb70 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAnyTrait(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsAny(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAnyNotConverted(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etyOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeMismatch(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eanyMeets(ptr %v0, ptr %a0, i32 %a1, i32 %a2, %"compiler/source:Span" %a3)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eanyTable(ptr %v0, ptr %a0, i32 %a1, i32 %a2, %"compiler/source:Span" %a3)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eNullable = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eanyCopies(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAnyStored(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/typed:Make" @compiler_2ftyped_3aMake_2ector(ptr %v0, ptr %v1, ptr %v2, i32 %a0, i64 %a1, { i64, ptr } %a2, ptr %a3, i32 %a4, i32 %a5, i1 %a6)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eCount(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aGap_3e_2eLen_3ccompiler_2fcheck_3aGap_3e(ptr %v0, ptr %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i32 %a3, i32 %a4, i64 %a5, i1 %a6, i32 %a7, i64 %a8)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enewBody(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, i32 %a2, i64 %a3, %"compiler/source:Span" %a4)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epush(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, i32 %a3, i32 %a4)
declare void @compiler_2fgeneric_3aContext_2ector(ptr %out, ptr %v0, i64 %a0, i64 %a1)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eAddBlock(ptr %v0, ptr %a0, i32 %a1, i32 %a2, %"compiler/source:Span" %a3)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econd1(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare %"compiler/typed:Block" @compiler_2ftyped_3aBlock_2ector(ptr %v0, ptr %v1, i32 %a0, { i64, ptr } %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edrain(ptr %v0, ptr %a0)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehidden(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i32 %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egeneratorCall(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2ePush_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/check:heldCand" @compiler_2fcheck_3aheldCand_2ector(ptr %v0, i64 %a0, i64 %a1, i64 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aheldCand_3e_2ePush_3ccompiler_2fcheck_3aheldCand_3e(ptr %v0, ptr %a0, %"compiler/check:heldCand" %a1)
@olang_loc_b35f41bb006554d6_a1d87dcad76a5f72 = external constant [0 x i8]
@olang_loc_943678799cf3b8f7_240de00f13c53f3 = external constant [0 x i8]
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopen(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i64 %a2)
@olang_loc_dcf5b9aec39ad50b_4fa64d0de79beb7f = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eloopCall(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, i64 %a2, ptr %a3, { i64, ptr } %a4)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexhaustedOrBreak(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i64 %a3)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eelementLocals(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i64 %a3, ptr %a4)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewalkBody(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i32 %a3)
declare { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclose(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, i64 %a3, i64 %a4)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecountPost(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i64 %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclKind(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCtorSig(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_679df2ab066560af_73bde1caf560602b = external constant [0 x i8]
declare %"compiler/check:litv" @compiler_2fcheck_3alitv_2ector(ptr %v0, i1 %a0, i1 %a1, i1 %a2, i64 %a3, double %a4)
declare void @compiler_2fcheck_2estoredIn(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1)
declare void @compiler_2fcheck_2estoredExprs(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aGap_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aatRec_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alaneNode_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3afactRead_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aeffectPlace_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3ainPlaceRead_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alanding_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_2_Hedf46d61a7b7e16110f4585b041de150(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aroArg_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aroFn_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aroDeepArg_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aweakPlace_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aAsk_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aEmbedAsk_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aAssertAsk_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aTopAssertAsk_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3atailAsk_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aValueAsk_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aunsetCand_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aheldCand_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aidleCall_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aContractAsk_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aUnrollAsk_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fsource_3aNameId_2c_20compiler_2ftypes_3aTypeId_3e_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20I64_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20compiler_2ftypes_3aTypeId_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20compiler_2fsource_3aSpan_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fcheck_3arawTable_26_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftypes_3aListId_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20compiler_2ftypes_3aListId_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20Bool_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20compiler_2fsource_3aNameId_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20compiler_2fcheck_3aroOrigin_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20std_2fprelude_2fvec_H2e44743f10bee47c9f5386f757b87bf0(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fdiag_3aWhere_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aContractInfo_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fsource_3aSpan_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20compiler_2fcheck_3afixedInit_3e_2ector(ptr %v0)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)

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
