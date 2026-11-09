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
%"compiler/ast:Match" = type { %"compiler/source:Span", ptr, i1, { i64, ptr } }
%"compiler/check:Checker" = type { ptr, ptr, i1, i1, i1, i1, i64, i64, i1, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, { i64, [3 x i64] }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i32, i64, %"compiler/source:Span", i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/source:Span", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i32, i1, i1, %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, i32, i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, i64, i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/text:StringBuilder", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/ast:Func" = type { %"compiler/source:Span", ptr, i32, ptr, { i64, ptr }, { i64, ptr }, i1, i1, { i64, ptr }, ptr, i32 }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/load:Import" = type { %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, { i64, ptr }, i64, i64, { i64, ptr }, %"compiler/source:Span" }
%"compiler/names:Ref" = type { i32, i64, i64 }
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr } }
%"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" = type { i64, i64 }
%"compiler/check:frame" = type { i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/generic:Context", i32, i32, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i32, i64, i64, i64, i1, i64, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, i64, i64, i64, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/source:Span", i64, i1 }
%"compiler/generic:Context" = type { i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/check:laneVals" = type { i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/check:laneNode" = type { i64, i32, %"compiler/source:Span", %"compiler/source:Span", i64, i64, i64, ptr, i32, i64, i32 }
%"compiler/typed:Elem" = type { ptr, ptr, i32 }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/ast:VarDecl" = type { { i64, ptr }, { i64, ptr }, ptr, { i64, ptr }, i1, i1, { i64, ptr }, i1 }
%"compiler/typed:Call" = type { ptr, { i64, ptr }, i32, i1, i1 }
%"compiler/typed:Cond" = type { ptr, ptr, ptr }
%"compiler/typed:Seq" = type { { i64, ptr }, ptr, i1 }
%"compiler/typed:Make" = type { i32, i64, { i64, ptr }, ptr, i32, i32, i1 }
%"compiler/source:Source" = type { { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/ast:Path" = type { %"compiler/source:Span", { i64, ptr } }
%"compiler/typed:Local" = type { i32, %"compiler/source:Span", i32, i32, i32, { i64, [1 x i64] }, i1, i1 }
%"compiler/typed:ContractInfo" = type { { i64, ptr }, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/check:ctSource" = type { ptr, ptr, { i64, ptr }, i64, { i64, ptr } }
%"compiler/ast:ContractBlock" = type { %"compiler/source:Span", { i64, ptr } }
%"compiler/typed:Join" = type { ptr, i1, { i64, ptr } }
%"compiler/ast:JoinS" = type { i1, { i64, ptr }, { i64, ptr } }
%"compiler/typed:Clause" = type { %"compiler/source:Span", { i64, ptr }, i1, ptr, { i64, ptr }, i64, i32 }
%"compiler/check:litv" = type { i1, i1, i1, i64, double, i1, i1, i1, i128 }
%"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" = type { ptr, i64 }
%"compiler/typed:Payload" = type { ptr, i64, i32 }
%"compiler/check:narrowed" = type { i64, i64, i32, i64, i64, i1 }
%"compiler/ast:TypeDecl" = type { i32, { i64, ptr }, i1, ptr, { i64, ptr }, i32, i1 }
%"compiler/typed:Slice" = type { ptr, ptr, ptr, i32 }
%"compiler/typed:Text" = type { { i64, ptr }, i32 }
%"compiler/ast:Catch" = type { %"compiler/source:Span", { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i32, %"compiler/source:Span" }
define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ealtTest(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca ptr
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca i1
  %l15 = alloca ptr
  %l16 = alloca i1
  %l24 = alloca i1
  %l38 = alloca ptr
  %l39 = alloca i1
  %l51 = alloca ptr
  %rv = alloca ptr
  %t53 = alloca { i64, [4 x i64] }, align 8
  %t73 = alloca { i64, [4 x i64] }, align 8
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  store ptr %t1, ptr %l7, !tbaa !29
  store i1 false, ptr %l8, !tbaa !21
  %t2 = load ptr, ptr %l7, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l7, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 9}
  %t8 = icmp eq i64 %t6, 1
  store i1 %t8, ptr %l8, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l8, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l2, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", ptr }, ptr %t12, i32 0, i32 0
  %t14 = load %"compiler/source:Span", ptr %t13
  store %"compiler/source:Span" %t14, ptr %l3
  %t16 = load ptr, ptr %l2, !tbaa !29
  %t18 = getelementptr { i64, [4 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", ptr }, ptr %t18, i32 0, i32 1
  %t20 = load ptr, ptr %t19
  store ptr %t20, ptr %l4, !tbaa !29
  br label %bb9
bb4:
  %t22 = load ptr, ptr %l2, !tbaa !29
  store ptr %t22, ptr %l15, !tbaa !29
  store i1 false, ptr %l16, !tbaa !21
  %t23 = load ptr, ptr %l15, !tbaa !29
  %t24 = icmp ne ptr %t23, null
  br i1 %t24, label %bb5, label %bb6
bb5:
  %t26 = load ptr, ptr %l15, !tbaa !29
  %t27 = load i64, ptr %t26, !range !{i64 0, i64 9}
  %t29 = icmp eq i64 %t27, 4
  store i1 %t29, ptr %l16, !tbaa !21
  br label %bb6
bb6:
  %t30 = load i1, ptr %l16, !tbaa !21
  br i1 %t30, label %bb7, label %bb8
bb7:
  %t31 = load ptr, ptr %l2, !tbaa !29
  %t33 = getelementptr { i64, [4 x i64] }, ptr %t31, i32 0, i32 1
  %t34 = getelementptr { %"compiler/source:Span", ptr }, ptr %t33, i32 0, i32 0
  %t35 = load %"compiler/source:Span", ptr %t34
  store %"compiler/source:Span" %t35, ptr %l3
  %t37 = load ptr, ptr %l2, !tbaa !29
  %t39 = getelementptr { i64, [4 x i64] }, ptr %t37, i32 0, i32 1
  %t40 = getelementptr { %"compiler/source:Span", ptr }, ptr %t39, i32 0, i32 1
  %t41 = load ptr, ptr %t40
  store ptr %t41, ptr %l4, !tbaa !29
  br label %bb9
bb8:
  br label %bb14
bb9:
  %t43 = load ptr, ptr %l4, !tbaa !29
  %t45 = call i1 @compiler_2fcheck_2eisNullLit(ptr %v2, ptr %t43)
  store i1 %t45, ptr %l24
  br label %bb10
bb10:
  %t46 = load i1, ptr %l24, !tbaa !21
  br i1 %t46, label %bb11, label %bb12
bb11:
  %t47 = load %"compiler/source:Span", ptr %l3
  %t48 = load ptr, ptr %l1, !tbaa !29
  %t50 = getelementptr %"compiler/ast:Match", ptr %t48, i32 0, i32 1
  %t51 = load ptr, ptr %t50, !tbaa !29
  %t52 = load ptr, ptr %l4, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t53
  %t54 = getelementptr { i64, [4 x i64] }, ptr %t53, i32 0, i32 0
  store i64 10, ptr %t54
  %t56 = insertvalue { %"compiler/source:Span", ptr, ptr, i1 } undef, %"compiler/source:Span" %t47, 0
  %t58 = insertvalue { %"compiler/source:Span", ptr, ptr, i1 } %t56, ptr %t51, 1
  %t60 = insertvalue { %"compiler/source:Span", ptr, ptr, i1 } %t58, ptr %t52, 2
  %t61 = insertvalue { %"compiler/source:Span", ptr, ptr, i1 } %t60, i1 false, 3
  %t62 = getelementptr { i64, [4 x i64] }, ptr %t53, i32 0, i32 1
  store { %"compiler/source:Span", ptr, ptr, i1 } %t61, ptr %t62
  %t63 = load { i64, [4 x i64] }, ptr %t53
  %t65 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 40, i64 8)
  store { i64, [4 x i64] } %t63, ptr %t65
  store ptr %t65, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  %t67 = load %"compiler/source:Span", ptr %l3
  %t68 = load ptr, ptr %l1, !tbaa !29
  %t70 = getelementptr %"compiler/ast:Match", ptr %t68, i32 0, i32 1
  %t71 = load ptr, ptr %t70, !tbaa !29
  %t72 = load ptr, ptr %l4, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t73
  %t74 = getelementptr { i64, [4 x i64] }, ptr %t73, i32 0, i32 0
  store i64 5, ptr %t74
  %t76 = insertvalue { %"compiler/source:Span", i32, ptr, ptr } undef, %"compiler/source:Span" %t67, 0
  %t78 = insertvalue { %"compiler/source:Span", i32, ptr, ptr } %t76, i32 94, 1
  %t80 = insertvalue { %"compiler/source:Span", i32, ptr, ptr } %t78, ptr %t71, 2
  %t82 = insertvalue { %"compiler/source:Span", i32, ptr, ptr } %t80, ptr %t72, 3
  %t83 = getelementptr { i64, [4 x i64] }, ptr %t73, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr, ptr } %t82, ptr %t83
  %t84 = load { i64, [4 x i64] }, ptr %t73
  %t86 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 40, i64 8)
  store { i64, [4 x i64] } %t84, ptr %t86
  store ptr %t86, ptr %rv
  br label %ret
bb14:
  %t88 = load ptr, ptr %l2, !tbaa !29
  store ptr %t88, ptr %l38, !tbaa !29
  store i1 false, ptr %l39, !tbaa !21
  %t89 = load ptr, ptr %l38, !tbaa !29
  %t90 = icmp ne ptr %t89, null
  br i1 %t90, label %bb15, label %bb16
bb15:
  %t92 = load ptr, ptr %l38, !tbaa !29
  %t93 = load i64, ptr %t92, !range !{i64 0, i64 9}
  %t95 = icmp eq i64 %t93, 2
  store i1 %t95, ptr %l39, !tbaa !21
  br label %bb16
bb16:
  %t96 = load i1, ptr %l39, !tbaa !21
  br i1 %t96, label %bb17, label %bb18
bb17:
  %t97 = load ptr, ptr %l2, !tbaa !29
  %t99 = getelementptr { i64, [4 x i64] }, ptr %t97, i32 0, i32 1
  %t100 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t99, i32 0, i32 0
  %t101 = load %"compiler/source:Span", ptr %t100
  store %"compiler/source:Span" %t101, ptr %l5
  %t103 = load ptr, ptr %l2, !tbaa !29
  %t105 = getelementptr { i64, [4 x i64] }, ptr %t103, i32 0, i32 1
  %t106 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t105, i32 0, i32 1
  %t107 = load ptr, ptr %t106
  store ptr %t107, ptr %l6, !tbaa !29
  br label %bb19
bb18:
  br label %bb21
bb19:
  %t110 = load ptr, ptr %l1, !tbaa !29
  %t111 = load ptr, ptr %l2, !tbaa !29
  %t112 = load %"compiler/source:Span", ptr %l5
  %t113 = load ptr, ptr %l6, !tbaa !29
  %t119 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epayloadTest(ptr %v0, ptr %v1, ptr %v2, ptr %v2, ptr %v3, ptr %a0, ptr %t110, ptr %t111, %"compiler/source:Span" %t112, ptr %t113)
  store ptr %t119, ptr %l51
  br label %bb20
bb20:
  %t120 = load ptr, ptr %l51, !tbaa !29
  store ptr %t120, ptr %rv
  br label %ret
bb21:
  br i1 true, label %bb22, label %bb23
bb22:
  br label %bb24
bb23:
  br label %bb25
bb24:
  store ptr null, ptr %rv
  br label %ret
bb25:
  call void @__olang_check_failed(ptr @olang_loc_3116a02a3ef5f1f4_ec4eb607c1d67c00)
  unreachable
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eatCallee(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca ptr
  %l6 = alloca i64
  %l11 = alloca ptr
  %l15 = alloca i64
  %l16 = alloca ptr
  %l21 = alloca i1
  %l25 = alloca { i64, ptr }
  %l26 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecalledInst(ptr %v0, ptr %v1, ptr %t1, ptr %a1)
  store i64 %t5, ptr %l6
  br label %bb1
bb1:
  %t6 = load i64, ptr %l6, !tbaa !24
  store i64 %t6, ptr %l2, !tbaa !24
  %t7 = load i64, ptr %l2, !tbaa !24
  %t9 = icmp slt i64 %t7, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/check:Checker", ptr %t12, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !29
  store ptr %t15, ptr %l11, !tbaa !29
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/check:Checker", ptr %t16, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !29
  %t20 = load i64, ptr %l2, !tbaa !24
  %t23 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %t19, i64 %t20)
  store i64 %t23, ptr %l15
  br label %bb5
bb5:
  %t24 = load ptr, ptr %l11, !tbaa !29
  %t25 = load i64, ptr %l15, !tbaa !24
  %t26 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t24, i64 %t25)
  store ptr %t26, ptr %l16
  br label %bb6
bb6:
  %t27 = load ptr, ptr %l16, !tbaa !29
  store ptr %t27, ptr %l3, !tbaa !29
  %t28 = load ptr, ptr %l3, !tbaa !29
  %t30 = getelementptr %"compiler/ast:Func", ptr %t28, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t33 = icmp eq ptr %t31, null
  %t35 = xor i1 %t33, true
  br i1 %t35, label %bb7, label %bb8
bb7:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load ptr, ptr %l3, !tbaa !29
  %t40 = getelementptr %"compiler/ast:Func", ptr %t38, i32 0, i32 2
  %t41 = load i32, ptr %t40, !tbaa !23
  %t44 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t37, i32 %t41)
  store { i64, ptr } %t44, ptr %l25
  br label %bb9
bb8:
  store i1 false, ptr %l21, !tbaa !21
  br label %bb11
bb9:
  %t45 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t46 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t45, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d0, i32 0, i32 1) })
  store i1 %t46, ptr %l26
  br label %bb10
bb10:
  %t47 = load i1, ptr %l26, !tbaa !21
  store i1 %t47, ptr %l21, !tbaa !21
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s0)
  %t48 = load i1, ptr %l21, !tbaa !21
  store i1 %t48, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eattrTypeOk(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca i32
  %l6 = alloca i1
  %l13 = alloca i32
  %l17 = alloca ptr
  %l22 = alloca i64
  %l23 = alloca ptr
  %l26 = alloca i1
  %l32 = alloca i32
  %l35 = alloca i1
  %l41 = alloca i1
  %l44 = alloca i1
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
  %t5 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t1, i32 %t2)
  store i1 %t5, ptr %l6
  br label %bb1
bb1:
  %t6 = load i1, ptr %l6, !tbaa !21
  %t7 = xor i1 %t6, true
  br i1 %t7, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/check:Checker", ptr %t10, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t15 = getelementptr %"compiler/generic:Program", ptr %t13, i32 0, i32 2
  %t16 = load i32, ptr %l1, !tbaa !23
  %t19 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t15, i32 %t16)
  store i32 %t19, ptr %l13
  br label %bb5
bb5:
  %t20 = load i32, ptr %l13, !tbaa !23
  store i32 %t20, ptr %l2, !tbaa !23
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/check:Checker", ptr %t21, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !29
  %t26 = getelementptr %"compiler/generic:Program", ptr %t24, i32 0, i32 0
  %t27 = load ptr, ptr %t26, !tbaa !29
  %t29 = getelementptr %"compiler/load:Loader", ptr %t27, i32 0, i32 10
  store ptr %t29, ptr %l17, !tbaa !29
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/check:Checker", ptr %t30, i32 0, i32 1
  %t33 = load ptr, ptr %t32, !tbaa !29
  %t35 = getelementptr %"compiler/generic:Program", ptr %t33, i32 0, i32 2
  %t36 = load i32, ptr %l2, !tbaa !23
  %t39 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %t35, i32 %t36)
  store i64 %t39, ptr %l22
  br label %bb6
bb6:
  %t40 = load ptr, ptr %l17, !tbaa !29
  %t41 = load i64, ptr %l22, !tbaa !24
  %t42 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t40, i64 %t41)
  store ptr %t42, ptr %l23
  br label %bb7
bb7:
  %t43 = load ptr, ptr %l23, !tbaa !29
  %t45 = getelementptr %"compiler/load:Module", ptr %t43, i32 0, i32 2
  %t46 = load { i64, ptr }, ptr %t45, !tbaa !27
  %t48 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t46, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d1, i32 0, i32 1) })
  store i1 %t48, ptr %l26
  br label %bb8
bb8:
  %t49 = load i1, ptr %l26, !tbaa !21
  br i1 %t49, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"compiler/check:Checker", ptr %t51, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !29
  %t56 = getelementptr %"compiler/generic:Program", ptr %t54, i32 0, i32 2
  %t57 = load i32, ptr %l2, !tbaa !23
  %t60 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t56, i32 %t57)
  store i32 %t60, ptr %l32
  br label %bb12
bb12:
  %t61 = load i32, ptr %l32, !range !{i32 0, i32 6}
  store i32 %t61, ptr %l3
  %t62 = load i32, ptr %l3, !range !{i32 0, i32 6}
  %t64 = trunc i64 0 to i32
  %t65 = icmp eq i32 %t62, %t64
  br i1 %t65, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l35, !tbaa !21
  br label %bb15
bb14:
  %t67 = load i32, ptr %l3, !range !{i32 0, i32 6}
  %t69 = trunc i64 1 to i32
  %t70 = icmp eq i32 %t67, %t69
  store i1 %t70, ptr %l35, !tbaa !21
  br label %bb15
bb15:
  %t72 = load i1, ptr %l35, !tbaa !21
  br i1 %t72, label %bb16, label %bb17
bb16:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  %t74 = load i32, ptr %l3, !range !{i32 0, i32 6}
  %t76 = trunc i64 4 to i32
  %t77 = icmp eq i32 %t74, %t76
  br i1 %t77, label %bb19, label %bb20
bb19:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t80 = load i32, ptr %l1, !tbaa !23
  %t83 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %t79, i32 %t80)
  store i1 %t83, ptr %l44
  br label %bb21
bb20:
  store i1 false, ptr %l41, !tbaa !21
  br label %bb22
bb21:
  %t84 = load i1, ptr %l44, !tbaa !21
  store i1 %t84, ptr %l41, !tbaa !21
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s0)
  %t85 = load i1, ptr %l41, !tbaa !21
  store i1 %t85, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aModules(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, ptr %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca %"compiler/load:Import"
  %l9 = alloca i1
  %l17 = alloca ptr
  %l20 = alloca i64
  %l22 = alloca i64
  %l27 = alloca %"compiler/load:Import"
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store ptr %a2, ptr %l2
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t5 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v1, ptr %t1, i64 %t2)
  store i1 %t5, ptr %l9
  br label %bb1
bb1:
  %t6 = load i1, ptr %l9, !tbaa !21
  br i1 %t6, label %bb2, label %bb3
bb2:
  br label %ret
bb3:
  br label %bb4
bb4:
  %t7 = load ptr, ptr %l2, !tbaa !29
  %t8 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v1, ptr %t7, i64 %t8, i1 true)
  br label %bb5
bb5:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/check:Checker", ptr %t11, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !29
  %t16 = getelementptr %"compiler/generic:Program", ptr %t14, i32 0, i32 0
  %t17 = load ptr, ptr %t16, !tbaa !29
  %t19 = getelementptr %"compiler/load:Loader", ptr %t17, i32 0, i32 10
  %t20 = load i64, ptr %l1, !tbaa !24
  %t23 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t19, i64 %t20)
  store ptr %t23, ptr %l17
  br label %bb6
bb6:
  %t24 = load ptr, ptr %l17, !tbaa !29
  %t26 = getelementptr %"compiler/load:Module", ptr %t24, i32 0, i32 11
  store ptr %t26, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb7
bb7:
  %t28 = load i64, ptr %l5, !tbaa !24
  store i64 %t28, ptr %l20, !tbaa !24
  %t29 = load ptr, ptr %l4, !tbaa !29
  %t31 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eLen_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %t29)
  store i64 %t31, ptr %l22
  br label %bb8
bb8:
  %t32 = load i64, ptr %l20, !tbaa !24
  %t33 = load i64, ptr %l22, !tbaa !24
  %t34 = icmp slt i64 %t32, %t33
  %t36 = xor i1 %t34, true
  br i1 %t36, label %bb9, label %bb10
bb9:
  br label %bb18
bb10:
  br label %bb11
bb11:
  %t38 = load ptr, ptr %l4, !tbaa !29
  %t39 = load i64, ptr %l5, !tbaa !24
  %t42 = call %"compiler/load:Import" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eAt_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %v0, ptr %t38, i64 %t39)
  store %"compiler/load:Import" %t42, ptr %l27
  br label %bb12
bb12:
  %t43 = load %"compiler/load:Import", ptr %l27
  store %"compiler/load:Import" %t43, ptr %l6
  %t44 = getelementptr %"compiler/load:Import", ptr %l6, i32 0, i32 5
  %t45 = load i64, ptr %t44, !tbaa !24
  %t47 = icmp sge i64 %t45, 0
  br i1 %t47, label %bb13, label %bb14
bb13:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/load:Import", ptr %l6, i32 0, i32 5
  %t51 = load i64, ptr %t50, !tbaa !24
  %t52 = load ptr, ptr %l2, !tbaa !29
  %t53 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aModules(ptr %v0, ptr %v1, ptr %v2, ptr %t49, i64 %t51, ptr %t52, ptr %t53)
  br label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb16
bb16:
  br label %bb17
bb17:
  %t58 = load i64, ptr %l5, !tbaa !24
  %t60 = add i64 %t58, 1
  store i64 %t60, ptr %l5, !tbaa !24
  br label %bb7
bb18:
  %t62 = load ptr, ptr %l3, !tbaa !29
  %t63 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v2, ptr %t62, i64 %t63)
  br label %bb19
bb19:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseName(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca i32
  %l5 = alloca %"compiler/names:Ref"
  %l6 = alloca ptr
  %l7 = alloca i1
  %l10 = alloca i1
  %l12 = alloca ptr
  %l13 = alloca i1
  %l22 = alloca ptr
  %l23 = alloca i1
  %l26 = alloca i1
  %l28 = alloca ptr
  %l29 = alloca i1
  %l40 = alloca ptr
  %l42 = alloca ptr
  %l46 = alloca %"compiler/names:Ref"
  %l49 = alloca ptr
  %l50 = alloca %"compiler/source:Span"
  %l53 = alloca { i64, ptr }
  %l55 = alloca %"compiler/diagmsg:Msg"
  %l56 = alloca i64
  %l58 = alloca ptr
  %l60 = alloca ptr
  %l65 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l69 = alloca i1
  %l72 = alloca i1
  %l75 = alloca i64
  %l78 = alloca ptr
  %l79 = alloca %"compiler/source:Span"
  %l82 = alloca { i64, ptr }
  %l84 = alloca %"compiler/diagmsg:Msg"
  %l85 = alloca i64
  %s2 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 9}
  %t8 = icmp eq i64 %t6, 1
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
  %t19 = load i64, ptr %t18, !range !{i64 0, i64 30}
  %t21 = icmp eq i64 %t19, 0
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
  %t27 = getelementptr { %"compiler/source:Span", ptr }, ptr %t26, i32 0, i32 1
  %t28 = load ptr, ptr %t27
  %t30 = getelementptr { i64, [4 x i64] }, ptr %t28, i32 0, i32 1
  %t31 = getelementptr { %"compiler/source:Span", i32 }, ptr %t30, i32 0, i32 0
  %t32 = load %"compiler/source:Span", ptr %t31
  store %"compiler/source:Span" %t32, ptr %l3
  %t34 = load ptr, ptr %l1, !tbaa !29
  %t36 = getelementptr { i64, [4 x i64] }, ptr %t34, i32 0, i32 1
  %t37 = getelementptr { %"compiler/source:Span", ptr }, ptr %t36, i32 0, i32 1
  %t38 = load ptr, ptr %t37
  %t40 = getelementptr { i64, [4 x i64] }, ptr %t38, i32 0, i32 1
  %t41 = getelementptr { %"compiler/source:Span", i32 }, ptr %t40, i32 0, i32 1
  %t42 = load i32, ptr %t41
  store i32 %t42, ptr %l4, !tbaa !23
  br label %bb19
bb9:
  %t44 = load ptr, ptr %l1, !tbaa !29
  store ptr %t44, ptr %l22, !tbaa !29
  store i1 false, ptr %l23, !tbaa !21
  %t45 = load ptr, ptr %l22, !tbaa !29
  %t46 = icmp ne ptr %t45, null
  br i1 %t46, label %bb10, label %bb11
bb10:
  %t48 = load ptr, ptr %l22, !tbaa !29
  %t49 = load i64, ptr %t48, !range !{i64 0, i64 9}
  %t51 = icmp eq i64 %t49, 4
  store i1 %t51, ptr %l23, !tbaa !21
  br label %bb11
bb11:
  %t52 = load i1, ptr %l23, !tbaa !21
  br i1 %t52, label %bb12, label %bb13
bb12:
  %t53 = load ptr, ptr %l1, !tbaa !29
  %t55 = getelementptr { i64, [4 x i64] }, ptr %t53, i32 0, i32 1
  %t56 = getelementptr { %"compiler/source:Span", ptr }, ptr %t55, i32 0, i32 1
  %t57 = load ptr, ptr %t56
  store ptr %t57, ptr %l28, !tbaa !29
  store i1 false, ptr %l29, !tbaa !21
  %t58 = load ptr, ptr %l28, !tbaa !29
  %t59 = icmp ne ptr %t58, null
  br i1 %t59, label %bb14, label %bb15
bb13:
  store i1 false, ptr %l26, !tbaa !21
  br label %bb16
bb14:
  %t61 = load ptr, ptr %l28, !tbaa !29
  %t62 = load i64, ptr %t61, !range !{i64 0, i64 30}
  %t64 = icmp eq i64 %t62, 0
  store i1 %t64, ptr %l29, !tbaa !21
  br label %bb15
bb15:
  %t65 = load i1, ptr %l29, !tbaa !21
  store i1 %t65, ptr %l26, !tbaa !21
  br label %bb16
bb16:
  %t66 = load i1, ptr %l26, !tbaa !21
  br i1 %t66, label %bb17, label %bb18
bb17:
  %t67 = load ptr, ptr %l1, !tbaa !29
  %t69 = getelementptr { i64, [4 x i64] }, ptr %t67, i32 0, i32 1
  %t70 = getelementptr { %"compiler/source:Span", ptr }, ptr %t69, i32 0, i32 1
  %t71 = load ptr, ptr %t70
  %t73 = getelementptr { i64, [4 x i64] }, ptr %t71, i32 0, i32 1
  %t74 = getelementptr { %"compiler/source:Span", i32 }, ptr %t73, i32 0, i32 0
  %t75 = load %"compiler/source:Span", ptr %t74
  store %"compiler/source:Span" %t75, ptr %l3
  %t77 = load ptr, ptr %l1, !tbaa !29
  %t79 = getelementptr { i64, [4 x i64] }, ptr %t77, i32 0, i32 1
  %t80 = getelementptr { %"compiler/source:Span", ptr }, ptr %t79, i32 0, i32 1
  %t81 = load ptr, ptr %t80
  %t83 = getelementptr { i64, [4 x i64] }, ptr %t81, i32 0, i32 1
  %t84 = getelementptr { %"compiler/source:Span", i32 }, ptr %t83, i32 0, i32 1
  %t85 = load i32, ptr %t84
  store i32 %t85, ptr %l4, !tbaa !23
  br label %bb19
bb18:
  br label %bb44
bb19:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr %"compiler/check:Checker", ptr %t87, i32 0, i32 1
  %t90 = load ptr, ptr %t89, !tbaa !29
  %t92 = getelementptr %"compiler/generic:Program", ptr %t90, i32 0, i32 1
  %t93 = load ptr, ptr %t92, !tbaa !29
  store ptr %t93, ptr %l40, !tbaa !29
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t96 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t94)
  store ptr %t96, ptr %l42
  br label %bb20
bb20:
  %t97 = load ptr, ptr %l42, !tbaa !29
  %t99 = getelementptr %"compiler/check:frame", ptr %t97, i32 0, i32 2
  %t100 = load i64, ptr %t99, !tbaa !24
  %t101 = getelementptr %"compiler/source:Span", ptr %l3, i32 0, i32 0
  %t102 = load i32, ptr %t101, !tbaa !23
  %t103 = load ptr, ptr %l40, !tbaa !29
  %t106 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %t103, i64 %t100, i32 %t102)
  store %"compiler/names:Ref" %t106, ptr %l46
  br label %bb21
bb21:
  %t107 = load %"compiler/names:Ref", ptr %l46
  store %"compiler/names:Ref" %t107, ptr %l5
  %t108 = getelementptr %"compiler/names:Ref", ptr %l5, i32 0, i32 0
  %t109 = load i32, ptr %t108, !range !{i32 0, i32 9}
  %t111 = trunc i64 0 to i32
  %t112 = icmp eq i32 %t109, %t111
  br i1 %t112, label %bb22, label %bb23
bb22:
  store %olang.scope zeroinitializer, ptr %s2
  %t114 = load ptr, ptr %l0, !tbaa !29
  store ptr %t114, ptr %l49, !tbaa !29
  %t115 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t115, ptr %l50
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t117 = load i32, ptr %l4, !tbaa !23
  %t120 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %v0, ptr %t116, i32 %t117)
  store { i64, ptr } %t120, ptr %l53
  br label %bb24
bb23:
  br label %bb30
bb24:
  %t121 = load { i64, ptr }, ptr %l53, !tbaa !27
  %t122 = extractvalue { i64, ptr } %t121, 0
  %t123 = extractvalue { i64, ptr } %t121, 1
  %t124 = mul i64 %t122, 1
  %t125 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t124)
  call void @llvm.memcpy.p0.p0.i64(ptr %t125, ptr %t123, i64 %t124, i1 false)
  %t126 = insertvalue { i64, ptr } undef, i64 %t122, 0
  %t127 = insertvalue { i64, ptr } %t126, ptr %t125, 1
  %t129 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCaseUnknownName(ptr %v0, ptr %v0, { i64, ptr } %t127)
  store %"compiler/diagmsg:Msg" %t129, ptr %l55
  br label %bb25
bb25:
  %t130 = load ptr, ptr %l49, !tbaa !29
  %t131 = load %"compiler/source:Span", ptr %l50
  %t132 = load %"compiler/diagmsg:Msg", ptr %l55
  %t133 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t130, %"compiler/source:Span" %t131, %"compiler/diagmsg:Msg" %t132)
  store i64 %t133, ptr %l56
  br label %bb26
bb26:
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t136 = getelementptr %"compiler/check:Checker", ptr %t134, i32 0, i32 94
  store ptr %t136, ptr %l58, !tbaa !29
  %t137 = load ptr, ptr %l0, !tbaa !29
  %t139 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t137)
  store ptr %t139, ptr %l60
  br label %bb27
bb27:
  %t140 = load ptr, ptr %l60, !tbaa !29
  %t142 = getelementptr %"compiler/check:frame", ptr %t140, i32 0, i32 0
  %t143 = load i64, ptr %t142, !tbaa !24
  %t144 = load i32, ptr %l4, !tbaa !23
  %t146 = sext i32 %t144 to i64
  %t149 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s2, i64 %t143, i64 %t146)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t149, ptr %l65
  br label %bb28
bb28:
  %t150 = load ptr, ptr %l58, !tbaa !29
  %t151 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l65
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1308596c866d4be061d9da9113abde88(ptr %v0, ptr %t150, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t151, i1 true)
  br label %bb29
bb29:
  call void @__olang_scope_close(ptr %s2)
  store i1 true, ptr %rv
  br label %ret
bb30:
  %t153 = getelementptr %"compiler/names:Ref", ptr %l5, i32 0, i32 0
  %t154 = load i32, ptr %t153, !range !{i32 0, i32 9}
  %t156 = trunc i64 1 to i32
  %t157 = icmp eq i32 %t154, %t156
  br i1 %t157, label %bb31, label %bb32
bb31:
  %t159 = load i64, ptr %l2, !tbaa !24
  %t161 = icmp sge i64 %t159, 0
  store i1 %t161, ptr %l69, !tbaa !21
  br label %bb33
bb32:
  store i1 false, ptr %l69, !tbaa !21
  br label %bb33
bb33:
  %t163 = load i1, ptr %l69, !tbaa !21
  br i1 %t163, label %bb34, label %bb35
bb34:
  %t164 = load ptr, ptr %l0, !tbaa !29
  %t165 = load i32, ptr %l4, !tbaa !23
  %t168 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalNamed(ptr %v0, ptr %t164, i32 %t165)
  store i64 %t168, ptr %l75
  br label %bb36
bb35:
  store i1 false, ptr %l72, !tbaa !21
  br label %bb37
bb36:
  %t169 = load i64, ptr %l2, !tbaa !24
  %t170 = load i64, ptr %l75, !tbaa !24
  %t172 = icmp eq i64 %t170, %t169
  store i1 %t172, ptr %l72, !tbaa !21
  br label %bb37
bb37:
  %t174 = load i1, ptr %l72, !tbaa !21
  br i1 %t174, label %bb38, label %bb39
bb38:
  %t175 = load ptr, ptr %l0, !tbaa !29
  store ptr %t175, ptr %l78, !tbaa !29
  %t176 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t176, ptr %l79
  %t177 = load ptr, ptr %l0, !tbaa !29
  %t178 = load i32, ptr %l4, !tbaa !23
  %t181 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %v0, ptr %t177, i32 %t178)
  store { i64, ptr } %t181, ptr %l82
  br label %bb40
bb39:
  br label %bb43
bb40:
  %t182 = load { i64, ptr }, ptr %l82, !tbaa !27
  %t183 = extractvalue { i64, ptr } %t182, 0
  %t184 = extractvalue { i64, ptr } %t182, 1
  %t185 = mul i64 %t183, 1
  %t186 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t185)
  call void @llvm.memcpy.p0.p0.i64(ptr %t186, ptr %t184, i64 %t185, i1 false)
  %t187 = insertvalue { i64, ptr } undef, i64 %t183, 0
  %t188 = insertvalue { i64, ptr } %t187, ptr %t186, 1
  %t190 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCaseIsSubject(ptr %v0, ptr %v0, { i64, ptr } %t188)
  store %"compiler/diagmsg:Msg" %t190, ptr %l84
  br label %bb41
bb41:
  %t191 = load ptr, ptr %l78, !tbaa !29
  %t192 = load %"compiler/source:Span", ptr %l79
  %t193 = load %"compiler/diagmsg:Msg", ptr %l84
  %t194 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t191, %"compiler/source:Span" %t192, %"compiler/diagmsg:Msg" %t193)
  store i64 %t194, ptr %l85
  br label %bb42
bb42:
  store i1 true, ptr %rv
  br label %ret
bb43:
  br label %bb49
bb44:
  br i1 true, label %bb45, label %bb46
bb45:
  br label %bb47
bb46:
  br label %bb48
bb47:
  br label %bb49
bb48:
  call void @__olang_check_failed(ptr @olang_loc_3cf4b7359f29899a_630bdcef83a186)
  unreachable
bb49:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtName(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca i32
  %l7 = alloca i64
  %l9 = alloca i1
  %l11 = alloca ptr
  %l14 = alloca i64
  %l17 = alloca ptr
  %l18 = alloca i1
  %l25 = alloca i64
  %l26 = alloca ptr
  %l27 = alloca i1
  %l36 = alloca ptr
  %l38 = alloca ptr
  %l42 = alloca %"compiler/names:Ref"
  %l49 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 16
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2_H2251bc8fca359ca0394d0bb11af7ba0a(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l7
  br label %bb1
bb1:
  %t6 = load i64, ptr %l7, !tbaa !24
  %t7 = icmp eq i64 %t6, 0
  br i1 %t7, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb6
bb3:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t9)
  store ptr %t11, ptr %l11
  br label %bb4
bb4:
  %t12 = load ptr, ptr %l11, !tbaa !29
  %t14 = getelementptr %"compiler/check:frame", ptr %t12, i32 0, i32 57
  %t16 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aerrBind_3e_2eLen_3ccompiler_2fcheck_3aerrBind_3e(ptr %v0, ptr %t14)
  store i64 %t16, ptr %l14
  br label %bb5
bb5:
  %t17 = load i64, ptr %l14, !tbaa !24
  %t18 = icmp eq i64 %t17, 0
  store i1 %t18, ptr %l9, !tbaa !21
  br label %bb6
bb6:
  %t20 = load i1, ptr %l9, !tbaa !21
  br i1 %t20, label %bb7, label %bb8
bb7:
  store i64 -1, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t22 = load ptr, ptr %l1, !tbaa !29
  store ptr %t22, ptr %l17, !tbaa !29
  store i1 false, ptr %l18, !tbaa !21
  %t23 = load ptr, ptr %l17, !tbaa !29
  %t24 = icmp ne ptr %t23, null
  br i1 %t24, label %bb10, label %bb11
bb10:
  %t26 = load ptr, ptr %l17, !tbaa !29
  %t27 = load i64, ptr %t26, !range !{i64 0, i64 30}
  %t29 = icmp eq i64 %t27, 2
  store i1 %t29, ptr %l18, !tbaa !21
  br label %bb11
bb11:
  %t30 = load i1, ptr %l18, !tbaa !21
  br i1 %t30, label %bb12, label %bb13
bb12:
  %t31 = load ptr, ptr %l1, !tbaa !29
  %t33 = getelementptr { i64, [4 x i64] }, ptr %t31, i32 0, i32 1
  %t34 = getelementptr { %"compiler/source:Span", ptr }, ptr %t33, i32 0, i32 1
  %t35 = load ptr, ptr %t34
  store ptr %t35, ptr %l2, !tbaa !29
  br label %bb14
bb13:
  br label %bb16
bb14:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load ptr, ptr %l2, !tbaa !29
  %t41 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtName(ptr %v0, ptr %v1, ptr %t37, ptr %t38)
  store i64 %t41, ptr %l25
  br label %bb15
bb15:
  %t42 = load i64, ptr %l25, !tbaa !24
  store i64 %t42, ptr %rv
  br label %ret
bb16:
  %t43 = load ptr, ptr %l1, !tbaa !29
  store ptr %t43, ptr %l26, !tbaa !29
  store i1 false, ptr %l27, !tbaa !21
  %t44 = load ptr, ptr %l26, !tbaa !29
  %t45 = icmp ne ptr %t44, null
  br i1 %t45, label %bb17, label %bb18
bb17:
  %t47 = load ptr, ptr %l26, !tbaa !29
  %t48 = load i64, ptr %t47, !range !{i64 0, i64 30}
  %t50 = icmp eq i64 %t48, 0
  store i1 %t50, ptr %l27, !tbaa !21
  br label %bb18
bb18:
  %t51 = load i1, ptr %l27, !tbaa !21
  br i1 %t51, label %bb19, label %bb20
bb19:
  %t52 = load ptr, ptr %l1, !tbaa !29
  %t54 = getelementptr { i64, [4 x i64] }, ptr %t52, i32 0, i32 1
  %t55 = getelementptr { %"compiler/source:Span", i32 }, ptr %t54, i32 0, i32 0
  %t56 = load %"compiler/source:Span", ptr %t55
  store %"compiler/source:Span" %t56, ptr %l3
  %t58 = load ptr, ptr %l1, !tbaa !29
  %t60 = getelementptr { i64, [4 x i64] }, ptr %t58, i32 0, i32 1
  %t61 = getelementptr { %"compiler/source:Span", i32 }, ptr %t60, i32 0, i32 1
  %t62 = load i32, ptr %t61
  store i32 %t62, ptr %l4, !tbaa !23
  br label %bb21
bb20:
  br label %bb28
bb21:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/check:Checker", ptr %t64, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !29
  %t69 = getelementptr %"compiler/generic:Program", ptr %t67, i32 0, i32 1
  %t70 = load ptr, ptr %t69, !tbaa !29
  store ptr %t70, ptr %l36, !tbaa !29
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t71)
  store ptr %t73, ptr %l38
  br label %bb22
bb22:
  %t74 = load ptr, ptr %l38, !tbaa !29
  %t76 = getelementptr %"compiler/check:frame", ptr %t74, i32 0, i32 2
  %t77 = load i64, ptr %t76, !tbaa !24
  %t78 = getelementptr %"compiler/source:Span", ptr %l3, i32 0, i32 0
  %t79 = load i32, ptr %t78, !tbaa !23
  %t80 = load ptr, ptr %l36, !tbaa !29
  %t83 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %t80, i64 %t77, i32 %t79)
  store %"compiler/names:Ref" %t83, ptr %l42
  br label %bb23
bb23:
  %t84 = getelementptr %"compiler/names:Ref", ptr %l42, i32 0, i32 0
  %t85 = load i32, ptr %t84, !range !{i32 0, i32 9}
  %t87 = trunc i64 1 to i32
  %t88 = icmp eq i32 %t85, %t87
  %t90 = xor i1 %t88, true
  br i1 %t90, label %bb24, label %bb25
bb24:
  store i64 -1, ptr %rv
  br label %ret
bb25:
  br label %bb26
bb26:
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t94 = load i32, ptr %l4, !tbaa !23
  %t97 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtNamed(ptr %v0, ptr %t93, i32 %t94)
  store i64 %t97, ptr %l49
  br label %bb27
bb27:
  %t98 = load i64, ptr %l49, !tbaa !24
  store i64 %t98, ptr %rv
  br label %ret
bb28:
  br i1 true, label %bb29, label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb32
bb31:
  store i64 -1, ptr %rv
  br label %ret
bb32:
  call void @__olang_check_failed(ptr @olang_loc_f18babf7f50c335e_33607163d02cbb5a)
  unreachable
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecolumnStore(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca %"compiler/check:laneVals"
  %l9 = alloca ptr
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca { i64, i64, i64, i64, i64 }
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca ptr
  %l20 = alloca ptr
  %l22 = alloca i32
  %l23 = alloca i32
  %l26 = alloca i32
  %l30 = alloca i64
  %l31 = alloca ptr
  %l35 = alloca ptr
  %l36 = alloca i64
  %l40 = alloca %"compiler/check:laneNode"
  %l44 = alloca %"compiler/check:laneVals"
  %l52 = alloca ptr
  %l53 = alloca %"compiler/source:Span"
  %l55 = alloca i32
  %l56 = alloca i32
  %l60 = alloca ptr
  %l61 = alloca ptr
  %l65 = alloca %"compiler/check:laneNode"
  %l71 = alloca i64
  %l76 = alloca ptr
  %l81 = alloca ptr
  %l82 = alloca %"compiler/source:Span"
  %l84 = alloca i32
  %l85 = alloca i32
  %l86 = alloca i32
  %l90 = alloca { i64, ptr }
  %l93 = alloca ptr
  %l94 = alloca %"compiler/source:Span"
  %l96 = alloca i32
  %l97 = alloca i64
  %l106 = alloca ptr
  %l107 = alloca %"compiler/source:Span"
  %l111 = alloca ptr
  %l112 = alloca { i64, i64, i64, i64, i64 }
  %l118 = alloca ptr
  %l119 = alloca ptr
  %l120 = alloca ptr
  %l121 = alloca %"compiler/source:Span"
  %l122 = alloca i64
  %l123 = alloca ptr
  %l127 = alloca ptr
  %l128 = alloca ptr
  %l129 = alloca i32
  %l131 = alloca %"compiler/source:Span"
  %l132 = alloca ptr
  %l133 = alloca ptr
  %l134 = alloca %"compiler/source:Span"
  %l135 = alloca i32
  %l139 = alloca ptr
  %l142 = alloca ptr
  %l143 = alloca %"compiler/source:Span"
  %l144 = alloca %"compiler/source:Span"
  %l145 = alloca i32
  %l146 = alloca ptr
  %l150 = alloca ptr
  %l152 = alloca %"compiler/typed:Elem"
  %s0 = alloca %olang.scope
  %t132 = alloca { i64, [5 x i64] }, align 8
  %t166 = alloca { i64, [3 x i64] }, align 8
  %t249 = alloca { i64, [4 x i64] }, align 8
  %t280 = alloca { i64, [4 x i64] }, align 8
  %t293 = alloca { i64, [3 x i64] }, align 8
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
  store ptr %t1, ptr %l20, !tbaa !29
  %t2 = load ptr, ptr %l2, !tbaa !29
  %t4 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t2)
  store i32 %t4, ptr %l22
  br label %bb1
bb1:
  %t5 = load ptr, ptr %l20, !tbaa !29
  %t6 = load i32, ptr %l22, !tbaa !23
  %t7 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t5, i32 %t6)
  store i32 %t7, ptr %l23
  br label %bb2
bb2:
  %t8 = load i32, ptr %l23, !tbaa !23
  store i32 %t8, ptr %l4, !tbaa !23
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load i32, ptr %l4, !tbaa !23
  %t13 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneElemOf(ptr %v0, ptr %t9, i32 %t10)
  store i32 %t13, ptr %l26
  br label %bb3
bb3:
  %t14 = load i32, ptr %l26, !tbaa !23
  store i32 %t14, ptr %l5, !tbaa !23
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load %"compiler/source:Span", ptr %l1
  %t17 = load ptr, ptr %l2, !tbaa !29
  %t21 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneTarget(ptr %v0, ptr %v1, ptr %t15, %"compiler/source:Span" %t16, ptr %t17)
  store i64 %t21, ptr %l30
  br label %bb4
bb4:
  %t22 = load i64, ptr %l30, !tbaa !24
  store i64 %t22, ptr %l6, !tbaa !24
  %t23 = load ptr, ptr %l0, !tbaa !29
  store ptr %t23, ptr %l31, !tbaa !29
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t25 = load ptr, ptr %l3, !tbaa !29
  %t26 = load i32, ptr %l5, !tbaa !23
  %t30 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneArg(ptr %v0, ptr %v2, ptr %v0, ptr %t24, ptr %t25, i32 %t26)
  store ptr %t30, ptr %l35
  br label %bb5
bb5:
  %t31 = load ptr, ptr %l31, !tbaa !29
  %t32 = load ptr, ptr %l35, !tbaa !29
  %t33 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneLeaf(ptr %v0, ptr %v0, ptr %t31, ptr %t32)
  store i64 %t33, ptr %l36
  br label %bb6
bb6:
  %t34 = load i64, ptr %l36, !tbaa !24
  store i64 %t34, ptr %l7, !tbaa !24
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/check:Checker", ptr %t35, i32 0, i32 39
  %t38 = load i64, ptr %l7, !tbaa !24
  %t41 = call %"compiler/check:laneNode" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alaneNode_3e_2eAt_3ccompiler_2fcheck_3alaneNode_3e(ptr %v0, ptr %s0, ptr %t37, i64 %t38)
  store %"compiler/check:laneNode" %t41, ptr %l40
  br label %bb7
bb7:
  %t42 = getelementptr %"compiler/check:laneNode", ptr %l40, i32 0, i32 8
  %t43 = load i32, ptr %t42, !tbaa !23
  %t44 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t47 = icmp eq i32 %t43, %t44
  br i1 %t47, label %bb8, label %bb9
bb8:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb9:
  br label %bb10
bb10:
  %t49 = call %"compiler/check:laneVals" @compiler_2fcheck_3alaneVals_2ector(ptr %s0)
  store %"compiler/check:laneVals" %t49, ptr %l44
  br label %bb11
bb11:
  %t50 = load %"compiler/check:laneVals", ptr %l44
  store %"compiler/check:laneVals" %t50, ptr %l8
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t52 = load i64, ptr %l7, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneHoldLeaves(ptr %v0, ptr %s0, ptr %t51, i64 %t52, ptr %l8)
  br label %bb12
bb12:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t57 = load %"compiler/source:Span", ptr %l1
  %t58 = load i64, ptr %l7, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneLength(ptr %v0, ptr %s0, ptr %t56, %"compiler/source:Span" %t57, i64 %t58, ptr %l8)
  br label %bb13
bb13:
  %t63 = load ptr, ptr %l0, !tbaa !29
  store ptr %t63, ptr %l52, !tbaa !29
  %t64 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t64, ptr %l53
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t65)
  store i32 %t67, ptr %l55
  br label %bb14
bb14:
  store i32 22, ptr %l56
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t69 = load %"compiler/source:Span", ptr %l1
  %t70 = load i64, ptr %l6, !tbaa !24
  %t74 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t68, %"compiler/source:Span" %t69, i64 %t70)
  store ptr %t74, ptr %l60
  br label %bb15
bb15:
  %t75 = load ptr, ptr %l52, !tbaa !29
  %t76 = load %"compiler/source:Span", ptr %l53
  %t77 = load i32, ptr %l55, !tbaa !23
  %t78 = load i32, ptr %l56, !range !{i32 0, i32 52}
  %t79 = load ptr, ptr %l60, !tbaa !29
  %t80 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %t75, %"compiler/source:Span" %t76, i32 %t77, i32 %t78, ptr %t79, ptr null)
  store ptr %t80, ptr %l61
  br label %bb16
bb16:
  %t81 = load ptr, ptr %l61, !tbaa !29
  store ptr %t81, ptr %l9, !tbaa !29
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t84 = getelementptr %"compiler/check:Checker", ptr %t82, i32 0, i32 39
  %t85 = load i64, ptr %l7, !tbaa !24
  %t88 = call %"compiler/check:laneNode" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alaneNode_3e_2eAt_3ccompiler_2fcheck_3alaneNode_3e(ptr %v0, ptr %s0, ptr %t84, i64 %t85)
  store %"compiler/check:laneNode" %t88, ptr %l65
  br label %bb17
bb17:
  %t89 = getelementptr %"compiler/check:laneNode", ptr %l65, i32 0, i32 0
  %t90 = load i64, ptr %t89, !tbaa !24
  %t91 = load i64, ptr @G_2ecompiler_2fcheck_2eLaneScalar, !tbaa !24
  %t94 = icmp ne i64 %t90, %t91
  br i1 %t94, label %bb18, label %bb19
bb18:
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t98 = getelementptr %"compiler/check:Checker", ptr %t96, i32 0, i32 36
  %t100 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t98)
  store i64 %t100, ptr %l71
  br label %bb20
bb19:
  br label %bb26
bb20:
  %t101 = load i64, ptr %l71, !tbaa !24
  store i64 %t101, ptr %l10, !tbaa !24
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t104 = getelementptr %"compiler/check:Checker", ptr %t102, i32 0, i32 36
  %t105 = load ptr, ptr %l9, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t104, ptr %t105)
  br label %bb21
bb21:
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t110 = getelementptr %"compiler/check:Checker", ptr %t108, i32 0, i32 36
  store ptr %t110, ptr %l76, !tbaa !29
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t112 = load %"compiler/source:Span", ptr %l1
  %t113 = load i64, ptr %l7, !tbaa !24
  %t118 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneCount(ptr %v0, ptr %s0, ptr %v0, ptr %t111, %"compiler/source:Span" %t112, i64 %t113, ptr %l8)
  store ptr %t118, ptr %l81
  br label %bb22
bb22:
  %t119 = load ptr, ptr %l76, !tbaa !29
  %t120 = load ptr, ptr %l81, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t119, ptr %t120)
  br label %bb23
bb23:
  %t121 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t121, ptr %l82
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t124 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t122)
  store i32 %t124, ptr %l84
  br label %bb24
bb24:
  store i32 38, ptr %l85
  store i32 1, ptr %l86
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t127 = getelementptr %"compiler/check:Checker", ptr %t125, i32 0, i32 36
  %t128 = load i64, ptr %l10, !tbaa !24
  %t131 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t127, i64 %t128)
  store { i64, ptr } %t131, ptr %l90
  br label %bb25
bb25:
  store { i64, [5 x i64] } zeroinitializer, ptr %t132
  %t133 = getelementptr { i64, [5 x i64] }, ptr %t132, i32 0, i32 0
  store i64 9, ptr %t133
  %t134 = load %"compiler/source:Span", ptr %l82
  %t135 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } undef, %"compiler/source:Span" %t134, 0
  %t136 = load i32, ptr %l84, !tbaa !23
  %t137 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t135, i32 %t136, 1
  %t138 = load i32, ptr %l85, !range !{i32 0, i32 52}
  %t139 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t137, i32 %t138, 2
  %t140 = load i32, ptr %l86, !range !{i32 0, i32 3}
  %t141 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t139, i32 %t140, 3
  %t142 = load { i64, ptr }, ptr %l90, !tbaa !27
  %t143 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t141, { i64, ptr } %t142, 4
  %t144 = getelementptr { i64, [5 x i64] }, ptr %t132, i32 0, i32 1
  store { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t143, ptr %t144
  %t145 = load { i64, [5 x i64] }, ptr %t132
  %t147 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 48, i64 8)
  store { i64, [5 x i64] } %t145, ptr %t147
  store ptr %t147, ptr %l9, !tbaa !29
  br label %bb26
bb26:
  %t149 = load ptr, ptr %l0, !tbaa !29
  store ptr %t149, ptr %l93, !tbaa !29
  %t150 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t150, ptr %l94
  %t151 = load ptr, ptr %l0, !tbaa !29
  %t153 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t151)
  store i32 %t153, ptr %l96
  br label %bb27
bb27:
  %t154 = load ptr, ptr %l93, !tbaa !29
  %t155 = load %"compiler/source:Span", ptr %l94
  %t156 = load i32, ptr %l96, !tbaa !23
  %t157 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehidden(ptr %v0, ptr %t154, %"compiler/source:Span" %t155, i32 %t156)
  store i64 %t157, ptr %l97
  br label %bb28
bb28:
  %t158 = load i64, ptr %l97, !tbaa !24
  store i64 %t158, ptr %l11, !tbaa !24
  %t159 = load ptr, ptr %l0, !tbaa !29
  %t160 = load %"compiler/source:Span", ptr %l1
  %t161 = load i64, ptr %l11, !tbaa !24
  %t163 = trunc i64 %t161 to i32
  %t165 = load ptr, ptr %l9, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t166
  %t167 = getelementptr { i64, [3 x i64] }, ptr %t166, i32 0, i32 0
  store i64 0, ptr %t167
  %t169 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t160, 0
  %t171 = insertvalue { %"compiler/source:Span", i32, ptr } %t169, i32 %t163, 1
  %t173 = insertvalue { %"compiler/source:Span", i32, ptr } %t171, ptr %t165, 2
  %t174 = getelementptr { i64, [3 x i64] }, ptr %t166, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t173, ptr %t174
  %t175 = load { i64, [3 x i64] }, ptr %t166
  %t177 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t175, ptr %t177
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t159, ptr %t177)
  br label %bb29
bb29:
  %t180 = load ptr, ptr %l0, !tbaa !29
  store ptr %t180, ptr %l106, !tbaa !29
  %t181 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t181, ptr %l107
  %t182 = load ptr, ptr %l0, !tbaa !29
  %t183 = load %"compiler/source:Span", ptr %l1
  %t184 = load i64, ptr %l11, !tbaa !24
  %t188 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t182, %"compiler/source:Span" %t183, i64 %t184)
  store ptr %t188, ptr %l111
  br label %bb30
bb30:
  %t189 = load ptr, ptr %l106, !tbaa !29
  %t190 = load %"compiler/source:Span", ptr %l107
  %t191 = load ptr, ptr %l111, !tbaa !29
  %t192 = call { i64, i64, i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneLoopOpen(ptr %v0, ptr %v0, ptr %t189, %"compiler/source:Span" %t190, ptr %t191, i64 0)
  store { i64, i64, i64, i64, i64 } %t192, ptr %l112
  br label %bb31
bb31:
  %t193 = load { i64, i64, i64, i64, i64 }, ptr %l112
  store { i64, i64, i64, i64, i64 } %t193, ptr %l12
  %t194 = getelementptr { i64, i64, i64, i64, i64 }, ptr %l12, i32 0, i32 0
  %t195 = load i64, ptr %t194, !tbaa !24
  store i64 %t195, ptr %l13, !tbaa !24
  %t197 = getelementptr { i64, i64, i64, i64, i64 }, ptr %l12, i32 0, i32 1
  %t198 = load i64, ptr %t197, !tbaa !24
  store i64 %t198, ptr %l14, !tbaa !24
  %t200 = getelementptr { i64, i64, i64, i64, i64 }, ptr %l12, i32 0, i32 2
  %t201 = load i64, ptr %t200, !tbaa !24
  store i64 %t201, ptr %l15, !tbaa !24
  %t203 = getelementptr { i64, i64, i64, i64, i64 }, ptr %l12, i32 0, i32 3
  %t204 = load i64, ptr %t203, !tbaa !24
  store i64 %t204, ptr %l16, !tbaa !24
  %t206 = getelementptr { i64, i64, i64, i64, i64 }, ptr %l12, i32 0, i32 4
  %t207 = load i64, ptr %t206, !tbaa !24
  store i64 %t207, ptr %l17, !tbaa !24
  %t209 = load ptr, ptr %l0, !tbaa !29
  store ptr %t209, ptr %l118, !tbaa !29
  %t210 = load ptr, ptr %l0, !tbaa !29
  store ptr %t210, ptr %l119, !tbaa !29
  %t211 = load ptr, ptr %l0, !tbaa !29
  store ptr %t211, ptr %l120, !tbaa !29
  %t212 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t212, ptr %l121
  %t213 = load i64, ptr %l7, !tbaa !24
  store i64 %t213, ptr %l122, !tbaa !24
  store ptr %l8, ptr %l123, !tbaa !29
  %t214 = load ptr, ptr %l0, !tbaa !29
  %t215 = load %"compiler/source:Span", ptr %l1
  %t216 = load i64, ptr %l13, !tbaa !24
  %t220 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t214, %"compiler/source:Span" %t215, i64 %t216)
  store ptr %t220, ptr %l127
  br label %bb32
bb32:
  %t221 = load ptr, ptr %l120, !tbaa !29
  %t222 = load %"compiler/source:Span", ptr %l121
  %t223 = load i64, ptr %l122, !tbaa !24
  %t224 = load ptr, ptr %l123, !tbaa !29
  %t225 = load ptr, ptr %l127, !tbaa !29
  %t226 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneElem(ptr %v0, ptr %s0, ptr %v0, ptr %v0, ptr %t221, %"compiler/source:Span" %t222, i64 %t223, ptr %t224, ptr %t225)
  store ptr %t226, ptr %l128
  br label %bb33
bb33:
  %t227 = load i32, ptr %l5, !tbaa !23
  store i32 %t227, ptr %l129, !tbaa !23
  %t228 = load ptr, ptr %l3, !tbaa !29
  %t230 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %t228)
  store %"compiler/source:Span" %t230, ptr %l131
  br label %bb34
bb34:
  %t231 = load ptr, ptr %l119, !tbaa !29
  %t232 = load ptr, ptr %l128, !tbaa !29
  %t233 = load i32, ptr %l129, !tbaa !23
  %t234 = load %"compiler/source:Span", ptr %l131
  %t235 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v0, ptr %v0, ptr %t231, ptr %t232, i32 %t233, %"compiler/source:Span" %t234)
  store ptr %t235, ptr %l132
  br label %bb35
bb35:
  %t236 = load ptr, ptr %l118, !tbaa !29
  %t237 = load ptr, ptr %l132, !tbaa !29
  %t238 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epartCopy(ptr %v0, ptr %v0, ptr %v0, ptr %t236, ptr %t237)
  store ptr %t238, ptr %l133
  br label %bb36
bb36:
  %t239 = load ptr, ptr %l133, !tbaa !29
  store ptr %t239, ptr %l18, !tbaa !29
  %t240 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t240, ptr %l134
  %t241 = load i32, ptr %l4, !tbaa !23
  store i32 %t241, ptr %l135, !tbaa !23
  %t242 = load ptr, ptr %l0, !tbaa !29
  %t243 = load %"compiler/source:Span", ptr %l1
  %t244 = load i64, ptr %l6, !tbaa !24
  %t248 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t242, %"compiler/source:Span" %t243, i64 %t244)
  store ptr %t248, ptr %l139
  br label %bb37
bb37:
  store { i64, [4 x i64] } zeroinitializer, ptr %t249
  %t250 = getelementptr { i64, [4 x i64] }, ptr %t249, i32 0, i32 0
  store i64 2, ptr %t250
  %t251 = load %"compiler/source:Span", ptr %l134
  %t252 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t251, 0
  %t253 = load i32, ptr %l135, !tbaa !23
  %t254 = insertvalue { %"compiler/source:Span", i32, ptr } %t252, i32 %t253, 1
  %t255 = load ptr, ptr %l139, !tbaa !29
  %t256 = insertvalue { %"compiler/source:Span", i32, ptr } %t254, ptr %t255, 2
  %t257 = getelementptr { i64, [4 x i64] }, ptr %t249, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t256, ptr %t257
  %t258 = load { i64, [4 x i64] }, ptr %t249
  %t260 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store { i64, [4 x i64] } %t258, ptr %t260
  %t262 = load ptr, ptr %l0, !tbaa !29
  store ptr %t262, ptr %l142, !tbaa !29
  %t263 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t263, ptr %l143
  %t264 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t264, ptr %l144
  %t265 = load i32, ptr %l5, !tbaa !23
  store i32 %t265, ptr %l145, !tbaa !23
  store ptr %t260, ptr %l146, !tbaa !29
  %t267 = load ptr, ptr %l0, !tbaa !29
  %t268 = load %"compiler/source:Span", ptr %l1
  %t269 = load i64, ptr %l13, !tbaa !24
  %t273 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t267, %"compiler/source:Span" %t268, i64 %t269)
  store ptr %t273, ptr %l150
  br label %bb38
bb38:
  %t274 = load ptr, ptr %l146, !tbaa !29
  %t275 = load ptr, ptr %l150, !tbaa !29
  %t277 = call %"compiler/typed:Elem" @compiler_2ftyped_3aElem_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %t274, ptr %t275, i32 0)
  store %"compiler/typed:Elem" %t277, ptr %l152
  br label %bb39
bb39:
  %t278 = load %"compiler/typed:Elem", ptr %l152
  %t279 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 24, i64 8)
  store %"compiler/typed:Elem" %t278, ptr %t279
  store { i64, [4 x i64] } zeroinitializer, ptr %t280
  %t281 = getelementptr { i64, [4 x i64] }, ptr %t280, i32 0, i32 0
  store i64 4, ptr %t281
  %t282 = load %"compiler/source:Span", ptr %l144
  %t283 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t282, 0
  %t284 = load i32, ptr %l145, !tbaa !23
  %t285 = insertvalue { %"compiler/source:Span", i32, ptr } %t283, i32 %t284, 1
  %t287 = insertvalue { %"compiler/source:Span", i32, ptr } %t285, ptr %t279, 2
  %t288 = getelementptr { i64, [4 x i64] }, ptr %t280, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t287, ptr %t288
  %t289 = load { i64, [4 x i64] }, ptr %t280
  %t291 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store { i64, [4 x i64] } %t289, ptr %t291
  %t292 = load ptr, ptr %l18, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t293
  %t294 = getelementptr { i64, [3 x i64] }, ptr %t293, i32 0, i32 0
  store i64 1, ptr %t294
  %t295 = load %"compiler/source:Span", ptr %l143
  %t296 = insertvalue { %"compiler/source:Span", ptr, ptr } undef, %"compiler/source:Span" %t295, 0
  %t298 = insertvalue { %"compiler/source:Span", ptr, ptr } %t296, ptr %t291, 1
  %t300 = insertvalue { %"compiler/source:Span", ptr, ptr } %t298, ptr %t292, 2
  %t301 = getelementptr { i64, [3 x i64] }, ptr %t293, i32 0, i32 1
  store { %"compiler/source:Span", ptr, ptr } %t300, ptr %t301
  %t302 = load { i64, [3 x i64] }, ptr %t293
  %t304 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t302, ptr %t304
  %t305 = load ptr, ptr %l142, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t305, ptr %t304)
  br label %bb40
bb40:
  %t307 = load ptr, ptr %l0, !tbaa !29
  %t308 = load %"compiler/source:Span", ptr %l1
  %t309 = load i64, ptr %l13, !tbaa !24
  %t310 = load i64, ptr %l14, !tbaa !24
  %t311 = load i64, ptr %l15, !tbaa !24
  %t312 = load i64, ptr %l16, !tbaa !24
  %t313 = load i64, ptr %l17, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneLoopClose(ptr %v0, ptr %t307, %"compiler/source:Span" %t308, i64 %t309, i64 %t310, i64 %t311, i64 %t312, i64 %t313)
  br label %bb41
bb41:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectorInstance(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l5 = alloca i64
  %l13 = alloca ptr
  %l23 = alloca ptr
  %l24 = alloca i64
  %l30 = alloca ptr
  %l36 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 16
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2_H2251bc8fca359ca0394d0bb11af7ba0a(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load i64, ptr %l5, !tbaa !24
  %t7 = sub i64 %t6, 1
  store i64 %t7, ptr %l1, !tbaa !24
  br label %bb2
bb2:
  %t9 = load i64, ptr %l1, !tbaa !24
  %t11 = icmp sge i64 %t9, 0
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb3, label %bb4
bb3:
  br label %bb21
bb4:
  br label %bb5
bb5:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/check:Checker", ptr %t15, i32 0, i32 16
  %t18 = load i64, ptr %l1, !tbaa !24
  %t21 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2_Hc8503b2b20cde402cc7bde6f68d96fc0(ptr %v0, ptr %v0, ptr %t17, i64 %t18)
  store ptr %t21, ptr %l13
  br label %bb6
bb6:
  %t22 = load ptr, ptr %l13, !tbaa !29
  %t24 = getelementptr %"compiler/check:frame", ptr %t22, i32 0, i32 0
  %t25 = load i64, ptr %t24, !tbaa !24
  store i64 %t25, ptr %l2, !tbaa !24
  %t27 = load i64, ptr %l1, !tbaa !24
  %t29 = sub i64 %t27, 1
  store i64 %t29, ptr %l1, !tbaa !24
  %t31 = load i64, ptr %l2, !tbaa !24
  %t33 = icmp slt i64 %t31, 0
  br i1 %t33, label %bb7, label %bb8
bb7:
  br label %bb20
bb8:
  br label %bb9
bb9:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/check:Checker", ptr %t35, i32 0, i32 14
  %t38 = load i64, ptr %l2, !tbaa !24
  %t41 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t37, i64 %t38)
  store ptr %t41, ptr %l23
  br label %bb10
bb10:
  %t42 = load ptr, ptr %l23, !tbaa !29
  %t43 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eInst(ptr %v0, ptr %t42)
  store i64 %t43, ptr %l24
  br label %bb11
bb11:
  %t44 = load i64, ptr %l24, !tbaa !24
  %t45 = icmp sge i64 %t44, 0
  br i1 %t45, label %bb12, label %bb13
bb12:
  %t47 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  store i32 %t47, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/check:Checker", ptr %t49, i32 0, i32 14
  %t52 = load i64, ptr %l2, !tbaa !24
  %t55 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t51, i64 %t52)
  store ptr %t55, ptr %l30
  br label %bb15
bb15:
  %t56 = load ptr, ptr %l30, !tbaa !29
  %t58 = getelementptr %"compiler/typed:Body", ptr %t56, i32 0, i32 1
  %t59 = load { i64, [2 x i64] }, ptr %t58
  %t61 = extractvalue { i64, [2 x i64] } %t59, 0
  %t62 = icmp eq i64 %t61, 1
  br i1 %t62, label %bb16, label %bb17
bb16:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t65 = load i64, ptr %l2, !tbaa !24
  %t68 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectorOf(ptr %v0, ptr %t64, i64 %t65)
  store i32 %t68, ptr %l36
  br label %bb18
bb17:
  br label %bb19
bb18:
  %t69 = load i32, ptr %l36, !tbaa !23
  store i32 %t69, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  br label %bb2
bb21:
  %t70 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  store i32 %t70, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edefaultReads(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i64
  %l4 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l11 = alloca ptr
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca i64
  %l18 = alloca ptr
  %l19 = alloca i1
  %l22 = alloca i1
  %l24 = alloca ptr
  %l25 = alloca i1
  %l40 = alloca ptr
  %l44 = alloca i1
  %l47 = alloca i1
  %l51 = alloca ptr
  %l54 = alloca { i64, [3 x i64] }
  %l55 = alloca %"compiler/diagmsg:Msg"
  %l56 = alloca i64
  %l57 = alloca ptr
  %l58 = alloca i1
  %l70 = alloca { i64, ptr }
  %l78 = alloca ptr
  %l79 = alloca i1
  %l92 = alloca { i64, ptr }
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
  store ptr %t5, ptr %l18, !tbaa !29
  store i1 false, ptr %l19, !tbaa !21
  %t6 = load ptr, ptr %l18, !tbaa !29
  %t7 = icmp ne ptr %t6, null
  br i1 %t7, label %bb4, label %bb5
bb4:
  %t9 = load ptr, ptr %l18, !tbaa !29
  %t10 = load i64, ptr %t9, !range !{i64 0, i64 18}
  %t12 = icmp eq i64 %t10, 2
  store i1 %t12, ptr %l19, !tbaa !21
  br label %bb5
bb5:
  %t13 = load i1, ptr %l19, !tbaa !21
  br i1 %t13, label %bb6, label %bb7
bb6:
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t16 = getelementptr { i64, [5 x i64] }, ptr %t14, i32 0, i32 1
  %t17 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t16, i32 0, i32 2
  %t18 = load ptr, ptr %t17
  store ptr %t18, ptr %l24, !tbaa !29
  store i1 false, ptr %l25, !tbaa !21
  %t19 = load ptr, ptr %l24, !tbaa !29
  %t20 = icmp ne ptr %t19, null
  br i1 %t20, label %bb8, label %bb9
bb7:
  store i1 false, ptr %l22, !tbaa !21
  br label %bb10
bb8:
  %t22 = load ptr, ptr %l24, !tbaa !29
  %t23 = load i64, ptr %t22, !range !{i64 0, i64 8}
  %t25 = icmp eq i64 %t23, 1
  store i1 %t25, ptr %l25, !tbaa !21
  br label %bb9
bb9:
  %t26 = load i1, ptr %l25, !tbaa !21
  store i1 %t26, ptr %l22, !tbaa !21
  br label %bb10
bb10:
  %t27 = load i1, ptr %l22, !tbaa !21
  br i1 %t27, label %bb11, label %bb12
bb11:
  %t28 = load ptr, ptr %l1, !tbaa !29
  %t30 = getelementptr { i64, [5 x i64] }, ptr %t28, i32 0, i32 1
  %t31 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t30, i32 0, i32 0
  %t32 = load %"compiler/source:Span", ptr %t31
  store %"compiler/source:Span" %t32, ptr %l2
  %t34 = load ptr, ptr %l1, !tbaa !29
  %t36 = getelementptr { i64, [5 x i64] }, ptr %t34, i32 0, i32 1
  %t37 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t36, i32 0, i32 2
  %t38 = load ptr, ptr %t37
  %t40 = getelementptr { i64, [4 x i64] }, ptr %t38, i32 0, i32 1
  %t41 = getelementptr { %"compiler/source:Span", i32, i64, i32 }, ptr %t40, i32 0, i32 2
  %t42 = load i64, ptr %t41
  store i64 %t42, ptr %l3, !tbaa !24
  %t44 = load ptr, ptr %l1, !tbaa !29
  %t46 = getelementptr { i64, [5 x i64] }, ptr %t44, i32 0, i32 1
  %t47 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t46, i32 0, i32 2
  %t48 = load ptr, ptr %t47
  %t50 = getelementptr { i64, [4 x i64] }, ptr %t48, i32 0, i32 1
  %t51 = getelementptr { %"compiler/source:Span", i32, i64, i32 }, ptr %t50, i32 0, i32 3
  %t52 = load i32, ptr %t51
  store i32 %t52, ptr %l4, !tbaa !23
  br label %bb13
bb12:
  br label %bb25
bb13:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/check:Checker", ptr %t54, i32 0, i32 1
  %t57 = load ptr, ptr %t56, !tbaa !29
  %t58 = load i64, ptr %l3, !tbaa !24
  %t59 = load i32, ptr %l4, !tbaa !23
  %t63 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eGlobalDecl(ptr %v0, ptr %v0, ptr %t57, i64 %t58, i32 %t59)
  store ptr %t63, ptr %l40
  br label %bb14
bb14:
  %t64 = load ptr, ptr %l40, !tbaa !29
  store ptr %t64, ptr %l5, !tbaa !29
  %t65 = load ptr, ptr %l5, !tbaa !29
  %t67 = icmp eq ptr %t65, null
  %t69 = xor i1 %t67, true
  br i1 %t69, label %bb15, label %bb16
bb15:
  %t71 = load ptr, ptr %l5, !tbaa !29
  %t73 = getelementptr %"compiler/ast:VarDecl", ptr %t71, i32 0, i32 2
  %t74 = load ptr, ptr %t73, !tbaa !29
  %t76 = call i1 @compiler_2fgeneric_2eWrittenMut(ptr %v0, ptr %t74)
  store i1 %t76, ptr %l47
  br label %bb17
bb16:
  store i1 false, ptr %l44, !tbaa !21
  br label %bb18
bb17:
  %t77 = load i1, ptr %l47, !tbaa !21
  store i1 %t77, ptr %l44, !tbaa !21
  br label %bb18
bb18:
  %t78 = load i1, ptr %l44, !tbaa !21
  br i1 %t78, label %bb19, label %bb20
bb19:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"compiler/check:Checker", ptr %t79, i32 0, i32 1
  %t82 = load ptr, ptr %t81, !tbaa !29
  %t84 = getelementptr %"compiler/generic:Program", ptr %t82, i32 0, i32 0
  %t85 = load ptr, ptr %t84, !tbaa !29
  %t87 = getelementptr %"compiler/load:Loader", ptr %t85, i32 0, i32 4
  %t88 = load ptr, ptr %t87, !tbaa !29
  store ptr %t88, ptr %l51, !tbaa !29
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t90 = load %"compiler/source:Span", ptr %l2
  %t93 = call { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eat(ptr %v0, ptr %t89, %"compiler/source:Span" %t90)
  store { i64, [3 x i64] } %t93, ptr %l54
  br label %bb21
bb20:
  br label %bb24
bb21:
  %t94 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDefaultNotComputable(ptr %v0, ptr %v0, { i64, ptr } { i64 63, ptr getelementptr inbounds (<{ i64, [63 x i8] }>, ptr @.d2, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t94, ptr %l55
  br label %bb22
bb22:
  %t95 = load ptr, ptr %l51, !tbaa !29
  %t96 = load { i64, [3 x i64] }, ptr %l54
  %t97 = load %"compiler/diagmsg:Msg", ptr %l55
  %t98 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrorOncePerLine(ptr %v0, ptr %v0, ptr %t95, { i64, [3 x i64] } %t96, %"compiler/diagmsg:Msg" %t97)
  store i64 %t98, ptr %l56
  br label %bb23
bb23:
  br label %bb24
bb24:
  br label %bb56
bb25:
  %t99 = load ptr, ptr %l1, !tbaa !29
  store ptr %t99, ptr %l57, !tbaa !29
  store i1 false, ptr %l58, !tbaa !21
  %t100 = load ptr, ptr %l57, !tbaa !29
  %t101 = icmp ne ptr %t100, null
  br i1 %t101, label %bb26, label %bb27
bb26:
  %t103 = load ptr, ptr %l57, !tbaa !29
  %t104 = load i64, ptr %t103, !range !{i64 0, i64 18}
  %t106 = icmp eq i64 %t104, 9
  store i1 %t106, ptr %l58, !tbaa !21
  br label %bb27
bb27:
  %t107 = load i1, ptr %l58, !tbaa !21
  br i1 %t107, label %bb28, label %bb29
bb28:
  %t108 = load ptr, ptr %l1, !tbaa !29
  %t110 = getelementptr { i64, [5 x i64] }, ptr %t108, i32 0, i32 1
  %t111 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t110, i32 0, i32 4
  %t112 = load { i64, ptr }, ptr %t111
  store { i64, ptr } %t112, ptr %l6, !tbaa !27
  br label %bb30
bb29:
  br label %bb38
bb30:
  %t114 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t114, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t116 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t118 = extractvalue { i64, ptr } %t116, 0
  store i64 %t118, ptr %l9, !tbaa !24
  br label %bb31
bb31:
  %t120 = load i64, ptr %l8, !tbaa !24
  %t121 = load i64, ptr %l9, !tbaa !24
  %t124 = icmp slt i64 %t120, %t121
  %t126 = xor i1 %t124, true
  br i1 %t126, label %bb32, label %bb33
bb32:
  br label %bb37
bb33:
  br label %bb34
bb34:
  %t128 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t128, ptr %l70, !tbaa !27
  %t129 = load i64, ptr %l8, !tbaa !24
  %t131 = getelementptr { i64, ptr }, ptr %l70, i32 0, i32 1
  %t132 = load ptr, ptr %t131, !tbaa !27
  %t133 = getelementptr ptr, ptr %t132, i64 %t129
  %t134 = load ptr, ptr %t133, !tbaa !39
  %t136 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edefaultReads(ptr %v0, ptr %v1, ptr %t136, ptr %t134)
  br label %bb35
bb35:
  br label %bb36
bb36:
  %t141 = load i64, ptr %l8, !tbaa !24
  %t143 = add i64 %t141, 1
  store i64 %t143, ptr %l8, !tbaa !24
  br label %bb31
bb37:
  br label %bb56
bb38:
  %t145 = load ptr, ptr %l1, !tbaa !29
  store ptr %t145, ptr %l78, !tbaa !29
  store i1 false, ptr %l79, !tbaa !21
  %t146 = load ptr, ptr %l78, !tbaa !29
  %t147 = icmp ne ptr %t146, null
  br i1 %t147, label %bb39, label %bb40
bb39:
  %t149 = load ptr, ptr %l78, !tbaa !29
  %t150 = load i64, ptr %t149, !range !{i64 0, i64 18}
  %t152 = icmp eq i64 %t150, 6
  store i1 %t152, ptr %l79, !tbaa !21
  br label %bb40
bb40:
  %t153 = load i1, ptr %l79, !tbaa !21
  br i1 %t153, label %bb41, label %bb42
bb41:
  %t154 = load ptr, ptr %l1, !tbaa !29
  %t156 = getelementptr { i64, [5 x i64] }, ptr %t154, i32 0, i32 1
  %t157 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t156, i32 0, i32 2
  %t158 = load ptr, ptr %t157
  store ptr %t158, ptr %l11, !tbaa !29
  br label %bb43
bb42:
  br label %bb51
bb43:
  %t160 = load ptr, ptr %l11, !tbaa !29
  %t162 = getelementptr %"compiler/typed:Call", ptr %t160, i32 0, i32 1
  %t163 = load { i64, ptr }, ptr %t162, !tbaa !27
  store { i64, ptr } %t163, ptr %l12, !tbaa !27
  store i64 0, ptr %l13, !tbaa !24
  %t165 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t167 = extractvalue { i64, ptr } %t165, 0
  store i64 %t167, ptr %l14, !tbaa !24
  br label %bb44
bb44:
  %t169 = load i64, ptr %l13, !tbaa !24
  %t170 = load i64, ptr %l14, !tbaa !24
  %t173 = icmp slt i64 %t169, %t170
  %t175 = xor i1 %t173, true
  br i1 %t175, label %bb45, label %bb46
bb45:
  br label %bb50
bb46:
  br label %bb47
bb47:
  %t177 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t177, ptr %l92, !tbaa !27
  %t178 = load i64, ptr %l13, !tbaa !24
  %t180 = getelementptr { i64, ptr }, ptr %l92, i32 0, i32 1
  %t181 = load ptr, ptr %t180, !tbaa !27
  %t182 = getelementptr ptr, ptr %t181, i64 %t178
  %t183 = load ptr, ptr %t182, !tbaa !39
  %t185 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edefaultReads(ptr %v0, ptr %v1, ptr %t185, ptr %t183)
  br label %bb48
bb48:
  br label %bb49
bb49:
  %t190 = load i64, ptr %l13, !tbaa !24
  %t192 = add i64 %t190, 1
  store i64 %t192, ptr %l13, !tbaa !24
  br label %bb44
bb50:
  br label %bb56
bb51:
  br i1 true, label %bb52, label %bb53
bb52:
  br label %bb54
bb53:
  br label %bb55
bb54:
  br label %bb56
bb55:
  call void @__olang_check_failed(ptr @olang_loc_5535019c26f71449_86439f2d3bbcfbb5)
  unreachable
bb56:
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eequality(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, ptr %a3, ptr %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca i32
  %l10 = alloca i32
  %l11 = alloca i32
  %l13 = alloca i32
  %l15 = alloca i32
  %l17 = alloca i32
  %l19 = alloca i32
  %l20 = alloca i32
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i64
  %l28 = alloca ptr
  %l29 = alloca ptr
  %l30 = alloca ptr
  %l31 = alloca ptr
  %l32 = alloca ptr
  %l33 = alloca ptr
  %lp34 = alloca ptr
  %lp35 = alloca ptr
  %l36 = alloca ptr
  %l37 = alloca ptr
  %l38 = alloca ptr
  %l39 = alloca i32
  %l40 = alloca ptr
  %l41 = alloca ptr
  %l42 = alloca i64
  %l43 = alloca ptr
  %l46 = alloca i32
  %l49 = alloca i32
  %l53 = alloca i1
  %l60 = alloca ptr
  %l63 = alloca ptr
  %l65 = alloca ptr
  %l67 = alloca i32
  %l68 = alloca i1
  %l69 = alloca i1
  %l72 = alloca ptr
  %l74 = alloca ptr
  %l76 = alloca i32
  %l77 = alloca i32
  %l80 = alloca ptr
  %l81 = alloca %"compiler/source:Span"
  %l83 = alloca ptr
  %l85 = alloca i32
  %l86 = alloca ptr
  %l87 = alloca ptr
  %l88 = alloca %"compiler/source:Span"
  %l89 = alloca i32
  %l92 = alloca i32
  %l95 = alloca ptr
  %l99 = alloca ptr
  %l105 = alloca ptr
  %l108 = alloca i32
  %l111 = alloca i32
  %l116 = alloca i32
  %l119 = alloca i1
  %l124 = alloca i32
  %l127 = alloca i1
  %l132 = alloca i32
  %l137 = alloca i32
  %l143 = alloca i32
  %l146 = alloca ptr
  %l147 = alloca ptr
  %l152 = alloca i32
  %l154 = alloca ptr
  %l157 = alloca i32
  %l160 = alloca i32
  %l167 = alloca i32
  %l170 = alloca ptr
  %l171 = alloca ptr
  %l176 = alloca i32
  %l178 = alloca ptr
  %l181 = alloca i32
  %l184 = alloca i32
  %l191 = alloca i32
  %l194 = alloca i1
  %l199 = alloca i32
  %l202 = alloca i1
  %l207 = alloca i1
  %l212 = alloca i1
  %l218 = alloca i1
  %l219 = alloca ptr
  %l220 = alloca ptr
  %l225 = alloca i32
  %l228 = alloca ptr
  %l231 = alloca i32
  %l234 = alloca i32
  %l237 = alloca ptr
  %l238 = alloca ptr
  %l243 = alloca i32
  %l246 = alloca ptr
  %l249 = alloca i32
  %l252 = alloca i32
  %l260 = alloca i1
  %l265 = alloca i1
  %l266 = alloca ptr
  %l267 = alloca ptr
  %l270 = alloca i1
  %l271 = alloca i1
  %l274 = alloca i1
  %l275 = alloca i32
  %l281 = alloca i32
  %l285 = alloca ptr
  %l288 = alloca i32
  %l293 = alloca i1
  %l294 = alloca ptr
  %l295 = alloca ptr
  %l298 = alloca i1
  %l299 = alloca i1
  %l302 = alloca i1
  %l303 = alloca i32
  %l309 = alloca i32
  %l313 = alloca ptr
  %l316 = alloca i32
  %l322 = alloca i32
  %l325 = alloca i1
  %l330 = alloca i32
  %l333 = alloca i1
  %l336 = alloca ptr
  %l341 = alloca i32
  %l346 = alloca i32
  %l347 = alloca i1
  %l348 = alloca i1
  %l351 = alloca ptr
  %l354 = alloca i1
  %l355 = alloca i1
  %l358 = alloca ptr
  %l361 = alloca i1
  %l364 = alloca ptr
  %l367 = alloca ptr
  %l370 = alloca i32
  %l371 = alloca i32
  %l372 = alloca i32
  %l373 = alloca ptr
  %l374 = alloca ptr
  %l377 = alloca i1
  %l378 = alloca i1
  %l381 = alloca i1
  %l382 = alloca i32
  %l388 = alloca i32
  %l392 = alloca ptr
  %l393 = alloca ptr
  %l394 = alloca ptr
  %l397 = alloca i1
  %l398 = alloca i1
  %l401 = alloca i1
  %l402 = alloca i32
  %l408 = alloca i32
  %l412 = alloca ptr
  %l415 = alloca i32
  %l418 = alloca i32
  %l425 = alloca ptr
  %l426 = alloca %"compiler/source:Span"
  %l429 = alloca { i64, ptr }
  %l430 = alloca { i64, ptr }
  %l433 = alloca { i64, ptr }
  %l435 = alloca %"compiler/diagmsg:Msg"
  %l436 = alloca i64
  %l440 = alloca ptr
  %l443 = alloca i64
  %l449 = alloca ptr
  %l450 = alloca ptr
  %l454 = alloca %"compiler/source:Span"
  %l458 = alloca { i64, [3 x i64] }
  %l461 = alloca { i64, ptr }
  %l463 = alloca %"compiler/diagmsg:Msg"
  %l464 = alloca i64
  %l468 = alloca ptr
  %l471 = alloca i1
  %l474 = alloca i1
  %l475 = alloca i1
  %l478 = alloca i1
  %l479 = alloca i1
  %l484 = alloca i1
  %l485 = alloca i1
  %l490 = alloca i1
  %l493 = alloca i64
  %l499 = alloca i64
  %l514 = alloca i64
  %l524 = alloca ptr
  %l525 = alloca %"compiler/source:Span"
  %l526 = alloca i32
  %l527 = alloca i32
  %l531 = alloca ptr
  %l535 = alloca ptr
  %l537 = alloca ptr
  %l538 = alloca ptr
  %l539 = alloca %"compiler/source:Span"
  %l540 = alloca i32
  %l541 = alloca i32
  %l545 = alloca ptr
  %l549 = alloca ptr
  %l551 = alloca ptr
  %l552 = alloca ptr
  %l553 = alloca %"compiler/source:Span"
  %l554 = alloca i32
  %l555 = alloca i32
  %l559 = alloca ptr
  %l563 = alloca ptr
  %l565 = alloca ptr
  %l566 = alloca ptr
  %l567 = alloca %"compiler/source:Span"
  %l568 = alloca %"compiler/source:Span"
  %l573 = alloca i32
  %l579 = alloca ptr
  %l580 = alloca ptr
  %l581 = alloca %"compiler/source:Span"
  %l582 = alloca %"compiler/source:Span"
  %l587 = alloca i32
  %l593 = alloca ptr
  %l594 = alloca ptr
  %l595 = alloca %"compiler/source:Span"
  %l596 = alloca %"compiler/source:Span"
  %l597 = alloca i64
  %l599 = alloca ptr
  %l602 = alloca { i64, ptr }
  %l605 = alloca { i64, ptr }
  %l609 = alloca ptr
  %l610 = alloca %"compiler/source:Span"
  %l611 = alloca i32
  %l612 = alloca ptr
  %l616 = alloca ptr
  %l619 = alloca %"compiler/typed:Cond"
  %l622 = alloca %"compiler/source:Span"
  %l623 = alloca i32
  %l627 = alloca { i64, ptr }
  %l628 = alloca %"compiler/source:Span"
  %l629 = alloca i32
  %l634 = alloca %"compiler/typed:Cond"
  %l638 = alloca %"compiler/typed:Seq"
  %l643 = alloca ptr
  %l647 = alloca ptr
  %l651 = alloca ptr
  %l652 = alloca %"compiler/source:Span"
  %l653 = alloca %"compiler/source:Span"
  %l654 = alloca i64
  %l656 = alloca ptr
  %l659 = alloca { i64, ptr }
  %l661 = alloca ptr
  %l663 = alloca { i64, ptr }
  %l668 = alloca ptr
  %l671 = alloca ptr
  %l675 = alloca ptr
  %l679 = alloca i1
  %l680 = alloca i1
  %l683 = alloca i1
  %l684 = alloca i1
  %l687 = alloca i1
  %l688 = alloca i1
  %l691 = alloca i1
  %l692 = alloca i1
  %l697 = alloca i32
  %l704 = alloca ptr
  %l706 = alloca ptr
  %l709 = alloca ptr
  %l712 = alloca ptr
  %l716 = alloca ptr
  %l720 = alloca i1
  %l723 = alloca ptr
  %l724 = alloca ptr
  %l728 = alloca ptr
  %l736 = alloca ptr
  %l739 = alloca ptr
  %l743 = alloca ptr
  %l747 = alloca i1
  %l748 = alloca i1
  %l751 = alloca i1
  %l752 = alloca i32
  %l758 = alloca i32
  %l762 = alloca i1
  %l763 = alloca i1
  %l766 = alloca i1
  %l767 = alloca i1
  %l772 = alloca i1
  %l773 = alloca i1
  %l778 = alloca i1
  %l783 = alloca i32
  %l785 = alloca ptr
  %l789 = alloca ptr
  %l791 = alloca ptr
  %l795 = alloca ptr
  %l798 = alloca i64
  %l805 = alloca ptr
  %l806 = alloca %"compiler/source:Span"
  %l807 = alloca i32
  %l811 = alloca ptr
  %l815 = alloca { i64, ptr }
  %l816 = alloca ptr
  %l819 = alloca ptr
  %l823 = alloca ptr
  %rv = alloca ptr
  %t945 = alloca { i64, [1 x i64] }, align 8
  %t964 = alloca { i64, [3 x i64] }, align 8
  %t981 = alloca { i64, [1 x i64] }, align 8
  %t1000 = alloca { i64, [3 x i64] }, align 8
  %t1109 = alloca { i64, [4 x i64] }, align 8
  %t1143 = alloca { i64, [4 x i64] }, align 8
  %t1213 = alloca { i64, [5 x i64] }, align 8
  %t1247 = alloca { i64, [5 x i64] }, align 8
  %t1264 = alloca { i64, [5 x i64] }, align 8
  %t1630 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store i32 %a2, ptr %l2
  store ptr %a3, ptr %l3
  store ptr %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l3, !tbaa !29
  %t4 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t1)
  store i32 %t4, ptr %l46
  br label %bb1
bb1:
  %t5 = load i32, ptr %l46, !tbaa !23
  store i32 %t5, ptr %l5, !tbaa !23
  %t6 = load ptr, ptr %l4, !tbaa !29
  %t9 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %t6)
  store i32 %t9, ptr %l49
  br label %bb2
bb2:
  %t10 = load i32, ptr %l49, !tbaa !23
  store i32 %t10, ptr %l6, !tbaa !23
  %t11 = load i32, ptr %l5, !tbaa !23
  %t12 = load i32, ptr @G_2ecompiler_2ftypes_2eNullT, !tbaa !23
  %t15 = icmp eq i32 %t11, %t12
  br i1 %t15, label %bb3, label %bb4
bb3:
  store i1 true, ptr %l53, !tbaa !21
  br label %bb5
bb4:
  %t17 = load i32, ptr %l6, !tbaa !23
  %t18 = load i32, ptr @G_2ecompiler_2ftypes_2eNullT, !tbaa !23
  %t21 = icmp eq i32 %t17, %t18
  store i1 %t21, ptr %l53, !tbaa !21
  br label %bb5
bb5:
  %t23 = load i1, ptr %l53, !tbaa !21
  br i1 %t23, label %bb6, label %bb7
bb6:
  %t24 = load i32, ptr %l5, !tbaa !23
  %t25 = load i32, ptr @G_2ecompiler_2ftypes_2eNullT, !tbaa !23
  %t28 = icmp ne i32 %t24, %t25
  br i1 %t28, label %bb8, label %bb9
bb7:
  br label %bb29
bb8:
  %t30 = load ptr, ptr %l3, !tbaa !29
  store ptr %t30, ptr %l60, !tbaa !29
  br label %bb10
bb9:
  %t32 = load ptr, ptr %l4, !tbaa !29
  store ptr %t32, ptr %l60, !tbaa !29
  br label %bb10
bb10:
  %t34 = load ptr, ptr %l60, !tbaa !29
  store ptr %t34, ptr %l7, !tbaa !29
  %t35 = load ptr, ptr %l0, !tbaa !29
  store ptr %t35, ptr %l63, !tbaa !29
  %t36 = load ptr, ptr %l7, !tbaa !29
  store ptr %t36, ptr %l65, !tbaa !29
  %t38 = load ptr, ptr %l65, !tbaa !29
  %t39 = call ptr @__olang_scope_of(ptr %t38, ptr null)
  %t40 = ptrtoint ptr %t39 to i64
  %t42 = inttoptr i64 %t40 to ptr
  %t43 = load ptr, ptr %l65, !tbaa !29
  %t44 = call i32 @compiler_2fcheck_2etypeOf(ptr %t42, ptr %t43)
  store i32 %t44, ptr %l67
  br label %bb11
bb11:
  %t45 = load ptr, ptr %l63, !tbaa !29
  %t46 = load i32, ptr %l67, !tbaa !23
  %t47 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t45, i32 %t46)
  store i1 %t47, ptr %l68
  br label %bb12
bb12:
  %t48 = load i1, ptr %l68, !tbaa !21
  br i1 %t48, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l69, !tbaa !21
  br label %bb17
bb14:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/check:Checker", ptr %t49, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !29
  %t54 = getelementptr %"compiler/generic:Program", ptr %t52, i32 0, i32 2
  store ptr %t54, ptr %l72, !tbaa !29
  %t55 = load ptr, ptr %l7, !tbaa !29
  store ptr %t55, ptr %l74, !tbaa !29
  %t57 = load ptr, ptr %l74, !tbaa !29
  %t58 = call ptr @__olang_scope_of(ptr %t57, ptr null)
  %t59 = ptrtoint ptr %t58 to i64
  %t61 = inttoptr i64 %t59 to ptr
  %t62 = load ptr, ptr %l74, !tbaa !29
  %t63 = call i32 @compiler_2fcheck_2etypeOf(ptr %t61, ptr %t62)
  store i32 %t63, ptr %l76
  br label %bb15
bb15:
  %t64 = load ptr, ptr %l72, !tbaa !29
  %t65 = load i32, ptr %l76, !tbaa !23
  %t66 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t64, i32 %t65)
  store i32 %t66, ptr %l77
  br label %bb16
bb16:
  %t67 = load i32, ptr %l77, !range !{i32 0, i32 33}
  %t69 = trunc i64 21 to i32
  %t70 = icmp eq i32 %t67, %t69
  store i1 %t70, ptr %l69, !tbaa !21
  br label %bb17
bb17:
  %t72 = load i1, ptr %l69, !tbaa !21
  br i1 %t72, label %bb18, label %bb19
bb18:
  %t73 = load ptr, ptr %l0, !tbaa !29
  store ptr %t73, ptr %l80, !tbaa !29
  %t74 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t74, ptr %l81
  %t75 = load ptr, ptr %l7, !tbaa !29
  store ptr %t75, ptr %l83, !tbaa !29
  %t77 = load ptr, ptr %l83, !tbaa !29
  %t78 = call ptr @__olang_scope_of(ptr %t77, ptr null)
  %t79 = ptrtoint ptr %t78 to i64
  %t81 = inttoptr i64 %t79 to ptr
  %t82 = load ptr, ptr %l83, !tbaa !29
  %t83 = call i32 @compiler_2fcheck_2etypeOf(ptr %t81, ptr %t82)
  store i32 %t83, ptr %l85
  br label %bb20
bb19:
  br label %bb26
bb20:
  %t84 = load ptr, ptr %l80, !tbaa !29
  %t85 = load %"compiler/source:Span", ptr %l81
  %t86 = load i32, ptr %l85, !tbaa !23
  %t87 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enullOf(ptr %v0, ptr %v3, ptr %t84, %"compiler/source:Span" %t85, i32 %t86)
  store ptr %t87, ptr %l86
  br label %bb21
bb21:
  %t88 = load ptr, ptr %l86, !tbaa !29
  store ptr %t88, ptr %l8, !tbaa !29
  %t89 = load ptr, ptr %l0, !tbaa !29
  store ptr %t89, ptr %l87, !tbaa !29
  %t90 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t90, ptr %l88
  %t91 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t91, ptr %l89, !tbaa !23
  %t92 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t94 = trunc i64 94 to i32
  %t95 = icmp eq i32 %t92, %t94
  br i1 %t95, label %bb22, label %bb23
bb22:
  store i32 19, ptr %l92
  br label %bb24
bb23:
  store i32 14, ptr %l92
  br label %bb24
bb24:
  %t99 = load ptr, ptr %l7, !tbaa !29
  store ptr %t99, ptr %l95, !tbaa !29
  %t100 = load ptr, ptr %l8, !tbaa !29
  %t102 = load ptr, ptr %l95, !tbaa !29
  %t103 = call ptr @__olang_scope_of(ptr %t102, ptr null)
  %t104 = ptrtoint ptr %t103 to i64
  %t106 = inttoptr i64 %t104 to ptr
  %t107 = load ptr, ptr %l87, !tbaa !29
  %t108 = load %"compiler/source:Span", ptr %l88
  %t109 = load i32, ptr %l89, !tbaa !23
  %t110 = load i32, ptr %l92, !range !{i32 0, i32 52}
  %t111 = load ptr, ptr %l95, !tbaa !29
  %t113 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %t106, ptr %v3, ptr %v3, ptr %t107, %"compiler/source:Span" %t108, i32 %t109, i32 %t110, ptr %t111, ptr %t100)
  store ptr %t113, ptr %l99
  br label %bb25
bb25:
  %t114 = load ptr, ptr %l99, !tbaa !29
  store ptr %t114, ptr %rv
  br label %ret
bb26:
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t116 = load %"compiler/source:Span", ptr %l1
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %v0, ptr %t115, %"compiler/source:Span" %t116, { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d3, i32 0, i32 1) })
  br label %bb27
bb27:
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t120 = load %"compiler/source:Span", ptr %l1
  %t121 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t125 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v3, ptr %t119, %"compiler/source:Span" %t120, i32 %t121, i64 0)
  store ptr %t125, ptr %l105
  br label %bb28
bb28:
  %t126 = load ptr, ptr %l105, !tbaa !29
  store ptr %t126, ptr %rv
  br label %ret
bb29:
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t128 = load i32, ptr %l5, !tbaa !23
  %t131 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t127, i32 %t128)
  store i32 %t131, ptr %l108
  br label %bb30
bb30:
  %t132 = load i32, ptr %l108, !tbaa !23
  store i32 %t132, ptr %l9, !tbaa !23
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t134 = load i32, ptr %l6, !tbaa !23
  %t137 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t133, i32 %t134)
  store i32 %t137, ptr %l111
  br label %bb31
bb31:
  %t138 = load i32, ptr %l111, !tbaa !23
  store i32 %t138, ptr %l10, !tbaa !23
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t141 = getelementptr %"compiler/check:Checker", ptr %t139, i32 0, i32 1
  %t142 = load ptr, ptr %t141, !tbaa !29
  %t144 = getelementptr %"compiler/generic:Program", ptr %t142, i32 0, i32 2
  %t145 = load i32, ptr %l9, !tbaa !23
  %t148 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t144, i32 %t145)
  store i32 %t148, ptr %l116
  br label %bb32
bb32:
  %t149 = load i32, ptr %l116, !range !{i32 0, i32 33}
  %t151 = trunc i64 21 to i32
  %t152 = icmp eq i32 %t149, %t151
  br i1 %t152, label %bb33, label %bb34
bb33:
  %t154 = load ptr, ptr %l0, !tbaa !29
  %t156 = getelementptr %"compiler/check:Checker", ptr %t154, i32 0, i32 1
  %t157 = load ptr, ptr %t156, !tbaa !29
  %t159 = getelementptr %"compiler/generic:Program", ptr %t157, i32 0, i32 2
  %t160 = load i32, ptr %l10, !tbaa !23
  %t163 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t159, i32 %t160)
  store i32 %t163, ptr %l124
  br label %bb35
bb34:
  store i1 false, ptr %l119, !tbaa !21
  br label %bb36
bb35:
  %t164 = load i32, ptr %l124, !range !{i32 0, i32 33}
  %t166 = trunc i64 21 to i32
  %t167 = icmp eq i32 %t164, %t166
  store i1 %t167, ptr %l119, !tbaa !21
  br label %bb36
bb36:
  %t169 = load i1, ptr %l119, !tbaa !21
  br i1 %t169, label %bb37, label %bb38
bb37:
  %t170 = load ptr, ptr %l0, !tbaa !29
  %t172 = getelementptr %"compiler/check:Checker", ptr %t170, i32 0, i32 1
  %t173 = load ptr, ptr %t172, !tbaa !29
  %t175 = getelementptr %"compiler/generic:Program", ptr %t173, i32 0, i32 2
  %t176 = load i32, ptr %l9, !tbaa !23
  %t179 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFuncTag(ptr %v0, ptr %t175, i32 %t176)
  store i32 %t179, ptr %l132
  br label %bb39
bb38:
  store i1 false, ptr %l127, !tbaa !21
  br label %bb41
bb39:
  %t180 = load ptr, ptr %l0, !tbaa !29
  %t182 = getelementptr %"compiler/check:Checker", ptr %t180, i32 0, i32 1
  %t183 = load ptr, ptr %t182, !tbaa !29
  %t185 = getelementptr %"compiler/generic:Program", ptr %t183, i32 0, i32 2
  %t186 = load i32, ptr %l10, !tbaa !23
  %t189 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFuncTag(ptr %v0, ptr %t185, i32 %t186)
  store i32 %t189, ptr %l137
  br label %bb40
bb40:
  %t190 = load i32, ptr %l132, !tbaa !23
  %t191 = load i32, ptr %l137, !tbaa !23
  %t192 = icmp ne i32 %t190, %t191
  store i1 %t192, ptr %l127, !tbaa !21
  br label %bb41
bb41:
  %t194 = load i1, ptr %l127, !tbaa !21
  br i1 %t194, label %bb42, label %bb43
bb42:
  %t195 = load ptr, ptr %l0, !tbaa !29
  %t197 = getelementptr %"compiler/check:Checker", ptr %t195, i32 0, i32 1
  %t198 = load ptr, ptr %t197, !tbaa !29
  %t200 = getelementptr %"compiler/generic:Program", ptr %t198, i32 0, i32 2
  %t201 = load i32, ptr %l10, !tbaa !23
  %t204 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFuncTag(ptr %v0, ptr %t200, i32 %t201)
  store i32 %t204, ptr %l143
  br label %bb44
bb43:
  br label %bb60
bb44:
  %t205 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t206 = load i32, ptr %l143, !tbaa !23
  %t208 = icmp eq i32 %t206, %t205
  br i1 %t208, label %bb45, label %bb46
bb45:
  %t210 = load ptr, ptr %l0, !tbaa !29
  store ptr %t210, ptr %l146, !tbaa !29
  %t211 = load ptr, ptr %l3, !tbaa !29
  store ptr %t211, ptr %l147, !tbaa !29
  %t212 = load ptr, ptr %l0, !tbaa !29
  %t214 = getelementptr %"compiler/check:Checker", ptr %t212, i32 0, i32 1
  %t215 = load ptr, ptr %t214, !tbaa !29
  %t217 = getelementptr %"compiler/generic:Program", ptr %t215, i32 0, i32 2
  %t218 = load i32, ptr %l9, !tbaa !23
  %t221 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eUntagged(ptr %v0, ptr %t217, i32 %t218)
  store i32 %t221, ptr %l152
  br label %bb47
bb46:
  %t222 = load ptr, ptr %l0, !tbaa !29
  %t224 = getelementptr %"compiler/check:Checker", ptr %t222, i32 0, i32 1
  %t225 = load ptr, ptr %t224, !tbaa !29
  %t227 = getelementptr %"compiler/generic:Program", ptr %t225, i32 0, i32 2
  %t228 = load i32, ptr %l9, !tbaa !23
  %t231 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFuncTag(ptr %v0, ptr %t227, i32 %t228)
  store i32 %t231, ptr %l167
  br label %bb51
bb47:
  %t232 = load %"compiler/source:Span", ptr %l1
  %t233 = load ptr, ptr %l146, !tbaa !29
  %t234 = load ptr, ptr %l147, !tbaa !29
  %t235 = load i32, ptr %l152, !tbaa !23
  %t237 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v1, ptr %v0, ptr %t233, ptr %t234, i32 %t235, %"compiler/source:Span" %t232)
  store ptr %t237, ptr %l154
  br label %bb48
bb48:
  %t238 = load ptr, ptr %l154, !tbaa !29
  store ptr %t238, ptr %l3, !tbaa !29
  %t239 = load ptr, ptr %l3, !tbaa !29
  %t242 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t239)
  store i32 %t242, ptr %l157
  br label %bb49
bb49:
  %t243 = load i32, ptr %l157, !tbaa !23
  store i32 %t243, ptr %l11, !tbaa !23
  %t244 = load ptr, ptr %l3, !tbaa !29
  %t247 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t244)
  store i32 %t247, ptr %l160
  br label %bb50
bb50:
  %t248 = load i32, ptr %l160, !tbaa !23
  %t249 = load i32, ptr %l11, !tbaa !23
  store i32 %t249, ptr %l5, !tbaa !23
  store i32 %t248, ptr %l9, !tbaa !23
  br label %bb59
bb51:
  %t253 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t254 = load i32, ptr %l167, !tbaa !23
  %t256 = icmp eq i32 %t254, %t253
  br i1 %t256, label %bb52, label %bb53
bb52:
  %t258 = load ptr, ptr %l0, !tbaa !29
  store ptr %t258, ptr %l170, !tbaa !29
  %t259 = load ptr, ptr %l4, !tbaa !29
  store ptr %t259, ptr %l171, !tbaa !29
  %t260 = load ptr, ptr %l0, !tbaa !29
  %t262 = getelementptr %"compiler/check:Checker", ptr %t260, i32 0, i32 1
  %t263 = load ptr, ptr %t262, !tbaa !29
  %t265 = getelementptr %"compiler/generic:Program", ptr %t263, i32 0, i32 2
  %t266 = load i32, ptr %l10, !tbaa !23
  %t269 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eUntagged(ptr %v0, ptr %t265, i32 %t266)
  store i32 %t269, ptr %l176
  br label %bb54
bb53:
  br label %bb58
bb54:
  %t270 = load %"compiler/source:Span", ptr %l1
  %t271 = load ptr, ptr %l170, !tbaa !29
  %t272 = load ptr, ptr %l171, !tbaa !29
  %t273 = load i32, ptr %l176, !tbaa !23
  %t275 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v2, ptr %v0, ptr %t271, ptr %t272, i32 %t273, %"compiler/source:Span" %t270)
  store ptr %t275, ptr %l178
  br label %bb55
bb55:
  %t276 = load ptr, ptr %l178, !tbaa !29
  store ptr %t276, ptr %l4, !tbaa !29
  %t277 = load ptr, ptr %l4, !tbaa !29
  %t280 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t277)
  store i32 %t280, ptr %l181
  br label %bb56
bb56:
  %t281 = load i32, ptr %l181, !tbaa !23
  store i32 %t281, ptr %l13, !tbaa !23
  %t282 = load ptr, ptr %l4, !tbaa !29
  %t285 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t282)
  store i32 %t285, ptr %l184
  br label %bb57
bb57:
  %t286 = load i32, ptr %l184, !tbaa !23
  %t287 = load i32, ptr %l13, !tbaa !23
  store i32 %t287, ptr %l6, !tbaa !23
  store i32 %t286, ptr %l10, !tbaa !23
  br label %bb58
bb58:
  br label %bb59
bb59:
  br label %bb60
bb60:
  %t291 = load ptr, ptr %l0, !tbaa !29
  %t293 = getelementptr %"compiler/check:Checker", ptr %t291, i32 0, i32 1
  %t294 = load ptr, ptr %t293, !tbaa !29
  %t296 = getelementptr %"compiler/generic:Program", ptr %t294, i32 0, i32 2
  %t297 = load i32, ptr %l9, !tbaa !23
  %t300 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t296, i32 %t297)
  store i32 %t300, ptr %l191
  br label %bb61
bb61:
  %t301 = load i32, ptr %l191, !range !{i32 0, i32 33}
  %t303 = trunc i64 21 to i32
  %t304 = icmp eq i32 %t301, %t303
  br i1 %t304, label %bb62, label %bb63
bb62:
  %t306 = load ptr, ptr %l0, !tbaa !29
  %t308 = getelementptr %"compiler/check:Checker", ptr %t306, i32 0, i32 1
  %t309 = load ptr, ptr %t308, !tbaa !29
  %t311 = getelementptr %"compiler/generic:Program", ptr %t309, i32 0, i32 2
  %t312 = load i32, ptr %l10, !tbaa !23
  %t315 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t311, i32 %t312)
  store i32 %t315, ptr %l199
  br label %bb64
bb63:
  store i1 false, ptr %l194, !tbaa !21
  br label %bb65
bb64:
  %t316 = load i32, ptr %l199, !range !{i32 0, i32 33}
  %t318 = trunc i64 21 to i32
  %t319 = icmp eq i32 %t316, %t318
  store i1 %t319, ptr %l194, !tbaa !21
  br label %bb65
bb65:
  %t321 = load i1, ptr %l194, !tbaa !21
  br i1 %t321, label %bb66, label %bb67
bb66:
  %t322 = load ptr, ptr %l0, !tbaa !29
  %t324 = getelementptr %"compiler/check:Checker", ptr %t322, i32 0, i32 1
  %t325 = load ptr, ptr %t324, !tbaa !29
  %t327 = getelementptr %"compiler/generic:Program", ptr %t325, i32 0, i32 2
  %t328 = load i32, ptr %l9, !tbaa !23
  %t331 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNullable(ptr %v0, ptr %t327, i32 %t328)
  store i1 %t331, ptr %l207
  br label %bb68
bb67:
  store i1 false, ptr %l202, !tbaa !21
  br label %bb70
bb68:
  %t332 = load ptr, ptr %l0, !tbaa !29
  %t334 = getelementptr %"compiler/check:Checker", ptr %t332, i32 0, i32 1
  %t335 = load ptr, ptr %t334, !tbaa !29
  %t337 = getelementptr %"compiler/generic:Program", ptr %t335, i32 0, i32 2
  %t338 = load i32, ptr %l10, !tbaa !23
  %t341 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNullable(ptr %v0, ptr %t337, i32 %t338)
  store i1 %t341, ptr %l212
  br label %bb69
bb69:
  %t342 = load i1, ptr %l207, !tbaa !21
  %t343 = load i1, ptr %l212, !tbaa !21
  %t344 = icmp ne i1 %t342, %t343
  store i1 %t344, ptr %l202, !tbaa !21
  br label %bb70
bb70:
  %t346 = load i1, ptr %l202, !tbaa !21
  br i1 %t346, label %bb71, label %bb72
bb71:
  %t347 = load ptr, ptr %l0, !tbaa !29
  %t349 = getelementptr %"compiler/check:Checker", ptr %t347, i32 0, i32 1
  %t350 = load ptr, ptr %t349, !tbaa !29
  %t352 = getelementptr %"compiler/generic:Program", ptr %t350, i32 0, i32 2
  %t353 = load i32, ptr %l10, !tbaa !23
  %t356 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNullable(ptr %v0, ptr %t352, i32 %t353)
  store i1 %t356, ptr %l218
  br label %bb73
bb72:
  br label %bb85
bb73:
  %t357 = load i1, ptr %l218, !tbaa !21
  br i1 %t357, label %bb74, label %bb75
bb74:
  %t358 = load ptr, ptr %l0, !tbaa !29
  store ptr %t358, ptr %l219, !tbaa !29
  %t359 = load ptr, ptr %l3, !tbaa !29
  store ptr %t359, ptr %l220, !tbaa !29
  %t360 = load ptr, ptr %l0, !tbaa !29
  %t362 = getelementptr %"compiler/check:Checker", ptr %t360, i32 0, i32 1
  %t363 = load ptr, ptr %t362, !tbaa !29
  %t365 = getelementptr %"compiler/generic:Program", ptr %t363, i32 0, i32 2
  %t366 = load i32, ptr %l9, !tbaa !23
  %t369 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOrNull(ptr %v0, ptr %t365, i32 %t366)
  store i32 %t369, ptr %l225
  br label %bb76
bb75:
  %t370 = load ptr, ptr %l0, !tbaa !29
  store ptr %t370, ptr %l237, !tbaa !29
  %t371 = load ptr, ptr %l4, !tbaa !29
  store ptr %t371, ptr %l238, !tbaa !29
  %t372 = load ptr, ptr %l0, !tbaa !29
  %t374 = getelementptr %"compiler/check:Checker", ptr %t372, i32 0, i32 1
  %t375 = load ptr, ptr %t374, !tbaa !29
  %t377 = getelementptr %"compiler/generic:Program", ptr %t375, i32 0, i32 2
  %t378 = load i32, ptr %l10, !tbaa !23
  %t381 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOrNull(ptr %v0, ptr %t377, i32 %t378)
  store i32 %t381, ptr %l243
  br label %bb80
bb76:
  %t382 = load %"compiler/source:Span", ptr %l1
  %t383 = load ptr, ptr %l220, !tbaa !29
  %t384 = call ptr @__olang_scope_of(ptr %t383, ptr null)
  %t385 = ptrtoint ptr %t384 to i64
  %t387 = inttoptr i64 %t385 to ptr
  %t388 = load ptr, ptr %l219, !tbaa !29
  %t389 = load ptr, ptr %l220, !tbaa !29
  %t390 = load i32, ptr %l225, !tbaa !23
  %t392 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %t387, ptr %v0, ptr %t388, ptr %t389, i32 %t390, %"compiler/source:Span" %t382)
  store ptr %t392, ptr %l228
  br label %bb77
bb77:
  %t393 = load ptr, ptr %l228, !tbaa !29
  store ptr %t393, ptr %l3, !tbaa !29
  %t394 = load ptr, ptr %l3, !tbaa !29
  %t397 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t394)
  store i32 %t397, ptr %l231
  br label %bb78
bb78:
  %t398 = load i32, ptr %l231, !tbaa !23
  store i32 %t398, ptr %l15, !tbaa !23
  %t399 = load ptr, ptr %l3, !tbaa !29
  %t402 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t399)
  store i32 %t402, ptr %l234
  br label %bb79
bb79:
  %t403 = load i32, ptr %l234, !tbaa !23
  %t404 = load i32, ptr %l15, !tbaa !23
  store i32 %t404, ptr %l5, !tbaa !23
  store i32 %t403, ptr %l9, !tbaa !23
  br label %bb84
bb80:
  %t408 = load %"compiler/source:Span", ptr %l1
  %t409 = load ptr, ptr %l238, !tbaa !29
  %t410 = call ptr @__olang_scope_of(ptr %t409, ptr null)
  %t411 = ptrtoint ptr %t410 to i64
  %t413 = inttoptr i64 %t411 to ptr
  %t414 = load ptr, ptr %l237, !tbaa !29
  %t415 = load ptr, ptr %l238, !tbaa !29
  %t416 = load i32, ptr %l243, !tbaa !23
  %t418 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %t413, ptr %v0, ptr %t414, ptr %t415, i32 %t416, %"compiler/source:Span" %t408)
  store ptr %t418, ptr %l246
  br label %bb81
bb81:
  %t419 = load ptr, ptr %l246, !tbaa !29
  store ptr %t419, ptr %l4, !tbaa !29
  %t420 = load ptr, ptr %l4, !tbaa !29
  %t423 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t420)
  store i32 %t423, ptr %l249
  br label %bb82
bb82:
  %t424 = load i32, ptr %l249, !tbaa !23
  store i32 %t424, ptr %l17, !tbaa !23
  %t425 = load ptr, ptr %l4, !tbaa !29
  %t428 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t425)
  store i32 %t428, ptr %l252
  br label %bb83
bb83:
  %t429 = load i32, ptr %l252, !tbaa !23
  %t430 = load i32, ptr %l17, !tbaa !23
  store i32 %t430, ptr %l6, !tbaa !23
  store i32 %t429, ptr %l10, !tbaa !23
  br label %bb84
bb84:
  br label %bb85
bb85:
  %t434 = load ptr, ptr %l0, !tbaa !29
  %t436 = getelementptr %"compiler/check:Checker", ptr %t434, i32 0, i32 1
  %t437 = load ptr, ptr %t436, !tbaa !29
  %t439 = getelementptr %"compiler/generic:Program", ptr %t437, i32 0, i32 2
  %t440 = load i32, ptr %l9, !tbaa !23
  %t441 = load i32, ptr %l10, !tbaa !23
  %t445 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t439, i32 %t440, i32 %t441)
  store i1 %t445, ptr %l260
  br label %bb86
bb86:
  %t446 = load i1, ptr %l260, !tbaa !21
  %t447 = xor i1 %t446, true
  br i1 %t447, label %bb87, label %bb88
bb87:
  %t449 = load ptr, ptr %l0, !tbaa !29
  %t450 = load i32, ptr %l9, !tbaa !23
  %t451 = load i32, ptr %l10, !tbaa !23
  %t455 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eflowsInto(ptr %v0, ptr %t449, i32 %t450, i32 %t451)
  store i1 %t455, ptr %l265
  br label %bb89
bb88:
  br label %bb171
bb89:
  %t456 = load i1, ptr %l265, !tbaa !21
  br i1 %t456, label %bb90, label %bb91
bb90:
  %t457 = load ptr, ptr %l0, !tbaa !29
  store ptr %t457, ptr %l266, !tbaa !29
  %t458 = load ptr, ptr %l3, !tbaa !29
  store ptr %t458, ptr %l267, !tbaa !29
  %t459 = load ptr, ptr %l0, !tbaa !29
  %t460 = load i32, ptr %l5, !tbaa !23
  %t463 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t459, i32 %t460)
  store i1 %t463, ptr %l270
  br label %bb92
bb91:
  %t464 = load ptr, ptr %l0, !tbaa !29
  %t465 = load i32, ptr %l10, !tbaa !23
  %t466 = load i32, ptr %l9, !tbaa !23
  %t470 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eflowsInto(ptr %v0, ptr %t464, i32 %t465, i32 %t466)
  store i1 %t470, ptr %l293
  br label %bb103
bb92:
  %t471 = load i1, ptr %l270, !tbaa !21
  br i1 %t471, label %bb93, label %bb94
bb93:
  %t472 = load ptr, ptr %l0, !tbaa !29
  %t473 = load i32, ptr %l6, !tbaa !23
  %t476 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t472, i32 %t473)
  store i1 %t476, ptr %l274
  br label %bb95
bb94:
  store i1 false, ptr %l271, !tbaa !21
  br label %bb96
bb95:
  %t477 = load i1, ptr %l274, !tbaa !21
  store i1 %t477, ptr %l271, !tbaa !21
  br label %bb96
bb96:
  %t478 = load i1, ptr %l271, !tbaa !21
  br i1 %t478, label %bb97, label %bb98
bb97:
  %t479 = load ptr, ptr %l0, !tbaa !29
  %t481 = getelementptr %"compiler/check:Checker", ptr %t479, i32 0, i32 1
  %t482 = load ptr, ptr %t481, !tbaa !29
  %t484 = getelementptr %"compiler/generic:Program", ptr %t482, i32 0, i32 2
  %t485 = load i32, ptr %l10, !tbaa !23
  %t486 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  %t490 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t484, i32 %t485, i64 %t486)
  store i32 %t490, ptr %l281
  br label %bb99
bb98:
  %t491 = load i32, ptr %l10, !tbaa !23
  store i32 %t491, ptr %l275, !tbaa !23
  br label %bb100
bb99:
  %t493 = load i32, ptr %l281, !tbaa !23
  store i32 %t493, ptr %l275, !tbaa !23
  br label %bb100
bb100:
  %t494 = load %"compiler/source:Span", ptr %l1
  %t495 = load ptr, ptr %l267, !tbaa !29
  %t496 = call ptr @__olang_scope_of(ptr %t495, ptr null)
  %t497 = ptrtoint ptr %t496 to i64
  %t499 = inttoptr i64 %t497 to ptr
  %t500 = load ptr, ptr %l266, !tbaa !29
  %t501 = load ptr, ptr %l267, !tbaa !29
  %t502 = load i32, ptr %l275, !tbaa !23
  %t504 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %t499, ptr %v0, ptr %t500, ptr %t501, i32 %t502, %"compiler/source:Span" %t494)
  store ptr %t504, ptr %l285
  br label %bb101
bb101:
  %t505 = load ptr, ptr %l285, !tbaa !29
  store ptr %t505, ptr %l3, !tbaa !29
  %t506 = load ptr, ptr %l3, !tbaa !29
  %t509 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t506)
  store i32 %t509, ptr %l288
  br label %bb102
bb102:
  %t510 = load i32, ptr %l288, !tbaa !23
  store i32 %t510, ptr %l5, !tbaa !23
  %t511 = load i32, ptr %l10, !tbaa !23
  store i32 %t511, ptr %l9, !tbaa !23
  br label %bb170
bb103:
  %t513 = load i1, ptr %l293, !tbaa !21
  br i1 %t513, label %bb104, label %bb105
bb104:
  %t514 = load ptr, ptr %l0, !tbaa !29
  store ptr %t514, ptr %l294, !tbaa !29
  %t515 = load ptr, ptr %l4, !tbaa !29
  store ptr %t515, ptr %l295, !tbaa !29
  %t516 = load ptr, ptr %l0, !tbaa !29
  %t517 = load i32, ptr %l5, !tbaa !23
  %t520 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t516, i32 %t517)
  store i1 %t520, ptr %l298
  br label %bb106
bb105:
  %t521 = load ptr, ptr %l0, !tbaa !29
  %t523 = getelementptr %"compiler/check:Checker", ptr %t521, i32 0, i32 1
  %t524 = load ptr, ptr %t523, !tbaa !29
  %t526 = getelementptr %"compiler/generic:Program", ptr %t524, i32 0, i32 2
  %t527 = load i32, ptr %l9, !tbaa !23
  %t530 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t526, i32 %t527)
  store i32 %t530, ptr %l322
  br label %bb117
bb106:
  %t531 = load i1, ptr %l298, !tbaa !21
  br i1 %t531, label %bb107, label %bb108
bb107:
  %t532 = load ptr, ptr %l0, !tbaa !29
  %t533 = load i32, ptr %l6, !tbaa !23
  %t536 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t532, i32 %t533)
  store i1 %t536, ptr %l302
  br label %bb109
bb108:
  store i1 false, ptr %l299, !tbaa !21
  br label %bb110
bb109:
  %t537 = load i1, ptr %l302, !tbaa !21
  store i1 %t537, ptr %l299, !tbaa !21
  br label %bb110
bb110:
  %t538 = load i1, ptr %l299, !tbaa !21
  br i1 %t538, label %bb111, label %bb112
bb111:
  %t539 = load ptr, ptr %l0, !tbaa !29
  %t541 = getelementptr %"compiler/check:Checker", ptr %t539, i32 0, i32 1
  %t542 = load ptr, ptr %t541, !tbaa !29
  %t544 = getelementptr %"compiler/generic:Program", ptr %t542, i32 0, i32 2
  %t545 = load i32, ptr %l9, !tbaa !23
  %t546 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  %t550 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t544, i32 %t545, i64 %t546)
  store i32 %t550, ptr %l309
  br label %bb113
bb112:
  %t551 = load i32, ptr %l9, !tbaa !23
  store i32 %t551, ptr %l303, !tbaa !23
  br label %bb114
bb113:
  %t553 = load i32, ptr %l309, !tbaa !23
  store i32 %t553, ptr %l303, !tbaa !23
  br label %bb114
bb114:
  %t554 = load %"compiler/source:Span", ptr %l1
  %t555 = load ptr, ptr %l295, !tbaa !29
  %t556 = call ptr @__olang_scope_of(ptr %t555, ptr null)
  %t557 = ptrtoint ptr %t556 to i64
  %t559 = inttoptr i64 %t557 to ptr
  %t560 = load ptr, ptr %l294, !tbaa !29
  %t561 = load ptr, ptr %l295, !tbaa !29
  %t562 = load i32, ptr %l303, !tbaa !23
  %t564 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %t559, ptr %v0, ptr %t560, ptr %t561, i32 %t562, %"compiler/source:Span" %t554)
  store ptr %t564, ptr %l313
  br label %bb115
bb115:
  %t565 = load ptr, ptr %l313, !tbaa !29
  store ptr %t565, ptr %l4, !tbaa !29
  %t566 = load ptr, ptr %l4, !tbaa !29
  %t569 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t566)
  store i32 %t569, ptr %l316
  br label %bb116
bb116:
  %t570 = load i32, ptr %l316, !tbaa !23
  store i32 %t570, ptr %l6, !tbaa !23
  %t571 = load i32, ptr %l9, !tbaa !23
  store i32 %t571, ptr %l10, !tbaa !23
  br label %bb169
bb117:
  %t573 = load i32, ptr %l322, !range !{i32 0, i32 33}
  %t575 = trunc i64 19 to i32
  %t576 = icmp eq i32 %t573, %t575
  br i1 %t576, label %bb118, label %bb119
bb118:
  %t578 = load ptr, ptr %l0, !tbaa !29
  %t580 = getelementptr %"compiler/check:Checker", ptr %t578, i32 0, i32 1
  %t581 = load ptr, ptr %t580, !tbaa !29
  %t583 = getelementptr %"compiler/generic:Program", ptr %t581, i32 0, i32 2
  %t584 = load i32, ptr %l10, !tbaa !23
  %t587 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t583, i32 %t584)
  store i32 %t587, ptr %l330
  br label %bb120
bb119:
  store i1 false, ptr %l325, !tbaa !21
  br label %bb121
bb120:
  %t588 = load i32, ptr %l330, !range !{i32 0, i32 33}
  %t590 = trunc i64 19 to i32
  %t591 = icmp eq i32 %t588, %t590
  store i1 %t591, ptr %l325, !tbaa !21
  br label %bb121
bb121:
  %t593 = load i1, ptr %l325, !tbaa !21
  br i1 %t593, label %bb122, label %bb123
bb122:
  %t594 = load ptr, ptr %l0, !tbaa !29
  %t596 = getelementptr %"compiler/check:Checker", ptr %t594, i32 0, i32 1
  %t597 = load ptr, ptr %t596, !tbaa !29
  %t599 = getelementptr %"compiler/generic:Program", ptr %t597, i32 0, i32 2
  store ptr %t599, ptr %l336, !tbaa !29
  %t600 = load ptr, ptr %l0, !tbaa !29
  %t602 = getelementptr %"compiler/check:Checker", ptr %t600, i32 0, i32 1
  %t603 = load ptr, ptr %t602, !tbaa !29
  %t605 = getelementptr %"compiler/generic:Program", ptr %t603, i32 0, i32 2
  %t606 = load i32, ptr %l9, !tbaa !23
  %t609 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t605, i32 %t606)
  store i32 %t609, ptr %l341
  br label %bb124
bb123:
  store i1 false, ptr %l333, !tbaa !21
  br label %bb127
bb124:
  %t610 = load ptr, ptr %l0, !tbaa !29
  %t612 = getelementptr %"compiler/check:Checker", ptr %t610, i32 0, i32 1
  %t613 = load ptr, ptr %t612, !tbaa !29
  %t615 = getelementptr %"compiler/generic:Program", ptr %t613, i32 0, i32 2
  %t616 = load i32, ptr %l10, !tbaa !23
  %t619 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t615, i32 %t616)
  store i32 %t619, ptr %l346
  br label %bb125
bb125:
  %t620 = load ptr, ptr %l336, !tbaa !29
  %t621 = load i32, ptr %l341, !tbaa !23
  %t622 = load i32, ptr %l346, !tbaa !23
  %t623 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t620, i32 %t621, i32 %t622)
  store i1 %t623, ptr %l347
  br label %bb126
bb126:
  %t624 = load i1, ptr %l347, !tbaa !21
  store i1 %t624, ptr %l333, !tbaa !21
  br label %bb127
bb127:
  %t625 = load i1, ptr %l333, !tbaa !21
  br i1 %t625, label %bb128, label %bb129
bb128:
  store i1 true, ptr %l348, !tbaa !21
  br label %bb131
bb129:
  %t626 = load ptr, ptr %l0, !tbaa !29
  %t627 = load i32, ptr %l9, !tbaa !23
  %t628 = load ptr, ptr %l4, !tbaa !29
  store ptr %t628, ptr %l351, !tbaa !29
  %t629 = load i32, ptr %l10, !tbaa !23
  %t630 = load ptr, ptr %l351, !tbaa !29
  %t631 = call ptr @__olang_scope_of(ptr %t630, ptr null)
  %t632 = ptrtoint ptr %t631 to i64
  %t634 = inttoptr i64 %t632 to ptr
  %t637 = load ptr, ptr %l351, !tbaa !29
  %t639 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextBeside(ptr %v0, ptr %t634, ptr %t626, i32 %t627, ptr %t637, i32 %t629)
  store i1 %t639, ptr %l354
  br label %bb130
bb130:
  %t640 = load i1, ptr %l354, !tbaa !21
  store i1 %t640, ptr %l348, !tbaa !21
  br label %bb131
bb131:
  %t641 = load i1, ptr %l348, !tbaa !21
  br i1 %t641, label %bb132, label %bb133
bb132:
  store i1 true, ptr %l355, !tbaa !21
  br label %bb135
bb133:
  %t642 = load ptr, ptr %l0, !tbaa !29
  %t643 = load i32, ptr %l10, !tbaa !23
  %t644 = load ptr, ptr %l3, !tbaa !29
  store ptr %t644, ptr %l358, !tbaa !29
  %t645 = load i32, ptr %l9, !tbaa !23
  %t646 = load ptr, ptr %l358, !tbaa !29
  %t647 = call ptr @__olang_scope_of(ptr %t646, ptr null)
  %t648 = ptrtoint ptr %t647 to i64
  %t650 = inttoptr i64 %t648 to ptr
  %t653 = load ptr, ptr %l358, !tbaa !29
  %t655 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextBeside(ptr %v0, ptr %t650, ptr %t642, i32 %t643, ptr %t653, i32 %t645)
  store i1 %t655, ptr %l361
  br label %bb134
bb134:
  %t656 = load i1, ptr %l361, !tbaa !21
  store i1 %t656, ptr %l355, !tbaa !21
  br label %bb135
bb135:
  %t657 = load i1, ptr %l355, !tbaa !21
  br i1 %t657, label %bb136, label %bb137
bb136:
  %t658 = load ptr, ptr %l0, !tbaa !29
  %t660 = getelementptr %"compiler/check:Checker", ptr %t658, i32 0, i32 1
  %t661 = load ptr, ptr %t660, !tbaa !29
  %t663 = getelementptr %"compiler/generic:Program", ptr %t661, i32 0, i32 2
  store ptr %t663, ptr %l364, !tbaa !29
  %t664 = load ptr, ptr %l0, !tbaa !29
  %t666 = getelementptr %"compiler/check:Checker", ptr %t664, i32 0, i32 1
  %t667 = load ptr, ptr %t666, !tbaa !29
  %t669 = getelementptr %"compiler/generic:Program", ptr %t667, i32 0, i32 2
  store ptr %t669, ptr %l367, !tbaa !29
  %t670 = load ptr, ptr %l0, !tbaa !29
  %t671 = load i32, ptr %l9, !tbaa !23
  %t674 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %t670, i32 %t671)
  store i32 %t674, ptr %l370
  br label %bb138
bb137:
  %t675 = load ptr, ptr %l0, !tbaa !29
  store ptr %t675, ptr %l425, !tbaa !29
  %t676 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t676, ptr %l426
  %t677 = load ptr, ptr %l0, !tbaa !29
  %t678 = load i32, ptr %l9, !tbaa !23
  %t681 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t677, i32 %t678)
  store { i64, ptr } %t681, ptr %l429
  br label %bb163
bb138:
  %t682 = load ptr, ptr %l367, !tbaa !29
  %t683 = load i32, ptr %l370, !tbaa !23
  %t684 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t682, i32 %t683)
  store i32 %t684, ptr %l371
  br label %bb139
bb139:
  %t685 = load ptr, ptr %l364, !tbaa !29
  %t686 = load i32, ptr %l371, !tbaa !23
  %t687 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %t685, i32 %t686, i32 0)
  store i32 %t687, ptr %l372
  br label %bb140
bb140:
  %t688 = load i32, ptr %l372, !tbaa !23
  store i32 %t688, ptr %l19, !tbaa !23
  %t689 = load ptr, ptr %l0, !tbaa !29
  store ptr %t689, ptr %l373, !tbaa !29
  %t690 = load ptr, ptr %l3, !tbaa !29
  store ptr %t690, ptr %l374, !tbaa !29
  %t691 = load ptr, ptr %l0, !tbaa !29
  %t692 = load i32, ptr %l5, !tbaa !23
  %t695 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t691, i32 %t692)
  store i1 %t695, ptr %l377
  br label %bb141
bb141:
  %t696 = load i1, ptr %l377, !tbaa !21
  br i1 %t696, label %bb142, label %bb143
bb142:
  %t697 = load ptr, ptr %l0, !tbaa !29
  %t698 = load i32, ptr %l6, !tbaa !23
  %t701 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t697, i32 %t698)
  store i1 %t701, ptr %l381
  br label %bb144
bb143:
  store i1 false, ptr %l378, !tbaa !21
  br label %bb145
bb144:
  %t702 = load i1, ptr %l381, !tbaa !21
  store i1 %t702, ptr %l378, !tbaa !21
  br label %bb145
bb145:
  %t703 = load i1, ptr %l378, !tbaa !21
  br i1 %t703, label %bb146, label %bb147
bb146:
  %t704 = load ptr, ptr %l0, !tbaa !29
  %t706 = getelementptr %"compiler/check:Checker", ptr %t704, i32 0, i32 1
  %t707 = load ptr, ptr %t706, !tbaa !29
  %t709 = getelementptr %"compiler/generic:Program", ptr %t707, i32 0, i32 2
  %t710 = load i32, ptr %l19, !tbaa !23
  %t711 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  %t715 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t709, i32 %t710, i64 %t711)
  store i32 %t715, ptr %l388
  br label %bb148
bb147:
  %t716 = load i32, ptr %l19, !tbaa !23
  store i32 %t716, ptr %l382, !tbaa !23
  br label %bb149
bb148:
  %t718 = load i32, ptr %l388, !tbaa !23
  store i32 %t718, ptr %l382, !tbaa !23
  br label %bb149
bb149:
  %t719 = load %"compiler/source:Span", ptr %l1
  %t720 = load ptr, ptr %l374, !tbaa !29
  %t721 = call ptr @__olang_scope_of(ptr %t720, ptr null)
  %t722 = ptrtoint ptr %t721 to i64
  %t724 = inttoptr i64 %t722 to ptr
  %t725 = load ptr, ptr %l373, !tbaa !29
  %t726 = load ptr, ptr %l374, !tbaa !29
  %t727 = load i32, ptr %l382, !tbaa !23
  %t729 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %t724, ptr %v0, ptr %t725, ptr %t726, i32 %t727, %"compiler/source:Span" %t719)
  store ptr %t729, ptr %l392
  br label %bb150
bb150:
  %t730 = load ptr, ptr %l392, !tbaa !29
  store ptr %t730, ptr %l3, !tbaa !29
  %t731 = load ptr, ptr %l0, !tbaa !29
  store ptr %t731, ptr %l393, !tbaa !29
  %t732 = load ptr, ptr %l4, !tbaa !29
  store ptr %t732, ptr %l394, !tbaa !29
  %t733 = load ptr, ptr %l0, !tbaa !29
  %t734 = load i32, ptr %l5, !tbaa !23
  %t737 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t733, i32 %t734)
  store i1 %t737, ptr %l397
  br label %bb151
bb151:
  %t738 = load i1, ptr %l397, !tbaa !21
  br i1 %t738, label %bb152, label %bb153
bb152:
  %t739 = load ptr, ptr %l0, !tbaa !29
  %t740 = load i32, ptr %l6, !tbaa !23
  %t743 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t739, i32 %t740)
  store i1 %t743, ptr %l401
  br label %bb154
bb153:
  store i1 false, ptr %l398, !tbaa !21
  br label %bb155
bb154:
  %t744 = load i1, ptr %l401, !tbaa !21
  store i1 %t744, ptr %l398, !tbaa !21
  br label %bb155
bb155:
  %t745 = load i1, ptr %l398, !tbaa !21
  br i1 %t745, label %bb156, label %bb157
bb156:
  %t746 = load ptr, ptr %l0, !tbaa !29
  %t748 = getelementptr %"compiler/check:Checker", ptr %t746, i32 0, i32 1
  %t749 = load ptr, ptr %t748, !tbaa !29
  %t751 = getelementptr %"compiler/generic:Program", ptr %t749, i32 0, i32 2
  %t752 = load i32, ptr %l19, !tbaa !23
  %t753 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  %t757 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t751, i32 %t752, i64 %t753)
  store i32 %t757, ptr %l408
  br label %bb158
bb157:
  %t758 = load i32, ptr %l19, !tbaa !23
  store i32 %t758, ptr %l402, !tbaa !23
  br label %bb159
bb158:
  %t760 = load i32, ptr %l408, !tbaa !23
  store i32 %t760, ptr %l402, !tbaa !23
  br label %bb159
bb159:
  %t761 = load %"compiler/source:Span", ptr %l1
  %t762 = load ptr, ptr %l394, !tbaa !29
  %t763 = call ptr @__olang_scope_of(ptr %t762, ptr null)
  %t764 = ptrtoint ptr %t763 to i64
  %t766 = inttoptr i64 %t764 to ptr
  %t767 = load ptr, ptr %l393, !tbaa !29
  %t768 = load ptr, ptr %l394, !tbaa !29
  %t769 = load i32, ptr %l402, !tbaa !23
  %t771 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %t766, ptr %v0, ptr %t767, ptr %t768, i32 %t769, %"compiler/source:Span" %t761)
  store ptr %t771, ptr %l412
  br label %bb160
bb160:
  %t772 = load ptr, ptr %l412, !tbaa !29
  store ptr %t772, ptr %l4, !tbaa !29
  %t773 = load ptr, ptr %l3, !tbaa !29
  %t776 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t773)
  store i32 %t776, ptr %l415
  br label %bb161
bb161:
  %t777 = load i32, ptr %l415, !tbaa !23
  store i32 %t777, ptr %l20, !tbaa !23
  %t778 = load ptr, ptr %l4, !tbaa !29
  %t781 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t778)
  store i32 %t781, ptr %l418
  br label %bb162
bb162:
  %t782 = load i32, ptr %l418, !tbaa !23
  %t783 = load i32, ptr %l20, !tbaa !23
  store i32 %t783, ptr %l5, !tbaa !23
  store i32 %t782, ptr %l6, !tbaa !23
  %t787 = load i32, ptr %l19, !tbaa !23
  %t789 = load i32, ptr %l19, !tbaa !23
  store i32 %t787, ptr %l9, !tbaa !23
  store i32 %t789, ptr %l10, !tbaa !23
  br label %bb168
bb163:
  %t795 = load { i64, ptr }, ptr %l429, !tbaa !27
  %t796 = extractvalue { i64, ptr } %t795, 0
  %t797 = extractvalue { i64, ptr } %t795, 1
  %t798 = mul i64 %t796, 1
  %t799 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t798)
  call void @llvm.memcpy.p0.p0.i64(ptr %t799, ptr %t797, i64 %t798, i1 false)
  %t800 = insertvalue { i64, ptr } undef, i64 %t796, 0
  %t801 = insertvalue { i64, ptr } %t800, ptr %t799, 1
  store { i64, ptr } %t801, ptr %l430, !tbaa !27
  %t802 = load ptr, ptr %l0, !tbaa !29
  %t803 = load i32, ptr %l10, !tbaa !23
  %t806 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t802, i32 %t803)
  store { i64, ptr } %t806, ptr %l433
  br label %bb164
bb164:
  %t807 = load { i64, ptr }, ptr %l433, !tbaa !27
  %t808 = extractvalue { i64, ptr } %t807, 0
  %t809 = extractvalue { i64, ptr } %t807, 1
  %t810 = mul i64 %t808, 1
  %t811 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t810)
  call void @llvm.memcpy.p0.p0.i64(ptr %t811, ptr %t809, i64 %t810, i1 false)
  %t812 = insertvalue { i64, ptr } undef, i64 %t808, 0
  %t813 = insertvalue { i64, ptr } %t812, ptr %t811, 1
  %t814 = load { i64, ptr }, ptr %l430, !tbaa !27
  %t816 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeMismatch(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t814, { i64, ptr } %t813)
  store %"compiler/diagmsg:Msg" %t816, ptr %l435
  br label %bb165
bb165:
  %t817 = load ptr, ptr %l425, !tbaa !29
  %t818 = load %"compiler/source:Span", ptr %l426
  %t819 = load %"compiler/diagmsg:Msg", ptr %l435
  %t820 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t817, %"compiler/source:Span" %t818, %"compiler/diagmsg:Msg" %t819)
  store i64 %t820, ptr %l436
  br label %bb166
bb166:
  %t821 = load ptr, ptr %l0, !tbaa !29
  %t822 = load %"compiler/source:Span", ptr %l1
  %t823 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t827 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v3, ptr %t821, %"compiler/source:Span" %t822, i32 %t823, i64 0)
  store ptr %t827, ptr %l440
  br label %bb167
bb167:
  %t828 = load ptr, ptr %l440, !tbaa !29
  store ptr %t828, ptr %rv
  br label %ret
bb168:
  br label %bb169
bb169:
  br label %bb170
bb170:
  br label %bb171
bb171:
  %t829 = load ptr, ptr %l0, !tbaa !29
  %t830 = load i32, ptr %l9, !tbaa !23
  %t833 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeqMethod(ptr %v0, ptr %t829, i32 %t830)
  store i64 %t833, ptr %l443
  br label %bb172
bb172:
  %t834 = load i64, ptr %l443, !tbaa !24
  store i64 %t834, ptr %l24, !tbaa !24
  %t835 = load i64, ptr %l24, !tbaa !24
  %t837 = icmp eq i64 %t835, -2
  br i1 %t837, label %bb173, label %bb174
bb173:
  %t839 = load ptr, ptr %l0, !tbaa !29
  %t841 = getelementptr %"compiler/check:Checker", ptr %t839, i32 0, i32 1
  %t842 = load ptr, ptr %t841, !tbaa !29
  %t844 = getelementptr %"compiler/generic:Program", ptr %t842, i32 0, i32 0
  %t845 = load ptr, ptr %t844, !tbaa !29
  %t847 = getelementptr %"compiler/load:Loader", ptr %t845, i32 0, i32 4
  %t848 = load ptr, ptr %t847, !tbaa !29
  store ptr %t848, ptr %l449, !tbaa !29
  %t849 = load ptr, ptr %l0, !tbaa !29
  store ptr %t849, ptr %l450, !tbaa !29
  %t850 = load ptr, ptr %l0, !tbaa !29
  %t852 = getelementptr %"compiler/check:Checker", ptr %t850, i32 0, i32 45
  %t853 = getelementptr %"compiler/source:Span", ptr %t852, i32 0, i32 0
  %t854 = load i32, ptr %t853, !tbaa !23
  %t856 = icmp sge i32 %t854, 0
  br i1 %t856, label %bb175, label %bb176
bb174:
  br label %bb183
bb175:
  %t858 = load ptr, ptr %l0, !tbaa !29
  %t860 = getelementptr %"compiler/check:Checker", ptr %t858, i32 0, i32 45
  %t861 = load %"compiler/source:Span", ptr %t860
  store %"compiler/source:Span" %t861, ptr %l454
  br label %bb177
bb176:
  %t863 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t863, ptr %l454
  br label %bb177
bb177:
  %t865 = load ptr, ptr %l450, !tbaa !29
  %t866 = load %"compiler/source:Span", ptr %l454
  %t867 = call { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eat(ptr %v0, ptr %t865, %"compiler/source:Span" %t866)
  store { i64, [3 x i64] } %t867, ptr %l458
  br label %bb178
bb178:
  %t868 = load ptr, ptr %l0, !tbaa !29
  %t869 = load i32, ptr %l9, !tbaa !23
  %t872 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t868, i32 %t869)
  store { i64, ptr } %t872, ptr %l461
  br label %bb179
bb179:
  %t873 = load { i64, ptr }, ptr %l461, !tbaa !27
  %t874 = extractvalue { i64, ptr } %t873, 0
  %t875 = extractvalue { i64, ptr } %t873, 1
  %t876 = mul i64 %t874, 1
  %t877 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t876)
  call void @llvm.memcpy.p0.p0.i64(ptr %t877, ptr %t875, i64 %t876, i1 false)
  %t878 = insertvalue { i64, ptr } undef, i64 %t874, 0
  %t879 = insertvalue { i64, ptr } %t878, ptr %t877, 1
  %t881 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eProtocolPrivate(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d4, i32 0, i32 1) }, { i64, ptr } %t879, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d5, i32 0, i32 1) }, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d6, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t881, ptr %l463
  br label %bb180
bb180:
  %t882 = load ptr, ptr %l449, !tbaa !29
  %t883 = load { i64, [3 x i64] }, ptr %l458
  %t884 = load %"compiler/diagmsg:Msg", ptr %l463
  %t885 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrorOncePerLine(ptr %v0, ptr %v0, ptr %t882, { i64, [3 x i64] } %t883, %"compiler/diagmsg:Msg" %t884)
  store i64 %t885, ptr %l464
  br label %bb181
bb181:
  %t886 = load ptr, ptr %l0, !tbaa !29
  %t887 = load %"compiler/source:Span", ptr %l1
  %t888 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t892 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v3, ptr %t886, %"compiler/source:Span" %t887, i32 %t888, i64 0)
  store ptr %t892, ptr %l468
  br label %bb182
bb182:
  %t893 = load ptr, ptr %l468, !tbaa !29
  store ptr %t893, ptr %rv
  br label %ret
bb183:
  %t894 = load i64, ptr %l24, !tbaa !24
  %t896 = icmp sge i64 %t894, 0
  br i1 %t896, label %bb184, label %bb185
bb184:
  %t898 = load ptr, ptr %l0, !tbaa !29
  %t899 = load i32, ptr %l5, !tbaa !23
  %t902 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t898, i32 %t899)
  store i1 %t902, ptr %l474
  br label %bb186
bb185:
  store i1 false, ptr %l471, !tbaa !21
  br label %bb187
bb186:
  %t903 = load i1, ptr %l474, !tbaa !21
  store i1 %t903, ptr %l471, !tbaa !21
  br label %bb187
bb187:
  %t904 = load i1, ptr %l471, !tbaa !21
  br i1 %t904, label %bb188, label %bb189
bb188:
  %t905 = load ptr, ptr %l0, !tbaa !29
  %t906 = load i32, ptr %l6, !tbaa !23
  %t909 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t905, i32 %t906)
  store i1 %t909, ptr %l478
  br label %bb190
bb189:
  store i1 false, ptr %l475, !tbaa !21
  br label %bb191
bb190:
  %t910 = load i1, ptr %l478, !tbaa !21
  store i1 %t910, ptr %l475, !tbaa !21
  br label %bb191
bb191:
  %t911 = load i1, ptr %l475, !tbaa !21
  br i1 %t911, label %bb192, label %bb193
bb192:
  %t912 = load ptr, ptr %l0, !tbaa !29
  %t914 = getelementptr %"compiler/check:Checker", ptr %t912, i32 0, i32 1
  %t915 = load ptr, ptr %t914, !tbaa !29
  %t917 = getelementptr %"compiler/generic:Program", ptr %t915, i32 0, i32 2
  %t918 = load i32, ptr %l5, !tbaa !23
  %t921 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNullable(ptr %v0, ptr %t917, i32 %t918)
  store i1 %t921, ptr %l484
  br label %bb194
bb193:
  store i1 false, ptr %l479, !tbaa !21
  br label %bb199
bb194:
  %t922 = load i1, ptr %l484, !tbaa !21
  br i1 %t922, label %bb195, label %bb196
bb195:
  store i1 true, ptr %l485, !tbaa !21
  br label %bb198
bb196:
  %t923 = load ptr, ptr %l0, !tbaa !29
  %t925 = getelementptr %"compiler/check:Checker", ptr %t923, i32 0, i32 1
  %t926 = load ptr, ptr %t925, !tbaa !29
  %t928 = getelementptr %"compiler/generic:Program", ptr %t926, i32 0, i32 2
  %t929 = load i32, ptr %l6, !tbaa !23
  %t932 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNullable(ptr %v0, ptr %t928, i32 %t929)
  store i1 %t932, ptr %l490
  br label %bb197
bb197:
  %t933 = load i1, ptr %l490, !tbaa !21
  store i1 %t933, ptr %l485, !tbaa !21
  br label %bb198
bb198:
  %t934 = load i1, ptr %l485, !tbaa !21
  store i1 %t934, ptr %l479, !tbaa !21
  br label %bb199
bb199:
  %t935 = load i1, ptr %l479, !tbaa !21
  br i1 %t935, label %bb200, label %bb201
bb200:
  %t936 = load ptr, ptr %l0, !tbaa !29
  %t938 = getelementptr %"compiler/check:Checker", ptr %t936, i32 0, i32 37
  %t940 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t938)
  store i64 %t940, ptr %l493
  br label %bb202
bb201:
  br label %bb239
bb202:
  %t941 = load i64, ptr %l493, !tbaa !24
  store i64 %t941, ptr %l25, !tbaa !24
  %t942 = load ptr, ptr %l0, !tbaa !29
  %t943 = load %"compiler/source:Span", ptr %l1
  %t944 = load i32, ptr %l5, !tbaa !23
  store { i64, [1 x i64] } zeroinitializer, ptr %t945
  %t946 = getelementptr { i64, [1 x i64] }, ptr %t945, i32 0, i32 0
  store i64 4, ptr %t946
  %t947 = load { i64, [1 x i64] }, ptr %t945
  %t953 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocal(ptr %v0, ptr %t942, i32 0, %"compiler/source:Span" %t943, i32 %t944, i32 1, { i64, [1 x i64] } %t947)
  store i64 %t953, ptr %l499
  br label %bb203
bb203:
  %t954 = load i64, ptr %l499, !tbaa !24
  store i64 %t954, ptr %l26, !tbaa !24
  %t955 = load ptr, ptr %l0, !tbaa !29
  %t957 = getelementptr %"compiler/check:Checker", ptr %t955, i32 0, i32 37
  %t958 = load %"compiler/source:Span", ptr %l1
  %t959 = load i64, ptr %l26, !tbaa !24
  %t961 = trunc i64 %t959 to i32
  %t963 = load ptr, ptr %l3, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t964
  %t965 = getelementptr { i64, [3 x i64] }, ptr %t964, i32 0, i32 0
  store i64 0, ptr %t965
  %t967 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t958, 0
  %t969 = insertvalue { %"compiler/source:Span", i32, ptr } %t967, i32 %t961, 1
  %t971 = insertvalue { %"compiler/source:Span", i32, ptr } %t969, ptr %t963, 2
  %t972 = getelementptr { i64, [3 x i64] }, ptr %t964, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t971, ptr %t972
  %t973 = load { i64, [3 x i64] }, ptr %t964
  %t975 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t973, ptr %t975
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t957, ptr %t975)
  br label %bb204
bb204:
  %t978 = load ptr, ptr %l0, !tbaa !29
  %t979 = load %"compiler/source:Span", ptr %l1
  %t980 = load i32, ptr %l6, !tbaa !23
  store { i64, [1 x i64] } zeroinitializer, ptr %t981
  %t982 = getelementptr { i64, [1 x i64] }, ptr %t981, i32 0, i32 0
  store i64 4, ptr %t982
  %t983 = load { i64, [1 x i64] }, ptr %t981
  %t989 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocal(ptr %v0, ptr %t978, i32 0, %"compiler/source:Span" %t979, i32 %t980, i32 1, { i64, [1 x i64] } %t983)
  store i64 %t989, ptr %l514
  br label %bb205
bb205:
  %t990 = load i64, ptr %l514, !tbaa !24
  store i64 %t990, ptr %l27, !tbaa !24
  %t991 = load ptr, ptr %l0, !tbaa !29
  %t993 = getelementptr %"compiler/check:Checker", ptr %t991, i32 0, i32 37
  %t994 = load %"compiler/source:Span", ptr %l1
  %t995 = load i64, ptr %l27, !tbaa !24
  %t997 = trunc i64 %t995 to i32
  %t999 = load ptr, ptr %l4, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t1000
  %t1001 = getelementptr { i64, [3 x i64] }, ptr %t1000, i32 0, i32 0
  store i64 0, ptr %t1001
  %t1003 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t994, 0
  %t1005 = insertvalue { %"compiler/source:Span", i32, ptr } %t1003, i32 %t997, 1
  %t1007 = insertvalue { %"compiler/source:Span", i32, ptr } %t1005, ptr %t999, 2
  %t1008 = getelementptr { i64, [3 x i64] }, ptr %t1000, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t1007, ptr %t1008
  %t1009 = load { i64, [3 x i64] }, ptr %t1000
  %t1011 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t1009, ptr %t1011
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t993, ptr %t1011)
  br label %bb206
bb206:
  %t1014 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1014, ptr %l524, !tbaa !29
  %t1015 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t1015, ptr %l525
  %t1016 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t1016, ptr %l526, !tbaa !23
  store i32 19, ptr %l527
  %t1017 = load ptr, ptr %l0, !tbaa !29
  %t1018 = load %"compiler/source:Span", ptr %l1
  %t1019 = load i64, ptr %l26, !tbaa !24
  %t1023 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t1017, %"compiler/source:Span" %t1018, i64 %t1019)
  store ptr %t1023, ptr %l531
  br label %bb207
bb207:
  %t1024 = load ptr, ptr %l0, !tbaa !29
  %t1025 = load %"compiler/source:Span", ptr %l1
  %t1026 = load i32, ptr %l5, !tbaa !23
  %t1030 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enullOf(ptr %v0, ptr %v0, ptr %t1024, %"compiler/source:Span" %t1025, i32 %t1026)
  store ptr %t1030, ptr %l535
  br label %bb208
bb208:
  %t1031 = load ptr, ptr %l535, !tbaa !29
  %t1032 = load ptr, ptr %l524, !tbaa !29
  %t1033 = load %"compiler/source:Span", ptr %l525
  %t1034 = load i32, ptr %l526, !tbaa !23
  %t1035 = load i32, ptr %l527, !range !{i32 0, i32 52}
  %t1036 = load ptr, ptr %l531, !tbaa !29
  %t1038 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v0, ptr %v0, ptr %v3, ptr %t1032, %"compiler/source:Span" %t1033, i32 %t1034, i32 %t1035, ptr %t1036, ptr %t1031)
  store ptr %t1038, ptr %l537
  br label %bb209
bb209:
  %t1039 = load ptr, ptr %l537, !tbaa !29
  store ptr %t1039, ptr %l28, !tbaa !29
  %t1040 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1040, ptr %l538, !tbaa !29
  %t1041 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t1041, ptr %l539
  %t1042 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t1042, ptr %l540, !tbaa !23
  store i32 19, ptr %l541
  %t1043 = load ptr, ptr %l0, !tbaa !29
  %t1044 = load %"compiler/source:Span", ptr %l1
  %t1045 = load i64, ptr %l27, !tbaa !24
  %t1049 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t1043, %"compiler/source:Span" %t1044, i64 %t1045)
  store ptr %t1049, ptr %l545
  br label %bb210
bb210:
  %t1050 = load ptr, ptr %l0, !tbaa !29
  %t1051 = load %"compiler/source:Span", ptr %l1
  %t1052 = load i32, ptr %l6, !tbaa !23
  %t1056 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enullOf(ptr %v0, ptr %v0, ptr %t1050, %"compiler/source:Span" %t1051, i32 %t1052)
  store ptr %t1056, ptr %l549
  br label %bb211
bb211:
  %t1057 = load ptr, ptr %l549, !tbaa !29
  %t1058 = load ptr, ptr %l538, !tbaa !29
  %t1059 = load %"compiler/source:Span", ptr %l539
  %t1060 = load i32, ptr %l540, !tbaa !23
  %t1061 = load i32, ptr %l541, !range !{i32 0, i32 52}
  %t1062 = load ptr, ptr %l545, !tbaa !29
  %t1064 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v0, ptr %v0, ptr %v3, ptr %t1058, %"compiler/source:Span" %t1059, i32 %t1060, i32 %t1061, ptr %t1062, ptr %t1057)
  store ptr %t1064, ptr %l551
  br label %bb212
bb212:
  %t1065 = load ptr, ptr %l551, !tbaa !29
  store ptr %t1065, ptr %l29, !tbaa !29
  %t1066 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1066, ptr %l552, !tbaa !29
  %t1067 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t1067, ptr %l553
  %t1068 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t1068, ptr %l554, !tbaa !23
  store i32 19, ptr %l555
  %t1069 = load ptr, ptr %l0, !tbaa !29
  %t1070 = load %"compiler/source:Span", ptr %l1
  %t1071 = load i64, ptr %l27, !tbaa !24
  %t1075 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t1069, %"compiler/source:Span" %t1070, i64 %t1071)
  store ptr %t1075, ptr %l559
  br label %bb213
bb213:
  %t1076 = load ptr, ptr %l0, !tbaa !29
  %t1077 = load %"compiler/source:Span", ptr %l1
  %t1078 = load i32, ptr %l6, !tbaa !23
  %t1082 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enullOf(ptr %v0, ptr %v0, ptr %t1076, %"compiler/source:Span" %t1077, i32 %t1078)
  store ptr %t1082, ptr %l563
  br label %bb214
bb214:
  %t1083 = load ptr, ptr %l563, !tbaa !29
  %t1084 = load ptr, ptr %l552, !tbaa !29
  %t1085 = load %"compiler/source:Span", ptr %l553
  %t1086 = load i32, ptr %l554, !tbaa !23
  %t1087 = load i32, ptr %l555, !range !{i32 0, i32 52}
  %t1088 = load ptr, ptr %l559, !tbaa !29
  %t1090 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v0, ptr %v0, ptr %v3, ptr %t1084, %"compiler/source:Span" %t1085, i32 %t1086, i32 %t1087, ptr %t1088, ptr %t1083)
  store ptr %t1090, ptr %l565
  br label %bb215
bb215:
  %t1091 = load ptr, ptr %l565, !tbaa !29
  store ptr %t1091, ptr %l30, !tbaa !29
  %t1092 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1092, ptr %l566, !tbaa !29
  %t1093 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t1093, ptr %l567
  %t1094 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t1094, ptr %l568
  %t1095 = load ptr, ptr %l0, !tbaa !29
  %t1097 = getelementptr %"compiler/check:Checker", ptr %t1095, i32 0, i32 1
  %t1098 = load ptr, ptr %t1097, !tbaa !29
  %t1100 = getelementptr %"compiler/generic:Program", ptr %t1098, i32 0, i32 2
  %t1101 = load i32, ptr %l5, !tbaa !23
  %t1104 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNonNull(ptr %v0, ptr %t1100, i32 %t1101)
  store i32 %t1104, ptr %l573
  br label %bb216
bb216:
  %t1105 = load i64, ptr %l26, !tbaa !24
  %t1107 = trunc i64 %t1105 to i32
  store { i64, [4 x i64] } zeroinitializer, ptr %t1109
  %t1110 = getelementptr { i64, [4 x i64] }, ptr %t1109, i32 0, i32 0
  store i64 0, ptr %t1110
  %t1111 = load %"compiler/source:Span", ptr %l568
  %t1112 = insertvalue { %"compiler/source:Span", i32, i32 } undef, %"compiler/source:Span" %t1111, 0
  %t1113 = load i32, ptr %l573, !tbaa !23
  %t1114 = insertvalue { %"compiler/source:Span", i32, i32 } %t1112, i32 %t1113, 1
  %t1116 = insertvalue { %"compiler/source:Span", i32, i32 } %t1114, i32 %t1107, 2
  %t1117 = getelementptr { i64, [4 x i64] }, ptr %t1109, i32 0, i32 1
  store { %"compiler/source:Span", i32, i32 } %t1116, ptr %t1117
  %t1118 = load { i64, [4 x i64] }, ptr %t1109
  %t1120 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 40, i64 8)
  store { i64, [4 x i64] } %t1118, ptr %t1120
  %t1121 = load ptr, ptr %l566, !tbaa !29
  %t1122 = load %"compiler/source:Span", ptr %l567
  %t1124 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v3, ptr %v3, ptr %t1121, %"compiler/source:Span" %t1122, ptr %t1120)
  store ptr %t1124, ptr %l579
  br label %bb217
bb217:
  %t1125 = load ptr, ptr %l579, !tbaa !29
  store ptr %t1125, ptr %l31, !tbaa !29
  %t1126 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1126, ptr %l580, !tbaa !29
  %t1127 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t1127, ptr %l581
  %t1128 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t1128, ptr %l582
  %t1129 = load ptr, ptr %l0, !tbaa !29
  %t1131 = getelementptr %"compiler/check:Checker", ptr %t1129, i32 0, i32 1
  %t1132 = load ptr, ptr %t1131, !tbaa !29
  %t1134 = getelementptr %"compiler/generic:Program", ptr %t1132, i32 0, i32 2
  %t1135 = load i32, ptr %l6, !tbaa !23
  %t1138 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNonNull(ptr %v0, ptr %t1134, i32 %t1135)
  store i32 %t1138, ptr %l587
  br label %bb218
bb218:
  %t1139 = load i64, ptr %l27, !tbaa !24
  %t1141 = trunc i64 %t1139 to i32
  store { i64, [4 x i64] } zeroinitializer, ptr %t1143
  %t1144 = getelementptr { i64, [4 x i64] }, ptr %t1143, i32 0, i32 0
  store i64 0, ptr %t1144
  %t1145 = load %"compiler/source:Span", ptr %l582
  %t1146 = insertvalue { %"compiler/source:Span", i32, i32 } undef, %"compiler/source:Span" %t1145, 0
  %t1147 = load i32, ptr %l587, !tbaa !23
  %t1148 = insertvalue { %"compiler/source:Span", i32, i32 } %t1146, i32 %t1147, 1
  %t1150 = insertvalue { %"compiler/source:Span", i32, i32 } %t1148, i32 %t1141, 2
  %t1151 = getelementptr { i64, [4 x i64] }, ptr %t1143, i32 0, i32 1
  store { %"compiler/source:Span", i32, i32 } %t1150, ptr %t1151
  %t1152 = load { i64, [4 x i64] }, ptr %t1143
  %t1154 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 40, i64 8)
  store { i64, [4 x i64] } %t1152, ptr %t1154
  %t1155 = load ptr, ptr %l580, !tbaa !29
  %t1156 = load %"compiler/source:Span", ptr %l581
  %t1158 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v3, ptr %v3, ptr %t1155, %"compiler/source:Span" %t1156, ptr %t1154)
  store ptr %t1158, ptr %l593
  br label %bb219
bb219:
  %t1159 = load ptr, ptr %l593, !tbaa !29
  store ptr %t1159, ptr %l32, !tbaa !29
  %t1160 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1160, ptr %l594, !tbaa !29
  %t1161 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t1161, ptr %l595
  %t1162 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t1162, ptr %l596
  %t1163 = load i64, ptr %l24, !tbaa !24
  store i64 %t1163, ptr %l597, !tbaa !24
  %t1164 = load ptr, ptr %l31, !tbaa !29
  store ptr %t1164, ptr %l599, !tbaa !29
  %t1166 = icmp sge i64 0, 0
  br i1 %t1166, label %bb220, label %bb221
bb220:
  %t1168 = icmp sle i64 0, 1152921504606846975
  br i1 %t1168, label %bb222, label %bb223
bb221:
  call void @__olang_check_failed(ptr @olang_loc_1c2cb6c96b4eaee8_c1b953befa7e1dc)
  unreachable
bb222:
  %t1170 = mul i64 0, 8
  %t1171 = insertvalue { i64, ptr } undef, i64 0, 0
  %t1172 = insertvalue { i64, ptr } %t1171, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t1172, ptr %l602, !tbaa !27
  %t1173 = load ptr, ptr %l0, !tbaa !29
  %t1174 = load ptr, ptr %l32, !tbaa !29
  %t1177 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eone(ptr %v0, ptr %v3, ptr %v0, ptr %t1173, ptr %t1174)
  store { i64, ptr } %t1177, ptr %l605
  br label %bb224
bb223:
  call void @__olang_check_failed(ptr @olang_loc_1c2cb6c96b4eaee8_c1b953befa7e1dc)
  unreachable
bb224:
  %t1178 = icmp sge i64 0, 0
  br i1 %t1178, label %bb225, label %bb226
bb225:
  %t1180 = icmp sle i64 0, 2305843009213693951
  br i1 %t1180, label %bb227, label %bb228
bb226:
  call void @__olang_check_failed(ptr @olang_loc_7ec9c6dbabf95ed5_e8695782fec42ca9)
  unreachable
bb227:
  %t1182 = mul i64 0, 4
  %t1183 = insertvalue { i64, ptr } undef, i64 0, 0
  %t1184 = insertvalue { i64, ptr } %t1183, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t1185 = load ptr, ptr %l594, !tbaa !29
  %t1186 = load %"compiler/source:Span", ptr %l595
  %t1187 = load %"compiler/source:Span", ptr %l596
  %t1188 = load i64, ptr %l597, !tbaa !24
  %t1189 = load ptr, ptr %l599, !tbaa !29
  %t1190 = load { i64, ptr }, ptr %l602, !tbaa !27
  %t1191 = load { i64, ptr }, ptr %l605, !tbaa !27
  %t1193 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einvoke(ptr %v0, ptr %v3, ptr %v0, ptr %v0, ptr %v3, ptr %v3, ptr %t1185, %"compiler/source:Span" %t1186, %"compiler/source:Span" %t1187, i64 %t1188, ptr %t1189, { i64, ptr } %t1190, { i64, ptr } %t1191, { i64, ptr } %t1184)
  store ptr %t1193, ptr %l609
  br label %bb229
bb228:
  call void @__olang_check_failed(ptr @olang_loc_7ec9c6dbabf95ed5_e8695782fec42ca9)
  unreachable
bb229:
  %t1194 = load ptr, ptr %l609, !tbaa !29
  store ptr %t1194, ptr %l33, !tbaa !29
  %t1195 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t1195, ptr %l610
  %t1196 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t1196, ptr %l611, !tbaa !23
  %t1197 = load ptr, ptr %l30, !tbaa !29
  store ptr %t1197, ptr %l612, !tbaa !29
  %t1198 = load ptr, ptr %l0, !tbaa !29
  %t1199 = load %"compiler/source:Span", ptr %l1
  %t1200 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t1204 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v3, ptr %t1198, %"compiler/source:Span" %t1199, i32 %t1200, i64 0)
  store ptr %t1204, ptr %l616
  br label %bb230
bb230:
  %t1205 = load ptr, ptr %l616, !tbaa !29
  %t1206 = load ptr, ptr %l33, !tbaa !29
  %t1207 = load ptr, ptr %l612, !tbaa !29
  %t1210 = call %"compiler/typed:Cond" @compiler_2ftyped_3aCond_2ector(ptr %v3, ptr %v3, ptr %v3, ptr %v3, ptr %t1207, ptr %t1205, ptr %t1206)
  store %"compiler/typed:Cond" %t1210, ptr %l619
  br label %bb231
bb231:
  %t1211 = load %"compiler/typed:Cond", ptr %l619
  %t1212 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 24, i64 8)
  store %"compiler/typed:Cond" %t1211, ptr %t1212
  store { i64, [5 x i64] } zeroinitializer, ptr %t1213
  %t1214 = getelementptr { i64, [5 x i64] }, ptr %t1213, i32 0, i32 0
  store i64 11, ptr %t1214
  %t1215 = load %"compiler/source:Span", ptr %l610
  %t1216 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t1215, 0
  %t1217 = load i32, ptr %l611, !tbaa !23
  %t1218 = insertvalue { %"compiler/source:Span", i32, ptr } %t1216, i32 %t1217, 1
  %t1220 = insertvalue { %"compiler/source:Span", i32, ptr } %t1218, ptr %t1212, 2
  %t1221 = getelementptr { i64, [5 x i64] }, ptr %t1213, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t1220, ptr %t1221
  %t1222 = load { i64, [5 x i64] }, ptr %t1213
  %t1223 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 48, i64 8)
  store ptr %t1223, ptr %lp34
  %t1225 = load ptr, ptr %lp34
  store { i64, [5 x i64] } %t1222, ptr %t1225
  %t1226 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t1226, ptr %l622
  %t1227 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t1227, ptr %l623, !tbaa !23
  %t1228 = load ptr, ptr %l0, !tbaa !29
  %t1230 = getelementptr %"compiler/check:Checker", ptr %t1228, i32 0, i32 37
  %t1231 = load i64, ptr %l25, !tbaa !24
  %t1234 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t1230, i64 %t1231)
  store { i64, ptr } %t1234, ptr %l627
  br label %bb232
bb232:
  %t1235 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t1235, ptr %l628
  %t1236 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t1236, ptr %l629, !tbaa !23
  %t1237 = load ptr, ptr %l28, !tbaa !29
  %t1238 = load ptr, ptr %l29, !tbaa !29
  %t1240 = load ptr, ptr %lp34
  %t1244 = call %"compiler/typed:Cond" @compiler_2ftyped_3aCond_2ector(ptr %v3, ptr %v3, ptr %v3, ptr %v3, ptr %t1237, ptr %t1238, ptr %t1240)
  store %"compiler/typed:Cond" %t1244, ptr %l634
  br label %bb233
bb233:
  %t1245 = load %"compiler/typed:Cond", ptr %l634
  %t1246 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 24, i64 8)
  store %"compiler/typed:Cond" %t1245, ptr %t1246
  store { i64, [5 x i64] } zeroinitializer, ptr %t1247
  %t1248 = getelementptr { i64, [5 x i64] }, ptr %t1247, i32 0, i32 0
  store i64 11, ptr %t1248
  %t1249 = load %"compiler/source:Span", ptr %l628
  %t1250 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t1249, 0
  %t1251 = load i32, ptr %l629, !tbaa !23
  %t1252 = insertvalue { %"compiler/source:Span", i32, ptr } %t1250, i32 %t1251, 1
  %t1254 = insertvalue { %"compiler/source:Span", i32, ptr } %t1252, ptr %t1246, 2
  %t1255 = getelementptr { i64, [5 x i64] }, ptr %t1247, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t1254, ptr %t1255
  %t1256 = load { i64, [5 x i64] }, ptr %t1247
  %t1258 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 48, i64 8)
  store { i64, [5 x i64] } %t1256, ptr %t1258
  %t1259 = load { i64, ptr }, ptr %l627, !tbaa !27
  %t1261 = call %"compiler/typed:Seq" @compiler_2ftyped_3aSeq_2ector(ptr %v0, ptr %v3, ptr %v3, { i64, ptr } %t1259, ptr %t1258, i1 false)
  store %"compiler/typed:Seq" %t1261, ptr %l638
  br label %bb234
bb234:
  %t1262 = load %"compiler/typed:Seq", ptr %l638
  %t1263 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 32, i64 8)
  store %"compiler/typed:Seq" %t1262, ptr %t1263
  store { i64, [5 x i64] } zeroinitializer, ptr %t1264
  %t1265 = getelementptr { i64, [5 x i64] }, ptr %t1264, i32 0, i32 0
  store i64 12, ptr %t1265
  %t1266 = load %"compiler/source:Span", ptr %l622
  %t1267 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t1266, 0
  %t1268 = load i32, ptr %l623, !tbaa !23
  %t1269 = insertvalue { %"compiler/source:Span", i32, ptr } %t1267, i32 %t1268, 1
  %t1271 = insertvalue { %"compiler/source:Span", i32, ptr } %t1269, ptr %t1263, 2
  %t1272 = getelementptr { i64, [5 x i64] }, ptr %t1264, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t1271, ptr %t1272
  %t1273 = load { i64, [5 x i64] }, ptr %t1264
  %t1274 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 48, i64 8)
  store ptr %t1274, ptr %lp35
  %t1276 = load ptr, ptr %lp35
  store { i64, [5 x i64] } %t1273, ptr %t1276
  %t1277 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t1279 = trunc i64 95 to i32
  %t1280 = icmp eq i32 %t1277, %t1279
  br i1 %t1280, label %bb235, label %bb236
bb235:
  %t1282 = load ptr, ptr %l0, !tbaa !29
  %t1283 = load %"compiler/source:Span", ptr %l1
  %t1284 = load ptr, ptr %lp35
  %t1288 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enegate(ptr %v0, ptr %v3, ptr %v3, ptr %t1282, %"compiler/source:Span" %t1283, ptr %t1284)
  store ptr %t1288, ptr %l647
  br label %bb237
bb236:
  %t1289 = load ptr, ptr %lp35
  store ptr %t1289, ptr %l643, !tbaa !29
  br label %bb238
bb237:
  %t1291 = load ptr, ptr %l647, !tbaa !29
  store ptr %t1291, ptr %l643, !tbaa !29
  br label %bb238
bb238:
  %t1292 = load ptr, ptr %l643, !tbaa !29
  store ptr %t1292, ptr %rv
  br label %ret
bb239:
  %t1293 = load i64, ptr %l24, !tbaa !24
  %t1295 = icmp sge i64 %t1293, 0
  br i1 %t1295, label %bb240, label %bb241
bb240:
  %t1297 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1297, ptr %l651, !tbaa !29
  %t1298 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t1298, ptr %l652
  %t1299 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t1299, ptr %l653
  %t1300 = load i64, ptr %l24, !tbaa !24
  store i64 %t1300, ptr %l654, !tbaa !24
  %t1301 = load ptr, ptr %l3, !tbaa !29
  store ptr %t1301, ptr %l656, !tbaa !29
  %t1303 = icmp sge i64 0, 0
  br i1 %t1303, label %bb242, label %bb243
bb241:
  br label %bb256
bb242:
  %t1305 = icmp sle i64 0, 1152921504606846975
  br i1 %t1305, label %bb244, label %bb245
bb243:
  call void @__olang_check_failed(ptr @olang_loc_bc0d2701821819b6_446831e810be806a)
  unreachable
bb244:
  %t1307 = mul i64 0, 8
  %t1308 = insertvalue { i64, ptr } undef, i64 0, 0
  %t1309 = insertvalue { i64, ptr } %t1308, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t1309, ptr %l659, !tbaa !27
  %t1310 = load ptr, ptr %l0, !tbaa !29
  %t1311 = load ptr, ptr %l4, !tbaa !29
  store ptr %t1311, ptr %l661, !tbaa !29
  %t1312 = load ptr, ptr %l661, !tbaa !29
  %t1313 = call ptr @__olang_scope_of(ptr %t1312, ptr null)
  %t1314 = ptrtoint ptr %t1313 to i64
  %t1316 = inttoptr i64 %t1314 to ptr
  %t1318 = load ptr, ptr %l661, !tbaa !29
  %t1319 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eone(ptr %v0, ptr %t1316, ptr %v0, ptr %t1310, ptr %t1318)
  store { i64, ptr } %t1319, ptr %l663
  br label %bb246
bb245:
  call void @__olang_check_failed(ptr @olang_loc_bc0d2701821819b6_446831e810be806a)
  unreachable
bb246:
  %t1320 = icmp sge i64 0, 0
  br i1 %t1320, label %bb247, label %bb248
bb247:
  %t1322 = icmp sle i64 0, 2305843009213693951
  br i1 %t1322, label %bb249, label %bb250
bb248:
  call void @__olang_check_failed(ptr @olang_loc_7ec9c6dbabf95ed5_e8695782fec42ca9)
  unreachable
bb249:
  %t1324 = mul i64 0, 4
  %t1325 = insertvalue { i64, ptr } undef, i64 0, 0
  %t1326 = insertvalue { i64, ptr } %t1325, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t1327 = load ptr, ptr %l656, !tbaa !29
  %t1328 = call ptr @__olang_scope_of(ptr %t1327, ptr null)
  %t1329 = ptrtoint ptr %t1328 to i64
  %t1331 = inttoptr i64 %t1329 to ptr
  %t1332 = load ptr, ptr %l651, !tbaa !29
  %t1333 = load %"compiler/source:Span", ptr %l652
  %t1334 = load %"compiler/source:Span", ptr %l653
  %t1335 = load i64, ptr %l654, !tbaa !24
  %t1336 = load ptr, ptr %l656, !tbaa !29
  %t1337 = load { i64, ptr }, ptr %l659, !tbaa !27
  %t1338 = load { i64, ptr }, ptr %l663, !tbaa !27
  %t1340 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einvoke(ptr %v0, ptr %t1331, ptr %v0, ptr %v0, ptr %v3, ptr %v3, ptr %t1332, %"compiler/source:Span" %t1333, %"compiler/source:Span" %t1334, i64 %t1335, ptr %t1336, { i64, ptr } %t1337, { i64, ptr } %t1338, { i64, ptr } %t1326)
  store ptr %t1340, ptr %l668
  br label %bb251
bb250:
  call void @__olang_check_failed(ptr @olang_loc_7ec9c6dbabf95ed5_e8695782fec42ca9)
  unreachable
bb251:
  %t1341 = load ptr, ptr %l668, !tbaa !29
  store ptr %t1341, ptr %l36, !tbaa !29
  %t1342 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t1344 = trunc i64 95 to i32
  %t1345 = icmp eq i32 %t1342, %t1344
  br i1 %t1345, label %bb252, label %bb253
bb252:
  %t1347 = load ptr, ptr %l0, !tbaa !29
  %t1348 = load %"compiler/source:Span", ptr %l1
  %t1349 = load ptr, ptr %l36, !tbaa !29
  %t1353 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enegate(ptr %v0, ptr %v3, ptr %v3, ptr %t1347, %"compiler/source:Span" %t1348, ptr %t1349)
  store ptr %t1353, ptr %l675
  br label %bb254
bb253:
  %t1354 = load ptr, ptr %l36, !tbaa !29
  store ptr %t1354, ptr %l671, !tbaa !29
  br label %bb255
bb254:
  %t1356 = load ptr, ptr %l675, !tbaa !29
  store ptr %t1356, ptr %l671, !tbaa !29
  br label %bb255
bb255:
  %t1357 = load ptr, ptr %l671, !tbaa !29
  store ptr %t1357, ptr %rv
  br label %ret
bb256:
  %t1358 = load ptr, ptr %l0, !tbaa !29
  %t1359 = load i32, ptr %l5, !tbaa !23
  %t1362 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t1358, i32 %t1359)
  store i1 %t1362, ptr %l679
  br label %bb257
bb257:
  %t1363 = load i1, ptr %l679, !tbaa !21
  br i1 %t1363, label %bb258, label %bb259
bb258:
  %t1364 = load ptr, ptr %l0, !tbaa !29
  %t1365 = load i32, ptr %l6, !tbaa !23
  %t1368 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t1364, i32 %t1365)
  store i1 %t1368, ptr %l683
  br label %bb260
bb259:
  store i1 false, ptr %l680, !tbaa !21
  br label %bb261
bb260:
  %t1369 = load i1, ptr %l683, !tbaa !21
  store i1 %t1369, ptr %l680, !tbaa !21
  br label %bb261
bb261:
  %t1370 = load i1, ptr %l680, !tbaa !21
  br i1 %t1370, label %bb262, label %bb263
bb262:
  %t1371 = load ptr, ptr %l0, !tbaa !29
  %t1372 = load i32, ptr %l9, !tbaa !23
  %t1375 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisStruct(ptr %v0, ptr %t1371, i32 %t1372)
  store i1 %t1375, ptr %l687
  br label %bb264
bb263:
  store i1 false, ptr %l684, !tbaa !21
  br label %bb273
bb264:
  %t1376 = load i1, ptr %l687, !tbaa !21
  br i1 %t1376, label %bb265, label %bb266
bb265:
  store i1 true, ptr %l688, !tbaa !21
  br label %bb268
bb266:
  %t1377 = load ptr, ptr %l0, !tbaa !29
  %t1378 = load i32, ptr %l9, !tbaa !23
  %t1381 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisEnum(ptr %v0, ptr %t1377, i32 %t1378)
  store i1 %t1381, ptr %l691
  br label %bb267
bb267:
  %t1382 = load i1, ptr %l691, !tbaa !21
  store i1 %t1382, ptr %l688, !tbaa !21
  br label %bb268
bb268:
  %t1383 = load i1, ptr %l688, !tbaa !21
  br i1 %t1383, label %bb269, label %bb270
bb269:
  store i1 true, ptr %l692, !tbaa !21
  br label %bb272
bb270:
  %t1384 = load ptr, ptr %l0, !tbaa !29
  %t1386 = getelementptr %"compiler/check:Checker", ptr %t1384, i32 0, i32 1
  %t1387 = load ptr, ptr %t1386, !tbaa !29
  %t1389 = getelementptr %"compiler/generic:Program", ptr %t1387, i32 0, i32 2
  %t1390 = load i32, ptr %l9, !tbaa !23
  %t1393 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t1389, i32 %t1390)
  store i32 %t1393, ptr %l697
  br label %bb271
bb271:
  %t1394 = load i32, ptr %l697, !range !{i32 0, i32 33}
  %t1396 = trunc i64 29 to i32
  %t1397 = icmp eq i32 %t1394, %t1396
  store i1 %t1397, ptr %l692, !tbaa !21
  br label %bb272
bb272:
  %t1399 = load i1, ptr %l692, !tbaa !21
  store i1 %t1399, ptr %l684, !tbaa !21
  br label %bb273
bb273:
  %t1400 = load i1, ptr %l684, !tbaa !21
  br i1 %t1400, label %bb274, label %bb275
bb274:
  %t1401 = load ptr, ptr %l0, !tbaa !29
  %t1402 = load %"compiler/source:Span", ptr %l1
  %t1403 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t1404 = load ptr, ptr %l3, !tbaa !29
  store ptr %t1404, ptr %l704, !tbaa !29
  %t1405 = load ptr, ptr %l4, !tbaa !29
  store ptr %t1405, ptr %l706, !tbaa !29
  %t1407 = load ptr, ptr %l704, !tbaa !29
  %t1408 = call ptr @__olang_scope_of(ptr %t1407, ptr null)
  %t1409 = ptrtoint ptr %t1408 to i64
  %t1410 = load ptr, ptr %l706, !tbaa !29
  %t1411 = call ptr @__olang_scope_of(ptr %t1410, ptr null)
  %t1412 = ptrtoint ptr %t1411 to i64
  %t1414 = inttoptr i64 %t1409 to ptr
  %t1416 = inttoptr i64 %t1412 to ptr
  %t1421 = load ptr, ptr %l704, !tbaa !29
  %t1422 = load ptr, ptr %l706, !tbaa !29
  %t1423 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %t1414, ptr %t1416, ptr %v3, ptr %t1401, %"compiler/source:Span" %t1402, i32 %t1403, i32 19, ptr %t1421, ptr %t1422)
  store ptr %t1423, ptr %l709
  br label %bb276
bb275:
  br label %bb281
bb276:
  %t1424 = load ptr, ptr %l709, !tbaa !29
  store ptr %t1424, ptr %l37, !tbaa !29
  %t1425 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t1427 = trunc i64 95 to i32
  %t1428 = icmp eq i32 %t1425, %t1427
  br i1 %t1428, label %bb277, label %bb278
bb277:
  %t1430 = load ptr, ptr %l0, !tbaa !29
  %t1431 = load %"compiler/source:Span", ptr %l1
  %t1432 = load ptr, ptr %l37, !tbaa !29
  %t1436 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enegate(ptr %v0, ptr %v3, ptr %v3, ptr %t1430, %"compiler/source:Span" %t1431, ptr %t1432)
  store ptr %t1436, ptr %l716
  br label %bb279
bb278:
  %t1437 = load ptr, ptr %l37, !tbaa !29
  store ptr %t1437, ptr %l712, !tbaa !29
  br label %bb280
bb279:
  %t1439 = load ptr, ptr %l716, !tbaa !29
  store ptr %t1439, ptr %l712, !tbaa !29
  br label %bb280
bb280:
  %t1440 = load ptr, ptr %l712, !tbaa !29
  store ptr %t1440, ptr %rv
  br label %ret
bb281:
  %t1441 = load ptr, ptr %l0, !tbaa !29
  %t1442 = load i32, ptr %l9, !tbaa !23
  %t1445 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epartsHaveEq(ptr %v0, ptr %t1441, i32 %t1442, i64 0)
  store i1 %t1445, ptr %l720
  br label %bb282
bb282:
  %t1446 = load i1, ptr %l720, !tbaa !21
  br i1 %t1446, label %bb283, label %bb284
bb283:
  %t1447 = load ptr, ptr %l0, !tbaa !29
  %t1448 = load %"compiler/source:Span", ptr %l1
  %t1449 = load ptr, ptr %l3, !tbaa !29
  store ptr %t1449, ptr %l723, !tbaa !29
  %t1450 = load ptr, ptr %l4, !tbaa !29
  store ptr %t1450, ptr %l724, !tbaa !29
  %t1451 = load i32, ptr %l9, !tbaa !23
  %t1452 = load ptr, ptr %l723, !tbaa !29
  %t1453 = call ptr @__olang_scope_of(ptr %t1452, ptr null)
  %t1454 = ptrtoint ptr %t1453 to i64
  %t1455 = load ptr, ptr %l724, !tbaa !29
  %t1456 = call ptr @__olang_scope_of(ptr %t1455, ptr null)
  %t1457 = ptrtoint ptr %t1456 to i64
  %t1459 = inttoptr i64 %t1454 to ptr
  %t1461 = inttoptr i64 %t1457 to ptr
  %t1464 = load ptr, ptr %l723, !tbaa !29
  %t1465 = load ptr, ptr %l724, !tbaa !29
  %t1467 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epartsEqual(ptr %v0, ptr %t1459, ptr %t1461, ptr %v3, ptr %t1447, %"compiler/source:Span" %t1448, ptr %t1464, ptr %t1465, i32 %t1451)
  store ptr %t1467, ptr %l728
  br label %bb285
bb284:
  br label %bb295
bb285:
  %t1468 = load ptr, ptr %l728, !tbaa !29
  store ptr %t1468, ptr %l38, !tbaa !29
  %t1469 = load ptr, ptr %l38, !tbaa !29
  %t1471 = icmp eq ptr %t1469, null
  br i1 %t1471, label %bb286, label %bb287
bb286:
  %t1473 = load ptr, ptr %l0, !tbaa !29
  %t1474 = load %"compiler/source:Span", ptr %l1
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %v0, ptr %t1473, %"compiler/source:Span" %t1474, { i64, ptr } { i64 54, ptr getelementptr inbounds (<{ i64, [54 x i8] }>, ptr @.d7, i32 0, i32 1) })
  br label %bb288
bb287:
  br label %bb290
bb288:
  %t1477 = load ptr, ptr %l0, !tbaa !29
  %t1478 = load %"compiler/source:Span", ptr %l1
  %t1479 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t1483 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v3, ptr %t1477, %"compiler/source:Span" %t1478, i32 %t1479, i64 0)
  store ptr %t1483, ptr %l736
  br label %bb289
bb289:
  %t1484 = load ptr, ptr %l736, !tbaa !29
  store ptr %t1484, ptr %rv
  br label %ret
bb290:
  %t1485 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t1487 = trunc i64 95 to i32
  %t1488 = icmp eq i32 %t1485, %t1487
  br i1 %t1488, label %bb291, label %bb292
bb291:
  %t1490 = load ptr, ptr %l0, !tbaa !29
  %t1491 = load %"compiler/source:Span", ptr %l1
  %t1492 = load ptr, ptr %l38, !tbaa !29
  %t1496 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enegate(ptr %v0, ptr %v3, ptr %v3, ptr %t1490, %"compiler/source:Span" %t1491, ptr %t1492)
  store ptr %t1496, ptr %l743
  br label %bb293
bb292:
  %t1497 = load ptr, ptr %l38, !tbaa !29
  store ptr %t1497, ptr %l739, !tbaa !29
  br label %bb294
bb293:
  %t1499 = load ptr, ptr %l743, !tbaa !29
  store ptr %t1499, ptr %l739, !tbaa !29
  br label %bb294
bb294:
  %t1500 = load ptr, ptr %l739, !tbaa !29
  store ptr %t1500, ptr %rv
  br label %ret
bb295:
  %t1501 = load ptr, ptr %l0, !tbaa !29
  %t1502 = load i32, ptr %l5, !tbaa !23
  %t1505 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t1501, i32 %t1502)
  store i1 %t1505, ptr %l747
  br label %bb296
bb296:
  %t1506 = load i1, ptr %l747, !tbaa !21
  br i1 %t1506, label %bb297, label %bb298
bb297:
  %t1507 = load ptr, ptr %l0, !tbaa !29
  %t1508 = load i32, ptr %l6, !tbaa !23
  %t1511 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t1507, i32 %t1508)
  store i1 %t1511, ptr %l751
  br label %bb299
bb298:
  store i1 false, ptr %l748, !tbaa !21
  br label %bb300
bb299:
  %t1512 = load i1, ptr %l751, !tbaa !21
  store i1 %t1512, ptr %l748, !tbaa !21
  br label %bb300
bb300:
  %t1513 = load i1, ptr %l748, !tbaa !21
  br i1 %t1513, label %bb301, label %bb302
bb301:
  %t1514 = load ptr, ptr %l0, !tbaa !29
  %t1516 = getelementptr %"compiler/check:Checker", ptr %t1514, i32 0, i32 1
  %t1517 = load ptr, ptr %t1516, !tbaa !29
  %t1519 = getelementptr %"compiler/generic:Program", ptr %t1517, i32 0, i32 2
  %t1520 = load i32, ptr %l9, !tbaa !23
  %t1521 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  %t1525 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t1519, i32 %t1520, i64 %t1521)
  store i32 %t1525, ptr %l758
  br label %bb303
bb302:
  %t1526 = load i32, ptr %l9, !tbaa !23
  store i32 %t1526, ptr %l752, !tbaa !23
  br label %bb304
bb303:
  %t1528 = load i32, ptr %l758, !tbaa !23
  store i32 %t1528, ptr %l752, !tbaa !23
  br label %bb304
bb304:
  %t1529 = load i32, ptr %l752, !tbaa !23
  store i32 %t1529, ptr %l39, !tbaa !23
  %t1530 = load ptr, ptr %l0, !tbaa !29
  %t1531 = load i32, ptr %l5, !tbaa !23
  %t1534 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t1530, i32 %t1531)
  store i1 %t1534, ptr %l762
  br label %bb305
bb305:
  %t1535 = load i1, ptr %l762, !tbaa !21
  br i1 %t1535, label %bb306, label %bb307
bb306:
  %t1536 = load ptr, ptr %l0, !tbaa !29
  %t1537 = load i32, ptr %l6, !tbaa !23
  %t1540 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t1536, i32 %t1537)
  store i1 %t1540, ptr %l766
  br label %bb308
bb307:
  store i1 false, ptr %l763, !tbaa !21
  br label %bb309
bb308:
  %t1541 = load i1, ptr %l766, !tbaa !21
  store i1 %t1541, ptr %l763, !tbaa !21
  br label %bb309
bb309:
  %t1542 = load i1, ptr %l763, !tbaa !21
  br i1 %t1542, label %bb310, label %bb311
bb310:
  %t1543 = load ptr, ptr %l0, !tbaa !29
  %t1545 = getelementptr %"compiler/check:Checker", ptr %t1543, i32 0, i32 1
  %t1546 = load ptr, ptr %t1545, !tbaa !29
  %t1548 = getelementptr %"compiler/generic:Program", ptr %t1546, i32 0, i32 2
  %t1549 = load i32, ptr %l5, !tbaa !23
  %t1552 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNullable(ptr %v0, ptr %t1548, i32 %t1549)
  store i1 %t1552, ptr %l772
  br label %bb312
bb311:
  store i1 false, ptr %l767, !tbaa !21
  br label %bb317
bb312:
  %t1553 = load i1, ptr %l772, !tbaa !21
  br i1 %t1553, label %bb313, label %bb314
bb313:
  store i1 true, ptr %l773, !tbaa !21
  br label %bb316
bb314:
  %t1554 = load ptr, ptr %l0, !tbaa !29
  %t1556 = getelementptr %"compiler/check:Checker", ptr %t1554, i32 0, i32 1
  %t1557 = load ptr, ptr %t1556, !tbaa !29
  %t1559 = getelementptr %"compiler/generic:Program", ptr %t1557, i32 0, i32 2
  %t1560 = load i32, ptr %l6, !tbaa !23
  %t1563 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNullable(ptr %v0, ptr %t1559, i32 %t1560)
  store i1 %t1563, ptr %l778
  br label %bb315
bb315:
  %t1564 = load i1, ptr %l778, !tbaa !21
  store i1 %t1564, ptr %l773, !tbaa !21
  br label %bb316
bb316:
  %t1565 = load i1, ptr %l773, !tbaa !21
  store i1 %t1565, ptr %l767, !tbaa !21
  br label %bb317
bb317:
  %t1566 = load i1, ptr %l767, !tbaa !21
  br i1 %t1566, label %bb318, label %bb319
bb318:
  %t1567 = load ptr, ptr %l0, !tbaa !29
  %t1569 = getelementptr %"compiler/check:Checker", ptr %t1567, i32 0, i32 1
  %t1570 = load ptr, ptr %t1569, !tbaa !29
  %t1572 = getelementptr %"compiler/generic:Program", ptr %t1570, i32 0, i32 2
  %t1573 = load i32, ptr %l39, !tbaa !23
  %t1576 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOrNull(ptr %v0, ptr %t1572, i32 %t1573)
  store i32 %t1576, ptr %l783
  br label %bb320
bb319:
  br label %bb321
bb320:
  %t1577 = load i32, ptr %l783, !tbaa !23
  store i32 %t1577, ptr %l39, !tbaa !23
  br label %bb321
bb321:
  %t1578 = load ptr, ptr %l0, !tbaa !29
  %t1579 = load ptr, ptr %l3, !tbaa !29
  store ptr %t1579, ptr %l785, !tbaa !29
  %t1580 = load i32, ptr %l39, !tbaa !23
  %t1581 = load %"compiler/source:Span", ptr %l1
  %t1582 = load ptr, ptr %l785, !tbaa !29
  %t1583 = call ptr @__olang_scope_of(ptr %t1582, ptr null)
  %t1584 = ptrtoint ptr %t1583 to i64
  %t1586 = inttoptr i64 %t1584 to ptr
  %t1588 = load ptr, ptr %l785, !tbaa !29
  %t1591 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %t1586, ptr %v3, ptr %t1578, ptr %t1588, i32 %t1580, %"compiler/source:Span" %t1581)
  store ptr %t1591, ptr %l789
  br label %bb322
bb322:
  %t1592 = load ptr, ptr %l789, !tbaa !29
  store ptr %t1592, ptr %l40, !tbaa !29
  %t1593 = load ptr, ptr %l0, !tbaa !29
  %t1594 = load ptr, ptr %l4, !tbaa !29
  store ptr %t1594, ptr %l791, !tbaa !29
  %t1595 = load i32, ptr %l39, !tbaa !23
  %t1596 = load %"compiler/source:Span", ptr %l1
  %t1597 = load ptr, ptr %l791, !tbaa !29
  %t1598 = call ptr @__olang_scope_of(ptr %t1597, ptr null)
  %t1599 = ptrtoint ptr %t1598 to i64
  %t1601 = inttoptr i64 %t1599 to ptr
  %t1603 = load ptr, ptr %l791, !tbaa !29
  %t1606 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %t1601, ptr %v3, ptr %t1593, ptr %t1603, i32 %t1595, %"compiler/source:Span" %t1596)
  store ptr %t1606, ptr %l795
  br label %bb323
bb323:
  %t1607 = load ptr, ptr %l795, !tbaa !29
  store ptr %t1607, ptr %l41, !tbaa !29
  %t1608 = load ptr, ptr %l0, !tbaa !29
  %t1610 = getelementptr %"compiler/check:Checker", ptr %t1608, i32 0, i32 36
  %t1612 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t1610)
  store i64 %t1612, ptr %l798
  br label %bb324
bb324:
  %t1613 = load i64, ptr %l798, !tbaa !24
  store i64 %t1613, ptr %l42, !tbaa !24
  %t1614 = load ptr, ptr %l0, !tbaa !29
  %t1616 = getelementptr %"compiler/check:Checker", ptr %t1614, i32 0, i32 36
  %t1617 = load ptr, ptr %l40, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v3, ptr %t1616, ptr %t1617)
  br label %bb325
bb325:
  %t1620 = load ptr, ptr %l0, !tbaa !29
  %t1622 = getelementptr %"compiler/check:Checker", ptr %t1620, i32 0, i32 36
  %t1623 = load ptr, ptr %l41, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v3, ptr %t1622, ptr %t1623)
  br label %bb326
bb326:
  %t1626 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1626, ptr %l805, !tbaa !29
  %t1627 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t1627, ptr %l806
  %t1628 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t1628, ptr %l807, !tbaa !23
  %t1629 = load i32, ptr %l39, !tbaa !23
  store { i64, [3 x i64] } zeroinitializer, ptr %t1630
  %t1631 = getelementptr { i64, [3 x i64] }, ptr %t1630, i32 0, i32 0
  store i64 4, ptr %t1631
  %t1633 = insertvalue { i32, i32 } undef, i32 0, 0
  %t1635 = insertvalue { i32, i32 } %t1633, i32 %t1629, 1
  %t1636 = getelementptr { i64, [3 x i64] }, ptr %t1630, i32 0, i32 1
  store { i32, i32 } %t1635, ptr %t1636
  %t1637 = load { i64, [3 x i64] }, ptr %t1630
  %t1639 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 32, i64 8)
  store { i64, [3 x i64] } %t1637, ptr %t1639
  store ptr %t1639, ptr %l811, !tbaa !29
  %t1640 = load ptr, ptr %l0, !tbaa !29
  %t1642 = getelementptr %"compiler/check:Checker", ptr %t1640, i32 0, i32 36
  %t1643 = load i64, ptr %l42, !tbaa !24
  %t1646 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t1642, i64 %t1643)
  store { i64, ptr } %t1646, ptr %l815
  br label %bb327
bb327:
  %t1647 = load ptr, ptr %l805, !tbaa !29
  %t1648 = load %"compiler/source:Span", ptr %l806
  %t1649 = load i32, ptr %l807, !tbaa !23
  %t1650 = load ptr, ptr %l811, !tbaa !29
  %t1651 = load { i64, ptr }, ptr %l815, !tbaa !27
  %t1652 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecallOf(ptr %v0, ptr %v3, ptr %v0, ptr %v3, ptr %t1647, %"compiler/source:Span" %t1648, i32 %t1649, ptr %t1650, { i64, ptr } %t1651)
  store ptr %t1652, ptr %l816
  br label %bb328
bb328:
  %t1653 = load ptr, ptr %l816, !tbaa !29
  store ptr %t1653, ptr %l43, !tbaa !29
  %t1654 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t1656 = trunc i64 95 to i32
  %t1657 = icmp eq i32 %t1654, %t1656
  br i1 %t1657, label %bb329, label %bb330
bb329:
  %t1659 = load ptr, ptr %l0, !tbaa !29
  %t1660 = load %"compiler/source:Span", ptr %l1
  %t1661 = load ptr, ptr %l43, !tbaa !29
  %t1665 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enegate(ptr %v0, ptr %v3, ptr %v3, ptr %t1659, %"compiler/source:Span" %t1660, ptr %t1661)
  store ptr %t1665, ptr %l823
  br label %bb331
bb330:
  %t1666 = load ptr, ptr %l43, !tbaa !29
  store ptr %t1666, ptr %l819, !tbaa !29
  br label %bb332
bb331:
  %t1668 = load ptr, ptr %l823, !tbaa !29
  store ptr %t1668, ptr %l819, !tbaa !29
  br label %bb332
bb332:
  %t1669 = load ptr, ptr %l819, !tbaa !29
  store ptr %t1669, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrWordCalled(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i64 %a3, { i64, ptr } %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca i32
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l9 = alloca i32
  %l10 = alloca ptr
  %l11 = alloca i64
  %l12 = alloca i32
  %l13 = alloca i64
  %l14 = alloca { i64, ptr }
  %l15 = alloca i64
  %l16 = alloca i64
  %l21 = alloca { i64, ptr }
  %l25 = alloca i1
  %l30 = alloca ptr
  %l31 = alloca %"compiler/source:Span"
  %l34 = alloca %"compiler/diagmsg:Msg"
  %l35 = alloca i64
  %l40 = alloca ptr
  %l45 = alloca i1
  %l52 = alloca ptr
  %l60 = alloca ptr
  %l63 = alloca ptr
  %l68 = alloca i32
  %l69 = alloca { i64, ptr }
  %l70 = alloca { i64, ptr }
  %l73 = alloca i32
  %l77 = alloca i32
  %l85 = alloca ptr
  %l90 = alloca i32
  %l91 = alloca { i64, ptr }
  %l92 = alloca { i64, ptr }
  %l97 = alloca i64
  %l102 = alloca ptr
  %l107 = alloca i32
  %l108 = alloca { i64, ptr }
  %l115 = alloca { i64, ptr }
  %l119 = alloca ptr
  %l123 = alloca ptr
  %l126 = alloca %"compiler/source:Span"
  %l127 = alloca i32
  %l128 = alloca i32
  %l129 = alloca i64
  %l133 = alloca { i64, ptr }
  %l135 = alloca %"compiler/typed:Make"
  %l145 = alloca ptr
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca ptr
  %t252 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store i32 %a2, ptr %l2
  store i64 %a3, ptr %l3
  store { i64, ptr } %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t5 = load i32, ptr %l2, !tbaa !23
  %t8 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrValCodes(ptr %v0, ptr %s0, ptr %t4, i32 %t5)
  store { i64, ptr } %t8, ptr %l21
  br label %bb1
bb1:
  %t9 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t9, ptr %l5, !tbaa !27
  %t10 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t10, 0
  %t14 = icmp sgt i64 %t12, 0
  br i1 %t14, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l25, !tbaa !21
  br label %bb4
bb3:
  %t16 = load i64, ptr %l3, !tbaa !24
  %t17 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t19 = extractvalue { i64, ptr } %t17, 0
  %t22 = icmp sge i64 %t16, %t19
  store i1 %t22, ptr %l25, !tbaa !21
  br label %bb4
bb4:
  %t24 = load i1, ptr %l25, !tbaa !21
  br i1 %t24, label %bb5, label %bb6
bb5:
  %t25 = load ptr, ptr %l0, !tbaa !29
  store ptr %t25, ptr %l30, !tbaa !29
  %t26 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t26, ptr %l31
  %t27 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t29 = extractvalue { i64, ptr } %t27, 0
  %t31 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eArgCount(ptr %v0, ptr %v0, i64 0, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d8, i32 0, i32 1) }, i64 %t29)
  store %"compiler/diagmsg:Msg" %t31, ptr %l34
  br label %bb7
bb6:
  br label %bb11
bb7:
  %t32 = load ptr, ptr %l30, !tbaa !29
  %t33 = load %"compiler/source:Span", ptr %l31
  %t34 = load %"compiler/diagmsg:Msg", ptr %l34
  %t35 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t32, %"compiler/source:Span" %t33, %"compiler/diagmsg:Msg" %t34)
  store i64 %t35, ptr %l35
  br label %bb8
bb8:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t37 = load { i64, ptr }, ptr %l4, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v1, ptr %t36, { i64, ptr } %t37)
  br label %bb9
bb9:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t41 = load %"compiler/source:Span", ptr %l1
  %t44 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t40, %"compiler/source:Span" %t41)
  store ptr %t44, ptr %l40
  br label %bb10
bb10:
  call void @__olang_scope_close(ptr %s0)
  %t45 = load ptr, ptr %l40, !tbaa !29
  store ptr %t45, ptr %rv
  br label %ret
bb11:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/check:Checker", ptr %t46, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !29
  %t51 = getelementptr %"compiler/generic:Program", ptr %t49, i32 0, i32 2
  %t52 = load i32, ptr %l2, !tbaa !23
  %t55 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrCarries(ptr %v0, ptr %t51, i32 %t52)
  store i1 %t55, ptr %l45
  br label %bb12
bb12:
  %t56 = load i1, ptr %l45, !tbaa !21
  %t57 = xor i1 %t56, true
  br i1 %t57, label %bb13, label %bb14
bb13:
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t60 = load %"compiler/source:Span", ptr %l1
  %t61 = load i32, ptr %l2, !tbaa !23
  %t62 = load i64, ptr %l3, !tbaa !24
  %t64 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !27
  %t66 = getelementptr i64, ptr %t65, i64 %t62
  %t67 = load i64, ptr %t66, !tbaa !34
  %t72 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v2, ptr %t59, %"compiler/source:Span" %t60, i32 %t61, i64 %t67)
  store ptr %t72, ptr %l52
  br label %bb15
bb14:
  br label %bb16
bb15:
  call void @__olang_scope_close(ptr %s0)
  %t73 = load ptr, ptr %l52, !tbaa !29
  store ptr %t73, ptr %rv
  br label %ret
bb16:
  %t74 = load i64, ptr %l3, !tbaa !24
  %t76 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t77 = load ptr, ptr %t76, !tbaa !27
  %t78 = getelementptr i64, ptr %t77, i64 %t74
  %t79 = load i64, ptr %t78, !tbaa !34
  store i64 %t79, ptr %l6, !tbaa !24
  %t81 = load i64, ptr %l6, !tbaa !24
  %t83 = ashr i64 %t81, 16
  %t85 = sub i64 %t83, 1
  store i64 %t85, ptr %l7, !tbaa !24
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr %"compiler/check:Checker", ptr %t87, i32 0, i32 1
  %t90 = load ptr, ptr %t89, !tbaa !29
  %t92 = getelementptr %"compiler/generic:Program", ptr %t90, i32 0, i32 2
  store ptr %t92, ptr %l60, !tbaa !29
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t95 = getelementptr %"compiler/check:Checker", ptr %t93, i32 0, i32 1
  %t96 = load ptr, ptr %t95, !tbaa !29
  %t98 = getelementptr %"compiler/generic:Program", ptr %t96, i32 0, i32 2
  store ptr %t98, ptr %l63, !tbaa !29
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t101 = getelementptr %"compiler/check:Checker", ptr %t99, i32 0, i32 1
  %t102 = load ptr, ptr %t101, !tbaa !29
  %t104 = getelementptr %"compiler/generic:Program", ptr %t102, i32 0, i32 2
  %t105 = load i32, ptr %l2, !tbaa !23
  %t108 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrValItems(ptr %v0, ptr %t104, i32 %t105)
  store i32 %t108, ptr %l68
  br label %bb17
bb17:
  %t109 = load ptr, ptr %l63, !tbaa !29
  %t110 = load i32, ptr %l68, !tbaa !23
  %t111 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t109, i32 %t110)
  store { i64, ptr } %t111, ptr %l69
  br label %bb18
bb18:
  %t112 = load { i64, ptr }, ptr %l69, !tbaa !27
  store { i64, ptr } %t112, ptr %l70, !tbaa !27
  %t113 = load i64, ptr %l7, !tbaa !24
  %t115 = getelementptr { i64, ptr }, ptr %l70, i32 0, i32 1
  %t116 = load ptr, ptr %t115, !tbaa !27
  %t117 = getelementptr i32, ptr %t116, i64 %t113
  %t118 = load i32, ptr %t117, !tbaa !33
  %t119 = load ptr, ptr %l60, !tbaa !29
  %t121 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t119, i32 %t118)
  store i32 %t121, ptr %l73
  br label %bb19
bb19:
  %t122 = load i32, ptr %l73, !tbaa !23
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t125 = getelementptr %"compiler/check:Checker", ptr %t123, i32 0, i32 1
  %t126 = load ptr, ptr %t125, !tbaa !29
  %t130 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePayloadOf(ptr %v0, ptr %t126, i32 %t122)
  store i32 %t130, ptr %l77
  br label %bb20
bb20:
  %t131 = load i32, ptr %l77, !tbaa !23
  store i32 %t131, ptr %l9, !tbaa !23
  store ptr null, ptr %l10, !tbaa !29
  %t132 = load i32, ptr %l9, !tbaa !23
  %t133 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t136 = icmp ne i32 %t132, %t133
  br i1 %t136, label %bb21, label %bb22
bb21:
  store %olang.scope zeroinitializer, ptr %s3
  %t138 = load i64, ptr %l6, !tbaa !24
  %t140 = and i64 %t138, 65535
  store i64 %t140, ptr %l11, !tbaa !24
  %t142 = load ptr, ptr %l0, !tbaa !29
  %t144 = getelementptr %"compiler/check:Checker", ptr %t142, i32 0, i32 1
  %t145 = load ptr, ptr %t144, !tbaa !29
  %t147 = getelementptr %"compiler/generic:Program", ptr %t145, i32 0, i32 2
  store ptr %t147, ptr %l85, !tbaa !29
  %t148 = load ptr, ptr %l0, !tbaa !29
  %t150 = getelementptr %"compiler/check:Checker", ptr %t148, i32 0, i32 1
  %t151 = load ptr, ptr %t150, !tbaa !29
  %t153 = getelementptr %"compiler/generic:Program", ptr %t151, i32 0, i32 2
  %t154 = load i32, ptr %l9, !tbaa !23
  %t157 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %t153, i32 %t154)
  store i32 %t157, ptr %l90
  br label %bb23
bb22:
  br label %bb41
bb23:
  %t158 = load ptr, ptr %l85, !tbaa !29
  %t159 = load i32, ptr %l90, !tbaa !23
  %t160 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s3, ptr %t158, i32 %t159)
  store { i64, ptr } %t160, ptr %l91
  br label %bb24
bb24:
  %t161 = load { i64, ptr }, ptr %l91, !tbaa !27
  store { i64, ptr } %t161, ptr %l92, !tbaa !27
  %t162 = load i64, ptr %l11, !tbaa !24
  %t164 = getelementptr { i64, ptr }, ptr %l92, i32 0, i32 1
  %t165 = load ptr, ptr %t164, !tbaa !27
  %t166 = getelementptr i32, ptr %t165, i64 %t162
  %t167 = load i32, ptr %t166, !tbaa !33
  store i32 %t167, ptr %l12, !tbaa !23
  %t169 = load ptr, ptr %l0, !tbaa !29
  %t171 = getelementptr %"compiler/check:Checker", ptr %t169, i32 0, i32 36
  %t173 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t171)
  store i64 %t173, ptr %l97
  br label %bb25
bb25:
  %t174 = load i64, ptr %l97, !tbaa !24
  store i64 %t174, ptr %l13, !tbaa !24
  %t175 = load i32, ptr %l12, !tbaa !23
  %t177 = icmp ne i32 %t175, 0
  br i1 %t177, label %bb26, label %bb27
bb26:
  %t179 = load ptr, ptr %l0, !tbaa !29
  %t181 = getelementptr %"compiler/check:Checker", ptr %t179, i32 0, i32 1
  %t182 = load ptr, ptr %t181, !tbaa !29
  %t184 = getelementptr %"compiler/generic:Program", ptr %t182, i32 0, i32 2
  store ptr %t184, ptr %l102, !tbaa !29
  %t185 = load ptr, ptr %l0, !tbaa !29
  %t187 = getelementptr %"compiler/check:Checker", ptr %t185, i32 0, i32 1
  %t188 = load ptr, ptr %t187, !tbaa !29
  %t190 = getelementptr %"compiler/generic:Program", ptr %t188, i32 0, i32 2
  %t191 = load i32, ptr %l12, !tbaa !23
  %t194 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t190, i32 %t191)
  store i32 %t194, ptr %l107
  br label %bb28
bb27:
  br label %bb38
bb28:
  %t195 = load ptr, ptr %l102, !tbaa !29
  %t196 = load i32, ptr %l107, !tbaa !23
  %t197 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t195, i32 %t196)
  store { i64, ptr } %t197, ptr %l108
  br label %bb29
bb29:
  %t198 = load { i64, ptr }, ptr %l108, !tbaa !27
  store { i64, ptr } %t198, ptr %l14, !tbaa !27
  store i64 0, ptr %l15, !tbaa !24
  %t199 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t201 = extractvalue { i64, ptr } %t199, 0
  store i64 %t201, ptr %l16, !tbaa !24
  br label %bb30
bb30:
  %t203 = load i64, ptr %l15, !tbaa !24
  %t204 = load i64, ptr %l16, !tbaa !24
  %t207 = icmp slt i64 %t203, %t204
  %t209 = xor i1 %t207, true
  br i1 %t209, label %bb31, label %bb32
bb31:
  br label %bb37
bb32:
  br label %bb33
bb33:
  %t211 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t211, ptr %l115, !tbaa !27
  %t212 = load i64, ptr %l15, !tbaa !24
  %t214 = getelementptr { i64, ptr }, ptr %l115, i32 0, i32 1
  %t215 = load ptr, ptr %t214, !tbaa !27
  %t216 = getelementptr i32, ptr %t215, i64 %t212
  %t217 = load i32, ptr %t216, !tbaa !33
  %t219 = load ptr, ptr %l0, !tbaa !29
  %t221 = getelementptr %"compiler/check:Checker", ptr %t219, i32 0, i32 36
  store ptr %t221, ptr %l119, !tbaa !29
  %t222 = load ptr, ptr %l0, !tbaa !29
  %t223 = load %"compiler/source:Span", ptr %l1
  %t228 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ezero(ptr %v0, ptr %v0, ptr %t222, %"compiler/source:Span" %t223, i32 %t217)
  store ptr %t228, ptr %l123
  br label %bb34
bb34:
  %t229 = load ptr, ptr %l119, !tbaa !29
  %t230 = load ptr, ptr %l123, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t229, ptr %t230)
  br label %bb35
bb35:
  br label %bb36
bb36:
  %t231 = load i64, ptr %l15, !tbaa !24
  %t233 = add i64 %t231, 1
  store i64 %t233, ptr %l15, !tbaa !24
  br label %bb30
bb37:
  br label %bb38
bb38:
  %t235 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t235, ptr %l126
  %t236 = load i32, ptr %l9, !tbaa !23
  store i32 %t236, ptr %l127, !tbaa !23
  store i32 1, ptr %l128
  %t237 = load i64, ptr %l11, !tbaa !24
  store i64 %t237, ptr %l129, !tbaa !24
  %t238 = load ptr, ptr %l0, !tbaa !29
  %t240 = getelementptr %"compiler/check:Checker", ptr %t238, i32 0, i32 36
  %t241 = load i64, ptr %l13, !tbaa !24
  %t244 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t240, i64 %t241)
  store { i64, ptr } %t244, ptr %l133
  br label %bb39
bb39:
  %t245 = load i32, ptr %l128, !range !{i32 0, i32 5}
  %t246 = load i64, ptr %l129, !tbaa !24
  %t247 = load { i64, ptr }, ptr %l133, !tbaa !27
  %t249 = call %"compiler/typed:Make" @compiler_2ftyped_3aMake_2ector(ptr %v0, ptr %v2, ptr %v2, i32 %t245, i64 %t246, { i64, ptr } %t247, ptr null, i32 -1, i32 0, i1 false)
  store %"compiler/typed:Make" %t249, ptr %l135
  br label %bb40
bb40:
  %t250 = load %"compiler/typed:Make", ptr %l135
  %t251 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 56, i64 8)
  store %"compiler/typed:Make" %t250, ptr %t251
  store { i64, [5 x i64] } zeroinitializer, ptr %t252
  %t253 = getelementptr { i64, [5 x i64] }, ptr %t252, i32 0, i32 0
  store i64 7, ptr %t253
  %t254 = load %"compiler/source:Span", ptr %l126
  %t255 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t254, 0
  %t256 = load i32, ptr %l127, !tbaa !23
  %t257 = insertvalue { %"compiler/source:Span", i32, ptr } %t255, i32 %t256, 1
  %t259 = insertvalue { %"compiler/source:Span", i32, ptr } %t257, ptr %t251, 2
  %t260 = getelementptr { i64, [5 x i64] }, ptr %t252, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t259, ptr %t260
  %t261 = load { i64, [5 x i64] }, ptr %t252
  %t263 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t261, ptr %t263
  store ptr %t263, ptr %l10, !tbaa !29
  call void @__olang_scope_close(ptr %s3)
  br label %bb41
bb41:
  %t265 = load ptr, ptr %l0, !tbaa !29
  %t266 = load %"compiler/source:Span", ptr %l1
  %t267 = load i32, ptr %l2, !tbaa !23
  %t268 = load i64, ptr %l7, !tbaa !24
  %t269 = load i64, ptr %l6, !tbaa !24
  %t270 = load ptr, ptr %l10, !tbaa !29
  %t277 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrValue(ptr %v0, ptr %v2, ptr %v2, ptr %t265, %"compiler/source:Span" %t266, i32 %t267, i64 %t268, i64 %t269, ptr %t270)
  store ptr %t277, ptr %l145
  br label %bb42
bb42:
  call void @__olang_scope_close(ptr %s0)
  %t278 = load ptr, ptr %l145, !tbaa !29
  store ptr %t278, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrorDeclRules(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, %"compiler/source:Span" %a2, i32 %a3, { i64, ptr } %a4, { i64, ptr } %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i32
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca { i64, ptr }
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
  %l22 = alloca i64
  %l23 = alloca %"compiler/generic:Context"
  %l24 = alloca i1
  %l25 = alloca { i64, ptr }
  %l26 = alloca i64
  %l27 = alloca i64
  %l28 = alloca ptr
  %l29 = alloca i64
  %l30 = alloca i32
  %l31 = alloca %"compiler/source:Span"
  %l32 = alloca { i64, ptr }
  %l33 = alloca i64
  %l34 = alloca i64
  %l35 = alloca ptr
  %l36 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l37 = alloca { i64, ptr }
  %l38 = alloca i64
  %l39 = alloca i64
  %l40 = alloca ptr
  %l41 = alloca { i64, ptr }
  %l42 = alloca i64
  %l43 = alloca i64
  %l44 = alloca i32
  %l45 = alloca ptr
  %l46 = alloca i64
  %l47 = alloca i32
  %l48 = alloca { i64, ptr }
  %l49 = alloca i64
  %l50 = alloca i64
  %l51 = alloca i64
  %l52 = alloca i64
  %l53 = alloca i64
  %l54 = alloca i64
  %l55 = alloca i64
  %l56 = alloca i64
  %l62 = alloca ptr
  %l70 = alloca ptr
  %l81 = alloca i1
  %l82 = alloca { i64, ptr }
  %l86 = alloca i1
  %l90 = alloca i1
  %l91 = alloca { i64, ptr }
  %l93 = alloca i64
  %l96 = alloca i64
  %l97 = alloca i64
  %l102 = alloca i1
  %l103 = alloca { i64, ptr }
  %l105 = alloca i64
  %l108 = alloca { i64, ptr }
  %l109 = alloca i64
  %l113 = alloca ptr
  %l114 = alloca i64
  %l115 = alloca i64
  %l116 = alloca i64
  %l119 = alloca { i64, ptr }
  %l122 = alloca { i64, [3 x i64] }
  %l125 = alloca { i64, ptr }
  %l127 = alloca %"compiler/diagmsg:Msg"
  %l128 = alloca i64
  %l134 = alloca i64
  %l137 = alloca i64
  %l159 = alloca i64
  %l162 = alloca i64
  %l180 = alloca { i64, ptr }
  %l183 = alloca { i64, ptr }
  %l187 = alloca { i64, ptr }
  %l189 = alloca i64
  %l191 = alloca { i64, ptr }
  %l194 = alloca { i64, ptr }
  %l195 = alloca i64
  %l199 = alloca ptr
  %l200 = alloca i64
  %l201 = alloca i64
  %l202 = alloca i64
  %l204 = alloca { i64, ptr }
  %l207 = alloca { i64, ptr }
  %l210 = alloca { i64, [3 x i64] }
  %l212 = alloca { i64, ptr }
  %l215 = alloca { i64, ptr }
  %l217 = alloca %"compiler/diagmsg:Msg"
  %l218 = alloca i64
  %l227 = alloca %"compiler/generic:Context"
  %l235 = alloca { i64, ptr }
  %l238 = alloca ptr
  %l239 = alloca i64
  %l245 = alloca i1
  %l255 = alloca i64
  %l262 = alloca i32
  %l264 = alloca i32
  %l266 = alloca i32
  %l269 = alloca { i64, ptr }
  %l273 = alloca %"compiler/source:Span"
  %l281 = alloca { i64, ptr }
  %l284 = alloca ptr
  %l285 = alloca ptr
  %l286 = alloca i64
  %l292 = alloca i32
  %l294 = alloca i1
  %l298 = alloca ptr
  %l304 = alloca { i64, [3 x i64] }
  %l307 = alloca { i64, ptr }
  %l308 = alloca { i64, ptr }
  %l312 = alloca { i64, ptr }
  %l313 = alloca %"compiler/diagmsg:Msg"
  %l314 = alloca i64
  %l320 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l328 = alloca { i64, ptr }
  %l331 = alloca ptr
  %l332 = alloca i64
  %l348 = alloca { i64, ptr }
  %l352 = alloca i64
  %l354 = alloca i64
  %l359 = alloca i32
  %l364 = alloca ptr
  %l367 = alloca ptr
  %l372 = alloca i32
  %l373 = alloca i32
  %l374 = alloca { i64, ptr }
  %l379 = alloca i64
  %l385 = alloca i64
  %l388 = alloca i64
  %l406 = alloca { i64, ptr }
  %l411 = alloca i1
  %l414 = alloca i1
  %l416 = alloca i64
  %l420 = alloca { i64, ptr }
  %l422 = alloca i64
  %l425 = alloca { i64, ptr }
  %l426 = alloca i64
  %l430 = alloca ptr
  %l431 = alloca i64
  %l432 = alloca i64
  %l433 = alloca i64
  %l436 = alloca { i64, ptr }
  %l439 = alloca { i64, [3 x i64] }
  %l442 = alloca { i64, ptr }
  %l443 = alloca { i64, ptr }
  %l444 = alloca ptr
  %l449 = alloca i32
  %l450 = alloca { i64, ptr }
  %l452 = alloca %"compiler/diagmsg:Msg"
  %l453 = alloca i64
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s27 = alloca %olang.scope
  %s31 = alloca %olang.scope
  %t143 = alloca { i64, [3 x i64] }, align 8
  %t337 = alloca { i64, [3 x i64] }, align 8
  %t386 = alloca %"compiler/generic:Context", align 8
  %t555 = alloca { i64, [3 x i64] }, align 8
  %t848 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store %"compiler/source:Span" %a2, ptr %l2
  store i32 %a3, ptr %l3
  store { i64, ptr } %a4, ptr %l4
  store { i64, ptr } %a5, ptr %l5
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
  %t9 = getelementptr %"compiler/load:Loader", ptr %t7, i32 0, i32 10
  %t10 = load i64, ptr %l1, !tbaa !24
  %t13 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t9, i64 %t10)
  store ptr %t13, ptr %l62
  br label %bb1
bb1:
  %t14 = load ptr, ptr %l62, !tbaa !29
  %t16 = getelementptr %"compiler/load:Module", ptr %t14, i32 0, i32 4
  %t17 = load i64, ptr %t16, !tbaa !24
  store i64 %t17, ptr %l6, !tbaa !24
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/check:Checker", ptr %t19, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !29
  %t24 = getelementptr %"compiler/generic:Program", ptr %t22, i32 0, i32 0
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t27 = getelementptr %"compiler/load:Loader", ptr %t25, i32 0, i32 10
  %t28 = load i64, ptr %l1, !tbaa !24
  %t31 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t27, i64 %t28)
  store ptr %t31, ptr %l70
  br label %bb2
bb2:
  %t32 = load ptr, ptr %l70, !tbaa !29
  %t34 = getelementptr %"compiler/load:Module", ptr %t32, i32 0, i32 6
  %t35 = load ptr, ptr %t34, !tbaa !29
  store ptr %t35, ptr %l7, !tbaa !29
  %t37 = load ptr, ptr %l7, !tbaa !29
  %t39 = icmp eq ptr %t37, null
  br i1 %t39, label %bb3, label %bb4
bb3:
  call void @__olang_check_failed(ptr @olang_loc_da726112f8a5d119_ce42f73d9d53945)
  unreachable
bb4:
  br label %bb5
bb5:
  %t41 = load ptr, ptr %l7, !tbaa !29
  %t44 = getelementptr %"compiler/source:Source", ptr %t41, i32 0, i32 1
  %t45 = load { i64, ptr }, ptr %t44, !tbaa !27
  store { i64, ptr } %t45, ptr %l8, !tbaa !27
  %t47 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t49 = extractvalue { i64, ptr } %t47, 0
  %t51 = icmp eq i64 %t49, 1
  br i1 %t51, label %bb6, label %bb7
bb6:
  %t53 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t53, ptr %l82, !tbaa !27
  %t54 = getelementptr { i64, ptr }, ptr %l82, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !27
  %t56 = getelementptr i32, ptr %t55, i64 0
  %t57 = load i32, ptr %t56, !tbaa !33
  %t58 = load i32, ptr %l3, !tbaa !23
  %t61 = icmp eq i32 %t57, %t58
  store i1 %t61, ptr %l81, !tbaa !21
  br label %bb8
bb7:
  store i1 false, ptr %l81, !tbaa !21
  br label %bb8
bb8:
  %t63 = load i1, ptr %l81, !tbaa !21
  br i1 %t63, label %bb9, label %bb10
bb9:
  %t64 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t66 = extractvalue { i64, ptr } %t64, 0
  %t68 = icmp eq i64 %t66, 0
  store i1 %t68, ptr %l86, !tbaa !21
  br label %bb11
bb10:
  store i1 false, ptr %l86, !tbaa !21
  br label %bb11
bb11:
  %t70 = load i1, ptr %l86, !tbaa !21
  br i1 %t70, label %bb12, label %bb13
bb12:
  %t71 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t71, ptr %l91, !tbaa !27
  %t72 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t73 = load i32, ptr %t72, !tbaa !23
  %t75 = sext i32 %t73 to i64
  store i64 %t75, ptr %l93, !tbaa !24
  %t76 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t79 = extractvalue { i64, ptr } %t76, 0
  store i64 %t79, ptr %l96, !tbaa !24
  %t80 = load { i64, ptr }, ptr %l91, !tbaa !27
  %t81 = extractvalue { i64, ptr } %t80, 0
  store i64 %t81, ptr %l97, !tbaa !24
  %t82 = load i64, ptr %l93, !tbaa !24
  %t83 = icmp sge i64 %t82, 0
  br i1 %t83, label %bb14, label %bb15
bb13:
  store i1 false, ptr %l90, !tbaa !21
  br label %bb21
bb14:
  %t85 = load i64, ptr %l93, !tbaa !24
  %t86 = load i64, ptr %l96, !tbaa !24
  %t87 = icmp sle i64 %t85, %t86
  br i1 %t87, label %bb16, label %bb17
bb15:
  call void @__olang_check_failed(ptr @olang_loc_771f29b9e3f6ab8a_7fc52d4465222796)
  unreachable
bb16:
  %t89 = load i64, ptr %l96, !tbaa !24
  %t90 = load i64, ptr %l97, !tbaa !24
  %t91 = icmp sle i64 %t89, %t90
  br i1 %t91, label %bb18, label %bb19
bb17:
  call void @__olang_check_failed(ptr @olang_loc_771f29b9e3f6ab8a_7fc52d4465222796)
  unreachable
bb18:
  %t93 = getelementptr { i64, ptr }, ptr %l91, i32 0, i32 1
  %t94 = load ptr, ptr %t93, !tbaa !27
  %t95 = load i64, ptr %l93, !tbaa !24
  %t96 = load i64, ptr %l96, !tbaa !24
  %t97 = getelementptr i8, ptr %t94, i64 %t95
  %t98 = sub i64 %t96, %t95
  %t99 = insertvalue { i64, ptr } undef, i64 %t98, 0
  %t100 = insertvalue { i64, ptr } %t99, ptr %t97, 1
  %t102 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t100, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d9, i32 0, i32 1) })
  store i1 %t102, ptr %l102
  br label %bb20
bb19:
  call void @__olang_check_failed(ptr @olang_loc_771f29b9e3f6ab8a_7fc52d4465222796)
  unreachable
bb20:
  %t103 = load i1, ptr %l102, !tbaa !21
  store i1 %t103, ptr %l90, !tbaa !21
  br label %bb21
bb21:
  %t104 = load i1, ptr %l90, !tbaa !21
  br i1 %t104, label %bb22, label %bb23
bb22:
  store %olang.scope zeroinitializer, ptr %s1
  %t105 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t105, ptr %l103, !tbaa !27
  %t106 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t107 = load i32, ptr %t106, !tbaa !23
  %t109 = sext i32 %t107 to i64
  store i64 %t109, ptr %l105, !tbaa !24
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t111 = load i32, ptr %l3, !tbaa !23
  %t114 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t110, i32 %t111)
  store { i64, ptr } %t114, ptr %l108
  br label %bb24
bb23:
  br label %bb30
bb24:
  %t115 = load { i64, ptr }, ptr %l103, !tbaa !27
  %t116 = load i64, ptr %l105, !tbaa !24
  %t117 = load { i64, ptr }, ptr %l108, !tbaa !27
  %t118 = call i64 @compiler_2fcheck_2ewordAt(ptr %v0, ptr %v0, { i64, ptr } %t115, i64 %t116, { i64, ptr } %t117, i64 2)
  store i64 %t118, ptr %l109
  br label %bb25
bb25:
  %t119 = load i64, ptr %l109, !tbaa !24
  store i64 %t119, ptr %l9, !tbaa !24
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t122 = getelementptr %"compiler/check:Checker", ptr %t120, i32 0, i32 1
  %t123 = load ptr, ptr %t122, !tbaa !29
  %t125 = getelementptr %"compiler/generic:Program", ptr %t123, i32 0, i32 0
  %t126 = load ptr, ptr %t125, !tbaa !29
  %t128 = getelementptr %"compiler/load:Loader", ptr %t126, i32 0, i32 4
  %t129 = load ptr, ptr %t128, !tbaa !29
  store ptr %t129, ptr %l113, !tbaa !29
  %t130 = load i64, ptr %l6, !tbaa !24
  store i64 %t130, ptr %l114, !tbaa !24
  %t131 = load i64, ptr %l9, !tbaa !24
  store i64 %t131, ptr %l115, !tbaa !24
  %t132 = load i64, ptr %l9, !tbaa !24
  store i64 %t132, ptr %l116, !tbaa !24
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t134 = load i32, ptr %l3, !tbaa !23
  %t137 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s1, ptr %t133, i32 %t134)
  store { i64, ptr } %t137, ptr %l119
  br label %bb26
bb26:
  %t138 = load { i64, ptr }, ptr %l119, !tbaa !27
  %t139 = extractvalue { i64, ptr } %t138, 0
  %t140 = load i64, ptr %l116, !tbaa !24
  %t142 = add i64 %t140, %t139
  store { i64, [3 x i64] } zeroinitializer, ptr %t143
  %t144 = getelementptr { i64, [3 x i64] }, ptr %t143, i32 0, i32 0
  store i64 3, ptr %t144
  %t145 = load i64, ptr %l114, !tbaa !24
  %t146 = insertvalue { i64, i64, i64 } undef, i64 %t145, 0
  %t147 = load i64, ptr %l115, !tbaa !24
  %t148 = insertvalue { i64, i64, i64 } %t146, i64 %t147, 1
  %t150 = insertvalue { i64, i64, i64 } %t148, i64 %t142, 2
  %t151 = getelementptr { i64, [3 x i64] }, ptr %t143, i32 0, i32 1
  store { i64, i64, i64 } %t150, ptr %t151
  %t152 = load { i64, [3 x i64] }, ptr %t143
  store { i64, [3 x i64] } %t152, ptr %l122
  %t153 = load ptr, ptr %l0, !tbaa !29
  %t154 = load i32, ptr %l3, !tbaa !23
  %t157 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %v0, ptr %t153, i32 %t154)
  store { i64, ptr } %t157, ptr %l125
  br label %bb27
bb27:
  %t158 = load { i64, ptr }, ptr %l125, !tbaa !27
  %t159 = extractvalue { i64, ptr } %t158, 0
  %t160 = extractvalue { i64, ptr } %t158, 1
  %t161 = mul i64 %t159, 1
  %t162 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t161)
  call void @llvm.memcpy.p0.p0.i64(ptr %t162, ptr %t160, i64 %t161, i1 false)
  %t163 = insertvalue { i64, ptr } undef, i64 %t159, 0
  %t164 = insertvalue { i64, ptr } %t163, ptr %t162, 1
  %t166 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eRaisedWordOwnName(ptr %v0, ptr %v0, { i64, ptr } %t164)
  store %"compiler/diagmsg:Msg" %t166, ptr %l127
  br label %bb28
bb28:
  %t167 = load ptr, ptr %l113, !tbaa !29
  %t168 = load { i64, [3 x i64] }, ptr %l122
  %t169 = load %"compiler/diagmsg:Msg", ptr %l127
  %t170 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t167, { i64, [3 x i64] } %t168, %"compiler/diagmsg:Msg" %t169)
  store i64 %t170, ptr %l128
  br label %bb29
bb29:
  call void @__olang_scope_close(ptr %s1)
  br label %bb30
bb30:
  store i64 0, ptr %l10, !tbaa !24
  %t171 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t173 = extractvalue { i64, ptr } %t171, 0
  store i64 %t173, ptr %l11, !tbaa !24
  store i64 1, ptr %l12, !tbaa !24
  %t175 = load i64, ptr %l11, !tbaa !24
  %t176 = load i64, ptr %l10, !tbaa !24
  %t179 = icmp sgt i64 %t175, %t176
  br i1 %t179, label %bb31, label %bb32
bb31:
  %t181 = load i64, ptr %l12, !tbaa !24
  %t183 = icmp sgt i64 %t181, 0
  br i1 %t183, label %bb33, label %bb34
bb32:
  store i64 0, ptr %l134, !tbaa !24
  br label %bb36
bb33:
  %t185 = load i64, ptr %l11, !tbaa !24
  %t186 = load i64, ptr %l10, !tbaa !24
  %t189 = sub i64 %t185, %t186
  %t190 = load i64, ptr %l12, !tbaa !24
  %t193 = add i64 %t189, %t190
  %t195 = sub i64 %t193, 1
  %t196 = load i64, ptr %l12, !tbaa !24
  %t199 = sdiv i64 %t195, %t196
  store i64 %t199, ptr %l137, !tbaa !24
  br label %bb35
bb34:
  store i64 0, ptr %l137, !tbaa !24
  br label %bb35
bb35:
  %t201 = load i64, ptr %l137, !tbaa !24
  store i64 %t201, ptr %l134, !tbaa !24
  br label %bb36
bb36:
  %t202 = load i64, ptr %l134, !tbaa !24
  store i64 %t202, ptr %l13, !tbaa !24
  store i64 0, ptr %l14, !tbaa !24
  br label %bb37
bb37:
  %t203 = load i64, ptr %l14, !tbaa !24
  %t204 = load i64, ptr %l13, !tbaa !24
  %t207 = icmp slt i64 %t203, %t204
  %t209 = xor i1 %t207, true
  br i1 %t209, label %bb38, label %bb39
bb38:
  br label %bb63
bb39:
  br label %bb40
bb40:
  %t211 = load i64, ptr %l10, !tbaa !24
  %t212 = load i64, ptr %l14, !tbaa !24
  %t213 = load i64, ptr %l12, !tbaa !24
  %t216 = mul i64 %t212, %t213
  %t219 = add i64 %t211, %t216
  store i64 %t219, ptr %l15, !tbaa !24
  store i64 0, ptr %l16, !tbaa !24
  %t221 = load i64, ptr %l15, !tbaa !24
  store i64 %t221, ptr %l17, !tbaa !24
  store i64 1, ptr %l18, !tbaa !24
  %t223 = load i64, ptr %l17, !tbaa !24
  %t224 = load i64, ptr %l16, !tbaa !24
  %t227 = icmp sgt i64 %t223, %t224
  br i1 %t227, label %bb41, label %bb42
bb41:
  %t229 = load i64, ptr %l18, !tbaa !24
  %t231 = icmp sgt i64 %t229, 0
  br i1 %t231, label %bb43, label %bb44
bb42:
  store i64 0, ptr %l159, !tbaa !24
  br label %bb46
bb43:
  %t233 = load i64, ptr %l17, !tbaa !24
  %t234 = load i64, ptr %l16, !tbaa !24
  %t237 = sub i64 %t233, %t234
  %t238 = load i64, ptr %l18, !tbaa !24
  %t241 = add i64 %t237, %t238
  %t243 = sub i64 %t241, 1
  %t244 = load i64, ptr %l18, !tbaa !24
  %t247 = sdiv i64 %t243, %t244
  store i64 %t247, ptr %l162, !tbaa !24
  br label %bb45
bb44:
  store i64 0, ptr %l162, !tbaa !24
  br label %bb45
bb45:
  %t249 = load i64, ptr %l162, !tbaa !24
  store i64 %t249, ptr %l159, !tbaa !24
  br label %bb46
bb46:
  %t250 = load i64, ptr %l159, !tbaa !24
  store i64 %t250, ptr %l19, !tbaa !24
  store i64 0, ptr %l20, !tbaa !24
  br label %bb47
bb47:
  %t251 = load i64, ptr %l20, !tbaa !24
  %t252 = load i64, ptr %l19, !tbaa !24
  %t255 = icmp slt i64 %t251, %t252
  %t257 = xor i1 %t255, true
  br i1 %t257, label %bb48, label %bb49
bb48:
  br label %bb61
bb49:
  br label %bb50
bb50:
  %t259 = load i64, ptr %l16, !tbaa !24
  %t260 = load i64, ptr %l20, !tbaa !24
  %t261 = load i64, ptr %l18, !tbaa !24
  %t264 = mul i64 %t260, %t261
  %t267 = add i64 %t259, %t264
  %t269 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t269, ptr %l180, !tbaa !27
  %t272 = getelementptr { i64, ptr }, ptr %l180, i32 0, i32 1
  %t273 = load ptr, ptr %t272, !tbaa !27
  %t274 = getelementptr i32, ptr %t273, i64 %t267
  %t275 = load i32, ptr %t274, !tbaa !33
  %t276 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t276, ptr %l183, !tbaa !27
  %t277 = load i64, ptr %l15, !tbaa !24
  %t279 = getelementptr { i64, ptr }, ptr %l183, i32 0, i32 1
  %t280 = load ptr, ptr %t279, !tbaa !27
  %t281 = getelementptr i32, ptr %t280, i64 %t277
  %t282 = load i32, ptr %t281, !tbaa !33
  %t285 = icmp eq i32 %t275, %t282
  br i1 %t285, label %bb51, label %bb52
bb51:
  store %olang.scope zeroinitializer, ptr %s6
  %t287 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t287, ptr %l187, !tbaa !27
  %t288 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t289 = load i32, ptr %t288, !tbaa !23
  %t291 = sext i32 %t289 to i64
  store i64 %t291, ptr %l189, !tbaa !24
  %t292 = load ptr, ptr %l0, !tbaa !29
  %t293 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t293, ptr %l191, !tbaa !27
  %t294 = load i64, ptr %l15, !tbaa !24
  %t296 = getelementptr { i64, ptr }, ptr %l191, i32 0, i32 1
  %t297 = load ptr, ptr %t296, !tbaa !27
  %t298 = getelementptr i32, ptr %t297, i64 %t294
  %t299 = load i32, ptr %t298, !tbaa !33
  %t302 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t292, i32 %t299)
  store { i64, ptr } %t302, ptr %l194
  br label %bb53
bb52:
  br label %bb59
bb53:
  %t303 = load { i64, ptr }, ptr %l187, !tbaa !27
  %t304 = load i64, ptr %l189, !tbaa !24
  %t305 = load { i64, ptr }, ptr %l194, !tbaa !27
  %t306 = call i64 @compiler_2fcheck_2ewordAt(ptr %v0, ptr %v0, { i64, ptr } %t303, i64 %t304, { i64, ptr } %t305, i64 2)
  store i64 %t306, ptr %l195
  br label %bb54
bb54:
  %t307 = load i64, ptr %l195, !tbaa !24
  store i64 %t307, ptr %l22, !tbaa !24
  %t308 = load ptr, ptr %l0, !tbaa !29
  %t310 = getelementptr %"compiler/check:Checker", ptr %t308, i32 0, i32 1
  %t311 = load ptr, ptr %t310, !tbaa !29
  %t313 = getelementptr %"compiler/generic:Program", ptr %t311, i32 0, i32 0
  %t314 = load ptr, ptr %t313, !tbaa !29
  %t316 = getelementptr %"compiler/load:Loader", ptr %t314, i32 0, i32 4
  %t317 = load ptr, ptr %t316, !tbaa !29
  store ptr %t317, ptr %l199, !tbaa !29
  %t318 = load i64, ptr %l6, !tbaa !24
  store i64 %t318, ptr %l200, !tbaa !24
  %t319 = load i64, ptr %l22, !tbaa !24
  store i64 %t319, ptr %l201, !tbaa !24
  %t320 = load i64, ptr %l22, !tbaa !24
  store i64 %t320, ptr %l202, !tbaa !24
  %t321 = load ptr, ptr %l0, !tbaa !29
  %t322 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t322, ptr %l204, !tbaa !27
  %t323 = load i64, ptr %l15, !tbaa !24
  %t325 = getelementptr { i64, ptr }, ptr %l204, i32 0, i32 1
  %t326 = load ptr, ptr %t325, !tbaa !27
  %t327 = getelementptr i32, ptr %t326, i64 %t323
  %t328 = load i32, ptr %t327, !tbaa !33
  %t331 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s6, ptr %t321, i32 %t328)
  store { i64, ptr } %t331, ptr %l207
  br label %bb55
bb55:
  %t332 = load { i64, ptr }, ptr %l207, !tbaa !27
  %t333 = extractvalue { i64, ptr } %t332, 0
  %t334 = load i64, ptr %l202, !tbaa !24
  %t336 = add i64 %t334, %t333
  store { i64, [3 x i64] } zeroinitializer, ptr %t337
  %t338 = getelementptr { i64, [3 x i64] }, ptr %t337, i32 0, i32 0
  store i64 3, ptr %t338
  %t339 = load i64, ptr %l200, !tbaa !24
  %t340 = insertvalue { i64, i64, i64 } undef, i64 %t339, 0
  %t341 = load i64, ptr %l201, !tbaa !24
  %t342 = insertvalue { i64, i64, i64 } %t340, i64 %t341, 1
  %t344 = insertvalue { i64, i64, i64 } %t342, i64 %t336, 2
  %t345 = getelementptr { i64, [3 x i64] }, ptr %t337, i32 0, i32 1
  store { i64, i64, i64 } %t344, ptr %t345
  %t346 = load { i64, [3 x i64] }, ptr %t337
  store { i64, [3 x i64] } %t346, ptr %l210
  %t347 = load ptr, ptr %l0, !tbaa !29
  %t348 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t348, ptr %l212, !tbaa !27
  %t349 = load i64, ptr %l15, !tbaa !24
  %t351 = getelementptr { i64, ptr }, ptr %l212, i32 0, i32 1
  %t352 = load ptr, ptr %t351, !tbaa !27
  %t353 = getelementptr i32, ptr %t352, i64 %t349
  %t354 = load i32, ptr %t353, !tbaa !33
  %t357 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %v0, ptr %t347, i32 %t354)
  store { i64, ptr } %t357, ptr %l215
  br label %bb56
bb56:
  %t358 = load { i64, ptr }, ptr %l215, !tbaa !27
  %t359 = extractvalue { i64, ptr } %t358, 0
  %t360 = extractvalue { i64, ptr } %t358, 1
  %t361 = mul i64 %t359, 1
  %t362 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t361)
  call void @llvm.memcpy.p0.p0.i64(ptr %t362, ptr %t360, i64 %t361, i1 false)
  %t363 = insertvalue { i64, ptr } undef, i64 %t359, 0
  %t364 = insertvalue { i64, ptr } %t363, ptr %t362, 1
  %t366 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eErrorWordInUse(ptr %v0, ptr %v0, { i64, ptr } %t364)
  store %"compiler/diagmsg:Msg" %t366, ptr %l217
  br label %bb57
bb57:
  %t367 = load ptr, ptr %l199, !tbaa !29
  %t368 = load { i64, [3 x i64] }, ptr %l210
  %t369 = load %"compiler/diagmsg:Msg", ptr %l217
  %t370 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t367, { i64, [3 x i64] } %t368, %"compiler/diagmsg:Msg" %t369)
  store i64 %t370, ptr %l218
  br label %bb58
bb58:
  call void @__olang_scope_close(ptr %s6)
  br label %bb59
bb59:
  br label %bb60
bb60:
  %t371 = load i64, ptr %l20, !tbaa !24
  %t373 = add i64 %t371, 1
  store i64 %t373, ptr %l20, !tbaa !24
  br label %bb47
bb61:
  br label %bb62
bb62:
  %t375 = load i64, ptr %l14, !tbaa !24
  %t377 = add i64 %t375, 1
  store i64 %t377, ptr %l14, !tbaa !24
  br label %bb37
bb63:
  %t379 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t381 = extractvalue { i64, ptr } %t379, 0
  %t383 = icmp eq i64 %t381, 0
  br i1 %t383, label %bb64, label %bb65
bb64:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb65:
  br label %bb66
bb66:
  %t385 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2fgeneric_3aContext_2ector(ptr %t386, ptr %s0, i64 %t385, i64 -1)
  call void @llvm.memmove.p0.p0.i64(ptr %l227, ptr %t386, i64 160, i1 false)
  br label %bb67
bb67:
  call void @llvm.memmove.p0.p0.i64(ptr %l23, ptr %l227, i64 160, i1 false)
  store i1 true, ptr %l24, !tbaa !21
  %t388 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t388, ptr %l25, !tbaa !27
  store i64 0, ptr %l26, !tbaa !24
  %t390 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t392 = extractvalue { i64, ptr } %t390, 0
  store i64 %t392, ptr %l27, !tbaa !24
  br label %bb68
bb68:
  %t394 = load i64, ptr %l26, !tbaa !24
  %t395 = load i64, ptr %l27, !tbaa !24
  %t398 = icmp slt i64 %t394, %t395
  %t400 = xor i1 %t398, true
  br i1 %t400, label %bb69, label %bb70
bb69:
  br label %bb79
bb70:
  br label %bb71
bb71:
  %t402 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t402, ptr %l235, !tbaa !27
  %t403 = load i64, ptr %l26, !tbaa !24
  %t405 = getelementptr { i64, ptr }, ptr %l235, i32 0, i32 1
  %t406 = load ptr, ptr %t405, !tbaa !27
  %t407 = getelementptr ptr, ptr %t406, i64 %t403
  %t408 = load ptr, ptr %t407, !tbaa !39
  store ptr %t408, ptr %l28, !tbaa !29
  %t410 = load ptr, ptr %l28, !tbaa !29
  store ptr %t410, ptr %l238, !tbaa !29
  %t411 = ptrtoint ptr %v2 to i64
  store i64 %t411, ptr %l239, !tbaa !24
  %t412 = load i1, ptr @olang_2esole_2eArray_3ccompiler_2fast_3aPath_26_3e_2e_2d1
  br i1 %t412, label %bb72, label %bb73
bb72:
  %t414 = load ptr, ptr %l238, !tbaa !29
  %t415 = call ptr @__olang_region_or(ptr %t414, ptr %v2)
  %t416 = ptrtoint ptr %t415 to i64
  store i64 %t416, ptr %l239, !tbaa !24
  br label %bb73
bb73:
  %t417 = load ptr, ptr %l0, !tbaa !29
  %t419 = getelementptr %"compiler/check:Checker", ptr %t417, i32 0, i32 1
  %t420 = load ptr, ptr %t419, !tbaa !29
  %t421 = load ptr, ptr %l28, !tbaa !29
  %t422 = load i64, ptr %l239
  %t423 = inttoptr i64 %t422 to ptr
  %t427 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorItemKnown(ptr %v0, ptr %s0, ptr %t423, ptr %t420, ptr %l23, ptr %t421)
  store i1 %t427, ptr %l245
  br label %bb74
bb74:
  %t428 = load i1, ptr %l245, !tbaa !21
  %t429 = xor i1 %t428, true
  br i1 %t429, label %bb75, label %bb76
bb75:
  store i1 false, ptr %l24, !tbaa !21
  br label %bb77
bb76:
  br label %bb77
bb77:
  br label %bb78
bb78:
  %t431 = load i64, ptr %l26, !tbaa !24
  %t433 = add i64 %t431, 1
  store i64 %t433, ptr %l26, !tbaa !24
  br label %bb68
bb79:
  %t435 = load i1, ptr %l24, !tbaa !21
  %t437 = xor i1 %t435, true
  br i1 %t437, label %bb80, label %bb81
bb80:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb81:
  br label %bb82
bb82:
  %t439 = load ptr, ptr %l0, !tbaa !29
  %t441 = getelementptr %"compiler/check:Checker", ptr %t439, i32 0, i32 1
  %t442 = load ptr, ptr %t441, !tbaa !29
  %t443 = load i64, ptr %l1, !tbaa !24
  %t444 = load i32, ptr %l3, !tbaa !23
  %t448 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeEntry(ptr %v0, ptr %t442, i64 %t443, i32 %t444)
  store i64 %t448, ptr %l255
  br label %bb83
bb83:
  %t449 = load i64, ptr %l255, !tbaa !24
  store i64 %t449, ptr %l29, !tbaa !24
  %t450 = load i64, ptr %l29, !tbaa !24
  %t452 = icmp slt i64 %t450, 0
  br i1 %t452, label %bb84, label %bb85
bb84:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb85:
  br label %bb86
bb86:
  %t454 = load ptr, ptr %l0, !tbaa !29
  %t456 = getelementptr %"compiler/check:Checker", ptr %t454, i32 0, i32 1
  %t457 = load ptr, ptr %t456, !tbaa !29
  %t458 = load i64, ptr %l1, !tbaa !24
  %t459 = load i64, ptr %l29, !tbaa !24
  %t463 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclFor(ptr %v0, ptr %t457, i64 %t458, i64 %t459)
  store i32 %t463, ptr %l262
  br label %bb87
bb87:
  %t464 = load i32, ptr %l262, !tbaa !23
  store i32 %t464, ptr %l30, !tbaa !23
  %t465 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t466 = load i32, ptr %t465, !tbaa !23
  %t468 = add i32 %t466, 5
  store i32 %t468, ptr %l264, !tbaa !23
  %t469 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t470 = load i32, ptr %t469, !tbaa !23
  %t472 = add i32 %t470, 5
  store i32 %t472, ptr %l266, !tbaa !23
  %t473 = load ptr, ptr %l0, !tbaa !29
  %t474 = load i32, ptr %l3, !tbaa !23
  %t477 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s0, ptr %t473, i32 %t474)
  store { i64, ptr } %t477, ptr %l269
  br label %bb88
bb88:
  %t478 = load { i64, ptr }, ptr %l269, !tbaa !27
  %t479 = extractvalue { i64, ptr } %t478, 0
  %t481 = trunc i64 %t479 to i32
  %t482 = load i32, ptr %l266, !tbaa !23
  %t484 = add i32 %t482, %t481
  %t485 = load i32, ptr %l264, !tbaa !23
  %t487 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 %t485, i32 %t484)
  store %"compiler/source:Span" %t487, ptr %l273
  br label %bb89
bb89:
  %t488 = load %"compiler/source:Span", ptr %l273
  store %"compiler/source:Span" %t488, ptr %l31
  %t489 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t489, ptr %l32, !tbaa !27
  store i64 0, ptr %l33, !tbaa !24
  %t491 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t493 = extractvalue { i64, ptr } %t491, 0
  store i64 %t493, ptr %l34, !tbaa !24
  br label %bb90
bb90:
  %t495 = load i64, ptr %l33, !tbaa !24
  %t496 = load i64, ptr %l34, !tbaa !24
  %t499 = icmp slt i64 %t495, %t496
  %t501 = xor i1 %t499, true
  br i1 %t501, label %bb91, label %bb92
bb91:
  br label %bb106
bb92:
  br label %bb93
bb93:
  %t503 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t503, ptr %l281, !tbaa !27
  %t504 = load i64, ptr %l33, !tbaa !24
  %t506 = getelementptr { i64, ptr }, ptr %l281, i32 0, i32 1
  %t507 = load ptr, ptr %t506, !tbaa !27
  %t508 = getelementptr ptr, ptr %t507, i64 %t504
  %t509 = load ptr, ptr %t508, !tbaa !39
  store ptr %t509, ptr %l35, !tbaa !29
  %t511 = load ptr, ptr %l0, !tbaa !29
  store ptr %t511, ptr %l284, !tbaa !29
  %t512 = load ptr, ptr %l35, !tbaa !29
  store ptr %t512, ptr %l285, !tbaa !29
  %t513 = ptrtoint ptr %v2 to i64
  store i64 %t513, ptr %l286, !tbaa !24
  %t514 = load i1, ptr @olang_2esole_2eArray_3ccompiler_2fast_3aPath_26_3e_2e_2d1
  br i1 %t514, label %bb94, label %bb95
bb94:
  %t516 = load ptr, ptr %l285, !tbaa !29
  %t517 = call ptr @__olang_region_or(ptr %t516, ptr %v2)
  %t518 = ptrtoint ptr %t517 to i64
  store i64 %t518, ptr %l286, !tbaa !24
  br label %bb95
bb95:
  %t519 = load ptr, ptr %l0, !tbaa !29
  %t521 = getelementptr %"compiler/check:Checker", ptr %t519, i32 0, i32 1
  %t522 = load ptr, ptr %t521, !tbaa !29
  %t523 = load ptr, ptr %l35, !tbaa !29
  %t524 = load i64, ptr %l286
  %t525 = inttoptr i64 %t524 to ptr
  %t529 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorSetItem(ptr %v0, ptr %s0, ptr %t525, ptr %t522, ptr %l23, ptr %t523)
  store i32 %t529, ptr %l292
  br label %bb96
bb96:
  %t530 = load i32, ptr %l30, !tbaa !23
  %t531 = load ptr, ptr %l284, !tbaa !29
  %t532 = load i32, ptr %l292, !tbaa !23
  %t534 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetReaches(ptr %v0, ptr %t531, i32 %t532, i32 %t530, i64 0)
  store i1 %t534, ptr %l294
  br label %bb97
bb97:
  %t535 = load i1, ptr %l294, !tbaa !21
  br i1 %t535, label %bb98, label %bb99
bb98:
  %t536 = load ptr, ptr %l0, !tbaa !29
  %t538 = getelementptr %"compiler/check:Checker", ptr %t536, i32 0, i32 1
  %t539 = load ptr, ptr %t538, !tbaa !29
  %t541 = getelementptr %"compiler/generic:Program", ptr %t539, i32 0, i32 0
  %t542 = load ptr, ptr %t541, !tbaa !29
  %t544 = getelementptr %"compiler/load:Loader", ptr %t542, i32 0, i32 4
  %t545 = load ptr, ptr %t544, !tbaa !29
  store ptr %t545, ptr %l298, !tbaa !29
  %t546 = load i64, ptr %l6, !tbaa !24
  %t547 = getelementptr %"compiler/source:Span", ptr %l31, i32 0, i32 0
  %t548 = load i32, ptr %t547, !tbaa !23
  %t550 = sext i32 %t548 to i64
  %t551 = getelementptr %"compiler/source:Span", ptr %l31, i32 0, i32 1
  %t552 = load i32, ptr %t551, !tbaa !23
  %t554 = sext i32 %t552 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t555
  %t556 = getelementptr { i64, [3 x i64] }, ptr %t555, i32 0, i32 0
  store i64 3, ptr %t556
  %t558 = insertvalue { i64, i64, i64 } undef, i64 %t546, 0
  %t560 = insertvalue { i64, i64, i64 } %t558, i64 %t550, 1
  %t562 = insertvalue { i64, i64, i64 } %t560, i64 %t554, 2
  %t563 = getelementptr { i64, [3 x i64] }, ptr %t555, i32 0, i32 1
  store { i64, i64, i64 } %t562, ptr %t563
  %t564 = load { i64, [3 x i64] }, ptr %t555
  store { i64, [3 x i64] } %t564, ptr %l304
  %t565 = load ptr, ptr %l0, !tbaa !29
  %t566 = load i32, ptr %l3, !tbaa !23
  %t569 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %v0, ptr %t565, i32 %t566)
  store { i64, ptr } %t569, ptr %l307
  br label %bb100
bb99:
  br label %bb104
bb100:
  %t570 = load { i64, ptr }, ptr %l307, !tbaa !27
  %t571 = extractvalue { i64, ptr } %t570, 0
  %t572 = extractvalue { i64, ptr } %t570, 1
  %t573 = mul i64 %t571, 1
  %t574 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t573)
  call void @llvm.memcpy.p0.p0.i64(ptr %t574, ptr %t572, i64 %t573, i1 false)
  %t575 = insertvalue { i64, ptr } undef, i64 %t571, 0
  %t576 = insertvalue { i64, ptr } %t575, ptr %t574, 1
  store { i64, ptr } %t576, ptr %l308, !tbaa !27
  %t577 = load ptr, ptr %l0, !tbaa !29
  %t578 = load ptr, ptr %l35, !tbaa !29
  %t580 = getelementptr %"compiler/ast:Path", ptr %t578, i32 0, i32 0
  %t581 = load %"compiler/source:Span", ptr %t580
  %t584 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t577, %"compiler/source:Span" %t581)
  store { i64, ptr } %t584, ptr %l312
  br label %bb101
bb101:
  %t585 = load { i64, ptr }, ptr %l308, !tbaa !27
  %t586 = load { i64, ptr }, ptr %l312, !tbaa !27
  %t587 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eErrorSetHoldsItself(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t585, { i64, ptr } %t586)
  store %"compiler/diagmsg:Msg" %t587, ptr %l313
  br label %bb102
bb102:
  %t588 = load ptr, ptr %l298, !tbaa !29
  %t589 = load { i64, [3 x i64] }, ptr %l304
  %t590 = load %"compiler/diagmsg:Msg", ptr %l313
  %t591 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t588, { i64, [3 x i64] } %t589, %"compiler/diagmsg:Msg" %t590)
  store i64 %t591, ptr %l314
  br label %bb103
bb103:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb104:
  br label %bb105
bb105:
  %t592 = load i64, ptr %l33, !tbaa !24
  %t594 = add i64 %t592, 1
  store i64 %t594, ptr %l33, !tbaa !24
  br label %bb90
bb106:
  %t596 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t598 = extractvalue { i64, ptr } %t596, 0
  %t600 = icmp eq i64 %t598, 0
  br i1 %t600, label %bb107, label %bb108
bb107:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb108:
  br label %bb109
bb109:
  %t602 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t602, ptr %l320
  br label %bb110
bb110:
  %t603 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l320
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t603, ptr %l36
  %t604 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t604, ptr %l37, !tbaa !27
  store i64 0, ptr %l38, !tbaa !24
  %t606 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t608 = extractvalue { i64, ptr } %t606, 0
  store i64 %t608, ptr %l39, !tbaa !24
  br label %bb111
bb111:
  %t610 = load i64, ptr %l38, !tbaa !24
  %t611 = load i64, ptr %l39, !tbaa !24
  %t614 = icmp slt i64 %t610, %t611
  %t616 = xor i1 %t614, true
  br i1 %t616, label %bb112, label %bb113
bb112:
  br label %bb119
bb113:
  br label %bb114
bb114:
  %t618 = load { i64, ptr }, ptr %l37, !tbaa !27
  store { i64, ptr } %t618, ptr %l328, !tbaa !27
  %t619 = load i64, ptr %l38, !tbaa !24
  %t621 = getelementptr { i64, ptr }, ptr %l328, i32 0, i32 1
  %t622 = load ptr, ptr %t621, !tbaa !27
  %t623 = getelementptr ptr, ptr %t622, i64 %t619
  %t624 = load ptr, ptr %t623, !tbaa !39
  store ptr %t624, ptr %l40, !tbaa !29
  %t626 = load ptr, ptr %l40, !tbaa !29
  store ptr %t626, ptr %l331, !tbaa !29
  %t627 = ptrtoint ptr %v2 to i64
  store i64 %t627, ptr %l332, !tbaa !24
  %t628 = load i1, ptr @olang_2esole_2eArray_3ccompiler_2fast_3aPath_26_3e_2e_2d1
  br i1 %t628, label %bb115, label %bb116
bb115:
  %t630 = load ptr, ptr %l331, !tbaa !29
  %t631 = call ptr @__olang_region_or(ptr %t630, ptr %v2)
  %t632 = ptrtoint ptr %t631 to i64
  store i64 %t632, ptr %l332, !tbaa !24
  br label %bb116
bb116:
  %t633 = load ptr, ptr %l0, !tbaa !29
  %t635 = getelementptr %"compiler/check:Checker", ptr %t633, i32 0, i32 1
  %t636 = load ptr, ptr %t635, !tbaa !29
  %t637 = load ptr, ptr %l40, !tbaa !29
  %t638 = load i64, ptr %l332
  %t639 = inttoptr i64 %t638 to ptr
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorSetEntries(ptr %v0, ptr %s0, ptr %t639, ptr %s0, ptr %t636, ptr %l23, ptr %t637, ptr %l36)
  br label %bb117
bb117:
  br label %bb118
bb118:
  %t644 = load i64, ptr %l38, !tbaa !24
  %t646 = add i64 %t644, 1
  store i64 %t646, ptr %l38, !tbaa !24
  br label %bb111
bb119:
  %t648 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t648, ptr %l41, !tbaa !27
  store i64 0, ptr %l42, !tbaa !24
  %t650 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t652 = extractvalue { i64, ptr } %t650, 0
  store i64 %t652, ptr %l43, !tbaa !24
  br label %bb120
bb120:
  %t654 = load i64, ptr %l42, !tbaa !24
  %t655 = load i64, ptr %l43, !tbaa !24
  %t658 = icmp slt i64 %t654, %t655
  %t660 = xor i1 %t658, true
  br i1 %t660, label %bb121, label %bb122
bb121:
  br label %bb169
bb122:
  br label %bb123
bb123:
  %t662 = load { i64, ptr }, ptr %l41, !tbaa !27
  store { i64, ptr } %t662, ptr %l348, !tbaa !27
  %t663 = load i64, ptr %l42, !tbaa !24
  %t665 = getelementptr { i64, ptr }, ptr %l348, i32 0, i32 1
  %t666 = load ptr, ptr %t665, !tbaa !27
  %t667 = getelementptr i32, ptr %t666, i64 %t663
  %t668 = load i32, ptr %t667, !tbaa !33
  store i32 %t668, ptr %l44, !tbaa !23
  store ptr %l36, ptr %l45, !tbaa !29
  store i64 0, ptr %l46, !tbaa !24
  br label %bb124
bb124:
  store %olang.scope zeroinitializer, ptr %s27
  %t671 = load i64, ptr %l46, !tbaa !24
  store i64 %t671, ptr %l352, !tbaa !24
  %t672 = load ptr, ptr %l45, !tbaa !29
  %t674 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %t672)
  store i64 %t674, ptr %l354
  br label %bb125
bb125:
  %t675 = load i64, ptr %l352, !tbaa !24
  %t676 = load i64, ptr %l354, !tbaa !24
  %t677 = icmp slt i64 %t675, %t676
  %t679 = xor i1 %t677, true
  br i1 %t679, label %bb126, label %bb127
bb126:
  call void @__olang_scope_close(ptr %s27)
  br label %bb167
bb127:
  br label %bb128
bb128:
  %t681 = load ptr, ptr %l45, !tbaa !29
  %t682 = load i64, ptr %l46, !tbaa !24
  %t685 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %t681, i64 %t682)
  store i32 %t685, ptr %l359
  br label %bb129
bb129:
  %t686 = load i32, ptr %l359, !tbaa !23
  store i32 %t686, ptr %l47, !tbaa !23
  %t687 = load i32, ptr %l47, !tbaa !23
  %t688 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t691 = icmp eq i32 %t687, %t688
  br i1 %t691, label %bb130, label %bb131
bb130:
  call void @__olang_scope_close(ptr %s27)
  br label %bb166
bb131:
  br label %bb132
bb132:
  %t693 = load ptr, ptr %l0, !tbaa !29
  %t695 = getelementptr %"compiler/check:Checker", ptr %t693, i32 0, i32 1
  %t696 = load ptr, ptr %t695, !tbaa !29
  store ptr %t696, ptr %l364, !tbaa !29
  %t697 = load ptr, ptr %l0, !tbaa !29
  %t699 = getelementptr %"compiler/check:Checker", ptr %t697, i32 0, i32 1
  %t700 = load ptr, ptr %t699, !tbaa !29
  %t702 = getelementptr %"compiler/generic:Program", ptr %t700, i32 0, i32 2
  store ptr %t702, ptr %l367, !tbaa !29
  %t703 = load ptr, ptr %l0, !tbaa !29
  %t705 = getelementptr %"compiler/check:Checker", ptr %t703, i32 0, i32 1
  %t706 = load ptr, ptr %t705, !tbaa !29
  %t708 = getelementptr %"compiler/generic:Program", ptr %t706, i32 0, i32 2
  %t709 = load i32, ptr %l47, !tbaa !23
  %t712 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t708, i32 %t709)
  store i32 %t712, ptr %l372
  br label %bb133
bb133:
  %t713 = load ptr, ptr %l367, !tbaa !29
  %t714 = load i32, ptr %l372, !tbaa !23
  %t715 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t713, i32 %t714)
  store i32 %t715, ptr %l373
  br label %bb134
bb134:
  %t716 = load ptr, ptr %l364, !tbaa !29
  %t717 = load i32, ptr %l373, !tbaa !23
  %t718 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorWords(ptr %v0, ptr %s27, ptr %t716, i32 %t717)
  store { i64, ptr } %t718, ptr %l374
  br label %bb135
bb135:
  %t719 = load { i64, ptr }, ptr %l374, !tbaa !27
  store { i64, ptr } %t719, ptr %l48, !tbaa !27
  %t720 = load ptr, ptr %l0, !tbaa !29
  %t722 = getelementptr %"compiler/check:Checker", ptr %t720, i32 0, i32 1
  %t723 = load ptr, ptr %t722, !tbaa !29
  %t725 = getelementptr %"compiler/generic:Program", ptr %t723, i32 0, i32 2
  %t726 = load i32, ptr %l47, !tbaa !23
  %t729 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrMask(ptr %v0, ptr %t725, i32 %t726)
  store i64 %t729, ptr %l379
  br label %bb136
bb136:
  %t730 = load i64, ptr %l379, !tbaa !65
  store i64 %t730, ptr %l49, !tbaa !65
  store i64 0, ptr %l50, !tbaa !24
  %t731 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t733 = extractvalue { i64, ptr } %t731, 0
  store i64 %t733, ptr %l51, !tbaa !24
  store i64 1, ptr %l52, !tbaa !24
  %t735 = load i64, ptr %l51, !tbaa !24
  %t736 = load i64, ptr %l50, !tbaa !24
  %t739 = icmp sgt i64 %t735, %t736
  br i1 %t739, label %bb137, label %bb138
bb137:
  %t741 = load i64, ptr %l52, !tbaa !24
  %t743 = icmp sgt i64 %t741, 0
  br i1 %t743, label %bb139, label %bb140
bb138:
  store i64 0, ptr %l385, !tbaa !24
  br label %bb142
bb139:
  %t745 = load i64, ptr %l51, !tbaa !24
  %t746 = load i64, ptr %l50, !tbaa !24
  %t749 = sub i64 %t745, %t746
  %t750 = load i64, ptr %l52, !tbaa !24
  %t753 = add i64 %t749, %t750
  %t755 = sub i64 %t753, 1
  %t756 = load i64, ptr %l52, !tbaa !24
  %t759 = sdiv i64 %t755, %t756
  store i64 %t759, ptr %l388, !tbaa !24
  br label %bb141
bb140:
  store i64 0, ptr %l388, !tbaa !24
  br label %bb141
bb141:
  %t761 = load i64, ptr %l388, !tbaa !24
  store i64 %t761, ptr %l385, !tbaa !24
  br label %bb142
bb142:
  %t762 = load i64, ptr %l385, !tbaa !24
  store i64 %t762, ptr %l53, !tbaa !24
  store i64 0, ptr %l54, !tbaa !24
  br label %bb143
bb143:
  %t763 = load i64, ptr %l54, !tbaa !24
  %t764 = load i64, ptr %l53, !tbaa !24
  %t767 = icmp slt i64 %t763, %t764
  %t769 = xor i1 %t767, true
  br i1 %t769, label %bb144, label %bb145
bb144:
  br label %bb165
bb145:
  br label %bb146
bb146:
  %t771 = load i64, ptr %l50, !tbaa !24
  %t772 = load i64, ptr %l54, !tbaa !24
  %t773 = load i64, ptr %l52, !tbaa !24
  %t776 = mul i64 %t772, %t773
  %t779 = add i64 %t771, %t776
  store i64 %t779, ptr %l55, !tbaa !24
  %t781 = load { i64, ptr }, ptr %l48, !tbaa !27
  store { i64, ptr } %t781, ptr %l406, !tbaa !27
  %t782 = load i64, ptr %l55, !tbaa !24
  %t784 = getelementptr { i64, ptr }, ptr %l406, i32 0, i32 1
  %t785 = load ptr, ptr %t784, !tbaa !27
  %t786 = getelementptr i32, ptr %t785, i64 %t782
  %t787 = load i32, ptr %t786, !tbaa !33
  %t788 = load i32, ptr %l44, !tbaa !23
  %t791 = icmp eq i32 %t787, %t788
  br i1 %t791, label %bb147, label %bb148
bb147:
  %t793 = load i64, ptr %l55, !tbaa !24
  %t795 = icmp sge i64 %t793, 64
  br i1 %t795, label %bb149, label %bb150
bb148:
  store i1 false, ptr %l411, !tbaa !21
  br label %bb152
bb149:
  store i1 true, ptr %l414, !tbaa !21
  br label %bb151
bb150:
  %t797 = load i64, ptr %l49, !tbaa !65
  %t798 = load i64, ptr %l55, !tbaa !24
  store i64 %t798, ptr %l416, !tbaa !24
  %t799 = load i64, ptr %l416, !tbaa !24
  %t800 = load i64, ptr %l416, !tbaa !24
  %t801 = shl i64 1, %t800
  %t804 = and i64 %t797, %t801
  %t806 = icmp ne i64 %t804, 0
  store i1 %t806, ptr %l414, !tbaa !21
  br label %bb151
bb151:
  %t808 = load i1, ptr %l414, !tbaa !21
  store i1 %t808, ptr %l411, !tbaa !21
  br label %bb152
bb152:
  %t809 = load i1, ptr %l411, !tbaa !21
  br i1 %t809, label %bb153, label %bb154
bb153:
  store %olang.scope zeroinitializer, ptr %s31
  %t810 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t810, ptr %l420, !tbaa !27
  %t811 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t812 = load i32, ptr %t811, !tbaa !23
  %t814 = sext i32 %t812 to i64
  store i64 %t814, ptr %l422, !tbaa !24
  %t815 = load ptr, ptr %l0, !tbaa !29
  %t816 = load i32, ptr %l44, !tbaa !23
  %t819 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t815, i32 %t816)
  store { i64, ptr } %t819, ptr %l425
  br label %bb155
bb154:
  br label %bb163
bb155:
  %t820 = load { i64, ptr }, ptr %l420, !tbaa !27
  %t821 = load i64, ptr %l422, !tbaa !24
  %t822 = load { i64, ptr }, ptr %l425, !tbaa !27
  %t823 = call i64 @compiler_2fcheck_2ewordAt(ptr %v0, ptr %v0, { i64, ptr } %t820, i64 %t821, { i64, ptr } %t822, i64 1)
  store i64 %t823, ptr %l426
  br label %bb156
bb156:
  %t824 = load i64, ptr %l426, !tbaa !24
  store i64 %t824, ptr %l56, !tbaa !24
  %t825 = load ptr, ptr %l0, !tbaa !29
  %t827 = getelementptr %"compiler/check:Checker", ptr %t825, i32 0, i32 1
  %t828 = load ptr, ptr %t827, !tbaa !29
  %t830 = getelementptr %"compiler/generic:Program", ptr %t828, i32 0, i32 0
  %t831 = load ptr, ptr %t830, !tbaa !29
  %t833 = getelementptr %"compiler/load:Loader", ptr %t831, i32 0, i32 4
  %t834 = load ptr, ptr %t833, !tbaa !29
  store ptr %t834, ptr %l430, !tbaa !29
  %t835 = load i64, ptr %l6, !tbaa !24
  store i64 %t835, ptr %l431, !tbaa !24
  %t836 = load i64, ptr %l56, !tbaa !24
  store i64 %t836, ptr %l432, !tbaa !24
  %t837 = load i64, ptr %l56, !tbaa !24
  store i64 %t837, ptr %l433, !tbaa !24
  %t838 = load ptr, ptr %l0, !tbaa !29
  %t839 = load i32, ptr %l44, !tbaa !23
  %t842 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s31, ptr %t838, i32 %t839)
  store { i64, ptr } %t842, ptr %l436
  br label %bb157
bb157:
  %t843 = load { i64, ptr }, ptr %l436, !tbaa !27
  %t844 = extractvalue { i64, ptr } %t843, 0
  %t845 = load i64, ptr %l433, !tbaa !24
  %t847 = add i64 %t845, %t844
  store { i64, [3 x i64] } zeroinitializer, ptr %t848
  %t849 = getelementptr { i64, [3 x i64] }, ptr %t848, i32 0, i32 0
  store i64 3, ptr %t849
  %t850 = load i64, ptr %l431, !tbaa !24
  %t851 = insertvalue { i64, i64, i64 } undef, i64 %t850, 0
  %t852 = load i64, ptr %l432, !tbaa !24
  %t853 = insertvalue { i64, i64, i64 } %t851, i64 %t852, 1
  %t855 = insertvalue { i64, i64, i64 } %t853, i64 %t847, 2
  %t856 = getelementptr { i64, [3 x i64] }, ptr %t848, i32 0, i32 1
  store { i64, i64, i64 } %t855, ptr %t856
  %t857 = load { i64, [3 x i64] }, ptr %t848
  store { i64, [3 x i64] } %t857, ptr %l439
  %t858 = load ptr, ptr %l0, !tbaa !29
  %t859 = load i32, ptr %l44, !tbaa !23
  %t862 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %v0, ptr %t858, i32 %t859)
  store { i64, ptr } %t862, ptr %l442
  br label %bb158
bb158:
  %t863 = load { i64, ptr }, ptr %l442, !tbaa !27
  %t864 = extractvalue { i64, ptr } %t863, 0
  %t865 = extractvalue { i64, ptr } %t863, 1
  %t866 = mul i64 %t864, 1
  %t867 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t866)
  call void @llvm.memcpy.p0.p0.i64(ptr %t867, ptr %t865, i64 %t866, i1 false)
  %t868 = insertvalue { i64, ptr } undef, i64 %t864, 0
  %t869 = insertvalue { i64, ptr } %t868, ptr %t867, 1
  store { i64, ptr } %t869, ptr %l443, !tbaa !27
  %t870 = load ptr, ptr %l0, !tbaa !29
  store ptr %t870, ptr %l444, !tbaa !29
  %t871 = load ptr, ptr %l0, !tbaa !29
  %t873 = getelementptr %"compiler/check:Checker", ptr %t871, i32 0, i32 1
  %t874 = load ptr, ptr %t873, !tbaa !29
  %t876 = getelementptr %"compiler/generic:Program", ptr %t874, i32 0, i32 2
  %t877 = load i32, ptr %l47, !tbaa !23
  %t880 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t876, i32 %t877)
  store i32 %t880, ptr %l449
  br label %bb159
bb159:
  %t881 = load ptr, ptr %l444, !tbaa !29
  %t882 = load i32, ptr %l449, !tbaa !23
  %t883 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t881, i32 %t882)
  store { i64, ptr } %t883, ptr %l450
  br label %bb160
bb160:
  %t884 = load { i64, ptr }, ptr %l450, !tbaa !27
  %t885 = extractvalue { i64, ptr } %t884, 0
  %t886 = extractvalue { i64, ptr } %t884, 1
  %t887 = mul i64 %t885, 1
  %t888 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t887)
  call void @llvm.memcpy.p0.p0.i64(ptr %t888, ptr %t886, i64 %t887, i1 false)
  %t889 = insertvalue { i64, ptr } undef, i64 %t885, 0
  %t890 = insertvalue { i64, ptr } %t889, ptr %t888, 1
  %t891 = load { i64, ptr }, ptr %l443, !tbaa !27
  %t893 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eErrorWordOfMember(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t891, { i64, ptr } %t890)
  store %"compiler/diagmsg:Msg" %t893, ptr %l452
  br label %bb161
bb161:
  %t894 = load ptr, ptr %l430, !tbaa !29
  %t895 = load { i64, [3 x i64] }, ptr %l439
  %t896 = load %"compiler/diagmsg:Msg", ptr %l452
  %t897 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t894, { i64, [3 x i64] } %t895, %"compiler/diagmsg:Msg" %t896)
  store i64 %t897, ptr %l453
  br label %bb162
bb162:
  call void @__olang_scope_close(ptr %s31)
  br label %bb163
bb163:
  br label %bb164
bb164:
  %t898 = load i64, ptr %l54, !tbaa !24
  %t900 = add i64 %t898, 1
  store i64 %t900, ptr %l54, !tbaa !24
  br label %bb143
bb165:
  call void @__olang_scope_close(ptr %s27)
  br label %bb166
bb166:
  %t902 = load i64, ptr %l46, !tbaa !24
  %t904 = add i64 %t902, 1
  store i64 %t904, ptr %l46, !tbaa !24
  br label %bb124
bb167:
  br label %bb168
bb168:
  %t906 = load i64, ptr %l42, !tbaa !24
  %t908 = add i64 %t906, 1
  store i64 %t908, ptr %l42, !tbaa !24
  br label %bb120
bb169:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efailOp(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, %"compiler/source:Span" %a2, i1 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i32
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l21 = alloca { i64, ptr }
  %l34 = alloca ptr
  %l35 = alloca %"compiler/source:Span"
  %l37 = alloca %"compiler/diagmsg:Msg"
  %l38 = alloca %"compiler/diagmsg:Msg"
  %l39 = alloca %"compiler/diagmsg:Msg"
  %l40 = alloca i64
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t1)
  store ptr %t3, ptr %l10
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l10, !tbaa !29
  store ptr %t4, ptr %l4, !tbaa !29
  %t5 = load ptr, ptr %l4, !tbaa !29
  store ptr %t5, ptr %l11, !tbaa !29
  %t6 = load ptr, ptr %l11, !tbaa !29
  %t7 = getelementptr %"compiler/check:frame", ptr %t6, i32 0, i32 16
  %t8 = load i64, ptr %t7, !tbaa !24
  %t10 = add i64 %t8, 1
  %t12 = load ptr, ptr %l11, !tbaa !29
  %t13 = getelementptr %"compiler/check:frame", ptr %t12, i32 0, i32 16
  store i64 %t10, ptr %t13, !tbaa !24
  store { i64, ptr } %a1, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t16 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t18 = extractvalue { i64, ptr } %t16, 0
  store i64 %t18, ptr %l7, !tbaa !24
  br label %bb2
bb2:
  %t20 = load i64, ptr %l6, !tbaa !24
  %t21 = load i64, ptr %l7, !tbaa !24
  %t24 = icmp slt i64 %t20, %t21
  %t26 = xor i1 %t24, true
  br i1 %t26, label %bb3, label %bb4
bb3:
  br label %bb11
bb4:
  br label %bb5
bb5:
  %t28 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t28, ptr %l21, !tbaa !27
  %t29 = load i64, ptr %l6, !tbaa !24
  %t31 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !27
  %t33 = getelementptr i32, ptr %t32, i64 %t29
  %t34 = load i32, ptr %t33, !tbaa !33
  store i32 %t34, ptr %l8, !tbaa !23
  %t36 = load i32, ptr %l8, !tbaa !23
  %t37 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t40 = icmp ne i32 %t36, %t37
  br i1 %t40, label %bb6, label %bb7
bb6:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load i32, ptr %l8, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eleaks1(ptr %v0, ptr %t42, i32 %t43)
  br label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb9
bb9:
  br label %bb10
bb10:
  %t46 = load i64, ptr %l6, !tbaa !24
  %t48 = add i64 %t46, 1
  store i64 %t48, ptr %l6, !tbaa !24
  br label %bb2
bb11:
  %t50 = load ptr, ptr %l4, !tbaa !29
  %t52 = getelementptr %"compiler/check:frame", ptr %t50, i32 0, i32 15
  %t53 = load i64, ptr %t52, !tbaa !24
  %t55 = icmp eq i64 %t53, 0
  br i1 %t55, label %bb12, label %bb13
bb12:
  %t57 = load ptr, ptr %l0, !tbaa !29
  store ptr %t57, ptr %l34, !tbaa !29
  store %"compiler/source:Span" %a2, ptr %l35
  br i1 %a3, label %bb14, label %bb15
bb13:
  br label %bb20
bb14:
  %t61 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAsCanFail(ptr %v0)
  store %"compiler/diagmsg:Msg" %t61, ptr %l38
  br label %bb16
bb15:
  %t62 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnhandledFallibleCall(ptr %v0)
  store %"compiler/diagmsg:Msg" %t62, ptr %l39
  br label %bb17
bb16:
  %t63 = load %"compiler/diagmsg:Msg", ptr %l38
  store %"compiler/diagmsg:Msg" %t63, ptr %l37
  br label %bb18
bb17:
  %t64 = load %"compiler/diagmsg:Msg", ptr %l39
  store %"compiler/diagmsg:Msg" %t64, ptr %l37
  br label %bb18
bb18:
  %t65 = load ptr, ptr %l34, !tbaa !29
  %t66 = load %"compiler/source:Span", ptr %l35
  %t67 = load %"compiler/diagmsg:Msg", ptr %l37
  %t68 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t65, %"compiler/source:Span" %t66, %"compiler/diagmsg:Msg" %t67)
  store i64 %t68, ptr %l40
  br label %bb19
bb19:
  br label %bb20
bb20:
  store i32 2, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenScan(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l11 = alloca i64
  %l15 = alloca i64
  %l18 = alloca i64
  %l39 = alloca ptr
  %l40 = alloca ptr
  %l41 = alloca i64
  %l47 = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l1, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 0
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t9 = getelementptr %"compiler/load:Loader", ptr %t7, i32 0, i32 10
  %t11 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t9)
  store i64 %t11, ptr %l11
  br label %bb1
bb1:
  %t12 = load i64, ptr %l11, !tbaa !24
  store i64 %t12, ptr %l2, !tbaa !24
  store i64 1, ptr %l3, !tbaa !24
  %t13 = load i64, ptr %l2, !tbaa !24
  %t14 = load i64, ptr %l1, !tbaa !24
  %t17 = icmp sgt i64 %t13, %t14
  br i1 %t17, label %bb2, label %bb3
bb2:
  %t19 = load i64, ptr %l3, !tbaa !24
  %t21 = icmp sgt i64 %t19, 0
  br i1 %t21, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l15, !tbaa !24
  br label %bb7
bb4:
  %t23 = load i64, ptr %l2, !tbaa !24
  %t24 = load i64, ptr %l1, !tbaa !24
  %t27 = sub i64 %t23, %t24
  %t28 = load i64, ptr %l3, !tbaa !24
  %t31 = add i64 %t27, %t28
  %t33 = sub i64 %t31, 1
  %t34 = load i64, ptr %l3, !tbaa !24
  %t37 = sdiv i64 %t33, %t34
  store i64 %t37, ptr %l18, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l18, !tbaa !24
  br label %bb6
bb6:
  %t39 = load i64, ptr %l18, !tbaa !24
  store i64 %t39, ptr %l15, !tbaa !24
  br label %bb7
bb7:
  %t40 = load i64, ptr %l15, !tbaa !24
  store i64 %t40, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  br label %bb8
bb8:
  %t41 = load i64, ptr %l5, !tbaa !24
  %t42 = load i64, ptr %l4, !tbaa !24
  %t45 = icmp slt i64 %t41, %t42
  %t47 = xor i1 %t45, true
  br i1 %t47, label %bb9, label %bb10
bb9:
  br label %bb17
bb10:
  br label %bb11
bb11:
  %t49 = load i64, ptr %l1, !tbaa !24
  %t50 = load i64, ptr %l5, !tbaa !24
  %t51 = load i64, ptr %l3, !tbaa !24
  %t54 = mul i64 %t50, %t51
  %t57 = add i64 %t49, %t54
  store i64 %t57, ptr %l6, !tbaa !24
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t60 = load i64, ptr %l6, !tbaa !24
  %t61 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t65 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epush(ptr %v0, ptr %v0, ptr %t59, i64 -1, i64 %t60, i32 %t61, i32 0)
  store ptr %t65, ptr %l39
  br label %bb12
bb12:
  %t66 = load ptr, ptr %l0, !tbaa !29
  store ptr %t66, ptr %l40, !tbaa !29
  %t67 = load i64, ptr %l6, !tbaa !24
  store i64 %t67, ptr %l41, !tbaa !24
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/check:Checker", ptr %t68, i32 0, i32 1
  %t71 = load ptr, ptr %t70, !tbaa !29
  %t73 = getelementptr %"compiler/generic:Program", ptr %t71, i32 0, i32 0
  %t74 = load ptr, ptr %t73, !tbaa !29
  %t76 = getelementptr %"compiler/load:Loader", ptr %t74, i32 0, i32 10
  %t77 = load i64, ptr %l6, !tbaa !24
  %t80 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t76, i64 %t77)
  store ptr %t80, ptr %l47
  br label %bb13
bb13:
  %t81 = load ptr, ptr %l47, !tbaa !29
  %t83 = getelementptr %"compiler/load:Module", ptr %t81, i32 0, i32 8
  %t84 = load { i64, ptr }, ptr %t83, !tbaa !27
  %t85 = load ptr, ptr %l40, !tbaa !29
  %t86 = load i64, ptr %l41, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenDecls(ptr %v0, ptr %v0, ptr %t85, i64 %t86, { i64, ptr } %t84)
  br label %bb14
bb14:
  %t88 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %t88)
  br label %bb15
bb15:
  br label %bb16
bb16:
  %t90 = load i64, ptr %l5, !tbaa !24
  %t92 = add i64 %t90, 1
  store i64 %t92, ptr %l5, !tbaa !24
  br label %bb8
bb17:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehandedOn(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca i32
  %l7 = alloca i64
  %l8 = alloca %"compiler/typed:Local"
  %l10 = alloca ptr
  %l13 = alloca i1
  %l14 = alloca ptr
  %l15 = alloca i1
  %l30 = alloca i1
  %l31 = alloca i64
  %l33 = alloca ptr
  %l36 = alloca i64
  %l40 = alloca ptr
  %l44 = alloca %"compiler/typed:Local"
  %l47 = alloca i1
  %l53 = alloca i1
  %l56 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call ptr @compiler_2fcheck_2ereadPlace(ptr %v1, ptr %v1, ptr %a1)
  store ptr %t3, ptr %l10
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l10, !tbaa !29
  store ptr %t4, ptr %l3, !tbaa !29
  %t5 = load ptr, ptr %l3, !tbaa !29
  %t7 = icmp eq ptr %t5, null
  br i1 %t7, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l13, !tbaa !21
  br label %bb6
bb3:
  %t9 = load ptr, ptr %l3, !tbaa !29
  store ptr %t9, ptr %l14, !tbaa !29
  store i1 false, ptr %l15, !tbaa !21
  %t10 = load ptr, ptr %l14, !tbaa !29
  %t11 = icmp ne ptr %t10, null
  br i1 %t11, label %bb4, label %bb5
bb4:
  %t13 = load ptr, ptr %l14, !tbaa !29
  %t14 = load i64, ptr %t13, !range !{i64 0, i64 8}
  %t16 = icmp eq i64 %t14, 0
  store i1 %t16, ptr %l15, !tbaa !21
  br label %bb5
bb5:
  %t17 = load i1, ptr %l15, !tbaa !21
  %t18 = xor i1 %t17, true
  store i1 %t18, ptr %l13, !tbaa !21
  br label %bb6
bb6:
  %t20 = load i1, ptr %l13, !tbaa !21
  br i1 %t20, label %bb7, label %bb8
bb7:
  store i64 -1, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t22 = load ptr, ptr %l3, !tbaa !29
  %t24 = getelementptr { i64, [4 x i64] }, ptr %t22, i32 0, i32 1
  %t25 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t24, i32 0, i32 0
  %t26 = load %"compiler/source:Span", ptr %t25
  store %"compiler/source:Span" %t26, ptr %l4
  %t28 = load ptr, ptr %l3, !tbaa !29
  %t30 = getelementptr { i64, [4 x i64] }, ptr %t28, i32 0, i32 1
  %t31 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t30, i32 0, i32 1
  %t32 = load i32, ptr %t31
  store i32 %t32, ptr %l5, !tbaa !23
  %t34 = load ptr, ptr %l3, !tbaa !29
  %t36 = getelementptr { i64, [4 x i64] }, ptr %t34, i32 0, i32 1
  %t37 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t36, i32 0, i32 2
  %t38 = load i32, ptr %t37
  %t42 = sext i32 %t38 to i64
  store i64 %t42, ptr %l7, !tbaa !24
  %t44 = load i64, ptr %l7, !tbaa !24
  %t46 = icmp slt i64 %t44, 0
  br i1 %t46, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l30, !tbaa !21
  br label %bb14
bb11:
  %t48 = load i64, ptr %l7, !tbaa !24
  store i64 %t48, ptr %l31, !tbaa !24
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t49)
  store ptr %t51, ptr %l33
  br label %bb12
bb12:
  %t52 = load ptr, ptr %l33, !tbaa !29
  %t54 = getelementptr %"compiler/typed:Body", ptr %t52, i32 0, i32 7
  %t56 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eLen_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t54)
  store i64 %t56, ptr %l36
  br label %bb13
bb13:
  %t57 = load i64, ptr %l31, !tbaa !24
  %t58 = load i64, ptr %l36, !tbaa !24
  %t59 = icmp sge i64 %t57, %t58
  store i1 %t59, ptr %l30, !tbaa !21
  br label %bb14
bb14:
  %t61 = load i1, ptr %l30, !tbaa !21
  br i1 %t61, label %bb15, label %bb16
bb15:
  store i64 -1, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t63)
  store ptr %t65, ptr %l40
  br label %bb18
bb18:
  %t66 = load ptr, ptr %l40, !tbaa !29
  %t68 = getelementptr %"compiler/typed:Body", ptr %t66, i32 0, i32 7
  %t69 = load i64, ptr %l7, !tbaa !24
  %t72 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t68, i64 %t69)
  store %"compiler/typed:Local" %t72, ptr %l44
  br label %bb19
bb19:
  %t73 = load %"compiler/typed:Local", ptr %l44
  store %"compiler/typed:Local" %t73, ptr %l8
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/typed:Local", ptr %l8, i32 0, i32 2
  %t76 = load i32, ptr %t75, !tbaa !23
  %t79 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t74, i32 %t76)
  store i1 %t79, ptr %l47
  br label %bb20
bb20:
  %t80 = load i1, ptr %l47, !tbaa !21
  br i1 %t80, label %bb21, label %bb22
bb21:
  store i64 -1, ptr %rv
  br label %ret
bb22:
  br label %bb23
bb23:
  %t82 = getelementptr %"compiler/typed:Local", ptr %l8, i32 0, i32 4
  %t83 = load i32, ptr %t82, !range !{i32 0, i32 7}
  %t85 = trunc i64 0 to i32
  %t86 = icmp eq i32 %t83, %t85
  br i1 %t86, label %bb24, label %bb25
bb24:
  %t88 = load i64, ptr %l7, !tbaa !24
  store i64 %t88, ptr %rv
  br label %ret
bb25:
  br label %bb26
bb26:
  br i1 %a2, label %bb27, label %bb28
bb27:
  %t92 = getelementptr %"compiler/typed:Local", ptr %l8, i32 0, i32 4
  %t93 = load i32, ptr %t92, !range !{i32 0, i32 7}
  %t95 = trunc i64 1 to i32
  %t96 = icmp eq i32 %t93, %t95
  store i1 %t96, ptr %l53, !tbaa !21
  br label %bb29
bb28:
  store i1 false, ptr %l53, !tbaa !21
  br label %bb29
bb29:
  %t98 = load i1, ptr %l53, !tbaa !21
  br i1 %t98, label %bb30, label %bb31
bb30:
  %t99 = load i64, ptr %l7, !tbaa !24
  store i64 %t99, ptr %l56, !tbaa !24
  br label %bb32
bb31:
  store i64 -1, ptr %l56, !tbaa !24
  br label %bb32
bb32:
  %t101 = load i64, ptr %l56, !tbaa !24
  store i64 %t101, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehasContract(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca ptr
  %l13 = alloca i64
  %l14 = alloca ptr
  %l15 = alloca ptr
  %l18 = alloca i1
  %l19 = alloca i64
  %l22 = alloca i64
  %l28 = alloca i1
  %l32 = alloca i1
  %l38 = alloca ptr
  %l48 = alloca ptr
  %l57 = alloca ptr
  %l58 = alloca i64
  %l60 = alloca { i64, ptr }
  %l67 = alloca ptr
  %l70 = alloca %"compiler/typed:ContractInfo"
  %l77 = alloca i64
  %l80 = alloca i64
  %l99 = alloca { i64, ptr }
  %l102 = alloca ptr
  %l103 = alloca i64
  %l104 = alloca i64
  %l105 = alloca i32
  %l107 = alloca %"compiler/source:Span"
  %l108 = alloca i64
  %l113 = alloca ptr
  %l117 = alloca ptr
  %l118 = alloca i32
  %l124 = alloca ptr
  %l126 = alloca %"compiler/source:Span"
  %l128 = alloca ptr
  %l129 = alloca i64
  %l137 = alloca ptr
  %l144 = alloca { i64, ptr }
  %l146 = alloca %"compiler/source:Span"
  %l148 = alloca i64
  %l150 = alloca %"compiler/source:Span"
  %l152 = alloca i64
  %l153 = alloca i64
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
  store i1 true, ptr %l18, !tbaa !21
  br label %bb4
bb2:
  %t5 = load i64, ptr %l1, !tbaa !24
  store i64 %t5, ptr %l19, !tbaa !24
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/check:Checker", ptr %t6, i32 0, i32 14
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t8)
  store i64 %t10, ptr %l22
  br label %bb3
bb3:
  %t11 = load i64, ptr %l19, !tbaa !24
  %t12 = load i64, ptr %l22, !tbaa !24
  %t13 = icmp sge i64 %t11, %t12
  store i1 %t13, ptr %l18, !tbaa !21
  br label %bb4
bb4:
  %t15 = load i1, ptr %l18, !tbaa !21
  br i1 %t15, label %bb5, label %bb6
bb5:
  store i1 false, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/check:Checker", ptr %t17, i32 0, i32 129
  %t20 = load i64, ptr %l1, !tbaa !24
  %t23 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t19, i64 %t20)
  store i1 %t23, ptr %l28
  br label %bb8
bb8:
  %t24 = load i1, ptr %l28, !tbaa !21
  br i1 %t24, label %bb9, label %bb10
bb9:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/check:Checker", ptr %t25, i32 0, i32 128
  %t28 = load i64, ptr %l1, !tbaa !24
  %t31 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aContractIn_H706090c6fdff168fc5314bb65abd7406(ptr %v0, ptr %t27, i64 %t28)
  store i1 %t31, ptr %l32
  br label %bb11
bb10:
  br label %bb12
bb11:
  %t32 = load i1, ptr %l32, !tbaa !21
  store i1 %t32, ptr %rv
  br label %ret
bb12:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/check:Checker", ptr %t33, i32 0, i32 129
  %t36 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t35, i64 %t36, i1 true)
  br label %bb13
bb13:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t40 = load i64, ptr %l1, !tbaa !24
  %t43 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectSourceOf(ptr %v0, ptr %v0, ptr %t39, i64 %t40)
  store ptr %t43, ptr %l38
  br label %bb14
bb14:
  %t44 = load ptr, ptr %l38, !tbaa !29
  store ptr %t44, ptr %l2, !tbaa !29
  %t45 = load ptr, ptr %l2, !tbaa !29
  %t47 = icmp eq ptr %t45, null
  br i1 %t47, label %bb15, label %bb16
bb15:
  store i1 false, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  %t50 = load ptr, ptr %l2, !tbaa !29
  store ptr %t50, ptr %l3, !tbaa !29
  %t52 = load ptr, ptr %l3, !tbaa !29
  %t54 = getelementptr %"compiler/check:ctSource", ptr %t52, i32 0, i32 0
  %t55 = load ptr, ptr %t54, !tbaa !29
  store ptr %t55, ptr %l4, !tbaa !29
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/check:Checker", ptr %t57, i32 0, i32 14
  %t60 = load i64, ptr %l1, !tbaa !24
  %t63 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t59, i64 %t60)
  store ptr %t63, ptr %l48
  br label %bb18
bb18:
  %t64 = load ptr, ptr %l48, !tbaa !29
  %t66 = getelementptr %"compiler/typed:Body", ptr %t64, i32 0, i32 2
  %t67 = load i32, ptr %t66, !tbaa !23
  store i32 %t67, ptr %l5, !tbaa !23
  %t69 = load ptr, ptr %l4, !tbaa !29
  %t71 = getelementptr %"compiler/ast:ContractBlock", ptr %t69, i32 0, i32 1
  %t72 = load { i64, ptr }, ptr %t71, !tbaa !27
  %t74 = extractvalue { i64, ptr } %t72, 0
  %t76 = icmp eq i64 %t74, 0
  br i1 %t76, label %bb19, label %bb20
bb19:
  store i1 false, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"compiler/check:Checker", ptr %t79, i32 0, i32 128
  store ptr %t81, ptr %l57, !tbaa !29
  %t82 = load i64, ptr %l1, !tbaa !24
  store i64 %t82, ptr %l58, !tbaa !24
  %t83 = load ptr, ptr %l3, !tbaa !29
  %t85 = getelementptr %"compiler/check:ctSource", ptr %t83, i32 0, i32 4
  %t86 = load { i64, ptr }, ptr %t85, !tbaa !27
  store { i64, ptr } %t86, ptr %l60, !tbaa !27
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr %"compiler/check:Checker", ptr %t87, i32 0, i32 1
  %t90 = load ptr, ptr %t89, !tbaa !29
  %t92 = getelementptr %"compiler/generic:Program", ptr %t90, i32 0, i32 0
  %t93 = load ptr, ptr %t92, !tbaa !29
  %t95 = getelementptr %"compiler/load:Loader", ptr %t93, i32 0, i32 10
  %t96 = load ptr, ptr %l3, !tbaa !29
  %t98 = getelementptr %"compiler/check:ctSource", ptr %t96, i32 0, i32 3
  %t99 = load i64, ptr %t98, !tbaa !24
  %t102 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t95, i64 %t99)
  store ptr %t102, ptr %l67
  br label %bb22
bb22:
  %t103 = load ptr, ptr %l67, !tbaa !29
  %t105 = getelementptr %"compiler/load:Module", ptr %t103, i32 0, i32 4
  %t106 = load i64, ptr %t105, !tbaa !24
  %t107 = load { i64, ptr }, ptr %l60, !tbaa !27
  %t109 = call %"compiler/typed:ContractInfo" @compiler_2ftyped_3aContractInfo_2ector(ptr %v0, ptr %v0, { i64, ptr } %t107, i64 %t106)
  store %"compiler/typed:ContractInfo" %t109, ptr %l70
  br label %bb23
bb23:
  %t110 = load ptr, ptr %l57, !tbaa !29
  %t111 = load i64, ptr %l58, !tbaa !24
  %t112 = load %"compiler/typed:ContractInfo", ptr %l70
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aContractIn_H9735389c66b65d66c88b8429345781ec(ptr %v0, ptr %v0, ptr %t110, i64 %t111, %"compiler/typed:ContractInfo" %t112)
  br label %bb24
bb24:
  store i64 0, ptr %l6, !tbaa !24
  %t113 = load ptr, ptr %l4, !tbaa !29
  %t115 = getelementptr %"compiler/ast:ContractBlock", ptr %t113, i32 0, i32 1
  %t116 = load { i64, ptr }, ptr %t115, !tbaa !27
  %t118 = extractvalue { i64, ptr } %t116, 0
  store i64 %t118, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t120 = load i64, ptr %l7, !tbaa !24
  %t121 = load i64, ptr %l6, !tbaa !24
  %t124 = icmp sgt i64 %t120, %t121
  br i1 %t124, label %bb25, label %bb26
bb25:
  %t126 = load i64, ptr %l8, !tbaa !24
  %t128 = icmp sgt i64 %t126, 0
  br i1 %t128, label %bb27, label %bb28
bb26:
  store i64 0, ptr %l77, !tbaa !24
  br label %bb30
bb27:
  %t130 = load i64, ptr %l7, !tbaa !24
  %t131 = load i64, ptr %l6, !tbaa !24
  %t134 = sub i64 %t130, %t131
  %t135 = load i64, ptr %l8, !tbaa !24
  %t138 = add i64 %t134, %t135
  %t140 = sub i64 %t138, 1
  %t141 = load i64, ptr %l8, !tbaa !24
  %t144 = sdiv i64 %t140, %t141
  store i64 %t144, ptr %l80, !tbaa !24
  br label %bb29
bb28:
  store i64 0, ptr %l80, !tbaa !24
  br label %bb29
bb29:
  %t146 = load i64, ptr %l80, !tbaa !24
  store i64 %t146, ptr %l77, !tbaa !24
  br label %bb30
bb30:
  %t147 = load i64, ptr %l77, !tbaa !24
  store i64 %t147, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb31
bb31:
  %t148 = load i64, ptr %l10, !tbaa !24
  %t149 = load i64, ptr %l9, !tbaa !24
  %t152 = icmp slt i64 %t148, %t149
  %t154 = xor i1 %t152, true
  br i1 %t154, label %bb32, label %bb33
bb32:
  br label %bb62
bb33:
  br label %bb34
bb34:
  %t156 = load i64, ptr %l6, !tbaa !24
  %t157 = load i64, ptr %l10, !tbaa !24
  %t158 = load i64, ptr %l8, !tbaa !24
  %t161 = mul i64 %t157, %t158
  %t164 = add i64 %t156, %t161
  store i64 %t164, ptr %l11, !tbaa !24
  %t166 = load ptr, ptr %l4, !tbaa !29
  %t168 = getelementptr %"compiler/ast:ContractBlock", ptr %t166, i32 0, i32 1
  %t169 = load { i64, ptr }, ptr %t168, !tbaa !27
  store { i64, ptr } %t169, ptr %l99, !tbaa !27
  %t170 = load i64, ptr %l11, !tbaa !24
  %t172 = getelementptr { i64, ptr }, ptr %l99, i32 0, i32 1
  %t173 = load ptr, ptr %t172, !tbaa !27
  %t174 = getelementptr ptr, ptr %t173, i64 %t170
  %t175 = load ptr, ptr %t174, !tbaa !39
  store ptr %t175, ptr %l12, !tbaa !29
  %t177 = load ptr, ptr %l0, !tbaa !29
  store ptr %t177, ptr %l102, !tbaa !29
  %t178 = load i64, ptr %l1, !tbaa !24
  store i64 %t178, ptr %l103, !tbaa !24
  %t179 = load i64, ptr %l11, !tbaa !24
  store i64 %t179, ptr %l104, !tbaa !24
  %t180 = load i32, ptr %l5, !tbaa !23
  store i32 %t180, ptr %l105, !tbaa !23
  %t181 = load ptr, ptr %l12, !tbaa !29
  %t183 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aStmt_2eSpan(ptr %v0, ptr %t181)
  store %"compiler/source:Span" %t183, ptr %l107
  br label %bb35
bb35:
  %t184 = load ptr, ptr %l102, !tbaa !29
  %t185 = load i64, ptr %l103, !tbaa !24
  %t186 = load i64, ptr %l104, !tbaa !24
  %t187 = load i32, ptr %l105, !tbaa !23
  %t188 = load %"compiler/source:Span", ptr %l107
  %t189 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectBody(ptr %v0, ptr %t184, i64 %t185, i64 %t186, i32 %t187, %"compiler/source:Span" %t188)
  store i64 %t189, ptr %l108
  br label %bb36
bb36:
  %t190 = load i64, ptr %l108, !tbaa !24
  store i64 %t190, ptr %l13, !tbaa !24
  %t191 = load ptr, ptr %l0, !tbaa !29
  %t192 = load ptr, ptr %l12, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectItems(ptr %v0, ptr %v0, ptr %t191, ptr %t192)
  br label %bb37
bb37:
  %t195 = load ptr, ptr %l0, !tbaa !29
  %t196 = load i64, ptr %l13, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectFinish(ptr %v0, ptr %t195, i64 %t196)
  br label %bb38
bb38:
  %t199 = load ptr, ptr %l0, !tbaa !29
  %t201 = getelementptr %"compiler/check:Checker", ptr %t199, i32 0, i32 128
  %t202 = load i64, ptr %l1, !tbaa !24
  %t205 = call { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aContractIn_Hd65c4272ca63b1b28bc10811826f8c0d(ptr %v0, ptr %v0, ptr %t201, i64 %t202)
  %t206 = extractvalue { i32, ptr } %t205, 1
  %t207 = extractvalue { i32, ptr } %t205, 0
  store i32 %t207, ptr %l118
  %t208 = icmp ne i32 %t207, 0
  br i1 %t208, label %bb40, label %ok.209, !prof !99
ok.209:
  store ptr %t206, ptr %l117
  br label %bb39
bb39:
  %t210 = load ptr, ptr %l117, !tbaa !29
  store ptr %t210, ptr %l113, !tbaa !29
  br label %bb42
bb40:
  br label %bb41
bb41:
  store i1 true, ptr %rv
  br label %ret
bb42:
  %t212 = load ptr, ptr %l113, !tbaa !29
  store ptr %t212, ptr %l14, !tbaa !29
  %t213 = load ptr, ptr %l14, !tbaa !29
  %t215 = getelementptr %"compiler/typed:ContractInfo", ptr %t213, i32 0, i32 2
  %t216 = load i64, ptr %l13, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t215, i64 %t216)
  br label %bb43
bb43:
  %t219 = load ptr, ptr %l14, !tbaa !29
  %t221 = getelementptr %"compiler/typed:ContractInfo", ptr %t219, i32 0, i32 3
  store ptr %t221, ptr %l124, !tbaa !29
  %t222 = load ptr, ptr %l12, !tbaa !29
  %t224 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aStmt_2eSpan(ptr %v0, ptr %t222)
  store %"compiler/source:Span" %t224, ptr %l126
  br label %bb44
bb44:
  %t225 = load ptr, ptr %l124, !tbaa !29
  %t226 = load %"compiler/source:Span", ptr %l126
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2ePush_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t225, %"compiler/source:Span" %t226)
  br label %bb45
bb45:
  %t227 = load ptr, ptr %l14, !tbaa !29
  %t229 = getelementptr %"compiler/typed:ContractInfo", ptr %t227, i32 0, i32 4
  store ptr %t229, ptr %l128, !tbaa !29
  %t230 = ptrtoint ptr %v0 to i64
  store i64 %t230, ptr %l129, !tbaa !24
  %t231 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t231, label %bb46, label %bb47
bb46:
  %t233 = call ptr @__olang_region_make(ptr %v0)
  %t234 = ptrtoint ptr %t233 to i64
  store i64 %t234, ptr %l129, !tbaa !24
  br label %bb47
bb47:
  %t235 = load ptr, ptr %l0, !tbaa !29
  %t237 = getelementptr %"compiler/check:Checker", ptr %t235, i32 0, i32 1
  %t238 = load ptr, ptr %t237, !tbaa !29
  %t240 = getelementptr %"compiler/generic:Program", ptr %t238, i32 0, i32 0
  %t241 = load ptr, ptr %t240, !tbaa !29
  %t243 = getelementptr %"compiler/load:Loader", ptr %t241, i32 0, i32 10
  %t244 = load ptr, ptr %l3, !tbaa !29
  %t246 = getelementptr %"compiler/check:ctSource", ptr %t244, i32 0, i32 3
  %t247 = load i64, ptr %t246, !tbaa !24
  %t250 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t243, i64 %t247)
  store ptr %t250, ptr %l137
  br label %bb48
bb48:
  %t251 = load ptr, ptr %l137, !tbaa !29
  %t253 = getelementptr %"compiler/load:Module", ptr %t251, i32 0, i32 6
  %t254 = load ptr, ptr %t253, !tbaa !29
  store ptr %t254, ptr %l15, !tbaa !29
  %t256 = load ptr, ptr %l15, !tbaa !29
  %t258 = icmp eq ptr %t256, null
  br i1 %t258, label %bb49, label %bb50
bb49:
  call void @__olang_check_failed(ptr @olang_loc_b8c0f8df0c29feb4_85efe1bb89e725c8)
  unreachable
bb50:
  br label %bb51
bb51:
  %t260 = load ptr, ptr %l15, !tbaa !29
  %t263 = getelementptr %"compiler/source:Source", ptr %t260, i32 0, i32 1
  %t264 = load { i64, ptr }, ptr %t263, !tbaa !27
  store { i64, ptr } %t264, ptr %l144, !tbaa !27
  %t265 = load ptr, ptr %l12, !tbaa !29
  %t267 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aStmt_2eSpan(ptr %v0, ptr %t265)
  store %"compiler/source:Span" %t267, ptr %l146
  br label %bb52
bb52:
  %t268 = getelementptr %"compiler/source:Span", ptr %l146, i32 0, i32 0
  %t269 = load i32, ptr %t268, !tbaa !23
  %t271 = sext i32 %t269 to i64
  store i64 %t271, ptr %l148, !tbaa !24
  %t272 = load ptr, ptr %l12, !tbaa !29
  %t274 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aStmt_2eSpan(ptr %v0, ptr %t272)
  store %"compiler/source:Span" %t274, ptr %l150
  br label %bb53
bb53:
  %t275 = getelementptr %"compiler/source:Span", ptr %l150, i32 0, i32 1
  %t276 = load i32, ptr %t275, !tbaa !23
  %t278 = sext i32 %t276 to i64
  store i64 %t278, ptr %l152, !tbaa !24
  %t279 = load { i64, ptr }, ptr %l144, !tbaa !27
  %t280 = extractvalue { i64, ptr } %t279, 0
  store i64 %t280, ptr %l153, !tbaa !24
  %t281 = load i64, ptr %l148, !tbaa !24
  %t282 = icmp sge i64 %t281, 0
  br i1 %t282, label %bb54, label %bb55
bb54:
  %t284 = load i64, ptr %l148, !tbaa !24
  %t285 = load i64, ptr %l152, !tbaa !24
  %t286 = icmp sle i64 %t284, %t285
  br i1 %t286, label %bb56, label %bb57
bb55:
  call void @__olang_check_failed(ptr @olang_loc_73dce0787632619_dfd6eca41306418d)
  unreachable
bb56:
  %t288 = load i64, ptr %l152, !tbaa !24
  %t289 = load i64, ptr %l153, !tbaa !24
  %t290 = icmp sle i64 %t288, %t289
  br i1 %t290, label %bb58, label %bb59
bb57:
  call void @__olang_check_failed(ptr @olang_loc_73dce0787632619_dfd6eca41306418d)
  unreachable
bb58:
  %t292 = getelementptr { i64, ptr }, ptr %l144, i32 0, i32 1
  %t293 = load ptr, ptr %t292, !tbaa !27
  %t294 = load i64, ptr %l148, !tbaa !24
  %t295 = load i64, ptr %l152, !tbaa !24
  %t296 = getelementptr i8, ptr %t293, i64 %t294
  %t297 = sub i64 %t295, %t294
  %t298 = insertvalue { i64, ptr } undef, i64 %t297, 0
  %t299 = insertvalue { i64, ptr } %t298, ptr %t296, 1
  %t301 = extractvalue { i64, ptr } %t299, 1
  %t302 = extractvalue { i64, ptr } %t299, 0
  %t303 = load i64, ptr %l129
  %t304 = inttoptr i64 %t303 to ptr
  %t305 = call ptr @__olang_scope_alloc(ptr %t304, i64 %t302)
  call void @olang_textcopy(ptr %t305, ptr %t301, i64 %t302)
  %t306 = insertvalue { i64, ptr } undef, i64 %t302, 0
  %t307 = insertvalue { i64, ptr } %t306, ptr %t305, 1
  %t309 = load i64, ptr %l129
  %t310 = inttoptr i64 %t309 to ptr
  %t311 = extractvalue { i64, ptr } %t307, 0
  %t312 = extractvalue { i64, ptr } %t307, 1
  %t313 = mul i64 %t311, 1
  %t314 = call ptr @__olang_scope_alloc(ptr %t310, i64 %t313)
  call void @llvm.memcpy.p0.p0.i64(ptr %t314, ptr %t312, i64 %t313, i1 false)
  %t315 = insertvalue { i64, ptr } undef, i64 %t311, 0
  %t316 = insertvalue { i64, ptr } %t315, ptr %t314, 1
  %t317 = load ptr, ptr %l128, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t317, { i64, ptr } %t316)
  br label %bb60
bb59:
  call void @__olang_check_failed(ptr @olang_loc_73dce0787632619_dfd6eca41306418d)
  unreachable
bb60:
  br label %bb61
bb61:
  %t319 = load i64, ptr %l10, !tbaa !24
  %t321 = add i64 %t319, 1
  store i64 %t321, ptr %l10, !tbaa !24
  br label %bb31
bb62:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einferred(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i1 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca %"compiler/source:Span"
  %l8 = alloca i32
  %l12 = alloca ptr
  %l13 = alloca i1
  %l18 = alloca ptr
  %l19 = alloca %"compiler/source:Span"
  %l20 = alloca %"compiler/diagmsg:Msg"
  %l21 = alloca i64
  %l22 = alloca ptr
  %l25 = alloca %"compiler/source:Span"
  %l26 = alloca %"compiler/diagmsg:Msg"
  %l27 = alloca i64
  %l32 = alloca ptr
  %l34 = alloca %"compiler/source:Span"
  %l35 = alloca %"compiler/diagmsg:Msg"
  %l36 = alloca i64
  %l41 = alloca ptr
  %l43 = alloca %"compiler/source:Span"
  %l44 = alloca %"compiler/diagmsg:Msg"
  %l45 = alloca i64
  %l49 = alloca i1
  %l50 = alloca i1
  %l55 = alloca i32
  %l57 = alloca i32
  %l59 = alloca ptr
  %l60 = alloca i1
  %l64 = alloca i32
  %l69 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t4 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %t1)
  store i32 %t4, ptr %l8
  br label %bb1
bb1:
  %t5 = load i32, ptr %l8, !tbaa !23
  store i32 %t5, ptr %l4, !tbaa !23
  %t6 = load i32, ptr %l4, !tbaa !23
  %t7 = load i32, ptr @G_2ecompiler_2ftypes_2eNoreturnT, !tbaa !23
  %t10 = icmp eq i32 %t6, %t7
  br i1 %t10, label %bb2, label %bb3
bb2:
  %t12 = load ptr, ptr %l1, !tbaa !29
  store ptr %t12, ptr %l12, !tbaa !29
  store i1 false, ptr %l13, !tbaa !21
  %t13 = load ptr, ptr %l12, !tbaa !29
  %t14 = icmp ne ptr %t13, null
  br i1 %t14, label %bb4, label %bb5
bb3:
  br label %bb20
bb4:
  %t16 = load ptr, ptr %l12, !tbaa !29
  %t17 = load i64, ptr %t16, !range !{i64 0, i64 30}
  %t19 = icmp eq i64 %t17, 27
  store i1 %t19, ptr %l13, !tbaa !21
  br label %bb5
bb5:
  %t20 = load i1, ptr %l13, !tbaa !21
  br i1 %t20, label %bb6, label %bb7
bb6:
  %t21 = load ptr, ptr %l1, !tbaa !29
  %t23 = getelementptr { i64, [4 x i64] }, ptr %t21, i32 0, i32 1
  %t24 = getelementptr { %"compiler/source:Span", ptr }, ptr %t23, i32 0, i32 0
  %t25 = load %"compiler/source:Span", ptr %t24
  store %"compiler/source:Span" %t25, ptr %l5
  br label %bb8
bb7:
  br label %bb11
bb8:
  %t27 = load ptr, ptr %l0, !tbaa !29
  store ptr %t27, ptr %l18, !tbaa !29
  %t28 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t28, ptr %l19
  %t29 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDeclFromNoreturn(ptr %v0, ptr %v0, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d10, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t29, ptr %l20
  br label %bb9
bb9:
  %t30 = load ptr, ptr %l18, !tbaa !29
  %t31 = load %"compiler/source:Span", ptr %l19
  %t32 = load %"compiler/diagmsg:Msg", ptr %l20
  %t33 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t30, %"compiler/source:Span" %t31, %"compiler/diagmsg:Msg" %t32)
  store i64 %t33, ptr %l21
  br label %bb10
bb10:
  br label %bb19
bb11:
  br i1 true, label %bb12, label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb18
bb14:
  %t34 = load ptr, ptr %l0, !tbaa !29
  store ptr %t34, ptr %l22, !tbaa !29
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t36 = load ptr, ptr %l1, !tbaa !29
  %t39 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecalleeSpan(ptr %v0, ptr %v1, ptr %t35, ptr %t36)
  store %"compiler/source:Span" %t39, ptr %l25
  br label %bb15
bb15:
  %t40 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDeclFromNoreturn(ptr %v0, ptr %v0, { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d11, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t40, ptr %l26
  br label %bb16
bb16:
  %t41 = load ptr, ptr %l22, !tbaa !29
  %t42 = load %"compiler/source:Span", ptr %l25
  %t43 = load %"compiler/diagmsg:Msg", ptr %l26
  %t44 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t41, %"compiler/source:Span" %t42, %"compiler/diagmsg:Msg" %t43)
  store i64 %t44, ptr %l27
  br label %bb17
bb17:
  br label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_343b32e44524bf9e_67b59a3d30ab5452)
  unreachable
bb19:
  %t45 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t45, ptr %rv
  br label %ret
bb20:
  %t47 = load i32, ptr %l4, !tbaa !23
  %t48 = load i32, ptr @G_2ecompiler_2ftypes_2eNullT, !tbaa !23
  %t51 = icmp eq i32 %t47, %t48
  br i1 %t51, label %bb21, label %bb22
bb21:
  %t53 = load ptr, ptr %l0, !tbaa !29
  store ptr %t53, ptr %l32, !tbaa !29
  %t54 = load ptr, ptr %l1, !tbaa !29
  %t56 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t54)
  store %"compiler/source:Span" %t56, ptr %l34
  br label %bb23
bb22:
  br label %bb26
bb23:
  %t57 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDeclFromNull(ptr %v0)
  store %"compiler/diagmsg:Msg" %t57, ptr %l35
  br label %bb24
bb24:
  %t58 = load ptr, ptr %l32, !tbaa !29
  %t59 = load %"compiler/source:Span", ptr %l34
  %t60 = load %"compiler/diagmsg:Msg", ptr %l35
  %t61 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t58, %"compiler/source:Span" %t59, %"compiler/diagmsg:Msg" %t60)
  store i64 %t61, ptr %l36
  br label %bb25
bb25:
  %t62 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t62, ptr %rv
  br label %ret
bb26:
  %t64 = load i32, ptr %l4, !tbaa !23
  %t65 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t68 = icmp eq i32 %t64, %t65
  br i1 %t68, label %bb27, label %bb28
bb27:
  %t70 = load ptr, ptr %l0, !tbaa !29
  store ptr %t70, ptr %l41, !tbaa !29
  %t71 = load ptr, ptr %l1, !tbaa !29
  %t73 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t71)
  store %"compiler/source:Span" %t73, ptr %l43
  br label %bb29
bb28:
  br label %bb32
bb29:
  %t74 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeNotInferable(ptr %v0)
  store %"compiler/diagmsg:Msg" %t74, ptr %l44
  br label %bb30
bb30:
  %t75 = load ptr, ptr %l41, !tbaa !29
  %t76 = load %"compiler/source:Span", ptr %l43
  %t77 = load %"compiler/diagmsg:Msg", ptr %l44
  %t78 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t75, %"compiler/source:Span" %t76, %"compiler/diagmsg:Msg" %t77)
  store i64 %t78, ptr %l45
  br label %bb31
bb31:
  %t79 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t79, ptr %rv
  br label %ret
bb32:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t82 = load i32, ptr %l4, !tbaa !23
  %t85 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t81, i32 %t82)
  store i1 %t85, ptr %l49
  br label %bb33
bb33:
  %t86 = load i1, ptr %l49, !tbaa !21
  br i1 %t86, label %bb34, label %bb35
bb34:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr %"compiler/check:Checker", ptr %t87, i32 0, i32 1
  %t90 = load ptr, ptr %t89, !tbaa !29
  %t92 = getelementptr %"compiler/generic:Program", ptr %t90, i32 0, i32 2
  %t93 = load i32, ptr %l4, !tbaa !23
  %t96 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t92, i32 %t93)
  store i32 %t96, ptr %l55
  br label %bb36
bb35:
  store i1 false, ptr %l50, !tbaa !21
  br label %bb38
bb36:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t99 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextType(ptr %v0, ptr %t97)
  store i32 %t99, ptr %l57
  br label %bb37
bb37:
  %t100 = load i32, ptr %l55, !tbaa !23
  %t101 = load i32, ptr %l57, !tbaa !23
  %t102 = icmp eq i32 %t100, %t101
  store i1 %t102, ptr %l50, !tbaa !21
  br label %bb38
bb38:
  %t104 = load i1, ptr %l50, !tbaa !21
  br i1 %t104, label %bb39, label %bb40
bb39:
  %t105 = load ptr, ptr %l2, !tbaa !29
  store ptr %t105, ptr %l59, !tbaa !29
  store i1 false, ptr %l60, !tbaa !21
  %t106 = load ptr, ptr %l59, !tbaa !29
  %t107 = icmp ne ptr %t106, null
  br i1 %t107, label %bb41, label %bb42
bb40:
  br label %bb53
bb41:
  %t109 = load ptr, ptr %l59, !tbaa !29
  %t110 = load i64, ptr %t109, !range !{i64 0, i64 18}
  %t112 = icmp eq i64 %t110, 1
  store i1 %t112, ptr %l60, !tbaa !21
  br label %bb42
bb42:
  %t113 = load i1, ptr %l60, !tbaa !21
  br i1 %t113, label %bb43, label %bb44
bb43:
  br label %bb45
bb44:
  br label %bb47
bb45:
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t116 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextType(ptr %v0, ptr %t114)
  store i32 %t116, ptr %l64
  br label %bb46
bb46:
  %t117 = load i32, ptr %l64, !tbaa !23
  store i32 %t117, ptr %rv
  br label %ret
bb47:
  br i1 true, label %bb48, label %bb49
bb48:
  br label %bb50
bb49:
  br label %bb51
bb50:
  br label %bb52
bb51:
  call void @__olang_check_failed(ptr @olang_loc_9c9a337b92d12a1f_5567ba002875d853)
  unreachable
bb52:
  br label %bb53
bb53:
  %t120 = xor i1 %a3, true
  br i1 %t120, label %bb54, label %bb55
bb54:
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t123 = load i32, ptr %l4, !tbaa !23
  %t126 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erunLength(ptr %v0, ptr %t122, i32 %t123)
  store i32 %t126, ptr %l69
  br label %bb56
bb55:
  br label %bb57
bb56:
  %t127 = load i32, ptr %l69, !tbaa !23
  store i32 %t127, ptr %rv
  br label %ret
bb57:
  %t128 = load i32, ptr %l4, !tbaa !23
  store i32 %t128, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ejoinStmt(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca { i64, i64, i64 }
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca i64
  %l15 = alloca ptr
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l25 = alloca i32
  %l26 = alloca i1
  %l27 = alloca ptr
  %l28 = alloca i64
  %l30 = alloca ptr
  %l31 = alloca i64
  %l32 = alloca ptr
  %l33 = alloca i64
  %l35 = alloca i64
  %l36 = alloca { i64, ptr }
  %l37 = alloca { i64, ptr }
  %l38 = alloca i64
  %l39 = alloca i64
  %l41 = alloca i64
  %l42 = alloca i64
  %l43 = alloca i64
  %l44 = alloca i64
  %l45 = alloca i64
  %l46 = alloca i64
  %l47 = alloca ptr
  %l48 = alloca i64
  %l49 = alloca i64
  %l51 = alloca ptr
  %l59 = alloca ptr
  %l62 = alloca i64
  %l65 = alloca i64
  %l69 = alloca { i64, i64, i64 }
  %l85 = alloca { i64, ptr }
  %l98 = alloca ptr
  %l100 = alloca ptr
  %l102 = alloca ptr
  %l105 = alloca i64
  %l107 = alloca i64
  %l109 = alloca ptr
  %l112 = alloca i64
  %l114 = alloca i64
  %l115 = alloca i64
  %l118 = alloca i64
  %l119 = alloca i32
  %l120 = alloca i64
  %l123 = alloca i64
  %l124 = alloca i32
  %l127 = alloca ptr
  %l128 = alloca %"compiler/source:Span"
  %l129 = alloca %"compiler/diagmsg:Msg"
  %l130 = alloca i64
  %l131 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l135 = alloca i64
  %l139 = alloca i64
  %l142 = alloca i64
  %l163 = alloca i32
  %l165 = alloca i64
  %l167 = alloca i64
  %l172 = alloca i32
  %l187 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l193 = alloca i1
  %l198 = alloca i64
  %l200 = alloca ptr
  %l203 = alloca { i64, ptr }
  %l205 = alloca %"compiler/source:Span"
  %l206 = alloca %"compiler/diagmsg:Msg"
  %l207 = alloca i64
  %l211 = alloca i64
  %l213 = alloca i1
  %l218 = alloca ptr
  %l219 = alloca %"compiler/source:Span"
  %l220 = alloca %"compiler/diagmsg:Msg"
  %l221 = alloca i64
  %l224 = alloca i64
  %l226 = alloca i64
  %l228 = alloca i64
  %l233 = alloca i32
  %l241 = alloca i64
  %l254 = alloca { i64, ptr }
  %l263 = alloca { i64, ptr }
  %l266 = alloca ptr
  %l272 = alloca ptr
  %l280 = alloca i64
  %l284 = alloca i64
  %l287 = alloca i64
  %l308 = alloca ptr
  %l313 = alloca i1
  %l317 = alloca ptr
  %l323 = alloca i1
  %l324 = alloca ptr
  %l327 = alloca { i64, ptr }
  %l330 = alloca %"compiler/source:Span"
  %l331 = alloca %"compiler/diagmsg:Msg"
  %l332 = alloca i64
  %l339 = alloca i64
  %l340 = alloca i64
  %l343 = alloca { i64, ptr }
  %l344 = alloca i64
  %l345 = alloca i32
  %l346 = alloca ptr
  %l356 = alloca %"compiler/source:Span"
  %l360 = alloca i64
  %l362 = alloca ptr
  %l363 = alloca %"compiler/source:Span"
  %l364 = alloca ptr
  %l366 = alloca i32
  %l367 = alloca { i64, ptr }
  %l369 = alloca %"compiler/diagmsg:Msg"
  %l370 = alloca i64
  %l373 = alloca ptr
  %l374 = alloca %"compiler/source:Span"
  %l375 = alloca ptr
  %l377 = alloca i1
  %l379 = alloca { i64, ptr }
  %l380 = alloca %"compiler/typed:Join"
  %s0 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %s23 = alloca %olang.scope
  %t674 = alloca { i64, [3 x i64] }, align 8
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
  store ptr %t3, ptr %l51
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l51, !tbaa !29
  store ptr %t4, ptr %l3, !tbaa !29
  %t5 = load ptr, ptr %l3, !tbaa !29
  %t7 = getelementptr %"compiler/check:frame", ptr %t5, i32 0, i32 33
  %t8 = load i64, ptr %t7, !tbaa !24
  store i64 %t8, ptr %l4, !tbaa !24
  %t10 = load ptr, ptr %l3, !tbaa !29
  %t12 = getelementptr %"compiler/check:frame", ptr %t10, i32 0, i32 41
  %t13 = load i64, ptr %t12, !tbaa !24
  store i64 %t13, ptr %l5, !tbaa !24
  %t15 = load ptr, ptr %l3, !tbaa !29
  %t17 = getelementptr %"compiler/check:frame", ptr %t15, i32 0, i32 38
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t17, i64 0)
  br label %bb2
bb2:
  %t19 = load ptr, ptr %l3, !tbaa !29
  %t21 = getelementptr %"compiler/check:frame", ptr %t19, i32 0, i32 39
  store ptr %t21, ptr %l59, !tbaa !29
  %t22 = load ptr, ptr %l3, !tbaa !29
  %t24 = getelementptr %"compiler/check:frame", ptr %t22, i32 0, i32 40
  %t26 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t24)
  store i64 %t26, ptr %l62
  br label %bb3
bb3:
  %t27 = load ptr, ptr %l59, !tbaa !29
  %t28 = load i64, ptr %l62, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t27, i64 %t28)
  br label %bb4
bb4:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/check:Checker", ptr %t29, i32 0, i32 37
  %t33 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t31)
  store i64 %t33, ptr %l65
  br label %bb5
bb5:
  %t34 = load i64, ptr %l65, !tbaa !24
  store i64 %t34, ptr %l6, !tbaa !24
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t36 = load %"compiler/source:Span", ptr %l1
  %t40 = call { i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopen(ptr %v0, ptr %t35, i32 5, %"compiler/source:Span" %t36)
  store { i64, i64, i64 } %t40, ptr %l69
  br label %bb6
bb6:
  %t41 = load { i64, i64, i64 }, ptr %l69
  store { i64, i64, i64 } %t41, ptr %l7
  %t42 = getelementptr { i64, i64, i64 }, ptr %l7, i32 0, i32 0
  %t43 = load i64, ptr %t42, !tbaa !24
  store i64 %t43, ptr %l8, !tbaa !24
  %t45 = getelementptr { i64, i64, i64 }, ptr %l7, i32 0, i32 1
  %t46 = load i64, ptr %t45, !tbaa !24
  store i64 %t46, ptr %l9, !tbaa !24
  %t48 = getelementptr { i64, i64, i64 }, ptr %l7, i32 0, i32 2
  %t49 = load i64, ptr %t48, !tbaa !24
  store i64 %t49, ptr %l10, !tbaa !24
  %t51 = load ptr, ptr %l2, !tbaa !29
  %t53 = getelementptr %"compiler/ast:JoinS", ptr %t51, i32 0, i32 1
  %t54 = load { i64, ptr }, ptr %t53, !tbaa !27
  %t56 = extractvalue { i64, ptr } %t54, 0
  %t58 = icmp sgt i64 %t56, 0
  br i1 %t58, label %bb7, label %bb8
bb7:
  %t60 = load ptr, ptr %l2, !tbaa !29
  %t62 = getelementptr %"compiler/ast:JoinS", ptr %t60, i32 0, i32 1
  %t63 = load { i64, ptr }, ptr %t62, !tbaa !27
  store { i64, ptr } %t63, ptr %l11, !tbaa !27
  store i64 0, ptr %l12, !tbaa !24
  %t65 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t67 = extractvalue { i64, ptr } %t65, 0
  store i64 %t67, ptr %l13, !tbaa !24
  br label %bb9
bb8:
  br label %bb16
bb9:
  %t69 = load i64, ptr %l12, !tbaa !24
  %t70 = load i64, ptr %l13, !tbaa !24
  %t73 = icmp slt i64 %t69, %t70
  %t75 = xor i1 %t73, true
  br i1 %t75, label %bb10, label %bb11
bb10:
  br label %bb15
bb11:
  br label %bb12
bb12:
  %t77 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t77, ptr %l85, !tbaa !27
  %t78 = load i64, ptr %l12, !tbaa !24
  %t80 = getelementptr { i64, ptr }, ptr %l85, i32 0, i32 1
  %t81 = load ptr, ptr %t80, !tbaa !27
  %t82 = getelementptr ptr, ptr %t81, i64 %t78
  %t83 = load ptr, ptr %t82, !tbaa !39
  %t85 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estmt(ptr %v0, ptr %v1, ptr %t85, ptr %t83)
  br label %bb13
bb13:
  br label %bb14
bb14:
  %t90 = load i64, ptr %l12, !tbaa !24
  %t92 = add i64 %t90, 1
  store i64 %t92, ptr %l12, !tbaa !24
  br label %bb9
bb15:
  br label %bb16
bb16:
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t95 = load i64, ptr %l8, !tbaa !24
  %t96 = load i64, ptr %l9, !tbaa !24
  %t97 = load i64, ptr %l10, !tbaa !24
  %t98 = load i64, ptr %l6, !tbaa !24
  %t104 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclose(ptr %v0, ptr %v0, ptr %t94, i64 %t95, i64 %t96, i64 %t97, i64 %t98)
  store ptr %t104, ptr %l98
  br label %bb17
bb17:
  %t105 = load ptr, ptr %l98, !tbaa !29
  store ptr %t105, ptr %l15, !tbaa !29
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t108 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t106)
  store ptr %t108, ptr %l100
  br label %bb18
bb18:
  %t109 = load ptr, ptr %l100, !tbaa !29
  store ptr %t109, ptr %l3, !tbaa !29
  %t110 = load ptr, ptr %l3, !tbaa !29
  %t112 = getelementptr %"compiler/check:frame", ptr %t110, i32 0, i32 38
  store ptr %t112, ptr %l102, !tbaa !29
  %t113 = load ptr, ptr %l3, !tbaa !29
  %t115 = getelementptr %"compiler/check:frame", ptr %t113, i32 0, i32 38
  %t117 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t115)
  store i64 %t117, ptr %l105
  br label %bb19
bb19:
  %t118 = load i64, ptr %l105, !tbaa !24
  %t119 = sub i64 %t118, 1
  %t120 = load ptr, ptr %l102, !tbaa !29
  %t122 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t120, i64 %t119)
  store i64 %t122, ptr %l107
  br label %bb20
bb20:
  %t123 = load i64, ptr %l107, !tbaa !24
  store i64 %t123, ptr %l16, !tbaa !24
  %t124 = load ptr, ptr %l3, !tbaa !29
  %t126 = getelementptr %"compiler/check:frame", ptr %t124, i32 0, i32 39
  store ptr %t126, ptr %l109, !tbaa !29
  %t127 = load ptr, ptr %l3, !tbaa !29
  %t129 = getelementptr %"compiler/check:frame", ptr %t127, i32 0, i32 39
  %t131 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t129)
  store i64 %t131, ptr %l112
  br label %bb21
bb21:
  %t132 = load i64, ptr %l112, !tbaa !24
  %t133 = sub i64 %t132, 1
  %t134 = load ptr, ptr %l109, !tbaa !29
  %t136 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t134, i64 %t133)
  store i64 %t136, ptr %l114
  br label %bb22
bb22:
  %t137 = load i64, ptr %l114, !tbaa !24
  store i64 %t137, ptr %l17, !tbaa !24
  %t138 = load ptr, ptr %l3, !tbaa !29
  %t140 = getelementptr %"compiler/check:frame", ptr %t138, i32 0, i32 38
  %t142 = call { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %t140)
  %t143 = extractvalue { i32, i64 } %t142, 1
  %t144 = extractvalue { i32, i64 } %t142, 0
  store i32 %t144, ptr %l119
  %t145 = icmp ne i32 %t144, 0
  br i1 %t145, label %bb24, label %ok.146, !prof !99
ok.146:
  store i64 %t143, ptr %l118
  br label %bb23
bb23:
  %t147 = load i64, ptr %l118, !tbaa !24
  store i64 %t147, ptr %l115, !tbaa !24
  br label %bb26
bb24:
  br label %bb25
bb25:
  br label %bb26
bb26:
  %t148 = load ptr, ptr %l3, !tbaa !29
  %t150 = getelementptr %"compiler/check:frame", ptr %t148, i32 0, i32 39
  %t152 = call { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %t150)
  %t153 = extractvalue { i32, i64 } %t152, 1
  %t154 = extractvalue { i32, i64 } %t152, 0
  store i32 %t154, ptr %l124
  %t155 = icmp ne i32 %t154, 0
  br i1 %t155, label %bb28, label %ok.156, !prof !99
ok.156:
  store i64 %t153, ptr %l123
  br label %bb27
bb27:
  %t157 = load i64, ptr %l123, !tbaa !24
  store i64 %t157, ptr %l120, !tbaa !24
  br label %bb30
bb28:
  br label %bb29
bb29:
  br label %bb30
bb30:
  %t158 = load i64, ptr %l16, !tbaa !24
  %t160 = icmp eq i64 %t158, 0
  br i1 %t160, label %bb31, label %bb32
bb31:
  %t162 = load ptr, ptr %l0, !tbaa !29
  store ptr %t162, ptr %l127, !tbaa !29
  %t163 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t163, ptr %l128
  %t164 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eJoinWithoutSpawn(ptr %v0)
  store %"compiler/diagmsg:Msg" %t164, ptr %l129
  br label %bb33
bb32:
  br label %bb35
bb33:
  %t165 = load ptr, ptr %l127, !tbaa !29
  %t166 = load %"compiler/source:Span", ptr %l128
  %t167 = load %"compiler/diagmsg:Msg", ptr %l129
  %t168 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t165, %"compiler/source:Span" %t166, %"compiler/diagmsg:Msg" %t167)
  store i64 %t168, ptr %l130
  br label %bb34
bb34:
  br label %bb35
bb35:
  %t169 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t169, ptr %l131
  br label %bb36
bb36:
  %t170 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l131
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t170, ptr %l18
  %t171 = load i64, ptr %l17, !tbaa !24
  store i64 %t171, ptr %l19, !tbaa !24
  %t173 = load ptr, ptr %l3, !tbaa !29
  %t175 = getelementptr %"compiler/check:frame", ptr %t173, i32 0, i32 40
  %t177 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t175)
  store i64 %t177, ptr %l135
  br label %bb37
bb37:
  %t178 = load i64, ptr %l135, !tbaa !24
  store i64 %t178, ptr %l20, !tbaa !24
  store i64 1, ptr %l21, !tbaa !24
  %t179 = load i64, ptr %l20, !tbaa !24
  %t180 = load i64, ptr %l19, !tbaa !24
  %t183 = icmp sgt i64 %t179, %t180
  br i1 %t183, label %bb38, label %bb39
bb38:
  %t185 = load i64, ptr %l21, !tbaa !24
  %t187 = icmp sgt i64 %t185, 0
  br i1 %t187, label %bb40, label %bb41
bb39:
  store i64 0, ptr %l139, !tbaa !24
  br label %bb43
bb40:
  %t189 = load i64, ptr %l20, !tbaa !24
  %t190 = load i64, ptr %l19, !tbaa !24
  %t193 = sub i64 %t189, %t190
  %t194 = load i64, ptr %l21, !tbaa !24
  %t197 = add i64 %t193, %t194
  %t199 = sub i64 %t197, 1
  %t200 = load i64, ptr %l21, !tbaa !24
  %t203 = sdiv i64 %t199, %t200
  store i64 %t203, ptr %l142, !tbaa !24
  br label %bb42
bb41:
  store i64 0, ptr %l142, !tbaa !24
  br label %bb42
bb42:
  %t205 = load i64, ptr %l142, !tbaa !24
  store i64 %t205, ptr %l139, !tbaa !24
  br label %bb43
bb43:
  %t206 = load i64, ptr %l139, !tbaa !24
  store i64 %t206, ptr %l22, !tbaa !24
  store i64 0, ptr %l23, !tbaa !24
  br label %bb44
bb44:
  %t207 = load i64, ptr %l23, !tbaa !24
  %t208 = load i64, ptr %l22, !tbaa !24
  %t211 = icmp slt i64 %t207, %t208
  %t213 = xor i1 %t211, true
  br i1 %t213, label %bb45, label %bb46
bb45:
  br label %bb65
bb46:
  br label %bb47
bb47:
  %t215 = load i64, ptr %l19, !tbaa !24
  %t216 = load i64, ptr %l23, !tbaa !24
  %t217 = load i64, ptr %l21, !tbaa !24
  %t220 = mul i64 %t216, %t217
  %t223 = add i64 %t215, %t220
  %t225 = load ptr, ptr %l3, !tbaa !29
  %t227 = getelementptr %"compiler/check:frame", ptr %t225, i32 0, i32 40
  %t231 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t227, i64 %t223)
  store i32 %t231, ptr %l163
  br label %bb48
bb48:
  %t232 = load i32, ptr %l163, !tbaa !23
  store i32 %t232, ptr %l25, !tbaa !23
  store i1 false, ptr %l26, !tbaa !21
  store ptr %l18, ptr %l27, !tbaa !29
  store i64 0, ptr %l28, !tbaa !24
  br label %bb49
bb49:
  %t234 = load i64, ptr %l28, !tbaa !24
  store i64 %t234, ptr %l165, !tbaa !24
  %t235 = load ptr, ptr %l27, !tbaa !29
  %t237 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %t235)
  store i64 %t237, ptr %l167
  br label %bb50
bb50:
  %t238 = load i64, ptr %l165, !tbaa !24
  %t239 = load i64, ptr %l167, !tbaa !24
  %t240 = icmp slt i64 %t238, %t239
  %t242 = xor i1 %t240, true
  br i1 %t242, label %bb51, label %bb52
bb51:
  br label %bb59
bb52:
  br label %bb53
bb53:
  %t244 = load ptr, ptr %l27, !tbaa !29
  %t245 = load i64, ptr %l28, !tbaa !24
  %t248 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %t244, i64 %t245)
  store i32 %t248, ptr %l172
  br label %bb54
bb54:
  %t249 = load i32, ptr %l172, !tbaa !23
  %t251 = load i32, ptr %l25, !tbaa !23
  %t254 = icmp eq i32 %t249, %t251
  br i1 %t254, label %bb55, label %bb56
bb55:
  store i1 true, ptr %l26, !tbaa !21
  br label %bb57
bb56:
  br label %bb57
bb57:
  br label %bb58
bb58:
  %t256 = load i64, ptr %l28, !tbaa !24
  %t258 = add i64 %t256, 1
  store i64 %t258, ptr %l28, !tbaa !24
  br label %bb49
bb59:
  %t260 = load i1, ptr %l26, !tbaa !21
  %t262 = xor i1 %t260, true
  br i1 %t262, label %bb60, label %bb61
bb60:
  %t264 = load i32, ptr %l25, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %l18, i32 %t264)
  br label %bb62
bb61:
  br label %bb63
bb62:
  br label %bb63
bb63:
  br label %bb64
bb64:
  %t267 = load i64, ptr %l23, !tbaa !24
  %t269 = add i64 %t267, 1
  store i64 %t269, ptr %l23, !tbaa !24
  br label %bb44
bb65:
  %t271 = load ptr, ptr %l3, !tbaa !29
  %t273 = getelementptr %"compiler/check:frame", ptr %t271, i32 0, i32 40
  %t274 = load i64, ptr %l17, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eTruncate_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t273, i64 %t274)
  br label %bb66
bb66:
  %t277 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aClause_26_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t277, ptr %l187
  br label %bb67
bb67:
  %t278 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l187
  %t279 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t278, ptr %t279
  store ptr %t279, ptr %l30, !tbaa !29
  %t281 = load ptr, ptr %l2, !tbaa !29
  %t283 = getelementptr %"compiler/ast:JoinS", ptr %t281, i32 0, i32 2
  %t284 = load { i64, ptr }, ptr %t283, !tbaa !27
  %t286 = extractvalue { i64, ptr } %t284, 0
  %t288 = icmp sgt i64 %t286, 0
  br i1 %t288, label %bb68, label %bb69
bb68:
  %t290 = load ptr, ptr %l2, !tbaa !29
  %t292 = getelementptr %"compiler/ast:JoinS", ptr %t290, i32 0, i32 0
  %t293 = load i1, ptr %t292, !tbaa !21
  %t295 = xor i1 %t293, true
  store i1 %t295, ptr %l193, !tbaa !21
  br label %bb70
bb69:
  store i1 false, ptr %l193, !tbaa !21
  br label %bb70
bb70:
  %t297 = load i1, ptr %l193, !tbaa !21
  br i1 %t297, label %bb71, label %bb72
bb71:
  %t299 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %l18)
  store i64 %t299, ptr %l198
  br label %bb73
bb72:
  br label %bb80
bb73:
  %t300 = load i64, ptr %l198, !tbaa !24
  %t301 = icmp eq i64 %t300, 0
  br i1 %t301, label %bb74, label %bb75
bb74:
  %t303 = load ptr, ptr %l0, !tbaa !29
  store ptr %t303, ptr %l200, !tbaa !29
  %t304 = load ptr, ptr %l0, !tbaa !29
  %t305 = load ptr, ptr %l2, !tbaa !29
  %t307 = getelementptr %"compiler/ast:JoinS", ptr %t305, i32 0, i32 2
  %t308 = load { i64, ptr }, ptr %t307, !tbaa !27
  store { i64, ptr } %t308, ptr %l203, !tbaa !27
  %t309 = getelementptr { i64, ptr }, ptr %l203, i32 0, i32 1
  %t310 = load ptr, ptr %t309, !tbaa !27
  %t311 = getelementptr ptr, ptr %t310, i64 0
  %t312 = load ptr, ptr %t311, !tbaa !39
  %t315 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecatchSpan(ptr %v0, ptr %v1, ptr %t304, ptr %t312)
  store %"compiler/source:Span" %t315, ptr %l205
  br label %bb76
bb75:
  br label %bb79
bb76:
  %t316 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eJoinCatchNeedsTry(ptr %v0)
  store %"compiler/diagmsg:Msg" %t316, ptr %l206
  br label %bb77
bb77:
  %t317 = load ptr, ptr %l200, !tbaa !29
  %t318 = load %"compiler/source:Span", ptr %l205
  %t319 = load %"compiler/diagmsg:Msg", ptr %l206
  %t320 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t317, %"compiler/source:Span" %t318, %"compiler/diagmsg:Msg" %t319)
  store i64 %t320, ptr %l207
  br label %bb78
bb78:
  br label %bb79
bb79:
  br label %bb80
bb80:
  %t321 = load ptr, ptr %l2, !tbaa !29
  %t323 = getelementptr %"compiler/ast:JoinS", ptr %t321, i32 0, i32 0
  %t324 = load i1, ptr %t323, !tbaa !21
  br i1 %t324, label %bb81, label %bb82
bb81:
  store %olang.scope zeroinitializer, ptr %s18
  %t327 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %l18)
  store i64 %t327, ptr %l211
  br label %bb83
bb82:
  %t329 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %l18)
  store i64 %t329, ptr %l360
  br label %bb155
bb83:
  %t330 = load i64, ptr %l211, !tbaa !24
  %t331 = icmp eq i64 %t330, 0
  br i1 %t331, label %bb84, label %bb85
bb84:
  %t333 = load ptr, ptr %l3, !tbaa !29
  %t335 = getelementptr %"compiler/check:frame", ptr %t333, i32 0, i32 41
  %t336 = load i64, ptr %t335, !tbaa !24
  %t337 = load i64, ptr %l5, !tbaa !24
  %t340 = icmp eq i64 %t336, %t337
  store i1 %t340, ptr %l213, !tbaa !21
  br label %bb86
bb85:
  store i1 false, ptr %l213, !tbaa !21
  br label %bb86
bb86:
  %t342 = load i1, ptr %l213, !tbaa !21
  br i1 %t342, label %bb87, label %bb88
bb87:
  %t343 = load ptr, ptr %l0, !tbaa !29
  store ptr %t343, ptr %l218, !tbaa !29
  %t344 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t344, ptr %l219
  %t345 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eJoinCannotFail(ptr %v0)
  store %"compiler/diagmsg:Msg" %t345, ptr %l220
  br label %bb89
bb88:
  br label %bb91
bb89:
  %t346 = load ptr, ptr %l218, !tbaa !29
  %t347 = load %"compiler/source:Span", ptr %l219
  %t348 = load %"compiler/diagmsg:Msg", ptr %l220
  %t349 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t346, %"compiler/source:Span" %t347, %"compiler/diagmsg:Msg" %t348)
  store i64 %t349, ptr %l221
  br label %bb90
bb90:
  br label %bb91
bb91:
  %t350 = load ptr, ptr %l3, !tbaa !29
  %t352 = getelementptr %"compiler/check:frame", ptr %t350, i32 0, i32 28
  %t354 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t352)
  store i64 %t354, ptr %l224
  br label %bb92
bb92:
  %t355 = load i64, ptr %l224, !tbaa !24
  store i64 %t355, ptr %l31, !tbaa !24
  store ptr %l18, ptr %l32, !tbaa !29
  store i64 0, ptr %l33, !tbaa !24
  br label %bb93
bb93:
  %t357 = load i64, ptr %l33, !tbaa !24
  store i64 %t357, ptr %l226, !tbaa !24
  %t358 = load ptr, ptr %l32, !tbaa !29
  %t360 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %t358)
  store i64 %t360, ptr %l228
  br label %bb94
bb94:
  %t361 = load i64, ptr %l226, !tbaa !24
  %t362 = load i64, ptr %l228, !tbaa !24
  %t363 = icmp slt i64 %t361, %t362
  %t365 = xor i1 %t363, true
  br i1 %t365, label %bb95, label %bb96
bb95:
  br label %bb101
bb96:
  br label %bb97
bb97:
  %t367 = load ptr, ptr %l32, !tbaa !29
  %t368 = load i64, ptr %l33, !tbaa !24
  %t371 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %t367, i64 %t368)
  store i32 %t371, ptr %l233
  br label %bb98
bb98:
  %t372 = load i32, ptr %l233, !tbaa !23
  %t373 = load ptr, ptr %l3, !tbaa !29
  %t375 = getelementptr %"compiler/check:frame", ptr %t373, i32 0, i32 28
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t375, i32 %t372)
  br label %bb99
bb99:
  br label %bb100
bb100:
  %t379 = load i64, ptr %l33, !tbaa !24
  %t381 = add i64 %t379, 1
  store i64 %t381, ptr %l33, !tbaa !24
  br label %bb93
bb101:
  %t383 = load ptr, ptr %l3, !tbaa !29
  %t385 = getelementptr %"compiler/check:frame", ptr %t383, i32 0, i32 28
  %t387 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t385)
  store i64 %t387, ptr %l241
  br label %bb102
bb102:
  %t388 = load i64, ptr %l241, !tbaa !24
  store i64 %t388, ptr %l35, !tbaa !24
  %t389 = load ptr, ptr %l0, !tbaa !29
  %t390 = load ptr, ptr %l2, !tbaa !29
  %t392 = getelementptr %"compiler/ast:JoinS", ptr %t390, i32 0, i32 2
  %t393 = load { i64, ptr }, ptr %t392, !tbaa !27
  %t394 = load i64, ptr %l31, !tbaa !24
  %t395 = load i64, ptr %l35, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eproduced(ptr %v0, ptr %v1, ptr %t389, { i64, ptr } %t393, i64 %t394, i64 %t395)
  br label %bb103
bb103:
  %t400 = load ptr, ptr %l2, !tbaa !29
  %t402 = getelementptr %"compiler/ast:JoinS", ptr %t400, i32 0, i32 2
  %t403 = load { i64, ptr }, ptr %t402, !tbaa !27
  %t405 = extractvalue { i64, ptr } %t403, 0
  %t407 = icmp sgt i64 %t405, 0
  br i1 %t407, label %bb104, label %bb105
bb104:
  store %olang.scope zeroinitializer, ptr %s23
  %t409 = load ptr, ptr %l0, !tbaa !29
  %t410 = load i64, ptr %l31, !tbaa !24
  %t411 = load i64, ptr %l35, !tbaa !24
  %t415 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eleaksBetween(ptr %v0, ptr %s23, ptr %t409, i64 %t410, i64 %t411)
  store { i64, ptr } %t415, ptr %l254
  br label %bb106
bb105:
  br label %bb146
bb106:
  %t416 = load { i64, ptr }, ptr %l254, !tbaa !27
  store { i64, ptr } %t416, ptr %l36, !tbaa !27
  %t417 = load ptr, ptr %l2, !tbaa !29
  %t419 = getelementptr %"compiler/ast:JoinS", ptr %t417, i32 0, i32 2
  %t420 = load { i64, ptr }, ptr %t419, !tbaa !27
  store { i64, ptr } %t420, ptr %l37, !tbaa !27
  store i64 0, ptr %l38, !tbaa !24
  %t422 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t424 = extractvalue { i64, ptr } %t422, 0
  store i64 %t424, ptr %l39, !tbaa !24
  br label %bb107
bb107:
  %t426 = load i64, ptr %l38, !tbaa !24
  %t427 = load i64, ptr %l39, !tbaa !24
  %t430 = icmp slt i64 %t426, %t427
  %t432 = xor i1 %t430, true
  br i1 %t432, label %bb108, label %bb109
bb108:
  br label %bb114
bb109:
  br label %bb110
bb110:
  %t434 = load { i64, ptr }, ptr %l37, !tbaa !27
  store { i64, ptr } %t434, ptr %l263, !tbaa !27
  %t435 = load i64, ptr %l38, !tbaa !24
  %t437 = getelementptr { i64, ptr }, ptr %l263, i32 0, i32 1
  %t438 = load ptr, ptr %t437, !tbaa !27
  %t439 = getelementptr ptr, ptr %t438, i64 %t435
  %t440 = load ptr, ptr %t439, !tbaa !39
  %t442 = load ptr, ptr %l30, !tbaa !29
  store ptr %t442, ptr %l266, !tbaa !29
  %t443 = load ptr, ptr %l0, !tbaa !29
  %t445 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t446 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t447 = load ptr, ptr %l30, !tbaa !29
  %t453 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclause(ptr %v0, ptr %v1, ptr %s23, ptr %v0, ptr %v0, ptr %t443, ptr %t440, i32 %t445, i1 false, { i64, ptr } %t446, ptr %t447)
  store ptr %t453, ptr %l272
  br label %bb111
bb111:
  %t454 = load ptr, ptr %l266, !tbaa !29
  %t455 = load ptr, ptr %l272, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aClause_26_3e_2ePush_Hc64f4d0e64077a33423ff9c4e583894f(ptr %v0, ptr %v0, ptr %t454, ptr %t455)
  br label %bb112
bb112:
  br label %bb113
bb113:
  %t456 = load i64, ptr %l38, !tbaa !24
  %t458 = add i64 %t456, 1
  store i64 %t458, ptr %l38, !tbaa !24
  br label %bb107
bb114:
  %t460 = load ptr, ptr %l3, !tbaa !29
  %t462 = getelementptr %"compiler/check:frame", ptr %t460, i32 0, i32 33
  %t463 = load i64, ptr %t462, !tbaa !24
  %t464 = load i64, ptr %l4, !tbaa !24
  %t467 = icmp sgt i64 %t463, %t464
  br i1 %t467, label %bb115, label %bb116
bb115:
  store i64 0, ptr %l41, !tbaa !24
  %t469 = load ptr, ptr %l30, !tbaa !29
  %t471 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aClause_26_3e_2eLen__H4e51b5ca7b68af485b8486164a690a5f(ptr %v0, ptr %t469)
  store i64 %t471, ptr %l280
  br label %bb117
bb116:
  br label %bb145
bb117:
  %t472 = load i64, ptr %l280, !tbaa !24
  store i64 %t472, ptr %l42, !tbaa !24
  store i64 1, ptr %l43, !tbaa !24
  %t473 = load i64, ptr %l42, !tbaa !24
  %t474 = load i64, ptr %l41, !tbaa !24
  %t477 = icmp sgt i64 %t473, %t474
  br i1 %t477, label %bb118, label %bb119
bb118:
  %t479 = load i64, ptr %l43, !tbaa !24
  %t481 = icmp sgt i64 %t479, 0
  br i1 %t481, label %bb120, label %bb121
bb119:
  store i64 0, ptr %l284, !tbaa !24
  br label %bb123
bb120:
  %t483 = load i64, ptr %l42, !tbaa !24
  %t484 = load i64, ptr %l41, !tbaa !24
  %t487 = sub i64 %t483, %t484
  %t488 = load i64, ptr %l43, !tbaa !24
  %t491 = add i64 %t487, %t488
  %t493 = sub i64 %t491, 1
  %t494 = load i64, ptr %l43, !tbaa !24
  %t497 = sdiv i64 %t493, %t494
  store i64 %t497, ptr %l287, !tbaa !24
  br label %bb122
bb121:
  store i64 0, ptr %l287, !tbaa !24
  br label %bb122
bb122:
  %t499 = load i64, ptr %l287, !tbaa !24
  store i64 %t499, ptr %l284, !tbaa !24
  br label %bb123
bb123:
  %t500 = load i64, ptr %l284, !tbaa !24
  store i64 %t500, ptr %l44, !tbaa !24
  store i64 0, ptr %l45, !tbaa !24
  br label %bb124
bb124:
  %t501 = load i64, ptr %l45, !tbaa !24
  %t502 = load i64, ptr %l44, !tbaa !24
  %t505 = icmp slt i64 %t501, %t502
  %t507 = xor i1 %t505, true
  br i1 %t507, label %bb125, label %bb126
bb125:
  br label %bb144
bb126:
  br label %bb127
bb127:
  %t509 = load i64, ptr %l41, !tbaa !24
  %t510 = load i64, ptr %l45, !tbaa !24
  %t511 = load i64, ptr %l43, !tbaa !24
  %t514 = mul i64 %t510, %t511
  %t517 = add i64 %t509, %t514
  store i64 %t517, ptr %l46, !tbaa !24
  %t519 = load ptr, ptr %l30, !tbaa !29
  %t521 = load i64, ptr %l46, !tbaa !24
  %t524 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aClause_26_3e_2eAt_3ccompiler_2ftyped_3aClause_26_3e(ptr %v0, ptr %v0, ptr %t519, i64 %t521)
  store ptr %t524, ptr %l308
  br label %bb128
bb128:
  %t525 = load ptr, ptr %l308, !tbaa !29
  %t527 = getelementptr %"compiler/typed:Clause", ptr %t525, i32 0, i32 3
  %t528 = load ptr, ptr %t527, !tbaa !29
  %t530 = icmp eq ptr %t528, null
  %t532 = xor i1 %t530, true
  br i1 %t532, label %bb129, label %bb130
bb129:
  %t534 = load ptr, ptr %l30, !tbaa !29
  %t536 = load i64, ptr %l46, !tbaa !24
  %t539 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aClause_26_3e_2eAt_3ccompiler_2ftyped_3aClause_26_3e(ptr %v0, ptr %v0, ptr %t534, i64 %t536)
  store ptr %t539, ptr %l317
  br label %bb131
bb130:
  store i1 false, ptr %l313, !tbaa !21
  br label %bb136
bb131:
  %t540 = load ptr, ptr %l317, !tbaa !29
  %t542 = getelementptr %"compiler/typed:Clause", ptr %t540, i32 0, i32 3
  %t543 = load ptr, ptr %t542, !tbaa !29
  store ptr %t543, ptr %l47, !tbaa !29
  %t545 = load ptr, ptr %l47, !tbaa !29
  %t547 = icmp eq ptr %t545, null
  br i1 %t547, label %bb132, label %bb133
bb132:
  call void @__olang_check_failed(ptr @olang_loc_951d796b2ec85af2_4e6ca0fa0a1175d6)
  unreachable
bb133:
  br label %bb134
bb134:
  %t549 = load ptr, ptr %l47, !tbaa !29
  %t551 = call i1 @compiler_2fcheck_2eleavesValue(ptr %v0, ptr %t549)
  store i1 %t551, ptr %l323
  br label %bb135
bb135:
  %t552 = load i1, ptr %l323, !tbaa !21
  store i1 %t552, ptr %l313, !tbaa !21
  br label %bb136
bb136:
  %t553 = load i1, ptr %l313, !tbaa !21
  br i1 %t553, label %bb137, label %bb138
bb137:
  br label %bb143
bb138:
  br label %bb139
bb139:
  %t554 = load ptr, ptr %l0, !tbaa !29
  store ptr %t554, ptr %l324, !tbaa !29
  %t555 = load ptr, ptr %l0, !tbaa !29
  %t556 = load ptr, ptr %l2, !tbaa !29
  %t558 = getelementptr %"compiler/ast:JoinS", ptr %t556, i32 0, i32 2
  %t559 = load { i64, ptr }, ptr %t558, !tbaa !27
  store { i64, ptr } %t559, ptr %l327, !tbaa !27
  %t560 = load i64, ptr %l46, !tbaa !24
  %t562 = getelementptr { i64, ptr }, ptr %l327, i32 0, i32 1
  %t563 = load ptr, ptr %t562, !tbaa !27
  %t564 = getelementptr ptr, ptr %t563, i64 %t560
  %t565 = load ptr, ptr %t564, !tbaa !39
  %t568 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecatchSpan(ptr %v0, ptr %v1, ptr %t555, ptr %t565)
  store %"compiler/source:Span" %t568, ptr %l330
  br label %bb140
bb140:
  %t569 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eJoinClauseMustLeave(ptr %v0)
  store %"compiler/diagmsg:Msg" %t569, ptr %l331
  br label %bb141
bb141:
  %t570 = load ptr, ptr %l324, !tbaa !29
  %t571 = load %"compiler/source:Span", ptr %l330
  %t572 = load %"compiler/diagmsg:Msg", ptr %l331
  %t573 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t570, %"compiler/source:Span" %t571, %"compiler/diagmsg:Msg" %t572)
  store i64 %t573, ptr %l332
  br label %bb142
bb142:
  br label %bb144
bb143:
  %t574 = load i64, ptr %l45, !tbaa !24
  %t576 = add i64 %t574, 1
  store i64 %t576, ptr %l45, !tbaa !24
  br label %bb124
bb144:
  br label %bb145
bb145:
  call void @__olang_scope_close(ptr %s23)
  br label %bb146
bb146:
  %t578 = load ptr, ptr %l0, !tbaa !29
  %t579 = load i64, ptr %l31, !tbaa !24
  %t580 = load i64, ptr %l35, !tbaa !24
  %t581 = load ptr, ptr %l30, !tbaa !29
  %t586 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaught(ptr %v0, ptr %v0, ptr %t578, i64 %t579, i64 %t580, ptr %t581)
  store i64 %t586, ptr %l339
  br label %bb147
bb147:
  %t587 = load i64, ptr %l339, !tbaa !24
  store i64 %t587, ptr %l48, !tbaa !24
  %t588 = load ptr, ptr %l0, !tbaa !29
  %t589 = load %"compiler/source:Span", ptr %l1
  %t592 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t588, %"compiler/source:Span" %t589)
  store { i64, ptr } %t592, ptr %l343
  br label %bb148
bb148:
  %t593 = load { i64, ptr }, ptr %l343, !tbaa !27
  %t594 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %s18, { i64, ptr } %t593, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d12, i32 0, i32 1) })
  %t595 = extractvalue { i32, i64 } %t594, 1
  %t596 = extractvalue { i32, i64 } %t594, 0
  store i32 %t596, ptr %l345
  %t597 = icmp ne i32 %t596, 0
  br i1 %t597, label %bb150, label %ok.598, !prof !99
ok.598:
  store i64 %t595, ptr %l344
  br label %bb149
bb149:
  %t599 = load i64, ptr %l344, !tbaa !24
  store i64 %t599, ptr %l340, !tbaa !24
  br label %bb152
bb150:
  br label %bb151
bb151:
  store i64 0, ptr %l340, !tbaa !24
  br label %bb152
bb152:
  %t600 = load i64, ptr %l340, !tbaa !24
  store i64 %t600, ptr %l49, !tbaa !24
  %t601 = load ptr, ptr %l0, !tbaa !29
  store ptr %t601, ptr %l346, !tbaa !29
  %t602 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t603 = load i32, ptr %t602, !tbaa !23
  %t604 = load i64, ptr %l49, !tbaa !24
  %t606 = trunc i64 %t604 to i32
  %t609 = add i32 %t603, %t606
  %t610 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t611 = load i32, ptr %t610, !tbaa !23
  %t612 = load i64, ptr %l49, !tbaa !24
  %t614 = trunc i64 %t612 to i32
  %t617 = add i32 %t611, %t614
  %t619 = add i32 %t617, 4
  %t622 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s18, i32 %t609, i32 %t619)
  store %"compiler/source:Span" %t622, ptr %l356
  br label %bb153
bb153:
  %t623 = load i64, ptr %l31, !tbaa !24
  %t624 = load i64, ptr %l48, !tbaa !24
  %t625 = load ptr, ptr %l346, !tbaa !29
  %t626 = load %"compiler/source:Span", ptr %l356
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eescapes(ptr %v0, ptr %t625, %"compiler/source:Span" %t626, i64 %t623, i64 %t624)
  br label %bb154
bb154:
  call void @__olang_scope_close(ptr %s18)
  br label %bb163
bb155:
  %t629 = load i64, ptr %l360, !tbaa !24
  %t630 = icmp sgt i64 %t629, 0
  br i1 %t630, label %bb156, label %bb157
bb156:
  %t632 = load ptr, ptr %l0, !tbaa !29
  store ptr %t632, ptr %l362, !tbaa !29
  %t633 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t633, ptr %l363
  %t634 = load ptr, ptr %l0, !tbaa !29
  store ptr %t634, ptr %l364, !tbaa !29
  %t636 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %l18, i64 0)
  store i32 %t636, ptr %l366
  br label %bb158
bb157:
  br label %bb162
bb158:
  %t637 = load ptr, ptr %l364, !tbaa !29
  %t638 = load i32, ptr %l366, !tbaa !23
  %t639 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t637, i32 %t638)
  store { i64, ptr } %t639, ptr %l367
  br label %bb159
bb159:
  %t640 = load { i64, ptr }, ptr %l367, !tbaa !27
  %t641 = extractvalue { i64, ptr } %t640, 0
  %t642 = extractvalue { i64, ptr } %t640, 1
  %t643 = mul i64 %t641, 1
  %t644 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t643)
  call void @llvm.memcpy.p0.p0.i64(ptr %t644, ptr %t642, i64 %t643, i1 false)
  %t645 = insertvalue { i64, ptr } undef, i64 %t641, 0
  %t646 = insertvalue { i64, ptr } %t645, ptr %t644, 1
  %t648 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eJoinNotTried(ptr %v0, ptr %v0, { i64, ptr } %t646)
  store %"compiler/diagmsg:Msg" %t648, ptr %l369
  br label %bb160
bb160:
  %t649 = load ptr, ptr %l362, !tbaa !29
  %t650 = load %"compiler/source:Span", ptr %l363
  %t651 = load %"compiler/diagmsg:Msg", ptr %l369
  %t652 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t649, %"compiler/source:Span" %t650, %"compiler/diagmsg:Msg" %t651)
  store i64 %t652, ptr %l370
  br label %bb161
bb161:
  br label %bb162
bb162:
  br label %bb163
bb163:
  %t653 = load ptr, ptr %l3, !tbaa !29
  %t654 = load i64, ptr %l4, !tbaa !24
  %t657 = getelementptr %"compiler/check:frame", ptr %t653, i32 0, i32 33
  store i64 %t654, ptr %t657, !tbaa !24
  %t658 = load ptr, ptr %l0, !tbaa !29
  store ptr %t658, ptr %l373, !tbaa !29
  %t659 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t659, ptr %l374
  %t660 = load ptr, ptr %l15, !tbaa !29
  store ptr %t660, ptr %l375, !tbaa !29
  %t661 = load ptr, ptr %l2, !tbaa !29
  %t663 = getelementptr %"compiler/ast:JoinS", ptr %t661, i32 0, i32 0
  %t664 = load i1, ptr %t663, !tbaa !21
  store i1 %t664, ptr %l377, !tbaa !21
  %t665 = load ptr, ptr %l30, !tbaa !29
  %t667 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aClause_26_3e_2eToAr_H1af1cf80015c73411d038ac8256aec52(ptr %v0, ptr %v0, ptr %t665)
  store { i64, ptr } %t667, ptr %l379
  br label %bb164
bb164:
  %t668 = load ptr, ptr %l375, !tbaa !29
  %t669 = load i1, ptr %l377, !tbaa !21
  %t670 = load { i64, ptr }, ptr %l379, !tbaa !27
  %t671 = call %"compiler/typed:Join" @compiler_2ftyped_3aJoin_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %t668, i1 %t669, { i64, ptr } %t670)
  store %"compiler/typed:Join" %t671, ptr %l380
  br label %bb165
bb165:
  %t672 = load %"compiler/typed:Join", ptr %l380
  %t673 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store %"compiler/typed:Join" %t672, ptr %t673
  store { i64, [3 x i64] } zeroinitializer, ptr %t674
  %t675 = getelementptr { i64, [3 x i64] }, ptr %t674, i32 0, i32 0
  store i64 13, ptr %t675
  %t676 = load %"compiler/source:Span", ptr %l374
  %t677 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t676, 0
  %t679 = insertvalue { %"compiler/source:Span", ptr } %t677, ptr %t673, 1
  %t680 = getelementptr { i64, [3 x i64] }, ptr %t674, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t679, ptr %t680
  %t681 = load { i64, [3 x i64] }, ptr %t674
  %t683 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t681, ptr %t683
  %t684 = load ptr, ptr %l373, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t684, ptr %t683)
  br label %bb166
bb166:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneDecl(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l8 = alloca %"compiler/check:laneNode"
  %l17 = alloca { i64, ptr }
  %l23 = alloca %"compiler/check:laneNode"
  %l40 = alloca i1
  %l48 = alloca i1
  %l51 = alloca ptr
  %l54 = alloca i32
  %l56 = alloca i1
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t1, ptr %l3, !tbaa !23
  store { i64, ptr } %a1, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t5 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t5, 0
  store i64 %t7, ptr %l6, !tbaa !24
  br label %bb1
bb1:
  %t9 = load i64, ptr %l5, !tbaa !24
  %t10 = load i64, ptr %l6, !tbaa !24
  %t13 = icmp slt i64 %t9, %t10
  %t15 = xor i1 %t13, true
  br i1 %t15, label %bb2, label %bb3
bb2:
  br label %bb20
bb3:
  br label %bb4
bb4:
  %t17 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t17, ptr %l17, !tbaa !27
  %t18 = load i64, ptr %l5, !tbaa !24
  %t20 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !27
  %t22 = getelementptr i64, ptr %t21, i64 %t18
  %t23 = load i64, ptr %t22, !tbaa !34
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/check:Checker", ptr %t25, i32 0, i32 39
  %t31 = call %"compiler/check:laneNode" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alaneNode_3e_2eAt_3ccompiler_2fcheck_3alaneNode_3e(ptr %v0, ptr %v0, ptr %t27, i64 %t23)
  store %"compiler/check:laneNode" %t31, ptr %l23
  br label %bb5
bb5:
  %t32 = load %"compiler/check:laneNode", ptr %l23
  store %"compiler/check:laneNode" %t32, ptr %l8
  %t33 = getelementptr %"compiler/check:laneNode", ptr %l8, i32 0, i32 0
  %t34 = load i64, ptr %t33, !tbaa !24
  %t35 = load i64, ptr @G_2ecompiler_2fcheck_2eLaneScalar, !tbaa !24
  %t38 = icmp eq i64 %t34, %t35
  br i1 %t38, label %bb6, label %bb7
bb6:
  br label %bb19
bb7:
  br label %bb8
bb8:
  %t40 = getelementptr %"compiler/check:laneNode", ptr %l8, i32 0, i32 10
  %t41 = load i32, ptr %t40, !tbaa !23
  %t42 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t45 = icmp eq i32 %t41, %t42
  br i1 %t45, label %bb9, label %bb10
bb9:
  %t47 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t47, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t49 = load i32, ptr %l3, !tbaa !23
  %t50 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t53 = icmp eq i32 %t49, %t50
  br i1 %t53, label %bb12, label %bb13
bb12:
  %t55 = getelementptr %"compiler/check:laneNode", ptr %l8, i32 0, i32 10
  %t56 = load i32, ptr %t55, !tbaa !23
  store i32 %t56, ptr %l3, !tbaa !23
  br label %bb18
bb13:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/check:Checker", ptr %t58, i32 0, i32 1
  %t61 = load ptr, ptr %t60, !tbaa !29
  %t63 = getelementptr %"compiler/generic:Program", ptr %t61, i32 0, i32 2
  %t64 = load i32, ptr %l3, !tbaa !23
  %t65 = getelementptr %"compiler/check:laneNode", ptr %l8, i32 0, i32 10
  %t66 = load i32, ptr %t65, !tbaa !23
  %t70 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t63, i32 %t64, i32 %t66)
  store i1 %t70, ptr %l40
  br label %bb14
bb14:
  %t71 = load i1, ptr %l40, !tbaa !21
  %t72 = xor i1 %t71, true
  br i1 %t72, label %bb15, label %bb16
bb15:
  %t74 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t74, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  br label %bb18
bb18:
  br label %bb19
bb19:
  %t76 = load i64, ptr %l5, !tbaa !24
  %t78 = add i64 %t76, 1
  store i64 %t78, ptr %l5, !tbaa !24
  br label %bb1
bb20:
  %t80 = load i32, ptr %l3, !tbaa !23
  %t81 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t84 = icmp eq i32 %t80, %t81
  br i1 %t84, label %bb21, label %bb22
bb21:
  store i1 true, ptr %l48, !tbaa !21
  br label %bb25
bb22:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = getelementptr %"compiler/check:Checker", ptr %t86, i32 0, i32 1
  %t89 = load ptr, ptr %t88, !tbaa !29
  %t91 = getelementptr %"compiler/generic:Program", ptr %t89, i32 0, i32 2
  store ptr %t91, ptr %l51, !tbaa !29
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t93 = load i32, ptr %l3, !tbaa !23
  %t96 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneElemOf(ptr %v0, ptr %t92, i32 %t93)
  store i32 %t96, ptr %l54
  br label %bb23
bb23:
  %t98 = load ptr, ptr %l51, !tbaa !29
  %t99 = load i32, ptr %l54, !tbaa !23
  %t101 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t98, i32 %t99, i32 %a2)
  store i1 %t101, ptr %l56
  br label %bb24
bb24:
  %t102 = load i1, ptr %l56, !tbaa !21
  %t103 = xor i1 %t102, true
  store i1 %t103, ptr %l48, !tbaa !21
  br label %bb25
bb25:
  %t105 = load i1, ptr %l48, !tbaa !21
  br i1 %t105, label %bb26, label %bb27
bb26:
  %t106 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t106, ptr %rv
  br label %ret
bb27:
  br label %bb28
bb28:
  %t108 = load i32, ptr %l3, !tbaa !23
  store i32 %t108, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elistMentions(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l14 = alloca { i64, ptr }
  %l21 = alloca { i64, ptr }
  %l27 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l1, !tbaa !23
  %t3 = icmp eq i32 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 false, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/check:Checker", ptr %t6, i32 0, i32 1
  %t9 = load ptr, ptr %t8, !tbaa !29
  %t11 = getelementptr %"compiler/generic:Program", ptr %t9, i32 0, i32 2
  %t12 = load i32, ptr %l1, !tbaa !23
  %t15 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t11, i32 %t12)
  store { i64, ptr } %t15, ptr %l14
  br label %bb4
bb4:
  %t16 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t16, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t17 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t19 = extractvalue { i64, ptr } %t17, 0
  store i64 %t19, ptr %l5, !tbaa !24
  br label %bb5
bb5:
  %t21 = load i64, ptr %l4, !tbaa !24
  %t22 = load i64, ptr %l5, !tbaa !24
  %t25 = icmp slt i64 %t21, %t22
  %t27 = xor i1 %t25, true
  br i1 %t27, label %bb6, label %bb7
bb6:
  br label %bb14
bb7:
  br label %bb8
bb8:
  %t29 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t29, ptr %l21, !tbaa !27
  %t30 = load i64, ptr %l4, !tbaa !24
  %t32 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t33 = load ptr, ptr %t32, !tbaa !27
  %t34 = getelementptr i32, ptr %t33, i64 %t30
  %t35 = load i32, ptr %t34, !tbaa !33
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t43 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ementionsVar(ptr %v0, ptr %t37, i32 %t35, i64 %a2)
  store i1 %t43, ptr %l27
  br label %bb9
bb9:
  %t44 = load i1, ptr %l27, !tbaa !21
  br i1 %t44, label %bb10, label %bb11
bb10:
  store i1 true, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  br label %bb13
bb13:
  %t46 = load i64, ptr %l4, !tbaa !24
  %t48 = add i64 %t46, 1
  store i64 %t48, ptr %l4, !tbaa !24
  br label %bb5
bb14:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, %"compiler/check:litv" %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/check:litv"
  %l3 = alloca i32
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca i32
  %l6 = alloca i128
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l10 = alloca %"compiler/source:Span"
  %l13 = alloca i32
  %l18 = alloca i1
  %l20 = alloca i1
  %l22 = alloca ptr
  %l25 = alloca %"compiler/source:Span"
  %l27 = alloca %"compiler/source:Span"
  %l29 = alloca i1
  %l31 = alloca %"compiler/source:Span"
  %l34 = alloca %"compiler/source:Span"
  %l38 = alloca %"compiler/source:Span"
  %l40 = alloca %"compiler/source:Span"
  %l42 = alloca i1
  %l43 = alloca { i64, ptr }
  %l46 = alloca { i64, ptr }
  %l47 = alloca { i64, ptr }
  %l49 = alloca %"compiler/diagmsg:Msg"
  %l50 = alloca i64
  %l53 = alloca ptr
  %l58 = alloca i1
  %l61 = alloca i32
  %l65 = alloca i32
  %l67 = alloca i1
  %l70 = alloca i1
  %l71 = alloca i1
  %l74 = alloca i32
  %l78 = alloca i32
  %l80 = alloca i32
  %l85 = alloca i1
  %l88 = alloca i1
  %l91 = alloca i1
  %l94 = alloca %"compiler/source:Span"
  %l96 = alloca %"compiler/source:Span"
  %l98 = alloca i1
  %l100 = alloca ptr
  %l103 = alloca %"compiler/source:Span"
  %l104 = alloca %"compiler/diagmsg:Msg"
  %l105 = alloca i64
  %l106 = alloca ptr
  %l107 = alloca %"compiler/source:Span"
  %l110 = alloca { i64, ptr }
  %l111 = alloca { i64, ptr }
  %l113 = alloca %"compiler/diagmsg:Msg"
  %l114 = alloca i64
  %l117 = alloca ptr
  %l122 = alloca i1
  %l124 = alloca ptr
  %l125 = alloca %"compiler/source:Span"
  %l128 = alloca { i64, ptr }
  %l130 = alloca %"compiler/diagmsg:Msg"
  %l131 = alloca i64
  %l134 = alloca ptr
  %l137 = alloca i1
  %l138 = alloca ptr
  %l139 = alloca %"compiler/source:Span"
  %l142 = alloca { i64, ptr }
  %l143 = alloca { i64, ptr }
  %l144 = alloca { i64, ptr }
  %l147 = alloca { i64, ptr }
  %l149 = alloca %"compiler/diagmsg:Msg"
  %l150 = alloca i64
  %l153 = alloca ptr
  %l154 = alloca ptr
  %l155 = alloca %"compiler/source:Span"
  %l156 = alloca i32
  %l159 = alloca i64
  %l160 = alloca ptr
  %l165 = alloca i1
  %l166 = alloca i32
  %l168 = alloca double
  %l169 = alloca i1
  %l170 = alloca ptr
  %l171 = alloca %"compiler/source:Span"
  %l174 = alloca { i64, ptr }
  %l175 = alloca { i64, ptr }
  %l176 = alloca { i64, ptr }
  %l179 = alloca { i64, ptr }
  %l181 = alloca %"compiler/diagmsg:Msg"
  %l182 = alloca i64
  %l185 = alloca ptr
  %l186 = alloca ptr
  %l187 = alloca %"compiler/source:Span"
  %l188 = alloca i32
  %l191 = alloca i64
  %l192 = alloca ptr
  %l198 = alloca i1
  %l202 = alloca %"compiler/source:Span"
  %l204 = alloca %"compiler/source:Span"
  %l206 = alloca i1
  %l208 = alloca ptr
  %l211 = alloca %"compiler/source:Span"
  %l214 = alloca { i64, ptr }
  %l216 = alloca %"compiler/diagmsg:Msg"
  %l217 = alloca i64
  %l218 = alloca ptr
  %l219 = alloca %"compiler/source:Span"
  %l222 = alloca { i64, ptr }
  %l223 = alloca { i64, ptr }
  %l224 = alloca { i64, ptr }
  %l227 = alloca { i64, ptr }
  %l229 = alloca %"compiler/diagmsg:Msg"
  %l230 = alloca i64
  %l233 = alloca ptr
  %l236 = alloca i128
  %l240 = alloca ptr
  %l241 = alloca %"compiler/source:Span"
  %l242 = alloca ptr
  %l243 = alloca %"compiler/source:Span"
  %l245 = alloca i32
  %l249 = alloca ptr
  %l251 = alloca ptr
  %l252 = alloca ptr
  %l253 = alloca %"compiler/source:Span"
  %l254 = alloca ptr
  %l255 = alloca %"compiler/source:Span"
  %l259 = alloca i32
  %l262 = alloca ptr
  %l264 = alloca ptr
  %l265 = alloca ptr
  %l266 = alloca %"compiler/source:Span"
  %l267 = alloca i32
  %l268 = alloca i32
  %l269 = alloca ptr
  %l270 = alloca %"compiler/source:Span"
  %l271 = alloca i32
  %l272 = alloca i32
  %l273 = alloca ptr
  %l274 = alloca ptr
  %l275 = alloca %"compiler/source:Span"
  %l277 = alloca i32
  %l278 = alloca ptr
  %l280 = alloca ptr
  %l283 = alloca ptr
  %l285 = alloca i1
  %l290 = alloca i1
  %l292 = alloca ptr
  %l293 = alloca %"compiler/source:Span"
  %l294 = alloca i32
  %l295 = alloca i32
  %l296 = alloca ptr
  %l297 = alloca %"compiler/source:Span"
  %l301 = alloca i32
  %l303 = alloca ptr
  %l304 = alloca ptr
  %l309 = alloca ptr
  %s2 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store %"compiler/check:litv" %a2, ptr %l2
  store i32 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t1)
  store %"compiler/source:Span" %t3, ptr %l10
  br label %bb1
bb1:
  %t4 = load %"compiler/source:Span", ptr %l10
  store %"compiler/source:Span" %t4, ptr %l4
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t6 = load i32, ptr %l3, !tbaa !23
  %t9 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %t5, i32 %t6)
  store i32 %t9, ptr %l13
  br label %bb2
bb2:
  %t10 = load i32, ptr %l13, !tbaa !23
  store i32 %t10, ptr %l5, !tbaa !23
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/check:Checker", ptr %t11, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !29
  %t16 = getelementptr %"compiler/generic:Program", ptr %t14, i32 0, i32 2
  %t17 = load i32, ptr %l5, !tbaa !23
  %t20 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNumber(ptr %v0, ptr %t16, i32 %t17)
  store i1 %t20, ptr %l18
  br label %bb3
bb3:
  %t21 = load i1, ptr %l18, !tbaa !21
  %t22 = xor i1 %t21, true
  br i1 %t22, label %bb4, label %bb5
bb4:
  %t24 = getelementptr %"compiler/check:litv", ptr %l2, i32 0, i32 6
  %t25 = load i1, ptr %t24, !tbaa !21
  store i1 %t25, ptr %l20, !tbaa !21
  br label %bb6
bb5:
  store i1 false, ptr %l20, !tbaa !21
  br label %bb6
bb6:
  %t27 = load i1, ptr %l20, !tbaa !21
  br i1 %t27, label %bb7, label %bb8
bb7:
  %t28 = load ptr, ptr %l0, !tbaa !29
  store ptr %t28, ptr %l22, !tbaa !29
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t30 = load ptr, ptr %l1, !tbaa !29
  %t33 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopOf(ptr %v0, ptr %v1, ptr %t29, ptr %t30)
  store %"compiler/source:Span" %t33, ptr %l25
  br label %bb9
bb8:
  br label %bb25
bb9:
  %t34 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t34, ptr %l27
  %t37 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fsource_3aSpan(ptr %l25, ptr %l27)
  store i1 %t37, ptr %l29
  br label %bb10
bb10:
  %t38 = load i1, ptr %l29, !tbaa !21
  %t39 = xor i1 %t38, true
  br i1 %t39, label %bb11, label %bb12
bb11:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t42 = load ptr, ptr %l1, !tbaa !29
  %t45 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopOf(ptr %v0, ptr %v1, ptr %t41, ptr %t42)
  store %"compiler/source:Span" %t45, ptr %l34
  br label %bb13
bb12:
  %t46 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t46, ptr %l31
  br label %bb14
bb13:
  %t48 = load %"compiler/source:Span", ptr %l34
  store %"compiler/source:Span" %t48, ptr %l31
  br label %bb14
bb14:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t50 = load ptr, ptr %l1, !tbaa !29
  %t53 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopOf(ptr %v0, ptr %v1, ptr %t49, ptr %t50)
  store %"compiler/source:Span" %t53, ptr %l38
  br label %bb15
bb15:
  %t54 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t54, ptr %l40
  %t57 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fsource_3aSpan(ptr %l38, ptr %l40)
  store i1 %t57, ptr %l42
  br label %bb16
bb16:
  %t58 = load i1, ptr %l42, !tbaa !21
  br i1 %t58, label %bb17, label %bb18
bb17:
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t60 = load %"compiler/source:Span", ptr %l4
  %t63 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t59, %"compiler/source:Span" %t60)
  store { i64, ptr } %t63, ptr %l46
  br label %bb19
bb18:
  store { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d13, i32 0, i32 1) }, ptr %l43, !tbaa !27
  br label %bb21
bb19:
  %t64 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t65 = call { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %v0, { i64, ptr } %t64)
  store { i64, ptr } %t65, ptr %l47
  br label %bb20
bb20:
  %t66 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t67 = extractvalue { i64, ptr } %t66, 0
  %t68 = extractvalue { i64, ptr } %t66, 1
  %t69 = mul i64 %t67, 1
  %t70 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t69)
  call void @llvm.memcpy.p0.p0.i64(ptr %t70, ptr %t68, i64 %t69, i1 false)
  %t71 = insertvalue { i64, ptr } undef, i64 %t67, 0
  %t72 = insertvalue { i64, ptr } %t71, ptr %t70, 1
  store { i64, ptr } %t72, ptr %l43, !tbaa !27
  br label %bb21
bb21:
  %t74 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t75 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLiteralNoOwnType(ptr %v0, ptr %v0, { i64, ptr } %t74)
  store %"compiler/diagmsg:Msg" %t75, ptr %l49
  br label %bb22
bb22:
  %t76 = load ptr, ptr %l22, !tbaa !29
  %t77 = load %"compiler/source:Span", ptr %l31
  %t78 = load %"compiler/diagmsg:Msg", ptr %l49
  %t79 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t76, %"compiler/source:Span" %t77, %"compiler/diagmsg:Msg" %t78)
  store i64 %t79, ptr %l50
  br label %bb23
bb23:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t81 = load %"compiler/source:Span", ptr %l4
  %t84 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t80, %"compiler/source:Span" %t81)
  store ptr %t84, ptr %l53
  br label %bb24
bb24:
  %t85 = load ptr, ptr %l53, !tbaa !29
  store ptr %t85, ptr %rv
  br label %ret
bb25:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = getelementptr %"compiler/check:Checker", ptr %t86, i32 0, i32 1
  %t89 = load ptr, ptr %t88, !tbaa !29
  %t91 = getelementptr %"compiler/generic:Program", ptr %t89, i32 0, i32 2
  %t92 = load i32, ptr %l5, !tbaa !23
  %t95 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNumber(ptr %v0, ptr %t91, i32 %t92)
  store i1 %t95, ptr %l58
  br label %bb26
bb26:
  %t96 = load i1, ptr %l58, !tbaa !21
  %t97 = xor i1 %t96, true
  br i1 %t97, label %bb27, label %bb28
bb27:
  store %olang.scope zeroinitializer, ptr %s2
  %t99 = getelementptr %"compiler/check:litv", ptr %l2, i32 0, i32 1
  %t100 = load i1, ptr %t99, !tbaa !21
  br i1 %t100, label %bb29, label %bb30
bb28:
  br label %bb45
bb29:
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t104 = getelementptr %"compiler/check:Checker", ptr %t102, i32 0, i32 1
  %t105 = load ptr, ptr %t104, !tbaa !29
  %t107 = getelementptr %"compiler/generic:Program", ptr %t105, i32 0, i32 2
  %t109 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s2, ptr %t107, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d14, i32 0, i32 1) })
  store i32 %t109, ptr %l65
  br label %bb31
bb30:
  %t110 = getelementptr %"compiler/check:litv", ptr %l2, i32 0, i32 2
  %t111 = load i1, ptr %t110, !tbaa !21
  br i1 %t111, label %bb32, label %bb33
bb31:
  %t113 = load i32, ptr %l65, !tbaa !23
  store i32 %t113, ptr %l61, !tbaa !23
  br label %bb44
bb32:
  store i1 true, ptr %l67, !tbaa !21
  br label %bb38
bb33:
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t115 = load ptr, ptr %l1, !tbaa !29
  %t118 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitU64(ptr %v0, ptr %v1, ptr %t114, ptr %t115)
  store i1 %t118, ptr %l70
  br label %bb34
bb34:
  %t119 = load i1, ptr %l70, !tbaa !21
  br i1 %t119, label %bb35, label %bb36
bb35:
  %t120 = getelementptr %"compiler/check:litv", ptr %l2, i32 0, i32 3
  %t121 = load i64, ptr %t120, !tbaa !24
  %t123 = icmp sge i64 %t121, 0
  store i1 %t123, ptr %l71, !tbaa !21
  br label %bb37
bb36:
  store i1 false, ptr %l71, !tbaa !21
  br label %bb37
bb37:
  %t125 = load i1, ptr %l71, !tbaa !21
  store i1 %t125, ptr %l67, !tbaa !21
  br label %bb38
bb38:
  %t126 = load i1, ptr %l67, !tbaa !21
  br i1 %t126, label %bb39, label %bb40
bb39:
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t129 = getelementptr %"compiler/check:Checker", ptr %t127, i32 0, i32 1
  %t130 = load ptr, ptr %t129, !tbaa !29
  %t132 = getelementptr %"compiler/generic:Program", ptr %t130, i32 0, i32 2
  %t134 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s2, ptr %t132, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d15, i32 0, i32 1) })
  store i32 %t134, ptr %l78
  br label %bb41
bb40:
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t137 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t135)
  store i32 %t137, ptr %l80
  br label %bb42
bb41:
  %t138 = load i32, ptr %l78, !tbaa !23
  store i32 %t138, ptr %l74, !tbaa !23
  br label %bb43
bb42:
  %t139 = load i32, ptr %l80, !tbaa !23
  store i32 %t139, ptr %l74, !tbaa !23
  br label %bb43
bb43:
  %t140 = load i32, ptr %l74, !tbaa !23
  store i32 %t140, ptr %l61, !tbaa !23
  br label %bb44
bb44:
  %t141 = load i32, ptr %l61, !tbaa !23
  store i32 %t141, ptr %l3, !tbaa !23
  %t142 = load i32, ptr %l3, !tbaa !23
  store i32 %t142, ptr %l5, !tbaa !23
  call void @__olang_scope_close(ptr %s2)
  br label %bb45
bb45:
  %t144 = getelementptr %"compiler/check:litv", ptr %l2, i32 0, i32 1
  %t145 = load i1, ptr %t144, !tbaa !21
  br i1 %t145, label %bb46, label %bb47
bb46:
  %t147 = getelementptr %"compiler/check:litv", ptr %l2, i32 0, i32 4
  %t148 = load double, ptr %t147, !tbaa !26
  %t150 = fcmp ogt double %t148, 0x7fefffffffffffff
  br i1 %t150, label %bb48, label %bb49
bb47:
  br label %bb91
bb48:
  store i1 true, ptr %l85, !tbaa !21
  br label %bb50
bb49:
  %t152 = getelementptr %"compiler/check:litv", ptr %l2, i32 0, i32 4
  %t153 = load double, ptr %t152, !tbaa !26
  %t155 = fcmp olt double %t153, 0xffefffffffffffff
  store i1 %t155, ptr %l85, !tbaa !21
  br label %bb50
bb50:
  %t157 = load i1, ptr %l85, !tbaa !21
  br i1 %t157, label %bb51, label %bb52
bb51:
  %t158 = load ptr, ptr %l0, !tbaa !29
  %t159 = load ptr, ptr %l1, !tbaa !29
  %t162 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eoverflowsF64(ptr %v0, ptr %v1, ptr %t158, ptr %t159)
  store i1 %t162, ptr %l91
  br label %bb53
bb52:
  store i1 false, ptr %l88, !tbaa !21
  br label %bb54
bb53:
  %t163 = load i1, ptr %l91, !tbaa !21
  store i1 %t163, ptr %l88, !tbaa !21
  br label %bb54
bb54:
  %t164 = load i1, ptr %l88, !tbaa !21
  br i1 %t164, label %bb55, label %bb56
bb55:
  %t165 = load ptr, ptr %l0, !tbaa !29
  %t166 = load ptr, ptr %l1, !tbaa !29
  %t169 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopOf(ptr %v0, ptr %v1, ptr %t165, ptr %t166)
  store %"compiler/source:Span" %t169, ptr %l94
  br label %bb57
bb56:
  br label %bb70
bb57:
  %t170 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t170, ptr %l96
  %t173 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fsource_3aSpan(ptr %l94, ptr %l96)
  store i1 %t173, ptr %l98
  br label %bb58
bb58:
  %t174 = load i1, ptr %l98, !tbaa !21
  %t175 = xor i1 %t174, true
  br i1 %t175, label %bb59, label %bb60
bb59:
  %t177 = load ptr, ptr %l0, !tbaa !29
  store ptr %t177, ptr %l100, !tbaa !29
  %t178 = load ptr, ptr %l0, !tbaa !29
  %t179 = load ptr, ptr %l1, !tbaa !29
  %t182 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopOf(ptr %v0, ptr %v1, ptr %t178, ptr %t179)
  store %"compiler/source:Span" %t182, ptr %l103
  br label %bb61
bb60:
  %t183 = load ptr, ptr %l0, !tbaa !29
  store ptr %t183, ptr %l106, !tbaa !29
  %t184 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t184, ptr %l107
  %t185 = load ptr, ptr %l0, !tbaa !29
  %t186 = load %"compiler/source:Span", ptr %l4
  %t189 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t185, %"compiler/source:Span" %t186)
  store { i64, ptr } %t189, ptr %l110
  br label %bb64
bb61:
  %t190 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLiteralExprRange(ptr %v0, ptr %v0, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d16, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t190, ptr %l104
  br label %bb62
bb62:
  %t191 = load ptr, ptr %l100, !tbaa !29
  %t192 = load %"compiler/source:Span", ptr %l103
  %t193 = load %"compiler/diagmsg:Msg", ptr %l104
  %t194 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t191, %"compiler/source:Span" %t192, %"compiler/diagmsg:Msg" %t193)
  store i64 %t194, ptr %l105
  br label %bb63
bb63:
  br label %bb68
bb64:
  %t195 = load { i64, ptr }, ptr %l110, !tbaa !27
  %t196 = call { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %v0, { i64, ptr } %t195)
  store { i64, ptr } %t196, ptr %l111
  br label %bb65
bb65:
  %t197 = load { i64, ptr }, ptr %l111, !tbaa !27
  %t198 = extractvalue { i64, ptr } %t197, 0
  %t199 = extractvalue { i64, ptr } %t197, 1
  %t200 = mul i64 %t198, 1
  %t201 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t200)
  call void @llvm.memcpy.p0.p0.i64(ptr %t201, ptr %t199, i64 %t200, i1 false)
  %t202 = insertvalue { i64, ptr } undef, i64 %t198, 0
  %t203 = insertvalue { i64, ptr } %t202, ptr %t201, 1
  %t205 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFloatLiteralRange(ptr %v0, ptr %v0, { i64, ptr } %t203)
  store %"compiler/diagmsg:Msg" %t205, ptr %l113
  br label %bb66
bb66:
  %t206 = load ptr, ptr %l106, !tbaa !29
  %t207 = load %"compiler/source:Span", ptr %l107
  %t208 = load %"compiler/diagmsg:Msg", ptr %l113
  %t209 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t206, %"compiler/source:Span" %t207, %"compiler/diagmsg:Msg" %t208)
  store i64 %t209, ptr %l114
  br label %bb67
bb67:
  br label %bb68
bb68:
  %t210 = load ptr, ptr %l0, !tbaa !29
  %t211 = load %"compiler/source:Span", ptr %l4
  %t214 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t210, %"compiler/source:Span" %t211)
  store ptr %t214, ptr %l117
  br label %bb69
bb69:
  %t215 = load ptr, ptr %l117, !tbaa !29
  store ptr %t215, ptr %rv
  br label %ret
bb70:
  %t216 = load ptr, ptr %l0, !tbaa !29
  %t218 = getelementptr %"compiler/check:Checker", ptr %t216, i32 0, i32 1
  %t219 = load ptr, ptr %t218, !tbaa !29
  %t221 = getelementptr %"compiler/generic:Program", ptr %t219, i32 0, i32 2
  %t222 = load i32, ptr %l5, !tbaa !23
  %t225 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsFloat(ptr %v0, ptr %t221, i32 %t222)
  store i1 %t225, ptr %l122
  br label %bb71
bb71:
  %t226 = load i1, ptr %l122, !tbaa !21
  %t227 = xor i1 %t226, true
  br i1 %t227, label %bb72, label %bb73
bb72:
  %t229 = load ptr, ptr %l0, !tbaa !29
  store ptr %t229, ptr %l124, !tbaa !29
  %t230 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t230, ptr %l125
  %t231 = load ptr, ptr %l0, !tbaa !29
  %t232 = load i32, ptr %l3, !tbaa !23
  %t235 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t231, i32 %t232)
  store { i64, ptr } %t235, ptr %l128
  br label %bb74
bb73:
  br label %bb78
bb74:
  %t236 = load { i64, ptr }, ptr %l128, !tbaa !27
  %t237 = extractvalue { i64, ptr } %t236, 0
  %t238 = extractvalue { i64, ptr } %t236, 1
  %t239 = mul i64 %t237, 1
  %t240 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t239)
  call void @llvm.memcpy.p0.p0.i64(ptr %t240, ptr %t238, i64 %t239, i1 false)
  %t241 = insertvalue { i64, ptr } undef, i64 %t237, 0
  %t242 = insertvalue { i64, ptr } %t241, ptr %t240, 1
  %t244 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeMismatch(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t242, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d17, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t244, ptr %l130
  br label %bb75
bb75:
  %t245 = load ptr, ptr %l124, !tbaa !29
  %t246 = load %"compiler/source:Span", ptr %l125
  %t247 = load %"compiler/diagmsg:Msg", ptr %l130
  %t248 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t245, %"compiler/source:Span" %t246, %"compiler/diagmsg:Msg" %t247)
  store i64 %t248, ptr %l131
  br label %bb76
bb76:
  %t249 = load ptr, ptr %l0, !tbaa !29
  %t250 = load %"compiler/source:Span", ptr %l4
  %t253 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t249, %"compiler/source:Span" %t250)
  store ptr %t253, ptr %l134
  br label %bb77
bb77:
  %t254 = load ptr, ptr %l134, !tbaa !29
  store ptr %t254, ptr %rv
  br label %ret
bb78:
  %t255 = load i32, ptr %l5, !tbaa !23
  %t256 = getelementptr %"compiler/check:litv", ptr %l2, i32 0, i32 4
  %t257 = load double, ptr %t256, !tbaa !26
  %t260 = call i1 @compiler_2fcheck_2efloatOverflows(i32 %t255, double %t257)
  store i1 %t260, ptr %l137
  br label %bb79
bb79:
  %t261 = load i1, ptr %l137, !tbaa !21
  br i1 %t261, label %bb80, label %bb81
bb80:
  %t262 = load ptr, ptr %l0, !tbaa !29
  store ptr %t262, ptr %l138, !tbaa !29
  %t263 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t263, ptr %l139
  %t264 = load ptr, ptr %l0, !tbaa !29
  %t265 = load %"compiler/source:Span", ptr %l4
  %t268 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t264, %"compiler/source:Span" %t265)
  store { i64, ptr } %t268, ptr %l142
  br label %bb82
bb81:
  br label %bb88
bb82:
  %t269 = load { i64, ptr }, ptr %l142, !tbaa !27
  %t270 = call { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %v0, { i64, ptr } %t269)
  store { i64, ptr } %t270, ptr %l143
  br label %bb83
bb83:
  %t271 = load { i64, ptr }, ptr %l143, !tbaa !27
  %t272 = extractvalue { i64, ptr } %t271, 0
  %t273 = extractvalue { i64, ptr } %t271, 1
  %t274 = mul i64 %t272, 1
  %t275 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t274)
  call void @llvm.memcpy.p0.p0.i64(ptr %t275, ptr %t273, i64 %t274, i1 false)
  %t276 = insertvalue { i64, ptr } undef, i64 %t272, 0
  %t277 = insertvalue { i64, ptr } %t276, ptr %t275, 1
  store { i64, ptr } %t277, ptr %l144, !tbaa !27
  %t278 = load ptr, ptr %l0, !tbaa !29
  %t279 = load i32, ptr %l3, !tbaa !23
  %t282 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t278, i32 %t279)
  store { i64, ptr } %t282, ptr %l147
  br label %bb84
bb84:
  %t283 = load { i64, ptr }, ptr %l147, !tbaa !27
  %t284 = extractvalue { i64, ptr } %t283, 0
  %t285 = extractvalue { i64, ptr } %t283, 1
  %t286 = mul i64 %t284, 1
  %t287 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t286)
  call void @llvm.memcpy.p0.p0.i64(ptr %t287, ptr %t285, i64 %t286, i1 false)
  %t288 = insertvalue { i64, ptr } undef, i64 %t284, 0
  %t289 = insertvalue { i64, ptr } %t288, ptr %t287, 1
  %t290 = load { i64, ptr }, ptr %l144, !tbaa !27
  %t292 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLiteralRange(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t290, { i64, ptr } %t289)
  store %"compiler/diagmsg:Msg" %t292, ptr %l149
  br label %bb85
bb85:
  %t293 = load ptr, ptr %l138, !tbaa !29
  %t294 = load %"compiler/source:Span", ptr %l139
  %t295 = load %"compiler/diagmsg:Msg", ptr %l149
  %t296 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t293, %"compiler/source:Span" %t294, %"compiler/diagmsg:Msg" %t295)
  store i64 %t296, ptr %l150
  br label %bb86
bb86:
  %t297 = load ptr, ptr %l0, !tbaa !29
  %t298 = load %"compiler/source:Span", ptr %l4
  %t301 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t297, %"compiler/source:Span" %t298)
  store ptr %t301, ptr %l153
  br label %bb87
bb87:
  %t302 = load ptr, ptr %l153, !tbaa !29
  store ptr %t302, ptr %rv
  br label %ret
bb88:
  %t303 = load ptr, ptr %l0, !tbaa !29
  store ptr %t303, ptr %l154, !tbaa !29
  %t304 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t304, ptr %l155
  %t305 = load i32, ptr %l3, !tbaa !23
  store i32 %t305, ptr %l156, !tbaa !23
  %t306 = load i32, ptr %l5, !tbaa !23
  %t307 = getelementptr %"compiler/check:litv", ptr %l2, i32 0, i32 4
  %t308 = load double, ptr %t307, !tbaa !26
  %t311 = call i64 @compiler_2fcheck_2efloatBits(i32 %t306, double %t308)
  store i64 %t311, ptr %l159
  br label %bb89
bb89:
  %t312 = load ptr, ptr %l154, !tbaa !29
  %t313 = load %"compiler/source:Span", ptr %l155
  %t314 = load i32, ptr %l156, !tbaa !23
  %t315 = load i64, ptr %l159, !tbaa !24
  %t316 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v2, ptr %t312, %"compiler/source:Span" %t313, i32 %t314, i64 %t315)
  store ptr %t316, ptr %l160
  br label %bb90
bb90:
  %t317 = load ptr, ptr %l160, !tbaa !29
  store ptr %t317, ptr %rv
  br label %ret
bb91:
  %t318 = load ptr, ptr %l0, !tbaa !29
  %t320 = getelementptr %"compiler/check:Checker", ptr %t318, i32 0, i32 1
  %t321 = load ptr, ptr %t320, !tbaa !29
  %t323 = getelementptr %"compiler/generic:Program", ptr %t321, i32 0, i32 2
  %t324 = load i32, ptr %l5, !tbaa !23
  %t327 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsFloat(ptr %v0, ptr %t323, i32 %t324)
  store i1 %t327, ptr %l165
  br label %bb92
bb92:
  %t328 = load i1, ptr %l165, !tbaa !21
  br i1 %t328, label %bb93, label %bb94
bb93:
  %t329 = load i32, ptr %l5, !tbaa !23
  store i32 %t329, ptr %l166, !tbaa !23
  %t330 = load %"compiler/check:litv", ptr %l2
  %t332 = call double @compiler_2fcheck_2elitF64(%"compiler/check:litv" %t330)
  store double %t332, ptr %l168
  br label %bb95
bb94:
  br label %bb108
bb95:
  %t333 = load i32, ptr %l166, !tbaa !23
  %t334 = load double, ptr %l168, !tbaa !26
  %t335 = call i1 @compiler_2fcheck_2efloatOverflows(i32 %t333, double %t334)
  store i1 %t335, ptr %l169
  br label %bb96
bb96:
  %t336 = load i1, ptr %l169, !tbaa !21
  br i1 %t336, label %bb97, label %bb98
bb97:
  %t337 = load ptr, ptr %l0, !tbaa !29
  store ptr %t337, ptr %l170, !tbaa !29
  %t338 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t338, ptr %l171
  %t339 = load ptr, ptr %l0, !tbaa !29
  %t340 = load %"compiler/source:Span", ptr %l4
  %t343 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t339, %"compiler/source:Span" %t340)
  store { i64, ptr } %t343, ptr %l174
  br label %bb99
bb98:
  br label %bb105
bb99:
  %t344 = load { i64, ptr }, ptr %l174, !tbaa !27
  %t345 = call { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %v0, { i64, ptr } %t344)
  store { i64, ptr } %t345, ptr %l175
  br label %bb100
bb100:
  %t346 = load { i64, ptr }, ptr %l175, !tbaa !27
  %t347 = extractvalue { i64, ptr } %t346, 0
  %t348 = extractvalue { i64, ptr } %t346, 1
  %t349 = mul i64 %t347, 1
  %t350 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t349)
  call void @llvm.memcpy.p0.p0.i64(ptr %t350, ptr %t348, i64 %t349, i1 false)
  %t351 = insertvalue { i64, ptr } undef, i64 %t347, 0
  %t352 = insertvalue { i64, ptr } %t351, ptr %t350, 1
  store { i64, ptr } %t352, ptr %l176, !tbaa !27
  %t353 = load ptr, ptr %l0, !tbaa !29
  %t354 = load i32, ptr %l3, !tbaa !23
  %t357 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t353, i32 %t354)
  store { i64, ptr } %t357, ptr %l179
  br label %bb101
bb101:
  %t358 = load { i64, ptr }, ptr %l179, !tbaa !27
  %t359 = extractvalue { i64, ptr } %t358, 0
  %t360 = extractvalue { i64, ptr } %t358, 1
  %t361 = mul i64 %t359, 1
  %t362 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t361)
  call void @llvm.memcpy.p0.p0.i64(ptr %t362, ptr %t360, i64 %t361, i1 false)
  %t363 = insertvalue { i64, ptr } undef, i64 %t359, 0
  %t364 = insertvalue { i64, ptr } %t363, ptr %t362, 1
  %t365 = load { i64, ptr }, ptr %l176, !tbaa !27
  %t367 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLiteralRange(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t365, { i64, ptr } %t364)
  store %"compiler/diagmsg:Msg" %t367, ptr %l181
  br label %bb102
bb102:
  %t368 = load ptr, ptr %l170, !tbaa !29
  %t369 = load %"compiler/source:Span", ptr %l171
  %t370 = load %"compiler/diagmsg:Msg", ptr %l181
  %t371 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t368, %"compiler/source:Span" %t369, %"compiler/diagmsg:Msg" %t370)
  store i64 %t371, ptr %l182
  br label %bb103
bb103:
  %t372 = load ptr, ptr %l0, !tbaa !29
  %t373 = load %"compiler/source:Span", ptr %l4
  %t376 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t372, %"compiler/source:Span" %t373)
  store ptr %t376, ptr %l185
  br label %bb104
bb104:
  %t377 = load ptr, ptr %l185, !tbaa !29
  store ptr %t377, ptr %rv
  br label %ret
bb105:
  %t378 = load ptr, ptr %l0, !tbaa !29
  store ptr %t378, ptr %l186, !tbaa !29
  %t379 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t379, ptr %l187
  %t380 = load i32, ptr %l3, !tbaa !23
  store i32 %t380, ptr %l188, !tbaa !23
  %t381 = load i32, ptr %l5, !tbaa !23
  %t382 = load %"compiler/check:litv", ptr %l2
  %t385 = call i64 @compiler_2fcheck_2eintFloatBits(i32 %t381, %"compiler/check:litv" %t382)
  store i64 %t385, ptr %l191
  br label %bb106
bb106:
  %t386 = load ptr, ptr %l186, !tbaa !29
  %t387 = load %"compiler/source:Span", ptr %l187
  %t388 = load i32, ptr %l188, !tbaa !23
  %t389 = load i64, ptr %l191, !tbaa !24
  %t390 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v2, ptr %t386, %"compiler/source:Span" %t387, i32 %t388, i64 %t389)
  store ptr %t390, ptr %l192
  br label %bb107
bb107:
  %t391 = load ptr, ptr %l192, !tbaa !29
  store ptr %t391, ptr %rv
  br label %ret
bb108:
  %t392 = load ptr, ptr %l0, !tbaa !29
  %t394 = getelementptr %"compiler/check:Checker", ptr %t392, i32 0, i32 1
  %t395 = load ptr, ptr %t394, !tbaa !29
  %t397 = getelementptr %"compiler/generic:Program", ptr %t395, i32 0, i32 2
  %t398 = load %"compiler/check:litv", ptr %l2
  %t399 = load i32, ptr %l5, !tbaa !23
  %t403 = call i1 @compiler_2fcheck_2eintFits(ptr %v0, ptr %t397, %"compiler/check:litv" %t398, i32 %t399)
  store i1 %t403, ptr %l198
  br label %bb109
bb109:
  %t404 = load i1, ptr %l198, !tbaa !21
  %t405 = xor i1 %t404, true
  br i1 %t405, label %bb110, label %bb111
bb110:
  %t407 = load ptr, ptr %l0, !tbaa !29
  %t408 = load ptr, ptr %l1, !tbaa !29
  %t411 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopOf(ptr %v0, ptr %v1, ptr %t407, ptr %t408)
  store %"compiler/source:Span" %t411, ptr %l202
  br label %bb112
bb111:
  br label %bb127
bb112:
  %t412 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t412, ptr %l204
  %t415 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fsource_3aSpan(ptr %l202, ptr %l204)
  store i1 %t415, ptr %l206
  br label %bb113
bb113:
  %t416 = load i1, ptr %l206, !tbaa !21
  %t417 = xor i1 %t416, true
  br i1 %t417, label %bb114, label %bb115
bb114:
  %t419 = load ptr, ptr %l0, !tbaa !29
  store ptr %t419, ptr %l208, !tbaa !29
  %t420 = load ptr, ptr %l0, !tbaa !29
  %t421 = load ptr, ptr %l1, !tbaa !29
  %t424 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopOf(ptr %v0, ptr %v1, ptr %t420, ptr %t421)
  store %"compiler/source:Span" %t424, ptr %l211
  br label %bb116
bb115:
  %t425 = load ptr, ptr %l0, !tbaa !29
  store ptr %t425, ptr %l218, !tbaa !29
  %t426 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t426, ptr %l219
  %t427 = load ptr, ptr %l0, !tbaa !29
  %t428 = load %"compiler/source:Span", ptr %l4
  %t431 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t427, %"compiler/source:Span" %t428)
  store { i64, ptr } %t431, ptr %l222
  br label %bb120
bb116:
  %t432 = load ptr, ptr %l0, !tbaa !29
  %t433 = load i32, ptr %l3, !tbaa !23
  %t436 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t432, i32 %t433)
  store { i64, ptr } %t436, ptr %l214
  br label %bb117
bb117:
  %t437 = load { i64, ptr }, ptr %l214, !tbaa !27
  %t438 = extractvalue { i64, ptr } %t437, 0
  %t439 = extractvalue { i64, ptr } %t437, 1
  %t440 = mul i64 %t438, 1
  %t441 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t440)
  call void @llvm.memcpy.p0.p0.i64(ptr %t441, ptr %t439, i64 %t440, i1 false)
  %t442 = insertvalue { i64, ptr } undef, i64 %t438, 0
  %t443 = insertvalue { i64, ptr } %t442, ptr %t441, 1
  %t445 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLiteralExprRange(ptr %v0, ptr %v0, { i64, ptr } %t443)
  store %"compiler/diagmsg:Msg" %t445, ptr %l216
  br label %bb118
bb118:
  %t446 = load ptr, ptr %l208, !tbaa !29
  %t447 = load %"compiler/source:Span", ptr %l211
  %t448 = load %"compiler/diagmsg:Msg", ptr %l216
  %t449 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t446, %"compiler/source:Span" %t447, %"compiler/diagmsg:Msg" %t448)
  store i64 %t449, ptr %l217
  br label %bb119
bb119:
  br label %bb125
bb120:
  %t450 = load { i64, ptr }, ptr %l222, !tbaa !27
  %t451 = call { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %v0, { i64, ptr } %t450)
  store { i64, ptr } %t451, ptr %l223
  br label %bb121
bb121:
  %t452 = load { i64, ptr }, ptr %l223, !tbaa !27
  %t453 = extractvalue { i64, ptr } %t452, 0
  %t454 = extractvalue { i64, ptr } %t452, 1
  %t455 = mul i64 %t453, 1
  %t456 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t455)
  call void @llvm.memcpy.p0.p0.i64(ptr %t456, ptr %t454, i64 %t455, i1 false)
  %t457 = insertvalue { i64, ptr } undef, i64 %t453, 0
  %t458 = insertvalue { i64, ptr } %t457, ptr %t456, 1
  store { i64, ptr } %t458, ptr %l224, !tbaa !27
  %t459 = load ptr, ptr %l0, !tbaa !29
  %t460 = load i32, ptr %l3, !tbaa !23
  %t463 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t459, i32 %t460)
  store { i64, ptr } %t463, ptr %l227
  br label %bb122
bb122:
  %t464 = load { i64, ptr }, ptr %l227, !tbaa !27
  %t465 = extractvalue { i64, ptr } %t464, 0
  %t466 = extractvalue { i64, ptr } %t464, 1
  %t467 = mul i64 %t465, 1
  %t468 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t467)
  call void @llvm.memcpy.p0.p0.i64(ptr %t468, ptr %t466, i64 %t467, i1 false)
  %t469 = insertvalue { i64, ptr } undef, i64 %t465, 0
  %t470 = insertvalue { i64, ptr } %t469, ptr %t468, 1
  %t471 = load { i64, ptr }, ptr %l224, !tbaa !27
  %t473 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLiteralRange(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t471, { i64, ptr } %t470)
  store %"compiler/diagmsg:Msg" %t473, ptr %l229
  br label %bb123
bb123:
  %t474 = load ptr, ptr %l218, !tbaa !29
  %t475 = load %"compiler/source:Span", ptr %l219
  %t476 = load %"compiler/diagmsg:Msg", ptr %l229
  %t477 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t474, %"compiler/source:Span" %t475, %"compiler/diagmsg:Msg" %t476)
  store i64 %t477, ptr %l230
  br label %bb124
bb124:
  br label %bb125
bb125:
  %t478 = load ptr, ptr %l0, !tbaa !29
  %t479 = load %"compiler/source:Span", ptr %l4
  %t482 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t478, %"compiler/source:Span" %t479)
  store ptr %t482, ptr %l233
  br label %bb126
bb126:
  %t483 = load ptr, ptr %l233, !tbaa !29
  store ptr %t483, ptr %rv
  br label %ret
bb127:
  %t484 = getelementptr %"compiler/check:litv", ptr %l2, i32 0, i32 6
  %t485 = load i1, ptr %t484, !tbaa !21
  br i1 %t485, label %bb128, label %bb129
bb128:
  store %olang.scope zeroinitializer, ptr %s14
  %t487 = getelementptr %"compiler/check:litv", ptr %l2, i32 0, i32 7
  %t488 = load i1, ptr %t487, !tbaa !21
  br i1 %t488, label %bb130, label %bb131
bb129:
  br label %bb143
bb130:
  %t490 = getelementptr %"compiler/check:litv", ptr %l2, i32 0, i32 8
  %t491 = load i128, ptr %t490
  %t493 = sub i128 0, %t491
  store i128 %t493, ptr %l236
  br label %bb132
bb131:
  %t495 = getelementptr %"compiler/check:litv", ptr %l2, i32 0, i32 8
  %t496 = load i128, ptr %t495
  store i128 %t496, ptr %l236
  br label %bb132
bb132:
  %t498 = load i128, ptr %l236
  store i128 %t498, ptr %l6
  %t499 = load ptr, ptr %l0, !tbaa !29
  store ptr %t499, ptr %l240, !tbaa !29
  %t500 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t500, ptr %l241
  %t501 = load ptr, ptr %l0, !tbaa !29
  store ptr %t501, ptr %l242, !tbaa !29
  %t502 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t502, ptr %l243
  %t503 = load ptr, ptr %l0, !tbaa !29
  %t505 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t503)
  store i32 %t505, ptr %l245
  br label %bb133
bb133:
  %t506 = load i128, ptr %l6
  %t508 = lshr i128 %t506, 64
  %t510 = trunc i128 %t508 to i64
  %t511 = load ptr, ptr %l242, !tbaa !29
  %t512 = load %"compiler/source:Span", ptr %l243
  %t513 = load i32, ptr %l245, !tbaa !23
  %t515 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v0, ptr %t511, %"compiler/source:Span" %t512, i32 %t513, i64 %t510)
  store ptr %t515, ptr %l249
  br label %bb134
bb134:
  %t516 = load i32, ptr %l3, !tbaa !23
  %t517 = load ptr, ptr %l240, !tbaa !29
  %t518 = load %"compiler/source:Span", ptr %l241
  %t519 = load ptr, ptr %l249, !tbaa !29
  %t521 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econvert(ptr %v0, ptr %v0, ptr %v2, ptr %t517, %"compiler/source:Span" %t518, ptr %t519, i32 %t516)
  store ptr %t521, ptr %l251
  br label %bb135
bb135:
  %t522 = load ptr, ptr %l251, !tbaa !29
  store ptr %t522, ptr %l7, !tbaa !29
  %t523 = load ptr, ptr %l0, !tbaa !29
  store ptr %t523, ptr %l252, !tbaa !29
  %t524 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t524, ptr %l253
  %t525 = load ptr, ptr %l0, !tbaa !29
  store ptr %t525, ptr %l254, !tbaa !29
  %t526 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t526, ptr %l255
  %t527 = load ptr, ptr %l0, !tbaa !29
  %t529 = getelementptr %"compiler/check:Checker", ptr %t527, i32 0, i32 1
  %t530 = load ptr, ptr %t529, !tbaa !29
  %t532 = getelementptr %"compiler/generic:Program", ptr %t530, i32 0, i32 2
  %t534 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s14, ptr %t532, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d18, i32 0, i32 1) })
  store i32 %t534, ptr %l259
  br label %bb136
bb136:
  %t535 = load i128, ptr %l6
  %t537 = trunc i128 %t535 to i64
  %t538 = load ptr, ptr %l254, !tbaa !29
  %t539 = load %"compiler/source:Span", ptr %l255
  %t540 = load i32, ptr %l259, !tbaa !23
  %t542 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v0, ptr %t538, %"compiler/source:Span" %t539, i32 %t540, i64 %t537)
  store ptr %t542, ptr %l262
  br label %bb137
bb137:
  %t543 = load i32, ptr %l3, !tbaa !23
  %t544 = load ptr, ptr %l252, !tbaa !29
  %t545 = load %"compiler/source:Span", ptr %l253
  %t546 = load ptr, ptr %l262, !tbaa !29
  %t548 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econvert(ptr %v0, ptr %v0, ptr %v2, ptr %t544, %"compiler/source:Span" %t545, ptr %t546, i32 %t543)
  store ptr %t548, ptr %l264
  br label %bb138
bb138:
  %t549 = load ptr, ptr %l264, !tbaa !29
  store ptr %t549, ptr %l8, !tbaa !29
  %t550 = load ptr, ptr %l0, !tbaa !29
  store ptr %t550, ptr %l265, !tbaa !29
  %t551 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t551, ptr %l266
  %t552 = load i32, ptr %l3, !tbaa !23
  store i32 %t552, ptr %l267, !tbaa !23
  store i32 11, ptr %l268
  %t553 = load ptr, ptr %l0, !tbaa !29
  store ptr %t553, ptr %l269, !tbaa !29
  %t554 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t554, ptr %l270
  %t555 = load i32, ptr %l3, !tbaa !23
  store i32 %t555, ptr %l271, !tbaa !23
  store i32 8, ptr %l272
  %t556 = load ptr, ptr %l7, !tbaa !29
  store ptr %t556, ptr %l273, !tbaa !29
  %t557 = load ptr, ptr %l0, !tbaa !29
  store ptr %t557, ptr %l274, !tbaa !29
  %t558 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t558, ptr %l275
  %t559 = load ptr, ptr %l0, !tbaa !29
  %t561 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t559)
  store i32 %t561, ptr %l277
  br label %bb139
bb139:
  %t562 = load ptr, ptr %l274, !tbaa !29
  %t563 = load %"compiler/source:Span", ptr %l275
  %t564 = load i32, ptr %l277, !tbaa !23
  %t565 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v0, ptr %t562, %"compiler/source:Span" %t563, i32 %t564, i64 64)
  store ptr %t565, ptr %l278
  br label %bb140
bb140:
  %t566 = load ptr, ptr %l278, !tbaa !29
  %t567 = load ptr, ptr %l269, !tbaa !29
  %t568 = load %"compiler/source:Span", ptr %l270
  %t569 = load i32, ptr %l271, !tbaa !23
  %t570 = load i32, ptr %l272, !range !{i32 0, i32 52}
  %t571 = load ptr, ptr %l273, !tbaa !29
  %t573 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v2, ptr %v0, ptr %v0, ptr %t567, %"compiler/source:Span" %t568, i32 %t569, i32 %t570, ptr %t571, ptr %t566)
  store ptr %t573, ptr %l280
  br label %bb141
bb141:
  %t574 = load ptr, ptr %l8, !tbaa !29
  %t576 = load ptr, ptr %l265, !tbaa !29
  %t577 = load %"compiler/source:Span", ptr %l266
  %t578 = load i32, ptr %l267, !tbaa !23
  %t579 = load i32, ptr %l268, !range !{i32 0, i32 52}
  %t580 = load ptr, ptr %l280, !tbaa !29
  %t582 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v0, ptr %v2, ptr %v2, ptr %t576, %"compiler/source:Span" %t577, i32 %t578, i32 %t579, ptr %t580, ptr %t574)
  store ptr %t582, ptr %l283
  br label %bb142
bb142:
  call void @__olang_scope_close(ptr %s14)
  %t583 = load ptr, ptr %l283, !tbaa !29
  store ptr %t583, ptr %rv
  br label %ret
bb143:
  %t584 = getelementptr %"compiler/check:litv", ptr %l2, i32 0, i32 2
  %t585 = load i1, ptr %t584, !tbaa !21
  br i1 %t585, label %bb144, label %bb145
bb144:
  %t587 = load ptr, ptr %l0, !tbaa !29
  %t589 = getelementptr %"compiler/check:Checker", ptr %t587, i32 0, i32 1
  %t590 = load ptr, ptr %t589, !tbaa !29
  %t592 = getelementptr %"compiler/generic:Program", ptr %t590, i32 0, i32 2
  %t593 = load i32, ptr %l5, !tbaa !23
  %t596 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %t592, i32 %t593)
  store i1 %t596, ptr %l290
  br label %bb146
bb145:
  store i1 false, ptr %l285, !tbaa !21
  br label %bb147
bb146:
  %t597 = load i1, ptr %l290, !tbaa !21
  %t598 = xor i1 %t597, true
  store i1 %t598, ptr %l285, !tbaa !21
  br label %bb147
bb147:
  %t600 = load i1, ptr %l285, !tbaa !21
  br i1 %t600, label %bb148, label %bb149
bb148:
  store %olang.scope zeroinitializer, ptr %s15
  %t601 = load ptr, ptr %l0, !tbaa !29
  store ptr %t601, ptr %l292, !tbaa !29
  %t602 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t602, ptr %l293
  %t603 = load i32, ptr %l3, !tbaa !23
  store i32 %t603, ptr %l294, !tbaa !23
  store i32 20, ptr %l295
  %t604 = load ptr, ptr %l0, !tbaa !29
  store ptr %t604, ptr %l296, !tbaa !29
  %t605 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t605, ptr %l297
  %t606 = load ptr, ptr %l0, !tbaa !29
  %t608 = getelementptr %"compiler/check:Checker", ptr %t606, i32 0, i32 1
  %t609 = load ptr, ptr %t608, !tbaa !29
  %t611 = getelementptr %"compiler/generic:Program", ptr %t609, i32 0, i32 2
  %t613 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s15, ptr %t611, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d19, i32 0, i32 1) })
  store i32 %t613, ptr %l301
  br label %bb150
bb149:
  br label %bb153
bb150:
  %t614 = getelementptr %"compiler/check:litv", ptr %l2, i32 0, i32 3
  %t615 = load i64, ptr %t614, !tbaa !24
  %t616 = load ptr, ptr %l296, !tbaa !29
  %t617 = load %"compiler/source:Span", ptr %l297
  %t618 = load i32, ptr %l301, !tbaa !23
  %t620 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v0, ptr %t616, %"compiler/source:Span" %t617, i32 %t618, i64 %t615)
  store ptr %t620, ptr %l303
  br label %bb151
bb151:
  %t621 = load ptr, ptr %l292, !tbaa !29
  %t622 = load %"compiler/source:Span", ptr %l293
  %t623 = load i32, ptr %l294, !tbaa !23
  %t624 = load i32, ptr %l295, !range !{i32 0, i32 52}
  %t625 = load ptr, ptr %l303, !tbaa !29
  %t626 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v0, ptr %v0, ptr %v2, ptr %t621, %"compiler/source:Span" %t622, i32 %t623, i32 %t624, ptr %t625, ptr null)
  store ptr %t626, ptr %l304
  br label %bb152
bb152:
  call void @__olang_scope_close(ptr %s15)
  %t627 = load ptr, ptr %l304, !tbaa !29
  store ptr %t627, ptr %rv
  br label %ret
bb153:
  %t628 = load ptr, ptr %l0, !tbaa !29
  %t629 = load %"compiler/source:Span", ptr %l4
  %t630 = load i32, ptr %l3, !tbaa !23
  %t631 = getelementptr %"compiler/check:litv", ptr %l2, i32 0, i32 3
  %t632 = load i64, ptr %t631, !tbaa !24
  %t637 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v2, ptr %t628, %"compiler/source:Span" %t629, i32 %t630, i64 %t632)
  store ptr %t637, ptr %l309
  br label %bb154
bb154:
  %t638 = load ptr, ptr %l309, !tbaa !29
  store ptr %t638, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emutStorage(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l2 = alloca %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l3 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l4 = alloca i32
  %l5 = alloca ptr
  %l10 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l13 = alloca %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l14 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l16 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l17 = alloca i32
  %l19 = alloca i1
  %l20 = alloca i32
  %l24 = alloca i32
  %l25 = alloca i32
  %l33 = alloca ptr
  %l37 = alloca i1
  %l40 = alloca i1
  %l41 = alloca i1
  %l44 = alloca i1
  %l46 = alloca i1
  %l51 = alloca i1
  %l63 = alloca ptr
  %l64 = alloca { i64, ptr }
  %l67 = alloca { i64, ptr }
  %l73 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
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
  %t9 = getelementptr %"compiler/load:Loader", ptr %t7, i32 0, i32 9
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t9)
  br label %bb1
bb1:
  %t11 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t11, ptr %l10
  br label %bb2
bb2:
  %t12 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l10
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t12, ptr %l1
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/check:Checker", ptr %t13, i32 0, i32 28
  %t17 = call %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H4bf1ea25652c8861abd3bf5b08e36e6f(ptr %v0, ptr %v0, ptr %t15)
  store %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" %t17, ptr %l13
  br label %bb3
bb3:
  %t18 = load %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %l13
  store %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" %t18, ptr %l2
  br label %bb4
bb4:
  %t20 = call { i32, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapKeyIter_3cstd_2fpair_3aPair_3cI64_2c_20I6_Hfbfbbcb252777c89628fb6bc7775609a(ptr %v0, ptr %l2)
  %t21 = extractvalue { i32, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" } %t20, 1
  %t22 = extractvalue { i32, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" } %t20, 0
  store i32 %t22, ptr %l17
  %t23 = icmp ne i32 %t22, 0
  br i1 %t23, label %bb6, label %ok.24, !prof !99
ok.24:
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t21, ptr %l16
  br label %bb5
bb5:
  %t25 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l16
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t25, ptr %l14
  br label %bb8
bb6:
  %t26 = load i32, ptr %l17, !tbaa !23
  %t27 = ashr i32 %t26, 16
  %t29 = icmp eq i32 %t27, 1
  store i1 %t29, ptr %l19, !tbaa !21
  br label %bb7
bb7:
  br label %bb32
bb8:
  %t30 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l14
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t30, ptr %l3
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/check:Checker", ptr %t31, i32 0, i32 28
  %t34 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l3
  %t37 = call { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H3cc70d507a7fc767d013b59b12ee0a99(ptr %v0, ptr %t33, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t34)
  %t38 = extractvalue { i32, i32 } %t37, 1
  %t39 = extractvalue { i32, i32 } %t37, 0
  store i32 %t39, ptr %l25
  %t40 = icmp ne i32 %t39, 0
  br i1 %t40, label %bb10, label %ok.41, !prof !99
ok.41:
  store i32 %t38, ptr %l24
  br label %bb9
bb9:
  %t42 = load i32, ptr %l24, !tbaa !23
  store i32 %t42, ptr %l20, !tbaa !23
  br label %bb12
bb10:
  br label %bb11
bb11:
  %t43 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t43, ptr %l20, !tbaa !23
  br label %bb12
bb12:
  %t45 = load i32, ptr %l20, !tbaa !23
  store i32 %t45, ptr %l4, !tbaa !23
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/check:Checker", ptr %t46, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !29
  %t50 = getelementptr %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l3, i32 0, i32 0
  %t51 = load i64, ptr %t50, !tbaa !24
  %t52 = getelementptr %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l3, i32 0, i32 1
  %t53 = load i64, ptr %t52, !tbaa !24
  %t55 = trunc i64 %t53 to i32
  %t60 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eGlobalDecl(ptr %v0, ptr %v0, ptr %t49, i64 %t51, i32 %t55)
  store ptr %t60, ptr %l33
  br label %bb13
bb13:
  %t61 = load ptr, ptr %l33, !tbaa !29
  store ptr %t61, ptr %l5, !tbaa !29
  %t62 = load ptr, ptr %l5, !tbaa !29
  %t64 = icmp eq ptr %t62, null
  %t66 = xor i1 %t64, true
  br i1 %t66, label %bb14, label %bb15
bb14:
  %t68 = load ptr, ptr %l5, !tbaa !29
  %t70 = getelementptr %"compiler/ast:VarDecl", ptr %t68, i32 0, i32 2
  %t71 = load ptr, ptr %t70, !tbaa !29
  %t73 = call i1 @compiler_2fgeneric_2eWrittenMut(ptr %v0, ptr %t71)
  store i1 %t73, ptr %l40
  br label %bb16
bb15:
  store i1 false, ptr %l37, !tbaa !21
  br label %bb17
bb16:
  %t74 = load i1, ptr %l40, !tbaa !21
  store i1 %t74, ptr %l37, !tbaa !21
  br label %bb17
bb17:
  %t75 = load i1, ptr %l37, !tbaa !21
  br i1 %t75, label %bb18, label %bb19
bb18:
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t77 = load i32, ptr %l4, !tbaa !23
  %t80 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2escalarType(ptr %v0, ptr %t76, i32 %t77)
  store i1 %t80, ptr %l44
  br label %bb20
bb19:
  store i1 false, ptr %l41, !tbaa !21
  br label %bb21
bb20:
  %t81 = load i1, ptr %l44, !tbaa !21
  %t82 = xor i1 %t81, true
  store i1 %t82, ptr %l41, !tbaa !21
  br label %bb21
bb21:
  %t84 = load i1, ptr %l41, !tbaa !21
  br i1 %t84, label %bb22, label %bb23
bb22:
  store i1 true, ptr %l46, !tbaa !21
  br label %bb25
bb23:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = getelementptr %"compiler/check:Checker", ptr %t85, i32 0, i32 1
  %t88 = load ptr, ptr %t87, !tbaa !29
  %t90 = getelementptr %"compiler/generic:Program", ptr %t88, i32 0, i32 2
  %t91 = load i32, ptr %l4, !tbaa !23
  %t94 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReachesWrite(ptr %v0, ptr %t90, i32 %t91)
  store i1 %t94, ptr %l51
  br label %bb24
bb24:
  %t95 = load i1, ptr %l51, !tbaa !21
  store i1 %t95, ptr %l46, !tbaa !21
  br label %bb25
bb25:
  %t96 = load i1, ptr %l46, !tbaa !21
  %t97 = xor i1 %t96, true
  br i1 %t97, label %bb26, label %bb27
bb26:
  br label %bb31
bb27:
  br label %bb28
bb28:
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t101 = getelementptr %"compiler/check:Checker", ptr %t99, i32 0, i32 1
  %t102 = load ptr, ptr %t101, !tbaa !29
  %t104 = getelementptr %"compiler/generic:Program", ptr %t102, i32 0, i32 0
  %t105 = load ptr, ptr %t104, !tbaa !29
  %t107 = getelementptr %"compiler/load:Loader", ptr %t105, i32 0, i32 9
  %t108 = load i32, ptr %l4, !tbaa !23
  %t110 = sext i32 %t108 to i64
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t107, i64 %t110)
  br label %bb29
bb29:
  %t113 = getelementptr %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l3, i32 0, i32 0
  %t114 = load i64, ptr %t113, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l1, i64 %t114)
  br label %bb30
bb30:
  br label %bb31
bb31:
  br label %bb4
bb32:
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t119 = getelementptr %"compiler/check:Checker", ptr %t117, i32 0, i32 1
  %t120 = load ptr, ptr %t119, !tbaa !29
  %t122 = getelementptr %"compiler/generic:Program", ptr %t120, i32 0, i32 3
  store ptr %t122, ptr %l63, !tbaa !29
  %t123 = load { i64, ptr }, ptr @G_2ecompiler_2ftyped_2eMutGlobalsFact, !tbaa !27
  store { i64, ptr } %t123, ptr %l64, !tbaa !27
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t127 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emutGlobalsValue(ptr %v0, ptr %s0, ptr %s0, ptr %t124, ptr %l1)
  store { i64, ptr } %t127, ptr %l67
  br label %bb33
bb33:
  %t128 = load { i64, ptr }, ptr %l67, !tbaa !27
  %t129 = extractvalue { i64, ptr } %t128, 0
  %t130 = extractvalue { i64, ptr } %t128, 1
  %t131 = mul i64 %t129, 1
  %t132 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t131)
  call void @llvm.memcpy.p0.p0.i64(ptr %t132, ptr %t130, i64 %t131, i1 false)
  %t133 = insertvalue { i64, ptr } undef, i64 %t129, 0
  %t134 = insertvalue { i64, ptr } %t133, ptr %t132, 1
  %t135 = load ptr, ptr @__olang_prog_scope
  %t136 = load ptr, ptr %l63, !tbaa !29
  %t137 = load { i64, ptr }, ptr %l64, !tbaa !27
  call void @compiler_2ffacts_2ecompiler_2ffacts_3aTable_2eDecide(ptr %v0, ptr %t135, ptr %s0, ptr %t136, { i64, ptr } %t137, { i64, ptr } %t134, i1 false)
  br label %bb34
bb34:
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t141 = getelementptr %"compiler/check:Checker", ptr %t139, i32 0, i32 1
  %t142 = load ptr, ptr %t141, !tbaa !29
  %t144 = getelementptr %"compiler/generic:Program", ptr %t142, i32 0, i32 0
  %t145 = load ptr, ptr %t144, !tbaa !29
  %t147 = getelementptr %"compiler/load:Loader", ptr %t145, i32 0, i32 9
  %t149 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t147)
  store i64 %t149, ptr %l73
  br label %bb35
bb35:
  %t150 = load i64, ptr %l73, !tbaa !24
  %t151 = icmp sgt i64 %t150, 0
  call void @__olang_scope_close(ptr %s0)
  store i1 %t151, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enamedHolds(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l11 = alloca i64
  %l14 = alloca i64
  %l36 = alloca i32
  %l44 = alloca i32
  %l49 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  store i64 8, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t1 = load i64, ptr %l3, !tbaa !24
  %t2 = load i64, ptr %l2, !tbaa !24
  %t5 = icmp sgt i64 %t1, %t2
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load i64, ptr %l4, !tbaa !24
  %t9 = icmp sgt i64 %t7, 0
  br i1 %t9, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l11, !tbaa !24
  br label %bb6
bb3:
  %t11 = load i64, ptr %l3, !tbaa !24
  %t12 = load i64, ptr %l2, !tbaa !24
  %t15 = sub i64 %t11, %t12
  %t16 = load i64, ptr %l4, !tbaa !24
  %t19 = add i64 %t15, %t16
  %t21 = sub i64 %t19, 1
  %t22 = load i64, ptr %l4, !tbaa !24
  %t25 = sdiv i64 %t21, %t22
  store i64 %t25, ptr %l14, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l14, !tbaa !24
  br label %bb5
bb5:
  %t27 = load i64, ptr %l14, !tbaa !24
  store i64 %t27, ptr %l11, !tbaa !24
  br label %bb6
bb6:
  %t28 = load i64, ptr %l11, !tbaa !24
  store i64 %t28, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb7
bb7:
  %t29 = load i64, ptr %l6, !tbaa !24
  %t30 = load i64, ptr %l5, !tbaa !24
  %t33 = icmp slt i64 %t29, %t30
  %t35 = xor i1 %t33, true
  br i1 %t35, label %bb8, label %bb9
bb8:
  br label %bb17
bb9:
  br label %bb10
bb10:
  %t37 = load i64, ptr %l2, !tbaa !24
  %t38 = load i64, ptr %l6, !tbaa !24
  %t39 = load i64, ptr %l4, !tbaa !24
  %t42 = mul i64 %t38, %t39
  %t45 = add i64 %t37, %t42
  store i64 %t45, ptr %l7, !tbaa !24
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/check:Checker", ptr %t47, i32 0, i32 1
  %t50 = load ptr, ptr %t49, !tbaa !29
  %t52 = getelementptr %"compiler/generic:Program", ptr %t50, i32 0, i32 2
  %t53 = load i32, ptr %l1, !tbaa !23
  %t56 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t52, i32 %t53)
  store i32 %t56, ptr %l36
  br label %bb11
bb11:
  %t57 = load i32, ptr %l36, !range !{i32 0, i32 33}
  %t59 = trunc i64 19 to i32
  %t60 = icmp eq i32 %t57, %t59
  %t62 = xor i1 %t60, true
  br i1 %t62, label %bb12, label %bb13
bb12:
  br label %bb17
bb13:
  br label %bb14
bb14:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/check:Checker", ptr %t64, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !29
  %t69 = getelementptr %"compiler/generic:Program", ptr %t67, i32 0, i32 2
  %t70 = load i32, ptr %l1, !tbaa !23
  %t73 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t69, i32 %t70)
  store i32 %t73, ptr %l44
  br label %bb15
bb15:
  %t74 = load i32, ptr %l44, !tbaa !23
  store i32 %t74, ptr %l1, !tbaa !23
  br label %bb16
bb16:
  %t75 = load i64, ptr %l6, !tbaa !24
  %t77 = add i64 %t75, 1
  store i64 %t77, ptr %l6, !tbaa !24
  br label %bb7
bb17:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t80 = load i32, ptr %l1, !tbaa !23
  %t83 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eholdsWritable(ptr %v0, ptr %t79, i32 %t80)
  store i1 %t83, ptr %l49
  br label %bb18
bb18:
  %t84 = load i1, ptr %l49, !tbaa !21
  store i1 %t84, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enamedPackedWhat(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l4 = alloca i1
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca { i64, ptr }
  %l11 = alloca i1
  %l13 = alloca { i64, ptr }
  %l14 = alloca { i64, ptr }
  %l15 = alloca i64
  %l16 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l19 = alloca i64
  %l20 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisStruct(ptr %v0, ptr %t1, i32 %t2)
  store i1 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i1, ptr %l4, !tbaa !21
  br i1 %t6, label %bb2, label %bb3
bb2:
  store { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d20, i32 0, i32 1) }, ptr %l5, !tbaa !27
  %t7 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t7, ptr %l6, !tbaa !27
  %t8 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t8, 0
  store i64 %t9, ptr %l7, !tbaa !24
  %t10 = load i64, ptr %l7, !tbaa !24
  %t11 = mul i64 %t10, 1
  %t12 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t11)
  %t13 = insertvalue { i64, ptr } undef, i64 %t10, 0
  %t14 = insertvalue { i64, ptr } %t13, ptr %t12, 1
  store { i64, ptr } %t14, ptr %l8, !tbaa !27
  %t15 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !27
  %t17 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t18 = load ptr, ptr %t17, !tbaa !27
  %t19 = load i64, ptr %l7, !tbaa !24
  %t20 = mul i64 %t19, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t16, ptr %t18, i64 %t20, i1 false)
  %t21 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t21, ptr %l6, !tbaa !27
  %t22 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t22, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load i32, ptr %l1, !tbaa !23
  %t27 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisEnum(ptr %v0, ptr %t23, i32 %t24)
  store i1 %t27, ptr %l11
  br label %bb5
bb5:
  %t28 = load i1, ptr %l11, !tbaa !21
  %t29 = xor i1 %t28, true
  br i1 %t29, label %bb6, label %bb7
bb6:
  store { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d21, i32 0, i32 1) }, ptr %l13, !tbaa !27
  %t31 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t31, ptr %l14, !tbaa !27
  %t32 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t33 = extractvalue { i64, ptr } %t32, 0
  store i64 %t33, ptr %l15, !tbaa !24
  %t34 = load i64, ptr %l15, !tbaa !24
  %t35 = mul i64 %t34, 1
  %t36 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t35)
  %t37 = insertvalue { i64, ptr } undef, i64 %t34, 0
  %t38 = insertvalue { i64, ptr } %t37, ptr %t36, 1
  store { i64, ptr } %t38, ptr %l16, !tbaa !27
  %t39 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !27
  %t41 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t42 = load ptr, ptr %t41, !tbaa !27
  %t43 = load i64, ptr %l15, !tbaa !24
  %t44 = mul i64 %t43, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t40, ptr %t42, i64 %t44, i1 false)
  %t45 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t45, ptr %l14, !tbaa !27
  %t46 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t46, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  store { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d22, i32 0, i32 1) }, ptr %l17, !tbaa !27
  %t47 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t47, ptr %l18, !tbaa !27
  %t48 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t49 = extractvalue { i64, ptr } %t48, 0
  store i64 %t49, ptr %l19, !tbaa !24
  %t50 = load i64, ptr %l19, !tbaa !24
  %t51 = mul i64 %t50, 1
  %t52 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t51)
  %t53 = insertvalue { i64, ptr } undef, i64 %t50, 0
  %t54 = insertvalue { i64, ptr } %t53, ptr %t52, 1
  store { i64, ptr } %t54, ptr %l20, !tbaa !27
  %t55 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t56 = load ptr, ptr %t55, !tbaa !27
  %t57 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t58 = load ptr, ptr %t57, !tbaa !27
  %t59 = load i64, ptr %l19, !tbaa !24
  %t60 = mul i64 %t59, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t56, ptr %t58, i64 %t60, i1 false)
  %t61 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t61, ptr %l18, !tbaa !27
  %t62 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t62, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enarrow(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i64 %a2, i64 %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca i64
  %l3 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca i64
  %l9 = alloca { i64, ptr }
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l13 = alloca ptr
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca ptr
  %l23 = alloca ptr
  %l26 = alloca i32
  %l29 = alloca i32
  %l32 = alloca i64
  %l35 = alloca ptr
  %l38 = alloca ptr
  %l43 = alloca i32
  %l44 = alloca i32
  %l45 = alloca { i64, ptr }
  %l59 = alloca i1
  %l60 = alloca %"compiler/source:Span"
  %l61 = alloca i32
  %l65 = alloca ptr
  %l70 = alloca ptr
  %l75 = alloca i32
  %l76 = alloca { i64, ptr }
  %l77 = alloca { i64, ptr }
  %l80 = alloca %"compiler/source:Span"
  %l81 = alloca i32
  %l85 = alloca %"compiler/typed:Payload"
  %l94 = alloca i64
  %l97 = alloca i64
  %l117 = alloca { i64, ptr }
  %l122 = alloca i64
  %l126 = alloca { i64, ptr }
  %l133 = alloca ptr
  %l151 = alloca ptr
  %l157 = alloca %"compiler/check:narrowed"
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %t64 = alloca { i64, [4 x i64] }, align 8
  %t94 = alloca { i64, [4 x i64] }, align 8
  %t144 = alloca { i64, [4 x i64] }, align 8
  %t216 = alloca { i64, [1 x i64] }, align 8
  %t238 = alloca { i64, [4 x i64] }, align 8
  %t270 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store i64 %a2, ptr %l2
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t1)
  store ptr %t3, ptr %l23
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l23, !tbaa !29
  store ptr %t4, ptr %l5, !tbaa !29
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t6 = load i64, ptr %l2, !tbaa !24
  %t9 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalType(ptr %v0, ptr %t5, i64 %t6)
  store i32 %t9, ptr %l26
  br label %bb2
bb2:
  %t10 = load i32, ptr %l26, !tbaa !23
  store i32 %t10, ptr %l6, !tbaa !23
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load i32, ptr %l6, !tbaa !23
  %t15 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t11, i32 %t12)
  store i32 %t15, ptr %l29
  br label %bb3
bb3:
  %t16 = load i32, ptr %l29, !tbaa !23
  store i32 %t16, ptr %l7, !tbaa !23
  %t17 = load ptr, ptr %l5, !tbaa !29
  %t19 = getelementptr %"compiler/check:frame", ptr %t17, i32 0, i32 47
  %t21 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t19)
  store i64 %t21, ptr %l32
  br label %bb4
bb4:
  %t22 = load i64, ptr %l32, !tbaa !24
  store i64 %t22, ptr %l8, !tbaa !24
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/check:Checker", ptr %t23, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !29
  %t28 = getelementptr %"compiler/generic:Program", ptr %t26, i32 0, i32 2
  store ptr %t28, ptr %l35, !tbaa !29
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/check:Checker", ptr %t29, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !29
  %t34 = getelementptr %"compiler/generic:Program", ptr %t32, i32 0, i32 2
  store ptr %t34, ptr %l38, !tbaa !29
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/check:Checker", ptr %t35, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !29
  %t39 = load i32, ptr %l7, !tbaa !23
  %t40 = load i64, ptr %l3, !tbaa !24
  %t44 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCaseSig(ptr %v0, ptr %t38, i32 %t39, i64 %t40)
  store i32 %t44, ptr %l43
  br label %bb5
bb5:
  %t45 = load ptr, ptr %l38, !tbaa !29
  %t46 = load i32, ptr %l43, !tbaa !23
  %t47 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t45, i32 %t46)
  store i32 %t47, ptr %l44
  br label %bb6
bb6:
  %t48 = load ptr, ptr %l35, !tbaa !29
  %t49 = load i32, ptr %l44, !tbaa !23
  %t50 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t48, i32 %t49)
  store { i64, ptr } %t50, ptr %l45
  br label %bb7
bb7:
  %t51 = load { i64, ptr }, ptr %l45, !tbaa !27
  store { i64, ptr } %t51, ptr %l9, !tbaa !27
  %t52 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t54 = extractvalue { i64, ptr } %t52, 0
  %t56 = icmp sgt i64 %t54, 0
  br i1 %t56, label %bb8, label %bb9
bb8:
  store %olang.scope zeroinitializer, ptr %s1
  %t58 = load %"compiler/source:Span", ptr %l1
  %t59 = load i32, ptr %l6, !tbaa !23
  %t60 = load i64, ptr %l2, !tbaa !24
  %t62 = trunc i64 %t60 to i32
  store { i64, [4 x i64] } zeroinitializer, ptr %t64
  %t65 = getelementptr { i64, [4 x i64] }, ptr %t64, i32 0, i32 0
  store i64 0, ptr %t65
  %t67 = insertvalue { %"compiler/source:Span", i32, i32 } undef, %"compiler/source:Span" %t58, 0
  %t69 = insertvalue { %"compiler/source:Span", i32, i32 } %t67, i32 %t59, 1
  %t71 = insertvalue { %"compiler/source:Span", i32, i32 } %t69, i32 %t62, 2
  %t72 = getelementptr { i64, [4 x i64] }, ptr %t64, i32 0, i32 1
  store { %"compiler/source:Span", i32, i32 } %t71, ptr %t72
  %t73 = load { i64, [4 x i64] }, ptr %t64
  %t75 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store { i64, [4 x i64] } %t73, ptr %t75
  store ptr %t75, ptr %l10, !tbaa !29
  %t77 = load ptr, ptr %l10, !tbaa !29
  store ptr %t77, ptr %l11, !tbaa !29
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t80 = load i32, ptr %l6, !tbaa !23
  %t83 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t79, i32 %t80)
  store i1 %t83, ptr %l59
  br label %bb10
bb9:
  br label %bb35
bb10:
  %t84 = load i1, ptr %l59, !tbaa !21
  br i1 %t84, label %bb11, label %bb12
bb11:
  %t85 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t85, ptr %l60
  %t86 = load i32, ptr %l7, !tbaa !23
  store i32 %t86, ptr %l61, !tbaa !23
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t88 = load %"compiler/source:Span", ptr %l1
  %t89 = load ptr, ptr %l10, !tbaa !29
  %t93 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v0, ptr %v0, ptr %t87, %"compiler/source:Span" %t88, ptr %t89)
  store ptr %t93, ptr %l65
  br label %bb13
bb12:
  br label %bb14
bb13:
  store { i64, [4 x i64] } zeroinitializer, ptr %t94
  %t95 = getelementptr { i64, [4 x i64] }, ptr %t94, i32 0, i32 0
  store i64 2, ptr %t95
  %t96 = load %"compiler/source:Span", ptr %l60
  %t97 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t96, 0
  %t98 = load i32, ptr %l61, !tbaa !23
  %t99 = insertvalue { %"compiler/source:Span", i32, ptr } %t97, i32 %t98, 1
  %t100 = load ptr, ptr %l65, !tbaa !29
  %t101 = insertvalue { %"compiler/source:Span", i32, ptr } %t99, ptr %t100, 2
  %t102 = getelementptr { i64, [4 x i64] }, ptr %t94, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t101, ptr %t102
  %t103 = load { i64, [4 x i64] }, ptr %t94
  %t105 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store { i64, [4 x i64] } %t103, ptr %t105
  store ptr %t105, ptr %l11, !tbaa !29
  br label %bb14
bb14:
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t109 = getelementptr %"compiler/check:Checker", ptr %t107, i32 0, i32 1
  %t110 = load ptr, ptr %t109, !tbaa !29
  %t112 = getelementptr %"compiler/generic:Program", ptr %t110, i32 0, i32 2
  store ptr %t112, ptr %l70, !tbaa !29
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t115 = getelementptr %"compiler/check:Checker", ptr %t113, i32 0, i32 1
  %t116 = load ptr, ptr %t115, !tbaa !29
  %t118 = getelementptr %"compiler/generic:Program", ptr %t116, i32 0, i32 2
  %t119 = load i32, ptr %l7, !tbaa !23
  %t122 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %t118, i32 %t119)
  store i32 %t122, ptr %l75
  br label %bb15
bb15:
  %t123 = load ptr, ptr %l70, !tbaa !29
  %t124 = load i32, ptr %l75, !tbaa !23
  %t125 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s1, ptr %t123, i32 %t124)
  store { i64, ptr } %t125, ptr %l76
  br label %bb16
bb16:
  %t126 = load { i64, ptr }, ptr %l76, !tbaa !27
  store { i64, ptr } %t126, ptr %l77, !tbaa !27
  %t127 = load i64, ptr %l3, !tbaa !24
  %t129 = getelementptr { i64, ptr }, ptr %l77, i32 0, i32 1
  %t130 = load ptr, ptr %t129, !tbaa !27
  %t131 = getelementptr i32, ptr %t130, i64 %t127
  %t132 = load i32, ptr %t131, !tbaa !33
  %t134 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t134, ptr %l80
  store i32 %t132, ptr %l81, !tbaa !23
  %t136 = load ptr, ptr %l11, !tbaa !29
  %t137 = load i64, ptr %l3, !tbaa !24
  %t141 = call %"compiler/typed:Payload" @compiler_2ftyped_3aPayload_2ector(ptr %v0, ptr %v0, ptr %t136, i64 %t137, i32 0)
  store %"compiler/typed:Payload" %t141, ptr %l85
  br label %bb17
bb17:
  %t142 = load %"compiler/typed:Payload", ptr %l85
  %t143 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 24, i64 8)
  store %"compiler/typed:Payload" %t142, ptr %t143
  store { i64, [4 x i64] } zeroinitializer, ptr %t144
  %t145 = getelementptr { i64, [4 x i64] }, ptr %t144, i32 0, i32 0
  store i64 5, ptr %t145
  %t146 = load %"compiler/source:Span", ptr %l80
  %t147 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t146, 0
  %t148 = load i32, ptr %l81, !tbaa !23
  %t149 = insertvalue { %"compiler/source:Span", i32, ptr } %t147, i32 %t148, 1
  %t151 = insertvalue { %"compiler/source:Span", i32, ptr } %t149, ptr %t143, 2
  %t152 = getelementptr { i64, [4 x i64] }, ptr %t144, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t151, ptr %t152
  %t153 = load { i64, [4 x i64] }, ptr %t144
  %t155 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store { i64, [4 x i64] } %t153, ptr %t155
  store ptr %t155, ptr %l13, !tbaa !29
  store i64 0, ptr %l14, !tbaa !24
  %t157 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t159 = extractvalue { i64, ptr } %t157, 0
  store i64 %t159, ptr %l15, !tbaa !24
  store i64 1, ptr %l16, !tbaa !24
  %t161 = load i64, ptr %l15, !tbaa !24
  %t162 = load i64, ptr %l14, !tbaa !24
  %t165 = icmp sgt i64 %t161, %t162
  br i1 %t165, label %bb18, label %bb19
bb18:
  %t167 = load i64, ptr %l16, !tbaa !24
  %t169 = icmp sgt i64 %t167, 0
  br i1 %t169, label %bb20, label %bb21
bb19:
  store i64 0, ptr %l94, !tbaa !24
  br label %bb23
bb20:
  %t171 = load i64, ptr %l15, !tbaa !24
  %t172 = load i64, ptr %l14, !tbaa !24
  %t175 = sub i64 %t171, %t172
  %t176 = load i64, ptr %l16, !tbaa !24
  %t179 = add i64 %t175, %t176
  %t181 = sub i64 %t179, 1
  %t182 = load i64, ptr %l16, !tbaa !24
  %t185 = sdiv i64 %t181, %t182
  store i64 %t185, ptr %l97, !tbaa !24
  br label %bb22
bb21:
  store i64 0, ptr %l97, !tbaa !24
  br label %bb22
bb22:
  %t187 = load i64, ptr %l97, !tbaa !24
  store i64 %t187, ptr %l94, !tbaa !24
  br label %bb23
bb23:
  %t188 = load i64, ptr %l94, !tbaa !24
  store i64 %t188, ptr %l17, !tbaa !24
  store i64 0, ptr %l18, !tbaa !24
  br label %bb24
bb24:
  %t189 = load i64, ptr %l18, !tbaa !24
  %t190 = load i64, ptr %l17, !tbaa !24
  %t193 = icmp slt i64 %t189, %t190
  %t195 = xor i1 %t193, true
  br i1 %t195, label %bb25, label %bb26
bb25:
  br label %bb34
bb26:
  br label %bb27
bb27:
  %t197 = load i64, ptr %l14, !tbaa !24
  %t198 = load i64, ptr %l18, !tbaa !24
  %t199 = load i64, ptr %l16, !tbaa !24
  %t202 = mul i64 %t198, %t199
  %t205 = add i64 %t197, %t202
  store i64 %t205, ptr %l19, !tbaa !24
  %t207 = load ptr, ptr %l0, !tbaa !29
  %t208 = load %"compiler/source:Span", ptr %l1
  %t209 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t209, ptr %l117, !tbaa !27
  %t210 = load i64, ptr %l19, !tbaa !24
  %t212 = getelementptr { i64, ptr }, ptr %l117, i32 0, i32 1
  %t213 = load ptr, ptr %t212, !tbaa !27
  %t214 = getelementptr i32, ptr %t213, i64 %t210
  %t215 = load i32, ptr %t214, !tbaa !33
  store { i64, [1 x i64] } zeroinitializer, ptr %t216
  %t217 = getelementptr { i64, [1 x i64] }, ptr %t216, i32 0, i32 0
  store i64 4, ptr %t217
  %t218 = load { i64, [1 x i64] }, ptr %t216
  %t224 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocal(ptr %v0, ptr %t207, i32 0, %"compiler/source:Span" %t208, i32 %t215, i32 4, { i64, [1 x i64] } %t218)
  store i64 %t224, ptr %l122
  br label %bb28
bb28:
  %t225 = load i64, ptr %l122, !tbaa !24
  store i64 %t225, ptr %l20, !tbaa !24
  %t226 = load ptr, ptr %l0, !tbaa !29
  %t227 = load %"compiler/source:Span", ptr %l1
  %t228 = load %"compiler/source:Span", ptr %l1
  %t229 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t229, ptr %l126, !tbaa !27
  %t230 = load i64, ptr %l19, !tbaa !24
  %t232 = getelementptr { i64, ptr }, ptr %l126, i32 0, i32 1
  %t233 = load ptr, ptr %t232, !tbaa !27
  %t234 = getelementptr i32, ptr %t233, i64 %t230
  %t235 = load i32, ptr %t234, !tbaa !33
  %t236 = load ptr, ptr %l13, !tbaa !29
  %t237 = load i64, ptr %l19, !tbaa !24
  store { i64, [4 x i64] } zeroinitializer, ptr %t238
  %t239 = getelementptr { i64, [4 x i64] }, ptr %t238, i32 0, i32 0
  store i64 3, ptr %t239
  %t241 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } undef, %"compiler/source:Span" %t228, 0
  %t243 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t241, i32 %t235, 1
  %t245 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t243, ptr %t236, 2
  %t247 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t245, i64 %t237, 3
  %t248 = getelementptr { i64, [4 x i64] }, ptr %t238, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr, i64 } %t247, ptr %t248
  %t249 = load { i64, [4 x i64] }, ptr %t238
  %t251 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store { i64, [4 x i64] } %t249, ptr %t251
  %t255 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v0, ptr %v0, ptr %t226, %"compiler/source:Span" %t227, ptr %t251)
  store ptr %t255, ptr %l133
  br label %bb29
bb29:
  %t256 = load ptr, ptr %l133, !tbaa !29
  store ptr %t256, ptr %l21, !tbaa !29
  %t257 = load ptr, ptr %l0, !tbaa !29
  %t258 = load i64, ptr %l20, !tbaa !24
  %t259 = load ptr, ptr %l21, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroLet(ptr %v0, ptr %v0, ptr %t257, i64 %t258, ptr %t259)
  br label %bb30
bb30:
  %t263 = load ptr, ptr %l0, !tbaa !29
  %t264 = load %"compiler/source:Span", ptr %l1
  %t265 = load i64, ptr %l20, !tbaa !24
  %t267 = trunc i64 %t265 to i32
  %t269 = load ptr, ptr %l21, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t270
  %t271 = getelementptr { i64, [3 x i64] }, ptr %t270, i32 0, i32 0
  store i64 0, ptr %t271
  %t273 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t264, 0
  %t275 = insertvalue { %"compiler/source:Span", i32, ptr } %t273, i32 %t267, 1
  %t277 = insertvalue { %"compiler/source:Span", i32, ptr } %t275, ptr %t269, 2
  %t278 = getelementptr { i64, [3 x i64] }, ptr %t270, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t277, ptr %t278
  %t279 = load { i64, [3 x i64] }, ptr %t270
  %t281 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t279, ptr %t281
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t263, ptr %t281)
  br label %bb31
bb31:
  %t284 = load ptr, ptr %l5, !tbaa !29
  %t286 = getelementptr %"compiler/check:frame", ptr %t284, i32 0, i32 47
  %t287 = load i64, ptr %l20, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t286, i64 %t287)
  br label %bb32
bb32:
  br label %bb33
bb33:
  %t290 = load i64, ptr %l18, !tbaa !24
  %t292 = add i64 %t290, 1
  store i64 %t292, ptr %l18, !tbaa !24
  br label %bb24
bb34:
  call void @__olang_scope_close(ptr %s1)
  br label %bb35
bb35:
  %t294 = load ptr, ptr %l5, !tbaa !29
  %t296 = getelementptr %"compiler/check:frame", ptr %t294, i32 0, i32 46
  store ptr %t296, ptr %l151, !tbaa !29
  %t297 = load i64, ptr %l2, !tbaa !24
  %t298 = load i64, ptr %l3, !tbaa !24
  %t299 = load i32, ptr %l7, !tbaa !23
  %t300 = load i64, ptr %l8, !tbaa !24
  %t307 = call %"compiler/check:narrowed" @compiler_2fcheck_3anarrowed_2ector(ptr %s0, i64 %t297, i64 %t298, i32 %t299, i64 %t300, i64 %a4, i1 false)
  store %"compiler/check:narrowed" %t307, ptr %l157
  br label %bb36
bb36:
  %t308 = load ptr, ptr %l151, !tbaa !29
  %t309 = load %"compiler/check:narrowed", ptr %l157
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anarrowed_3e_2ePush_3ccompiler_2fcheck_3anarrowed_3e(ptr %v0, ptr %t308, %"compiler/check:narrowed" %t309)
  br label %bb37
bb37:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eneedsCopy(ptr %v0, ptr %a0, i64 %a1, %"compiler/source:Span" %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca %"compiler/generic:Origin"
  %l5 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca { i64, ptr }
  %l13 = alloca %"compiler/generic:Origin"
  %l14 = alloca ptr
  %l16 = alloca ptr
  %l20 = alloca i64
  %l21 = alloca ptr
  %l24 = alloca { i64, ptr }
  %l28 = alloca i32
  %l32 = alloca ptr
  %l38 = alloca { i64, [3 x i64] }
  %l39 = alloca { i64, ptr }
  %l42 = alloca { i64, ptr }
  %l44 = alloca %"compiler/diagmsg:Msg"
  %l45 = alloca i64
  %l47 = alloca i64
  %l50 = alloca { i64, ptr }
  %l51 = alloca ptr
  %l53 = alloca ptr
  %l57 = alloca i64
  %l58 = alloca ptr
  %l61 = alloca { i64, ptr }
  %l66 = alloca ptr
  %l67 = alloca i64
  %l70 = alloca { i64, [3 x i64] }
  %l72 = alloca %"compiler/diagmsg:Msg"
  %s0 = alloca %olang.scope
  %t64 = alloca { i64, [3 x i64] }, align 8
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
  %t8 = call %"compiler/generic:Origin" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceOrigin(ptr %v0, ptr %t4, i64 %t5)
  store %"compiler/generic:Origin" %t8, ptr %l13
  br label %bb1
bb1:
  %t9 = load %"compiler/generic:Origin", ptr %l13
  store %"compiler/generic:Origin" %t9, ptr %l4
  %t10 = load ptr, ptr %l0, !tbaa !29
  store ptr %t10, ptr %l14, !tbaa !29
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/check:Checker", ptr %t11, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !29
  store ptr %t14, ptr %l16, !tbaa !29
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/check:Checker", ptr %t15, i32 0, i32 1
  %t18 = load ptr, ptr %t17, !tbaa !29
  %t19 = load i64, ptr %l1, !tbaa !24
  %t22 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %t18, i64 %t19)
  store i64 %t22, ptr %l20
  br label %bb2
bb2:
  %t23 = load ptr, ptr %l16, !tbaa !29
  %t24 = load i64, ptr %l20, !tbaa !24
  %t25 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %s0, ptr %t23, i64 %t24)
  store ptr %t25, ptr %l21
  br label %bb3
bb3:
  %t26 = load ptr, ptr %l21, !tbaa !29
  %t28 = getelementptr %"compiler/ast:Func", ptr %t26, i32 0, i32 2
  %t29 = load i32, ptr %t28, !tbaa !23
  %t30 = load ptr, ptr %l14, !tbaa !29
  %t32 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t30, i32 %t29)
  store { i64, ptr } %t32, ptr %l24
  br label %bb4
bb4:
  %t33 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t33, ptr %l5, !tbaa !27
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t35 = load i64, ptr %l1, !tbaa !24
  %t40 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euniqueArg(ptr %v0, ptr %t34, i64 %t35, i32 %a3)
  store i32 %t40, ptr %l28
  br label %bb5
bb5:
  %t41 = load i32, ptr %l28, !tbaa !23
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/check:Checker", ptr %t42, i32 0, i32 1
  %t45 = load ptr, ptr %t44, !tbaa !29
  %t47 = getelementptr %"compiler/generic:Program", ptr %t45, i32 0, i32 0
  %t48 = load ptr, ptr %t47, !tbaa !29
  %t50 = getelementptr %"compiler/load:Loader", ptr %t48, i32 0, i32 4
  %t51 = load ptr, ptr %t50, !tbaa !29
  store ptr %t51, ptr %l32, !tbaa !29
  %t52 = getelementptr %"compiler/generic:Origin", ptr %l4, i32 0, i32 0
  %t53 = load i64, ptr %t52, !tbaa !24
  %t54 = getelementptr %"compiler/generic:Origin", ptr %l4, i32 0, i32 1
  %t55 = getelementptr %"compiler/source:Span", ptr %t54, i32 0, i32 0
  %t56 = load i32, ptr %t55, !tbaa !23
  %t58 = sext i32 %t56 to i64
  %t59 = getelementptr %"compiler/generic:Origin", ptr %l4, i32 0, i32 1
  %t60 = getelementptr %"compiler/source:Span", ptr %t59, i32 0, i32 1
  %t61 = load i32, ptr %t60, !tbaa !23
  %t63 = sext i32 %t61 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t64
  %t65 = getelementptr { i64, [3 x i64] }, ptr %t64, i32 0, i32 0
  store i64 3, ptr %t65
  %t67 = insertvalue { i64, i64, i64 } undef, i64 %t53, 0
  %t69 = insertvalue { i64, i64, i64 } %t67, i64 %t58, 1
  %t71 = insertvalue { i64, i64, i64 } %t69, i64 %t63, 2
  %t72 = getelementptr { i64, [3 x i64] }, ptr %t64, i32 0, i32 1
  store { i64, i64, i64 } %t71, ptr %t72
  %t73 = load { i64, [3 x i64] }, ptr %t64
  store { i64, [3 x i64] } %t73, ptr %l38
  %t74 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t74, ptr %l39, !tbaa !27
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t79 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t75, i32 %t41)
  store { i64, ptr } %t79, ptr %l42
  br label %bb6
bb6:
  %t80 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t81 = extractvalue { i64, ptr } %t80, 0
  %t82 = extractvalue { i64, ptr } %t80, 1
  %t83 = mul i64 %t81, 1
  %t84 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t83)
  call void @llvm.memcpy.p0.p0.i64(ptr %t84, ptr %t82, i64 %t83, i1 false)
  %t85 = insertvalue { i64, ptr } undef, i64 %t81, 0
  %t86 = insertvalue { i64, ptr } %t85, ptr %t84, 1
  %t87 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t89 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUniqueNeedsCopy(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t87, { i64, ptr } %t86)
  store %"compiler/diagmsg:Msg" %t89, ptr %l44
  br label %bb7
bb7:
  %t90 = load ptr, ptr %l32, !tbaa !29
  %t91 = load { i64, [3 x i64] }, ptr %l38
  %t92 = load %"compiler/diagmsg:Msg", ptr %l44
  %t93 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrorBare(ptr %v0, ptr %v0, ptr %t90, { i64, [3 x i64] } %t91, %"compiler/diagmsg:Msg" %t92)
  store i64 %t93, ptr %l45
  br label %bb8
bb8:
  %t94 = load i64, ptr %l45, !tbaa !24
  store i64 %t94, ptr %l7, !tbaa !24
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t97 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echeckedInst(ptr %v0, ptr %t95)
  store i64 %t97, ptr %l47
  br label %bb9
bb9:
  %t98 = load i64, ptr %l47, !tbaa !24
  store i64 %t98, ptr %l8, !tbaa !24
  %t99 = load i64, ptr %l8, !tbaa !24
  %t101 = icmp sge i64 %t99, 0
  br i1 %t101, label %bb10, label %bb11
bb10:
  %t103 = load ptr, ptr %l0, !tbaa !29
  store ptr %t103, ptr %l51, !tbaa !29
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t106 = getelementptr %"compiler/check:Checker", ptr %t104, i32 0, i32 1
  %t107 = load ptr, ptr %t106, !tbaa !29
  store ptr %t107, ptr %l53, !tbaa !29
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t110 = getelementptr %"compiler/check:Checker", ptr %t108, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !29
  %t112 = load i64, ptr %l8, !tbaa !24
  %t115 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %t111, i64 %t112)
  store i64 %t115, ptr %l57
  br label %bb12
bb11:
  %t116 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t116, ptr %l50, !tbaa !27
  br label %bb15
bb12:
  %t118 = load ptr, ptr %l53, !tbaa !29
  %t119 = load i64, ptr %l57, !tbaa !24
  %t120 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %s0, ptr %t118, i64 %t119)
  store ptr %t120, ptr %l58
  br label %bb13
bb13:
  %t121 = load ptr, ptr %l58, !tbaa !29
  %t123 = getelementptr %"compiler/ast:Func", ptr %t121, i32 0, i32 2
  %t124 = load i32, ptr %t123, !tbaa !23
  %t125 = load ptr, ptr %l51, !tbaa !29
  %t127 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t125, i32 %t124)
  store { i64, ptr } %t127, ptr %l61
  br label %bb14
bb14:
  %t128 = load { i64, ptr }, ptr %l61, !tbaa !27
  store { i64, ptr } %t128, ptr %l50, !tbaa !27
  br label %bb15
bb15:
  %t129 = load { i64, ptr }, ptr %l50, !tbaa !27
  store { i64, ptr } %t129, ptr %l9, !tbaa !27
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t132 = getelementptr %"compiler/check:Checker", ptr %t130, i32 0, i32 1
  %t133 = load ptr, ptr %t132, !tbaa !29
  %t135 = getelementptr %"compiler/generic:Program", ptr %t133, i32 0, i32 0
  %t136 = load ptr, ptr %t135, !tbaa !29
  %t138 = getelementptr %"compiler/load:Loader", ptr %t136, i32 0, i32 4
  %t139 = load ptr, ptr %t138, !tbaa !29
  store ptr %t139, ptr %l66, !tbaa !29
  %t140 = load i64, ptr %l7, !tbaa !24
  store i64 %t140, ptr %l67, !tbaa !24
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t145 = call { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eat(ptr %v0, ptr %t141, %"compiler/source:Span" %a2)
  store { i64, [3 x i64] } %t145, ptr %l70
  br label %bb16
bb16:
  %t146 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t148 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteGenericNeeds(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t146, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d23, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t148, ptr %l72
  br label %bb17
bb17:
  %t149 = load ptr, ptr %l66, !tbaa !29
  %t150 = load i64, ptr %l67, !tbaa !24
  %t151 = load { i64, [3 x i64] }, ptr %l70
  %t152 = load %"compiler/diagmsg:Msg", ptr %l72
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %v0, ptr %t149, i64 %t150, { i64, [3 x i64] } %t151, %"compiler/diagmsg:Msg" %t152)
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enotRecord(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l7 = alloca i1
  %l9 = alloca i1
  %l13 = alloca i1
  %l15 = alloca { i64, ptr }
  %l16 = alloca { i64, ptr }
  %l17 = alloca i64
  %l18 = alloca { i64, ptr }
  %l23 = alloca i1
  %l24 = alloca { i64, ptr }
  %l25 = alloca { i64, ptr }
  %l26 = alloca i64
  %l27 = alloca { i64, ptr }
  %l29 = alloca ptr
  %l34 = alloca i32
  %l35 = alloca ptr
  %l38 = alloca i1
  %l42 = alloca { i64, ptr }
  %l43 = alloca { i64, ptr }
  %l44 = alloca i64
  %l45 = alloca { i64, ptr }
  %l48 = alloca { i64, ptr }
  %l49 = alloca ptr
  %l50 = alloca i1
  %l56 = alloca { i64, ptr }
  %l57 = alloca { i64, ptr }
  %l59 = alloca i64
  %l60 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisStruct(ptr %v0, ptr %t1, i32 %t2)
  store i1 %t5, ptr %l7
  br label %bb1
bb1:
  %t6 = load i1, ptr %l7, !tbaa !21
  %t7 = xor i1 %t6, true
  br i1 %t7, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb5
bb3:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/check:Checker", ptr %t9, i32 0, i32 1
  %t12 = load ptr, ptr %t11, !tbaa !29
  %t13 = load i32, ptr %l1, !tbaa !23
  %t16 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %t12, i32 %t13)
  store i1 %t16, ptr %l13
  br label %bb4
bb4:
  %t17 = load i1, ptr %l13, !tbaa !21
  %t18 = xor i1 %t17, true
  store i1 %t18, ptr %l9, !tbaa !21
  br label %bb5
bb5:
  %t20 = load i1, ptr %l9, !tbaa !21
  br i1 %t20, label %bb6, label %bb7
bb6:
  store { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d24, i32 0, i32 1) }, ptr %l15, !tbaa !27
  %t21 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t21, ptr %l16, !tbaa !27
  %t22 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t23 = extractvalue { i64, ptr } %t22, 0
  store i64 %t23, ptr %l17, !tbaa !24
  %t24 = load i64, ptr %l17, !tbaa !24
  %t25 = mul i64 %t24, 1
  %t26 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t25)
  %t27 = insertvalue { i64, ptr } undef, i64 %t24, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t26, 1
  store { i64, ptr } %t28, ptr %l18, !tbaa !27
  %t29 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !27
  %t31 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !27
  %t33 = load i64, ptr %l17, !tbaa !24
  %t34 = mul i64 %t33, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t30, ptr %t32, i64 %t34, i1 false)
  %t35 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t35, ptr %l16, !tbaa !27
  %t36 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t36, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/check:Checker", ptr %t37, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !29
  %t42 = getelementptr %"compiler/generic:Program", ptr %t40, i32 0, i32 2
  %t43 = load i32, ptr %l1, !tbaa !23
  %t46 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDestructs(ptr %v0, ptr %t42, i32 %t43)
  store i1 %t46, ptr %l23
  br label %bb9
bb9:
  %t47 = load i1, ptr %l23, !tbaa !21
  br i1 %t47, label %bb10, label %bb11
bb10:
  store { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d25, i32 0, i32 1) }, ptr %l24, !tbaa !27
  %t48 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t48, ptr %l25, !tbaa !27
  %t49 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t50 = extractvalue { i64, ptr } %t49, 0
  store i64 %t50, ptr %l26, !tbaa !24
  %t51 = load i64, ptr %l26, !tbaa !24
  %t52 = mul i64 %t51, 1
  %t53 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t52)
  %t54 = insertvalue { i64, ptr } undef, i64 %t51, 0
  %t55 = insertvalue { i64, ptr } %t54, ptr %t53, 1
  store { i64, ptr } %t55, ptr %l27, !tbaa !27
  %t56 = getelementptr { i64, ptr }, ptr %l27, i32 0, i32 1
  %t57 = load ptr, ptr %t56, !tbaa !27
  %t58 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !27
  %t60 = load i64, ptr %l26, !tbaa !24
  %t61 = mul i64 %t60, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t57, ptr %t59, i64 %t61, i1 false)
  %t62 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t62, ptr %l25, !tbaa !27
  %t63 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t63, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/check:Checker", ptr %t64, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !29
  store ptr %t67, ptr %l29, !tbaa !29
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/check:Checker", ptr %t68, i32 0, i32 1
  %t71 = load ptr, ptr %t70, !tbaa !29
  %t73 = getelementptr %"compiler/generic:Program", ptr %t71, i32 0, i32 2
  %t74 = load i32, ptr %l1, !tbaa !23
  %t77 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t73, i32 %t74)
  store i32 %t77, ptr %l34
  br label %bb13
bb13:
  %t78 = load ptr, ptr %l29, !tbaa !29
  %t79 = load i32, ptr %l34, !tbaa !23
  %t80 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeDecl(ptr %v0, ptr %v0, ptr %t78, i32 %t79)
  store ptr %t80, ptr %l35
  br label %bb14
bb14:
  %t81 = load ptr, ptr %l35, !tbaa !29
  store ptr %t81, ptr %l2, !tbaa !29
  %t82 = load ptr, ptr %l2, !tbaa !29
  %t84 = icmp eq ptr %t82, null
  br i1 %t84, label %bb15, label %bb16
bb15:
  store i1 true, ptr %l38, !tbaa !21
  br label %bb17
bb16:
  %t86 = load ptr, ptr %l2, !tbaa !29
  %t88 = getelementptr %"compiler/ast:TypeDecl", ptr %t86, i32 0, i32 3
  %t89 = load ptr, ptr %t88, !tbaa !29
  %t91 = icmp eq ptr %t89, null
  store i1 %t91, ptr %l38, !tbaa !21
  br label %bb17
bb17:
  %t93 = load i1, ptr %l38, !tbaa !21
  br i1 %t93, label %bb18, label %bb19
bb18:
  store { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d26, i32 0, i32 1) }, ptr %l42, !tbaa !27
  %t94 = load { i64, ptr }, ptr %l42, !tbaa !27
  store { i64, ptr } %t94, ptr %l43, !tbaa !27
  %t95 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t96 = extractvalue { i64, ptr } %t95, 0
  store i64 %t96, ptr %l44, !tbaa !24
  %t97 = load i64, ptr %l44, !tbaa !24
  %t98 = mul i64 %t97, 1
  %t99 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t98)
  %t100 = insertvalue { i64, ptr } undef, i64 %t97, 0
  %t101 = insertvalue { i64, ptr } %t100, ptr %t99, 1
  store { i64, ptr } %t101, ptr %l45, !tbaa !27
  %t102 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t103 = load ptr, ptr %t102, !tbaa !27
  %t104 = getelementptr { i64, ptr }, ptr %l43, i32 0, i32 1
  %t105 = load ptr, ptr %t104, !tbaa !27
  %t106 = load i64, ptr %l44, !tbaa !24
  %t107 = mul i64 %t106, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t103, ptr %t105, i64 %t107, i1 false)
  %t108 = load { i64, ptr }, ptr %l45, !tbaa !27
  store { i64, ptr } %t108, ptr %l43, !tbaa !27
  %t109 = load { i64, ptr }, ptr %l43, !tbaa !27
  store { i64, ptr } %t109, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  %t110 = load ptr, ptr %l2, !tbaa !29
  %t112 = getelementptr %"compiler/ast:TypeDecl", ptr %t110, i32 0, i32 3
  %t113 = load ptr, ptr %t112, !tbaa !29
  store ptr %t113, ptr %l3, !tbaa !29
  %t115 = load ptr, ptr %l3, !tbaa !29
  store ptr %t115, ptr %l49, !tbaa !29
  store i1 false, ptr %l50, !tbaa !21
  %t116 = load ptr, ptr %l49, !tbaa !29
  %t117 = icmp ne ptr %t116, null
  br i1 %t117, label %bb21, label %bb22
bb21:
  %t119 = load ptr, ptr %l49, !tbaa !29
  %t120 = load i64, ptr %t119, !range !{i64 0, i64 5}
  %t122 = icmp eq i64 %t120, 0
  store i1 %t122, ptr %l50, !tbaa !21
  br label %bb22
bb22:
  %t123 = load i1, ptr %l50, !tbaa !21
  br i1 %t123, label %bb23, label %bb24
bb23:
  %t124 = load ptr, ptr %l3, !tbaa !29
  %t126 = getelementptr { i64, [6 x i64] }, ptr %t124, i32 0, i32 1
  %t127 = getelementptr { ptr }, ptr %t126, i32 0, i32 0
  %t128 = load ptr, ptr %t127
  store ptr %t128, ptr %l4, !tbaa !29
  br label %bb25
bb24:
  br label %bb27
bb25:
  %t130 = load ptr, ptr %l4, !tbaa !29
  %t132 = call { i64, ptr } @compiler_2fcheck_2erecordBody(ptr %v0, ptr %v1, ptr %t130)
  store { i64, ptr } %t132, ptr %l56
  br label %bb26
bb26:
  %t133 = load { i64, ptr }, ptr %l56, !tbaa !27
  store { i64, ptr } %t133, ptr %l48, !tbaa !27
  br label %bb32
bb27:
  br i1 true, label %bb28, label %bb29
bb28:
  br label %bb30
bb29:
  br label %bb31
bb30:
  store { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d27, i32 0, i32 1) }, ptr %l57, !tbaa !27
  %t134 = load { i64, ptr }, ptr %l57, !tbaa !27
  store { i64, ptr } %t134, ptr %l48, !tbaa !27
  br label %bb32
bb31:
  call void @__olang_check_failed(ptr @olang_loc_9d659989a3d8e899_e17dd41770304f7d)
  unreachable
bb32:
  %t136 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t137 = extractvalue { i64, ptr } %t136, 0
  store i64 %t137, ptr %l59, !tbaa !24
  %t138 = load i64, ptr %l59, !tbaa !24
  %t139 = mul i64 %t138, 1
  %t140 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t139)
  %t141 = insertvalue { i64, ptr } undef, i64 %t138, 0
  %t142 = insertvalue { i64, ptr } %t141, ptr %t140, 1
  store { i64, ptr } %t142, ptr %l60, !tbaa !27
  %t143 = getelementptr { i64, ptr }, ptr %l60, i32 0, i32 1
  %t144 = load ptr, ptr %t143, !tbaa !27
  %t145 = getelementptr { i64, ptr }, ptr %l48, i32 0, i32 1
  %t146 = load ptr, ptr %t145, !tbaa !27
  %t147 = load i64, ptr %l59, !tbaa !24
  %t148 = mul i64 %t147, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t144, ptr %t146, i64 %t148, i1 false)
  %t149 = load { i64, ptr }, ptr %l60, !tbaa !27
  store { i64, ptr } %t149, ptr %l48, !tbaa !27
  %t150 = load { i64, ptr }, ptr %l48, !tbaa !27
  store { i64, ptr } %t150, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eparam(ptr %v0, ptr %v1, ptr %a0, i32 %a1, %"compiler/source:Span" %a2, i32 %a3, i64 %a4, ptr %a5) #0 {
entry:
  %l0 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca { i64, [1 x i64] }
  %l7 = alloca i64
  %l9 = alloca ptr
  %l14 = alloca { i64, [1 x i64] }
  %l15 = alloca ptr
  %l16 = alloca i32
  %l17 = alloca %"compiler/source:Span"
  %l22 = alloca i32
  %l25 = alloca i64
  %l27 = alloca ptr
  %l37 = alloca ptr
  %l39 = alloca ptr
  %l40 = alloca i64
  %l43 = alloca { i64, [3 x i64] }
  store ptr %a0, ptr %l0
  store ptr %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t1)
  store ptr %t3, ptr %l9
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/check:Checker", ptr %t4, i32 0, i32 1
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t9 = getelementptr %"compiler/generic:Program", ptr %t7, i32 0, i32 2
  %t11 = load ptr, ptr %l9, !tbaa !29
  %t14 = call { i64, [1 x i64] } @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eParamMark(ptr %v0, ptr %v0, ptr %t11, ptr %t9, i64 %a4)
  store { i64, [1 x i64] } %t14, ptr %l14
  br label %bb2
bb2:
  %t15 = load { i64, [1 x i64] }, ptr %l14
  store { i64, [1 x i64] } %t15, ptr %l6
  %t16 = load ptr, ptr %l0, !tbaa !29
  store ptr %t16, ptr %l15, !tbaa !29
  store i32 %a1, ptr %l16, !tbaa !23
  store %"compiler/source:Span" %a2, ptr %l17
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/check:Checker", ptr %t19, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !29
  %t24 = getelementptr %"compiler/generic:Program", ptr %t22, i32 0, i32 2
  %t28 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eUnspread(ptr %v0, ptr %t24, i32 %a3)
  store i32 %t28, ptr %l22
  br label %bb3
bb3:
  %t29 = load { i64, [1 x i64] }, ptr %l6
  %t30 = load ptr, ptr %l15, !tbaa !29
  %t31 = load i32, ptr %l16, !tbaa !23
  %t32 = load %"compiler/source:Span", ptr %l17
  %t33 = load i32, ptr %l22, !tbaa !23
  %t36 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocal(ptr %v0, ptr %t30, i32 %t31, %"compiler/source:Span" %t32, i32 %t33, i32 0, { i64, [1 x i64] } %t29)
  store i64 %t36, ptr %l25
  br label %bb4
bb4:
  %t37 = load i64, ptr %l25, !tbaa !24
  store i64 %t37, ptr %l7, !tbaa !24
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t38)
  store ptr %t40, ptr %l27
  br label %bb5
bb5:
  %t41 = load ptr, ptr %l27, !tbaa !29
  %t43 = getelementptr %"compiler/typed:Body", ptr %t41, i32 0, i32 5
  %t44 = load i64, ptr %l7, !tbaa !24
  %t46 = trunc i64 %t44 to i32
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2ePush_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t43, i32 %t46)
  br label %bb6
bb6:
  %t50 = load ptr, ptr %l5, !tbaa !29
  %t52 = icmp eq ptr %t50, null
  %t54 = xor i1 %t52, true
  br i1 %t54, label %bb7, label %bb8
bb7:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t56)
  store ptr %t58, ptr %l37
  br label %bb9
bb8:
  br label %bb12
bb9:
  %t59 = load ptr, ptr %l37, !tbaa !29
  %t61 = getelementptr %"compiler/check:frame", ptr %t59, i32 0, i32 3
  store ptr %t61, ptr %l39, !tbaa !29
  %t62 = load i64, ptr %l7, !tbaa !24
  store i64 %t62, ptr %l40, !tbaa !24
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t64 = load ptr, ptr %l5, !tbaa !29
  %t67 = call { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeWrittenAt(ptr %v0, ptr %v1, ptr %t63, ptr %t64)
  store { i64, [3 x i64] } %t67, ptr %l43
  br label %bb10
bb10:
  %t68 = load ptr, ptr %l39, !tbaa !29
  %t69 = load i64, ptr %l40, !tbaa !24
  %t70 = load { i64, [3 x i64] }, ptr %l43
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fdiag_3aWhere_3e_2e_Hc07a7e56a24d8f1225398db99ea19a4b(ptr %v0, ptr %t68, i64 %t69, { i64, [3 x i64] } %t70)
  br label %bb11
bb11:
  br label %bb12
bb12:
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epartCopy(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i1
  %l6 = alloca i32
  %l9 = alloca i1
  %l13 = alloca i1
  %l16 = alloca ptr
  %l18 = alloca i1
  %l23 = alloca i1
  %l24 = alloca i1
  %l29 = alloca i1
  %l34 = alloca ptr
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t4 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t1)
  store i32 %t4, ptr %l6
  br label %bb1
bb1:
  %t5 = load i32, ptr %l6, !tbaa !23
  store i32 %t5, ptr %l2, !tbaa !23
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t7 = load i32, ptr %l2, !tbaa !23
  %t10 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t6, i32 %t7)
  store i1 %t10, ptr %l9
  br label %bb2
bb2:
  %t11 = load i1, ptr %l9, !tbaa !21
  br i1 %t11, label %bb3, label %bb4
bb3:
  %t12 = load ptr, ptr %l1, !tbaa !29
  store ptr %t12, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t18 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euniqueMoved(ptr %v0, ptr %v1, ptr %t14, ptr %t15)
  store i1 %t18, ptr %l13
  br label %bb6
bb6:
  %t19 = load i1, ptr %l13, !tbaa !21
  store i1 %t19, ptr %l3, !tbaa !21
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load ptr, ptr %l1, !tbaa !29
  %t24 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euniqueLand(ptr %v0, ptr %v1, ptr %v2, ptr %v2, ptr %t20, ptr %t21, { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d28, i32 0, i32 1) }, i1 false)
  store ptr %t24, ptr %l16
  br label %bb7
bb7:
  %t25 = load ptr, ptr %l16, !tbaa !29
  store ptr %t25, ptr %l1, !tbaa !29
  %t26 = load i1, ptr %l3, !tbaa !21
  br i1 %t26, label %bb8, label %bb9
bb8:
  store i1 true, ptr %l18, !tbaa !21
  br label %bb15
bb9:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/check:Checker", ptr %t28, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t33 = getelementptr %"compiler/generic:Program", ptr %t31, i32 0, i32 2
  %t34 = load i32, ptr %l2, !tbaa !23
  %t37 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnsParts(ptr %v0, ptr %t33, i32 %t34)
  store i1 %t37, ptr %l23
  br label %bb10
bb10:
  %t38 = load i1, ptr %l23, !tbaa !21
  br i1 %t38, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l24, !tbaa !21
  br label %bb14
bb12:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/check:Checker", ptr %t39, i32 0, i32 1
  %t42 = load ptr, ptr %t41, !tbaa !29
  %t44 = getelementptr %"compiler/generic:Program", ptr %t42, i32 0, i32 2
  %t45 = load i32, ptr %l2, !tbaa !23
  %t48 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnedPart(ptr %v0, ptr %t44, i32 %t45)
  store i1 %t48, ptr %l29
  br label %bb13
bb13:
  %t49 = load i1, ptr %l29, !tbaa !21
  store i1 %t49, ptr %l24, !tbaa !21
  br label %bb14
bb14:
  %t50 = load i1, ptr %l24, !tbaa !21
  %t51 = xor i1 %t50, true
  store i1 %t51, ptr %l18, !tbaa !21
  br label %bb15
bb15:
  %t53 = load i1, ptr %l18, !tbaa !21
  br i1 %t53, label %bb16, label %bb17
bb16:
  %t54 = load ptr, ptr %l1, !tbaa !29
  store ptr %t54, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t57 = load ptr, ptr %l1, !tbaa !29
  %t60 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eownCopy(ptr %v0, ptr %v2, ptr %v2, ptr %t56, ptr %t57)
  store ptr %t60, ptr %l34
  br label %bb19
bb19:
  %t61 = load ptr, ptr %l34, !tbaa !29
  store ptr %t61, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereachesTrait(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i32
  %l14 = alloca { i64, ptr }
  %l22 = alloca { i64, ptr }
  %l29 = alloca i32
  %l37 = alloca i32
  %l46 = alloca i1
  %s2 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l3, !tbaa !24
  %t3 = icmp sgt i64 %t1, 32
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  store %olang.scope zeroinitializer, ptr %s2
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/check:Checker", ptr %t6, i32 0, i32 1
  %t9 = load ptr, ptr %t8, !tbaa !29
  %t13 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eExtended(ptr %v0, ptr %s2, ptr %t9, i32 %a2)
  store { i64, ptr } %t13, ptr %l14
  br label %bb4
bb4:
  %t14 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t15 = extractvalue { i64, ptr } %t14, 0
  %t16 = extractvalue { i64, ptr } %t14, 1
  %t17 = mul i64 %t15, 4
  %t18 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t17)
  call void @llvm.memcpy.p0.p0.i64(ptr %t18, ptr %t16, i64 %t17, i1 false)
  %t19 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t20 = insertvalue { i64, ptr } %t19, ptr %t18, 1
  store { i64, ptr } %t20, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t22 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t24 = extractvalue { i64, ptr } %t22, 0
  store i64 %t24, ptr %l6, !tbaa !24
  br label %bb5
bb5:
  %t26 = load i64, ptr %l5, !tbaa !24
  %t27 = load i64, ptr %l6, !tbaa !24
  %t30 = icmp slt i64 %t26, %t27
  %t32 = xor i1 %t30, true
  br i1 %t32, label %bb6, label %bb7
bb6:
  br label %bb22
bb7:
  br label %bb8
bb8:
  %t34 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t34, ptr %l22, !tbaa !27
  %t35 = load i64, ptr %l5, !tbaa !24
  %t37 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !27
  %t39 = getelementptr i32, ptr %t38, i64 %t35
  %t40 = load i32, ptr %t39, !tbaa !33
  store i32 %t40, ptr %l7, !tbaa !23
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/check:Checker", ptr %t42, i32 0, i32 1
  %t45 = load ptr, ptr %t44, !tbaa !29
  %t47 = getelementptr %"compiler/generic:Program", ptr %t45, i32 0, i32 2
  %t48 = load i32, ptr %l7, !tbaa !23
  %t51 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t47, i32 %t48)
  store i32 %t51, ptr %l29
  br label %bb9
bb9:
  %t52 = load i32, ptr %l29, !range !{i32 0, i32 33}
  %t54 = trunc i64 18 to i32
  %t55 = icmp eq i32 %t52, %t54
  %t57 = xor i1 %t55, true
  br i1 %t57, label %bb10, label %bb11
bb10:
  br label %bb21
bb11:
  br label %bb12
bb12:
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/check:Checker", ptr %t59, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !29
  %t64 = getelementptr %"compiler/generic:Program", ptr %t62, i32 0, i32 2
  %t65 = load i32, ptr %l7, !tbaa !23
  %t68 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t64, i32 %t65)
  store i32 %t68, ptr %l37
  br label %bb13
bb13:
  %t69 = load i32, ptr %l1, !tbaa !23
  %t70 = load i32, ptr %l37, !tbaa !23
  %t72 = icmp eq i32 %t70, %t69
  br i1 %t72, label %bb14, label %bb15
bb14:
  call void @__olang_scope_close(ptr %s2)
  store i1 true, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t76 = load i32, ptr %l1, !tbaa !23
  %t77 = load i32, ptr %l7, !tbaa !23
  %t78 = load i64, ptr %l3, !tbaa !24
  %t80 = add i64 %t78, 1
  %t85 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereachesTrait(ptr %v0, ptr %t75, i32 %t76, i32 %t77, i64 %t80)
  store i1 %t85, ptr %l46
  br label %bb17
bb17:
  %t86 = load i1, ptr %l46, !tbaa !21
  br i1 %t86, label %bb18, label %bb19
bb18:
  call void @__olang_scope_close(ptr %s2)
  store i1 true, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  br label %bb21
bb21:
  %t88 = load i64, ptr %l5, !tbaa !24
  %t90 = add i64 %t88, 1
  store i64 %t90, ptr %l5, !tbaa !24
  br label %bb5
bb22:
  call void @__olang_scope_close(ptr %s2)
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erenderPiece(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca i32
  %l11 = alloca ptr
  %l12 = alloca ptr
  %l13 = alloca i1
  %l16 = alloca i1
  %l18 = alloca ptr
  %l19 = alloca i1
  %l29 = alloca ptr
  %l30 = alloca i64
  %l37 = alloca { i64, ptr }
  %l39 = alloca { i64, ptr }
  %l44 = alloca ptr
  %l47 = alloca i32
  %l51 = alloca i1
  %l56 = alloca i32
  %l59 = alloca i1
  %l64 = alloca i32
  %l67 = alloca %"compiler/source:Span"
  %l73 = alloca i32
  %l82 = alloca i1
  %l87 = alloca i1
  %l90 = alloca ptr
  %rv = alloca ptr
  %t83 = alloca { i64, [2 x i64] }, align 8
  %t153 = alloca { i64, [5 x i64] }, align 8
  %t165 = alloca { i64, [2 x i64] }, align 8
  %t197 = alloca { i64, [2 x i64] }, align 8
  %t207 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t7 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erendered(ptr %v0, ptr %v1, ptr %v2, ptr %t1, %"compiler/source:Span" %a1, ptr %a2)
  store ptr %t7, ptr %l11
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l11, !tbaa !29
  store ptr %t8, ptr %l3, !tbaa !29
  %t9 = load ptr, ptr %l3, !tbaa !29
  store ptr %t9, ptr %l12, !tbaa !29
  store i1 false, ptr %l13, !tbaa !21
  %t10 = load ptr, ptr %l12, !tbaa !29
  %t11 = icmp ne ptr %t10, null
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load ptr, ptr %l12, !tbaa !29
  %t14 = load i64, ptr %t13, !range !{i64 0, i64 18}
  %t16 = icmp eq i64 %t14, 15
  store i1 %t16, ptr %l13, !tbaa !21
  br label %bb3
bb3:
  %t17 = load i1, ptr %l13, !tbaa !21
  br i1 %t17, label %bb4, label %bb5
bb4:
  %t18 = load ptr, ptr %l3, !tbaa !29
  %t20 = getelementptr { i64, [5 x i64] }, ptr %t18, i32 0, i32 1
  %t21 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t20, i32 0, i32 2
  %t22 = load ptr, ptr %t21
  store ptr %t22, ptr %l18, !tbaa !29
  store i1 false, ptr %l19, !tbaa !21
  %t23 = load ptr, ptr %l18, !tbaa !29
  %t24 = icmp ne ptr %t23, null
  br i1 %t24, label %bb6, label %bb7
bb5:
  store i1 false, ptr %l16, !tbaa !21
  br label %bb8
bb6:
  %t26 = load ptr, ptr %l18, !tbaa !29
  %t27 = load i64, ptr %t26, !range !{i64 0, i64 3}
  %t29 = icmp eq i64 %t27, 0
  store i1 %t29, ptr %l19, !tbaa !21
  br label %bb7
bb7:
  %t30 = load i1, ptr %l19, !tbaa !21
  store i1 %t30, ptr %l16, !tbaa !21
  br label %bb8
bb8:
  %t31 = load i1, ptr %l16, !tbaa !21
  br i1 %t31, label %bb9, label %bb10
bb9:
  %t32 = load ptr, ptr %l3, !tbaa !29
  %t34 = getelementptr { i64, [5 x i64] }, ptr %t32, i32 0, i32 1
  %t35 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t34, i32 0, i32 2
  %t36 = load ptr, ptr %t35
  %t38 = getelementptr { i64, [4 x i64] }, ptr %t36, i32 0, i32 1
  %t39 = getelementptr { i32 }, ptr %t38, i32 0, i32 0
  %t40 = load i32, ptr %t39
  store i32 %t40, ptr %l4, !tbaa !23
  br label %bb11
bb10:
  br label %bb19
bb11:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/check:Checker", ptr %t42, i32 0, i32 14
  %t45 = load i32, ptr %l4, !tbaa !23
  %t47 = sext i32 %t45 to i64
  %t50 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t44, i64 %t47)
  store ptr %t50, ptr %l29
  br label %bb12
bb12:
  %t51 = load ptr, ptr %l29, !tbaa !29
  %t52 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eInst(ptr %v0, ptr %t51)
  store i64 %t52, ptr %l30
  br label %bb13
bb13:
  %t53 = load i64, ptr %l30, !tbaa !24
  store i64 %t53, ptr %l5, !tbaa !24
  %t54 = load i64, ptr %l5, !tbaa !24
  %t56 = icmp sge i64 %t54, 0
  br i1 %t56, label %bb14, label %bb15
bb14:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t59 = load i64, ptr %l5, !tbaa !24
  %t60 = load i32, ptr %l4, !tbaa !23
  %t62 = sext i32 %t60 to i64
  %t66 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esigText(ptr %v0, ptr %v2, ptr %t58, i64 %t59, i64 %t62)
  store { i64, ptr } %t66, ptr %l37
  br label %bb16
bb15:
  br label %bb18
bb16:
  %t67 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t68 = extractvalue { i64, ptr } %t67, 0
  %t69 = extractvalue { i64, ptr } %t67, 1
  %t70 = mul i64 %t68, 1
  %t71 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t70)
  call void @llvm.memcpy.p0.p0.i64(ptr %t71, ptr %t69, i64 %t70, i1 false)
  %t72 = insertvalue { i64, ptr } undef, i64 %t68, 0
  %t73 = insertvalue { i64, ptr } %t72, ptr %t71, 1
  %t75 = call { i64, ptr } @compiler_2fcheck_2etextBytes(ptr %v2, ptr %v2, { i64, ptr } %t73)
  store { i64, ptr } %t75, ptr %l39
  br label %bb17
bb17:
  %t76 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t77 = extractvalue { i64, ptr } %t76, 0
  %t78 = extractvalue { i64, ptr } %t76, 1
  %t79 = mul i64 %t77, 1
  %t80 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t79)
  call void @llvm.memcpy.p0.p0.i64(ptr %t80, ptr %t78, i64 %t79, i1 false)
  %t81 = insertvalue { i64, ptr } undef, i64 %t77, 0
  %t82 = insertvalue { i64, ptr } %t81, ptr %t80, 1
  store { i64, [2 x i64] } zeroinitializer, ptr %t83
  %t84 = getelementptr { i64, [2 x i64] }, ptr %t83, i32 0, i32 0
  store i64 0, ptr %t84
  %t86 = insertvalue { { i64, ptr } } undef, { i64, ptr } %t82, 0
  %t87 = getelementptr { i64, [2 x i64] }, ptr %t83, i32 0, i32 1
  store { { i64, ptr } } %t86, ptr %t87
  %t88 = load { i64, [2 x i64] }, ptr %t83
  %t90 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 24, i64 8)
  store { i64, [2 x i64] } %t88, ptr %t90
  store ptr %t90, ptr %rv
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
  call void @__olang_check_failed(ptr @olang_loc_f8eba3992f77108b_33e684cc3ada1a3f)
  unreachable
bb24:
  %t92 = load ptr, ptr %l3, !tbaa !29
  %t94 = call ptr @compiler_2fcheck_2ereadPlace(ptr %v2, ptr %v2, ptr %t92)
  store ptr %t94, ptr %l44
  br label %bb25
bb25:
  %t95 = load ptr, ptr %l44, !tbaa !29
  store ptr %t95, ptr %l6, !tbaa !29
  %t96 = load ptr, ptr %l3, !tbaa !29
  %t99 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %t96)
  store i32 %t99, ptr %l47
  br label %bb26
bb26:
  %t100 = load i32, ptr %l47, !tbaa !23
  store i32 %t100, ptr %l7, !tbaa !23
  %t101 = load ptr, ptr %l6, !tbaa !29
  %t103 = icmp eq ptr %t101, null
  %t105 = xor i1 %t103, true
  br i1 %t105, label %bb27, label %bb28
bb27:
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t109 = getelementptr %"compiler/check:Checker", ptr %t107, i32 0, i32 1
  %t110 = load ptr, ptr %t109, !tbaa !29
  %t112 = getelementptr %"compiler/generic:Program", ptr %t110, i32 0, i32 2
  %t113 = load i32, ptr %l7, !tbaa !23
  %t116 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t112, i32 %t113)
  store i32 %t116, ptr %l56
  br label %bb29
bb28:
  store i1 false, ptr %l51, !tbaa !21
  br label %bb30
bb29:
  %t117 = load i32, ptr %l56, !range !{i32 0, i32 33}
  %t119 = trunc i64 19 to i32
  %t120 = icmp eq i32 %t117, %t119
  store i1 %t120, ptr %l51, !tbaa !21
  br label %bb30
bb30:
  %t122 = load i1, ptr %l51, !tbaa !21
  br i1 %t122, label %bb31, label %bb32
bb31:
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t125 = getelementptr %"compiler/check:Checker", ptr %t123, i32 0, i32 1
  %t126 = load ptr, ptr %t125, !tbaa !29
  %t128 = getelementptr %"compiler/generic:Program", ptr %t126, i32 0, i32 2
  %t129 = load i32, ptr %l7, !tbaa !23
  %t132 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t128, i32 %t129)
  store i32 %t132, ptr %l64
  br label %bb33
bb32:
  store i1 false, ptr %l59, !tbaa !21
  br label %bb34
bb33:
  %t133 = load i32, ptr %l64, !tbaa !23
  %t134 = icmp ne i32 %t133, 0
  store i1 %t134, ptr %l59, !tbaa !21
  br label %bb34
bb34:
  %t136 = load i1, ptr %l59, !tbaa !21
  br i1 %t136, label %bb35, label %bb36
bb35:
  %t137 = load ptr, ptr %l3, !tbaa !29
  %t139 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v2, ptr %t137)
  store %"compiler/source:Span" %t139, ptr %l67
  br label %bb37
bb36:
  br label %bb39
bb37:
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t142 = getelementptr %"compiler/check:Checker", ptr %t140, i32 0, i32 1
  %t143 = load ptr, ptr %t142, !tbaa !29
  %t145 = getelementptr %"compiler/generic:Program", ptr %t143, i32 0, i32 2
  %t146 = load i32, ptr %l7, !tbaa !23
  %t147 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  %t151 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t145, i32 %t146, i64 %t147)
  store i32 %t151, ptr %l73
  br label %bb38
bb38:
  %t152 = load ptr, ptr %l6, !tbaa !29
  store { i64, [5 x i64] } zeroinitializer, ptr %t153
  %t154 = getelementptr { i64, [5 x i64] }, ptr %t153, i32 0, i32 0
  store i64 3, ptr %t154
  %t155 = load %"compiler/source:Span", ptr %l67
  %t156 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t155, 0
  %t157 = load i32, ptr %l73, !tbaa !23
  %t158 = insertvalue { %"compiler/source:Span", i32, ptr } %t156, i32 %t157, 1
  %t160 = insertvalue { %"compiler/source:Span", i32, ptr } %t158, ptr %t152, 2
  %t161 = getelementptr { i64, [5 x i64] }, ptr %t153, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t160, ptr %t161
  %t162 = load { i64, [5 x i64] }, ptr %t153
  %t164 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t162, ptr %t164
  store { i64, [2 x i64] } zeroinitializer, ptr %t165
  %t166 = getelementptr { i64, [2 x i64] }, ptr %t165, i32 0, i32 0
  store i64 1, ptr %t166
  %t168 = insertvalue { ptr } undef, ptr %t164, 0
  %t169 = getelementptr { i64, [2 x i64] }, ptr %t165, i32 0, i32 1
  store { ptr } %t168, ptr %t169
  %t170 = load { i64, [2 x i64] }, ptr %t165
  %t172 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 24, i64 8)
  store { i64, [2 x i64] } %t170, ptr %t172
  store ptr %t172, ptr %rv
  br label %ret
bb39:
  %t174 = load ptr, ptr %l6, !tbaa !29
  %t176 = icmp eq ptr %t174, null
  %t178 = xor i1 %t176, true
  br i1 %t178, label %bb40, label %bb41
bb40:
  %t180 = load ptr, ptr %l0, !tbaa !29
  %t182 = getelementptr %"compiler/check:Checker", ptr %t180, i32 0, i32 1
  %t183 = load ptr, ptr %t182, !tbaa !29
  %t185 = getelementptr %"compiler/generic:Program", ptr %t183, i32 0, i32 2
  %t186 = load i32, ptr %l7, !tbaa !23
  %t189 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnsParts(ptr %v0, ptr %t185, i32 %t186)
  store i1 %t189, ptr %l87
  br label %bb42
bb41:
  store i1 false, ptr %l82, !tbaa !21
  br label %bb43
bb42:
  %t190 = load i1, ptr %l87, !tbaa !21
  store i1 %t190, ptr %l82, !tbaa !21
  br label %bb43
bb43:
  %t191 = load i1, ptr %l82, !tbaa !21
  br i1 %t191, label %bb44, label %bb45
bb44:
  %t192 = load ptr, ptr %l0, !tbaa !29
  %t193 = load ptr, ptr %l3, !tbaa !29
  %t196 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eownCopy(ptr %v0, ptr %v2, ptr %v2, ptr %t192, ptr %t193)
  store ptr %t196, ptr %l90
  br label %bb46
bb45:
  br label %bb47
bb46:
  store { i64, [2 x i64] } zeroinitializer, ptr %t197
  %t198 = getelementptr { i64, [2 x i64] }, ptr %t197, i32 0, i32 0
  store i64 1, ptr %t198
  %t199 = load ptr, ptr %l90, !tbaa !29
  %t200 = insertvalue { ptr } undef, ptr %t199, 0
  %t201 = getelementptr { i64, [2 x i64] }, ptr %t197, i32 0, i32 1
  store { ptr } %t200, ptr %t201
  %t202 = load { i64, [2 x i64] }, ptr %t197
  %t204 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 24, i64 8)
  store { i64, [2 x i64] } %t202, ptr %t204
  store ptr %t204, ptr %rv
  br label %ret
bb47:
  %t206 = load ptr, ptr %l3, !tbaa !29
  store { i64, [2 x i64] } zeroinitializer, ptr %t207
  %t208 = getelementptr { i64, [2 x i64] }, ptr %t207, i32 0, i32 0
  store i64 1, ptr %t208
  %t210 = insertvalue { ptr } undef, ptr %t206, 0
  %t211 = getelementptr { i64, [2 x i64] }, ptr %t207, i32 0, i32 1
  store { ptr } %t210, ptr %t211
  %t212 = load { i64, [2 x i64] }, ptr %t207
  %t214 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 24, i64 8)
  store { i64, [2 x i64] } %t212, ptr %t214
  store ptr %t214, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroRef(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca { i64, ptr }
  %l13 = alloca ptr
  %l16 = alloca i32
  %l17 = alloca i64
  %l21 = alloca ptr
  %l23 = alloca ptr
  %l24 = alloca i64
  %l26 = alloca i1
  %l27 = alloca ptr
  %l29 = alloca ptr
  %l30 = alloca i1
  %l31 = alloca i1
  %l32 = alloca ptr
  %l33 = alloca i1
  %l40 = alloca i1
  %l41 = alloca ptr
  %l42 = alloca i1
  %l50 = alloca i1
  %l51 = alloca ptr
  %l52 = alloca i1
  %l61 = alloca i1
  %l62 = alloca ptr
  %l63 = alloca i1
  %l70 = alloca i1
  %l71 = alloca ptr
  %l72 = alloca i1
  %l80 = alloca i1
  %l81 = alloca i1
  %l85 = alloca i1
  %l87 = alloca { i64, ptr }
  %l90 = alloca i1
  %l91 = alloca ptr
  %l92 = alloca i1
  %l95 = alloca ptr
  %l96 = alloca i1
  %l99 = alloca ptr
  %l100 = alloca i1
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
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/check:Checker", ptr %t6, i32 0, i32 1
  %t9 = load ptr, ptr %t8, !tbaa !29
  %t11 = getelementptr %"compiler/generic:Program", ptr %t9, i32 0, i32 2
  store ptr %t11, ptr %l13, !tbaa !29
  %t12 = load ptr, ptr %l1, !tbaa !29
  %t15 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t12)
  store i32 %t15, ptr %l16
  br label %bb4
bb4:
  %t16 = load ptr, ptr %l13, !tbaa !29
  %t17 = load i32, ptr %l16, !tbaa !23
  %t18 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t16, i32 %t17)
  store i64 %t18, ptr %l17
  br label %bb5
bb5:
  %t19 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t20 = load i64, ptr %l17, !tbaa !24
  %t22 = and i64 %t20, %t19
  %t24 = icmp ne i64 %t22, 0
  br i1 %t24, label %bb6, label %bb7
bb6:
  %t26 = load ptr, ptr %l0, !tbaa !29
  store ptr %t26, ptr %l21, !tbaa !29
  %t27 = load ptr, ptr %l1, !tbaa !29
  %t29 = call ptr @compiler_2fcheck_2ereadPlace(ptr %v1, ptr %v1, ptr %t27)
  store ptr %t29, ptr %l23
  br label %bb8
bb7:
  br label %bb15
bb8:
  %t30 = load ptr, ptr %l21, !tbaa !29
  %t31 = load ptr, ptr %l23, !tbaa !29
  %t32 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroRoot(ptr %v0, ptr %v1, ptr %t30, ptr %t31)
  store i64 %t32, ptr %l24
  br label %bb9
bb9:
  %t33 = load i64, ptr %l24, !tbaa !24
  %t34 = icmp sge i64 %t33, 0
  br i1 %t34, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l26, !tbaa !21
  br label %bb14
bb11:
  %t36 = load ptr, ptr %l0, !tbaa !29
  store ptr %t36, ptr %l27, !tbaa !29
  %t37 = load ptr, ptr %l1, !tbaa !29
  %t39 = call ptr @compiler_2fcheck_2ereadPlace(ptr %v1, ptr %v1, ptr %t37)
  store ptr %t39, ptr %l29
  br label %bb12
bb12:
  %t40 = load ptr, ptr %l27, !tbaa !29
  %t41 = load ptr, ptr %l29, !tbaa !29
  %t42 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroTempBase(ptr %v0, ptr %v1, ptr %t40, ptr %t41)
  store i1 %t42, ptr %l30
  br label %bb13
bb13:
  %t43 = load i1, ptr %l30, !tbaa !21
  store i1 %t43, ptr %l26, !tbaa !21
  br label %bb14
bb14:
  %t44 = load i1, ptr %l26, !tbaa !21
  store i1 %t44, ptr %rv
  br label %ret
bb15:
  %t45 = load ptr, ptr %l1, !tbaa !29
  store ptr %t45, ptr %l32, !tbaa !29
  store i1 false, ptr %l33, !tbaa !21
  %t46 = load ptr, ptr %l32, !tbaa !29
  %t47 = icmp ne ptr %t46, null
  br i1 %t47, label %bb16, label %bb17
bb16:
  %t49 = load ptr, ptr %l32, !tbaa !29
  %t50 = load i64, ptr %t49, !range !{i64 0, i64 18}
  %t52 = icmp eq i64 %t50, 2
  store i1 %t52, ptr %l33, !tbaa !21
  br label %bb17
bb17:
  %t53 = load i1, ptr %l33, !tbaa !21
  br i1 %t53, label %bb18, label %bb19
bb18:
  %t54 = load ptr, ptr %l1, !tbaa !29
  %t56 = getelementptr { i64, [5 x i64] }, ptr %t54, i32 0, i32 1
  %t57 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t56, i32 0, i32 2
  %t58 = load ptr, ptr %t57
  store ptr %t58, ptr %l2, !tbaa !29
  br label %bb20
bb19:
  br label %bb22
bb20:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t61 = load ptr, ptr %l2, !tbaa !29
  %t64 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroRead(ptr %v0, ptr %v1, ptr %t60, ptr %t61)
  store i1 %t64, ptr %l40
  br label %bb21
bb21:
  %t65 = load i1, ptr %l40, !tbaa !21
  store i1 %t65, ptr %l31, !tbaa !21
  br label %bb76
bb22:
  %t66 = load ptr, ptr %l1, !tbaa !29
  store ptr %t66, ptr %l41, !tbaa !29
  store i1 false, ptr %l42, !tbaa !21
  %t67 = load ptr, ptr %l41, !tbaa !29
  %t68 = icmp ne ptr %t67, null
  br i1 %t68, label %bb23, label %bb24
bb23:
  %t70 = load ptr, ptr %l41, !tbaa !29
  %t71 = load i64, ptr %t70, !range !{i64 0, i64 18}
  %t73 = icmp eq i64 %t71, 3
  store i1 %t73, ptr %l42, !tbaa !21
  br label %bb24
bb24:
  %t74 = load i1, ptr %l42, !tbaa !21
  br i1 %t74, label %bb25, label %bb26
bb25:
  %t75 = load ptr, ptr %l1, !tbaa !29
  %t77 = getelementptr { i64, [5 x i64] }, ptr %t75, i32 0, i32 1
  %t78 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t77, i32 0, i32 2
  %t79 = load ptr, ptr %t78
  store ptr %t79, ptr %l3, !tbaa !29
  br label %bb27
bb26:
  br label %bb29
bb27:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t82 = load ptr, ptr %l3, !tbaa !29
  %t86 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroPlace(ptr %v0, ptr %v1, ptr %t81, ptr %t82)
  store i1 %t86, ptr %l50
  br label %bb28
bb28:
  %t87 = load i1, ptr %l50, !tbaa !21
  store i1 %t87, ptr %l31, !tbaa !21
  br label %bb76
bb29:
  %t88 = load ptr, ptr %l1, !tbaa !29
  store ptr %t88, ptr %l51, !tbaa !29
  store i1 false, ptr %l52, !tbaa !21
  %t89 = load ptr, ptr %l51, !tbaa !29
  %t90 = icmp ne ptr %t89, null
  br i1 %t90, label %bb30, label %bb31
bb30:
  %t92 = load ptr, ptr %l51, !tbaa !29
  %t93 = load i64, ptr %t92, !range !{i64 0, i64 18}
  %t95 = icmp eq i64 %t93, 10
  store i1 %t95, ptr %l52, !tbaa !21
  br label %bb31
bb31:
  %t96 = load i1, ptr %l52, !tbaa !21
  br i1 %t96, label %bb32, label %bb33
bb32:
  %t97 = load ptr, ptr %l1, !tbaa !29
  %t99 = getelementptr { i64, [5 x i64] }, ptr %t97, i32 0, i32 1
  %t100 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t99, i32 0, i32 2
  %t101 = load ptr, ptr %t100
  store ptr %t101, ptr %l4, !tbaa !29
  br label %bb34
bb33:
  br label %bb36
bb34:
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t104 = load ptr, ptr %l4, !tbaa !29
  %t106 = getelementptr %"compiler/typed:Slice", ptr %t104, i32 0, i32 0
  %t107 = load ptr, ptr %t106, !tbaa !29
  %t111 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroPlace(ptr %v0, ptr %v1, ptr %t103, ptr %t107)
  store i1 %t111, ptr %l61
  br label %bb35
bb35:
  %t112 = load i1, ptr %l61, !tbaa !21
  store i1 %t112, ptr %l31, !tbaa !21
  br label %bb76
bb36:
  %t113 = load ptr, ptr %l1, !tbaa !29
  store ptr %t113, ptr %l62, !tbaa !29
  store i1 false, ptr %l63, !tbaa !21
  %t114 = load ptr, ptr %l62, !tbaa !29
  %t115 = icmp ne ptr %t114, null
  br i1 %t115, label %bb37, label %bb38
bb37:
  %t117 = load ptr, ptr %l62, !tbaa !29
  %t118 = load i64, ptr %t117, !range !{i64 0, i64 18}
  %t120 = icmp eq i64 %t118, 6
  store i1 %t120, ptr %l63, !tbaa !21
  br label %bb38
bb38:
  %t121 = load i1, ptr %l63, !tbaa !21
  br i1 %t121, label %bb39, label %bb40
bb39:
  %t122 = load ptr, ptr %l1, !tbaa !29
  %t124 = getelementptr { i64, [5 x i64] }, ptr %t122, i32 0, i32 1
  %t125 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t124, i32 0, i32 2
  %t126 = load ptr, ptr %t125
  store ptr %t126, ptr %l5, !tbaa !29
  br label %bb41
bb40:
  br label %bb43
bb41:
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t129 = load ptr, ptr %l5, !tbaa !29
  %t132 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroCallRef(ptr %v0, ptr %v1, ptr %t128, ptr %t129)
  store i1 %t132, ptr %l70
  br label %bb42
bb42:
  %t133 = load i1, ptr %l70, !tbaa !21
  store i1 %t133, ptr %l31, !tbaa !21
  br label %bb76
bb43:
  %t134 = load ptr, ptr %l1, !tbaa !29
  store ptr %t134, ptr %l71, !tbaa !29
  store i1 false, ptr %l72, !tbaa !21
  %t135 = load ptr, ptr %l71, !tbaa !29
  %t136 = icmp ne ptr %t135, null
  br i1 %t136, label %bb44, label %bb45
bb44:
  %t138 = load ptr, ptr %l71, !tbaa !29
  %t139 = load i64, ptr %t138, !range !{i64 0, i64 18}
  %t141 = icmp eq i64 %t139, 9
  store i1 %t141, ptr %l72, !tbaa !21
  br label %bb45
bb45:
  %t142 = load i1, ptr %l72, !tbaa !21
  br i1 %t142, label %bb46, label %bb47
bb46:
  %t143 = load ptr, ptr %l1, !tbaa !29
  %t145 = getelementptr { i64, [5 x i64] }, ptr %t143, i32 0, i32 1
  %t146 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t145, i32 0, i32 2
  %t147 = load i32, ptr %t146, !range !{i32 0, i32 52}
  store i32 %t147, ptr %l6
  %t149 = load ptr, ptr %l1, !tbaa !29
  %t151 = getelementptr { i64, [5 x i64] }, ptr %t149, i32 0, i32 1
  %t152 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t151, i32 0, i32 4
  %t153 = load { i64, ptr }, ptr %t152
  store { i64, ptr } %t153, ptr %l7, !tbaa !27
  br label %bb48
bb47:
  br label %bb57
bb48:
  %t155 = load i32, ptr %l6, !range !{i32 0, i32 52}
  %t157 = call i1 @compiler_2ftyped_2ePassesRefs(i32 %t155)
  store i1 %t157, ptr %l80
  br label %bb49
bb49:
  %t158 = load i1, ptr %l80, !tbaa !21
  br i1 %t158, label %bb50, label %bb51
bb50:
  %t159 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t161 = extractvalue { i64, ptr } %t159, 0
  %t163 = icmp sgt i64 %t161, 0
  store i1 %t163, ptr %l81, !tbaa !21
  br label %bb52
bb51:
  store i1 false, ptr %l81, !tbaa !21
  br label %bb52
bb52:
  %t165 = load i1, ptr %l81, !tbaa !21
  br i1 %t165, label %bb53, label %bb54
bb53:
  %t166 = load ptr, ptr %l0, !tbaa !29
  %t167 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t167, ptr %l87, !tbaa !27
  %t168 = getelementptr { i64, ptr }, ptr %l87, i32 0, i32 1
  %t169 = load ptr, ptr %t168, !tbaa !27
  %t170 = getelementptr ptr, ptr %t169, i64 0
  %t171 = load ptr, ptr %t170, !tbaa !39
  %t175 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroRef(ptr %v0, ptr %v1, ptr %t166, ptr %t171)
  store i1 %t175, ptr %l90
  br label %bb55
bb54:
  store i1 true, ptr %l85, !tbaa !21
  br label %bb56
bb55:
  %t176 = load i1, ptr %l90, !tbaa !21
  store i1 %t176, ptr %l85, !tbaa !21
  br label %bb56
bb56:
  %t177 = load i1, ptr %l85, !tbaa !21
  store i1 %t177, ptr %l31, !tbaa !21
  br label %bb76
bb57:
  %t178 = load ptr, ptr %l1, !tbaa !29
  store ptr %t178, ptr %l91, !tbaa !29
  store i1 false, ptr %l92, !tbaa !21
  %t179 = load ptr, ptr %l91, !tbaa !29
  %t180 = icmp ne ptr %t179, null
  br i1 %t180, label %bb58, label %bb59
bb58:
  %t182 = load ptr, ptr %l91, !tbaa !29
  %t183 = load i64, ptr %t182, !range !{i64 0, i64 18}
  %t185 = icmp eq i64 %t183, 5
  store i1 %t185, ptr %l92, !tbaa !21
  br label %bb59
bb59:
  %t186 = load i1, ptr %l92, !tbaa !21
  br i1 %t186, label %bb60, label %bb61
bb60:
  br label %bb70
bb61:
  %t187 = load ptr, ptr %l1, !tbaa !29
  store ptr %t187, ptr %l95, !tbaa !29
  store i1 false, ptr %l96, !tbaa !21
  %t188 = load ptr, ptr %l95, !tbaa !29
  %t189 = icmp ne ptr %t188, null
  br i1 %t189, label %bb62, label %bb63
bb62:
  %t191 = load ptr, ptr %l95, !tbaa !29
  %t192 = load i64, ptr %t191, !range !{i64 0, i64 18}
  %t194 = icmp eq i64 %t192, 1
  store i1 %t194, ptr %l96, !tbaa !21
  br label %bb63
bb63:
  %t195 = load i1, ptr %l96, !tbaa !21
  br i1 %t195, label %bb64, label %bb65
bb64:
  br label %bb70
bb65:
  %t196 = load ptr, ptr %l1, !tbaa !29
  store ptr %t196, ptr %l99, !tbaa !29
  store i1 false, ptr %l100, !tbaa !21
  %t197 = load ptr, ptr %l99, !tbaa !29
  %t198 = icmp ne ptr %t197, null
  br i1 %t198, label %bb66, label %bb67
bb66:
  %t200 = load ptr, ptr %l99, !tbaa !29
  %t201 = load i64, ptr %t200, !range !{i64 0, i64 18}
  %t203 = icmp eq i64 %t201, 0
  store i1 %t203, ptr %l100, !tbaa !21
  br label %bb67
bb67:
  %t204 = load i1, ptr %l100, !tbaa !21
  br i1 %t204, label %bb68, label %bb69
bb68:
  br label %bb70
bb69:
  br label %bb71
bb70:
  store i1 false, ptr %l31, !tbaa !21
  br label %bb76
bb71:
  br i1 true, label %bb72, label %bb73
bb72:
  br label %bb74
bb73:
  br label %bb75
bb74:
  store i1 true, ptr %l31, !tbaa !21
  br label %bb76
bb75:
  call void @__olang_check_failed(ptr @olang_loc_62c5ac3e914a4019_8e197c98e172d865)
  unreachable
bb76:
  %t205 = load i1, ptr %l31, !tbaa !21
  store i1 %t205, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esayUncovered(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, i32 %a2, ptr %a3, ptr %a4, i1 %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i1
  %l6 = alloca i32
  %l7 = alloca %"compiler/source:Span"
  %l8 = alloca i64
  %l9 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca { i64, ptr }
  %l16 = alloca i32
  %l19 = alloca %"compiler/source:Span"
  %l22 = alloca i1
  %l26 = alloca i64
  %l31 = alloca { i64, ptr }
  %l34 = alloca ptr
  %l35 = alloca %"compiler/source:Span"
  %l39 = alloca i1
  %l44 = alloca { i64, ptr }
  %l46 = alloca { i64, ptr }
  %l49 = alloca { i64, ptr }
  %l52 = alloca { i64, ptr }
  %l54 = alloca %"compiler/diagmsg:Msg"
  %l55 = alloca i64
  %l57 = alloca i64
  %l59 = alloca i1
  %l64 = alloca i32
  %l68 = alloca ptr
  %l73 = alloca i32
  %l74 = alloca { i64, ptr }
  %l75 = alloca i64
  %l77 = alloca i64
  %l78 = alloca i32
  %l81 = alloca i1
  %l86 = alloca ptr
  %l87 = alloca %"compiler/source:Span"
  %l89 = alloca { i64, ptr }
  %l92 = alloca { i64, ptr }
  %l93 = alloca { i64, ptr }
  %l96 = alloca { i64, ptr }
  %l98 = alloca %"compiler/diagmsg:Msg"
  %l99 = alloca i64
  %l101 = alloca i1
  %l105 = alloca i1
  %l108 = alloca i1
  %l109 = alloca i64
  %l112 = alloca i64
  %l113 = alloca i32
  %l115 = alloca i1
  %l118 = alloca i64
  %l121 = alloca { i64, ptr }
  %l122 = alloca i64
  %l125 = alloca i64
  %l127 = alloca { i64, ptr }
  %l129 = alloca ptr
  %l135 = alloca %"compiler/source:Span"
  %l138 = alloca { i64, ptr }
  %l141 = alloca %"compiler/diagmsg:Msg"
  %l142 = alloca i64
  %l144 = alloca i1
  %l148 = alloca ptr
  %l154 = alloca %"compiler/source:Span"
  %l157 = alloca { i64, ptr }
  %l159 = alloca %"compiler/diagmsg:Msg"
  %l160 = alloca i64
  %s1 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s8 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
  store ptr %a3, ptr %l3
  store ptr %a4, ptr %l4
  store i1 %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l2, !tbaa !23
  %t5 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t1, i32 %t2)
  store i32 %t5, ptr %l16
  br label %bb1
bb1:
  %t6 = load i32, ptr %l16, !tbaa !23
  store i32 %t6, ptr %l6, !tbaa !23
  %t7 = load ptr, ptr %l1, !tbaa !29
  %t9 = getelementptr %"compiler/ast:Match", ptr %t7, i32 0, i32 1
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t10)
  store %"compiler/source:Span" %t12, ptr %l19
  br label %bb2
bb2:
  %t13 = load %"compiler/source:Span", ptr %l19
  store %"compiler/source:Span" %t13, ptr %l7
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t15 = load i32, ptr %l6, !tbaa !23
  %t18 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisEnum(ptr %v0, ptr %t14, i32 %t15)
  store i1 %t18, ptr %l22
  br label %bb3
bb3:
  %t19 = load i1, ptr %l22, !tbaa !21
  br i1 %t19, label %bb4, label %bb5
bb4:
  store %olang.scope zeroinitializer, ptr %s1
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load ptr, ptr %l3, !tbaa !29
  %t22 = load i32, ptr %l6, !tbaa !23
  %t26 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efirstUncovered(ptr %v0, ptr %v2, ptr %t20, ptr %t21, i32 %t22)
  store i64 %t26, ptr %l26
  br label %bb6
bb5:
  br label %bb21
bb6:
  %t27 = load i64, ptr %l26, !tbaa !24
  store i64 %t27, ptr %l8, !tbaa !24
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/check:Checker", ptr %t28, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t33 = getelementptr %"compiler/generic:Program", ptr %t31, i32 0, i32 2
  %t34 = load i32, ptr %l6, !tbaa !23
  %t37 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCaseNames(ptr %v0, ptr %s1, ptr %t33, i32 %t34)
  store { i64, ptr } %t37, ptr %l31
  br label %bb7
bb7:
  %t38 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t38, ptr %l9, !tbaa !27
  %t39 = load i64, ptr %l8, !tbaa !24
  %t41 = icmp sge i64 %t39, 0
  br i1 %t41, label %bb8, label %bb9
bb8:
  %t43 = load ptr, ptr %l0, !tbaa !29
  store ptr %t43, ptr %l34, !tbaa !29
  %t44 = load %"compiler/source:Span", ptr %l7
  store %"compiler/source:Span" %t44, ptr %l35
  %t45 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t47 = extractvalue { i64, ptr } %t45, 0
  %t49 = icmp sgt i64 %t47, 0
  br i1 %t49, label %bb10, label %bb11
bb9:
  br label %bb20
bb10:
  %t51 = load i64, ptr %l8, !tbaa !24
  %t52 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t54 = extractvalue { i64, ptr } %t52, 0
  %t57 = icmp slt i64 %t51, %t54
  store i1 %t57, ptr %l39, !tbaa !21
  br label %bb12
bb11:
  store i1 false, ptr %l39, !tbaa !21
  br label %bb12
bb12:
  %t59 = load i1, ptr %l39, !tbaa !21
  br i1 %t59, label %bb13, label %bb14
bb13:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t61 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t61, ptr %l46, !tbaa !27
  %t62 = load i64, ptr %l8, !tbaa !24
  %t64 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !27
  %t66 = getelementptr i32, ptr %t65, i64 %t62
  %t67 = load i32, ptr %t66, !tbaa !33
  %t70 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t60, i32 %t67)
  store { i64, ptr } %t70, ptr %l49
  br label %bb15
bb14:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d29, i32 0, i32 1) }, ptr %l44, !tbaa !27
  br label %bb16
bb15:
  %t71 = load { i64, ptr }, ptr %l49, !tbaa !27
  store { i64, ptr } %t71, ptr %l44, !tbaa !27
  br label %bb16
bb16:
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t73 = load i32, ptr %l6, !tbaa !23
  %t76 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t72, i32 %t73)
  store { i64, ptr } %t76, ptr %l52
  br label %bb17
bb17:
  %t77 = load { i64, ptr }, ptr %l52, !tbaa !27
  %t78 = extractvalue { i64, ptr } %t77, 0
  %t79 = extractvalue { i64, ptr } %t77, 1
  %t80 = mul i64 %t78, 1
  %t81 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t80)
  call void @llvm.memcpy.p0.p0.i64(ptr %t81, ptr %t79, i64 %t80, i1 false)
  %t82 = insertvalue { i64, ptr } undef, i64 %t78, 0
  %t83 = insertvalue { i64, ptr } %t82, ptr %t81, 1
  %t84 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t86 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMatchNotExhaustive(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t84, { i64, ptr } %t83)
  store %"compiler/diagmsg:Msg" %t86, ptr %l54
  br label %bb18
bb18:
  %t87 = load ptr, ptr %l34, !tbaa !29
  %t88 = load %"compiler/source:Span", ptr %l35
  %t89 = load %"compiler/diagmsg:Msg", ptr %l54
  %t90 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t87, %"compiler/source:Span" %t88, %"compiler/diagmsg:Msg" %t89)
  store i64 %t90, ptr %l55
  br label %bb19
bb19:
  br label %bb20
bb20:
  call void @__olang_scope_close(ptr %s1)
  br label %ret
bb21:
  %t91 = load ptr, ptr %l4, !tbaa !29
  %t93 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v3, ptr %t91)
  store i64 %t93, ptr %l57
  br label %bb22
bb22:
  %t94 = load i64, ptr %l57, !tbaa !24
  %t95 = icmp sgt i64 %t94, 0
  br i1 %t95, label %bb23, label %bb24
bb23:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t99 = getelementptr %"compiler/check:Checker", ptr %t97, i32 0, i32 1
  %t100 = load ptr, ptr %t99, !tbaa !29
  %t102 = getelementptr %"compiler/generic:Program", ptr %t100, i32 0, i32 2
  %t103 = load i32, ptr %l6, !tbaa !23
  %t106 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t102, i32 %t103)
  store i32 %t106, ptr %l64
  br label %bb25
bb24:
  store i1 false, ptr %l59, !tbaa !21
  br label %bb26
bb25:
  %t107 = load i32, ptr %l64, !range !{i32 0, i32 33}
  %t109 = trunc i64 29 to i32
  %t110 = icmp eq i32 %t107, %t109
  store i1 %t110, ptr %l59, !tbaa !21
  br label %bb26
bb26:
  %t112 = load i1, ptr %l59, !tbaa !21
  br i1 %t112, label %bb27, label %bb28
bb27:
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t115 = getelementptr %"compiler/check:Checker", ptr %t113, i32 0, i32 1
  %t116 = load ptr, ptr %t115, !tbaa !29
  store ptr %t116, ptr %l68, !tbaa !29
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t119 = getelementptr %"compiler/check:Checker", ptr %t117, i32 0, i32 1
  %t120 = load ptr, ptr %t119, !tbaa !29
  %t122 = getelementptr %"compiler/generic:Program", ptr %t120, i32 0, i32 2
  %t123 = load i32, ptr %l6, !tbaa !23
  %t126 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAnyTrait(ptr %v0, ptr %t122, i32 %t123)
  store i32 %t126, ptr %l73
  br label %bb29
bb28:
  br label %bb45
bb29:
  %t127 = load ptr, ptr %l68, !tbaa !29
  %t128 = load i32, ptr %l73, !tbaa !23
  %t129 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMembers(ptr %v0, ptr %v0, ptr %t127, i32 %t128)
  store { i64, ptr } %t129, ptr %l74
  br label %bb30
bb30:
  %t130 = load { i64, ptr }, ptr %l74, !tbaa !27
  store { i64, ptr } %t130, ptr %l10, !tbaa !27
  %t131 = load ptr, ptr %l4, !tbaa !29
  %t133 = call { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eIndexOf_3cBool_3e(ptr %v3, ptr %t131, i1 false)
  %t134 = extractvalue { i32, i64 } %t133, 1
  %t135 = extractvalue { i32, i64 } %t133, 0
  store i32 %t135, ptr %l78
  %t136 = icmp ne i32 %t135, 0
  br i1 %t136, label %bb32, label %ok.137, !prof !99
ok.137:
  store i64 %t134, ptr %l77
  br label %bb31
bb31:
  %t138 = load i64, ptr %l77, !tbaa !24
  store i64 %t138, ptr %l75, !tbaa !24
  br label %bb34
bb32:
  br label %bb33
bb33:
  store i64 -1, ptr %l75, !tbaa !24
  br label %bb34
bb34:
  %t139 = load i64, ptr %l75, !tbaa !24
  store i64 %t139, ptr %l11, !tbaa !24
  %t140 = load i64, ptr %l11, !tbaa !24
  %t142 = icmp sge i64 %t140, 0
  br i1 %t142, label %bb35, label %bb36
bb35:
  %t144 = load i64, ptr %l11, !tbaa !24
  %t145 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t147 = extractvalue { i64, ptr } %t145, 0
  %t150 = icmp slt i64 %t144, %t147
  store i1 %t150, ptr %l81, !tbaa !21
  br label %bb37
bb36:
  store i1 false, ptr %l81, !tbaa !21
  br label %bb37
bb37:
  %t152 = load i1, ptr %l81, !tbaa !21
  br i1 %t152, label %bb38, label %bb39
bb38:
  %t153 = load ptr, ptr %l0, !tbaa !29
  store ptr %t153, ptr %l86, !tbaa !29
  %t154 = load %"compiler/source:Span", ptr %l7
  store %"compiler/source:Span" %t154, ptr %l87
  %t155 = load ptr, ptr %l0, !tbaa !29
  %t156 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t156, ptr %l89, !tbaa !27
  %t157 = load i64, ptr %l11, !tbaa !24
  %t159 = getelementptr { i64, ptr }, ptr %l89, i32 0, i32 1
  %t160 = load ptr, ptr %t159, !tbaa !27
  %t161 = getelementptr i32, ptr %t160, i64 %t157
  %t162 = load i32, ptr %t161, !tbaa !33
  %t165 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t155, i32 %t162)
  store { i64, ptr } %t165, ptr %l92
  br label %bb40
bb39:
  br label %bb44
bb40:
  %t166 = load { i64, ptr }, ptr %l92, !tbaa !27
  %t167 = extractvalue { i64, ptr } %t166, 0
  %t168 = extractvalue { i64, ptr } %t166, 1
  %t169 = mul i64 %t167, 1
  %t170 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t169)
  call void @llvm.memcpy.p0.p0.i64(ptr %t170, ptr %t168, i64 %t169, i1 false)
  %t171 = insertvalue { i64, ptr } undef, i64 %t167, 0
  %t172 = insertvalue { i64, ptr } %t171, ptr %t170, 1
  store { i64, ptr } %t172, ptr %l93, !tbaa !27
  %t173 = load ptr, ptr %l0, !tbaa !29
  %t174 = load i32, ptr %l2, !tbaa !23
  %t177 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t173, i32 %t174)
  store { i64, ptr } %t177, ptr %l96
  br label %bb41
bb41:
  %t178 = load { i64, ptr }, ptr %l96, !tbaa !27
  %t179 = extractvalue { i64, ptr } %t178, 0
  %t180 = extractvalue { i64, ptr } %t178, 1
  %t181 = mul i64 %t179, 1
  %t182 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t181)
  call void @llvm.memcpy.p0.p0.i64(ptr %t182, ptr %t180, i64 %t181, i1 false)
  %t183 = insertvalue { i64, ptr } undef, i64 %t179, 0
  %t184 = insertvalue { i64, ptr } %t183, ptr %t182, 1
  %t185 = load { i64, ptr }, ptr %l93, !tbaa !27
  %t187 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMatchNotExhaustive(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t185, { i64, ptr } %t184)
  store %"compiler/diagmsg:Msg" %t187, ptr %l98
  br label %bb42
bb42:
  %t188 = load ptr, ptr %l86, !tbaa !29
  %t189 = load %"compiler/source:Span", ptr %l87
  %t190 = load %"compiler/diagmsg:Msg", ptr %l98
  %t191 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t188, %"compiler/source:Span" %t189, %"compiler/diagmsg:Msg" %t190)
  store i64 %t191, ptr %l99
  br label %bb43
bb43:
  br label %bb44
bb44:
  br label %ret
bb45:
  %t192 = load i1, ptr %l5, !tbaa !21
  br i1 %t192, label %bb46, label %bb47
bb46:
  %t194 = load i32, ptr %l2, !tbaa !23
  %t195 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t198 = icmp ne i32 %t194, %t195
  store i1 %t198, ptr %l101, !tbaa !21
  br label %bb48
bb47:
  store i1 false, ptr %l101, !tbaa !21
  br label %bb48
bb48:
  %t200 = load i1, ptr %l101, !tbaa !21
  br i1 %t200, label %bb49, label %bb50
bb49:
  %t201 = load ptr, ptr %l0, !tbaa !29
  %t202 = load ptr, ptr %l3, !tbaa !29
  %t205 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eseqColumn(ptr %v0, ptr %v2, ptr %t201, ptr %t202)
  store i1 %t205, ptr %l108
  br label %bb51
bb50:
  store i1 false, ptr %l105, !tbaa !21
  br label %bb52
bb51:
  %t206 = load i1, ptr %l108, !tbaa !21
  store i1 %t206, ptr %l105, !tbaa !21
  br label %bb52
bb52:
  %t207 = load i1, ptr %l105, !tbaa !21
  br i1 %t207, label %bb53, label %bb54
bb53:
  %t208 = load ptr, ptr %l0, !tbaa !29
  %t209 = load ptr, ptr %l3, !tbaa !29
  %t212 = call { i32, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eseqUncovered(ptr %v0, ptr %v2, ptr %t208, ptr %t209)
  %t213 = extractvalue { i32, i64 } %t212, 1
  %t214 = extractvalue { i32, i64 } %t212, 0
  store i32 %t214, ptr %l113
  %t215 = icmp ne i32 %t214, 0
  br i1 %t215, label %bb56, label %ok.216, !prof !99
ok.216:
  store i64 %t213, ptr %l112
  br label %bb55
bb54:
  br label %bb73
bb55:
  %t217 = load i64, ptr %l112, !tbaa !24
  store i64 %t217, ptr %l109, !tbaa !24
  br label %bb58
bb56:
  %t218 = load i32, ptr %l113, !tbaa !23
  %t219 = ashr i32 %t218, 16
  %t221 = icmp eq i32 %t219, 1
  store i1 %t221, ptr %l115, !tbaa !21
  br label %bb57
bb57:
  store i64 -1, ptr %l109, !tbaa !24
  br label %bb58
bb58:
  %t222 = load i64, ptr %l109, !tbaa !24
  store i64 %t222, ptr %l12, !tbaa !24
  %t223 = load i64, ptr %l12, !tbaa !24
  %t225 = icmp sge i64 %t223, 0
  br i1 %t225, label %bb59, label %bb60
bb59:
  store %olang.scope zeroinitializer, ptr %s6
  %t227 = load i64, ptr %l12, !tbaa !24
  store i64 %t227, ptr %l118, !tbaa !24
  %t228 = load i64, ptr %l12, !tbaa !24
  %t230 = icmp eq i64 %t228, 1
  br i1 %t230, label %bb61, label %bb62
bb60:
  br label %bb72
bb61:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d30, i32 0, i32 1) }, ptr %l121, !tbaa !27
  br label %bb63
bb62:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d31, i32 0, i32 1) }, ptr %l121, !tbaa !27
  br label %bb63
bb63:
  %t232 = load i64, ptr %l12, !tbaa !24
  store i64 %t232, ptr %l122, !tbaa !24
  %t233 = load ptr, ptr %l0, !tbaa !29
  %t234 = load ptr, ptr %l3, !tbaa !29
  %t237 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eseqLongest(ptr %v0, ptr %v2, ptr %t233, ptr %t234)
  store i64 %t237, ptr %l125
  br label %bb64
bb64:
  %t238 = load i64, ptr %l122, !tbaa !24
  %t239 = load i64, ptr %l125, !tbaa !24
  %t240 = icmp sgt i64 %t238, %t239
  br i1 %t240, label %bb65, label %bb66
bb65:
  store { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d32, i32 0, i32 1) }, ptr %l127, !tbaa !27
  br label %bb67
bb66:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d33, i32 0, i32 1) }, ptr %l127, !tbaa !27
  br label %bb67
bb67:
  %t242 = load i64, ptr %l118, !tbaa !24
  %t243 = call i64 @__olang_fmt_i64(ptr null, i64 %t242)
  %t244 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d34, i32 0, i32 1) }, 1
  %t245 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d34, i32 0, i32 1) }, 0
  %t246 = add i64 %t243, %t245
  %t247 = load { i64, ptr }, ptr %l121, !tbaa !27
  %t248 = extractvalue { i64, ptr } %t247, 1
  %t249 = extractvalue { i64, ptr } %t247, 0
  %t250 = add i64 %t246, %t249
  %t251 = load { i64, ptr }, ptr %l127, !tbaa !27
  %t252 = extractvalue { i64, ptr } %t251, 1
  %t253 = extractvalue { i64, ptr } %t251, 0
  %t254 = add i64 %t250, %t253
  %t255 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t254)
  %t256 = call i64 @__olang_fmt_i64(ptr %t255, i64 %t242)
  %t257 = getelementptr i8, ptr %t255, i64 %t243
  call void @olang_textcopy(ptr %t257, ptr %t244, i64 %t245)
  %t258 = getelementptr i8, ptr %t257, i64 %t245
  call void @olang_textcopy(ptr %t258, ptr %t248, i64 %t249)
  %t259 = getelementptr i8, ptr %t258, i64 %t249
  call void @olang_textcopy(ptr %t259, ptr %t252, i64 %t253)
  %t260 = insertvalue { i64, ptr } undef, i64 %t254, 0
  %t261 = insertvalue { i64, ptr } %t260, ptr %t255, 1
  store { i64, ptr } %t261, ptr %l13, !tbaa !27
  %t263 = load ptr, ptr %l0, !tbaa !29
  store ptr %t263, ptr %l129, !tbaa !29
  %t264 = load ptr, ptr %l1, !tbaa !29
  %t266 = getelementptr %"compiler/ast:Match", ptr %t264, i32 0, i32 0
  %t267 = getelementptr %"compiler/source:Span", ptr %t266, i32 0, i32 0
  %t268 = load i32, ptr %t267, !tbaa !23
  %t269 = load ptr, ptr %l1, !tbaa !29
  %t271 = getelementptr %"compiler/ast:Match", ptr %t269, i32 0, i32 0
  %t272 = getelementptr %"compiler/source:Span", ptr %t271, i32 0, i32 0
  %t273 = load i32, ptr %t272, !tbaa !23
  %t275 = add i32 %t273, 5
  %t278 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s6, i32 %t268, i32 %t275)
  store %"compiler/source:Span" %t278, ptr %l135
  br label %bb68
bb68:
  %t279 = load ptr, ptr %l0, !tbaa !29
  %t280 = load i32, ptr %l2, !tbaa !23
  %t283 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t279, i32 %t280)
  store { i64, ptr } %t283, ptr %l138
  br label %bb69
bb69:
  %t284 = load { i64, ptr }, ptr %l138, !tbaa !27
  %t285 = extractvalue { i64, ptr } %t284, 0
  %t286 = extractvalue { i64, ptr } %t284, 1
  %t287 = mul i64 %t285, 1
  %t288 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t287)
  call void @llvm.memcpy.p0.p0.i64(ptr %t288, ptr %t286, i64 %t287, i1 false)
  %t289 = insertvalue { i64, ptr } undef, i64 %t285, 0
  %t290 = insertvalue { i64, ptr } %t289, ptr %t288, 1
  %t291 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t294 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMatchLengthUncovered(ptr %v0, ptr %s6, ptr %v0, { i64, ptr } %t290, { i64, ptr } %t291)
  store %"compiler/diagmsg:Msg" %t294, ptr %l141
  br label %bb70
bb70:
  %t295 = load ptr, ptr %l129, !tbaa !29
  %t296 = load %"compiler/source:Span", ptr %l135
  %t297 = load %"compiler/diagmsg:Msg", ptr %l141
  %t298 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t295, %"compiler/source:Span" %t296, %"compiler/diagmsg:Msg" %t297)
  store i64 %t298, ptr %l142
  br label %bb71
bb71:
  call void @__olang_scope_close(ptr %s6)
  br label %ret
bb72:
  br label %bb73
bb73:
  %t299 = load i1, ptr %l5, !tbaa !21
  br i1 %t299, label %bb74, label %bb75
bb74:
  %t301 = load i32, ptr %l2, !tbaa !23
  %t302 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t305 = icmp ne i32 %t301, %t302
  store i1 %t305, ptr %l144, !tbaa !21
  br label %bb76
bb75:
  store i1 false, ptr %l144, !tbaa !21
  br label %bb76
bb76:
  %t307 = load i1, ptr %l144, !tbaa !21
  br i1 %t307, label %bb77, label %bb78
bb77:
  store %olang.scope zeroinitializer, ptr %s8
  %t308 = load ptr, ptr %l0, !tbaa !29
  store ptr %t308, ptr %l148, !tbaa !29
  %t309 = load ptr, ptr %l1, !tbaa !29
  %t311 = getelementptr %"compiler/ast:Match", ptr %t309, i32 0, i32 0
  %t312 = getelementptr %"compiler/source:Span", ptr %t311, i32 0, i32 0
  %t313 = load i32, ptr %t312, !tbaa !23
  %t314 = load ptr, ptr %l1, !tbaa !29
  %t316 = getelementptr %"compiler/ast:Match", ptr %t314, i32 0, i32 0
  %t317 = getelementptr %"compiler/source:Span", ptr %t316, i32 0, i32 0
  %t318 = load i32, ptr %t317, !tbaa !23
  %t320 = add i32 %t318, 5
  %t323 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s8, i32 %t313, i32 %t320)
  store %"compiler/source:Span" %t323, ptr %l154
  br label %bb79
bb78:
  br label %bb83
bb79:
  %t324 = load ptr, ptr %l0, !tbaa !29
  %t325 = load i32, ptr %l2, !tbaa !23
  %t328 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t324, i32 %t325)
  store { i64, ptr } %t328, ptr %l157
  br label %bb80
bb80:
  %t329 = load { i64, ptr }, ptr %l157, !tbaa !27
  %t330 = extractvalue { i64, ptr } %t329, 0
  %t331 = extractvalue { i64, ptr } %t329, 1
  %t332 = mul i64 %t330, 1
  %t333 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t332)
  call void @llvm.memcpy.p0.p0.i64(ptr %t333, ptr %t331, i64 %t332, i1 false)
  %t334 = insertvalue { i64, ptr } undef, i64 %t330, 0
  %t335 = insertvalue { i64, ptr } %t334, ptr %t333, 1
  %t337 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMatchValueUncovered(ptr %v0, ptr %v0, { i64, ptr } %t335)
  store %"compiler/diagmsg:Msg" %t337, ptr %l159
  br label %bb81
bb81:
  %t338 = load ptr, ptr %l148, !tbaa !29
  %t339 = load %"compiler/source:Span", ptr %l154
  %t340 = load %"compiler/diagmsg:Msg", ptr %l159
  %t341 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t338, %"compiler/source:Span" %t339, %"compiler/diagmsg:Msg" %t340)
  store i64 %t341, ptr %l160
  br label %bb82
bb82:
  call void @__olang_scope_close(ptr %s8)
  br label %bb83
bb83:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2escalarType(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l6 = alloca i1
  %l11 = alloca i1
  %l17 = alloca i32
  %l21 = alloca i1
  %l26 = alloca i1
  %l31 = alloca ptr
  %l36 = alloca i32
  %l37 = alloca i32
  %l38 = alloca i1
  %l41 = alloca ptr
  %l46 = alloca i32
  %l47 = alloca i1
  %l52 = alloca ptr
  %l57 = alloca i32
  %l58 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l1, !tbaa !23
  %t2 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t5 = icmp eq i32 %t1, %t2
  br i1 %t5, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb4
bb2:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/check:Checker", ptr %t7, i32 0, i32 1
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = getelementptr %"compiler/generic:Program", ptr %t10, i32 0, i32 2
  %t13 = load i32, ptr %l1, !tbaa !23
  %t16 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNumber(ptr %v0, ptr %t12, i32 %t13)
  store i1 %t16, ptr %l11
  br label %bb3
bb3:
  %t17 = load i1, ptr %l11, !tbaa !21
  store i1 %t17, ptr %l6, !tbaa !21
  br label %bb4
bb4:
  %t18 = load i1, ptr %l6, !tbaa !21
  br i1 %t18, label %bb5, label %bb6
bb5:
  store i1 true, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/check:Checker", ptr %t20, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !29
  %t25 = getelementptr %"compiler/generic:Program", ptr %t23, i32 0, i32 2
  %t26 = load i32, ptr %l1, !tbaa !23
  %t29 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t25, i32 %t26)
  store i32 %t29, ptr %l17
  br label %bb8
bb8:
  %t30 = load i32, ptr %l17, !range !{i32 0, i32 33}
  %t32 = trunc i64 18 to i32
  %t33 = icmp eq i32 %t30, %t32
  %t35 = xor i1 %t33, true
  br i1 %t35, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l21, !tbaa !21
  br label %bb12
bb10:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/check:Checker", ptr %t37, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !29
  %t42 = getelementptr %"compiler/generic:Program", ptr %t40, i32 0, i32 2
  %t43 = load i32, ptr %l1, !tbaa !23
  %t46 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasBody(ptr %v0, ptr %t42, i32 %t43)
  store i1 %t46, ptr %l26
  br label %bb11
bb11:
  %t47 = load i1, ptr %l26, !tbaa !21
  %t48 = xor i1 %t47, true
  store i1 %t48, ptr %l21, !tbaa !21
  br label %bb12
bb12:
  %t50 = load i1, ptr %l21, !tbaa !21
  br i1 %t50, label %bb13, label %bb14
bb13:
  store i1 false, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/check:Checker", ptr %t52, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !29
  %t57 = getelementptr %"compiler/generic:Program", ptr %t55, i32 0, i32 2
  store ptr %t57, ptr %l31, !tbaa !29
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/check:Checker", ptr %t58, i32 0, i32 1
  %t61 = load ptr, ptr %t60, !tbaa !29
  %t63 = getelementptr %"compiler/generic:Program", ptr %t61, i32 0, i32 2
  %t64 = load i32, ptr %l1, !tbaa !23
  %t67 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t63, i32 %t64)
  store i32 %t67, ptr %l36
  br label %bb16
bb16:
  %t68 = load ptr, ptr %l31, !tbaa !29
  %t69 = load i32, ptr %l36, !tbaa !23
  %t70 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t68, i32 %t69)
  store i32 %t70, ptr %l37
  br label %bb17
bb17:
  %t71 = load i32, ptr %l37, !range !{i32 0, i32 6}
  store i32 %t71, ptr %l2
  %t72 = load i32, ptr %l2, !range !{i32 0, i32 6}
  %t74 = trunc i64 4 to i32
  %t75 = icmp eq i32 %t72, %t74
  br i1 %t75, label %bb18, label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb23
bb20:
  %t77 = load ptr, ptr %l0, !tbaa !29
  store ptr %t77, ptr %l41, !tbaa !29
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t80 = getelementptr %"compiler/check:Checker", ptr %t78, i32 0, i32 1
  %t81 = load ptr, ptr %t80, !tbaa !29
  %t83 = getelementptr %"compiler/generic:Program", ptr %t81, i32 0, i32 2
  %t84 = load i32, ptr %l1, !tbaa !23
  %t87 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %t83, i32 %t84)
  store i32 %t87, ptr %l46
  br label %bb21
bb21:
  %t88 = load ptr, ptr %l41, !tbaa !29
  %t89 = load i32, ptr %l46, !tbaa !23
  %t90 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2escalarType(ptr %v0, ptr %t88, i32 %t89)
  store i1 %t90, ptr %l47
  br label %bb22
bb22:
  %t91 = load i1, ptr %l47, !tbaa !21
  store i1 %t91, ptr %l38, !tbaa !21
  br label %bb34
bb23:
  %t92 = load i32, ptr %l2, !range !{i32 0, i32 6}
  %t94 = trunc i64 1 to i32
  %t95 = icmp eq i32 %t92, %t94
  br i1 %t95, label %bb24, label %bb25
bb24:
  br label %bb26
bb25:
  br label %bb29
bb26:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t99 = getelementptr %"compiler/check:Checker", ptr %t97, i32 0, i32 1
  %t100 = load ptr, ptr %t99, !tbaa !29
  %t102 = getelementptr %"compiler/generic:Program", ptr %t100, i32 0, i32 2
  store ptr %t102, ptr %l52, !tbaa !29
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t105 = getelementptr %"compiler/check:Checker", ptr %t103, i32 0, i32 1
  %t106 = load ptr, ptr %t105, !tbaa !29
  %t108 = getelementptr %"compiler/generic:Program", ptr %t106, i32 0, i32 2
  %t109 = load i32, ptr %l1, !tbaa !23
  %t112 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %t108, i32 %t109)
  store i32 %t112, ptr %l57
  br label %bb27
bb27:
  %t113 = load ptr, ptr %l52, !tbaa !29
  %t114 = load i32, ptr %l57, !tbaa !23
  %t115 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasPayload(ptr %v0, ptr %t113, i32 %t114)
  store i1 %t115, ptr %l58
  br label %bb28
bb28:
  %t116 = load i1, ptr %l58, !tbaa !21
  %t117 = xor i1 %t116, true
  store i1 %t117, ptr %l38, !tbaa !21
  br label %bb34
bb29:
  br i1 true, label %bb30, label %bb31
bb30:
  br label %bb32
bb31:
  br label %bb33
bb32:
  store i1 false, ptr %l38, !tbaa !21
  br label %bb34
bb33:
  call void @__olang_check_failed(ptr @olang_loc_5d236ea53e0f5fd3_8f603dd19b7c69a7)
  unreachable
bb34:
  %t119 = load i1, ptr %l38, !tbaa !21
  store i1 %t119, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eshiftInRange(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2, %"compiler/source:Span" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca i64
  %l7 = alloca i32
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l14 = alloca i32
  %l19 = alloca i1
  %l22 = alloca ptr
  %l23 = alloca i1
  %l32 = alloca i32
  %l37 = alloca i1
  %l44 = alloca i64
  %l51 = alloca i64
  %l59 = alloca i1
  %l61 = alloca i1
  %l64 = alloca i64
  %l69 = alloca i64
  %l78 = alloca i64
  %l83 = alloca i1
  %l84 = alloca i1
  %l87 = alloca i1
  %l91 = alloca i1
  %l94 = alloca i1
  %l98 = alloca ptr
  %l99 = alloca %"compiler/source:Span"
  %l102 = alloca { i64, ptr }
  %l106 = alloca %"compiler/diagmsg:Msg"
  %l107 = alloca i64
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %t1, i32 %t2)
  store i32 %t5, ptr %l14
  br label %bb1
bb1:
  %t6 = load i32, ptr %l14, !tbaa !23
  store i32 %t6, ptr %l4, !tbaa !23
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/check:Checker", ptr %t7, i32 0, i32 1
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = getelementptr %"compiler/generic:Program", ptr %t10, i32 0, i32 2
  %t13 = load i32, ptr %l4, !tbaa !23
  %t16 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %v0, ptr %t12, i32 %t13)
  store i1 %t16, ptr %l19
  br label %bb2
bb2:
  %t17 = load i1, ptr %l19, !tbaa !21
  %t18 = xor i1 %t17, true
  br i1 %t18, label %bb3, label %bb4
bb3:
  store i1 true, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t21 = load ptr, ptr %l2, !tbaa !29
  store ptr %t21, ptr %l22, !tbaa !29
  store i1 false, ptr %l23, !tbaa !21
  %t22 = load ptr, ptr %l22, !tbaa !29
  %t23 = icmp ne ptr %t22, null
  br i1 %t23, label %bb6, label %bb7
bb6:
  %t25 = load ptr, ptr %l22, !tbaa !29
  %t26 = load i64, ptr %t25, !range !{i64 0, i64 18}
  %t28 = icmp eq i64 %t26, 0
  store i1 %t28, ptr %l23, !tbaa !21
  br label %bb7
bb7:
  %t29 = load i1, ptr %l23, !tbaa !21
  br i1 %t29, label %bb8, label %bb9
bb8:
  %t30 = load ptr, ptr %l2, !tbaa !29
  %t32 = getelementptr { i64, [5 x i64] }, ptr %t30, i32 0, i32 1
  %t33 = getelementptr { %"compiler/source:Span", i32, i64 }, ptr %t32, i32 0, i32 1
  %t34 = load i32, ptr %t33
  store i32 %t34, ptr %l5, !tbaa !23
  %t36 = load ptr, ptr %l2, !tbaa !29
  %t38 = getelementptr { i64, [5 x i64] }, ptr %t36, i32 0, i32 1
  %t39 = getelementptr { %"compiler/source:Span", i32, i64 }, ptr %t38, i32 0, i32 2
  %t40 = load i64, ptr %t39
  store i64 %t40, ptr %l6, !tbaa !24
  br label %bb10
bb9:
  br label %bb50
bb10:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load i32, ptr %l5, !tbaa !23
  %t46 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %t42, i32 %t43)
  store i32 %t46, ptr %l32
  br label %bb11
bb11:
  %t47 = load i32, ptr %l32, !tbaa !23
  store i32 %t47, ptr %l7, !tbaa !23
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/check:Checker", ptr %t48, i32 0, i32 1
  %t51 = load ptr, ptr %t50, !tbaa !29
  %t53 = getelementptr %"compiler/generic:Program", ptr %t51, i32 0, i32 2
  %t54 = load i32, ptr %l7, !tbaa !23
  %t57 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %v0, ptr %t53, i32 %t54)
  store i1 %t57, ptr %l37
  br label %bb12
bb12:
  %t58 = load i1, ptr %l37, !tbaa !21
  %t59 = xor i1 %t58, true
  br i1 %t59, label %bb13, label %bb14
bb13:
  store i1 true, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/check:Checker", ptr %t62, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !29
  %t67 = getelementptr %"compiler/generic:Program", ptr %t65, i32 0, i32 2
  %t68 = load i32, ptr %l7, !tbaa !23
  %t71 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %t67, i32 %t68)
  store i64 %t71, ptr %l44
  br label %bb16
bb16:
  %t72 = load i64, ptr %l44, !tbaa !24
  store i64 %t72, ptr %l8, !tbaa !24
  %t73 = load i64, ptr %l6, !tbaa !24
  store i64 %t73, ptr %l9, !tbaa !24
  %t75 = load i64, ptr %l8, !tbaa !24
  %t77 = icmp sgt i64 %t75, 64
  br i1 %t77, label %bb17, label %bb18
bb17:
  store i64 64, ptr %l8, !tbaa !24
  br label %bb19
bb18:
  br label %bb19
bb19:
  %t79 = load i64, ptr %l8, !tbaa !24
  %t81 = icmp slt i64 %t79, 64
  br i1 %t81, label %bb20, label %bb21
bb20:
  %t83 = load i64, ptr %l6, !tbaa !24
  %t84 = load i64, ptr %l8, !tbaa !24
  store i64 %t84, ptr %l51, !tbaa !24
  %t85 = load i64, ptr %l51, !tbaa !24
  %t86 = load i64, ptr %l51, !tbaa !24
  %t87 = shl i64 1, %t86
  %t89 = sub i64 %t87, 1
  %t92 = and i64 %t83, %t89
  store i64 %t92, ptr %l9, !tbaa !24
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t96 = getelementptr %"compiler/check:Checker", ptr %t94, i32 0, i32 1
  %t97 = load ptr, ptr %t96, !tbaa !29
  %t99 = getelementptr %"compiler/generic:Program", ptr %t97, i32 0, i32 2
  %t100 = load i32, ptr %l7, !tbaa !23
  %t103 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %t99, i32 %t100)
  store i1 %t103, ptr %l59
  br label %bb22
bb21:
  br label %bb29
bb22:
  %t104 = load i1, ptr %l59, !tbaa !21
  %t105 = xor i1 %t104, true
  br i1 %t105, label %bb23, label %bb24
bb23:
  %t107 = load i64, ptr %l9, !tbaa !24
  %t108 = load i64, ptr %l8, !tbaa !24
  %t110 = sub i64 %t108, 1
  store i64 %t110, ptr %l64, !tbaa !24
  %t112 = load i64, ptr %l64, !tbaa !24
  %t113 = load i64, ptr %l64, !tbaa !24
  %t114 = ashr i64 %t107, %t113
  %t116 = and i64 %t114, 1
  %t118 = icmp eq i64 %t116, 1
  store i1 %t118, ptr %l61, !tbaa !21
  br label %bb25
bb24:
  store i1 false, ptr %l61, !tbaa !21
  br label %bb25
bb25:
  %t120 = load i1, ptr %l61, !tbaa !21
  br i1 %t120, label %bb26, label %bb27
bb26:
  %t121 = load i64, ptr %l9, !tbaa !24
  %t122 = load i64, ptr %l8, !tbaa !24
  store i64 %t122, ptr %l69, !tbaa !24
  %t123 = load i64, ptr %l69, !tbaa !24
  %t124 = load i64, ptr %l69, !tbaa !24
  %t125 = shl i64 1, %t124
  %t127 = sub i64 %t125, 1
  %t129 = xor i64 %t127, -1
  %t132 = or i64 %t121, %t129
  store i64 %t132, ptr %l9, !tbaa !24
  br label %bb28
bb27:
  br label %bb28
bb28:
  br label %bb29
bb29:
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t136 = getelementptr %"compiler/check:Checker", ptr %t134, i32 0, i32 1
  %t137 = load ptr, ptr %t136, !tbaa !29
  %t139 = getelementptr %"compiler/generic:Program", ptr %t137, i32 0, i32 2
  %t140 = load i32, ptr %l4, !tbaa !23
  %t143 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %t139, i32 %t140)
  store i64 %t143, ptr %l78
  br label %bb30
bb30:
  %t144 = load i64, ptr %l78, !tbaa !24
  store i64 %t144, ptr %l10, !tbaa !24
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t147 = getelementptr %"compiler/check:Checker", ptr %t145, i32 0, i32 1
  %t148 = load ptr, ptr %t147, !tbaa !29
  %t150 = getelementptr %"compiler/generic:Program", ptr %t148, i32 0, i32 2
  %t151 = load i32, ptr %l7, !tbaa !23
  %t154 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %t150, i32 %t151)
  store i1 %t154, ptr %l83
  br label %bb31
bb31:
  %t155 = load i1, ptr %l83, !tbaa !21
  br i1 %t155, label %bb32, label %bb33
bb32:
  %t156 = load i64, ptr %l8, !tbaa !24
  %t158 = icmp eq i64 %t156, 64
  store i1 %t158, ptr %l84, !tbaa !21
  br label %bb34
bb33:
  store i1 false, ptr %l84, !tbaa !21
  br label %bb34
bb34:
  %t160 = load i1, ptr %l84, !tbaa !21
  br i1 %t160, label %bb35, label %bb36
bb35:
  %t161 = load i64, ptr %l9, !tbaa !24
  %t163 = icmp slt i64 %t161, 0
  store i1 %t163, ptr %l87, !tbaa !21
  br label %bb37
bb36:
  store i1 false, ptr %l87, !tbaa !21
  br label %bb37
bb37:
  %t165 = load i1, ptr %l87, !tbaa !21
  br i1 %t165, label %bb38, label %bb39
bb38:
  store i1 true, ptr %l91, !tbaa !21
  br label %bb40
bb39:
  %t168 = load i64, ptr %l9, !tbaa !24
  %t170 = icmp slt i64 %t168, 0
  store i1 %t170, ptr %l91, !tbaa !21
  br label %bb40
bb40:
  %t172 = load i1, ptr %l91, !tbaa !21
  br i1 %t172, label %bb41, label %bb42
bb41:
  store i1 true, ptr %l94, !tbaa !21
  br label %bb43
bb42:
  %t173 = load i64, ptr %l9, !tbaa !24
  %t174 = load i64, ptr %l10, !tbaa !24
  %t177 = icmp sge i64 %t173, %t174
  store i1 %t177, ptr %l94, !tbaa !21
  br label %bb43
bb43:
  %t179 = load i1, ptr %l94, !tbaa !21
  br i1 %t179, label %bb44, label %bb45
bb44:
  %t180 = load ptr, ptr %l0, !tbaa !29
  store ptr %t180, ptr %l98, !tbaa !29
  store %"compiler/source:Span" %a3, ptr %l99
  %t182 = load ptr, ptr %l0, !tbaa !29
  %t183 = load i32, ptr %l1, !tbaa !23
  %t186 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t182, i32 %t183)
  store { i64, ptr } %t186, ptr %l102
  br label %bb46
bb45:
  br label %bb49
bb46:
  %t187 = load { i64, ptr }, ptr %l102, !tbaa !27
  %t188 = extractvalue { i64, ptr } %t187, 0
  %t189 = extractvalue { i64, ptr } %t187, 1
  %t190 = mul i64 %t188, 1
  %t191 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t190)
  call void @llvm.memcpy.p0.p0.i64(ptr %t191, ptr %t189, i64 %t190, i1 false)
  %t192 = insertvalue { i64, ptr } undef, i64 %t188, 0
  %t193 = insertvalue { i64, ptr } %t192, ptr %t191, 1
  %t194 = load i64, ptr %l9, !tbaa !24
  %t195 = load i64, ptr %l10, !tbaa !24
  %t199 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eShiftOutOfRange(ptr %v0, ptr %v0, { i64, ptr } %t193, i64 %t194, i64 %t195)
  store %"compiler/diagmsg:Msg" %t199, ptr %l106
  br label %bb47
bb47:
  %t200 = load ptr, ptr %l98, !tbaa !29
  %t201 = load %"compiler/source:Span", ptr %l99
  %t202 = load %"compiler/diagmsg:Msg", ptr %l106
  %t203 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t200, %"compiler/source:Span" %t201, %"compiler/diagmsg:Msg" %t202)
  store i64 %t203, ptr %l107
  br label %bb48
bb48:
  store i1 false, ptr %rv
  br label %ret
bb49:
  br label %bb55
bb50:
  br i1 true, label %bb51, label %bb52
bb51:
  br label %bb53
bb52:
  br label %bb54
bb53:
  br label %bb55
bb54:
  call void @__olang_check_failed(ptr @olang_loc_a580fa67a95f3737_235a3d78a5401c13)
  unreachable
bb55:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2espellArgs(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i1
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l16 = alloca { i64, ptr }
  %l21 = alloca i1
  %l25 = alloca { i64, ptr }
  %l29 = alloca i32
  %l32 = alloca i1
  %l36 = alloca { i64, ptr }
  %l40 = alloca i32
  %l54 = alloca i64
  %l57 = alloca i64
  %l78 = alloca { i64, ptr }
  %l81 = alloca i32
  %l84 = alloca ptr
  %l87 = alloca { i64, ptr }
  %l93 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s7 = alloca %olang.scope
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
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  %t10 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t6, i32 %a2)
  store { i64, ptr } %t10, ptr %l16
  br label %bb1
bb1:
  %t11 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t11, ptr %l3, !tbaa !27
  %t12 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t14 = extractvalue { i64, ptr } %t12, 0
  store i64 %t14, ptr %l4, !tbaa !24
  %t16 = load i64, ptr %l4, !tbaa !24
  %t18 = icmp sgt i64 %t16, 0
  br i1 %t18, label %bb2, label %bb3
bb2:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/check:Checker", ptr %t20, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !29
  %t25 = getelementptr %"compiler/generic:Program", ptr %t23, i32 0, i32 2
  %t26 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t26, ptr %l25, !tbaa !27
  %t27 = load i64, ptr %l4, !tbaa !24
  %t29 = sub i64 %t27, 1
  %t31 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !27
  %t33 = getelementptr i32, ptr %t32, i64 %t29
  %t34 = load i32, ptr %t33, !tbaa !33
  %t37 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t25, i32 %t34)
  store i32 %t37, ptr %l29
  br label %bb4
bb3:
  store i1 false, ptr %l21, !tbaa !21
  br label %bb5
bb4:
  %t38 = load i32, ptr %l29, !range !{i32 0, i32 33}
  %t40 = trunc i64 30 to i32
  %t41 = icmp eq i32 %t38, %t40
  store i1 %t41, ptr %l21, !tbaa !21
  br label %bb5
bb5:
  %t43 = load i1, ptr %l21, !tbaa !21
  br i1 %t43, label %bb6, label %bb7
bb6:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/check:Checker", ptr %t44, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !29
  %t49 = getelementptr %"compiler/generic:Program", ptr %t47, i32 0, i32 2
  %t50 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t50, ptr %l36, !tbaa !27
  %t51 = load i64, ptr %l4, !tbaa !24
  %t53 = sub i64 %t51, 1
  %t55 = getelementptr { i64, ptr }, ptr %l36, i32 0, i32 1
  %t56 = load ptr, ptr %t55, !tbaa !27
  %t57 = getelementptr i32, ptr %t56, i64 %t53
  %t58 = load i32, ptr %t57, !tbaa !33
  %t61 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrSetItems(ptr %v0, ptr %t49, i32 %t58)
  store i32 %t61, ptr %l40
  br label %bb8
bb7:
  store i1 false, ptr %l32, !tbaa !21
  br label %bb9
bb8:
  %t62 = load i32, ptr %l40, !tbaa !23
  %t63 = icmp eq i32 %t62, 0
  store i1 %t63, ptr %l32, !tbaa !21
  br label %bb9
bb9:
  %t65 = load i1, ptr %l32, !tbaa !21
  br i1 %t65, label %bb10, label %bb11
bb10:
  %t66 = load i64, ptr %l4, !tbaa !24
  %t68 = sub i64 %t66, 1
  store i64 %t68, ptr %l4, !tbaa !24
  br label %bb12
bb11:
  br label %bb12
bb12:
  %t70 = load i64, ptr %l4, !tbaa !24
  %t72 = icmp eq i64 %t70, 0
  br i1 %t72, label %bb13, label %bb14
bb13:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb14:
  br label %bb15
bb15:
  %t74 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s0, ptr %t74, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d35, i32 0, i32 1) })
  br label %bb16
bb16:
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = getelementptr %"compiler/check:Checker", ptr %t76, i32 0, i32 4
  %t79 = load i1, ptr %t78, !tbaa !21
  store i1 %t79, ptr %l5, !tbaa !21
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t83 = getelementptr %"compiler/check:Checker", ptr %t81, i32 0, i32 4
  store i1 true, ptr %t83, !tbaa !21
  store i64 0, ptr %l6, !tbaa !24
  %t84 = load i64, ptr %l4, !tbaa !24
  store i64 %t84, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t86 = load i64, ptr %l7, !tbaa !24
  %t87 = load i64, ptr %l6, !tbaa !24
  %t90 = icmp sgt i64 %t86, %t87
  br i1 %t90, label %bb17, label %bb18
bb17:
  %t92 = load i64, ptr %l8, !tbaa !24
  %t94 = icmp sgt i64 %t92, 0
  br i1 %t94, label %bb19, label %bb20
bb18:
  store i64 0, ptr %l54, !tbaa !24
  br label %bb22
bb19:
  %t96 = load i64, ptr %l7, !tbaa !24
  %t97 = load i64, ptr %l6, !tbaa !24
  %t100 = sub i64 %t96, %t97
  %t101 = load i64, ptr %l8, !tbaa !24
  %t104 = add i64 %t100, %t101
  %t106 = sub i64 %t104, 1
  %t107 = load i64, ptr %l8, !tbaa !24
  %t110 = sdiv i64 %t106, %t107
  store i64 %t110, ptr %l57, !tbaa !24
  br label %bb21
bb20:
  store i64 0, ptr %l57, !tbaa !24
  br label %bb21
bb21:
  %t112 = load i64, ptr %l57, !tbaa !24
  store i64 %t112, ptr %l54, !tbaa !24
  br label %bb22
bb22:
  %t113 = load i64, ptr %l54, !tbaa !24
  store i64 %t113, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb23
bb23:
  %t114 = load i64, ptr %l10, !tbaa !24
  %t115 = load i64, ptr %l9, !tbaa !24
  %t118 = icmp slt i64 %t114, %t115
  %t120 = xor i1 %t118, true
  br i1 %t120, label %bb24, label %bb25
bb24:
  br label %bb41
bb25:
  br label %bb26
bb26:
  %t122 = load i64, ptr %l6, !tbaa !24
  %t123 = load i64, ptr %l10, !tbaa !24
  %t124 = load i64, ptr %l8, !tbaa !24
  %t127 = mul i64 %t123, %t124
  %t130 = add i64 %t122, %t127
  store i64 %t130, ptr %l11, !tbaa !24
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t134 = getelementptr %"compiler/check:Checker", ptr %t132, i32 0, i32 1
  %t135 = load ptr, ptr %t134, !tbaa !29
  %t137 = getelementptr %"compiler/generic:Program", ptr %t135, i32 0, i32 2
  %t138 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t138, ptr %l78, !tbaa !27
  %t139 = load i64, ptr %l11, !tbaa !24
  %t141 = getelementptr { i64, ptr }, ptr %l78, i32 0, i32 1
  %t142 = load ptr, ptr %t141, !tbaa !27
  %t143 = getelementptr i32, ptr %t142, i64 %t139
  %t144 = load i32, ptr %t143, !tbaa !33
  %t147 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t137, i32 %t144)
  store i32 %t147, ptr %l81
  br label %bb27
bb27:
  %t148 = load i32, ptr %l81, !range !{i32 0, i32 33}
  %t150 = trunc i64 30 to i32
  %t151 = icmp eq i32 %t148, %t150
  br i1 %t151, label %bb28, label %bb29
bb28:
  store %olang.scope zeroinitializer, ptr %s5
  %t153 = load ptr, ptr %l1, !tbaa !29
  store ptr %t153, ptr %l84, !tbaa !29
  %t154 = load i64, ptr %l11, !tbaa !24
  %t156 = icmp sgt i64 %t154, 0
  br i1 %t156, label %bb30, label %bb31
bb29:
  %t158 = load i64, ptr %l11, !tbaa !24
  %t160 = icmp sgt i64 %t158, 0
  br i1 %t160, label %bb34, label %bb35
bb30:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d36, i32 0, i32 1) }, ptr %l87, !tbaa !27
  br label %bb32
bb31:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d37, i32 0, i32 1) }, ptr %l87, !tbaa !27
  br label %bb32
bb32:
  %t162 = load ptr, ptr %l84, !tbaa !29
  %t163 = load { i64, ptr }, ptr %l87, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s5, ptr %t162, { i64, ptr } %t163)
  br label %bb33
bb33:
  call void @__olang_scope_close(ptr %s5)
  br label %bb38
bb34:
  store %olang.scope zeroinitializer, ptr %s7
  %t164 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s7, ptr %t164, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d38, i32 0, i32 1) })
  br label %bb36
bb35:
  br label %bb37
bb36:
  call void @__olang_scope_close(ptr %s7)
  br label %bb37
bb37:
  br label %bb38
bb38:
  %t166 = load ptr, ptr %l0, !tbaa !29
  %t167 = load ptr, ptr %l1, !tbaa !29
  %t168 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t168, ptr %l93, !tbaa !27
  %t169 = load i64, ptr %l11, !tbaa !24
  %t171 = getelementptr { i64, ptr }, ptr %l93, i32 0, i32 1
  %t172 = load ptr, ptr %t171, !tbaa !27
  %t173 = getelementptr i32, ptr %t172, i64 %t169
  %t174 = load i32, ptr %t173, !tbaa !33
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2espell(ptr %v0, ptr %v1, ptr %t166, ptr %t167, i32 %t174, i1 false)
  br label %bb39
bb39:
  br label %bb40
bb40:
  %t178 = load i64, ptr %l10, !tbaa !24
  %t180 = add i64 %t178, 1
  store i64 %t180, ptr %l10, !tbaa !24
  br label %bb23
bb41:
  %t182 = load ptr, ptr %l0, !tbaa !29
  %t183 = load i1, ptr %l5, !tbaa !21
  %t186 = getelementptr %"compiler/check:Checker", ptr %t182, i32 0, i32 4
  store i1 %t183, ptr %t186, !tbaa !21
  %t187 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s0, ptr %t187, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d39, i32 0, i32 1) })
  br label %bb42
bb42:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunary(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, ptr %a3, i32 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca ptr
  %lp7 = alloca ptr
  %l13 = alloca ptr
  %l21 = alloca ptr
  %l30 = alloca ptr
  %l33 = alloca i64
  %l35 = alloca i1
  %l36 = alloca ptr
  %l39 = alloca i32
  %l40 = alloca i1
  %l45 = alloca ptr
  %l49 = alloca i32
  %l52 = alloca i1
  %l55 = alloca i32
  %l58 = alloca ptr
  %l60 = alloca %"compiler/source:Span"
  %l61 = alloca ptr
  %l64 = alloca i32
  %l65 = alloca { i64, ptr }
  %l67 = alloca %"compiler/diagmsg:Msg"
  %l68 = alloca i64
  %l72 = alloca ptr
  %l76 = alloca i1
  %l80 = alloca ptr
  %l85 = alloca ptr
  %l87 = alloca %"compiler/source:Span"
  %l88 = alloca ptr
  %l91 = alloca i64
  %l93 = alloca i1
  %l94 = alloca ptr
  %l97 = alloca i32
  %l98 = alloca i1
  %l103 = alloca ptr
  %l109 = alloca ptr
  %l113 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l114 = alloca ptr
  %l118 = alloca ptr
  %l119 = alloca %"compiler/source:Span"
  %l121 = alloca i32
  %l123 = alloca { i64, ptr }
  %l127 = alloca i32
  %l128 = alloca %"compiler/typed:Text"
  %l136 = alloca ptr
  %rv = alloca ptr
  %t238 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store i32 %a2, ptr %l2
  store ptr %a3, ptr %l3
  store i32 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t3 = trunc i64 18 to i32
  %t4 = icmp eq i32 %t1, %t3
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t7 = load %"compiler/source:Span", ptr %l1
  %t8 = load ptr, ptr %l3, !tbaa !29
  %t12 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eembed(ptr %v0, ptr %v1, ptr %v2, ptr %t6, %"compiler/source:Span" %t7, ptr %t8)
  store ptr %t12, ptr %l13
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t13 = load ptr, ptr %l13, !tbaa !29
  store ptr %t13, ptr %rv
  br label %ret
bb4:
  %t15 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t17 = trunc i64 51 to i32
  %t18 = icmp eq i32 %t15, %t17
  br i1 %t18, label %bb5, label %bb6
bb5:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load %"compiler/source:Span", ptr %l1
  %t22 = load ptr, ptr %l3, !tbaa !29
  %t23 = load i32, ptr %l4, !tbaa !23
  %t28 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecomptime(ptr %v0, ptr %v1, ptr %v2, ptr %t20, %"compiler/source:Span" %t21, ptr %t22, i32 %t23)
  store ptr %t28, ptr %l21
  br label %bb7
bb6:
  br label %bb8
bb7:
  %t29 = load ptr, ptr %l21, !tbaa !29
  store ptr %t29, ptr %rv
  br label %ret
bb8:
  %t31 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t33 = trunc i64 48 to i32
  %t34 = icmp eq i32 %t31, %t33
  br i1 %t34, label %bb9, label %bb10
bb9:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/check:Checker", ptr %t36, i32 0, i32 40
  store i1 true, ptr %t38, !tbaa !21
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t40 = load ptr, ptr %l3, !tbaa !29
  %t42 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t46 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %t39, ptr %t40, i32 %t42)
  store ptr %t46, ptr %l30
  br label %bb11
bb10:
  br label %bb36
bb11:
  %t47 = load ptr, ptr %l30, !tbaa !29
  store ptr %t47, ptr %l5, !tbaa !29
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t49 = load ptr, ptr %l5, !tbaa !29
  %t52 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneOf(ptr %v0, ptr %v2, ptr %t48, ptr %t49)
  store i64 %t52, ptr %l33
  br label %bb12
bb12:
  %t53 = load i64, ptr %l33, !tbaa !24
  %t54 = icmp sge i64 %t53, 0
  br i1 %t54, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l35, !tbaa !21
  br label %bb17
bb14:
  %t56 = load ptr, ptr %l0, !tbaa !29
  store ptr %t56, ptr %l36, !tbaa !29
  %t57 = load ptr, ptr %l5, !tbaa !29
  %t60 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %t57)
  store i32 %t60, ptr %l39
  br label %bb15
bb15:
  %t61 = load ptr, ptr %l36, !tbaa !29
  %t62 = load i32, ptr %l39, !tbaa !23
  %t63 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneArray(ptr %v0, ptr %t61, i32 %t62)
  store i1 %t63, ptr %l40
  br label %bb16
bb16:
  %t64 = load i1, ptr %l40, !tbaa !21
  store i1 %t64, ptr %l35, !tbaa !21
  br label %bb17
bb17:
  %t65 = load i1, ptr %l35, !tbaa !21
  br i1 %t65, label %bb18, label %bb19
bb18:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t67 = load %"compiler/source:Span", ptr %l1
  %t68 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t69 = load ptr, ptr %l5, !tbaa !29
  %t74 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneUnary(ptr %v0, ptr %v2, ptr %v2, ptr %t66, %"compiler/source:Span" %t67, i32 %t68, ptr %t69)
  store ptr %t74, ptr %l45
  br label %bb20
bb19:
  br label %bb21
bb20:
  %t75 = load ptr, ptr %l45, !tbaa !29
  store ptr %t75, ptr %rv
  br label %ret
bb21:
  %t77 = load ptr, ptr %l5, !tbaa !29
  %t80 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %t77)
  store i32 %t80, ptr %l49
  br label %bb22
bb22:
  %t81 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t82 = load i32, ptr %l49, !tbaa !23
  %t84 = icmp ne i32 %t82, %t81
  br i1 %t84, label %bb23, label %bb24
bb23:
  %t86 = load ptr, ptr %l5, !tbaa !29
  %t89 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %t86)
  store i32 %t89, ptr %l55
  br label %bb25
bb24:
  store i1 false, ptr %l52, !tbaa !21
  br label %bb26
bb25:
  %t90 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t91 = load i32, ptr %l55, !tbaa !23
  %t93 = icmp ne i32 %t91, %t90
  store i1 %t93, ptr %l52, !tbaa !21
  br label %bb26
bb26:
  %t95 = load i1, ptr %l52, !tbaa !21
  br i1 %t95, label %bb27, label %bb28
bb27:
  %t96 = load ptr, ptr %l0, !tbaa !29
  store ptr %t96, ptr %l58, !tbaa !29
  %t97 = load ptr, ptr %l3, !tbaa !29
  %t99 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t97)
  store %"compiler/source:Span" %t99, ptr %l60
  br label %bb29
bb28:
  br label %bb34
bb29:
  %t100 = load ptr, ptr %l0, !tbaa !29
  store ptr %t100, ptr %l61, !tbaa !29
  %t101 = load ptr, ptr %l5, !tbaa !29
  %t104 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %t101)
  store i32 %t104, ptr %l64
  br label %bb30
bb30:
  %t105 = load ptr, ptr %l61, !tbaa !29
  %t106 = load i32, ptr %l64, !tbaa !23
  %t107 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t105, i32 %t106)
  store { i64, ptr } %t107, ptr %l65
  br label %bb31
bb31:
  %t108 = load { i64, ptr }, ptr %l65, !tbaa !27
  %t109 = extractvalue { i64, ptr } %t108, 0
  %t110 = extractvalue { i64, ptr } %t108, 1
  %t111 = mul i64 %t109, 1
  %t112 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t111)
  call void @llvm.memcpy.p0.p0.i64(ptr %t112, ptr %t110, i64 %t111, i1 false)
  %t113 = insertvalue { i64, ptr } undef, i64 %t109, 0
  %t114 = insertvalue { i64, ptr } %t113, ptr %t112, 1
  %t116 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eOperandNotBool(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d40, i32 0, i32 1) }, { i64, ptr } %t114)
  store %"compiler/diagmsg:Msg" %t116, ptr %l67
  br label %bb32
bb32:
  %t117 = load ptr, ptr %l58, !tbaa !29
  %t118 = load %"compiler/source:Span", ptr %l60
  %t119 = load %"compiler/diagmsg:Msg", ptr %l67
  %t120 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t117, %"compiler/source:Span" %t118, %"compiler/diagmsg:Msg" %t119)
  store i64 %t120, ptr %l68
  br label %bb33
bb33:
  br label %bb34
bb34:
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t122 = load %"compiler/source:Span", ptr %l1
  %t123 = load ptr, ptr %l5, !tbaa !29
  %t127 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enegate(ptr %v0, ptr %v2, ptr %v2, ptr %t121, %"compiler/source:Span" %t122, ptr %t123)
  store ptr %t127, ptr %l72
  br label %bb35
bb35:
  %t128 = load ptr, ptr %l72, !tbaa !29
  store ptr %t128, ptr %rv
  br label %ret
bb36:
  %t130 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t132 = trunc i64 69 to i32
  %t133 = icmp eq i32 %t130, %t132
  br i1 %t133, label %bb37, label %bb38
bb37:
  store i1 true, ptr %l76, !tbaa !21
  br label %bb39
bb38:
  %t135 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t137 = trunc i64 104 to i32
  %t138 = icmp eq i32 %t135, %t137
  store i1 %t138, ptr %l76, !tbaa !21
  br label %bb39
bb39:
  %t140 = load i1, ptr %l76, !tbaa !21
  br i1 %t140, label %bb40, label %bb41
bb40:
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t143 = getelementptr %"compiler/check:Checker", ptr %t141, i32 0, i32 40
  store i1 true, ptr %t143, !tbaa !21
  %t144 = load ptr, ptr %l0, !tbaa !29
  store ptr %t144, ptr %l80, !tbaa !29
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t146 = load ptr, ptr %l3, !tbaa !29
  %t148 = load i32, ptr %l4, !tbaa !23
  %t152 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v0, ptr %t145, ptr %t146, i32 %t148)
  store ptr %t152, ptr %l85
  br label %bb42
bb41:
  br label %bb56
bb42:
  %t153 = load ptr, ptr %l3, !tbaa !29
  %t155 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t153)
  store %"compiler/source:Span" %t155, ptr %l87
  br label %bb43
bb43:
  %t156 = load ptr, ptr %l80, !tbaa !29
  %t157 = load ptr, ptr %l85, !tbaa !29
  %t158 = load %"compiler/source:Span", ptr %l87
  %t159 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalue(ptr %v0, ptr %v0, ptr %v2, ptr %t156, ptr %t157, %"compiler/source:Span" %t158)
  store ptr %t159, ptr %l88
  br label %bb44
bb44:
  %t160 = load ptr, ptr %l88, !tbaa !29
  store ptr %t160, ptr %l6, !tbaa !29
  %t161 = load ptr, ptr %l0, !tbaa !29
  %t162 = load ptr, ptr %l6, !tbaa !29
  %t165 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneOf(ptr %v0, ptr %v2, ptr %t161, ptr %t162)
  store i64 %t165, ptr %l91
  br label %bb45
bb45:
  %t166 = load i64, ptr %l91, !tbaa !24
  %t167 = icmp sge i64 %t166, 0
  br i1 %t167, label %bb46, label %bb47
bb46:
  store i1 true, ptr %l93, !tbaa !21
  br label %bb50
bb47:
  %t169 = load ptr, ptr %l0, !tbaa !29
  store ptr %t169, ptr %l94, !tbaa !29
  %t170 = load ptr, ptr %l6, !tbaa !29
  %t173 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %t170)
  store i32 %t173, ptr %l97
  br label %bb48
bb48:
  %t174 = load ptr, ptr %l94, !tbaa !29
  %t175 = load i32, ptr %l97, !tbaa !23
  %t176 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneArray(ptr %v0, ptr %t174, i32 %t175)
  store i1 %t176, ptr %l98
  br label %bb49
bb49:
  %t177 = load i1, ptr %l98, !tbaa !21
  store i1 %t177, ptr %l93, !tbaa !21
  br label %bb50
bb50:
  %t178 = load i1, ptr %l93, !tbaa !21
  br i1 %t178, label %bb51, label %bb52
bb51:
  %t179 = load ptr, ptr %l0, !tbaa !29
  %t180 = load %"compiler/source:Span", ptr %l1
  %t181 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t182 = load ptr, ptr %l6, !tbaa !29
  %t187 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneUnary(ptr %v0, ptr %v2, ptr %v2, ptr %t179, %"compiler/source:Span" %t180, i32 %t181, ptr %t182)
  store ptr %t187, ptr %l103
  br label %bb53
bb52:
  br label %bb54
bb53:
  %t188 = load ptr, ptr %l103, !tbaa !29
  store ptr %t188, ptr %rv
  br label %ret
bb54:
  %t190 = load ptr, ptr %l0, !tbaa !29
  %t191 = load %"compiler/source:Span", ptr %l1
  %t192 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t193 = load ptr, ptr %l6, !tbaa !29
  %t198 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunaryOn(ptr %v0, ptr %v2, ptr %v2, ptr %t190, %"compiler/source:Span" %t191, i32 %t192, ptr %t193)
  store ptr %t198, ptr %l109
  br label %bb55
bb55:
  %t199 = load ptr, ptr %l109, !tbaa !29
  store ptr %t199, ptr %rv
  br label %ret
bb56:
  %t201 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t203 = trunc i64 105 to i32
  %t204 = icmp eq i32 %t201, %t203
  br i1 %t204, label %bb57, label %bb58
bb57:
  %t206 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPiece_26_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t206, ptr %l113
  br label %bb59
bb58:
  br label %bb66
bb59:
  %t207 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store ptr %t207, ptr %lp7
  %t208 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l113
  %t209 = load ptr, ptr %lp7
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t208, ptr %t209
  %t210 = load ptr, ptr %lp7
  store ptr %t210, ptr %l114, !tbaa !29
  %t211 = load ptr, ptr %l0, !tbaa !29
  %t212 = load %"compiler/source:Span", ptr %l1
  %t213 = load ptr, ptr %l3, !tbaa !29
  %t217 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erenderPiece(ptr %v0, ptr %v1, ptr %v0, ptr %t211, %"compiler/source:Span" %t212, ptr %t213)
  store ptr %t217, ptr %l118
  br label %bb60
bb60:
  %t218 = load ptr, ptr %l114, !tbaa !29
  %t219 = load ptr, ptr %l118, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPiece_26_3e_2ePush_3ccompiler_2ftyped_3aPiece_26_3e(ptr %v2, ptr %v0, ptr %t218, ptr %t219)
  br label %bb61
bb61:
  %t220 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t220, ptr %l119
  %t221 = load ptr, ptr %l0, !tbaa !29
  %t223 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextType(ptr %v0, ptr %t221)
  store i32 %t223, ptr %l121
  br label %bb62
bb62:
  %t224 = load ptr, ptr %lp7
  %t226 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPiece_26_3e_2eToArr_H1b89f7fcc263bba924ca04e7c3aa48c7(ptr %v2, ptr %v2, ptr %t224)
  store { i64, ptr } %t226, ptr %l123
  br label %bb63
bb63:
  %t227 = load ptr, ptr %l0, !tbaa !29
  %t228 = load %"compiler/source:Span", ptr %l1
  %t232 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esite(ptr %v0, ptr %t227, i32 4, %"compiler/source:Span" %t228)
  store i32 %t232, ptr %l127
  br label %bb64
bb64:
  %t233 = load { i64, ptr }, ptr %l123, !tbaa !27
  %t234 = load i32, ptr %l127, !tbaa !23
  %t235 = call %"compiler/typed:Text" @compiler_2ftyped_3aText_2ector(ptr %v2, ptr %v2, { i64, ptr } %t233, i32 %t234)
  store %"compiler/typed:Text" %t235, ptr %l128
  br label %bb65
bb65:
  %t236 = load %"compiler/typed:Text", ptr %l128
  %t237 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 24, i64 8)
  store %"compiler/typed:Text" %t236, ptr %t237
  store { i64, [5 x i64] } zeroinitializer, ptr %t238
  %t239 = getelementptr { i64, [5 x i64] }, ptr %t238, i32 0, i32 0
  store i64 16, ptr %t239
  %t240 = load %"compiler/source:Span", ptr %l119
  %t241 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t240, 0
  %t242 = load i32, ptr %l121, !tbaa !23
  %t243 = insertvalue { %"compiler/source:Span", i32, ptr } %t241, i32 %t242, 1
  %t245 = insertvalue { %"compiler/source:Span", i32, ptr } %t243, ptr %t237, 2
  %t246 = getelementptr { i64, [5 x i64] }, ptr %t238, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t245, ptr %t246
  %t247 = load { i64, [5 x i64] }, ptr %t238
  %t249 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t247, ptr %t249
  store ptr %t249, ptr %rv
  br label %ret
bb66:
  %t251 = load ptr, ptr %l0, !tbaa !29
  %t252 = load %"compiler/source:Span", ptr %l1
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %v0, ptr %t251, %"compiler/source:Span" %t252, { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d41, i32 0, i32 1) })
  br label %bb67
bb67:
  %t255 = load ptr, ptr %l0, !tbaa !29
  %t256 = load %"compiler/source:Span", ptr %l1
  %t259 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t255, %"compiler/source:Span" %t256)
  store ptr %t259, ptr %l136
  br label %bb68
bb68:
  %t260 = load ptr, ptr %l136, !tbaa !29
  store ptr %t260, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euncovered(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i32
  %l9 = alloca i64
  %l10 = alloca i64
  %l15 = alloca i32
  %l20 = alloca i64
  %l25 = alloca { i64, ptr }
  %l32 = alloca { i64, ptr }
  %l39 = alloca i32
  %l42 = alloca i64
  %l47 = alloca i64
  %l54 = alloca i64
  %l57 = alloca i64
  %l59 = alloca i64
  %l71 = alloca i32
  %l78 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  %t7 = load i32, ptr %l2, !tbaa !23
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t6, i32 %t7)
  store i32 %t10, ptr %l15
  br label %bb1
bb1:
  %t11 = load i32, ptr %l15, !tbaa !23
  store i32 %t11, ptr %l3, !tbaa !23
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/check:Checker", ptr %t12, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t17 = getelementptr %"compiler/generic:Program", ptr %t15, i32 0, i32 2
  %t18 = load i32, ptr %l2, !tbaa !23
  %t21 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrMask(ptr %v0, ptr %t17, i32 %t18)
  store i64 %t21, ptr %l20
  br label %bb2
bb2:
  %t22 = load i64, ptr %l20, !tbaa !65
  store i64 %t22, ptr %l4, !tbaa !65
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/check:Checker", ptr %t23, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !29
  %t28 = getelementptr %"compiler/generic:Program", ptr %t26, i32 0, i32 2
  %t32 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t28, i32 %a1)
  store { i64, ptr } %t32, ptr %l25
  br label %bb3
bb3:
  %t33 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t33, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t34 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t36 = extractvalue { i64, ptr } %t34, 0
  store i64 %t36, ptr %l7, !tbaa !24
  br label %bb4
bb4:
  %t38 = load i64, ptr %l6, !tbaa !24
  %t39 = load i64, ptr %l7, !tbaa !24
  %t42 = icmp slt i64 %t38, %t39
  %t44 = xor i1 %t42, true
  br i1 %t44, label %bb5, label %bb6
bb5:
  br label %bb14
bb6:
  br label %bb7
bb7:
  %t46 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t46, ptr %l32, !tbaa !27
  %t47 = load i64, ptr %l6, !tbaa !24
  %t49 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t50 = load ptr, ptr %t49, !tbaa !27
  %t51 = getelementptr i32, ptr %t50, i64 %t47
  %t52 = load i32, ptr %t51, !tbaa !33
  store i32 %t52, ptr %l8, !tbaa !23
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/check:Checker", ptr %t54, i32 0, i32 1
  %t57 = load ptr, ptr %t56, !tbaa !29
  %t59 = getelementptr %"compiler/generic:Program", ptr %t57, i32 0, i32 2
  %t60 = load i32, ptr %l8, !tbaa !23
  %t63 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t59, i32 %t60)
  store i32 %t63, ptr %l39
  br label %bb8
bb8:
  %t64 = load i32, ptr %l3, !tbaa !23
  %t65 = load i32, ptr %l39, !tbaa !23
  %t67 = icmp eq i32 %t65, %t64
  br i1 %t67, label %bb9, label %bb10
bb9:
  %t69 = load i64, ptr %l4, !tbaa !65
  store i64 %t69, ptr %l42, !tbaa !65
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/check:Checker", ptr %t70, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !29
  %t75 = getelementptr %"compiler/generic:Program", ptr %t73, i32 0, i32 2
  %t76 = load i32, ptr %l8, !tbaa !23
  %t79 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrMask(ptr %v0, ptr %t75, i32 %t76)
  store i64 %t79, ptr %l47
  br label %bb11
bb10:
  br label %bb12
bb11:
  %t80 = load i64, ptr %l47, !tbaa !65
  %t81 = xor i64 %t80, -1
  %t82 = load i64, ptr %l42, !tbaa !65
  %t84 = and i64 %t82, %t81
  store i64 %t84, ptr %l4, !tbaa !65
  br label %bb12
bb12:
  br label %bb13
bb13:
  %t86 = load i64, ptr %l6, !tbaa !24
  %t88 = add i64 %t86, 1
  store i64 %t88, ptr %l6, !tbaa !24
  br label %bb4
bb14:
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t91 = load i32, ptr %l3, !tbaa !23
  %t94 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewordCount(ptr %v0, ptr %t90, i32 %t91)
  store i64 %t94, ptr %l54
  br label %bb15
bb15:
  %t95 = load i64, ptr %l54, !tbaa !24
  store i64 %t95, ptr %l9, !tbaa !24
  %t96 = load i64, ptr %l9, !tbaa !24
  %t98 = icmp sge i64 %t96, 64
  br i1 %t98, label %bb16, label %bb17
bb16:
  %t100 = sub i64 0, 1
  store i64 %t100, ptr %l57, !tbaa !65
  br label %bb18
bb17:
  %t102 = load i64, ptr %l9, !tbaa !24
  store i64 %t102, ptr %l59, !tbaa !24
  %t103 = load i64, ptr %l59, !tbaa !24
  %t104 = load i64, ptr %l59, !tbaa !24
  %t105 = shl i64 1, %t104
  %t107 = sub i64 %t105, 1
  store i64 %t107, ptr %l57, !tbaa !65
  br label %bb18
bb18:
  %t109 = load i64, ptr %l57, !tbaa !65
  store i64 %t109, ptr %l10, !tbaa !65
  %t110 = load i64, ptr %l4, !tbaa !65
  %t111 = load i64, ptr %l10, !tbaa !65
  %t114 = and i64 %t110, %t111
  store i64 %t114, ptr %l4, !tbaa !65
  %t116 = load i64, ptr %l4, !tbaa !65
  %t118 = icmp eq i64 %t116, 0
  br i1 %t118, label %bb19, label %bb20
bb19:
  %t120 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t120, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  %t122 = load i64, ptr %l4, !tbaa !65
  %t123 = load i64, ptr %l10, !tbaa !65
  %t126 = icmp eq i64 %t122, %t123
  br i1 %t126, label %bb22, label %bb23
bb22:
  %t128 = load i32, ptr %l3, !tbaa !23
  store i32 %t128, ptr %l71, !tbaa !23
  br label %bb25
bb23:
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t132 = getelementptr %"compiler/check:Checker", ptr %t130, i32 0, i32 1
  %t133 = load ptr, ptr %t132, !tbaa !29
  %t135 = getelementptr %"compiler/generic:Program", ptr %t133, i32 0, i32 2
  %t136 = load i32, ptr %l3, !tbaa !23
  %t137 = load i64, ptr %l4, !tbaa !65
  %t141 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrWords(ptr %v0, ptr %t135, i32 %t136, i64 %t137)
  store i32 %t141, ptr %l78
  br label %bb24
bb24:
  %t142 = load i32, ptr %l78, !tbaa !23
  store i32 %t142, ptr %l71, !tbaa !23
  br label %bb25
bb25:
  %t143 = load i32, ptr %l71, !tbaa !23
  store i32 %t143, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewordBefore(ptr %v0, ptr %v1, ptr %a0, i32 %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l10 = alloca ptr
  %l12 = alloca ptr
  %l15 = alloca ptr
  %l28 = alloca i1
  %l29 = alloca { i64, ptr }
  %l33 = alloca i1
  %l34 = alloca { i64, ptr }
  %l38 = alloca i1
  %l39 = alloca { i64, ptr }
  %l55 = alloca %"compiler/source:Span"
  %l61 = alloca %"compiler/source:Span"
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca %"compiler/source:Span"
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
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 0
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t9 = getelementptr %"compiler/load:Loader", ptr %t7, i32 0, i32 10
  store ptr %t9, ptr %l10, !tbaa !29
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t10)
  store ptr %t12, ptr %l12
  br label %bb1
bb1:
  %t13 = load ptr, ptr %l12, !tbaa !29
  %t15 = getelementptr %"compiler/check:frame", ptr %t13, i32 0, i32 1
  %t16 = load i64, ptr %t15, !tbaa !24
  %t17 = load ptr, ptr %l10, !tbaa !29
  %t19 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t17, i64 %t16)
  store ptr %t19, ptr %l15
  br label %bb2
bb2:
  %t20 = load ptr, ptr %l15, !tbaa !29
  %t22 = getelementptr %"compiler/load:Module", ptr %t20, i32 0, i32 6
  %t23 = load ptr, ptr %t22, !tbaa !29
  store ptr %t23, ptr %l3, !tbaa !29
  %t25 = load ptr, ptr %l3, !tbaa !29
  %t27 = icmp eq ptr %t25, null
  br i1 %t27, label %bb3, label %bb4
bb3:
  call void @__olang_check_failed(ptr @olang_loc_db613d0fd16ec597_dffdd95765f5abab)
  unreachable
bb4:
  br label %bb5
bb5:
  %t29 = load ptr, ptr %l3, !tbaa !29
  %t32 = getelementptr %"compiler/source:Source", ptr %t29, i32 0, i32 1
  %t33 = load { i64, ptr }, ptr %t32, !tbaa !27
  store { i64, ptr } %t33, ptr %l4, !tbaa !27
  %t35 = load i32, ptr %l1, !tbaa !23
  %t37 = sext i32 %t35 to i64
  %t39 = sub i64 %t37, 1
  store i64 %t39, ptr %l5, !tbaa !24
  br label %bb6
bb6:
  %t41 = load i64, ptr %l5, !tbaa !24
  %t43 = icmp sgt i64 %t41, 0
  br i1 %t43, label %bb7, label %bb8
bb7:
  %t45 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t45, ptr %l29, !tbaa !27
  %t46 = load i64, ptr %l5, !tbaa !24
  %t48 = getelementptr { i64, ptr }, ptr %l29, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !27
  %t50 = getelementptr i8, ptr %t49, i64 %t46
  %t51 = load i8, ptr %t50, !tbaa !32
  %t53 = icmp eq i8 %t51, 32
  br i1 %t53, label %bb9, label %bb10
bb8:
  store i1 false, ptr %l28, !tbaa !21
  br label %bb15
bb9:
  store i1 true, ptr %l33, !tbaa !21
  br label %bb11
bb10:
  %t55 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t55, ptr %l34, !tbaa !27
  %t56 = load i64, ptr %l5, !tbaa !24
  %t58 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !27
  %t60 = getelementptr i8, ptr %t59, i64 %t56
  %t61 = load i8, ptr %t60, !tbaa !32
  %t63 = icmp eq i8 %t61, 9
  store i1 %t63, ptr %l33, !tbaa !21
  br label %bb11
bb11:
  %t65 = load i1, ptr %l33, !tbaa !21
  br i1 %t65, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l38, !tbaa !21
  br label %bb14
bb13:
  %t66 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t66, ptr %l39, !tbaa !27
  %t67 = load i64, ptr %l5, !tbaa !24
  %t69 = getelementptr { i64, ptr }, ptr %l39, i32 0, i32 1
  %t70 = load ptr, ptr %t69, !tbaa !27
  %t71 = getelementptr i8, ptr %t70, i64 %t67
  %t72 = load i8, ptr %t71, !tbaa !32
  %t74 = icmp eq i8 %t72, 10
  store i1 %t74, ptr %l38, !tbaa !21
  br label %bb14
bb14:
  %t76 = load i1, ptr %l38, !tbaa !21
  store i1 %t76, ptr %l28, !tbaa !21
  br label %bb15
bb15:
  %t77 = load i1, ptr %l28, !tbaa !21
  %t78 = xor i1 %t77, true
  br i1 %t78, label %bb16, label %bb17
bb16:
  br label %bb20
bb17:
  br label %bb18
bb18:
  %t80 = load i64, ptr %l5, !tbaa !24
  %t82 = sub i64 %t80, 1
  store i64 %t82, ptr %l5, !tbaa !24
  br label %bb19
bb19:
  br label %bb6
bb20:
  %t84 = load i64, ptr %l5, !tbaa !24
  %t86 = add i64 %t84, 1
  %t89 = extractvalue { i64, ptr } %a2, 0
  %t92 = sub i64 %t86, %t89
  store i64 %t92, ptr %l6, !tbaa !24
  %t94 = load i64, ptr %l6, !tbaa !24
  %t96 = icmp slt i64 %t94, 0
  br i1 %t96, label %bb21, label %bb22
bb21:
  store %olang.scope zeroinitializer, ptr %s2
  %t98 = load i32, ptr %l1, !tbaa !23
  %t99 = load i32, ptr %l1, !tbaa !23
  %t102 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s2, i32 %t98, i32 %t99)
  store %"compiler/source:Span" %t102, ptr %l55
  br label %bb23
bb22:
  br label %bb24
bb23:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t103 = load %"compiler/source:Span", ptr %l55
  store %"compiler/source:Span" %t103, ptr %rv
  br label %ret
bb24:
  %t104 = load i64, ptr %l6, !tbaa !24
  %t106 = trunc i64 %t104 to i32
  %t107 = load i64, ptr %l5, !tbaa !24
  %t109 = add i64 %t107, 1
  %t111 = trunc i64 %t109 to i32
  %t114 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 %t106, i32 %t111)
  store %"compiler/source:Span" %t114, ptr %l61
  br label %bb25
bb25:
  call void @__olang_scope_close(ptr %s0)
  %t115 = load %"compiler/source:Span", ptr %l61
  store %"compiler/source:Span" %t115, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/source:Span", ptr %rv
  ret %"compiler/source:Span" %rr
}

define dso_local %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewriteAt(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca i1
  %l14 = alloca %"compiler/source:Span"
  %l17 = alloca { i64, ptr }
  %l19 = alloca %"compiler/source:Span"
  %l20 = alloca ptr
  %l21 = alloca i1
  %l28 = alloca %"compiler/source:Span"
  %l29 = alloca ptr
  %l30 = alloca i1
  %l37 = alloca %"compiler/source:Span"
  %l39 = alloca %"compiler/source:Span"
  %s1 = alloca %olang.scope
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
  %t8 = icmp eq i64 %t6, 14
  store i1 %t8, ptr %l7, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l7, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t12, i32 0, i32 0
  %t14 = load %"compiler/source:Span", ptr %t13
  store %"compiler/source:Span" %t14, ptr %l2
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [4 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t18, i32 0, i32 2
  %t20 = load i32, ptr %t19
  store i32 %t20, ptr %l3, !tbaa !23
  br label %bb5
bb4:
  br label %bb8
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t22 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t22, ptr %l14
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load i32, ptr %l3, !tbaa !23
  %t27 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s1, ptr %t23, i32 %t24)
  store { i64, ptr } %t27, ptr %l17
  br label %bb6
bb6:
  %t28 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t29 = extractvalue { i64, ptr } %t28, 0
  %t30 = load %"compiler/source:Span", ptr %l14
  %t32 = call %"compiler/source:Span" @compiler_2fcheck_2ememberSpan(%"compiler/source:Span" %t30, i64 %t29)
  store %"compiler/source:Span" %t32, ptr %l19
  br label %bb7
bb7:
  call void @__olang_scope_close(ptr %s1)
  %t33 = load %"compiler/source:Span", ptr %l19
  store %"compiler/source:Span" %t33, ptr %rv
  br label %ret
bb8:
  %t34 = load ptr, ptr %l1, !tbaa !29
  store ptr %t34, ptr %l20, !tbaa !29
  store i1 false, ptr %l21, !tbaa !21
  %t35 = load ptr, ptr %l20, !tbaa !29
  %t36 = icmp ne ptr %t35, null
  br i1 %t36, label %bb9, label %bb10
bb9:
  %t38 = load ptr, ptr %l20, !tbaa !29
  %t39 = load i64, ptr %t38, !range !{i64 0, i64 30}
  %t41 = icmp eq i64 %t39, 15
  store i1 %t41, ptr %l21, !tbaa !21
  br label %bb10
bb10:
  %t42 = load i1, ptr %l21, !tbaa !21
  br i1 %t42, label %bb11, label %bb12
bb11:
  %t43 = load ptr, ptr %l1, !tbaa !29
  %t45 = getelementptr { i64, [4 x i64] }, ptr %t43, i32 0, i32 1
  %t46 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t45, i32 0, i32 1
  %t47 = load ptr, ptr %t46
  store ptr %t47, ptr %l4, !tbaa !29
  br label %bb13
bb12:
  br label %bb15
bb13:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t50 = load ptr, ptr %l4, !tbaa !29
  %t53 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebracketOf(ptr %v0, ptr %v1, ptr %t49, ptr %t50)
  store %"compiler/source:Span" %t53, ptr %l28
  br label %bb14
bb14:
  %t54 = load %"compiler/source:Span", ptr %l28
  store %"compiler/source:Span" %t54, ptr %rv
  br label %ret
bb15:
  %t55 = load ptr, ptr %l1, !tbaa !29
  store ptr %t55, ptr %l29, !tbaa !29
  store i1 false, ptr %l30, !tbaa !21
  %t56 = load ptr, ptr %l29, !tbaa !29
  %t57 = icmp ne ptr %t56, null
  br i1 %t57, label %bb16, label %bb17
bb16:
  %t59 = load ptr, ptr %l29, !tbaa !29
  %t60 = load i64, ptr %t59, !range !{i64 0, i64 30}
  %t62 = icmp eq i64 %t60, 2
  store i1 %t62, ptr %l30, !tbaa !21
  br label %bb17
bb17:
  %t63 = load i1, ptr %l30, !tbaa !21
  br i1 %t63, label %bb18, label %bb19
bb18:
  %t64 = load ptr, ptr %l1, !tbaa !29
  %t66 = getelementptr { i64, [4 x i64] }, ptr %t64, i32 0, i32 1
  %t67 = getelementptr { %"compiler/source:Span", ptr }, ptr %t66, i32 0, i32 1
  %t68 = load ptr, ptr %t67
  store ptr %t68, ptr %l5, !tbaa !29
  br label %bb20
bb19:
  br label %bb22
bb20:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t71 = load ptr, ptr %l5, !tbaa !29
  %t74 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewriteAt(ptr %v0, ptr %v1, ptr %t70, ptr %t71)
  store %"compiler/source:Span" %t74, ptr %l37
  br label %bb21
bb21:
  %t75 = load %"compiler/source:Span", ptr %l37
  store %"compiler/source:Span" %t75, ptr %rv
  br label %ret
bb22:
  br i1 true, label %bb23, label %bb24
bb23:
  br label %bb25
bb24:
  br label %bb27
bb25:
  %t76 = load ptr, ptr %l1, !tbaa !29
  %t78 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t76)
  store %"compiler/source:Span" %t78, ptr %l39
  br label %bb26
bb26:
  %t79 = load %"compiler/source:Span", ptr %l39
  store %"compiler/source:Span" %t79, ptr %rv
  br label %ret
bb27:
  call void @__olang_check_failed(ptr @olang_loc_75b6f594e3a638af_f29916a598710c13)
  unreachable
ret:
  %rr = load %"compiler/source:Span", ptr %rv
  ret %"compiler/source:Span" %rr
}

define dso_local i1 @compiler_2fcheck_2edirectSet(ptr %v0, { i64, ptr } %a0, i32 %a1) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l14 = alloca { i64, ptr }
  %l17 = alloca ptr
  %l18 = alloca i1
  %l24 = alloca i32
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } %a0, ptr %l2, !tbaa !27
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
  br label %bb21
bb3:
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t15, ptr %l14, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr ptr, ptr %t19, i64 %t16
  %t21 = load ptr, ptr %t20, !tbaa !39
  store ptr %t21, ptr %l5, !tbaa !29
  %t23 = load ptr, ptr %l5, !tbaa !29
  store ptr %t23, ptr %l17, !tbaa !29
  store i1 false, ptr %l18, !tbaa !21
  %t24 = load ptr, ptr %l17, !tbaa !29
  %t25 = icmp ne ptr %t24, null
  br i1 %t25, label %bb5, label %bb6
bb5:
  %t27 = load ptr, ptr %l17, !tbaa !29
  %t28 = load i64, ptr %t27, !range !{i64 0, i64 11}
  %t30 = icmp eq i64 %t28, 8
  store i1 %t30, ptr %l18, !tbaa !21
  br label %bb6
bb6:
  %t31 = load i1, ptr %l18, !tbaa !21
  br i1 %t31, label %bb7, label %bb8
bb7:
  %t32 = load ptr, ptr %l5, !tbaa !29
  %t34 = getelementptr { i64, [8 x i64] }, ptr %t32, i32 0, i32 1
  %t35 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t34, i32 0, i32 1
  %t36 = load ptr, ptr %t35
  store ptr %t36, ptr %l6, !tbaa !29
  br label %bb9
bb8:
  br label %bb14
bb9:
  %t38 = load ptr, ptr %l6, !tbaa !29
  %t40 = call i32 @compiler_2fcheck_2esetName(ptr %v0, ptr %t38)
  store i32 %t40, ptr %l24
  br label %bb10
bb10:
  %t42 = load i32, ptr %l24, !tbaa !23
  %t44 = icmp eq i32 %t42, %a1
  br i1 %t44, label %bb11, label %bb12
bb11:
  store i1 true, ptr %rv
  br label %ret
bb12:
  br label %bb13
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
  call void @__olang_check_failed(ptr @olang_loc_19f4e92ae3000dc_edc59080f5379130)
  unreachable
bb19:
  br label %bb20
bb20:
  %t47 = load i64, ptr %l3, !tbaa !24
  %t49 = add i64 %t47, 1
  store i64 %t49, ptr %l3, !tbaa !24
  br label %bb1
bb21:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2efloatOverflows(i32 %a0, double %a1) #0 {
entry:
  %l0 = alloca i32
  %l1 = alloca double
  %l2 = alloca double
  %l5 = alloca i1
  %l27 = alloca i1
  %rv = alloca i1
  store i32 %a0, ptr %l0
  store double %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load double, ptr %l1, !tbaa !26
  %t3 = fcmp ogt double %t1, 0x7fefffffffffffff
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l5, !tbaa !21
  br label %bb3
bb2:
  %t5 = load double, ptr %l1, !tbaa !26
  %t7 = fcmp olt double %t5, 0xffefffffffffffff
  store i1 %t7, ptr %l5, !tbaa !21
  br label %bb3
bb3:
  %t9 = load i1, ptr %l5, !tbaa !21
  br i1 %t9, label %bb4, label %bb5
bb4:
  store i1 false, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t11 = load double, ptr %l1, !tbaa !26
  store double %t11, ptr %l2, !tbaa !26
  %t13 = load i32, ptr %l0, !tbaa !23
  %t15 = icmp eq i32 %t13, 13
  br i1 %t15, label %bb7, label %bb8
bb7:
  %t17 = load double, ptr %l1, !tbaa !26
  %t19 = fptrunc double %t17 to float
  %t21 = fpext float %t19 to double
  store double %t21, ptr %l2, !tbaa !26
  br label %bb9
bb8:
  br label %bb9
bb9:
  %t23 = load i32, ptr %l0, !tbaa !23
  %t25 = icmp eq i32 %t23, 11
  br i1 %t25, label %bb10, label %bb11
bb10:
  %t27 = load double, ptr %l1, !tbaa !26
  %t29 = fptrunc double %t27 to half
  %t31 = fpext half %t29 to double
  store double %t31, ptr %l2, !tbaa !26
  br label %bb12
bb11:
  br label %bb12
bb12:
  %t33 = load i32, ptr %l0, !tbaa !23
  %t35 = icmp eq i32 %t33, 12
  br i1 %t35, label %bb13, label %bb14
bb13:
  %t37 = load double, ptr %l1, !tbaa !26
  %t39 = fptrunc double %t37 to bfloat
  %t41 = bitcast bfloat %t39 to i16
  %t42 = zext i16 %t41 to i32
  %t43 = shl i32 %t42, 16
  %t44 = bitcast i32 %t43 to float
  %t45 = fpext float %t44 to double
  store double %t45, ptr %l2, !tbaa !26
  br label %bb15
bb14:
  br label %bb15
bb15:
  %t47 = load double, ptr %l2, !tbaa !26
  %t49 = fcmp ogt double %t47, 0x7fefffffffffffff
  br i1 %t49, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l27, !tbaa !21
  br label %bb18
bb17:
  %t51 = load double, ptr %l2, !tbaa !26
  %t53 = fcmp olt double %t51, 0xffefffffffffffff
  store i1 %t53, ptr %l27, !tbaa !21
  br label %bb18
bb18:
  %t55 = load i1, ptr %l27, !tbaa !21
  store i1 %t55, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2eisTrue(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca i1
  %l14 = alloca i1
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
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, i64 }, ptr %t12, i32 0, i32 1
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l1, !tbaa !23
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr { i64, [5 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32, i64 }, ptr %t18, i32 0, i32 2
  %t20 = load i64, ptr %t19
  store i64 %t20, ptr %l2, !tbaa !24
  br label %bb5
bb4:
  br label %bb9
bb5:
  %t22 = load i32, ptr %l1, !tbaa !23
  %t23 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t26 = icmp eq i32 %t22, %t23
  br i1 %t26, label %bb6, label %bb7
bb6:
  %t28 = load i64, ptr %l2, !tbaa !24
  %t30 = icmp eq i64 %t28, 1
  store i1 %t30, ptr %l14, !tbaa !21
  br label %bb8
bb7:
  store i1 false, ptr %l14, !tbaa !21
  br label %bb8
bb8:
  %t32 = load i1, ptr %l14, !tbaa !21
  store i1 %t32, ptr %rv
  br label %ret
bb9:
  br i1 true, label %bb10, label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb13
bb12:
  store i1 false, ptr %rv
  br label %ret
bb13:
  call void @__olang_check_failed(ptr @olang_loc_a08a248bd178667f_2aaba0f11d7155db)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2enullDefault(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l20 = alloca { i64, ptr }
  %l35 = alloca { i64, ptr }
  %l39 = alloca i1
  %rv = alloca i1
  store { i64, ptr } %a0, ptr %l0
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
  store { i64, ptr } %t8, ptr %l1, !tbaa !27
  store i64 0, ptr %l2, !tbaa !24
  %t10 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t10, 0
  store i64 %t12, ptr %l3, !tbaa !24
  br label %bb4
bb4:
  %t14 = load i64, ptr %l2, !tbaa !24
  %t15 = load i64, ptr %l3, !tbaa !24
  %t18 = icmp slt i64 %t14, %t15
  %t20 = xor i1 %t18, true
  br i1 %t20, label %bb5, label %bb6
bb5:
  br label %bb22
bb6:
  br label %bb7
bb7:
  %t22 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t22, ptr %l20, !tbaa !27
  %t23 = load i64, ptr %l2, !tbaa !24
  %t25 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !27
  %t27 = getelementptr ptr, ptr %t26, i64 %t23
  %t28 = load ptr, ptr %t27, !tbaa !39
  store ptr %t28, ptr %l4, !tbaa !29
  %t30 = load ptr, ptr %l4, !tbaa !29
  %t32 = getelementptr %"compiler/ast:Catch", ptr %t30, i32 0, i32 3
  %t33 = load { i64, ptr }, ptr %t32, !tbaa !27
  %t35 = extractvalue { i64, ptr } %t33, 0
  %t37 = icmp eq i64 %t35, 0
  br i1 %t37, label %bb8, label %bb9
bb8:
  br label %bb21
bb9:
  br label %bb10
bb10:
  %t39 = load ptr, ptr %l4, !tbaa !29
  %t41 = getelementptr %"compiler/ast:Catch", ptr %t39, i32 0, i32 3
  %t42 = load { i64, ptr }, ptr %t41, !tbaa !27
  store { i64, ptr } %t42, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t44 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t46 = extractvalue { i64, ptr } %t44, 0
  store i64 %t46, ptr %l7, !tbaa !24
  br label %bb11
bb11:
  %t48 = load i64, ptr %l6, !tbaa !24
  %t49 = load i64, ptr %l7, !tbaa !24
  %t52 = icmp slt i64 %t48, %t49
  %t54 = xor i1 %t52, true
  br i1 %t54, label %bb12, label %bb13
bb12:
  br label %bb20
bb13:
  br label %bb14
bb14:
  %t56 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t56, ptr %l35, !tbaa !27
  %t57 = load i64, ptr %l6, !tbaa !24
  %t59 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t60 = load ptr, ptr %t59, !tbaa !27
  %t61 = getelementptr ptr, ptr %t60, i64 %t57
  %t62 = load ptr, ptr %t61, !tbaa !39
  %t66 = call i1 @compiler_2fcheck_2eisNullLit(ptr %v0, ptr %t62)
  store i1 %t66, ptr %l39
  br label %bb15
bb15:
  %t67 = load i1, ptr %l39, !tbaa !21
  br i1 %t67, label %bb16, label %bb17
bb16:
  store i1 true, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  br label %bb19
bb19:
  %t69 = load i64, ptr %l6, !tbaa !24
  %t71 = add i64 %t69, 1
  store i64 %t71, ptr %l6, !tbaa !24
  br label %bb11
bb20:
  br label %bb21
bb21:
  %t73 = load i64, ptr %l2, !tbaa !24
  %t75 = add i64 %t73, 1
  store i64 %t75, ptr %l2, !tbaa !24
  br label %bb4
bb22:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fcheck_2enullTests(ptr %v0, ptr %v1, ptr %a0, i1 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i1
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca i1
  %l9 = alloca { i64, ptr }
  %l10 = alloca i32
  %l11 = alloca ptr
  %l12 = alloca ptr
  %l15 = alloca ptr
  %l16 = alloca i1
  %l25 = alloca ptr
  %l26 = alloca i1
  %l40 = alloca ptr
  %l41 = alloca i1
  %l51 = alloca i1
  %l52 = alloca i1
  %l57 = alloca { i64, ptr }
  %l63 = alloca ptr
  %l64 = alloca i1
  %l75 = alloca i1
  %l77 = alloca i1
  %l80 = alloca i1
  store ptr %a0, ptr %l0
  store i1 %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t5 = load ptr, ptr %l0, !tbaa !29
  store ptr %t5, ptr %l15, !tbaa !29
  store i1 false, ptr %l16, !tbaa !21
  %t6 = load ptr, ptr %l15, !tbaa !29
  %t7 = icmp ne ptr %t6, null
  br i1 %t7, label %bb4, label %bb5
bb4:
  %t9 = load ptr, ptr %l15, !tbaa !29
  %t10 = load i64, ptr %t9, !range !{i64 0, i64 30}
  %t12 = icmp eq i64 %t10, 2
  store i1 %t12, ptr %l16, !tbaa !21
  br label %bb5
bb5:
  %t13 = load i1, ptr %l16, !tbaa !21
  br i1 %t13, label %bb6, label %bb7
bb6:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr { i64, [4 x i64] }, ptr %t14, i32 0, i32 1
  %t17 = getelementptr { %"compiler/source:Span", ptr }, ptr %t16, i32 0, i32 1
  %t18 = load ptr, ptr %t17
  store ptr %t18, ptr %l3, !tbaa !29
  br label %bb8
bb7:
  br label %bb10
bb8:
  %t20 = load ptr, ptr %l3, !tbaa !29
  %t22 = load i1, ptr %l1, !tbaa !21
  %t23 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fcheck_2enullTests(ptr %v0, ptr %v1, ptr %t20, i1 %t22, ptr %t23)
  br label %bb9
bb9:
  br label %bb63
bb10:
  %t27 = load ptr, ptr %l0, !tbaa !29
  store ptr %t27, ptr %l25, !tbaa !29
  store i1 false, ptr %l26, !tbaa !21
  %t28 = load ptr, ptr %l25, !tbaa !29
  %t29 = icmp ne ptr %t28, null
  br i1 %t29, label %bb11, label %bb12
bb11:
  %t31 = load ptr, ptr %l25, !tbaa !29
  %t32 = load i64, ptr %t31, !range !{i64 0, i64 30}
  %t34 = icmp eq i64 %t32, 3
  store i1 %t34, ptr %l26, !tbaa !21
  br label %bb12
bb12:
  %t35 = load i1, ptr %l26, !tbaa !21
  br i1 %t35, label %bb13, label %bb14
bb13:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr { i64, [4 x i64] }, ptr %t36, i32 0, i32 1
  %t39 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t38, i32 0, i32 1
  %t40 = load i32, ptr %t39, !range !{i32 0, i32 114}
  store i32 %t40, ptr %l4
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr { i64, [4 x i64] }, ptr %t42, i32 0, i32 1
  %t45 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t44, i32 0, i32 2
  %t46 = load ptr, ptr %t45
  store ptr %t46, ptr %l5, !tbaa !29
  br label %bb15
bb14:
  br label %bb20
bb15:
  %t48 = load i32, ptr %l4, !range !{i32 0, i32 114}
  %t50 = trunc i64 48 to i32
  %t51 = icmp eq i32 %t48, %t50
  br i1 %t51, label %bb16, label %bb17
bb16:
  %t53 = load ptr, ptr %l5, !tbaa !29
  %t55 = load i1, ptr %l1, !tbaa !21
  %t57 = xor i1 %t55, true
  %t58 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fcheck_2enullTests(ptr %v0, ptr %v1, ptr %t53, i1 %t57, ptr %t58)
  br label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb19
bb19:
  br label %bb63
bb20:
  %t62 = load ptr, ptr %l0, !tbaa !29
  store ptr %t62, ptr %l40, !tbaa !29
  store i1 false, ptr %l41, !tbaa !21
  %t63 = load ptr, ptr %l40, !tbaa !29
  %t64 = icmp ne ptr %t63, null
  br i1 %t64, label %bb21, label %bb22
bb21:
  %t66 = load ptr, ptr %l40, !tbaa !29
  %t67 = load i64, ptr %t66, !range !{i64 0, i64 30}
  %t69 = icmp eq i64 %t67, 10
  store i1 %t69, ptr %l41, !tbaa !21
  br label %bb22
bb22:
  %t70 = load i1, ptr %l41, !tbaa !21
  br i1 %t70, label %bb23, label %bb24
bb23:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr { i64, [4 x i64] }, ptr %t71, i32 0, i32 1
  %t74 = getelementptr { %"compiler/source:Span", ptr, ptr, i1 }, ptr %t73, i32 0, i32 1
  %t75 = load ptr, ptr %t74
  store ptr %t75, ptr %l6, !tbaa !29
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr { i64, [4 x i64] }, ptr %t77, i32 0, i32 1
  %t80 = getelementptr { %"compiler/source:Span", ptr, ptr, i1 }, ptr %t79, i32 0, i32 2
  %t81 = load ptr, ptr %t80
  store ptr %t81, ptr %l7, !tbaa !29
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr { i64, [4 x i64] }, ptr %t83, i32 0, i32 1
  %t86 = getelementptr { %"compiler/source:Span", ptr, ptr, i1 }, ptr %t85, i32 0, i32 3
  %t87 = load i1, ptr %t86
  store i1 %t87, ptr %l8, !tbaa !21
  br label %bb25
bb24:
  br label %bb38
bb25:
  %t89 = load ptr, ptr %l7, !tbaa !29
  %t91 = call i1 @compiler_2fcheck_2eisNullLit(ptr %v0, ptr %t89)
  store i1 %t91, ptr %l51
  br label %bb26
bb26:
  %t92 = load i1, ptr %l51, !tbaa !21
  br i1 %t92, label %bb27, label %bb28
bb27:
  %t93 = load i1, ptr %l8, !tbaa !21
  %t94 = load i1, ptr %l1, !tbaa !21
  %t97 = icmp eq i1 %t93, %t94
  store i1 %t97, ptr %l52, !tbaa !21
  br label %bb29
bb28:
  store i1 false, ptr %l52, !tbaa !21
  br label %bb29
bb29:
  %t99 = load i1, ptr %l52, !tbaa !21
  br i1 %t99, label %bb30, label %bb31
bb30:
  %t100 = load ptr, ptr %l6, !tbaa !29
  %t102 = call { i64, ptr } @compiler_2fcheck_2epathOf(ptr %v0, ptr %v1, ptr %t100)
  store { i64, ptr } %t102, ptr %l57
  br label %bb32
bb31:
  br label %bb37
bb32:
  %t103 = load { i64, ptr }, ptr %l57, !tbaa !27
  store { i64, ptr } %t103, ptr %l9, !tbaa !27
  %t104 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t106 = extractvalue { i64, ptr } %t104, 0
  %t108 = icmp sgt i64 %t106, 0
  br i1 %t108, label %bb33, label %bb34
bb33:
  %t110 = load ptr, ptr %l2, !tbaa !29
  %t111 = load { i64, ptr }, ptr %l9, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fsource_3aNameId_3e__H41a2935585cca595f0dd127aea20d09e(ptr %v1, ptr %v1, ptr %t110, { i64, ptr } %t111)
  br label %bb35
bb34:
  br label %bb36
bb35:
  br label %bb36
bb36:
  br label %bb37
bb37:
  br label %bb63
bb38:
  %t114 = load ptr, ptr %l0, !tbaa !29
  store ptr %t114, ptr %l63, !tbaa !29
  store i1 false, ptr %l64, !tbaa !21
  %t115 = load ptr, ptr %l63, !tbaa !29
  %t116 = icmp ne ptr %t115, null
  br i1 %t116, label %bb39, label %bb40
bb39:
  %t118 = load ptr, ptr %l63, !tbaa !29
  %t119 = load i64, ptr %t118, !range !{i64 0, i64 30}
  %t121 = icmp eq i64 %t119, 5
  store i1 %t121, ptr %l64, !tbaa !21
  br label %bb40
bb40:
  %t122 = load i1, ptr %l64, !tbaa !21
  br i1 %t122, label %bb41, label %bb42
bb41:
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t125 = getelementptr { i64, [4 x i64] }, ptr %t123, i32 0, i32 1
  %t126 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t125, i32 0, i32 1
  %t127 = load i32, ptr %t126, !range !{i32 0, i32 114}
  store i32 %t127, ptr %l10
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t131 = getelementptr { i64, [4 x i64] }, ptr %t129, i32 0, i32 1
  %t132 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t131, i32 0, i32 2
  %t133 = load ptr, ptr %t132
  store ptr %t133, ptr %l11, !tbaa !29
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t137 = getelementptr { i64, [4 x i64] }, ptr %t135, i32 0, i32 1
  %t138 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t137, i32 0, i32 3
  %t139 = load ptr, ptr %t138
  store ptr %t139, ptr %l12, !tbaa !29
  br label %bb43
bb42:
  br label %bb58
bb43:
  %t141 = load i32, ptr %l10, !range !{i32 0, i32 114}
  %t143 = trunc i64 45 to i32
  %t144 = icmp eq i32 %t141, %t143
  br i1 %t144, label %bb44, label %bb45
bb44:
  %t146 = load i1, ptr %l1, !tbaa !21
  store i1 %t146, ptr %l75, !tbaa !21
  br label %bb46
bb45:
  store i1 false, ptr %l75, !tbaa !21
  br label %bb46
bb46:
  %t148 = load i1, ptr %l75, !tbaa !21
  br i1 %t148, label %bb47, label %bb48
bb47:
  store i1 true, ptr %l77, !tbaa !21
  br label %bb52
bb48:
  %t149 = load i32, ptr %l10, !range !{i32 0, i32 114}
  %t151 = trunc i64 46 to i32
  %t152 = icmp eq i32 %t149, %t151
  br i1 %t152, label %bb49, label %bb50
bb49:
  %t154 = load i1, ptr %l1, !tbaa !21
  %t156 = xor i1 %t154, true
  store i1 %t156, ptr %l80, !tbaa !21
  br label %bb51
bb50:
  store i1 false, ptr %l80, !tbaa !21
  br label %bb51
bb51:
  %t158 = load i1, ptr %l80, !tbaa !21
  store i1 %t158, ptr %l77, !tbaa !21
  br label %bb52
bb52:
  %t159 = load i1, ptr %l77, !tbaa !21
  br i1 %t159, label %bb53, label %bb54
bb53:
  %t160 = load ptr, ptr %l11, !tbaa !29
  %t162 = load i1, ptr %l1, !tbaa !21
  %t163 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fcheck_2enullTests(ptr %v0, ptr %v1, ptr %t160, i1 %t162, ptr %t163)
  br label %bb55
bb54:
  br label %bb57
bb55:
  %t167 = load ptr, ptr %l12, !tbaa !29
  %t169 = load i1, ptr %l1, !tbaa !21
  %t170 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fcheck_2enullTests(ptr %v0, ptr %v1, ptr %t167, i1 %t169, ptr %t170)
  br label %bb56
bb56:
  br label %bb57
bb57:
  br label %bb63
bb58:
  br i1 true, label %bb59, label %bb60
bb59:
  br label %bb61
bb60:
  br label %bb62
bb61:
  br label %bb63
bb62:
  call void @__olang_check_failed(ptr @olang_loc_971e562861b388d3_547076ac47399cf7)
  unreachable
bb63:
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2eunwrapped(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i1
  %l12 = alloca i1
  %l18 = alloca i1
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l2, !tbaa !29
  store i1 false, ptr %l3, !tbaa !21
  %t2 = load ptr, ptr %l2, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l2, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 12
  store i1 %t8, ptr %l3, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l3, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l1, !tbaa !29
  br label %bb5
bb4:
  br label %bb19
bb5:
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr %"compiler/typed:Seq", ptr %t16, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !29
  %t21 = icmp eq ptr %t19, null
  %t23 = xor i1 %t21, true
  br i1 %t23, label %bb6, label %bb7
bb6:
  %t25 = load ptr, ptr %l1, !tbaa !29
  %t27 = getelementptr %"compiler/typed:Seq", ptr %t25, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !29
  %t30 = icmp eq ptr %t28, null
  br i1 %t30, label %bb8, label %bb9
bb7:
  store i1 false, ptr %l12, !tbaa !21
  br label %bb12
bb8:
  call void @__olang_check_failed(ptr @olang_loc_db336c98c3d140f2_e2aca3dd623cb216)
  unreachable
bb9:
  br label %bb10
bb10:
  %t32 = load ptr, ptr %l1, !tbaa !29
  %t34 = getelementptr %"compiler/typed:Seq", ptr %t32, i32 0, i32 1
  %t35 = load ptr, ptr %t34, !tbaa !29
  %t37 = call i1 @compiler_2fcheck_2epureRead(ptr %v0, ptr %t35)
  store i1 %t37, ptr %l18
  br label %bb11
bb11:
  %t38 = load i1, ptr %l18, !tbaa !21
  store i1 %t38, ptr %l12, !tbaa !21
  br label %bb12
bb12:
  %t39 = load i1, ptr %l12, !tbaa !21
  br i1 %t39, label %bb13, label %bb14
bb13:
  %t40 = load ptr, ptr %l1, !tbaa !29
  %t42 = getelementptr %"compiler/typed:Seq", ptr %t40, i32 0, i32 1
  %t43 = load ptr, ptr %t42, !tbaa !29
  %t45 = icmp eq ptr %t43, null
  br i1 %t45, label %bb15, label %bb16
bb14:
  br label %bb18
bb15:
  call void @__olang_check_failed(ptr @olang_loc_db336c98c3d140f2_e2aca3dd623cb216)
  unreachable
bb16:
  br label %bb17
bb17:
  %t47 = load ptr, ptr %l1, !tbaa !29
  %t49 = getelementptr %"compiler/typed:Seq", ptr %t47, i32 0, i32 1
  %t50 = load ptr, ptr %t49, !tbaa !29
  store ptr %t50, ptr %rv
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
  call void @__olang_check_failed(ptr @olang_loc_baaa1af575455ed0_90a91bbf0a009424)
  unreachable
bb24:
  %t52 = load ptr, ptr %l0, !tbaa !29
  store ptr %t52, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
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
@.d0 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"At" }>, align 8
@.d1 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"std/prelude" }>, align 8
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
@.d2 = private constant <{ i64, [63 x i8] }> <{ i64 0, [63 x i8] c"it reads a mutable global, whose value is the running program's" }>, align 8
declare ptr @__olang_scope_of(ptr, ptr) noinline
@.d3 = private constant <{ i64, [29 x i8] }> <{ i64 0, [29 x i8] c"'==' between null and a value" }>, align 8
@.d4 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"'=='" }>, align 8
@.d5 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"eq" }>, align 8
@.d6 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"Eq" }>, align 8
@__olang_empty_array = external constant [16 x i64]
@.d7 = private constant <{ i64, [54 x i8] }> <{ i64 0, [54 x i8] c"'==' on an array or enum whose parts declare Eq (E10a)" }>, align 8
@.d8 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"s" }>, align 8
@.d9 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"type" }>, align 8
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
@olang_2esole_2eArray_3ccompiler_2fast_3aPath_26_3e_2e_2d1 = weak hidden constant i1 false
declare ptr @__olang_region_or(ptr, ptr)
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
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
@.d10 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"'unreachable'" }>, align 8
@.d11 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"a 'noreturn' call" }>, align 8
@.d12 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"join" }>, align 8
define linkonce_odr i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fsource_3aSpan(ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i1 true, ptr %l2, !tbaa !21
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = getelementptr %"compiler/source:Span", ptr %t1, i32 0, i32 0
  %t3 = load i32, ptr %t2, !tbaa !23
  %t4 = load ptr, ptr %l1, !tbaa !29
  %t5 = getelementptr %"compiler/source:Span", ptr %t4, i32 0, i32 0
  %t6 = load i32, ptr %t5, !tbaa !23
  %t9 = icmp eq i32 %t3, %t6
  br i1 %t9, label %bb2, label %bb1
bb1:
  store i1 false, ptr %l2, !tbaa !21
  br label %bb4
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/source:Span", ptr %t11, i32 0, i32 1
  %t13 = load i32, ptr %t12, !tbaa !23
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t15 = getelementptr %"compiler/source:Span", ptr %t14, i32 0, i32 1
  %t16 = load i32, ptr %t15, !tbaa !23
  %t19 = icmp eq i32 %t13, %t16
  br i1 %t19, label %bb3, label %bb1
bb3:
  br label %bb4
bb4:
  %t21 = load i1, ptr %l2, !tbaa !21
  store i1 %t21, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

@.d13 = private constant <{ i64, [31 x i8] }> <{ i64 0, [31 x i8] c"this literal expression's value" }>, align 8
@.d14 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"F64" }>, align 8
@.d15 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"U64" }>, align 8
@.d16 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"F64" }>, align 8
@.d17 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"F64" }>, align 8
@.d18 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"U64" }>, align 8
@.d19 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"U64" }>, align 8
@__olang_prog_scope = external thread_local(initialexec) global ptr
@.d20 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c"a struct that is not packed" }>, align 8
@.d21 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c"it has no width in bits" }>, align 8
@.d22 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"an enum carrying a payload" }>, align 8
@.d23 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"a copy" }>, align 8
@.d24 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"is no struct" }>, align 8
@.d25 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"has a destructor" }>, align 8
@.d26 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"is no struct" }>, align 8
@.d27 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"is no struct" }>, align 8
@.d28 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"a part of a value made" }>, align 8
@.d29 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"?" }>, align 8
@.d30 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d31 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"s" }>, align 8
@.d32 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c" or more" }>, align 8
@.d33 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d34 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c" element" }>, align 8
@.d35 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"<" }>, align 8
@.d36 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" ? " }>, align 8
@.d37 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"? " }>, align 8
@.d38 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d39 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c">" }>, align 8
@.d40 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"'not'" }>, align 8
@.d41 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"this prefix operator" }>, align 8
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
declare i1 @compiler_2fcheck_2eisNullLit(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epayloadTest(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, ptr %a2, %"compiler/source:Span" %a3, ptr %a4)
@olang_loc_3116a02a3ef5f1f4_ec4eb607c1d67c00 = external constant [0 x i8]
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecalledInst(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %a0, i32 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %a0, i32 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eLen_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %a0)
declare %"compiler/load:Import" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eAt_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCaseUnknownName(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, %"compiler/diagmsg:Msg" %a2)
declare %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %v0, i64 %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1308596c866d4be061d9da9113abde88(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1, i1 %a2)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalNamed(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCaseIsSubject(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_3cf4b7359f29899a_630bdcef83a186 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2_H2251bc8fca359ca0394d0bb11af7ba0a(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aerrBind_3e_2eLen_3ccompiler_2fcheck_3aerrBind_3e(ptr %v0, ptr %a0)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtNamed(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_f18babf7f50c335e_33607163d02cbb5a = external constant [0 x i8]
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v0, ptr %a0)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneElemOf(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneTarget(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneArg(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneLeaf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/check:laneNode" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alaneNode_3e_2eAt_3ccompiler_2fcheck_3alaneNode_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare %"compiler/check:laneVals" @compiler_2fcheck_3alaneVals_2ector(ptr %v0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneHoldLeaves(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneLength(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i64 %a2, ptr %a3)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i64 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i32 %a3, ptr %a4, ptr %a5)
@G_2ecompiler_2fcheck_2eLaneScalar = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneCount(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, i64 %a2, ptr %a3)
declare { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehidden(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i32 %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, i64, i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneLoopOpen(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i64 %a3)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneElem(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, i64 %a2, ptr %a3, ptr %a4)
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3)
declare %"compiler/typed:Elem" @compiler_2ftyped_3aElem_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneLoopClose(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i64 %a2, i64 %a3, i64 %a4, i64 %a5, i64 %a6)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2_Hc8503b2b20cde402cc7bde6f68d96fc0(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eInst(ptr %v0, ptr %a0)
@G_2ecompiler_2ftypes_2eVoidT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectorOf(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eGlobalDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2)
declare i1 @compiler_2fgeneric_2eWrittenMut(ptr %v0, ptr %a0)
declare { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eat(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDefaultNotComputable(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrorOncePerLine(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2)
@olang_loc_5535019c26f71449_86439f2d3bbcfbb5 = external constant [0 x i8]
declare i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %a0)
@G_2ecompiler_2ftypes_2eNullT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\0F\00\00\00" }>, align 8
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enullOf(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2)
@G_2ecompiler_2ftypes_2eBoolT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i64 %a3)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFuncTag(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eUntagged(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNullable(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOrNull(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eflowsInto(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
@G_2ecompiler_2ftypes_2eReadOnly = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextBeside(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2, i32 %a3)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeMismatch(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeqMethod(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eProtocolPrivate(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %a0)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocal(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2, i32 %a3, i32 %a4, { i64, [1 x i64] } %a5)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNonNull(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
@olang_loc_1c2cb6c96b4eaee8_c1b953befa7e1dc = external constant [0 x i8]
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eone(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
@olang_loc_7ec9c6dbabf95ed5_e8695782fec42ca9 = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einvoke(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i64 %a3, ptr %a4, { i64, ptr } %a5, { i64, ptr } %a6, { i64, ptr } %a7)
declare %"compiler/typed:Cond" @compiler_2ftyped_3aCond_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2)
declare { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/typed:Seq" @compiler_2ftyped_3aSeq_2ector(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, ptr %a1, i1 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enegate(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
@olang_loc_bc0d2701821819b6_446831e810be806a = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisStruct(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisEnum(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epartsHaveEq(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epartsEqual(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3, i32 %a4)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecallOf(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, ptr %a3, { i64, ptr } %a4)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrValCodes(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eArgCount(ptr %v0, ptr %v1, i64 %a0, { i64, ptr } %a1, i64 %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrCarries(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrValItems(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePayloadOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ezero(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2)
declare %"compiler/typed:Make" @compiler_2ftyped_3aMake_2ector(ptr %v0, ptr %v1, ptr %v2, i32 %a0, i64 %a1, { i64, ptr } %a2, ptr %a3, i32 %a4, i32 %a5, i1 %a6)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrValue(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i64 %a3, i64 %a4, ptr %a5)
@olang_loc_da726112f8a5d119_ce42f73d9d53945 = external constant [0 x i8]
@olang_loc_771f29b9e3f6ab8a_7fc52d4465222796 = external constant [0 x i8]
declare i64 @compiler_2fcheck_2ewordAt(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1, { i64, ptr } %a2, i64 %a3)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eRaisedWordOwnName(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eErrorWordInUse(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @compiler_2fgeneric_3aContext_2ector(ptr %out, ptr %v0, i64 %a0, i64 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorItemKnown(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeEntry(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclFor(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorSetItem(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetReaches(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i64 %a3)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eErrorSetHoldsItself(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %v0, i64 %a0)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorSetEntries(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorWords(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrMask(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eErrorWordOfMember(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eleaks1(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAsCanFail(ptr %v0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnhandledFallibleCall(ptr %v0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epush(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, i32 %a3, i32 %a4)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenDecls(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2ereadPlace(ptr %v0, ptr %v1, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v1, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eLen_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0)
declare %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %a0)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aContractIn_H706090c6fdff168fc5314bb65abd7406(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectSourceOf(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/typed:ContractInfo" @compiler_2ftyped_3aContractInfo_2ector(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aContractIn_H9735389c66b65d66c88b8429345781ec(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"compiler/typed:ContractInfo" %a2)
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aStmt_2eSpan(ptr %v0, ptr %a0)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectBody(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i32 %a3, %"compiler/source:Span" %a4)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectItems(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectFinish(ptr %v0, ptr %a0, i64 %a1)
declare { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aContractIn_Hd65c4272ca63b1b28bc10811826f8c0d(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2ePush_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
@olang_loc_b8c0f8df0c29feb4_85efe1bb89e725c8 = external constant [0 x i8]
@olang_loc_73dce0787632619_dfd6eca41306418d = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@G_2ecompiler_2ftypes_2eNoreturnT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\11\00\00\00" }>, align 8
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDeclFromNoreturn(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecalleeSpan(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_343b32e44524bf9e_67b59a3d30ab5452 = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDeclFromNull(ptr %v0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeNotInferable(ptr %v0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextType(ptr %v0, ptr %a0)
@olang_loc_9c9a337b92d12a1f_5567ba002875d853 = external constant [0 x i8]
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erunLength(ptr %v0, ptr %a0, i32 %a1)
declare { i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopen(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclose(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, i64 %a3, i64 %a4)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eJoinWithoutSpawn(ptr %v0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eTruncate_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aClause_26_3e_2ector(ptr %v0, i64 %a0)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecatchSpan(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eJoinCatchNeedsTry(ptr %v0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eJoinCannotFail(ptr %v0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eproduced(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i64 %a2, i64 %a3)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eleaksBetween(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclause(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, i32 %a2, i1 %a3, { i64, ptr } %a4, ptr %a5)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aClause_26_3e_2ePush_Hc64f4d0e64077a33423ff9c4e583894f(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aClause_26_3e_2eLen__H4e51b5ca7b68af485b8486164a690a5f(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aClause_26_3e_2eAt_3ccompiler_2ftyped_3aClause_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_951d796b2ec85af2_4e6ca0fa0a1175d6 = external constant [0 x i8]
declare i1 @compiler_2fcheck_2eleavesValue(ptr %v0, ptr %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eJoinClauseMustLeave(ptr %v0)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaught(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, ptr %a3)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eescapes(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i64 %a2, i64 %a3)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eJoinNotTried(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aClause_26_3e_2eToAr_H1af1cf80015c73411d038ac8256aec52(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/typed:Join" @compiler_2ftyped_3aJoin_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i1 %a1, { i64, ptr } %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ementionsVar(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNumber(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLiteralNoOwnType(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitU64(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eoverflowsF64(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLiteralExprRange(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFloatLiteralRange(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsFloat(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLiteralRange(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i64 @compiler_2fcheck_2efloatBits(i32 %a0, double %a1)
declare double @compiler_2fcheck_2elitF64(%"compiler/check:litv" %a0)
declare i64 @compiler_2fcheck_2eintFloatBits(i32 %a0, %"compiler/check:litv" %a1)
declare i1 @compiler_2fcheck_2eintFits(ptr %v0, ptr %a0, %"compiler/check:litv" %a1, i32 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econvert(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i32 %a3)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H4bf1ea25652c8861abd3bf5b08e36e6f(ptr %v0, ptr %v1, ptr %a0)
declare { i32, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapKeyIter_3cstd_2fpair_3aPair_3cI64_2c_20I6_Hfbfbbcb252777c89628fb6bc7775609a(ptr %v0, ptr %a0)
declare { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H3cc70d507a7fc767d013b59b12ee0a99(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReachesWrite(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftyped_2eMutGlobalsFact = external constant <{ [8 x i8], ptr }>
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emutGlobalsValue(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare void @compiler_2ffacts_2ecompiler_2ffacts_3aTable_2eDecide(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, i1 %a3)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eholdsWritable(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalType(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCaseSig(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/typed:Payload" @compiler_2ftyped_3aPayload_2ector(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroLet(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare %"compiler/check:narrowed" @compiler_2fcheck_3anarrowed_2ector(ptr %v0, i64 %a0, i64 %a1, i32 %a2, i64 %a3, i64 %a4, i1 %a5)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anarrowed_3e_2ePush_3ccompiler_2fcheck_3anarrowed_3e(ptr %v0, ptr %a0, %"compiler/check:narrowed" %a1)
declare %"compiler/generic:Origin" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceOrigin(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euniqueArg(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUniqueNeedsCopy(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrorBare(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echeckedInst(ptr %v0, ptr %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteGenericNeeds(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, [3 x i64] } %a2, %"compiler/diagmsg:Msg" %a3)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDestructs(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeDecl(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fcheck_2erecordBody(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_9d659989a3d8e899_e17dd41770304f7d = external constant [0 x i8]
declare { i64, [1 x i64] } @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eParamMark(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eUnspread(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2ePush_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0, i32 %a1)
declare { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeWrittenAt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fdiag_3aWhere_3e_2e_Hc07a7e56a24d8f1225398db99ea19a4b(ptr %v0, ptr %a0, i64 %a1, { i64, [3 x i64] } %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euniqueMoved(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euniqueLand(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, { i64, ptr } %a2, i1 %a3)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnsParts(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnedPart(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eownCopy(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eExtended(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erendered(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esigText(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2)
declare { i64, ptr } @compiler_2fcheck_2etextBytes(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_f8eba3992f77108b_33e684cc3ada1a3f = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v0, ptr %a0)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eWritable = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroRoot(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroTempBase(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroRead(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroPlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroCallRef(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2ftyped_2ePassesRefs(i32 %a0)
@olang_loc_62c5ac3e914a4019_8e197c98e172d865 = external constant [0 x i8]
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efirstUncovered(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCaseNames(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMatchNotExhaustive(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAnyTrait(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMembers(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eIndexOf_3cBool_3e(ptr %v0, ptr %a0, i1 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eseqColumn(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i32, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eseqUncovered(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eseqLongest(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMatchLengthUncovered(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMatchValueUncovered(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasBody(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasPayload(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_5d236ea53e0f5fd3_8f603dd19b7c69a7 = external constant [0 x i8]
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eShiftOutOfRange(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1, i64 %a2)
@olang_loc_a580fa67a95f3737_235a3d78a5401c13 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrSetItems(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2espell(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, i1 %a3)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eembed(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecomptime(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i32 %a3)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneArray(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneUnary(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, ptr %a3)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eOperandNotBool(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalue(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, %"compiler/source:Span" %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunaryOn(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, ptr %a3)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPiece_26_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPiece_26_3e_2ePush_3ccompiler_2ftyped_3aPiece_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPiece_26_3e_2eToArr_H1b89f7fcc263bba924ca04e7c3aa48c7(ptr %v0, ptr %v1, ptr %a0)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esite(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
declare %"compiler/typed:Text" @compiler_2ftyped_3aText_2ector(ptr %v0, ptr %v1, { i64, ptr } %a0, i32 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewordCount(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrWords(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
@olang_loc_db613d0fd16ec597_dffdd95765f5abab = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fcheck_2ememberSpan(%"compiler/source:Span" %a0, i64 %a1)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebracketOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_75b6f594e3a638af_f29916a598710c13 = external constant [0 x i8]
declare i32 @compiler_2fcheck_2esetName(ptr %v0, ptr %a0)
@olang_loc_19f4e92ae3000dc_edc59080f5379130 = external constant [0 x i8]
@olang_loc_a08a248bd178667f_2aaba0f11d7155db = external constant [0 x i8]
declare { i64, ptr } @compiler_2fcheck_2epathOf(ptr %v0, ptr %v1, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fsource_3aNameId_3e__H41a2935585cca595f0dd127aea20d09e(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@olang_loc_971e562861b388d3_547076ac47399cf7 = external constant [0 x i8]
@olang_loc_db336c98c3d140f2_e2aca3dd623cb216 = external constant [0 x i8]
declare i1 @compiler_2fcheck_2epureRead(ptr %v0, ptr %a0)
@olang_loc_baaa1af575455ed0_90a91bbf0a009424 = external constant [0 x i8]

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
