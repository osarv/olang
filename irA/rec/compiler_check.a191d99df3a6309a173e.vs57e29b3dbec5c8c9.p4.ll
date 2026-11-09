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
%"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" = type { i64, i64 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/check:Checker" = type { ptr, ptr, i1, i1, i1, i1, i64, i64, i1, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, { i64, [3 x i64] }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i32, i64, %"compiler/source:Span", i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/source:Span", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i32, i1, i1, %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, i32, i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, i64, i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/text:StringBuilder", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"compiler/source:Span" = type { i32, i32 }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:Promote" = type { ptr, i32 }
%"compiler/generic:Binding" = type { i64, i64, { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/typed:Call" = type { ptr, { i64, ptr }, i32, i1, i1 }
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr } }
%"compiler/ast:Func" = type { %"compiler/source:Span", ptr, i32, ptr, { i64, ptr }, { i64, ptr }, i1, i1, { i64, ptr }, ptr, i32 }
%"compiler/check:frame" = type { i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/generic:Context", i32, i32, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i32, i64, i64, i64, i1, i64, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, i64, i64, i64, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/source:Span", i64, i1 }
%"compiler/generic:Context" = type { i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/ast:If" = type { ptr, ptr, ptr }
%"compiler/ast:Branch" = type { %"compiler/source:Span", { i64, ptr }, i64 }
%"compiler/ast:Match" = type { %"compiler/source:Span", ptr, i1, { i64, ptr } }
%"compiler/ast:Case" = type { %"compiler/source:Span", { i64, ptr }, { i64, ptr }, ptr, { i64, ptr }, ptr }
%"compiler/typed:Local" = type { i32, %"compiler/source:Span", i32, i32, i32, { i64, [1 x i64] }, i1, i1 }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:LocalUses" = type { ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i32 }
%"compiler/check:seqOf" = type { i32, i64, i64, i64 }
%"compiler/check:reflVal" = type { i1, i64, i64, { i64, ptr }, i32 }
%"compiler/typed:Elem" = type { ptr, ptr, i32 }
%"compiler/typed:Payload" = type { ptr, i64, i32 }
%"compiler/names:Unread" = type { i64, %"compiler/source:Span", i32, i1 }
%"compiler/names:Resolver" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/check:elemsShape" = type { { i64, ptr }, i64 }
%"compiler/ast:Sig" = type { { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, i1, ptr, i1, i1, { i64, ptr } }
%"compiler/ast:Param" = type { %"compiler/source:Span", i32, ptr, ptr, { i64, ptr } }
%"compiler/generic:AnySlot" = type { i32, i32, i64, i64, i1, i32 }
%"compiler/check:litv" = type { i1, i1, i1, i64, double, i1, i1, i1, i128 }
%"compiler/ast:Chain" = type { { i64, ptr }, { i64, ptr } }
%"compiler/ast:Compr" = type { ptr, ptr, i32, i32, ptr, ptr, i1, i64 }
%"compiler/check:EmbedAsk" = type { i64, i64, i32 }
define dso_local i1 @compiler_2fcheck_2ebadSeparator(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l12 = alloca i64
  %l15 = alloca i64
  %l33 = alloca { i64, ptr }
  %l39 = alloca i1
  %l46 = alloca { i64, ptr }
  %l50 = alloca i1
  %l52 = alloca i1
  %l53 = alloca { i64, ptr }
  %l57 = alloca i1
  %l60 = alloca { i64, ptr }
  %l64 = alloca i1
  %l66 = alloca i1
  %l67 = alloca { i64, ptr }
  %l71 = alloca i1
  %l76 = alloca i1
  %l77 = alloca { i64, ptr }
  %l82 = alloca i1
  %l83 = alloca { i64, ptr }
  %l88 = alloca i1
  %l91 = alloca i1
  %l92 = alloca { i64, ptr }
  %l97 = alloca i1
  %l98 = alloca { i64, ptr }
  %rv = alloca i1
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l1, !tbaa !24
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  store i64 %t3, ptr %l2, !tbaa !24
  store i64 1, ptr %l3, !tbaa !24
  %t5 = load i64, ptr %l2, !tbaa !24
  %t6 = load i64, ptr %l1, !tbaa !24
  %t9 = icmp sgt i64 %t5, %t6
  br i1 %t9, label %bb1, label %bb2
bb1:
  %t11 = load i64, ptr %l3, !tbaa !24
  %t13 = icmp sgt i64 %t11, 0
  br i1 %t13, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l12, !tbaa !24
  br label %bb6
bb3:
  %t15 = load i64, ptr %l2, !tbaa !24
  %t16 = load i64, ptr %l1, !tbaa !24
  %t19 = sub i64 %t15, %t16
  %t20 = load i64, ptr %l3, !tbaa !24
  %t23 = add i64 %t19, %t20
  %t25 = sub i64 %t23, 1
  %t26 = load i64, ptr %l3, !tbaa !24
  %t29 = sdiv i64 %t25, %t26
  store i64 %t29, ptr %l15, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l15, !tbaa !24
  br label %bb5
bb5:
  %t31 = load i64, ptr %l15, !tbaa !24
  store i64 %t31, ptr %l12, !tbaa !24
  br label %bb6
bb6:
  %t32 = load i64, ptr %l12, !tbaa !24
  store i64 %t32, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  br label %bb7
bb7:
  %t33 = load i64, ptr %l5, !tbaa !24
  %t34 = load i64, ptr %l4, !tbaa !24
  %t37 = icmp slt i64 %t33, %t34
  %t39 = xor i1 %t37, true
  br i1 %t39, label %bb8, label %bb9
bb8:
  br label %bb55
bb9:
  br label %bb10
bb10:
  %t41 = load i64, ptr %l1, !tbaa !24
  %t42 = load i64, ptr %l5, !tbaa !24
  %t43 = load i64, ptr %l3, !tbaa !24
  %t46 = mul i64 %t42, %t43
  %t49 = add i64 %t41, %t46
  store i64 %t49, ptr %l6, !tbaa !24
  %t51 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t51, ptr %l33, !tbaa !27
  %t52 = load i64, ptr %l6, !tbaa !24
  %t54 = getelementptr { i64, ptr }, ptr %l33, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !27
  %t56 = getelementptr i8, ptr %t55, i64 %t52
  %t57 = load i8, ptr %t56, !tbaa !32
  %t59 = icmp ne i8 %t57, 95
  br i1 %t59, label %bb11, label %bb12
bb11:
  br label %bb54
bb12:
  br label %bb13
bb13:
  %t61 = load i64, ptr %l6, !tbaa !24
  %t63 = icmp eq i64 %t61, 0
  br i1 %t63, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l39, !tbaa !21
  br label %bb16
bb15:
  %t65 = load i64, ptr %l6, !tbaa !24
  %t67 = add i64 %t65, 1
  %t68 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t70 = extractvalue { i64, ptr } %t68, 0
  %t73 = icmp sge i64 %t67, %t70
  store i1 %t73, ptr %l39, !tbaa !21
  br label %bb16
bb16:
  %t75 = load i1, ptr %l39, !tbaa !21
  br i1 %t75, label %bb17, label %bb18
bb17:
  store i1 true, ptr %rv
  br label %ret
bb18:
  br label %bb19
bb19:
  %t77 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t77, ptr %l46, !tbaa !27
  %t78 = load i64, ptr %l6, !tbaa !24
  %t80 = sub i64 %t78, 1
  %t82 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t83 = load ptr, ptr %t82, !tbaa !27
  %t84 = getelementptr i8, ptr %t83, i64 %t80
  %t85 = load i8, ptr %t84, !tbaa !32
  %t87 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t85)
  store i1 %t87, ptr %l50
  br label %bb20
bb20:
  %t88 = load i1, ptr %l50, !tbaa !21
  %t89 = xor i1 %t88, true
  br i1 %t89, label %bb21, label %bb22
bb21:
  %t91 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t91, ptr %l53, !tbaa !27
  %t92 = load i64, ptr %l6, !tbaa !24
  %t94 = sub i64 %t92, 1
  %t96 = getelementptr { i64, ptr }, ptr %l53, i32 0, i32 1
  %t97 = load ptr, ptr %t96, !tbaa !27
  %t98 = getelementptr i8, ptr %t97, i64 %t94
  %t99 = load i8, ptr %t98, !tbaa !32
  %t101 = call i1 @compiler_2fcheck_2eisHexDigit(i8 %t99)
  store i1 %t101, ptr %l57
  br label %bb23
bb22:
  store i1 false, ptr %l52, !tbaa !21
  br label %bb24
bb23:
  %t102 = load i1, ptr %l57, !tbaa !21
  %t103 = xor i1 %t102, true
  store i1 %t103, ptr %l52, !tbaa !21
  br label %bb24
bb24:
  %t105 = load i1, ptr %l52, !tbaa !21
  br i1 %t105, label %bb25, label %bb26
bb25:
  store i1 true, ptr %rv
  br label %ret
bb26:
  br label %bb27
bb27:
  %t107 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t107, ptr %l60, !tbaa !27
  %t108 = load i64, ptr %l6, !tbaa !24
  %t110 = add i64 %t108, 1
  %t112 = getelementptr { i64, ptr }, ptr %l60, i32 0, i32 1
  %t113 = load ptr, ptr %t112, !tbaa !27
  %t114 = getelementptr i8, ptr %t113, i64 %t110
  %t115 = load i8, ptr %t114, !tbaa !32
  %t117 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t115)
  store i1 %t117, ptr %l64
  br label %bb28
bb28:
  %t118 = load i1, ptr %l64, !tbaa !21
  %t119 = xor i1 %t118, true
  br i1 %t119, label %bb29, label %bb30
bb29:
  %t121 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t121, ptr %l67, !tbaa !27
  %t122 = load i64, ptr %l6, !tbaa !24
  %t124 = add i64 %t122, 1
  %t126 = getelementptr { i64, ptr }, ptr %l67, i32 0, i32 1
  %t127 = load ptr, ptr %t126, !tbaa !27
  %t128 = getelementptr i8, ptr %t127, i64 %t124
  %t129 = load i8, ptr %t128, !tbaa !32
  %t131 = call i1 @compiler_2fcheck_2eisHexDigit(i8 %t129)
  store i1 %t131, ptr %l71
  br label %bb31
bb30:
  store i1 false, ptr %l66, !tbaa !21
  br label %bb32
bb31:
  %t132 = load i1, ptr %l71, !tbaa !21
  %t133 = xor i1 %t132, true
  store i1 %t133, ptr %l66, !tbaa !21
  br label %bb32
bb32:
  %t135 = load i1, ptr %l66, !tbaa !21
  br i1 %t135, label %bb33, label %bb34
bb33:
  store i1 true, ptr %rv
  br label %ret
bb34:
  br label %bb35
bb35:
  %t137 = load i64, ptr %l6, !tbaa !24
  %t139 = icmp sge i64 %t137, 2
  br i1 %t139, label %bb36, label %bb37
bb36:
  %t141 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t141, ptr %l77, !tbaa !27
  %t142 = load i64, ptr %l6, !tbaa !24
  %t144 = sub i64 %t142, 1
  %t146 = getelementptr { i64, ptr }, ptr %l77, i32 0, i32 1
  %t147 = load ptr, ptr %t146, !tbaa !27
  %t148 = getelementptr i8, ptr %t147, i64 %t144
  %t149 = load i8, ptr %t148, !tbaa !32
  %t151 = icmp eq i8 %t149, 120
  store i1 %t151, ptr %l76, !tbaa !21
  br label %bb38
bb37:
  store i1 false, ptr %l76, !tbaa !21
  br label %bb38
bb38:
  %t153 = load i1, ptr %l76, !tbaa !21
  br i1 %t153, label %bb39, label %bb40
bb39:
  %t154 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t154, ptr %l83, !tbaa !27
  %t155 = load i64, ptr %l6, !tbaa !24
  %t157 = sub i64 %t155, 2
  %t159 = getelementptr { i64, ptr }, ptr %l83, i32 0, i32 1
  %t160 = load ptr, ptr %t159, !tbaa !27
  %t161 = getelementptr i8, ptr %t160, i64 %t157
  %t162 = load i8, ptr %t161, !tbaa !32
  %t164 = icmp eq i8 %t162, 48
  store i1 %t164, ptr %l82, !tbaa !21
  br label %bb41
bb40:
  store i1 false, ptr %l82, !tbaa !21
  br label %bb41
bb41:
  %t166 = load i1, ptr %l82, !tbaa !21
  br i1 %t166, label %bb42, label %bb43
bb42:
  store i1 true, ptr %l88, !tbaa !21
  br label %bb50
bb43:
  %t167 = load i64, ptr %l6, !tbaa !24
  %t169 = icmp sge i64 %t167, 2
  br i1 %t169, label %bb44, label %bb45
bb44:
  %t171 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t171, ptr %l92, !tbaa !27
  %t172 = load i64, ptr %l6, !tbaa !24
  %t174 = sub i64 %t172, 1
  %t176 = getelementptr { i64, ptr }, ptr %l92, i32 0, i32 1
  %t177 = load ptr, ptr %t176, !tbaa !27
  %t178 = getelementptr i8, ptr %t177, i64 %t174
  %t179 = load i8, ptr %t178, !tbaa !32
  %t181 = icmp eq i8 %t179, 98
  store i1 %t181, ptr %l91, !tbaa !21
  br label %bb46
bb45:
  store i1 false, ptr %l91, !tbaa !21
  br label %bb46
bb46:
  %t183 = load i1, ptr %l91, !tbaa !21
  br i1 %t183, label %bb47, label %bb48
bb47:
  %t184 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t184, ptr %l98, !tbaa !27
  %t185 = load i64, ptr %l6, !tbaa !24
  %t187 = sub i64 %t185, 2
  %t189 = getelementptr { i64, ptr }, ptr %l98, i32 0, i32 1
  %t190 = load ptr, ptr %t189, !tbaa !27
  %t191 = getelementptr i8, ptr %t190, i64 %t187
  %t192 = load i8, ptr %t191, !tbaa !32
  %t194 = icmp eq i8 %t192, 48
  store i1 %t194, ptr %l97, !tbaa !21
  br label %bb49
bb48:
  store i1 false, ptr %l97, !tbaa !21
  br label %bb49
bb49:
  %t196 = load i1, ptr %l97, !tbaa !21
  store i1 %t196, ptr %l88, !tbaa !21
  br label %bb50
bb50:
  %t197 = load i1, ptr %l88, !tbaa !21
  br i1 %t197, label %bb51, label %bb52
bb51:
  store i1 true, ptr %rv
  br label %ret
bb52:
  br label %bb53
bb53:
  br label %bb54
bb54:
  %t199 = load i64, ptr %l5, !tbaa !24
  %t201 = add i64 %t199, 1
  store i64 %t201, ptr %l5, !tbaa !24
  br label %bb7
bb55:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eCheckProgram(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i1
  %l9 = alloca ptr
  %l10 = alloca i64
  %l11 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l12 = alloca i1
  %l13 = alloca i1
  %l18 = alloca i64
  %l22 = alloca i64
  %l25 = alloca i64
  %l46 = alloca i32
  %l52 = alloca ptr
  %l57 = alloca i64
  %l59 = alloca ptr
  %l66 = alloca i64
  %l75 = alloca i64
  %l77 = alloca i64
  %l82 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l85 = alloca ptr
  %l86 = alloca i32
  %l90 = alloca i32
  %l91 = alloca i32
  %l92 = alloca { i64, ptr }
  %l99 = alloca i1
  %l101 = alloca i1
  %l103 = alloca i1
  %l105 = alloca i1
  %l111 = alloca i1
  %l114 = alloca i1
  %l131 = alloca ptr
  %l133 = alloca i1
  %l134 = alloca { i64, ptr }
  %l135 = alloca { i64, ptr }
  %l136 = alloca i32
  %l139 = alloca i1
  %l147 = alloca ptr
  %l148 = alloca i64
  %l151 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l153 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l155 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %s7 = alloca %olang.scope
  %s10 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAllFns(ptr %v0, ptr %t4)
  br label %bb1
bb1:
  store i64 0, ptr %l1, !tbaa !24
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/check:Checker", ptr %t6, i32 0, i32 1
  %t9 = load ptr, ptr %t8, !tbaa !29
  %t11 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnCount(ptr %v0, ptr %t9)
  store i64 %t11, ptr %l18
  br label %bb2
bb2:
  %t12 = load i64, ptr %l18, !tbaa !24
  store i64 %t12, ptr %l2, !tbaa !24
  store i64 1, ptr %l3, !tbaa !24
  %t13 = load i64, ptr %l2, !tbaa !24
  %t14 = load i64, ptr %l1, !tbaa !24
  %t17 = icmp sgt i64 %t13, %t14
  br i1 %t17, label %bb3, label %bb4
bb3:
  %t19 = load i64, ptr %l3, !tbaa !24
  %t21 = icmp sgt i64 %t19, 0
  br i1 %t21, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l22, !tbaa !24
  br label %bb8
bb5:
  %t23 = load i64, ptr %l2, !tbaa !24
  %t24 = load i64, ptr %l1, !tbaa !24
  %t27 = sub i64 %t23, %t24
  %t28 = load i64, ptr %l3, !tbaa !24
  %t31 = add i64 %t27, %t28
  %t33 = sub i64 %t31, 1
  %t34 = load i64, ptr %l3, !tbaa !24
  %t37 = sdiv i64 %t33, %t34
  store i64 %t37, ptr %l25, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l25, !tbaa !24
  br label %bb7
bb7:
  %t39 = load i64, ptr %l25, !tbaa !24
  store i64 %t39, ptr %l22, !tbaa !24
  br label %bb8
bb8:
  %t40 = load i64, ptr %l22, !tbaa !24
  store i64 %t40, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  br label %bb9
bb9:
  %t41 = load i64, ptr %l5, !tbaa !24
  %t42 = load i64, ptr %l4, !tbaa !24
  %t45 = icmp slt i64 %t41, %t42
  %t47 = xor i1 %t45, true
  br i1 %t47, label %bb10, label %bb11
bb10:
  br label %bb15
bb11:
  br label %bb12
bb12:
  %t49 = load i64, ptr %l1, !tbaa !24
  %t50 = load i64, ptr %l5, !tbaa !24
  %t51 = load i64, ptr %l3, !tbaa !24
  %t54 = mul i64 %t50, %t51
  %t57 = add i64 %t49, %t54
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/check:Checker", ptr %t59, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !29
  %t66 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %t62, i64 %t57)
  store i32 %t66, ptr %l46
  br label %bb13
bb13:
  br label %bb14
bb14:
  %t67 = load i64, ptr %l5, !tbaa !24
  %t69 = add i64 %t67, 1
  store i64 %t69, ptr %l5, !tbaa !24
  br label %bb9
bb15:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"compiler/check:Checker", ptr %t71, i32 0, i32 104
  %t74 = load i64, ptr %t73, !tbaa !24
  %t76 = icmp slt i64 %t74, 0
  br i1 %t76, label %bb16, label %bb17
bb16:
  %t78 = load ptr, ptr %l0, !tbaa !29
  store ptr %t78, ptr %l52, !tbaa !29
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"compiler/check:Checker", ptr %t79, i32 0, i32 1
  %t82 = load ptr, ptr %t81, !tbaa !29
  %t84 = getelementptr %"compiler/generic:Program", ptr %t82, i32 0, i32 0
  %t85 = load ptr, ptr %t84, !tbaa !29
  %t87 = getelementptr %"compiler/load:Loader", ptr %t85, i32 0, i32 4
  %t88 = load ptr, ptr %t87, !tbaa !29
  %t90 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eRecordCount(ptr %v0, ptr %t88)
  store i64 %t90, ptr %l57
  br label %bb18
bb17:
  br label %bb19
bb18:
  %t91 = load i64, ptr %l57, !tbaa !24
  %t92 = load ptr, ptr %l52, !tbaa !29
  %t93 = getelementptr %"compiler/check:Checker", ptr %t92, i32 0, i32 104
  store i64 %t91, ptr %t93, !tbaa !24
  br label %bb19
bb19:
  %t94 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenScan(ptr %v0, ptr %t94)
  br label %bb20
bb20:
  br label %bb21
bb21:
  %t96 = load ptr, ptr %l0, !tbaa !29
  store ptr %t96, ptr %l59, !tbaa !29
  %t97 = load ptr, ptr %l59, !tbaa !29
  %t98 = getelementptr %"compiler/check:Checker", ptr %t97, i32 0, i32 72
  %t99 = load i64, ptr %t98, !tbaa !24
  %t101 = add i64 %t99, 1
  %t103 = load ptr, ptr %l59, !tbaa !29
  %t104 = getelementptr %"compiler/check:Checker", ptr %t103, i32 0, i32 72
  store i64 %t101, ptr %t104, !tbaa !24
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t107 = getelementptr %"compiler/check:Checker", ptr %t105, i32 0, i32 1
  %t108 = load ptr, ptr %t107, !tbaa !29
  %t110 = getelementptr %"compiler/generic:Program", ptr %t108, i32 0, i32 0
  %t111 = load ptr, ptr %t110, !tbaa !29
  %t113 = getelementptr %"compiler/load:Loader", ptr %t111, i32 0, i32 4
  %t114 = load ptr, ptr %t113, !tbaa !29
  %t116 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eCount(ptr %v0, ptr %t114)
  store i64 %t116, ptr %l66
  br label %bb22
bb22:
  %t117 = load i64, ptr %l66, !tbaa !24
  store i64 %t117, ptr %l7, !tbaa !24
  %t118 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eattempt(ptr %v0, ptr %t118)
  br label %bb23
bb23:
  %t120 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esettleUnset(ptr %v0, ptr %t120)
  br label %bb24
bb24:
  %t122 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esettleLandings(ptr %v0, ptr %t122)
  br label %bb25
bb25:
  %t124 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esettleHeldWalks(ptr %v0, ptr %t124)
  br label %bb26
bb26:
  %t126 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esettleIdle(ptr %v0, ptr %t126)
  br label %bb27
bb27:
  %t128 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esettleUnread(ptr %v0, ptr %t128)
  br label %bb28
bb28:
  store i1 false, ptr %l8, !tbaa !21
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t132 = getelementptr %"compiler/check:Checker", ptr %t130, i32 0, i32 56
  store ptr %t132, ptr %l9, !tbaa !29
  store i64 0, ptr %l10, !tbaa !24
  br label %bb29
bb29:
  store %olang.scope zeroinitializer, ptr %s7
  %t134 = load i64, ptr %l10, !tbaa !24
  store i64 %t134, ptr %l75, !tbaa !24
  %t135 = load ptr, ptr %l9, !tbaa !29
  %t137 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_Hda4ef06466535e66801340e999dad217(ptr %v0, ptr %t135)
  store i64 %t137, ptr %l77
  br label %bb30
bb30:
  %t138 = load i64, ptr %l75, !tbaa !24
  %t139 = load i64, ptr %l77, !tbaa !24
  %t140 = icmp slt i64 %t138, %t139
  %t142 = xor i1 %t140, true
  br i1 %t142, label %bb31, label %bb32
bb31:
  call void @__olang_scope_close(ptr %s7)
  br label %bb44
bb32:
  br label %bb33
bb33:
  %t144 = load ptr, ptr %l9, !tbaa !29
  %t145 = load i64, ptr %l10, !tbaa !24
  %t148 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_H87a29777ccf22aa2985fa9d3c61f9cd3(ptr %v0, ptr %t144, i64 %t145)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t148, ptr %l82
  br label %bb34
bb34:
  %t149 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l82
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t149, ptr %l11
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t152 = getelementptr %"compiler/check:Checker", ptr %t150, i32 0, i32 1
  %t153 = load ptr, ptr %t152, !tbaa !29
  %t155 = getelementptr %"compiler/generic:Program", ptr %t153, i32 0, i32 2
  store ptr %t155, ptr %l85, !tbaa !29
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t158 = getelementptr %"compiler/check:Checker", ptr %t156, i32 0, i32 55
  %t159 = getelementptr %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l11, i32 0, i32 0
  %t160 = load i64, ptr %t159, !tbaa !24
  %t163 = call { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftypes_3aListId_3e__H9cb5d99387f926677a92c13412f9a8b2(ptr %v0, ptr %t158, i64 %t160)
  %t164 = extractvalue { i32, i32 } %t163, 1
  %t165 = extractvalue { i32, i32 } %t163, 0
  store i32 %t165, ptr %l91
  %t166 = icmp ne i32 %t165, 0
  br i1 %t166, label %bb36, label %ok.167, !prof !99
ok.167:
  store i32 %t164, ptr %l90
  br label %bb35
bb35:
  %t168 = load i32, ptr %l90, !tbaa !23
  store i32 %t168, ptr %l86, !tbaa !23
  br label %bb38
bb36:
  br label %bb37
bb37:
  store i32 0, ptr %l86, !tbaa !23
  br label %bb38
bb38:
  %t169 = load ptr, ptr %l85, !tbaa !29
  %t170 = load i32, ptr %l86, !tbaa !23
  %t171 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s7, ptr %t169, i32 %t170)
  store { i64, ptr } %t171, ptr %l92
  br label %bb39
bb39:
  %t172 = load { i64, ptr }, ptr %l92, !tbaa !27
  %t173 = extractvalue { i64, ptr } %t172, 0
  %t174 = getelementptr %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l11, i32 0, i32 1
  %t175 = load i64, ptr %t174, !tbaa !24
  %t178 = icmp ne i64 %t173, %t175
  br i1 %t178, label %bb40, label %bb41
bb40:
  store i1 true, ptr %l8, !tbaa !21
  br label %bb42
bb41:
  br label %bb42
bb42:
  call void @__olang_scope_close(ptr %s7)
  br label %bb43
bb43:
  %t180 = load i64, ptr %l10, !tbaa !24
  %t182 = add i64 %t180, 1
  store i64 %t182, ptr %l10, !tbaa !24
  br label %bb29
bb44:
  %t184 = load ptr, ptr %l0, !tbaa !29
  %t186 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esettleFacts(ptr %v0, ptr %t184)
  store i1 %t186, ptr %l99
  br label %bb45
bb45:
  %t187 = load i1, ptr %l99, !tbaa !21
  store i1 %t187, ptr %l12, !tbaa !21
  %t188 = load ptr, ptr %l0, !tbaa !29
  %t190 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esettleInPlace(ptr %v0, ptr %t188)
  store i1 %t190, ptr %l101
  br label %bb46
bb46:
  %t191 = load i1, ptr %l101, !tbaa !21
  store i1 %t191, ptr %l13, !tbaa !21
  %t192 = load i1, ptr %l12, !tbaa !21
  br i1 %t192, label %bb47, label %bb48
bb47:
  store i1 true, ptr %l103, !tbaa !21
  br label %bb49
bb48:
  %t194 = load i1, ptr %l13, !tbaa !21
  store i1 %t194, ptr %l103, !tbaa !21
  br label %bb49
bb49:
  %t196 = load i1, ptr %l103, !tbaa !21
  br i1 %t196, label %bb50, label %bb51
bb50:
  store i1 true, ptr %l105, !tbaa !21
  br label %bb52
bb51:
  %t197 = load ptr, ptr %l0, !tbaa !29
  %t199 = getelementptr %"compiler/check:Checker", ptr %t197, i32 0, i32 64
  %t200 = load i1, ptr %t199, !tbaa !21
  store i1 %t200, ptr %l105, !tbaa !21
  br label %bb52
bb52:
  %t202 = load i1, ptr %l105, !tbaa !21
  store i1 %t202, ptr %l12, !tbaa !21
  %t203 = load ptr, ptr %l0, !tbaa !29
  %t205 = getelementptr %"compiler/check:Checker", ptr %t203, i32 0, i32 64
  store i1 false, ptr %t205, !tbaa !21
  %t206 = load i1, ptr %l8, !tbaa !21
  %t208 = xor i1 %t206, true
  br i1 %t208, label %bb53, label %bb54
bb53:
  %t210 = load i1, ptr %l12, !tbaa !21
  %t212 = xor i1 %t210, true
  store i1 %t212, ptr %l111, !tbaa !21
  br label %bb55
bb54:
  store i1 false, ptr %l111, !tbaa !21
  br label %bb55
bb55:
  %t214 = load i1, ptr %l111, !tbaa !21
  br i1 %t214, label %bb56, label %bb57
bb56:
  store i1 true, ptr %l114, !tbaa !21
  br label %bb58
bb57:
  %t215 = load ptr, ptr %l0, !tbaa !29
  %t217 = getelementptr %"compiler/check:Checker", ptr %t215, i32 0, i32 72
  %t218 = load i64, ptr %t217, !tbaa !24
  %t220 = icmp sge i64 %t218, 20
  store i1 %t220, ptr %l114, !tbaa !21
  br label %bb58
bb58:
  %t222 = load i1, ptr %l114, !tbaa !21
  br i1 %t222, label %bb59, label %bb60
bb59:
  store %olang.scope zeroinitializer, ptr %s10
  %t223 = load i1, ptr %l12, !tbaa !21
  br i1 %t223, label %bb61, label %bb62
bb60:
  br label %bb88
bb61:
  %t225 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efactsUndecided(ptr %v0, ptr %t225)
  br label %bb63
bb62:
  br label %bb64
bb63:
  br label %bb64
bb64:
  %t227 = load i1, ptr %l13, !tbaa !21
  br i1 %t227, label %bb65, label %bb66
bb65:
  %t229 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einPlaceUndecided(ptr %v0, ptr %t229)
  br label %bb67
bb66:
  br label %bb68
bb67:
  br label %bb68
bb68:
  %t231 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esettleFixed(ptr %v0, ptr %t231)
  br label %bb69
bb69:
  %t233 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esettleDropOrder(ptr %v0, ptr %t233)
  br label %bb70
bb70:
  %t235 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecopyEffects(ptr %v0, ptr %t235)
  br label %bb71
bb71:
  %t237 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ejudgeEffects(ptr %v0, ptr %t237)
  br label %bb72
bb72:
  %t239 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eorderGlobals(ptr %v0, ptr %t239)
  br label %bb73
bb73:
  %t241 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esettleAllViews(ptr %v0, ptr %t241)
  br label %bb74
bb74:
  %t243 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esettleWeak(ptr %v0, ptr %t243)
  br label %bb75
bb75:
  %t245 = load ptr, ptr %l0, !tbaa !29
  %t247 = getelementptr %"compiler/check:Checker", ptr %t245, i32 0, i32 1
  %t248 = load ptr, ptr %t247, !tbaa !29
  %t250 = getelementptr %"compiler/generic:Program", ptr %t248, i32 0, i32 0
  %t251 = load ptr, ptr %t250, !tbaa !29
  store ptr %t251, ptr %l131, !tbaa !29
  %t252 = load ptr, ptr %l0, !tbaa !29
  %t254 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emutStorage(ptr %v0, ptr %t252)
  store i1 %t254, ptr %l133
  br label %bb76
bb76:
  %t255 = load i1, ptr %l133, !tbaa !21
  %t256 = load ptr, ptr %l131, !tbaa !29
  %t257 = getelementptr %"compiler/load:Loader", ptr %t256, i32 0, i32 8
  store i1 %t255, ptr %t257, !tbaa !21
  %t258 = call { i32, { i64, ptr } } @std_2fos_2eEnv(ptr %s10, ptr %s10, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d0, i32 0, i32 1) })
  %t259 = extractvalue { i32, { i64, ptr } } %t258, 1
  %t260 = extractvalue { i32, { i64, ptr } } %t258, 0
  store i32 %t260, ptr %l136
  %t261 = icmp ne i32 %t260, 0
  br i1 %t261, label %bb78, label %ok.262, !prof !99
ok.262:
  store { i64, ptr } %t259, ptr %l135
  br label %bb77
bb77:
  %t263 = load { i64, ptr }, ptr %l135, !tbaa !27
  store { i64, ptr } %t263, ptr %l134, !tbaa !27
  br label %bb82
bb78:
  %t264 = load i32, ptr %l136, !tbaa !23
  %t265 = ashr i32 %t264, 16
  %t267 = icmp eq i32 %t265, 1
  br i1 %t267, label %bb79, label %bb80
bb79:
  call void @__olang_errpay_pop()
  br label %bb80
bb80:
  br label %bb81
bb81:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d1, i32 0, i32 1) }, ptr %l134, !tbaa !27
  br label %bb82
bb82:
  %t269 = load { i64, ptr }, ptr %l134, !tbaa !27
  %t270 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s10, ptr %s10, { i64, ptr } %t269, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) })
  store i1 %t270, ptr %l139
  br label %bb83
bb83:
  %t271 = load i1, ptr %l139, !tbaa !21
  %t272 = xor i1 %t271, true
  br i1 %t272, label %bb84, label %bb85
bb84:
  %t274 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehandleReport(ptr %v0, ptr %t274)
  br label %bb86
bb85:
  br label %bb87
bb86:
  br label %bb87
bb87:
  call void @__olang_scope_close(ptr %s10)
  br label %ret
bb88:
  %t276 = load ptr, ptr %l0, !tbaa !29
  %t278 = getelementptr %"compiler/check:Checker", ptr %t276, i32 0, i32 1
  %t279 = load ptr, ptr %t278, !tbaa !29
  %t281 = getelementptr %"compiler/generic:Program", ptr %t279, i32 0, i32 0
  %t282 = load ptr, ptr %t281, !tbaa !29
  %t284 = getelementptr %"compiler/load:Loader", ptr %t282, i32 0, i32 4
  %t285 = load ptr, ptr %t284, !tbaa !29
  %t286 = load i64, ptr %l7, !tbaa !24
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eForget(ptr %v0, ptr %t285, i64 %t286)
  br label %bb89
bb89:
  %t289 = load ptr, ptr %l0, !tbaa !29
  store ptr %t289, ptr %l147, !tbaa !29
  %t290 = ptrtoint ptr %v0 to i64
  store i64 %t290, ptr %l148, !tbaa !24
  %t291 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e58
  br i1 %t291, label %bb90, label %bb91
bb90:
  %t293 = call ptr @__olang_region_make(ptr %v0)
  %t294 = ptrtoint ptr %t293 to i64
  store i64 %t294, ptr %l148, !tbaa !24
  br label %bb91
bb91:
  %t295 = load ptr, ptr %l0, !tbaa !29
  %t297 = getelementptr %"compiler/check:Checker", ptr %t295, i32 0, i32 59
  %t298 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t297
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t298, ptr %l151
  %t299 = load i64, ptr %l148
  %t300 = inttoptr i64 %t299 to ptr
  %t302 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_H80f211cc28309eb3dfbe2d2a353877b8(ptr %t300, ptr %l151)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t302, ptr %l153
  br label %bb92
bb92:
  %t303 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e58
  br i1 %t303, label %bb93, label %bb94
bb93:
  %t305 = load i64, ptr %l148
  %t306 = inttoptr i64 %t305 to ptr
  %t307 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l153, i32 0, i32 2
  %t308 = load { i64, ptr }, ptr %t307
  %t309 = extractvalue { i64, ptr } %t308, 1
  %t310 = call ptr @__olang_region_or(ptr %t309, ptr null)
  %t311 = icmp ne ptr %t310, null
  %t312 = select i1 %t311, ptr %t310, ptr null
  %t313 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l153, i32 0, i32 1
  %t314 = load { i64, ptr }, ptr %t313
  %t315 = extractvalue { i64, ptr } %t314, 1
  %t316 = call ptr @__olang_region_or(ptr %t315, ptr null)
  %t317 = icmp ne ptr %t316, null
  %t318 = select i1 %t317, ptr %t316, ptr %t312
  %t319 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l153, i32 0, i32 0
  %t320 = load { i64, ptr }, ptr %t319
  %t321 = extractvalue { i64, ptr } %t320, 1
  %t322 = call ptr @__olang_region_or(ptr %t321, ptr null)
  %t323 = icmp ne ptr %t322, null
  %t324 = select i1 %t323, ptr %t322, ptr %t318
  %t325 = icmp eq ptr %t324, %t306
  call void @__olang_region_settle(ptr %t306, i1 %t325)
  br label %bb94
bb94:
  %t326 = load ptr, ptr %l147, !tbaa !29
  %t327 = getelementptr %"compiler/check:Checker", ptr %t326, i32 0, i32 58
  %t328 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t327
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t328, ptr %l155
  %t329 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l153
  %t330 = load ptr, ptr %l147, !tbaa !29
  %t331 = getelementptr %"compiler/check:Checker", ptr %t330, i32 0, i32 58
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t329, ptr %t331
  %t332 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e58
  br i1 %t332, label %bb95, label %bb96
bb95:
  %t334 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l155, i32 0, i32 2
  %t335 = load { i64, ptr }, ptr %t334
  %t336 = extractvalue { i64, ptr } %t335, 1
  %t337 = call ptr @__olang_region_or(ptr %t336, ptr null)
  %t338 = icmp ne ptr %t337, null
  %t339 = select i1 %t338, ptr %t337, ptr null
  %t340 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l155, i32 0, i32 1
  %t341 = load { i64, ptr }, ptr %t340
  %t342 = extractvalue { i64, ptr } %t341, 1
  %t343 = call ptr @__olang_region_or(ptr %t342, ptr null)
  %t344 = icmp ne ptr %t343, null
  %t345 = select i1 %t344, ptr %t343, ptr %t339
  %t346 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l155, i32 0, i32 0
  %t347 = load { i64, ptr }, ptr %t346
  %t348 = extractvalue { i64, ptr } %t347, 1
  %t349 = call ptr @__olang_region_or(ptr %t348, ptr null)
  %t350 = icmp ne ptr %t349, null
  %t351 = select i1 %t350, ptr %t349, ptr %t345
  call void @__olang_region_drop(ptr %t351)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" zeroinitializer, ptr %l155
  br label %bb96
bb96:
  %t352 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereset(ptr %v0, ptr %t352)
  br label %bb97
bb97:
  br label %bb98
bb98:
  br label %bb21
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eatTemp(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca i1
  %l22 = alloca ptr
  %l23 = alloca ptr
  %l24 = alloca i1
  %l33 = alloca i1
  %l34 = alloca ptr
  %l37 = alloca ptr
  %l41 = alloca i1
  %l44 = alloca i1
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call ptr @compiler_2fcheck_2epastAway(ptr %v1, ptr %v2, ptr %a1)
  store ptr %t3, ptr %l9
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l9, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t5 = load ptr, ptr %l2, !tbaa !29
  store ptr %t5, ptr %l11, !tbaa !29
  store i1 false, ptr %l12, !tbaa !21
  %t6 = load ptr, ptr %l11, !tbaa !29
  %t7 = icmp ne ptr %t6, null
  br i1 %t7, label %bb2, label %bb3
bb2:
  %t9 = load ptr, ptr %l11, !tbaa !29
  %t10 = load i64, ptr %t9, !range !{i64 0, i64 18}
  %t12 = icmp eq i64 %t10, 3
  store i1 %t12, ptr %l12, !tbaa !21
  br label %bb3
bb3:
  %t13 = load i1, ptr %l12, !tbaa !21
  br i1 %t13, label %bb4, label %bb5
bb4:
  %t14 = load ptr, ptr %l2, !tbaa !29
  %t16 = getelementptr { i64, [5 x i64] }, ptr %t14, i32 0, i32 1
  %t17 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t16, i32 0, i32 1
  %t18 = load i32, ptr %t17
  store i32 %t18, ptr %l3, !tbaa !23
  %t20 = load ptr, ptr %l2, !tbaa !29
  %t22 = getelementptr { i64, [5 x i64] }, ptr %t20, i32 0, i32 1
  %t23 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t22, i32 0, i32 2
  %t24 = load ptr, ptr %t23
  store ptr %t24, ptr %l4, !tbaa !29
  br label %bb6
bb5:
  br label %bb8
bb6:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t27 = load i32, ptr %l3, !tbaa !23
  %t28 = load ptr, ptr %l4, !tbaa !29
  %t32 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewritableTemp(ptr %v0, ptr %v2, ptr %v2, ptr %t26, i32 %t27, ptr %t28)
  store ptr %t32, ptr %l22
  br label %bb7
bb7:
  %t33 = load ptr, ptr %l22, !tbaa !29
  store ptr %t33, ptr %l10, !tbaa !29
  br label %bb24
bb8:
  %t34 = load ptr, ptr %l2, !tbaa !29
  store ptr %t34, ptr %l23, !tbaa !29
  store i1 false, ptr %l24, !tbaa !21
  %t35 = load ptr, ptr %l23, !tbaa !29
  %t36 = icmp ne ptr %t35, null
  br i1 %t36, label %bb9, label %bb10
bb9:
  %t38 = load ptr, ptr %l23, !tbaa !29
  %t39 = load i64, ptr %t38, !range !{i64 0, i64 18}
  %t41 = icmp eq i64 %t39, 5
  store i1 %t41, ptr %l24, !tbaa !21
  br label %bb10
bb10:
  %t42 = load i1, ptr %l24, !tbaa !21
  br i1 %t42, label %bb11, label %bb12
bb11:
  %t43 = load ptr, ptr %l2, !tbaa !29
  %t45 = getelementptr { i64, [5 x i64] }, ptr %t43, i32 0, i32 1
  %t46 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t45, i32 0, i32 1
  %t47 = load i32, ptr %t46
  store i32 %t47, ptr %l5, !tbaa !23
  %t49 = load ptr, ptr %l2, !tbaa !29
  %t51 = getelementptr { i64, [5 x i64] }, ptr %t49, i32 0, i32 1
  %t52 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t51, i32 0, i32 2
  %t53 = load ptr, ptr %t52
  store ptr %t53, ptr %l6, !tbaa !29
  br label %bb13
bb12:
  br label %bb19
bb13:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t56 = load i32, ptr %l5, !tbaa !23
  %t59 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewritable(ptr %v0, ptr %t55, i32 %t56)
  store i1 %t59, ptr %l33
  br label %bb14
bb14:
  %t60 = load i1, ptr %l33, !tbaa !21
  br i1 %t60, label %bb15, label %bb16
bb15:
  %t61 = load ptr, ptr %l6, !tbaa !29
  %t63 = getelementptr %"compiler/typed:Promote", ptr %t61, i32 0, i32 0
  %t64 = load ptr, ptr %t63, !tbaa !29
  %t66 = call ptr @compiler_2fcheck_2epastAway(ptr %v2, ptr %v2, ptr %t64)
  store ptr %t66, ptr %l37
  br label %bb17
bb16:
  store ptr null, ptr %l34, !tbaa !29
  br label %bb18
bb17:
  %t67 = load ptr, ptr %l37, !tbaa !29
  store ptr %t67, ptr %l34, !tbaa !29
  br label %bb18
bb18:
  %t69 = load ptr, ptr %l34, !tbaa !29
  store ptr %t69, ptr %l10, !tbaa !29
  br label %bb24
bb19:
  br i1 true, label %bb20, label %bb21
bb20:
  br label %bb22
bb21:
  br label %bb23
bb22:
  store ptr null, ptr %l10, !tbaa !29
  br label %bb24
bb23:
  call void @__olang_check_failed(ptr @olang_loc_1698deca837a7d96_de8e9bfeb7067cd2)
  unreachable
bb24:
  %t70 = load ptr, ptr %l10, !tbaa !29
  store ptr %t70, ptr %l7, !tbaa !29
  %t71 = load ptr, ptr %l7, !tbaa !29
  %t73 = icmp eq ptr %t71, null
  br i1 %t73, label %bb25, label %bb26
bb25:
  store i1 true, ptr %l41, !tbaa !21
  br label %bb28
bb26:
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t76 = load ptr, ptr %l7, !tbaa !29
  %t79 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eatCallee(ptr %v0, ptr %v2, ptr %t75, ptr %t76)
  store i1 %t79, ptr %l44
  br label %bb27
bb27:
  %t80 = load i1, ptr %l44, !tbaa !21
  %t81 = xor i1 %t80, true
  store i1 %t81, ptr %l41, !tbaa !21
  br label %bb28
bb28:
  %t83 = load i1, ptr %l41, !tbaa !21
  br i1 %t83, label %bb29, label %bb30
bb29:
  store ptr null, ptr %rv
  br label %ret
bb30:
  br label %bb31
bb31:
  %t85 = load ptr, ptr %l7, !tbaa !29
  store ptr %t85, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aStrBody(ptr %v0, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l6 = alloca %"compiler/generic:Binding"
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l14 = alloca i1
  %l17 = alloca i64
  %l21 = alloca i64
  %l24 = alloca i64
  %l26 = alloca ptr
  %l30 = alloca i64
  %l31 = alloca i64
  %l32 = alloca i32
  %l35 = alloca ptr
  %l38 = alloca ptr
  %l42 = alloca i32
  %l43 = alloca i32
  %l44 = alloca { i64, ptr }
  %l51 = alloca %"compiler/generic:Binding"
  %l53 = alloca { i64, ptr }
  %l67 = alloca { i64, ptr }
  %l76 = alloca i64
  %l78 = alloca ptr
  %l80 = alloca ptr
  %l81 = alloca i64
  %l86 = alloca i32
  %l87 = alloca i64
  %l88 = alloca i64
  %l89 = alloca i32
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
  store i1 %t8, ptr %l14
  br label %bb1
bb1:
  %t9 = load i1, ptr %l14, !tbaa !21
  br i1 %t9, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t11 = load i64, ptr %l1, !tbaa !24
  %t13 = call i64 @compiler_2fgeneric_2eFnOwner(i64 %t11)
  store i64 %t13, ptr %l17
  br label %bb5
bb5:
  %t14 = load i64, ptr %l17, !tbaa !24
  store i64 %t14, ptr %l3, !tbaa !24
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/check:Checker", ptr %t15, i32 0, i32 1
  %t18 = load ptr, ptr %t17, !tbaa !29
  %t19 = load i64, ptr %l3, !tbaa !24
  %t22 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %t18, i64 %t19)
  store i64 %t22, ptr %l21
  br label %bb6
bb6:
  %t23 = load i64, ptr %l21, !tbaa !24
  store i64 %t23, ptr %l4, !tbaa !24
  %t24 = load i64, ptr %l4, !tbaa !24
  %t26 = icmp eq i64 %t24, 0
  br i1 %t26, label %bb7, label %bb8
bb7:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/check:Checker", ptr %t28, i32 0, i32 20
  store ptr %t30, ptr %l26, !tbaa !29
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/check:Checker", ptr %t31, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !29
  %t35 = load i64, ptr %l1, !tbaa !24
  %t38 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnInstance(ptr %v0, ptr %t34, i64 %t35, i32 0)
  store i64 %t38, ptr %l30
  br label %bb9
bb8:
  br label %bb14
bb9:
  %t39 = load ptr, ptr %l26, !tbaa !29
  %t40 = load i64, ptr %l30, !tbaa !24
  %t41 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t39, i64 %t40)
  %t42 = extractvalue { i32, i64 } %t41, 1
  %t43 = extractvalue { i32, i64 } %t41, 0
  store i32 %t43, ptr %l32
  %t44 = icmp ne i32 %t43, 0
  br i1 %t44, label %bb11, label %ok.45, !prof !99
ok.45:
  store i64 %t42, ptr %l31
  br label %bb10
bb10:
  %t46 = load i64, ptr %l31, !tbaa !24
  store i64 %t46, ptr %l24, !tbaa !24
  br label %bb13
bb11:
  br label %bb12
bb12:
  store i64 -1, ptr %l24, !tbaa !24
  br label %bb13
bb13:
  call void @__olang_scope_close(ptr %s0)
  %t47 = load i64, ptr %l24, !tbaa !24
  store i64 %t47, ptr %rv
  br label %ret
bb14:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/check:Checker", ptr %t48, i32 0, i32 1
  %t51 = load ptr, ptr %t50, !tbaa !29
  %t53 = getelementptr %"compiler/generic:Program", ptr %t51, i32 0, i32 2
  store ptr %t53, ptr %l35, !tbaa !29
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/check:Checker", ptr %t54, i32 0, i32 1
  %t57 = load ptr, ptr %t56, !tbaa !29
  %t59 = getelementptr %"compiler/generic:Program", ptr %t57, i32 0, i32 2
  store ptr %t59, ptr %l38, !tbaa !29
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/check:Checker", ptr %t60, i32 0, i32 1
  %t63 = load ptr, ptr %t62, !tbaa !29
  %t64 = load i64, ptr %l1, !tbaa !24
  %t67 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %t63, i64 %t64)
  store i32 %t67, ptr %l42
  br label %bb15
bb15:
  %t68 = load ptr, ptr %l38, !tbaa !29
  %t69 = load i32, ptr %l42, !tbaa !23
  %t70 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t68, i32 %t69)
  store i32 %t70, ptr %l43
  br label %bb16
bb16:
  %t71 = load ptr, ptr %l35, !tbaa !29
  %t72 = load i32, ptr %l43, !tbaa !23
  %t73 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t71, i32 %t72)
  store { i64, ptr } %t73, ptr %l44
  br label %bb17
bb17:
  %t74 = load { i64, ptr }, ptr %l44, !tbaa !27
  store { i64, ptr } %t74, ptr %l5, !tbaa !27
  %t75 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t77 = extractvalue { i64, ptr } %t75, 0
  %t79 = icmp eq i64 %t77, 0
  br i1 %t79, label %bb18, label %bb19
bb18:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  %t82 = load i64, ptr %l3, !tbaa !24
  %t83 = load i64, ptr %l4, !tbaa !24
  %t86 = call %"compiler/generic:Binding" @compiler_2fgeneric_3aBinding_2ector(ptr %s0, i64 %t82, i64 %t83)
  store %"compiler/generic:Binding" %t86, ptr %l51
  br label %bb21
bb21:
  %t87 = load %"compiler/generic:Binding", ptr %l51
  store %"compiler/generic:Binding" %t87, ptr %l6
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t89 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t89, ptr %l53, !tbaa !27
  %t90 = getelementptr { i64, ptr }, ptr %l53, i32 0, i32 1
  %t91 = load ptr, ptr %t90, !tbaa !27
  %t92 = getelementptr i32, ptr %t91, i64 0
  %t93 = load i32, ptr %t92, !tbaa !33
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunify(ptr %v0, ptr %s0, ptr %t88, i32 %t93, i32 %a2, ptr %l6, i1 false, i1 true)
  br label %bb22
bb22:
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t101 = getelementptr %"compiler/check:Checker", ptr %t99, i32 0, i32 1
  %t102 = load ptr, ptr %t101, !tbaa !29
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInferThroughBounds(ptr %v0, ptr %s0, ptr %t102, ptr %l6)
  br label %bb23
bb23:
  %t105 = getelementptr %"compiler/generic:Binding", ptr %l6, i32 0, i32 2
  %t106 = load { i64, ptr }, ptr %t105, !tbaa !27
  store { i64, ptr } %t106, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t108 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t110 = extractvalue { i64, ptr } %t108, 0
  store i64 %t110, ptr %l9, !tbaa !24
  br label %bb24
bb24:
  %t112 = load i64, ptr %l8, !tbaa !24
  %t113 = load i64, ptr %l9, !tbaa !24
  %t116 = icmp slt i64 %t112, %t113
  %t118 = xor i1 %t116, true
  br i1 %t118, label %bb25, label %bb26
bb25:
  br label %bb32
bb26:
  br label %bb27
bb27:
  %t120 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t120, ptr %l67, !tbaa !27
  %t121 = load i64, ptr %l8, !tbaa !24
  %t123 = getelementptr { i64, ptr }, ptr %l67, i32 0, i32 1
  %t124 = load ptr, ptr %t123, !tbaa !27
  %t125 = getelementptr i32, ptr %t124, i64 %t121
  %t126 = load i32, ptr %t125, !tbaa !33
  %t129 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t132 = icmp eq i32 %t126, %t129
  br i1 %t132, label %bb28, label %bb29
bb28:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb29:
  br label %bb30
bb30:
  br label %bb31
bb31:
  %t135 = load i64, ptr %l8, !tbaa !24
  %t137 = add i64 %t135, 1
  store i64 %t137, ptr %l8, !tbaa !24
  br label %bb24
bb32:
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t141 = getelementptr %"compiler/check:Checker", ptr %t139, i32 0, i32 20
  store ptr %t141, ptr %l78, !tbaa !29
  %t142 = load ptr, ptr %l0, !tbaa !29
  %t144 = getelementptr %"compiler/check:Checker", ptr %t142, i32 0, i32 1
  %t145 = load ptr, ptr %t144, !tbaa !29
  store ptr %t145, ptr %l80, !tbaa !29
  %t146 = load i64, ptr %l1, !tbaa !24
  store i64 %t146, ptr %l81, !tbaa !24
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t149 = getelementptr %"compiler/check:Checker", ptr %t147, i32 0, i32 1
  %t150 = load ptr, ptr %t149, !tbaa !29
  %t152 = getelementptr %"compiler/generic:Program", ptr %t150, i32 0, i32 2
  %t153 = getelementptr %"compiler/generic:Binding", ptr %l6, i32 0, i32 2
  %t154 = load { i64, ptr }, ptr %t153, !tbaa !27
  %t157 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s0, ptr %t152, { i64, ptr } %t154)
  store i32 %t157, ptr %l86
  br label %bb33
bb33:
  %t158 = load ptr, ptr %l80, !tbaa !29
  %t159 = load i64, ptr %l81, !tbaa !24
  %t160 = load i32, ptr %l86, !tbaa !23
  %t161 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnInstance(ptr %v0, ptr %t158, i64 %t159, i32 %t160)
  store i64 %t161, ptr %l87
  br label %bb34
bb34:
  %t162 = load ptr, ptr %l78, !tbaa !29
  %t163 = load i64, ptr %l87, !tbaa !24
  %t164 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t162, i64 %t163)
  %t165 = extractvalue { i32, i64 } %t164, 1
  %t166 = extractvalue { i32, i64 } %t164, 0
  store i32 %t166, ptr %l89
  %t167 = icmp ne i32 %t166, 0
  br i1 %t167, label %bb36, label %ok.168, !prof !99
ok.168:
  store i64 %t165, ptr %l88
  br label %bb35
bb35:
  %t169 = load i64, ptr %l88, !tbaa !24
  store i64 %t169, ptr %l76, !tbaa !24
  br label %bb38
bb36:
  br label %bb37
bb37:
  store i64 -1, ptr %l76, !tbaa !24
  br label %bb38
bb38:
  call void @__olang_scope_close(ptr %s0)
  %t170 = load i64, ptr %l76, !tbaa !24
  store i64 %t170, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebecomeRefusal(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca i1
  %l13 = alloca { i64, ptr }
  %l14 = alloca ptr
  %l15 = alloca i1
  %l23 = alloca { i64, ptr }
  %l24 = alloca ptr
  %l25 = alloca i1
  %l28 = alloca { i64, ptr }
  %l30 = alloca ptr
  %l31 = alloca i1
  %l34 = alloca { i64, ptr }
  %l36 = alloca ptr
  %l37 = alloca i1
  %l40 = alloca { i64, ptr }
  %l42 = alloca ptr
  %l43 = alloca i1
  %l46 = alloca { i64, ptr }
  %l48 = alloca i64
  %l49 = alloca { i64, ptr }
  %l50 = alloca { i64, ptr }
  %l51 = alloca { i64, ptr }
  %l52 = alloca i64
  %l53 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 6
  store i1 %t8, ptr %l6, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l6, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  br label %bb5
bb4:
  br label %bb38
bb5:
  %t16 = load ptr, ptr %l2, !tbaa !29
  %t18 = getelementptr %"compiler/typed:Call", ptr %t16, i32 0, i32 0
  %t19 = load ptr, ptr %t18, !tbaa !29
  store ptr %t19, ptr %l3, !tbaa !29
  %t21 = load ptr, ptr %l3, !tbaa !29
  store ptr %t21, ptr %l14, !tbaa !29
  store i1 false, ptr %l15, !tbaa !21
  %t22 = load ptr, ptr %l14, !tbaa !29
  %t23 = icmp ne ptr %t22, null
  br i1 %t23, label %bb6, label %bb7
bb6:
  %t25 = load ptr, ptr %l14, !tbaa !29
  %t26 = load i64, ptr %t25, !range !{i64 0, i64 5}
  %t28 = icmp eq i64 %t26, 0
  store i1 %t28, ptr %l15, !tbaa !21
  br label %bb7
bb7:
  %t29 = load i1, ptr %l15, !tbaa !21
  br i1 %t29, label %bb8, label %bb9
bb8:
  %t30 = load ptr, ptr %l3, !tbaa !29
  %t32 = getelementptr { i64, [3 x i64] }, ptr %t30, i32 0, i32 1
  %t33 = getelementptr { i32 }, ptr %t32, i32 0, i32 0
  %t34 = load i32, ptr %t33
  store i32 %t34, ptr %l4, !tbaa !23
  br label %bb10
bb9:
  br label %bb12
bb10:
  %t37 = load i32, ptr %l4, !tbaa !23
  %t39 = sext i32 %t37 to i64
  %t42 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebodyRefusal(ptr %v0, ptr %v2, ptr %a0, i64 %t39)
  store { i64, ptr } %t42, ptr %l23
  br label %bb11
bb11:
  %t43 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t43, ptr %l13, !tbaa !27
  br label %bb37
bb12:
  %t44 = load ptr, ptr %l3, !tbaa !29
  store ptr %t44, ptr %l24, !tbaa !29
  store i1 false, ptr %l25, !tbaa !21
  %t45 = load ptr, ptr %l24, !tbaa !29
  %t46 = icmp ne ptr %t45, null
  br i1 %t46, label %bb13, label %bb14
bb13:
  %t48 = load ptr, ptr %l24, !tbaa !29
  %t49 = load i64, ptr %t48, !range !{i64 0, i64 5}
  %t51 = icmp eq i64 %t49, 1
  store i1 %t51, ptr %l25, !tbaa !21
  br label %bb14
bb14:
  %t52 = load i1, ptr %l25, !tbaa !21
  br i1 %t52, label %bb15, label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb18
bb17:
  store { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d3, i32 0, i32 1) }, ptr %l28, !tbaa !27
  %t53 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t53, ptr %l13, !tbaa !27
  br label %bb37
bb18:
  %t55 = load ptr, ptr %l3, !tbaa !29
  store ptr %t55, ptr %l30, !tbaa !29
  store i1 false, ptr %l31, !tbaa !21
  %t56 = load ptr, ptr %l30, !tbaa !29
  %t57 = icmp ne ptr %t56, null
  br i1 %t57, label %bb19, label %bb20
bb19:
  %t59 = load ptr, ptr %l30, !tbaa !29
  %t60 = load i64, ptr %t59, !range !{i64 0, i64 5}
  %t62 = icmp eq i64 %t60, 2
  store i1 %t62, ptr %l31, !tbaa !21
  br label %bb20
bb20:
  %t63 = load i1, ptr %l31, !tbaa !21
  br i1 %t63, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb24
bb23:
  store { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d4, i32 0, i32 1) }, ptr %l34, !tbaa !27
  %t64 = load { i64, ptr }, ptr %l34, !tbaa !27
  store { i64, ptr } %t64, ptr %l13, !tbaa !27
  br label %bb37
bb24:
  %t66 = load ptr, ptr %l3, !tbaa !29
  store ptr %t66, ptr %l36, !tbaa !29
  store i1 false, ptr %l37, !tbaa !21
  %t67 = load ptr, ptr %l36, !tbaa !29
  %t68 = icmp ne ptr %t67, null
  br i1 %t68, label %bb25, label %bb26
bb25:
  %t70 = load ptr, ptr %l36, !tbaa !29
  %t71 = load i64, ptr %t70, !range !{i64 0, i64 5}
  %t73 = icmp eq i64 %t71, 3
  store i1 %t73, ptr %l37, !tbaa !21
  br label %bb26
bb26:
  %t74 = load i1, ptr %l37, !tbaa !21
  br i1 %t74, label %bb27, label %bb28
bb27:
  br label %bb29
bb28:
  br label %bb30
bb29:
  store { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d5, i32 0, i32 1) }, ptr %l40, !tbaa !27
  %t75 = load { i64, ptr }, ptr %l40, !tbaa !27
  store { i64, ptr } %t75, ptr %l13, !tbaa !27
  br label %bb37
bb30:
  %t77 = load ptr, ptr %l3, !tbaa !29
  store ptr %t77, ptr %l42, !tbaa !29
  store i1 false, ptr %l43, !tbaa !21
  %t78 = load ptr, ptr %l42, !tbaa !29
  %t79 = icmp ne ptr %t78, null
  br i1 %t79, label %bb31, label %bb32
bb31:
  %t81 = load ptr, ptr %l42, !tbaa !29
  %t82 = load i64, ptr %t81, !range !{i64 0, i64 5}
  %t84 = icmp eq i64 %t82, 4
  store i1 %t84, ptr %l43, !tbaa !21
  br label %bb32
bb32:
  %t85 = load i1, ptr %l43, !tbaa !21
  br i1 %t85, label %bb33, label %bb34
bb33:
  br label %bb35
bb34:
  br label %bb36
bb35:
  store { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d6, i32 0, i32 1) }, ptr %l46, !tbaa !27
  %t86 = load { i64, ptr }, ptr %l46, !tbaa !27
  store { i64, ptr } %t86, ptr %l13, !tbaa !27
  br label %bb37
bb36:
  call void @__olang_check_failed(ptr @olang_loc_4f357d5c515ec460_c39407ade47891c4)
  unreachable
bb37:
  %t88 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t89 = extractvalue { i64, ptr } %t88, 0
  store i64 %t89, ptr %l48, !tbaa !24
  %t90 = load i64, ptr %l48, !tbaa !24
  %t91 = mul i64 %t90, 1
  %t92 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t91)
  %t93 = insertvalue { i64, ptr } undef, i64 %t90, 0
  %t94 = insertvalue { i64, ptr } %t93, ptr %t92, 1
  store { i64, ptr } %t94, ptr %l49, !tbaa !27
  %t95 = getelementptr { i64, ptr }, ptr %l49, i32 0, i32 1
  %t96 = load ptr, ptr %t95, !tbaa !27
  %t97 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t98 = load ptr, ptr %t97, !tbaa !27
  %t99 = load i64, ptr %l48, !tbaa !24
  %t100 = mul i64 %t99, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t96, ptr %t98, i64 %t100, i1 false)
  %t101 = load { i64, ptr }, ptr %l49, !tbaa !27
  store { i64, ptr } %t101, ptr %l13, !tbaa !27
  %t102 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t102, ptr %rv
  br label %ret
bb38:
  br i1 true, label %bb39, label %bb40
bb39:
  br label %bb41
bb40:
  br label %bb42
bb41:
  store { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d7, i32 0, i32 1) }, ptr %l50, !tbaa !27
  %t103 = load { i64, ptr }, ptr %l50, !tbaa !27
  store { i64, ptr } %t103, ptr %l51, !tbaa !27
  %t104 = load { i64, ptr }, ptr %l51, !tbaa !27
  %t105 = extractvalue { i64, ptr } %t104, 0
  store i64 %t105, ptr %l52, !tbaa !24
  %t106 = load i64, ptr %l52, !tbaa !24
  %t107 = mul i64 %t106, 1
  %t108 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t107)
  %t109 = insertvalue { i64, ptr } undef, i64 %t106, 0
  %t110 = insertvalue { i64, ptr } %t109, ptr %t108, 1
  store { i64, ptr } %t110, ptr %l53, !tbaa !27
  %t111 = getelementptr { i64, ptr }, ptr %l53, i32 0, i32 1
  %t112 = load ptr, ptr %t111, !tbaa !27
  %t113 = getelementptr { i64, ptr }, ptr %l51, i32 0, i32 1
  %t114 = load ptr, ptr %t113, !tbaa !27
  %t115 = load i64, ptr %l52, !tbaa !24
  %t116 = mul i64 %t115, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t112, ptr %t114, i64 %t116, i1 false)
  %t117 = load { i64, ptr }, ptr %l53, !tbaa !27
  store { i64, ptr } %t117, ptr %l51, !tbaa !27
  %t118 = load { i64, ptr }, ptr %l51, !tbaa !27
  store { i64, ptr } %t118, ptr %rv
  br label %ret
bb42:
  call void @__olang_check_failed(ptr @olang_loc_5259ca87fe3b4871_3fe667824d420b5)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eborrowedSource(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca i64
  %l6 = alloca ptr
  %l9 = alloca i32
  %l12 = alloca i1
  %l13 = alloca i32
  %l20 = alloca i32
  %l23 = alloca i1
  %l24 = alloca i1
  %l29 = alloca i64
  %l33 = alloca i1
  %l37 = alloca i1
  %l40 = alloca ptr
  %l45 = alloca i32
  %l47 = alloca i32
  %l51 = alloca i64
  %l53 = alloca ptr
  %l56 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l59 = alloca i1
  %l60 = alloca i1
  %l64 = alloca i1
  %l65 = alloca ptr
  %l67 = alloca ptr
  %l68 = alloca i1
  %l73 = alloca ptr
  %rv = alloca i64
  %t146 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t4 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t1)
  store i32 %t4, ptr %l9
  br label %bb1
bb1:
  %t5 = load i32, ptr %l9, !tbaa !23
  store i32 %t5, ptr %l3, !tbaa !23
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t7 = load i32, ptr %l3, !tbaa !23
  %t10 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t6, i32 %t7)
  store i1 %t10, ptr %l12
  br label %bb2
bb2:
  %t11 = load i1, ptr %l12, !tbaa !21
  br i1 %t11, label %bb3, label %bb4
bb3:
  %t12 = load i32, ptr %l3, !tbaa !23
  store i32 %t12, ptr %l13, !tbaa !23
  br label %bb6
bb4:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/check:Checker", ptr %t14, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !29
  %t19 = getelementptr %"compiler/generic:Program", ptr %t17, i32 0, i32 2
  %t20 = load i32, ptr %l3, !tbaa !23
  %t21 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  %t25 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t19, i32 %t20, i64 %t21)
  store i32 %t25, ptr %l20
  br label %bb5
bb5:
  %t26 = load i32, ptr %l20, !tbaa !23
  store i32 %t26, ptr %l13, !tbaa !23
  br label %bb6
bb6:
  %t27 = load i32, ptr %l13, !tbaa !23
  store i32 %t27, ptr %l4, !tbaa !23
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t29 = load i32, ptr %l3, !tbaa !23
  %t32 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t28, i32 %t29)
  store i1 %t32, ptr %l23
  br label %bb7
bb7:
  %t33 = load i1, ptr %l23, !tbaa !21
  br i1 %t33, label %bb8, label %bb9
bb8:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/check:Checker", ptr %t34, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !29
  %t39 = getelementptr %"compiler/generic:Program", ptr %t37, i32 0, i32 2
  %t40 = load i32, ptr %l3, !tbaa !23
  %t43 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t39, i32 %t40)
  store i64 %t43, ptr %l29
  br label %bb10
bb9:
  store i1 false, ptr %l24, !tbaa !21
  br label %bb11
bb10:
  %t44 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t45 = load i64, ptr %l29, !tbaa !24
  %t47 = and i64 %t45, %t44
  %t49 = icmp ne i64 %t47, 0
  store i1 %t49, ptr %l24, !tbaa !21
  br label %bb11
bb11:
  %t51 = load i1, ptr %l24, !tbaa !21
  br i1 %t51, label %bb12, label %bb13
bb12:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t53 = load ptr, ptr %l2, !tbaa !29
  %t57 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroRef(ptr %v0, ptr %v1, ptr %t52, ptr %t53)
  store i1 %t57, ptr %l37
  br label %bb14
bb13:
  store i1 false, ptr %l33, !tbaa !21
  br label %bb15
bb14:
  %t58 = load i1, ptr %l37, !tbaa !21
  store i1 %t58, ptr %l33, !tbaa !21
  br label %bb15
bb15:
  %t59 = load i1, ptr %l33, !tbaa !21
  br i1 %t59, label %bb16, label %bb17
bb16:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/check:Checker", ptr %t60, i32 0, i32 1
  %t63 = load ptr, ptr %t62, !tbaa !29
  %t65 = getelementptr %"compiler/generic:Program", ptr %t63, i32 0, i32 2
  store ptr %t65, ptr %l40, !tbaa !29
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/check:Checker", ptr %t66, i32 0, i32 1
  %t69 = load ptr, ptr %t68, !tbaa !29
  %t71 = getelementptr %"compiler/generic:Program", ptr %t69, i32 0, i32 2
  %t72 = load i32, ptr %l3, !tbaa !23
  %t75 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t71, i32 %t72)
  store i32 %t75, ptr %l45
  br label %bb18
bb17:
  br label %bb20
bb18:
  %t76 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  %t77 = load ptr, ptr %l40, !tbaa !29
  %t78 = load i32, ptr %l45, !tbaa !23
  %t80 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t77, i32 %t78, i64 %t76)
  store i32 %t80, ptr %l47
  br label %bb19
bb19:
  %t81 = load i32, ptr %l47, !tbaa !23
  store i32 %t81, ptr %l4, !tbaa !23
  br label %bb20
bb20:
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t83 = load %"compiler/source:Span", ptr %l1
  %t84 = load i32, ptr %l4, !tbaa !23
  %t88 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehidden(ptr %v0, ptr %t82, %"compiler/source:Span" %t83, i32 %t84)
  store i64 %t88, ptr %l51
  br label %bb21
bb21:
  %t89 = load i64, ptr %l51, !tbaa !24
  store i64 %t89, ptr %l5, !tbaa !24
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t92 = getelementptr %"compiler/check:Checker", ptr %t90, i32 0, i32 81
  store ptr %t92, ptr %l53, !tbaa !29
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t94 = load i64, ptr %l5, !tbaa !24
  %t97 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroKey(ptr %v0, ptr %t93, i64 %t94)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t97, ptr %l56
  br label %bb22
bb22:
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t99 = load i32, ptr %l3, !tbaa !23
  %t102 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t98, i32 %t99)
  store i1 %t102, ptr %l59
  br label %bb23
bb23:
  %t103 = load i1, ptr %l59, !tbaa !21
  br i1 %t103, label %bb24, label %bb25
bb24:
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t105 = load ptr, ptr %l2, !tbaa !29
  %t109 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroRef(ptr %v0, ptr %v1, ptr %t104, ptr %t105)
  store i1 %t109, ptr %l64
  br label %bb26
bb25:
  %t110 = load ptr, ptr %l0, !tbaa !29
  store ptr %t110, ptr %l65, !tbaa !29
  %t111 = load ptr, ptr %l2, !tbaa !29
  %t113 = call ptr @compiler_2fcheck_2ereadPlace(ptr %v1, ptr %v1, ptr %t111)
  store ptr %t113, ptr %l67
  br label %bb27
bb26:
  %t114 = load i1, ptr %l64, !tbaa !21
  store i1 %t114, ptr %l60, !tbaa !21
  br label %bb29
bb27:
  %t115 = load ptr, ptr %l65, !tbaa !29
  %t116 = load ptr, ptr %l67, !tbaa !29
  %t117 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroPlace(ptr %v0, ptr %v1, ptr %t115, ptr %t116)
  store i1 %t117, ptr %l68
  br label %bb28
bb28:
  %t118 = load i1, ptr %l68, !tbaa !21
  store i1 %t118, ptr %l60, !tbaa !21
  br label %bb29
bb29:
  %t119 = load ptr, ptr %l53, !tbaa !29
  %t120 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l56
  %t121 = load i1, ptr %l60, !tbaa !21
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1308596c866d4be061d9da9113abde88(ptr %v0, ptr %t119, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t120, i1 %t121)
  br label %bb30
bb30:
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t123 = load ptr, ptr %l2, !tbaa !29
  %t124 = load i32, ptr %l4, !tbaa !23
  %t125 = load %"compiler/source:Span", ptr %l1
  %t130 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v1, ptr %v0, ptr %t122, ptr %t123, i32 %t124, %"compiler/source:Span" %t125)
  store ptr %t130, ptr %l73
  br label %bb31
bb31:
  %t131 = load ptr, ptr %l73, !tbaa !29
  store ptr %t131, ptr %l6, !tbaa !29
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t133 = load i64, ptr %l5, !tbaa !24
  %t134 = load ptr, ptr %l6, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroTrack(ptr %v0, ptr %v0, ptr %t132, i64 %t133, ptr %t134)
  br label %bb32
bb32:
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t140 = load %"compiler/source:Span", ptr %l1
  %t141 = load i64, ptr %l5, !tbaa !24
  %t143 = trunc i64 %t141 to i32
  %t145 = load ptr, ptr %l6, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t146
  %t147 = getelementptr { i64, [3 x i64] }, ptr %t146, i32 0, i32 0
  store i64 0, ptr %t147
  %t149 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t140, 0
  %t151 = insertvalue { %"compiler/source:Span", i32, ptr } %t149, i32 %t143, 1
  %t153 = insertvalue { %"compiler/source:Span", i32, ptr } %t151, ptr %t145, 2
  %t154 = getelementptr { i64, [3 x i64] }, ptr %t146, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t153, ptr %t154
  %t155 = load { i64, [3 x i64] }, ptr %t146
  %t157 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t155, ptr %t157
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t139, ptr %t157)
  br label %bb33
bb33:
  %t160 = load i64, ptr %l5, !tbaa !24
  store i64 %t160, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecallbackArg(ptr %v0, ptr %v1, ptr %a0, ptr %a1, %"compiler/source:Span" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i32
  %l4 = alloca { i64, ptr }
  %l5 = alloca i32
  %l6 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca i1
  %l17 = alloca i1
  %l22 = alloca { i64, ptr }
  %l25 = alloca ptr
  %l26 = alloca i1
  %l29 = alloca i1
  %l31 = alloca ptr
  %l32 = alloca i1
  %l42 = alloca ptr
  %l43 = alloca i64
  %l46 = alloca i1
  %l48 = alloca ptr
  %l52 = alloca i64
  %l53 = alloca ptr
  %l59 = alloca ptr
  %l63 = alloca i64
  %l66 = alloca i32
  %l69 = alloca ptr
  %l70 = alloca %"compiler/source:Span"
  %l71 = alloca %"compiler/diagmsg:Msg"
  %l72 = alloca i64
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store %"compiler/source:Span" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l7, !tbaa !29
  store i1 false, ptr %l8, !tbaa !21
  %t2 = load ptr, ptr %l7, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l7, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 9
  store i1 %t8, ptr %l8, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l8, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t12, i32 0, i32 2
  %t14 = load i32, ptr %t13, !range !{i32 0, i32 52}
  store i32 %t14, ptr %l3
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [5 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t18, i32 0, i32 4
  %t20 = load { i64, ptr }, ptr %t19
  store { i64, ptr } %t20, ptr %l4, !tbaa !27
  br label %bb5
bb4:
  br label %bb13
bb5:
  %t22 = load i32, ptr %l3, !range !{i32 0, i32 52}
  %t24 = trunc i64 20 to i32
  %t25 = icmp eq i32 %t22, %t24
  br i1 %t25, label %bb6, label %bb7
bb6:
  %t27 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t29 = extractvalue { i64, ptr } %t27, 0
  %t31 = icmp eq i64 %t29, 1
  store i1 %t31, ptr %l17, !tbaa !21
  br label %bb8
bb7:
  store i1 false, ptr %l17, !tbaa !21
  br label %bb8
bb8:
  %t33 = load i1, ptr %l17, !tbaa !21
  br i1 %t33, label %bb9, label %bb10
bb9:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t35 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t35, ptr %l22, !tbaa !27
  %t36 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !27
  %t38 = getelementptr ptr, ptr %t37, i64 0
  %t39 = load ptr, ptr %t38, !tbaa !39
  %t40 = load %"compiler/source:Span", ptr %l2
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecallbackArg(ptr %v0, ptr %v1, ptr %t34, ptr %t39, %"compiler/source:Span" %t40)
  br label %bb11
bb10:
  br label %bb12
bb11:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb12:
  br label %bb18
bb13:
  br i1 true, label %bb14, label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb18
bb17:
  call void @__olang_check_failed(ptr @olang_loc_15dc8e5e4dc9449e_12f0342e5abdcdfa)
  unreachable
bb18:
  %t44 = load ptr, ptr %l1, !tbaa !29
  store ptr %t44, ptr %l25, !tbaa !29
  store i1 false, ptr %l26, !tbaa !21
  %t45 = load ptr, ptr %l25, !tbaa !29
  %t46 = icmp ne ptr %t45, null
  br i1 %t46, label %bb19, label %bb20
bb19:
  %t48 = load ptr, ptr %l25, !tbaa !29
  %t49 = load i64, ptr %t48, !range !{i64 0, i64 18}
  %t51 = icmp eq i64 %t49, 15
  store i1 %t51, ptr %l26, !tbaa !21
  br label %bb20
bb20:
  %t52 = load i1, ptr %l26, !tbaa !21
  br i1 %t52, label %bb21, label %bb22
bb21:
  %t53 = load ptr, ptr %l1, !tbaa !29
  %t55 = getelementptr { i64, [5 x i64] }, ptr %t53, i32 0, i32 1
  %t56 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t55, i32 0, i32 2
  %t57 = load ptr, ptr %t56
  store ptr %t57, ptr %l31, !tbaa !29
  store i1 false, ptr %l32, !tbaa !21
  %t58 = load ptr, ptr %l31, !tbaa !29
  %t59 = icmp ne ptr %t58, null
  br i1 %t59, label %bb23, label %bb24
bb22:
  store i1 false, ptr %l29, !tbaa !21
  br label %bb25
bb23:
  %t61 = load ptr, ptr %l31, !tbaa !29
  %t62 = load i64, ptr %t61, !range !{i64 0, i64 3}
  %t64 = icmp eq i64 %t62, 0
  store i1 %t64, ptr %l32, !tbaa !21
  br label %bb24
bb24:
  %t65 = load i1, ptr %l32, !tbaa !21
  store i1 %t65, ptr %l29, !tbaa !21
  br label %bb25
bb25:
  %t66 = load i1, ptr %l29, !tbaa !21
  br i1 %t66, label %bb26, label %bb27
bb26:
  %t67 = load ptr, ptr %l1, !tbaa !29
  %t69 = getelementptr { i64, [5 x i64] }, ptr %t67, i32 0, i32 1
  %t70 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t69, i32 0, i32 2
  %t71 = load ptr, ptr %t70
  %t73 = getelementptr { i64, [4 x i64] }, ptr %t71, i32 0, i32 1
  %t74 = getelementptr { i32 }, ptr %t73, i32 0, i32 0
  %t75 = load i32, ptr %t74
  store i32 %t75, ptr %l5, !tbaa !23
  br label %bb28
bb27:
  br label %bb41
bb28:
  store %olang.scope zeroinitializer, ptr %s4
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/check:Checker", ptr %t77, i32 0, i32 14
  %t80 = load i32, ptr %l5, !tbaa !23
  %t82 = sext i32 %t80 to i64
  %t85 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t79, i64 %t82)
  store ptr %t85, ptr %l42
  br label %bb29
bb29:
  %t86 = load ptr, ptr %l42, !tbaa !29
  %t87 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eInst(ptr %v0, ptr %t86)
  store i64 %t87, ptr %l43
  br label %bb30
bb30:
  %t88 = load i64, ptr %l43, !tbaa !24
  store i64 %t88, ptr %l6, !tbaa !24
  %t89 = load i64, ptr %l6, !tbaa !24
  %t91 = icmp sge i64 %t89, 0
  br i1 %t91, label %bb31, label %bb32
bb31:
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t95 = getelementptr %"compiler/check:Checker", ptr %t93, i32 0, i32 1
  %t96 = load ptr, ptr %t95, !tbaa !29
  store ptr %t96, ptr %l48, !tbaa !29
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t99 = getelementptr %"compiler/check:Checker", ptr %t97, i32 0, i32 1
  %t100 = load ptr, ptr %t99, !tbaa !29
  %t101 = load i64, ptr %l6, !tbaa !24
  %t104 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %t100, i64 %t101)
  store i64 %t104, ptr %l52
  br label %bb33
bb32:
  store i1 false, ptr %l46, !tbaa !21
  br label %bb35
bb33:
  %t105 = load ptr, ptr %l48, !tbaa !29
  %t106 = load i64, ptr %l52, !tbaa !24
  %t107 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %s4, ptr %t105, i64 %t106)
  store ptr %t107, ptr %l53
  br label %bb34
bb34:
  %t108 = load ptr, ptr %l53, !tbaa !29
  %t110 = getelementptr %"compiler/ast:Func", ptr %t108, i32 0, i32 7
  %t111 = load i1, ptr %t110, !tbaa !21
  store i1 %t111, ptr %l46, !tbaa !21
  br label %bb35
bb35:
  %t113 = load i1, ptr %l46, !tbaa !21
  br i1 %t113, label %bb36, label %bb37
bb36:
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t116 = getelementptr %"compiler/check:Checker", ptr %t114, i32 0, i32 1
  %t117 = load ptr, ptr %t116, !tbaa !29
  %t119 = getelementptr %"compiler/generic:Program", ptr %t117, i32 0, i32 0
  %t120 = load ptr, ptr %t119, !tbaa !29
  %t122 = getelementptr %"compiler/load:Loader", ptr %t120, i32 0, i32 18
  store ptr %t122, ptr %l59, !tbaa !29
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t125 = getelementptr %"compiler/check:Checker", ptr %t123, i32 0, i32 1
  %t126 = load ptr, ptr %t125, !tbaa !29
  %t127 = load i64, ptr %l6, !tbaa !24
  %t130 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %t126, i64 %t127)
  store i64 %t130, ptr %l63
  br label %bb38
bb37:
  br label %bb40
bb38:
  %t131 = load ptr, ptr %l59, !tbaa !29
  %t132 = load i64, ptr %l63, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t131, i64 %t132, i1 true)
  br label %bb39
bb39:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb40:
  call void @__olang_scope_close(ptr %s4)
  br label %bb46
bb41:
  br i1 true, label %bb42, label %bb43
bb42:
  br label %bb44
bb43:
  br label %bb45
bb44:
  br label %bb46
bb45:
  call void @__olang_check_failed(ptr @olang_loc_7e3b8ef59b75af1f_c18e9d0b6f53f27b)
  unreachable
bb46:
  %t133 = load ptr, ptr %l1, !tbaa !29
  %t136 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t133)
  store i32 %t136, ptr %l66
  br label %bb47
bb47:
  %t137 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t138 = load i32, ptr %l66, !tbaa !23
  %t140 = icmp eq i32 %t138, %t137
  br i1 %t140, label %bb48, label %bb49
bb48:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb49:
  br label %bb50
bb50:
  %t142 = load ptr, ptr %l0, !tbaa !29
  store ptr %t142, ptr %l69, !tbaa !29
  %t143 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t143, ptr %l70
  %t144 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCallbackNotExport(ptr %s0)
  store %"compiler/diagmsg:Msg" %t144, ptr %l71
  br label %bb51
bb51:
  %t145 = load ptr, ptr %l69, !tbaa !29
  %t146 = load %"compiler/source:Span", ptr %l70
  %t147 = load %"compiler/diagmsg:Msg", ptr %l71
  %t148 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s0, ptr %t145, %"compiler/source:Span" %t146, %"compiler/diagmsg:Msg" %t147)
  store i64 %t148, ptr %l72
  br label %bb52
bb52:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecasePublic(ptr %v0, ptr %a0, i32 %a1, i32 %a2, %"compiler/source:Span" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l9 = alloca i1
  %l10 = alloca i1
  %l13 = alloca i64
  %l15 = alloca i1
  %l18 = alloca ptr
  %l23 = alloca i32
  %l24 = alloca i64
  %l26 = alloca ptr
  %l33 = alloca ptr
  %l36 = alloca { i64, [3 x i64] }
  %l39 = alloca { i64, ptr }
  %l41 = alloca %"compiler/diagmsg:Msg"
  %l42 = alloca i64
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l2, !tbaa !23
  %t5 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s0, ptr %t1, i32 %t2)
  store { i64, ptr } %t5, ptr %l6
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t6, ptr %l7, !tbaa !27
  %t7 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t8 = load ptr, ptr %t7, !tbaa !27
  %t9 = getelementptr i8, ptr %t8, i64 0
  %t10 = load i8, ptr %t9, !tbaa !32
  %t12 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsUpper(i8 %t10)
  store i1 %t12, ptr %l9
  br label %bb2
bb2:
  %t13 = load i1, ptr %l9, !tbaa !21
  br i1 %t13, label %bb3, label %bb4
bb3:
  store i1 true, ptr %l10, !tbaa !21
  br label %bb6
bb4:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/check:Checker", ptr %t14, i32 0, i32 16
  %t18 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2_H2251bc8fca359ca0394d0bb11af7ba0a(ptr %v0, ptr %t16)
  store i64 %t18, ptr %l13
  br label %bb5
bb5:
  %t19 = load i64, ptr %l13, !tbaa !24
  %t20 = icmp eq i64 %t19, 0
  store i1 %t20, ptr %l10, !tbaa !21
  br label %bb6
bb6:
  %t22 = load i1, ptr %l10, !tbaa !21
  br i1 %t22, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l15, !tbaa !21
  br label %bb12
bb8:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/check:Checker", ptr %t23, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !29
  %t28 = getelementptr %"compiler/generic:Program", ptr %t26, i32 0, i32 2
  store ptr %t28, ptr %l18, !tbaa !29
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/check:Checker", ptr %t29, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !29
  %t34 = getelementptr %"compiler/generic:Program", ptr %t32, i32 0, i32 2
  %t38 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t34, i32 %a1)
  store i32 %t38, ptr %l23
  br label %bb9
bb9:
  %t39 = load ptr, ptr %l18, !tbaa !29
  %t40 = load i32, ptr %l23, !tbaa !23
  %t41 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %t39, i32 %t40)
  store i64 %t41, ptr %l24
  br label %bb10
bb10:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t42)
  store ptr %t44, ptr %l26
  br label %bb11
bb11:
  %t45 = load ptr, ptr %l26, !tbaa !29
  %t47 = getelementptr %"compiler/check:frame", ptr %t45, i32 0, i32 1
  %t48 = load i64, ptr %t47, !tbaa !24
  %t49 = load i64, ptr %l24, !tbaa !24
  %t51 = icmp eq i64 %t49, %t48
  store i1 %t51, ptr %l15, !tbaa !21
  br label %bb12
bb12:
  %t53 = load i1, ptr %l15, !tbaa !21
  br i1 %t53, label %bb13, label %bb14
bb13:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb14:
  br label %bb15
bb15:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/check:Checker", ptr %t54, i32 0, i32 1
  %t57 = load ptr, ptr %t56, !tbaa !29
  %t59 = getelementptr %"compiler/generic:Program", ptr %t57, i32 0, i32 0
  %t60 = load ptr, ptr %t59, !tbaa !29
  %t62 = getelementptr %"compiler/load:Loader", ptr %t60, i32 0, i32 4
  %t63 = load ptr, ptr %t62, !tbaa !29
  store ptr %t63, ptr %l33, !tbaa !29
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t68 = call { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eat(ptr %v0, ptr %t64, %"compiler/source:Span" %a3)
  store { i64, [3 x i64] } %t68, ptr %l36
  br label %bb16
bb16:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t70 = load i32, ptr %l2, !tbaa !23
  %t73 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %s0, ptr %t69, i32 %t70)
  store { i64, ptr } %t73, ptr %l39
  br label %bb17
bb17:
  %t74 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t75 = extractvalue { i64, ptr } %t74, 0
  %t76 = extractvalue { i64, ptr } %t74, 1
  %t77 = mul i64 %t75, 1
  %t78 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t77)
  call void @llvm.memcpy.p0.p0.i64(ptr %t78, ptr %t76, i64 %t77, i1 false)
  %t79 = insertvalue { i64, ptr } undef, i64 %t75, 0
  %t80 = insertvalue { i64, ptr } %t79, ptr %t78, 1
  %t82 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCaseIsPrivate(ptr %s0, ptr %s0, { i64, ptr } %t80)
  store %"compiler/diagmsg:Msg" %t82, ptr %l41
  br label %bb18
bb18:
  %t83 = load ptr, ptr %l33, !tbaa !29
  %t84 = load { i64, [3 x i64] }, ptr %l36
  %t85 = load %"compiler/diagmsg:Msg", ptr %l41
  %t86 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrorOncePerLine(ptr %v0, ptr %s0, ptr %t83, { i64, [3 x i64] } %t84, %"compiler/diagmsg:Msg" %t85)
  store i64 %t86, ptr %l42
  br label %bb19
bb19:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtItems(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %lp2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca %"compiler/generic:Context"
  %l5 = alloca i32
  %l6 = alloca { i64, i32 }
  %l7 = alloca i64
  %l8 = alloca i32
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca ptr
  %l16 = alloca ptr
  %l18 = alloca %"compiler/generic:Context"
  %l20 = alloca %"compiler/generic:Context"
  %l25 = alloca i32
  %l33 = alloca ptr
  %l36 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l38 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l41 = alloca { i64, i32 }
  %l46 = alloca i1
  %l50 = alloca ptr
  %l53 = alloca i64
  %l55 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
  %t21 = alloca %"compiler/generic:Context", align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l9
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store ptr %t2, ptr %lp2
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9
  %t4 = load ptr, ptr %lp2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  %t7 = call ptr @compiler_2fcheck_2eexprPath(ptr %v1, ptr %s0, ptr %a1)
  store ptr %t7, ptr %l11
  br label %bb2
bb2:
  %t8 = load ptr, ptr %l11, !tbaa !29
  store ptr %t8, ptr %l3, !tbaa !29
  %t9 = load ptr, ptr %l3, !tbaa !29
  %t11 = icmp eq ptr %t9, null
  br i1 %t11, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s0)
  %t14 = insertvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } zeroinitializer, i32 65536, 0
  store { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t14, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t15)
  store ptr %t17, ptr %l16
  br label %bb6
bb6:
  %t18 = load ptr, ptr %l16, !tbaa !29
  %t20 = getelementptr %"compiler/check:frame", ptr %t18, i32 0, i32 4
  call void @llvm.memmove.p0.p0.i64(ptr %l18, ptr %t20, i64 160, i1 false)
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fgeneric_3aContext(ptr %t21, ptr %s0, ptr %l18)
  call void @llvm.memmove.p0.p0.i64(ptr %l20, ptr %t21, i64 160, i1 false)
  br label %bb7
bb7:
  call void @llvm.memmove.p0.p0.i64(ptr %l4, ptr %l20, i64 160, i1 false)
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/check:Checker", ptr %t23, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !29
  %t27 = load ptr, ptr %l3, !tbaa !29
  %t31 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorType(ptr %v0, ptr %s0, ptr %s0, ptr %t26, ptr %l4, ptr %t27)
  store i32 %t31, ptr %l25
  br label %bb8
bb8:
  %t32 = load i32, ptr %l25, !tbaa !23
  store i32 %t32, ptr %l5, !tbaa !23
  %t33 = load i32, ptr %l5, !tbaa !23
  %t34 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t37 = icmp ne i32 %t33, %t34
  br i1 %t37, label %bb9, label %bb10
bb9:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/check:Checker", ptr %t39, i32 0, i32 1
  %t42 = load ptr, ptr %t41, !tbaa !29
  %t43 = load i32, ptr %l5, !tbaa !23
  %t44 = load ptr, ptr %lp2
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eEntriesOf(ptr %v0, ptr %v2, ptr %t42, i32 %t43, ptr %t44)
  br label %bb11
bb10:
  br label %bb14
bb11:
  %t48 = load ptr, ptr %l0, !tbaa !29
  store ptr %t48, ptr %l33, !tbaa !29
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t50 = load ptr, ptr %lp2
  %t53 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emerged(ptr %v0, ptr %v2, ptr %v2, ptr %t49, ptr %t50)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t53, ptr %l36
  br label %bb12
bb12:
  %t54 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l36
  %t55 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t54, ptr %t55
  %t56 = load ptr, ptr %l33, !tbaa !29
  %t58 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enormalSet(ptr %v0, ptr %v2, ptr %v2, ptr %t56, ptr %t55)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t58, ptr %l38
  br label %bb13
bb13:
  call void @__olang_scope_close(ptr %s0)
  %t59 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l38
  %t60 = insertvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } zeroinitializer, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t59, 1
  store { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t60, ptr %rv
  br label %ret
bb14:
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t62 = load ptr, ptr %l3, !tbaa !29
  %t65 = call { i64, i32 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrorWord(ptr %v0, ptr %s0, ptr %t61, ptr %t62)
  store { i64, i32 } %t65, ptr %l41
  br label %bb15
bb15:
  %t66 = load { i64, i32 }, ptr %l41
  store { i64, i32 } %t66, ptr %l6
  %t67 = getelementptr { i64, i32 }, ptr %l6, i32 0, i32 0
  %t68 = load i64, ptr %t67, !tbaa !24
  store i64 %t68, ptr %l7, !tbaa !24
  %t70 = getelementptr { i64, i32 }, ptr %l6, i32 0, i32 1
  %t71 = load i32, ptr %t70, !tbaa !23
  store i32 %t71, ptr %l8, !tbaa !23
  %t73 = load i64, ptr %l7, !tbaa !24
  %t75 = icmp slt i64 %t73, 0
  br i1 %t75, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l46, !tbaa !21
  br label %bb18
bb17:
  %t77 = load i64, ptr %l7, !tbaa !24
  %t79 = icmp sge i64 %t77, 64
  store i1 %t79, ptr %l46, !tbaa !21
  br label %bb18
bb18:
  %t81 = load i1, ptr %l46, !tbaa !21
  br i1 %t81, label %bb19, label %bb20
bb19:
  call void @__olang_scope_close(ptr %s0)
  %t83 = insertvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } zeroinitializer, i32 65536, 0
  store { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t83, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  %t84 = load ptr, ptr %lp2
  store ptr %t84, ptr %l50, !tbaa !29
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t86 = load i32, ptr %l8, !tbaa !23
  %t87 = load i64, ptr %l7, !tbaa !24
  store i64 %t87, ptr %l53, !tbaa !24
  %t88 = load i64, ptr %l53, !tbaa !24
  %t89 = load i64, ptr %l53, !tbaa !24
  %t90 = shl i64 1, %t89
  %t94 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eentryOf(ptr %v0, ptr %t85, i32 %t86, i64 %t90)
  store i32 %t94, ptr %l55
  br label %bb22
bb22:
  %t95 = load ptr, ptr %l50, !tbaa !29
  %t96 = load i32, ptr %l55, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v2, ptr %t95, i32 %t96)
  br label %bb23
bb23:
  %t97 = load ptr, ptr %lp2
  %t98 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t97
  call void @__olang_scope_close(ptr %s0)
  %t100 = insertvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } zeroinitializer, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t98, 1
  store { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t100, ptr %rv
  br label %ret
ret:
  %rr = load { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }, ptr %rv
  ret { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectorBodies(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca i32
  %l11 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca i64
  %l15 = alloca ptr
  %l16 = alloca ptr
  %l17 = alloca i1
  %l29 = alloca { i64, ptr }
  %l37 = alloca ptr
  %l38 = alloca i1
  %l45 = alloca ptr
  %l46 = alloca i1
  %l62 = alloca { i64, ptr }
  %l70 = alloca ptr
  %l71 = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l16, !tbaa !29
  store i1 false, ptr %l17, !tbaa !21
  %t2 = load ptr, ptr %l16, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l16, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 9
  store i1 %t8, ptr %l17, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l17, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t12, i32 0, i32 4
  %t14 = load { i64, ptr }, ptr %t13
  store { i64, ptr } %t14, ptr %l3, !tbaa !27
  br label %bb5
bb4:
  br label %bb13
bb5:
  %t16 = load { i64, ptr }, ptr %l3, !tbaa !27
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
  store { i64, ptr } %t30, ptr %l29, !tbaa !27
  %t31 = load i64, ptr %l5, !tbaa !24
  %t33 = getelementptr { i64, ptr }, ptr %l29, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !27
  %t35 = getelementptr ptr, ptr %t34, i64 %t31
  %t36 = load ptr, ptr %t35, !tbaa !39
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectorBodies(ptr %v0, ptr %v1, ptr %v2, ptr %t38, ptr %t36, ptr %t40)
  br label %bb10
bb10:
  br label %bb11
bb11:
  %t44 = load i64, ptr %l5, !tbaa !24
  %t46 = add i64 %t44, 1
  store i64 %t46, ptr %l5, !tbaa !24
  br label %bb6
bb12:
  br label %bb50
bb13:
  %t48 = load ptr, ptr %l1, !tbaa !29
  store ptr %t48, ptr %l37, !tbaa !29
  store i1 false, ptr %l38, !tbaa !21
  %t49 = load ptr, ptr %l37, !tbaa !29
  %t50 = icmp ne ptr %t49, null
  br i1 %t50, label %bb14, label %bb15
bb14:
  %t52 = load ptr, ptr %l37, !tbaa !29
  %t53 = load i64, ptr %t52, !range !{i64 0, i64 18}
  %t55 = icmp eq i64 %t53, 6
  store i1 %t55, ptr %l38, !tbaa !21
  br label %bb15
bb15:
  %t56 = load i1, ptr %l38, !tbaa !21
  br i1 %t56, label %bb16, label %bb17
bb16:
  %t57 = load ptr, ptr %l1, !tbaa !29
  %t59 = getelementptr { i64, [5 x i64] }, ptr %t57, i32 0, i32 1
  %t60 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t59, i32 0, i32 2
  %t61 = load ptr, ptr %t60
  store ptr %t61, ptr %l8, !tbaa !29
  br label %bb18
bb17:
  br label %bb38
bb18:
  %t63 = load ptr, ptr %l8, !tbaa !29
  %t65 = getelementptr %"compiler/typed:Call", ptr %t63, i32 0, i32 0
  %t66 = load ptr, ptr %t65, !tbaa !29
  store ptr %t66, ptr %l9, !tbaa !29
  %t68 = load ptr, ptr %l9, !tbaa !29
  store ptr %t68, ptr %l45, !tbaa !29
  store i1 false, ptr %l46, !tbaa !21
  %t69 = load ptr, ptr %l45, !tbaa !29
  %t70 = icmp ne ptr %t69, null
  br i1 %t70, label %bb19, label %bb20
bb19:
  %t72 = load ptr, ptr %l45, !tbaa !29
  %t73 = load i64, ptr %t72, !range !{i64 0, i64 5}
  %t75 = icmp eq i64 %t73, 0
  store i1 %t75, ptr %l46, !tbaa !21
  br label %bb20
bb20:
  %t76 = load i1, ptr %l46, !tbaa !21
  br i1 %t76, label %bb21, label %bb22
bb21:
  %t77 = load ptr, ptr %l9, !tbaa !29
  %t79 = getelementptr { i64, [3 x i64] }, ptr %t77, i32 0, i32 1
  %t80 = getelementptr { i32 }, ptr %t79, i32 0, i32 0
  %t81 = load i32, ptr %t80
  store i32 %t81, ptr %l10, !tbaa !23
  br label %bb23
bb22:
  br label %bb25
bb23:
  %t83 = load ptr, ptr %l2, !tbaa !29
  %t84 = load i32, ptr %l10, !tbaa !23
  %t86 = sext i32 %t84 to i64
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v2, ptr %t83, i64 %t86)
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
  call void @__olang_check_failed(ptr @olang_loc_1e68dbdbde35cba9_f30fa4c89b16ec2d)
  unreachable
bb30:
  %t89 = load ptr, ptr %l8, !tbaa !29
  %t91 = getelementptr %"compiler/typed:Call", ptr %t89, i32 0, i32 1
  %t92 = load { i64, ptr }, ptr %t91, !tbaa !27
  store { i64, ptr } %t92, ptr %l11, !tbaa !27
  store i64 0, ptr %l12, !tbaa !24
  %t94 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t96 = extractvalue { i64, ptr } %t94, 0
  store i64 %t96, ptr %l13, !tbaa !24
  br label %bb31
bb31:
  %t98 = load i64, ptr %l12, !tbaa !24
  %t99 = load i64, ptr %l13, !tbaa !24
  %t102 = icmp slt i64 %t98, %t99
  %t104 = xor i1 %t102, true
  br i1 %t104, label %bb32, label %bb33
bb32:
  br label %bb37
bb33:
  br label %bb34
bb34:
  %t106 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t106, ptr %l62, !tbaa !27
  %t107 = load i64, ptr %l12, !tbaa !24
  %t109 = getelementptr { i64, ptr }, ptr %l62, i32 0, i32 1
  %t110 = load ptr, ptr %t109, !tbaa !27
  %t111 = getelementptr ptr, ptr %t110, i64 %t107
  %t112 = load ptr, ptr %t111, !tbaa !39
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t116 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectorBodies(ptr %v0, ptr %v1, ptr %v2, ptr %t114, ptr %t112, ptr %t116)
  br label %bb35
bb35:
  br label %bb36
bb36:
  %t120 = load i64, ptr %l12, !tbaa !24
  %t122 = add i64 %t120, 1
  store i64 %t122, ptr %l12, !tbaa !24
  br label %bb31
bb37:
  br label %bb50
bb38:
  %t124 = load ptr, ptr %l1, !tbaa !29
  store ptr %t124, ptr %l70, !tbaa !29
  store i1 false, ptr %l71, !tbaa !21
  %t125 = load ptr, ptr %l70, !tbaa !29
  %t126 = icmp ne ptr %t125, null
  br i1 %t126, label %bb39, label %bb40
bb39:
  %t128 = load ptr, ptr %l70, !tbaa !29
  %t129 = load i64, ptr %t128, !range !{i64 0, i64 18}
  %t131 = icmp eq i64 %t129, 17
  store i1 %t131, ptr %l71, !tbaa !21
  br label %bb40
bb40:
  %t132 = load i1, ptr %l71, !tbaa !21
  br i1 %t132, label %bb41, label %bb42
bb41:
  %t133 = load ptr, ptr %l1, !tbaa !29
  %t135 = getelementptr { i64, [5 x i64] }, ptr %t133, i32 0, i32 1
  %t136 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t135, i32 0, i32 2
  %t137 = load ptr, ptr %t136
  store ptr %t137, ptr %l15, !tbaa !29
  br label %bb43
bb42:
  br label %bb45
bb43:
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t140 = load ptr, ptr %l15, !tbaa !29
  %t141 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectorBodies(ptr %v0, ptr %v1, ptr %v2, ptr %t139, ptr %t140, ptr %t141)
  br label %bb44
bb44:
  br label %bb50
bb45:
  br i1 true, label %bb46, label %bb47
bb46:
  br label %bb48
bb47:
  br label %bb49
bb48:
  br label %bb50
bb49:
  call void @__olang_check_failed(ptr @olang_loc_af264802bedcf8d8_5deeb41ed3d90c7c)
  unreachable
bb50:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropElse(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i1
  %l22 = alloca ptr
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
  store ptr %t5, ptr %l5, !tbaa !29
  store i1 false, ptr %l6, !tbaa !21
  %t6 = load ptr, ptr %l5, !tbaa !29
  %t7 = icmp ne ptr %t6, null
  br i1 %t7, label %bb4, label %bb5
bb4:
  %t9 = load ptr, ptr %l5, !tbaa !29
  %t10 = load i64, ptr %t9, !range !{i64 0, i64 22}
  %t12 = icmp eq i64 %t10, 5
  store i1 %t12, ptr %l6, !tbaa !21
  br label %bb5
bb5:
  %t13 = load i1, ptr %l6, !tbaa !21
  br i1 %t13, label %bb6, label %bb7
bb6:
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t16 = getelementptr { i64, [4 x i64] }, ptr %t14, i32 0, i32 1
  %t17 = getelementptr { %"compiler/source:Span", ptr }, ptr %t16, i32 0, i32 1
  %t18 = load ptr, ptr %t17
  store ptr %t18, ptr %l2, !tbaa !29
  br label %bb8
bb7:
  br label %bb20
bb8:
  %t20 = load ptr, ptr %l2, !tbaa !29
  %t22 = getelementptr %"compiler/ast:If", ptr %t20, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !29
  %t25 = icmp eq ptr %t23, null
  br i1 %t25, label %bb9, label %bb10
bb9:
  call void @__olang_check_failed(ptr @olang_loc_986dcc23e228494c_5356e2d9a8a4da00)
  unreachable
bb10:
  br label %bb11
bb11:
  %t27 = load ptr, ptr %l2, !tbaa !29
  %t29 = getelementptr %"compiler/ast:If", ptr %t27, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !29
  %t33 = getelementptr %"compiler/ast:Branch", ptr %t30, i32 0, i32 2
  %t34 = load i64, ptr %t33, !tbaa !24
  %t36 = icmp sge i64 %t34, 0
  br i1 %t36, label %bb12, label %bb13
bb12:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/check:Checker", ptr %t38, i32 0, i32 1
  %t41 = load ptr, ptr %t40, !tbaa !29
  %t43 = getelementptr %"compiler/generic:Program", ptr %t41, i32 0, i32 0
  %t44 = load ptr, ptr %t43, !tbaa !29
  %t46 = getelementptr %"compiler/load:Loader", ptr %t44, i32 0, i32 4
  %t47 = load ptr, ptr %t46, !tbaa !29
  store ptr %t47, ptr %l22, !tbaa !29
  %t48 = load ptr, ptr %l2, !tbaa !29
  %t50 = getelementptr %"compiler/ast:If", ptr %t48, i32 0, i32 1
  %t51 = load ptr, ptr %t50, !tbaa !29
  %t53 = icmp eq ptr %t51, null
  br i1 %t53, label %bb14, label %bb15
bb13:
  br label %bb18
bb14:
  call void @__olang_check_failed(ptr @olang_loc_986dcc23e228494c_5356e2d9a8a4da00)
  unreachable
bb15:
  br label %bb16
bb16:
  %t55 = load ptr, ptr %l2, !tbaa !29
  %t57 = getelementptr %"compiler/ast:If", ptr %t55, i32 0, i32 1
  %t58 = load ptr, ptr %t57, !tbaa !29
  %t61 = getelementptr %"compiler/ast:Branch", ptr %t58, i32 0, i32 2
  %t62 = load i64, ptr %t61, !tbaa !24
  %t63 = load ptr, ptr %l22, !tbaa !29
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eCutOff(ptr %v0, ptr %t63, i64 %t62)
  br label %bb17
bb17:
  br label %bb18
bb18:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t66 = load ptr, ptr %l2, !tbaa !29
  %t68 = getelementptr %"compiler/ast:If", ptr %t66, i32 0, i32 2
  %t69 = load ptr, ptr %t68, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropElse(ptr %v0, ptr %v1, ptr %t65, ptr %t69)
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
  call void @__olang_check_failed(ptr @olang_loc_b95c45f94d7269e2_7c3a0c34c4e08fe6)
  unreachable
bb25:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrMatch(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l14 = alloca i32
  %l25 = alloca { i64, ptr }
  %l36 = alloca { i64, ptr }
  %l39 = alloca ptr
  %l40 = alloca i1
  %l45 = alloca ptr
  %l46 = alloca i1
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
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t4 = getelementptr %"compiler/ast:Match", ptr %t2, i32 0, i32 1
  %t5 = load ptr, ptr %t4, !tbaa !29
  %t8 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrLocalName(ptr %v0, ptr %v1, ptr %t1, ptr %t5)
  store i32 %t8, ptr %l14
  br label %bb1
bb1:
  %t9 = load i32, ptr %l14, !tbaa !23
  %t10 = icmp ne i32 %t9, 0
  br i1 %t10, label %bb2, label %bb3
bb2:
  store i1 true, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t13 = load ptr, ptr %l1, !tbaa !29
  %t15 = getelementptr %"compiler/ast:Match", ptr %t13, i32 0, i32 3
  %t16 = load { i64, ptr }, ptr %t15, !tbaa !27
  store { i64, ptr } %t16, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t20 = extractvalue { i64, ptr } %t18, 0
  store i64 %t20, ptr %l4, !tbaa !24
  br label %bb5
bb5:
  %t22 = load i64, ptr %l3, !tbaa !24
  %t23 = load i64, ptr %l4, !tbaa !24
  %t26 = icmp slt i64 %t22, %t23
  %t28 = xor i1 %t26, true
  br i1 %t28, label %bb6, label %bb7
bb6:
  br label %bb39
bb7:
  br label %bb8
bb8:
  %t30 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t30, ptr %l25, !tbaa !27
  %t31 = load i64, ptr %l3, !tbaa !24
  %t33 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !27
  %t35 = getelementptr ptr, ptr %t34, i64 %t31
  %t36 = load ptr, ptr %t35, !tbaa !39
  %t40 = getelementptr %"compiler/ast:Case", ptr %t36, i32 0, i32 1
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
  br label %bb37
bb11:
  br label %bb12
bb12:
  %t55 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t55, ptr %l36, !tbaa !27
  %t56 = load i64, ptr %l7, !tbaa !24
  %t58 = getelementptr { i64, ptr }, ptr %l36, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !27
  %t60 = getelementptr ptr, ptr %t59, i64 %t56
  %t61 = load ptr, ptr %t60, !tbaa !39
  store ptr %t61, ptr %l9, !tbaa !29
  %t63 = load ptr, ptr %l9, !tbaa !29
  store ptr %t63, ptr %l39, !tbaa !29
  store i1 false, ptr %l40, !tbaa !21
  %t64 = load ptr, ptr %l39, !tbaa !29
  %t65 = icmp ne ptr %t64, null
  br i1 %t65, label %bb13, label %bb14
bb13:
  %t67 = load ptr, ptr %l39, !tbaa !29
  %t68 = load i64, ptr %t67, !range !{i64 0, i64 9}
  %t70 = icmp eq i64 %t68, 1
  store i1 %t70, ptr %l40, !tbaa !21
  br label %bb14
bb14:
  %t71 = load i1, ptr %l40, !tbaa !21
  br i1 %t71, label %bb15, label %bb16
bb15:
  %t72 = load ptr, ptr %l9, !tbaa !29
  %t74 = getelementptr { i64, [4 x i64] }, ptr %t72, i32 0, i32 1
  %t75 = getelementptr { %"compiler/source:Span", ptr }, ptr %t74, i32 0, i32 1
  %t76 = load ptr, ptr %t75
  store ptr %t76, ptr %l10, !tbaa !29
  br label %bb25
bb16:
  %t78 = load ptr, ptr %l9, !tbaa !29
  store ptr %t78, ptr %l45, !tbaa !29
  store i1 false, ptr %l46, !tbaa !21
  %t79 = load ptr, ptr %l45, !tbaa !29
  %t80 = icmp ne ptr %t79, null
  br i1 %t80, label %bb17, label %bb18
bb17:
  %t82 = load ptr, ptr %l45, !tbaa !29
  %t83 = load i64, ptr %t82, !range !{i64 0, i64 9}
  %t85 = icmp eq i64 %t83, 4
  store i1 %t85, ptr %l46, !tbaa !21
  br label %bb18
bb18:
  %t86 = load i1, ptr %l46, !tbaa !21
  br i1 %t86, label %bb19, label %bb20
bb19:
  %t87 = load ptr, ptr %l9, !tbaa !29
  %t89 = getelementptr { i64, [4 x i64] }, ptr %t87, i32 0, i32 1
  %t90 = getelementptr { %"compiler/source:Span", ptr }, ptr %t89, i32 0, i32 1
  %t91 = load ptr, ptr %t90
  store ptr %t91, ptr %l10, !tbaa !29
  br label %bb25
bb20:
  %t93 = load ptr, ptr %l9, !tbaa !29
  store ptr %t93, ptr %l51, !tbaa !29
  store i1 false, ptr %l52, !tbaa !21
  %t94 = load ptr, ptr %l51, !tbaa !29
  %t95 = icmp ne ptr %t94, null
  br i1 %t95, label %bb21, label %bb22
bb21:
  %t97 = load ptr, ptr %l51, !tbaa !29
  %t98 = load i64, ptr %t97, !range !{i64 0, i64 9}
  %t100 = icmp eq i64 %t98, 2
  store i1 %t100, ptr %l52, !tbaa !21
  br label %bb22
bb22:
  %t101 = load i1, ptr %l52, !tbaa !21
  br i1 %t101, label %bb23, label %bb24
bb23:
  %t102 = load ptr, ptr %l9, !tbaa !29
  %t104 = getelementptr { i64, [4 x i64] }, ptr %t102, i32 0, i32 1
  %t105 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t104, i32 0, i32 1
  %t106 = load ptr, ptr %t105
  store ptr %t106, ptr %l10, !tbaa !29
  br label %bb25
bb24:
  br label %bb30
bb25:
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t109 = load ptr, ptr %l10, !tbaa !29
  %t112 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrItemPath(ptr %v0, ptr %v1, ptr %t108, ptr %t109)
  store i1 %t112, ptr %l59
  br label %bb26
bb26:
  %t113 = load i1, ptr %l59, !tbaa !21
  br i1 %t113, label %bb27, label %bb28
bb27:
  store i1 true, ptr %rv
  br label %ret
bb28:
  br label %bb29
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
  call void @__olang_check_failed(ptr @olang_loc_91bbe37ca794b073_cd30040e8f82c287)
  unreachable
bb35:
  br label %bb36
bb36:
  %t115 = load i64, ptr %l7, !tbaa !24
  %t117 = add i64 %t115, 1
  store i64 %t117, ptr %l7, !tbaa !24
  br label %bb9
bb37:
  br label %bb38
bb38:
  %t119 = load i64, ptr %l3, !tbaa !24
  %t121 = add i64 %t119, 1
  store i64 %t121, ptr %l3, !tbaa !24
  br label %bb5
bb39:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehandleLocal(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i64 %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca %"compiler/typed:Local"
  %l6 = alloca i1
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca i64
  %l12 = alloca ptr
  %l13 = alloca { i64, ptr }
  %l17 = alloca %"compiler/typed:Local"
  %l20 = alloca i1
  %l23 = alloca i1
  %l24 = alloca i1
  %l27 = alloca i1
  %l32 = alloca i1
  %l33 = alloca i1
  %l37 = alloca i1
  %l38 = alloca i1
  %l42 = alloca i1
  %l43 = alloca i1
  %l47 = alloca i1
  %l61 = alloca ptr
  %l68 = alloca ptr
  %l73 = alloca ptr
  %l77 = alloca i64
  %l81 = alloca i1
  %l82 = alloca { i64, ptr }
  %l84 = alloca { i64, ptr }
  %l85 = alloca ptr
  %l86 = alloca ptr
  %l87 = alloca ptr
  %l88 = alloca i64
  %l89 = alloca { i64, ptr }
  %l92 = alloca { i64, ptr }
  %l93 = alloca ptr
  %l97 = alloca %"compiler/typed:Local"
  %l99 = alloca { i64, ptr }
  %l101 = alloca ptr
  %l104 = alloca i1
  %l107 = alloca i1
  %l111 = alloca { i64, ptr }
  %l121 = alloca i1
  %l123 = alloca i1
  %l125 = alloca i1
  %l126 = alloca i1
  %l128 = alloca i1
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s11 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  store i64 %a3, ptr %l3
  store i64 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Body", ptr %t1, i32 0, i32 7
  %t4 = load i64, ptr %l4, !tbaa !24
  %t7 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v1, ptr %t3, i64 %t4)
  store %"compiler/typed:Local" %t7, ptr %l17
  br label %bb1
bb1:
  %t8 = load %"compiler/typed:Local", ptr %l17
  store %"compiler/typed:Local" %t8, ptr %l5
  %t9 = getelementptr %"compiler/typed:Local", ptr %l5, i32 0, i32 0
  %t10 = load i32, ptr %t9, !tbaa !23
  %t12 = icmp eq i32 %t10, 0
  br i1 %t12, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l20, !tbaa !21
  br label %bb5
bb3:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/typed:Local", ptr %l5, i32 0, i32 2
  %t16 = load i32, ptr %t15, !tbaa !23
  %t19 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t14, i32 %t16)
  store i1 %t19, ptr %l23
  br label %bb4
bb4:
  %t20 = load i1, ptr %l23, !tbaa !21
  store i1 %t20, ptr %l20, !tbaa !21
  br label %bb5
bb5:
  %t21 = load i1, ptr %l20, !tbaa !21
  br i1 %t21, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l24, !tbaa !21
  br label %bb9
bb7:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/typed:Local", ptr %l5, i32 0, i32 2
  %t24 = load i32, ptr %t23, !tbaa !23
  %t27 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eholdsHandle(ptr %v0, ptr %t22, i32 %t24, i64 0)
  store i1 %t27, ptr %l27
  br label %bb8
bb8:
  %t28 = load i1, ptr %l27, !tbaa !21
  %t29 = xor i1 %t28, true
  store i1 %t29, ptr %l24, !tbaa !21
  br label %bb9
bb9:
  %t31 = load i1, ptr %l24, !tbaa !21
  br i1 %t31, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb11:
  br label %bb12
bb12:
  %t32 = load ptr, ptr %l2, !tbaa !29
  %t34 = getelementptr %"compiler/typed:LocalUses", ptr %t32, i32 0, i32 2
  %t35 = load i64, ptr %l4, !tbaa !24
  %t38 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v2, ptr %t34, i64 %t35)
  store i1 %t38, ptr %l32
  br label %bb13
bb13:
  %t39 = load i1, ptr %l32, !tbaa !21
  br i1 %t39, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l33, !tbaa !21
  br label %bb17
bb15:
  %t40 = load ptr, ptr %l2, !tbaa !29
  %t42 = getelementptr %"compiler/typed:LocalUses", ptr %t40, i32 0, i32 3
  %t43 = load i64, ptr %l4, !tbaa !24
  %t46 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v2, ptr %t42, i64 %t43)
  store i1 %t46, ptr %l37
  br label %bb16
bb16:
  %t47 = load i1, ptr %l37, !tbaa !21
  store i1 %t47, ptr %l33, !tbaa !21
  br label %bb17
bb17:
  %t48 = load i1, ptr %l33, !tbaa !21
  br i1 %t48, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l38, !tbaa !21
  br label %bb21
bb19:
  %t49 = load ptr, ptr %l2, !tbaa !29
  %t51 = getelementptr %"compiler/typed:LocalUses", ptr %t49, i32 0, i32 4
  %t52 = load i64, ptr %l4, !tbaa !24
  %t55 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v2, ptr %t51, i64 %t52)
  store i1 %t55, ptr %l42
  br label %bb20
bb20:
  %t56 = load i1, ptr %l42, !tbaa !21
  store i1 %t56, ptr %l38, !tbaa !21
  br label %bb21
bb21:
  %t57 = load i1, ptr %l38, !tbaa !21
  br i1 %t57, label %bb22, label %bb23
bb22:
  store i1 true, ptr %l43, !tbaa !21
  br label %bb25
bb23:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t59 = load ptr, ptr %l2, !tbaa !29
  %t60 = load i64, ptr %l4, !tbaa !24
  %t64 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elentAt(ptr %v0, ptr %v2, ptr %t58, ptr %t59, i64 %t60)
  store i1 %t64, ptr %l47
  br label %bb24
bb24:
  %t65 = load i1, ptr %l47, !tbaa !21
  store i1 %t65, ptr %l43, !tbaa !21
  br label %bb25
bb25:
  %t66 = load i1, ptr %l43, !tbaa !21
  store i1 %t66, ptr %l6, !tbaa !21
  %t67 = getelementptr %"compiler/typed:Local", ptr %l5, i32 0, i32 4
  %t68 = load i32, ptr %t67, !range !{i32 0, i32 7}
  %t70 = trunc i64 0 to i32
  %t71 = icmp eq i32 %t68, %t70
  br i1 %t71, label %bb26, label %bb27
bb26:
  %t73 = load i1, ptr %l6, !tbaa !21
  br i1 %t73, label %bb28, label %bb29
bb27:
  br label %bb32
bb28:
  store %olang.scope zeroinitializer, ptr %s3
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t76 = load ptr, ptr %l1, !tbaa !29
  %t77 = load i64, ptr %l3, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehandleLine(ptr %v0, ptr %v1, ptr %s0, ptr %s3, ptr %s3, ptr %t75, ptr %t76, ptr %l5, i64 %t77, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d8, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d9, i32 0, i32 1) })
  br label %bb30
bb29:
  br label %bb31
bb30:
  call void @__olang_scope_close(ptr %s3)
  br label %bb31
bb31:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb32:
  %t82 = getelementptr %"compiler/typed:Local", ptr %l5, i32 0, i32 4
  %t83 = load i32, ptr %t82, !range !{i32 0, i32 7}
  %t85 = trunc i64 1 to i32
  %t86 = icmp eq i32 %t83, %t85
  %t88 = xor i1 %t86, true
  br i1 %t88, label %bb33, label %bb34
bb33:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb34:
  br label %bb35
bb35:
  %t90 = load ptr, ptr %l2, !tbaa !29
  %t92 = getelementptr %"compiler/typed:LocalUses", ptr %t90, i32 0, i32 9
  %t93 = load i64, ptr %l4, !tbaa !24
  %t96 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_3f_26_3e_2eAt__H2e4a6474e10b73ca754517844b8d7700(ptr %v2, ptr %v2, ptr %t92, i64 %t93)
  store ptr %t96, ptr %l61
  br label %bb36
bb36:
  %t97 = load ptr, ptr %l61, !tbaa !29
  store ptr %t97, ptr %l7, !tbaa !29
  %t98 = load ptr, ptr %l7, !tbaa !29
  %t100 = icmp eq ptr %t98, null
  br i1 %t100, label %bb37, label %bb38
bb37:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb38:
  br label %bb39
bb39:
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t104 = getelementptr %"compiler/check:Checker", ptr %t102, i32 0, i32 1
  %t105 = load ptr, ptr %t104, !tbaa !29
  %t107 = getelementptr %"compiler/generic:Program", ptr %t105, i32 0, i32 2
  %t108 = load ptr, ptr %l7, !tbaa !29
  %t111 = call ptr @compiler_2ftyped_2eCopiedOf(ptr %v0, ptr %v2, ptr %v2, ptr %t107, ptr %t108)
  store ptr %t111, ptr %l68
  br label %bb40
bb40:
  %t112 = load ptr, ptr %l68, !tbaa !29
  store ptr %t112, ptr %l8, !tbaa !29
  %t113 = load ptr, ptr %l8, !tbaa !29
  %t115 = icmp eq ptr %t113, null
  %t117 = xor i1 %t115, true
  br i1 %t117, label %bb41, label %bb42
bb41:
  store %olang.scope zeroinitializer, ptr %s6
  %t119 = load ptr, ptr %l8, !tbaa !29
  %t121 = call ptr @compiler_2fcheck_2ereadPlace(ptr %v2, ptr %v2, ptr %t119)
  store ptr %t121, ptr %l73
  br label %bb43
bb42:
  br label %bb61
bb43:
  %t122 = load ptr, ptr %l73, !tbaa !29
  store ptr %t122, ptr %l9, !tbaa !29
  %t123 = load ptr, ptr %l9, !tbaa !29
  %t125 = icmp eq ptr %t123, null
  br i1 %t125, label %bb44, label %bb45
bb44:
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb45:
  br label %bb46
bb46:
  %t127 = load ptr, ptr %l9, !tbaa !29
  %t129 = call i64 @compiler_2fcheck_2ehandleRoot(ptr %v2, ptr %t127)
  store i64 %t129, ptr %l77
  br label %bb47
bb47:
  %t130 = load i64, ptr %l77, !tbaa !24
  store i64 %t130, ptr %l10, !tbaa !24
  %t131 = load ptr, ptr %l2, !tbaa !29
  %t133 = getelementptr %"compiler/typed:LocalUses", ptr %t131, i32 0, i32 7
  %t134 = load i64, ptr %l4, !tbaa !24
  %t137 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v2, ptr %t133, i64 %t134)
  store i1 %t137, ptr %l81
  br label %bb48
bb48:
  %t138 = load i1, ptr %l81, !tbaa !21
  br i1 %t138, label %bb49, label %bb50
bb49:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d10, i32 0, i32 1) }, ptr %l82, !tbaa !27
  br label %bb54
bb50:
  %t139 = load i1, ptr %l6, !tbaa !21
  br i1 %t139, label %bb51, label %bb52
bb51:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d11, i32 0, i32 1) }, ptr %l84, !tbaa !27
  br label %bb53
bb52:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d12, i32 0, i32 1) }, ptr %l84, !tbaa !27
  br label %bb53
bb53:
  %t141 = load { i64, ptr }, ptr %l84, !tbaa !27
  store { i64, ptr } %t141, ptr %l82, !tbaa !27
  br label %bb54
bb54:
  %t142 = load { i64, ptr }, ptr %l82, !tbaa !27
  %t143 = load ptr, ptr %l0, !tbaa !29
  store ptr %t143, ptr %l85, !tbaa !29
  %t144 = load ptr, ptr %l1, !tbaa !29
  store ptr %t144, ptr %l86, !tbaa !29
  store ptr %l5, ptr %l87, !tbaa !29
  %t145 = load i64, ptr %l3, !tbaa !24
  store i64 %t145, ptr %l88, !tbaa !24
  store { i64, ptr } %t142, ptr %l89, !tbaa !27
  %t147 = load i64, ptr %l10, !tbaa !24
  %t149 = icmp sge i64 %t147, 0
  br i1 %t149, label %bb55, label %bb56
bb55:
  %t151 = load ptr, ptr %l0, !tbaa !29
  store ptr %t151, ptr %l93, !tbaa !29
  %t152 = load ptr, ptr %l1, !tbaa !29
  %t154 = getelementptr %"compiler/typed:Body", ptr %t152, i32 0, i32 7
  %t155 = load i64, ptr %l10, !tbaa !24
  %t158 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v1, ptr %t154, i64 %t155)
  store %"compiler/typed:Local" %t158, ptr %l97
  br label %bb57
bb56:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d13, i32 0, i32 1) }, ptr %l92, !tbaa !27
  br label %bb59
bb57:
  %t159 = getelementptr %"compiler/typed:Local", ptr %l97, i32 0, i32 0
  %t160 = load i32, ptr %t159, !tbaa !23
  %t161 = load ptr, ptr %l93, !tbaa !29
  %t163 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s6, ptr %t161, i32 %t160)
  store { i64, ptr } %t163, ptr %l99
  br label %bb58
bb58:
  %t164 = load { i64, ptr }, ptr %l99, !tbaa !27
  store { i64, ptr } %t164, ptr %l92, !tbaa !27
  br label %bb59
bb59:
  %t165 = load ptr, ptr @__olang_prog_scope
  %t166 = load ptr, ptr %l85, !tbaa !29
  %t167 = load ptr, ptr %l86, !tbaa !29
  %t168 = load ptr, ptr %l87, !tbaa !29
  %t169 = load i64, ptr %l88, !tbaa !24
  %t170 = load { i64, ptr }, ptr %l89, !tbaa !27
  %t171 = load { i64, ptr }, ptr %l92, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehandleLine(ptr %v0, ptr %v1, ptr %s0, ptr %t165, ptr %s6, ptr %t166, ptr %t167, ptr %t168, i64 %t169, { i64, ptr } %t170, { i64, ptr } %t171)
  br label %bb60
bb60:
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb61:
  %t172 = load ptr, ptr %l7, !tbaa !29
  %t174 = call ptr @compiler_2fcheck_2ehandleCall(ptr %v2, ptr %v2, ptr %t172)
  store ptr %t174, ptr %l101
  br label %bb62
bb62:
  %t175 = load ptr, ptr %l101, !tbaa !29
  store ptr %t175, ptr %l12, !tbaa !29
  %t176 = load ptr, ptr %l12, !tbaa !29
  %t178 = icmp eq ptr %t176, null
  br i1 %t178, label %bb63, label %bb64
bb63:
  store i1 true, ptr %l104, !tbaa !21
  br label %bb66
bb64:
  %t180 = load ptr, ptr %l0, !tbaa !29
  %t181 = load ptr, ptr %l12, !tbaa !29
  %t184 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eviewCallee(ptr %v0, ptr %v2, ptr %t180, ptr %t181)
  store i1 %t184, ptr %l107
  br label %bb65
bb65:
  %t185 = load i1, ptr %l107, !tbaa !21
  %t186 = xor i1 %t185, true
  store i1 %t186, ptr %l104, !tbaa !21
  br label %bb66
bb66:
  %t188 = load i1, ptr %l104, !tbaa !21
  br i1 %t188, label %bb67, label %bb68
bb67:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb68:
  br label %bb69
bb69:
  %t189 = load ptr, ptr %l0, !tbaa !29
  %t190 = load ptr, ptr %l12, !tbaa !29
  %t193 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehandleCallee(ptr %v0, ptr %v2, ptr %s0, ptr %t189, ptr %t190)
  store { i64, ptr } %t193, ptr %l111
  br label %bb70
bb70:
  %t194 = load { i64, ptr }, ptr %l111, !tbaa !27
  store { i64, ptr } %t194, ptr %l13, !tbaa !27
  %t195 = load i1, ptr %l6, !tbaa !21
  br i1 %t195, label %bb71, label %bb72
bb71:
  store %olang.scope zeroinitializer, ptr %s9
  %t197 = load ptr, ptr %l0, !tbaa !29
  %t198 = load ptr, ptr %l1, !tbaa !29
  %t199 = load i64, ptr %l3, !tbaa !24
  %t200 = load { i64, ptr }, ptr %l13, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehandleLine(ptr %v0, ptr %v1, ptr %s0, ptr %s9, ptr %s0, ptr %t197, ptr %t198, ptr %l5, i64 %t199, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d14, i32 0, i32 1) }, { i64, ptr } %t200)
  br label %bb73
bb72:
  store %olang.scope zeroinitializer, ptr %s10
  %t206 = load ptr, ptr %l2, !tbaa !29
  %t208 = getelementptr %"compiler/typed:LocalUses", ptr %t206, i32 0, i32 7
  %t209 = load i64, ptr %l4, !tbaa !24
  %t212 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v2, ptr %t208, i64 %t209)
  store i1 %t212, ptr %l121
  br label %bb74
bb73:
  call void @__olang_scope_close(ptr %s9)
  br label %bb87
bb74:
  %t213 = load i1, ptr %l121, !tbaa !21
  %t214 = xor i1 %t213, true
  br i1 %t214, label %bb75, label %bb76
bb75:
  %t216 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t218 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s10, { i64, ptr } %t216, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d15, i32 0, i32 1) })
  store i1 %t218, ptr %l125
  br label %bb77
bb76:
  store i1 false, ptr %l123, !tbaa !21
  br label %bb82
bb77:
  %t219 = load i1, ptr %l125, !tbaa !21
  br i1 %t219, label %bb78, label %bb79
bb78:
  store i1 true, ptr %l126, !tbaa !21
  br label %bb81
bb79:
  %t220 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t222 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s10, { i64, ptr } %t220, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d16, i32 0, i32 1) })
  store i1 %t222, ptr %l128
  br label %bb80
bb80:
  %t223 = load i1, ptr %l128, !tbaa !21
  store i1 %t223, ptr %l126, !tbaa !21
  br label %bb81
bb81:
  %t224 = load i1, ptr %l126, !tbaa !21
  store i1 %t224, ptr %l123, !tbaa !21
  br label %bb82
bb82:
  %t225 = load i1, ptr %l123, !tbaa !21
  br i1 %t225, label %bb83, label %bb84
bb83:
  store %olang.scope zeroinitializer, ptr %s11
  %t226 = load ptr, ptr %l0, !tbaa !29
  %t227 = load ptr, ptr %l1, !tbaa !29
  %t228 = load i64, ptr %l3, !tbaa !24
  %t229 = load { i64, ptr }, ptr %l13, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehandleLine(ptr %v0, ptr %v1, ptr %s0, ptr %s11, ptr %s0, ptr %t226, ptr %t227, ptr %l5, i64 %t228, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d17, i32 0, i32 1) }, { i64, ptr } %t229)
  br label %bb85
bb84:
  br label %bb86
bb85:
  call void @__olang_scope_close(ptr %s11)
  br label %bb86
bb86:
  call void @__olang_scope_close(ptr %s10)
  br label %bb87
bb87:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eheldFirst(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca ptr
  %l5 = alloca %"compiler/source:Span"
  %l8 = alloca i32
  %l11 = alloca i64
  %l12 = alloca ptr
  %l14 = alloca %"compiler/source:Span"
  %l21 = alloca ptr
  %l23 = alloca %"compiler/source:Span"
  %l25 = alloca ptr
  %rv = alloca ptr
  %t9 = alloca { i64, [1 x i64] }, align 8
  %t28 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l3, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t4 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t2)
  store %"compiler/source:Span" %t4, ptr %l5
  br label %bb1
bb1:
  %t5 = load ptr, ptr %l1, !tbaa !29
  %t8 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t5)
  store i32 %t8, ptr %l8
  br label %bb2
bb2:
  store { i64, [1 x i64] } zeroinitializer, ptr %t9
  %t10 = getelementptr { i64, [1 x i64] }, ptr %t9, i32 0, i32 0
  store i64 0, ptr %t10
  %t11 = load { i64, [1 x i64] }, ptr %t9
  %t12 = load ptr, ptr %l3, !tbaa !29
  %t13 = load %"compiler/source:Span", ptr %l5
  %t14 = load i32, ptr %l8, !tbaa !23
  %t17 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocal(ptr %v0, ptr %t12, i32 0, %"compiler/source:Span" %t13, i32 %t14, i32 2, { i64, [1 x i64] } %t11)
  store i64 %t17, ptr %l11
  br label %bb3
bb3:
  %t18 = load i64, ptr %l11, !tbaa !24
  store i64 %t18, ptr %l2, !tbaa !24
  %t19 = load ptr, ptr %l0, !tbaa !29
  store ptr %t19, ptr %l12, !tbaa !29
  %t20 = load ptr, ptr %l1, !tbaa !29
  %t22 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t20)
  store %"compiler/source:Span" %t22, ptr %l14
  br label %bb4
bb4:
  %t23 = load i64, ptr %l2, !tbaa !24
  %t25 = trunc i64 %t23 to i32
  %t27 = load ptr, ptr %l1, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t28
  %t29 = getelementptr { i64, [3 x i64] }, ptr %t28, i32 0, i32 0
  store i64 0, ptr %t29
  %t30 = load %"compiler/source:Span", ptr %l14
  %t31 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t30, 0
  %t33 = insertvalue { %"compiler/source:Span", i32, ptr } %t31, i32 %t25, 1
  %t35 = insertvalue { %"compiler/source:Span", i32, ptr } %t33, ptr %t27, 2
  %t36 = getelementptr { i64, [3 x i64] }, ptr %t28, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t35, ptr %t36
  %t37 = load { i64, [3 x i64] }, ptr %t28
  %t39 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t37, ptr %t39
  %t40 = load ptr, ptr %l12, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t40, ptr %t39)
  br label %bb5
bb5:
  %t42 = load ptr, ptr %l0, !tbaa !29
  store ptr %t42, ptr %l21, !tbaa !29
  %t43 = load ptr, ptr %l1, !tbaa !29
  %t45 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t43)
  store %"compiler/source:Span" %t45, ptr %l23
  br label %bb6
bb6:
  %t46 = load i64, ptr %l2, !tbaa !24
  %t47 = load ptr, ptr %l21, !tbaa !29
  %t48 = load %"compiler/source:Span", ptr %l23
  %t50 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v2, ptr %t47, %"compiler/source:Span" %t48, i64 %t46)
  store ptr %t50, ptr %l25
  br label %bb7
bb7:
  %t51 = load ptr, ptr %l25, !tbaa !29
  store ptr %t51, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eholeFits(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l12 = alloca i1
  %l13 = alloca i1
  %l17 = alloca i1
  %l21 = alloca ptr
  %l24 = alloca i32
  %l27 = alloca i32
  %l28 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l1, !tbaa !23
  %t2 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t5 = icmp eq i32 %t1, %t2
  br i1 %t5, label %bb1, label %bb2
bb1:
  store i1 false, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/check:Checker", ptr %t8, i32 0, i32 1
  %t11 = load ptr, ptr %t10, !tbaa !29
  %t13 = getelementptr %"compiler/generic:Program", ptr %t11, i32 0, i32 2
  %t14 = load i32, ptr %l1, !tbaa !23
  %t15 = load i32, ptr %l2, !tbaa !23
  %t19 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t13, i32 %t14, i32 %t15)
  store i1 %t19, ptr %l12
  br label %bb4
bb4:
  %t20 = load i1, ptr %l12, !tbaa !21
  br i1 %t20, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l13, !tbaa !21
  br label %bb8
bb6:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = load i32, ptr %l1, !tbaa !23
  %t23 = load i32, ptr %l2, !tbaa !23
  %t27 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eflowsInto(ptr %v0, ptr %t21, i32 %t22, i32 %t23)
  store i1 %t27, ptr %l17
  br label %bb7
bb7:
  %t28 = load i1, ptr %l17, !tbaa !21
  store i1 %t28, ptr %l13, !tbaa !21
  br label %bb8
bb8:
  %t29 = load i1, ptr %l13, !tbaa !21
  br i1 %t29, label %bb9, label %bb10
bb9:
  store i1 true, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/check:Checker", ptr %t31, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !29
  %t36 = getelementptr %"compiler/generic:Program", ptr %t34, i32 0, i32 2
  store ptr %t36, ptr %l21, !tbaa !29
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load i32, ptr %l1, !tbaa !23
  %t41 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t37, i32 %t38)
  store i32 %t41, ptr %l24
  br label %bb12
bb12:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load i32, ptr %l2, !tbaa !23
  %t46 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t42, i32 %t43)
  store i32 %t46, ptr %l27
  br label %bb13
bb13:
  %t47 = load ptr, ptr %l21, !tbaa !29
  %t48 = load i32, ptr %l24, !tbaa !23
  %t49 = load i32, ptr %l27, !tbaa !23
  %t50 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t47, i32 %t48, i32 %t49)
  store i1 %t50, ptr %l28
  br label %bb14
bb14:
  %t51 = load i1, ptr %l28, !tbaa !21
  store i1 %t51, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisArrayCtor(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca i1
  %l17 = alloca ptr
  %l18 = alloca i1
  %l25 = alloca { i64, ptr }
  %l26 = alloca i1
  %s3 = alloca %olang.scope
  %rv = alloca i1
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
  %t8 = icmp eq i64 %t6, 13
  store i1 %t8, ptr %l6, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l6, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t12, i32 0, i32 1
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [4 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t18, i32 0, i32 2
  %t20 = load { i64, ptr }, ptr %t19
  store { i64, ptr } %t20, ptr %l3, !tbaa !27
  br label %bb5
bb4:
  br label %bb21
bb5:
  %t22 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t24 = extractvalue { i64, ptr } %t22, 0
  %t26 = icmp ne i64 %t24, 1
  br i1 %t26, label %bb6, label %bb7
bb6:
  store i1 false, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t29 = load ptr, ptr %l2, !tbaa !29
  store ptr %t29, ptr %l17, !tbaa !29
  store i1 false, ptr %l18, !tbaa !21
  %t30 = load ptr, ptr %l17, !tbaa !29
  %t31 = icmp ne ptr %t30, null
  br i1 %t31, label %bb9, label %bb10
bb9:
  %t33 = load ptr, ptr %l17, !tbaa !29
  %t34 = load i64, ptr %t33, !range !{i64 0, i64 30}
  %t36 = icmp eq i64 %t34, 0
  store i1 %t36, ptr %l18, !tbaa !21
  br label %bb10
bb10:
  %t37 = load i1, ptr %l18, !tbaa !21
  br i1 %t37, label %bb11, label %bb12
bb11:
  %t38 = load ptr, ptr %l2, !tbaa !29
  %t40 = getelementptr { i64, [4 x i64] }, ptr %t38, i32 0, i32 1
  %t41 = getelementptr { %"compiler/source:Span", i32 }, ptr %t40, i32 0, i32 1
  %t42 = load i32, ptr %t41
  store i32 %t42, ptr %l4, !tbaa !23
  br label %bb13
bb12:
  br label %bb16
bb13:
  store %olang.scope zeroinitializer, ptr %s3
  %t45 = load i32, ptr %l4, !tbaa !23
  %t48 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %a0, i32 %t45)
  store { i64, ptr } %t48, ptr %l25
  br label %bb14
bb14:
  %t49 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t50 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s3, { i64, ptr } %t49, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d18, i32 0, i32 1) })
  store i1 %t50, ptr %l26
  br label %bb15
bb15:
  call void @__olang_scope_close(ptr %s3)
  %t51 = load i1, ptr %l26, !tbaa !21
  store i1 %t51, ptr %rv
  br label %ret
bb16:
  br i1 true, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  store i1 false, ptr %rv
  br label %ret
bb20:
  call void @__olang_check_failed(ptr @olang_loc_aec4d07a8c55eb24_c1f86bfc15f940a8)
  unreachable
bb21:
  br i1 true, label %bb22, label %bb23
bb22:
  br label %bb24
bb23:
  br label %bb25
bb24:
  store i1 false, ptr %rv
  br label %ret
bb25:
  call void @__olang_check_failed(ptr @olang_loc_f7ce27c314005a15_bac367b114faff79)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elambdaErrs(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca ptr
  %l12 = alloca ptr
  %l13 = alloca i1
  %l22 = alloca ptr
  %l23 = alloca i1
  %l32 = alloca i32
  %l41 = alloca ptr
  %l42 = alloca ptr
  %l45 = alloca ptr
  %l51 = alloca i32
  %l57 = alloca i32
  %l58 = alloca i32
  %l64 = alloca i32
  %l65 = alloca i32
  %l68 = alloca ptr
  %l69 = alloca i32
  %l74 = alloca i32
  %l79 = alloca i32
  %l80 = alloca i32
  %l85 = alloca i32
  %l90 = alloca i64
  %l91 = alloca i32
  %rv = alloca ptr
  %t193 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l1, !tbaa !29
  store ptr %t5, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t7 = load ptr, ptr %l1, !tbaa !29
  store ptr %t7, ptr %l12, !tbaa !29
  store i1 false, ptr %l13, !tbaa !21
  %t8 = load ptr, ptr %l12, !tbaa !29
  %t9 = icmp ne ptr %t8, null
  br i1 %t9, label %bb4, label %bb5
bb4:
  %t11 = load ptr, ptr %l12, !tbaa !29
  %t12 = load i64, ptr %t11, !range !{i64 0, i64 18}
  %t14 = icmp eq i64 %t12, 15
  store i1 %t14, ptr %l13, !tbaa !21
  br label %bb5
bb5:
  %t15 = load i1, ptr %l13, !tbaa !21
  br i1 %t15, label %bb6, label %bb7
bb6:
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [5 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t18, i32 0, i32 0
  %t20 = load %"compiler/source:Span", ptr %t19
  store %"compiler/source:Span" %t20, ptr %l3
  %t22 = load ptr, ptr %l1, !tbaa !29
  %t24 = getelementptr { i64, [5 x i64] }, ptr %t22, i32 0, i32 1
  %t25 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t24, i32 0, i32 1
  %t26 = load i32, ptr %t25
  store i32 %t26, ptr %l4, !tbaa !23
  %t28 = load ptr, ptr %l1, !tbaa !29
  %t30 = getelementptr { i64, [5 x i64] }, ptr %t28, i32 0, i32 1
  %t31 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t30, i32 0, i32 2
  %t32 = load ptr, ptr %t31
  store ptr %t32, ptr %l5, !tbaa !29
  br label %bb8
bb7:
  br label %bb33
bb8:
  %t34 = load ptr, ptr %l5, !tbaa !29
  store ptr %t34, ptr %l22, !tbaa !29
  store i1 false, ptr %l23, !tbaa !21
  %t35 = load ptr, ptr %l22, !tbaa !29
  %t36 = icmp ne ptr %t35, null
  br i1 %t36, label %bb9, label %bb10
bb9:
  %t38 = load ptr, ptr %l22, !tbaa !29
  %t39 = load i64, ptr %t38, !range !{i64 0, i64 3}
  %t41 = icmp eq i64 %t39, 1
  store i1 %t41, ptr %l23, !tbaa !21
  br label %bb10
bb10:
  %t42 = load i1, ptr %l23, !tbaa !21
  br i1 %t42, label %bb11, label %bb12
bb11:
  %t43 = load ptr, ptr %l5, !tbaa !29
  %t45 = getelementptr { i64, [4 x i64] }, ptr %t43, i32 0, i32 1
  %t46 = getelementptr { i32, { i64, ptr }, i32 }, ptr %t45, i32 0, i32 0
  %t47 = load i32, ptr %t46
  store i32 %t47, ptr %l6, !tbaa !23
  br label %bb13
bb12:
  br label %bb28
bb13:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/check:Checker", ptr %t49, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !29
  %t54 = getelementptr %"compiler/generic:Program", ptr %t52, i32 0, i32 2
  %t55 = load i32, ptr %l4, !tbaa !23
  %t58 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t54, i32 %t55)
  store i32 %t58, ptr %l32
  br label %bb14
bb14:
  %t59 = load i32, ptr %l2, !tbaa !23
  %t60 = load i32, ptr %l32, !tbaa !23
  %t62 = icmp eq i32 %t60, %t59
  br i1 %t62, label %bb15, label %bb16
bb15:
  %t64 = load ptr, ptr %l1, !tbaa !29
  store ptr %t64, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr %"compiler/check:Checker", ptr %t67, i32 0, i32 14
  %t70 = load i32, ptr %l6, !tbaa !23
  %t72 = sext i32 %t70 to i64
  %t75 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t69, i64 %t72)
  store ptr %t75, ptr %l41
  br label %bb18
bb18:
  %t76 = load ptr, ptr %l41, !tbaa !29
  store ptr %t76, ptr %l7, !tbaa !29
  %t77 = load ptr, ptr %l7, !tbaa !29
  store ptr %t77, ptr %l42, !tbaa !29
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t80 = getelementptr %"compiler/check:Checker", ptr %t78, i32 0, i32 1
  %t81 = load ptr, ptr %t80, !tbaa !29
  %t83 = getelementptr %"compiler/generic:Program", ptr %t81, i32 0, i32 2
  store ptr %t83, ptr %l45, !tbaa !29
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t86 = getelementptr %"compiler/check:Checker", ptr %t84, i32 0, i32 1
  %t87 = load ptr, ptr %t86, !tbaa !29
  %t89 = getelementptr %"compiler/generic:Program", ptr %t87, i32 0, i32 2
  %t90 = load ptr, ptr %l7, !tbaa !29
  %t92 = getelementptr %"compiler/typed:Body", ptr %t90, i32 0, i32 2
  %t93 = load i32, ptr %t92, !tbaa !23
  %t96 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t89, i32 %t93)
  store i32 %t96, ptr %l51
  br label %bb19
bb19:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t99 = getelementptr %"compiler/check:Checker", ptr %t97, i32 0, i32 1
  %t100 = load ptr, ptr %t99, !tbaa !29
  %t102 = getelementptr %"compiler/generic:Program", ptr %t100, i32 0, i32 2
  %t103 = load ptr, ptr %l7, !tbaa !29
  %t105 = getelementptr %"compiler/typed:Body", ptr %t103, i32 0, i32 2
  %t106 = load i32, ptr %t105, !tbaa !23
  %t109 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t102, i32 %t106)
  store i32 %t109, ptr %l57
  br label %bb20
bb20:
  %t110 = load i32, ptr %l2, !tbaa !23
  store i32 %t110, ptr %l58, !tbaa !23
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t113 = getelementptr %"compiler/check:Checker", ptr %t111, i32 0, i32 1
  %t114 = load ptr, ptr %t113, !tbaa !29
  %t116 = getelementptr %"compiler/generic:Program", ptr %t114, i32 0, i32 2
  %t117 = load ptr, ptr %l7, !tbaa !29
  %t119 = getelementptr %"compiler/typed:Body", ptr %t117, i32 0, i32 2
  %t120 = load i32, ptr %t119, !tbaa !23
  %t123 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopesOf(ptr %v0, ptr %t116, i32 %t120)
  store i32 %t123, ptr %l64
  br label %bb21
bb21:
  %t124 = load ptr, ptr %l45, !tbaa !29
  %t125 = load i32, ptr %l51, !tbaa !23
  %t126 = load i32, ptr %l57, !tbaa !23
  %t127 = load i32, ptr %l58, !tbaa !23
  %t128 = load i32, ptr %l64, !tbaa !23
  %t129 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %t124, i32 %t125, i32 %t126, i32 %t127, i32 %t128, i64 0, i1 false, i32 0, i64 0)
  store i32 %t129, ptr %l65
  br label %bb22
bb22:
  %t130 = load i32, ptr %l65, !tbaa !23
  %t131 = load ptr, ptr %l42, !tbaa !29
  %t132 = getelementptr %"compiler/typed:Body", ptr %t131, i32 0, i32 2
  store i32 %t130, ptr %t132, !tbaa !23
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t135 = getelementptr %"compiler/check:Checker", ptr %t133, i32 0, i32 1
  %t136 = load ptr, ptr %t135, !tbaa !29
  %t138 = getelementptr %"compiler/generic:Program", ptr %t136, i32 0, i32 2
  store ptr %t138, ptr %l68, !tbaa !29
  %t139 = load i32, ptr %l4, !tbaa !23
  store i32 %t139, ptr %l69, !tbaa !23
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t142 = getelementptr %"compiler/check:Checker", ptr %t140, i32 0, i32 1
  %t143 = load ptr, ptr %t142, !tbaa !29
  %t145 = getelementptr %"compiler/generic:Program", ptr %t143, i32 0, i32 2
  %t146 = load i32, ptr %l4, !tbaa !23
  %t149 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t145, i32 %t146)
  store i32 %t149, ptr %l74
  br label %bb23
bb23:
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t152 = getelementptr %"compiler/check:Checker", ptr %t150, i32 0, i32 1
  %t153 = load ptr, ptr %t152, !tbaa !29
  %t155 = getelementptr %"compiler/generic:Program", ptr %t153, i32 0, i32 2
  %t156 = load i32, ptr %l4, !tbaa !23
  %t159 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t155, i32 %t156)
  store i32 %t159, ptr %l79
  br label %bb24
bb24:
  %t160 = load i32, ptr %l2, !tbaa !23
  store i32 %t160, ptr %l80, !tbaa !23
  %t161 = load ptr, ptr %l0, !tbaa !29
  %t163 = getelementptr %"compiler/check:Checker", ptr %t161, i32 0, i32 1
  %t164 = load ptr, ptr %t163, !tbaa !29
  %t166 = getelementptr %"compiler/generic:Program", ptr %t164, i32 0, i32 2
  %t167 = load i32, ptr %l4, !tbaa !23
  %t170 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopesOf(ptr %v0, ptr %t166, i32 %t167)
  store i32 %t170, ptr %l85
  br label %bb25
bb25:
  %t171 = load ptr, ptr %l0, !tbaa !29
  %t173 = getelementptr %"compiler/check:Checker", ptr %t171, i32 0, i32 1
  %t174 = load ptr, ptr %t173, !tbaa !29
  %t176 = getelementptr %"compiler/generic:Program", ptr %t174, i32 0, i32 2
  %t177 = load i32, ptr %l4, !tbaa !23
  %t180 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNamesIdOf(ptr %v0, ptr %t176, i32 %t177)
  store i64 %t180, ptr %l90
  br label %bb26
bb26:
  %t181 = load ptr, ptr %l68, !tbaa !29
  %t182 = load i32, ptr %l69, !tbaa !23
  %t183 = load i32, ptr %l74, !tbaa !23
  %t184 = load i32, ptr %l79, !tbaa !23
  %t185 = load i32, ptr %l80, !tbaa !23
  %t186 = load i32, ptr %l85, !tbaa !23
  %t187 = load i64, ptr %l90, !tbaa !24
  %t188 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRefunc(ptr %v0, ptr %t181, i32 %t182, i32 %t183, i32 %t184, i32 %t185, i32 %t186, i64 %t187)
  store i32 %t188, ptr %l91
  br label %bb27
bb27:
  %t189 = load i32, ptr %l91, !tbaa !23
  %t190 = load %"compiler/source:Span", ptr %l3
  %t192 = load ptr, ptr %l5, !tbaa !29
  store { i64, [5 x i64] } zeroinitializer, ptr %t193
  %t194 = getelementptr { i64, [5 x i64] }, ptr %t193, i32 0, i32 0
  store i64 15, ptr %t194
  %t196 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t190, 0
  %t198 = insertvalue { %"compiler/source:Span", i32, ptr } %t196, i32 %t189, 1
  %t200 = insertvalue { %"compiler/source:Span", i32, ptr } %t198, ptr %t192, 2
  %t201 = getelementptr { i64, [5 x i64] }, ptr %t193, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t200, ptr %t201
  %t202 = load { i64, [5 x i64] }, ptr %t193
  %t204 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t202, ptr %t204
  store ptr %t204, ptr %rv
  br label %ret
bb28:
  br i1 true, label %bb29, label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb32
bb31:
  %t206 = load ptr, ptr %l1, !tbaa !29
  store ptr %t206, ptr %rv
  br label %ret
bb32:
  call void @__olang_check_failed(ptr @olang_loc_24473ecab934ff5a_e5063e673d38f936)
  unreachable
bb33:
  br i1 true, label %bb34, label %bb35
bb34:
  br label %bb36
bb35:
  br label %bb37
bb36:
  %t209 = load ptr, ptr %l1, !tbaa !29
  store ptr %t209, ptr %rv
  br label %ret
bb37:
  call void @__olang_check_failed(ptr @olang_loc_1dc6773449e59e5b_c7fcef2f52138cd7)
  unreachable
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eorderModule(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca { i64, [2 x i64] }
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l19 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l20 = alloca ptr
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca ptr
  %l24 = alloca i64
  %l26 = alloca { i64, ptr }
  %l27 = alloca i64
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca i64
  %l31 = alloca i64
  %l32 = alloca i64
  %l33 = alloca i64
  %l34 = alloca i64
  %l35 = alloca i1
  %l36 = alloca i64
  %l37 = alloca i64
  %l38 = alloca i64
  %l39 = alloca i64
  %l40 = alloca i64
  %l41 = alloca i64
  %l42 = alloca i64
  %l43 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l44 = alloca i64
  %l45 = alloca i64
  %l46 = alloca i64
  %l47 = alloca i64
  %l48 = alloca i64
  %l49 = alloca i64
  %l50 = alloca i64
  %l51 = alloca i64
  %l52 = alloca i64
  %l53 = alloca i64
  %l54 = alloca i64
  %l55 = alloca i64
  %l56 = alloca i64
  %l57 = alloca i64
  %l58 = alloca i64
  %l59 = alloca i64
  %l60 = alloca i64
  %l61 = alloca i64
  %l62 = alloca i64
  %l63 = alloca i64
  %l64 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l65 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l68 = alloca i64
  %l70 = alloca i64
  %l75 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l79 = alloca i64
  %l83 = alloca i64
  %l84 = alloca i32
  %l87 = alloca i1
  %l91 = alloca ptr
  %l95 = alloca i1
  %l98 = alloca i1
  %l99 = alloca ptr
  %l100 = alloca i64
  %l102 = alloca i64
  %l109 = alloca i64
  %l113 = alloca i64
  %l116 = alloca i64
  %l137 = alloca ptr
  %l146 = alloca i1
  %l150 = alloca ptr
  %l155 = alloca i1
  %l158 = alloca i1
  %l160 = alloca ptr
  %l161 = alloca i64
  %l163 = alloca i64
  %l169 = alloca i64
  %l170 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l171 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l173 = alloca i64
  %l175 = alloca i64
  %l180 = alloca i64
  %l181 = alloca ptr
  %l183 = alloca i64
  %l187 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l189 = alloca i64
  %l191 = alloca i64
  %l196 = alloca i64
  %l197 = alloca ptr
  %l198 = alloca i64
  %l201 = alloca i64
  %l202 = alloca i32
  %l207 = alloca ptr
  %l209 = alloca i64
  %l210 = alloca i64
  %l221 = alloca i64
  %l224 = alloca i64
  %l246 = alloca i64
  %l250 = alloca i64
  %l254 = alloca i64
  %l257 = alloca i64
  %l277 = alloca i64
  %l279 = alloca i1
  %l282 = alloca i64
  %l294 = alloca ptr
  %l297 = alloca i64
  %l305 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l306 = alloca i64
  %l309 = alloca i64
  %l310 = alloca i32
  %l319 = alloca i64
  %l323 = alloca i64
  %l326 = alloca i64
  %l346 = alloca i64
  %l347 = alloca ptr
  %l348 = alloca ptr
  %l351 = alloca i64
  %l352 = alloca i64
  %l361 = alloca i64
  %l365 = alloca i64
  %l369 = alloca i64
  %l372 = alloca i64
  %l392 = alloca i1
  %l395 = alloca i64
  %l397 = alloca i1
  %l400 = alloca i64
  %l405 = alloca i64
  %l414 = alloca i64
  %l417 = alloca i64
  %l438 = alloca ptr
  %l441 = alloca i64
  %s0 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %s18 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l64
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l64
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l3
  %t3 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t3, ptr %l65
  br label %bb2
bb2:
  %t4 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l65
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t4, ptr %l4
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/check:Checker", ptr %t5, i32 0, i32 29
  store ptr %t7, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb3
bb3:
  %t9 = load i64, ptr %l6, !tbaa !24
  store i64 %t9, ptr %l68, !tbaa !24
  %t10 = load ptr, ptr %l5, !tbaa !29
  %t12 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_Hda4ef06466535e66801340e999dad217(ptr %v0, ptr %t10)
  store i64 %t12, ptr %l70
  br label %bb4
bb4:
  %t13 = load i64, ptr %l68, !tbaa !24
  %t14 = load i64, ptr %l70, !tbaa !24
  %t15 = icmp slt i64 %t13, %t14
  %t17 = xor i1 %t15, true
  br i1 %t17, label %bb5, label %bb6
bb5:
  br label %bb31
bb6:
  br label %bb7
bb7:
  %t19 = load ptr, ptr %l5, !tbaa !29
  %t20 = load i64, ptr %l6, !tbaa !24
  %t23 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_H87a29777ccf22aa2985fa9d3c61f9cd3(ptr %v0, ptr %t19, i64 %t20)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t23, ptr %l75
  br label %bb8
bb8:
  %t24 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l75
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t24, ptr %l7
  %t25 = getelementptr %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l7, i32 0, i32 0
  %t26 = load i64, ptr %t25, !tbaa !24
  %t27 = load i64, ptr %l1, !tbaa !24
  %t30 = icmp ne i64 %t26, %t27
  br i1 %t30, label %bb9, label %bb10
bb9:
  br label %bb30
bb10:
  br label %bb11
bb11:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/check:Checker", ptr %t32, i32 0, i32 27
  %t35 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l7
  %t38 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H5696e1a008d256bf9453cde2b49c6c45(ptr %v0, ptr %t34, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t35)
  %t39 = extractvalue { i32, i64 } %t38, 1
  %t40 = extractvalue { i32, i64 } %t38, 0
  store i32 %t40, ptr %l84
  %t41 = icmp ne i32 %t40, 0
  br i1 %t41, label %bb13, label %ok.42, !prof !99
ok.42:
  store i64 %t39, ptr %l83
  br label %bb12
bb12:
  %t43 = load i64, ptr %l83, !tbaa !24
  store i64 %t43, ptr %l79, !tbaa !24
  br label %bb15
bb13:
  br label %bb14
bb14:
  store i64 -1, ptr %l79, !tbaa !24
  br label %bb15
bb15:
  %t44 = load i64, ptr %l79, !tbaa !24
  store i64 %t44, ptr %l8, !tbaa !24
  %t45 = load i64, ptr %l8, !tbaa !24
  %t47 = icmp slt i64 %t45, 0
  br i1 %t47, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l87, !tbaa !21
  br label %bb19
bb17:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/check:Checker", ptr %t49, i32 0, i32 14
  %t52 = load i64, ptr %l8, !tbaa !24
  %t55 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t51, i64 %t52)
  store ptr %t55, ptr %l91
  br label %bb18
bb18:
  %t56 = load ptr, ptr %l91, !tbaa !29
  %t58 = getelementptr %"compiler/typed:Body", ptr %t56, i32 0, i32 11
  %t59 = load ptr, ptr %t58, !tbaa !29
  %t61 = icmp eq ptr %t59, null
  store i1 %t61, ptr %l87, !tbaa !21
  br label %bb19
bb19:
  %t63 = load i1, ptr %l87, !tbaa !21
  br i1 %t63, label %bb20, label %bb21
bb20:
  store i1 true, ptr %l95, !tbaa !21
  br label %bb23
bb21:
  %t64 = load i64, ptr %l8, !tbaa !24
  %t67 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %s0, ptr %l4, i64 %t64)
  store i1 %t67, ptr %l98
  br label %bb22
bb22:
  %t68 = load i1, ptr %l98, !tbaa !21
  store i1 %t68, ptr %l95, !tbaa !21
  br label %bb23
bb23:
  %t69 = load i1, ptr %l95, !tbaa !21
  br i1 %t69, label %bb24, label %bb25
bb24:
  br label %bb30
bb25:
  br label %bb26
bb26:
  store ptr %l4, ptr %l99, !tbaa !29
  %t70 = load i64, ptr %l8, !tbaa !24
  store i64 %t70, ptr %l100, !tbaa !24
  %t72 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l3)
  store i64 %t72, ptr %l102
  br label %bb27
bb27:
  %t73 = load ptr, ptr %l99, !tbaa !29
  %t74 = load i64, ptr %l100, !tbaa !24
  %t75 = load i64, ptr %l102, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %s0, ptr %t73, i64 %t74, i64 %t75)
  br label %bb28
bb28:
  %t76 = load i64, ptr %l8, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l3, i64 %t76)
  br label %bb29
bb29:
  br label %bb30
bb30:
  %t79 = load i64, ptr %l6, !tbaa !24
  %t81 = add i64 %t79, 1
  store i64 %t81, ptr %l6, !tbaa !24
  br label %bb3
bb31:
  store i64 0, ptr %l9, !tbaa !24
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr %"compiler/check:Checker", ptr %t83, i32 0, i32 14
  %t87 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t85)
  store i64 %t87, ptr %l109
  br label %bb32
bb32:
  %t88 = load i64, ptr %l109, !tbaa !24
  store i64 %t88, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t89 = load i64, ptr %l10, !tbaa !24
  %t90 = load i64, ptr %l9, !tbaa !24
  %t93 = icmp sgt i64 %t89, %t90
  br i1 %t93, label %bb33, label %bb34
bb33:
  %t95 = load i64, ptr %l11, !tbaa !24
  %t97 = icmp sgt i64 %t95, 0
  br i1 %t97, label %bb35, label %bb36
bb34:
  store i64 0, ptr %l113, !tbaa !24
  br label %bb38
bb35:
  %t99 = load i64, ptr %l10, !tbaa !24
  %t100 = load i64, ptr %l9, !tbaa !24
  %t103 = sub i64 %t99, %t100
  %t104 = load i64, ptr %l11, !tbaa !24
  %t107 = add i64 %t103, %t104
  %t109 = sub i64 %t107, 1
  %t110 = load i64, ptr %l11, !tbaa !24
  %t113 = sdiv i64 %t109, %t110
  store i64 %t113, ptr %l116, !tbaa !24
  br label %bb37
bb36:
  store i64 0, ptr %l116, !tbaa !24
  br label %bb37
bb37:
  %t115 = load i64, ptr %l116, !tbaa !24
  store i64 %t115, ptr %l113, !tbaa !24
  br label %bb38
bb38:
  %t116 = load i64, ptr %l113, !tbaa !24
  store i64 %t116, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb39
bb39:
  %t117 = load i64, ptr %l13, !tbaa !24
  %t118 = load i64, ptr %l12, !tbaa !24
  %t121 = icmp slt i64 %t117, %t118
  %t123 = xor i1 %t121, true
  br i1 %t123, label %bb40, label %bb41
bb40:
  br label %bb68
bb41:
  br label %bb42
bb42:
  %t125 = load i64, ptr %l9, !tbaa !24
  %t126 = load i64, ptr %l13, !tbaa !24
  %t127 = load i64, ptr %l11, !tbaa !24
  %t130 = mul i64 %t126, %t127
  %t133 = add i64 %t125, %t130
  store i64 %t133, ptr %l14, !tbaa !24
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t137 = getelementptr %"compiler/check:Checker", ptr %t135, i32 0, i32 14
  %t138 = load i64, ptr %l14, !tbaa !24
  %t141 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t137, i64 %t138)
  store ptr %t141, ptr %l137
  br label %bb43
bb43:
  %t142 = load ptr, ptr %l137, !tbaa !29
  %t144 = getelementptr %"compiler/typed:Body", ptr %t142, i32 0, i32 1
  %t145 = load { i64, [2 x i64] }, ptr %t144
  store { i64, [2 x i64] } %t145, ptr %l15
  %t147 = load { i64, [2 x i64] }, ptr %l15
  %t149 = extractvalue { i64, [2 x i64] } %t147, 0
  %t150 = icmp eq i64 %t149, 6
  br i1 %t150, label %bb44, label %bb45
bb44:
  %t152 = getelementptr { i64, [2 x i64] }, ptr %l15, i32 0, i32 1
  %t153 = getelementptr { i64, i32 }, ptr %t152, i32 0, i32 0
  %t154 = load i64, ptr %t153
  store i64 %t154, ptr %l16, !tbaa !24
  br label %bb46
bb45:
  br label %bb61
bb46:
  %t156 = load i64, ptr %l16, !tbaa !24
  %t157 = load i64, ptr %l1, !tbaa !24
  %t160 = icmp eq i64 %t156, %t157
  br i1 %t160, label %bb47, label %bb48
bb47:
  %t162 = load ptr, ptr %l0, !tbaa !29
  %t164 = getelementptr %"compiler/check:Checker", ptr %t162, i32 0, i32 14
  %t165 = load i64, ptr %l14, !tbaa !24
  %t168 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t164, i64 %t165)
  store ptr %t168, ptr %l150
  br label %bb49
bb48:
  store i1 false, ptr %l146, !tbaa !21
  br label %bb50
bb49:
  %t169 = load ptr, ptr %l150, !tbaa !29
  %t171 = getelementptr %"compiler/typed:Body", ptr %t169, i32 0, i32 11
  %t172 = load ptr, ptr %t171, !tbaa !29
  %t174 = icmp eq ptr %t172, null
  %t176 = xor i1 %t174, true
  store i1 %t176, ptr %l146, !tbaa !21
  br label %bb50
bb50:
  %t178 = load i1, ptr %l146, !tbaa !21
  br i1 %t178, label %bb51, label %bb52
bb51:
  %t179 = load i64, ptr %l14, !tbaa !24
  %t182 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %s0, ptr %l4, i64 %t179)
  store i1 %t182, ptr %l158
  br label %bb53
bb52:
  store i1 false, ptr %l155, !tbaa !21
  br label %bb54
bb53:
  %t183 = load i1, ptr %l158, !tbaa !21
  %t184 = xor i1 %t183, true
  store i1 %t184, ptr %l155, !tbaa !21
  br label %bb54
bb54:
  %t186 = load i1, ptr %l155, !tbaa !21
  br i1 %t186, label %bb55, label %bb56
bb55:
  store ptr %l4, ptr %l160, !tbaa !29
  %t187 = load i64, ptr %l14, !tbaa !24
  store i64 %t187, ptr %l161, !tbaa !24
  %t189 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l3)
  store i64 %t189, ptr %l163
  br label %bb57
bb56:
  br label %bb60
bb57:
  %t190 = load ptr, ptr %l160, !tbaa !29
  %t191 = load i64, ptr %l161, !tbaa !24
  %t192 = load i64, ptr %l163, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %s0, ptr %t190, i64 %t191, i64 %t192)
  br label %bb58
bb58:
  %t193 = load i64, ptr %l14, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l3, i64 %t193)
  br label %bb59
bb59:
  br label %bb60
bb60:
  br label %bb66
bb61:
  br i1 true, label %bb62, label %bb63
bb62:
  br label %bb64
bb63:
  br label %bb65
bb64:
  br label %bb66
bb65:
  call void @__olang_check_failed(ptr @olang_loc_eb65b3680edb0345_685145072e457a11)
  unreachable
bb66:
  br label %bb67
bb67:
  %t196 = load i64, ptr %l13, !tbaa !24
  %t198 = add i64 %t196, 1
  store i64 %t198, ptr %l13, !tbaa !24
  br label %bb39
bb68:
  %t201 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l3)
  store i64 %t201, ptr %l169
  br label %bb69
bb69:
  %t202 = load i64, ptr %l169, !tbaa !24
  store i64 %t202, ptr %l17, !tbaa !24
  %t203 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t203, ptr %l170
  br label %bb70
bb70:
  %t204 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l170
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t204, ptr %l18
  %t205 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t205, ptr %l171
  br label %bb71
bb71:
  %t206 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l171
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t206, ptr %l19
  store ptr %l3, ptr %l20, !tbaa !29
  store i64 0, ptr %l21, !tbaa !24
  br label %bb72
bb72:
  %t208 = load i64, ptr %l21, !tbaa !24
  store i64 %t208, ptr %l173, !tbaa !24
  %t209 = load ptr, ptr %l20, !tbaa !29
  %t211 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t209)
  store i64 %t211, ptr %l175
  br label %bb73
bb73:
  %t212 = load i64, ptr %l173, !tbaa !24
  %t213 = load i64, ptr %l175, !tbaa !24
  %t214 = icmp slt i64 %t212, %t213
  %t216 = xor i1 %t214, true
  br i1 %t216, label %bb74, label %bb75
bb74:
  br label %bb95
bb75:
  br label %bb76
bb76:
  %t218 = load ptr, ptr %l20, !tbaa !29
  %t219 = load i64, ptr %l21, !tbaa !24
  %t222 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t218, i64 %t219)
  store i64 %t222, ptr %l180
  br label %bb77
bb77:
  %t223 = load i64, ptr %l180, !tbaa !24
  store i64 %t223, ptr %l22, !tbaa !24
  store ptr %l18, ptr %l181, !tbaa !29
  %t225 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l19)
  store i64 %t225, ptr %l183
  br label %bb78
bb78:
  %t226 = load ptr, ptr %l181, !tbaa !29
  %t227 = load i64, ptr %l183, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %t226, i64 %t227)
  br label %bb79
bb79:
  store %olang.scope zeroinitializer, ptr %s14
  %t228 = load ptr, ptr %l0, !tbaa !29
  %t229 = load i64, ptr %l1, !tbaa !24
  %t230 = load i64, ptr %l22, !tbaa !24
  %t234 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eglobalDeps(ptr %v0, ptr %s14, ptr %t228, i64 %t229, i64 %t230)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t234, ptr %l187
  br label %bb80
bb80:
  %t235 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l187
  %t236 = call ptr @__olang_scope_alloc_a(ptr %s14, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t235, ptr %t236
  store ptr %t236, ptr %l23, !tbaa !29
  store i64 0, ptr %l24, !tbaa !24
  br label %bb81
bb81:
  %t238 = load i64, ptr %l24, !tbaa !24
  store i64 %t238, ptr %l189, !tbaa !24
  %t239 = load ptr, ptr %l23, !tbaa !29
  %t241 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s14, ptr %t239)
  store i64 %t241, ptr %l191
  br label %bb82
bb82:
  %t242 = load i64, ptr %l189, !tbaa !24
  %t243 = load i64, ptr %l191, !tbaa !24
  %t244 = icmp slt i64 %t242, %t243
  %t246 = xor i1 %t244, true
  br i1 %t246, label %bb83, label %bb84
bb83:
  br label %bb93
bb84:
  br label %bb85
bb85:
  %t248 = load ptr, ptr %l23, !tbaa !29
  %t249 = load i64, ptr %l24, !tbaa !24
  %t252 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s14, ptr %t248, i64 %t249)
  store i64 %t252, ptr %l196
  br label %bb86
bb86:
  %t253 = load i64, ptr %l196, !tbaa !24
  store ptr %l19, ptr %l197, !tbaa !29
  %t257 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %s0, ptr %l4, i64 %t253)
  %t258 = extractvalue { i32, i64 } %t257, 1
  %t259 = extractvalue { i32, i64 } %t257, 0
  store i32 %t259, ptr %l202
  %t260 = icmp ne i32 %t259, 0
  br i1 %t260, label %bb88, label %ok.261, !prof !99
ok.261:
  store i64 %t258, ptr %l201
  br label %bb87
bb87:
  %t262 = load i64, ptr %l201, !tbaa !24
  store i64 %t262, ptr %l198, !tbaa !24
  br label %bb90
bb88:
  br label %bb89
bb89:
  store i64 -1, ptr %l198, !tbaa !24
  br label %bb90
bb90:
  %t263 = load ptr, ptr %l197, !tbaa !29
  %t264 = load i64, ptr %l198, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %t263, i64 %t264)
  br label %bb91
bb91:
  br label %bb92
bb92:
  %t265 = load i64, ptr %l24, !tbaa !24
  %t267 = add i64 %t265, 1
  store i64 %t267, ptr %l24, !tbaa !24
  br label %bb81
bb93:
  call void @__olang_scope_close(ptr %s14)
  br label %bb94
bb94:
  %t269 = load i64, ptr %l21, !tbaa !24
  %t271 = add i64 %t269, 1
  store i64 %t271, ptr %l21, !tbaa !24
  br label %bb72
bb95:
  store ptr %l18, ptr %l207, !tbaa !29
  %t274 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l19)
  store i64 %t274, ptr %l209
  br label %bb96
bb96:
  %t275 = load ptr, ptr %l207, !tbaa !29
  %t276 = load i64, ptr %l209, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %t275, i64 %t276)
  br label %bb97
bb97:
  %t277 = load i64, ptr %l17, !tbaa !24
  store i64 %t277, ptr %l210, !tbaa !24
  %t278 = load i64, ptr %l210, !tbaa !24
  %t279 = icmp sge i64 %t278, 0
  br i1 %t279, label %bb98, label %bb99
bb98:
  %t281 = load i64, ptr %l210, !tbaa !24
  %t282 = mul i64 %t281, 1
  %t283 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t282)
  %t284 = insertvalue { i64, ptr } undef, i64 %t281, 0
  %t285 = insertvalue { i64, ptr } %t284, ptr %t283, 1
  store { i64, ptr } %t285, ptr %l26, !tbaa !27
  store i64 0, ptr %l27, !tbaa !24
  br label %bb100
bb99:
  call void @__olang_check_failed(ptr @olang_loc_becd3eb77e076db3_2d856a700a1e74b7)
  unreachable
bb100:
  store %olang.scope zeroinitializer, ptr %s18
  %t287 = load i64, ptr %l27, !tbaa !24
  %t288 = load i64, ptr %l17, !tbaa !24
  %t291 = icmp slt i64 %t287, %t288
  %t293 = xor i1 %t291, true
  br i1 %t293, label %bb101, label %bb102
bb101:
  call void @__olang_scope_close(ptr %s18)
  br label %bb232
bb102:
  br label %bb103
bb103:
  store i64 -1, ptr %l28, !tbaa !24
  store i64 0, ptr %l29, !tbaa !24
  %t295 = load i64, ptr %l17, !tbaa !24
  store i64 %t295, ptr %l30, !tbaa !24
  store i64 1, ptr %l31, !tbaa !24
  %t297 = load i64, ptr %l30, !tbaa !24
  %t298 = load i64, ptr %l29, !tbaa !24
  %t301 = icmp sgt i64 %t297, %t298
  br i1 %t301, label %bb104, label %bb105
bb104:
  %t303 = load i64, ptr %l31, !tbaa !24
  %t305 = icmp sgt i64 %t303, 0
  br i1 %t305, label %bb106, label %bb107
bb105:
  store i64 0, ptr %l221, !tbaa !24
  br label %bb109
bb106:
  %t307 = load i64, ptr %l30, !tbaa !24
  %t308 = load i64, ptr %l29, !tbaa !24
  %t311 = sub i64 %t307, %t308
  %t312 = load i64, ptr %l31, !tbaa !24
  %t315 = add i64 %t311, %t312
  %t317 = sub i64 %t315, 1
  %t318 = load i64, ptr %l31, !tbaa !24
  %t321 = sdiv i64 %t317, %t318
  store i64 %t321, ptr %l224, !tbaa !24
  br label %bb108
bb107:
  store i64 0, ptr %l224, !tbaa !24
  br label %bb108
bb108:
  %t323 = load i64, ptr %l224, !tbaa !24
  store i64 %t323, ptr %l221, !tbaa !24
  br label %bb109
bb109:
  %t324 = load i64, ptr %l221, !tbaa !24
  store i64 %t324, ptr %l32, !tbaa !24
  store i64 0, ptr %l33, !tbaa !24
  br label %bb110
bb110:
  %t325 = load i64, ptr %l33, !tbaa !24
  %t326 = load i64, ptr %l32, !tbaa !24
  %t329 = icmp slt i64 %t325, %t326
  %t331 = xor i1 %t329, true
  br i1 %t331, label %bb111, label %bb112
bb111:
  br label %bb143
bb112:
  br label %bb113
bb113:
  %t333 = load i64, ptr %l29, !tbaa !24
  %t334 = load i64, ptr %l33, !tbaa !24
  %t335 = load i64, ptr %l31, !tbaa !24
  %t338 = mul i64 %t334, %t335
  %t341 = add i64 %t333, %t338
  store i64 %t341, ptr %l34, !tbaa !24
  %t343 = load i64, ptr %l34, !tbaa !24
  %t345 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t346 = load ptr, ptr %t345, !tbaa !27
  %t347 = getelementptr i1, ptr %t346, i64 %t343
  %t348 = load i1, ptr %t347, !tbaa !31
  br i1 %t348, label %bb114, label %bb115
bb114:
  br label %bb142
bb115:
  br label %bb116
bb116:
  store i1 true, ptr %l35, !tbaa !21
  %t350 = load i64, ptr %l34, !tbaa !24
  %t353 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l18, i64 %t350)
  store i64 %t353, ptr %l246
  br label %bb117
bb117:
  %t354 = load i64, ptr %l246, !tbaa !24
  store i64 %t354, ptr %l36, !tbaa !24
  %t355 = load i64, ptr %l34, !tbaa !24
  %t357 = add i64 %t355, 1
  %t360 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l18, i64 %t357)
  store i64 %t360, ptr %l250
  br label %bb118
bb118:
  %t361 = load i64, ptr %l250, !tbaa !24
  store i64 %t361, ptr %l37, !tbaa !24
  store i64 1, ptr %l38, !tbaa !24
  %t362 = load i64, ptr %l37, !tbaa !24
  %t363 = load i64, ptr %l36, !tbaa !24
  %t366 = icmp sgt i64 %t362, %t363
  br i1 %t366, label %bb119, label %bb120
bb119:
  %t368 = load i64, ptr %l38, !tbaa !24
  %t370 = icmp sgt i64 %t368, 0
  br i1 %t370, label %bb121, label %bb122
bb120:
  store i64 0, ptr %l254, !tbaa !24
  br label %bb124
bb121:
  %t372 = load i64, ptr %l37, !tbaa !24
  %t373 = load i64, ptr %l36, !tbaa !24
  %t376 = sub i64 %t372, %t373
  %t377 = load i64, ptr %l38, !tbaa !24
  %t380 = add i64 %t376, %t377
  %t382 = sub i64 %t380, 1
  %t383 = load i64, ptr %l38, !tbaa !24
  %t386 = sdiv i64 %t382, %t383
  store i64 %t386, ptr %l257, !tbaa !24
  br label %bb123
bb122:
  store i64 0, ptr %l257, !tbaa !24
  br label %bb123
bb123:
  %t388 = load i64, ptr %l257, !tbaa !24
  store i64 %t388, ptr %l254, !tbaa !24
  br label %bb124
bb124:
  %t389 = load i64, ptr %l254, !tbaa !24
  store i64 %t389, ptr %l39, !tbaa !24
  store i64 0, ptr %l40, !tbaa !24
  br label %bb125
bb125:
  %t390 = load i64, ptr %l40, !tbaa !24
  %t391 = load i64, ptr %l39, !tbaa !24
  %t394 = icmp slt i64 %t390, %t391
  %t396 = xor i1 %t394, true
  br i1 %t396, label %bb126, label %bb127
bb126:
  br label %bb138
bb127:
  br label %bb128
bb128:
  %t398 = load i64, ptr %l36, !tbaa !24
  %t399 = load i64, ptr %l40, !tbaa !24
  %t400 = load i64, ptr %l38, !tbaa !24
  %t403 = mul i64 %t399, %t400
  %t406 = add i64 %t398, %t403
  store i64 %t406, ptr %l41, !tbaa !24
  %t408 = load i64, ptr %l41, !tbaa !24
  %t411 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l19, i64 %t408)
  store i64 %t411, ptr %l277
  br label %bb129
bb129:
  %t412 = load i64, ptr %l277, !tbaa !24
  %t413 = icmp sge i64 %t412, 0
  br i1 %t413, label %bb130, label %bb131
bb130:
  %t415 = load i64, ptr %l41, !tbaa !24
  %t418 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l19, i64 %t415)
  store i64 %t418, ptr %l282
  br label %bb132
bb131:
  store i1 false, ptr %l279, !tbaa !21
  br label %bb133
bb132:
  %t419 = load i64, ptr %l282, !tbaa !24
  %t420 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t421 = load ptr, ptr %t420, !tbaa !27
  %t422 = getelementptr i1, ptr %t421, i64 %t419
  %t423 = load i1, ptr %t422, !tbaa !31
  %t425 = xor i1 %t423, true
  store i1 %t425, ptr %l279, !tbaa !21
  br label %bb133
bb133:
  %t427 = load i1, ptr %l279, !tbaa !21
  br i1 %t427, label %bb134, label %bb135
bb134:
  store i1 false, ptr %l35, !tbaa !21
  br label %bb136
bb135:
  br label %bb136
bb136:
  br label %bb137
bb137:
  %t428 = load i64, ptr %l40, !tbaa !24
  %t430 = add i64 %t428, 1
  store i64 %t430, ptr %l40, !tbaa !24
  br label %bb125
bb138:
  %t432 = load i1, ptr %l35, !tbaa !21
  br i1 %t432, label %bb139, label %bb140
bb139:
  %t434 = load i64, ptr %l34, !tbaa !24
  store i64 %t434, ptr %l28, !tbaa !24
  br label %bb143
bb140:
  br label %bb141
bb141:
  br label %bb142
bb142:
  %t436 = load i64, ptr %l33, !tbaa !24
  %t438 = add i64 %t436, 1
  store i64 %t438, ptr %l33, !tbaa !24
  br label %bb110
bb143:
  %t440 = load i64, ptr %l28, !tbaa !24
  %t442 = icmp sge i64 %t440, 0
  br i1 %t442, label %bb144, label %bb145
bb144:
  %t444 = load i64, ptr %l28, !tbaa !24
  %t446 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t447 = load ptr, ptr %t446, !tbaa !27
  %t448 = getelementptr i1, ptr %t447, i64 %t444
  store i1 true, ptr %t448, !tbaa !31
  %t449 = load ptr, ptr %l2, !tbaa !29
  store ptr %t449, ptr %l294, !tbaa !29
  %t450 = load i64, ptr %l28, !tbaa !24
  %t453 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l3, i64 %t450)
  store i64 %t453, ptr %l297
  br label %bb146
bb145:
  br label %bb148
bb146:
  %t454 = load ptr, ptr %l294, !tbaa !29
  %t455 = load i64, ptr %l297, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t454, i64 %t455)
  br label %bb147
bb147:
  %t456 = load i64, ptr %l27, !tbaa !24
  %t458 = add i64 %t456, 1
  store i64 %t458, ptr %l27, !tbaa !24
  call void @__olang_scope_close(ptr %s18)
  br label %bb231
bb148:
  store i64 0, ptr %l42, !tbaa !24
  br label %bb149
bb149:
  %t460 = load i64, ptr %l42, !tbaa !24
  %t462 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t463 = load ptr, ptr %t462, !tbaa !27
  %t464 = getelementptr i1, ptr %t463, i64 %t460
  %t465 = load i1, ptr %t464, !tbaa !31
  %t467 = xor i1 %t465, true
  br i1 %t467, label %bb150, label %bb151
bb150:
  br label %bb154
bb151:
  br label %bb152
bb152:
  %t469 = load i64, ptr %l42, !tbaa !24
  %t471 = add i64 %t469, 1
  store i64 %t471, ptr %l42, !tbaa !24
  br label %bb153
bb153:
  br label %bb149
bb154:
  %t473 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s18, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t473, ptr %l305
  br label %bb155
bb155:
  %t474 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l305
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t474, ptr %l43
  br label %bb156
bb156:
  %t475 = load i64, ptr %l42, !tbaa !24
  %t478 = call { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eIndexOf_3cI64_3e(ptr %s18, ptr %l43, i64 %t475)
  %t479 = extractvalue { i32, i64 } %t478, 1
  %t480 = extractvalue { i32, i64 } %t478, 0
  store i32 %t480, ptr %l310
  %t481 = icmp ne i32 %t480, 0
  br i1 %t481, label %bb158, label %ok.482, !prof !99
ok.482:
  store i64 %t479, ptr %l309
  br label %bb157
bb157:
  %t483 = load i64, ptr %l309, !tbaa !24
  store i64 %t483, ptr %l306, !tbaa !24
  br label %bb160
bb158:
  br label %bb159
bb159:
  store i64 -1, ptr %l306, !tbaa !24
  br label %bb160
bb160:
  %t484 = load i64, ptr %l306, !tbaa !24
  store i64 %t484, ptr %l44, !tbaa !24
  %t485 = load i64, ptr %l44, !tbaa !24
  %t487 = icmp sge i64 %t485, 0
  br i1 %t487, label %bb161, label %bb162
bb161:
  %t489 = load ptr, ptr %l0, !tbaa !29
  %t490 = load i64, ptr %l44, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aCycle(ptr %v0, ptr %s0, ptr %s18, ptr %t489, ptr %l3, ptr %l43, i64 %t490)
  br label %bb163
bb162:
  br label %bb181
bb163:
  %t495 = load i64, ptr %l44, !tbaa !24
  store i64 %t495, ptr %l45, !tbaa !24
  %t498 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s18, ptr %l43)
  store i64 %t498, ptr %l319
  br label %bb164
bb164:
  %t499 = load i64, ptr %l319, !tbaa !24
  store i64 %t499, ptr %l46, !tbaa !24
  store i64 1, ptr %l47, !tbaa !24
  %t500 = load i64, ptr %l46, !tbaa !24
  %t501 = load i64, ptr %l45, !tbaa !24
  %t504 = icmp sgt i64 %t500, %t501
  br i1 %t504, label %bb165, label %bb166
bb165:
  %t506 = load i64, ptr %l47, !tbaa !24
  %t508 = icmp sgt i64 %t506, 0
  br i1 %t508, label %bb167, label %bb168
bb166:
  store i64 0, ptr %l323, !tbaa !24
  br label %bb170
bb167:
  %t510 = load i64, ptr %l46, !tbaa !24
  %t511 = load i64, ptr %l45, !tbaa !24
  %t514 = sub i64 %t510, %t511
  %t515 = load i64, ptr %l47, !tbaa !24
  %t518 = add i64 %t514, %t515
  %t520 = sub i64 %t518, 1
  %t521 = load i64, ptr %l47, !tbaa !24
  %t524 = sdiv i64 %t520, %t521
  store i64 %t524, ptr %l326, !tbaa !24
  br label %bb169
bb168:
  store i64 0, ptr %l326, !tbaa !24
  br label %bb169
bb169:
  %t526 = load i64, ptr %l326, !tbaa !24
  store i64 %t526, ptr %l323, !tbaa !24
  br label %bb170
bb170:
  %t527 = load i64, ptr %l323, !tbaa !24
  store i64 %t527, ptr %l48, !tbaa !24
  store i64 0, ptr %l49, !tbaa !24
  br label %bb171
bb171:
  %t528 = load i64, ptr %l49, !tbaa !24
  %t529 = load i64, ptr %l48, !tbaa !24
  %t532 = icmp slt i64 %t528, %t529
  %t534 = xor i1 %t532, true
  br i1 %t534, label %bb172, label %bb173
bb172:
  br label %bb180
bb173:
  br label %bb174
bb174:
  %t536 = load i64, ptr %l45, !tbaa !24
  %t537 = load i64, ptr %l49, !tbaa !24
  %t538 = load i64, ptr %l47, !tbaa !24
  %t541 = mul i64 %t537, %t538
  %t544 = add i64 %t536, %t541
  store i64 %t544, ptr %l50, !tbaa !24
  %t546 = load i64, ptr %l50, !tbaa !24
  %t549 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s18, ptr %l43, i64 %t546)
  store i64 %t549, ptr %l346
  br label %bb175
bb175:
  %t550 = load i64, ptr %l346, !tbaa !24
  %t551 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t552 = load ptr, ptr %t551, !tbaa !27
  %t553 = getelementptr i1, ptr %t552, i64 %t550
  store i1 true, ptr %t553, !tbaa !31
  %t554 = load ptr, ptr %l2, !tbaa !29
  store ptr %t554, ptr %l347, !tbaa !29
  store ptr %l3, ptr %l348, !tbaa !29
  %t555 = load i64, ptr %l50, !tbaa !24
  %t558 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s18, ptr %l43, i64 %t555)
  store i64 %t558, ptr %l351
  br label %bb176
bb176:
  %t559 = load ptr, ptr %l348, !tbaa !29
  %t560 = load i64, ptr %l351, !tbaa !24
  %t561 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t559, i64 %t560)
  store i64 %t561, ptr %l352
  br label %bb177
bb177:
  %t562 = load ptr, ptr %l347, !tbaa !29
  %t563 = load i64, ptr %l352, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t562, i64 %t563)
  br label %bb178
bb178:
  %t564 = load i64, ptr %l27, !tbaa !24
  %t566 = add i64 %t564, 1
  store i64 %t566, ptr %l27, !tbaa !24
  br label %bb179
bb179:
  %t568 = load i64, ptr %l49, !tbaa !24
  %t570 = add i64 %t568, 1
  store i64 %t570, ptr %l49, !tbaa !24
  br label %bb171
bb180:
  br label %bb230
bb181:
  %t572 = load i64, ptr %l42, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s18, ptr %l43, i64 %t572)
  br label %bb182
bb182:
  store i64 -1, ptr %l51, !tbaa !24
  %t575 = load i64, ptr %l42, !tbaa !24
  %t578 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l18, i64 %t575)
  store i64 %t578, ptr %l361
  br label %bb183
bb183:
  %t579 = load i64, ptr %l361, !tbaa !24
  store i64 %t579, ptr %l52, !tbaa !24
  %t580 = load i64, ptr %l42, !tbaa !24
  %t582 = add i64 %t580, 1
  %t585 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l18, i64 %t582)
  store i64 %t585, ptr %l365
  br label %bb184
bb184:
  %t586 = load i64, ptr %l365, !tbaa !24
  store i64 %t586, ptr %l53, !tbaa !24
  store i64 1, ptr %l54, !tbaa !24
  %t587 = load i64, ptr %l53, !tbaa !24
  %t588 = load i64, ptr %l52, !tbaa !24
  %t591 = icmp sgt i64 %t587, %t588
  br i1 %t591, label %bb185, label %bb186
bb185:
  %t593 = load i64, ptr %l54, !tbaa !24
  %t595 = icmp sgt i64 %t593, 0
  br i1 %t595, label %bb187, label %bb188
bb186:
  store i64 0, ptr %l369, !tbaa !24
  br label %bb190
bb187:
  %t597 = load i64, ptr %l53, !tbaa !24
  %t598 = load i64, ptr %l52, !tbaa !24
  %t601 = sub i64 %t597, %t598
  %t602 = load i64, ptr %l54, !tbaa !24
  %t605 = add i64 %t601, %t602
  %t607 = sub i64 %t605, 1
  %t608 = load i64, ptr %l54, !tbaa !24
  %t611 = sdiv i64 %t607, %t608
  store i64 %t611, ptr %l372, !tbaa !24
  br label %bb189
bb188:
  store i64 0, ptr %l372, !tbaa !24
  br label %bb189
bb189:
  %t613 = load i64, ptr %l372, !tbaa !24
  store i64 %t613, ptr %l369, !tbaa !24
  br label %bb190
bb190:
  %t614 = load i64, ptr %l369, !tbaa !24
  store i64 %t614, ptr %l55, !tbaa !24
  store i64 0, ptr %l56, !tbaa !24
  br label %bb191
bb191:
  %t615 = load i64, ptr %l56, !tbaa !24
  %t616 = load i64, ptr %l55, !tbaa !24
  %t619 = icmp slt i64 %t615, %t616
  %t621 = xor i1 %t619, true
  br i1 %t621, label %bb192, label %bb193
bb192:
  br label %bb208
bb193:
  br label %bb194
bb194:
  %t623 = load i64, ptr %l52, !tbaa !24
  %t624 = load i64, ptr %l56, !tbaa !24
  %t625 = load i64, ptr %l54, !tbaa !24
  %t628 = mul i64 %t624, %t625
  %t631 = add i64 %t623, %t628
  store i64 %t631, ptr %l57, !tbaa !24
  %t633 = load i64, ptr %l51, !tbaa !24
  %t635 = icmp slt i64 %t633, 0
  br i1 %t635, label %bb195, label %bb196
bb195:
  %t637 = load i64, ptr %l57, !tbaa !24
  %t640 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l19, i64 %t637)
  store i64 %t640, ptr %l395
  br label %bb197
bb196:
  store i1 false, ptr %l392, !tbaa !21
  br label %bb198
bb197:
  %t641 = load i64, ptr %l395, !tbaa !24
  %t642 = icmp sge i64 %t641, 0
  store i1 %t642, ptr %l392, !tbaa !21
  br label %bb198
bb198:
  %t644 = load i1, ptr %l392, !tbaa !21
  br i1 %t644, label %bb199, label %bb200
bb199:
  %t645 = load i64, ptr %l57, !tbaa !24
  %t648 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l19, i64 %t645)
  store i64 %t648, ptr %l400
  br label %bb201
bb200:
  store i1 false, ptr %l397, !tbaa !21
  br label %bb202
bb201:
  %t649 = load i64, ptr %l400, !tbaa !24
  %t650 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t651 = load ptr, ptr %t650, !tbaa !27
  %t652 = getelementptr i1, ptr %t651, i64 %t649
  %t653 = load i1, ptr %t652, !tbaa !31
  %t655 = xor i1 %t653, true
  store i1 %t655, ptr %l397, !tbaa !21
  br label %bb202
bb202:
  %t657 = load i1, ptr %l397, !tbaa !21
  br i1 %t657, label %bb203, label %bb204
bb203:
  %t658 = load i64, ptr %l57, !tbaa !24
  %t661 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l19, i64 %t658)
  store i64 %t661, ptr %l405
  br label %bb205
bb204:
  br label %bb206
bb205:
  %t662 = load i64, ptr %l405, !tbaa !24
  store i64 %t662, ptr %l51, !tbaa !24
  br label %bb206
bb206:
  br label %bb207
bb207:
  %t663 = load i64, ptr %l56, !tbaa !24
  %t665 = add i64 %t663, 1
  store i64 %t665, ptr %l56, !tbaa !24
  br label %bb191
bb208:
  %t667 = load i64, ptr %l51, !tbaa !24
  %t669 = icmp slt i64 %t667, 0
  br i1 %t669, label %bb209, label %bb210
bb209:
  store i64 0, ptr %l58, !tbaa !24
  %t671 = load i64, ptr %l17, !tbaa !24
  store i64 %t671, ptr %l59, !tbaa !24
  store i64 1, ptr %l60, !tbaa !24
  %t673 = load i64, ptr %l59, !tbaa !24
  %t674 = load i64, ptr %l58, !tbaa !24
  %t677 = icmp sgt i64 %t673, %t674
  br i1 %t677, label %bb211, label %bb212
bb210:
  br label %bb228
bb211:
  %t679 = load i64, ptr %l60, !tbaa !24
  %t681 = icmp sgt i64 %t679, 0
  br i1 %t681, label %bb213, label %bb214
bb212:
  store i64 0, ptr %l414, !tbaa !24
  br label %bb216
bb213:
  %t683 = load i64, ptr %l59, !tbaa !24
  %t684 = load i64, ptr %l58, !tbaa !24
  %t687 = sub i64 %t683, %t684
  %t688 = load i64, ptr %l60, !tbaa !24
  %t691 = add i64 %t687, %t688
  %t693 = sub i64 %t691, 1
  %t694 = load i64, ptr %l60, !tbaa !24
  %t697 = sdiv i64 %t693, %t694
  store i64 %t697, ptr %l417, !tbaa !24
  br label %bb215
bb214:
  store i64 0, ptr %l417, !tbaa !24
  br label %bb215
bb215:
  %t699 = load i64, ptr %l417, !tbaa !24
  store i64 %t699, ptr %l414, !tbaa !24
  br label %bb216
bb216:
  %t700 = load i64, ptr %l414, !tbaa !24
  store i64 %t700, ptr %l61, !tbaa !24
  store i64 0, ptr %l62, !tbaa !24
  br label %bb217
bb217:
  %t701 = load i64, ptr %l62, !tbaa !24
  %t702 = load i64, ptr %l61, !tbaa !24
  %t705 = icmp slt i64 %t701, %t702
  %t707 = xor i1 %t705, true
  br i1 %t707, label %bb218, label %bb219
bb218:
  br label %bb227
bb219:
  br label %bb220
bb220:
  %t709 = load i64, ptr %l58, !tbaa !24
  %t710 = load i64, ptr %l62, !tbaa !24
  %t711 = load i64, ptr %l60, !tbaa !24
  %t714 = mul i64 %t710, %t711
  %t717 = add i64 %t709, %t714
  store i64 %t717, ptr %l63, !tbaa !24
  %t719 = load i64, ptr %l63, !tbaa !24
  %t721 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t722 = load ptr, ptr %t721, !tbaa !27
  %t723 = getelementptr i1, ptr %t722, i64 %t719
  %t724 = load i1, ptr %t723, !tbaa !31
  br i1 %t724, label %bb221, label %bb222
bb221:
  br label %bb226
bb222:
  br label %bb223
bb223:
  %t726 = load i64, ptr %l63, !tbaa !24
  %t728 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t729 = load ptr, ptr %t728, !tbaa !27
  %t730 = getelementptr i1, ptr %t729, i64 %t726
  store i1 true, ptr %t730, !tbaa !31
  %t731 = load ptr, ptr %l2, !tbaa !29
  store ptr %t731, ptr %l438, !tbaa !29
  %t732 = load i64, ptr %l63, !tbaa !24
  %t735 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l3, i64 %t732)
  store i64 %t735, ptr %l441
  br label %bb224
bb224:
  %t736 = load ptr, ptr %l438, !tbaa !29
  %t737 = load i64, ptr %l441, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t736, i64 %t737)
  br label %bb225
bb225:
  %t738 = load i64, ptr %l27, !tbaa !24
  %t740 = add i64 %t738, 1
  store i64 %t740, ptr %l27, !tbaa !24
  br label %bb226
bb226:
  %t742 = load i64, ptr %l62, !tbaa !24
  %t744 = add i64 %t742, 1
  store i64 %t744, ptr %l62, !tbaa !24
  br label %bb217
bb227:
  br label %bb230
bb228:
  %t746 = load i64, ptr %l51, !tbaa !24
  store i64 %t746, ptr %l42, !tbaa !24
  br label %bb229
bb229:
  br label %bb156
bb230:
  call void @__olang_scope_close(ptr %s18)
  br label %bb231
bb231:
  br label %bb100
bb232:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epatElem(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l3 = alloca i32
  %l4 = alloca %"compiler/check:seqOf"
  %l13 = alloca i32
  %l20 = alloca i32
  %l23 = alloca i32
  %l27 = alloca i1
  %l30 = alloca ptr
  %l35 = alloca i32
  %l40 = alloca i32
  %l41 = alloca i1
  %l42 = alloca %"compiler/check:seqOf"
  %l45 = alloca %"compiler/check:seqOf"
  %l46 = alloca i32
  %l48 = alloca i1
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l1, !tbaa !23
  %t2 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t5 = icmp eq i32 %t1, %t2
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load i32, ptr %l1, !tbaa !23
  store i32 %t7, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/check:Checker", ptr %t9, i32 0, i32 1
  %t12 = load ptr, ptr %t11, !tbaa !29
  %t14 = getelementptr %"compiler/generic:Program", ptr %t12, i32 0, i32 2
  %t15 = load i32, ptr %l1, !tbaa !23
  %t18 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t14, i32 %t15)
  store i32 %t18, ptr %l13
  br label %bb4
bb4:
  %t19 = load i32, ptr %l13, !range !{i32 0, i32 33}
  %t21 = trunc i64 19 to i32
  %t22 = icmp eq i32 %t19, %t21
  br i1 %t22, label %bb5, label %bb6
bb5:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/check:Checker", ptr %t24, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !29
  %t29 = getelementptr %"compiler/generic:Program", ptr %t27, i32 0, i32 2
  %t30 = load i32, ptr %l1, !tbaa !23
  %t33 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t29, i32 %t30)
  store i32 %t33, ptr %l20
  br label %bb7
bb6:
  br label %bb8
bb7:
  %t34 = load i32, ptr %l20, !tbaa !23
  store i32 %t34, ptr %rv
  br label %ret
bb8:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t39 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t35, i32 %a2)
  store i32 %t39, ptr %l23
  br label %bb9
bb9:
  %t40 = load i32, ptr %l23, !tbaa !23
  store i32 %t40, ptr %l3, !tbaa !23
  %t41 = load i32, ptr %l3, !tbaa !23
  %t42 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t45 = icmp ne i32 %t41, %t42
  br i1 %t45, label %bb10, label %bb11
bb10:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/check:Checker", ptr %t47, i32 0, i32 1
  %t50 = load ptr, ptr %t49, !tbaa !29
  %t52 = getelementptr %"compiler/generic:Program", ptr %t50, i32 0, i32 2
  store ptr %t52, ptr %l30, !tbaa !29
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/check:Checker", ptr %t53, i32 0, i32 1
  %t56 = load ptr, ptr %t55, !tbaa !29
  %t58 = getelementptr %"compiler/generic:Program", ptr %t56, i32 0, i32 2
  %t59 = load i32, ptr %l1, !tbaa !23
  %t62 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t58, i32 %t59)
  store i32 %t62, ptr %l35
  br label %bb12
bb11:
  store i1 false, ptr %l27, !tbaa !21
  br label %bb15
bb12:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/check:Checker", ptr %t63, i32 0, i32 1
  %t66 = load ptr, ptr %t65, !tbaa !29
  %t68 = getelementptr %"compiler/generic:Program", ptr %t66, i32 0, i32 2
  %t69 = load i32, ptr %l3, !tbaa !23
  %t72 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t68, i32 %t69)
  store i32 %t72, ptr %l40
  br label %bb13
bb13:
  %t73 = load ptr, ptr %l30, !tbaa !29
  %t74 = load i32, ptr %l35, !tbaa !23
  %t75 = load i32, ptr %l40, !tbaa !23
  %t76 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t73, i32 %t74, i32 %t75)
  store i1 %t76, ptr %l41
  br label %bb14
bb14:
  %t77 = load i1, ptr %l41, !tbaa !21
  store i1 %t77, ptr %l27, !tbaa !21
  br label %bb15
bb15:
  %t78 = load i1, ptr %l27, !tbaa !21
  br i1 %t78, label %bb16, label %bb17
bb16:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t80 = load i32, ptr %l3, !tbaa !23
  %t83 = call { i32, %"compiler/check:seqOf" } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eseqType(ptr %v0, ptr %t79, i32 %t80)
  %t84 = extractvalue { i32, %"compiler/check:seqOf" } %t83, 1
  %t85 = extractvalue { i32, %"compiler/check:seqOf" } %t83, 0
  store i32 %t85, ptr %l46
  %t86 = icmp ne i32 %t85, 0
  br i1 %t86, label %bb19, label %ok.87, !prof !99
ok.87:
  store %"compiler/check:seqOf" %t84, ptr %l45
  br label %bb18
bb17:
  br label %bb22
bb18:
  %t88 = load %"compiler/check:seqOf", ptr %l45
  store %"compiler/check:seqOf" %t88, ptr %l42
  br label %bb21
bb19:
  %t89 = load i32, ptr %l46, !tbaa !23
  %t90 = ashr i32 %t89, 16
  %t92 = icmp eq i32 %t90, 1
  store i1 %t92, ptr %l48, !tbaa !21
  br label %bb20
bb20:
  %t93 = load i32, ptr %l1, !tbaa !23
  store i32 %t93, ptr %rv
  br label %ret
bb21:
  %t95 = load %"compiler/check:seqOf", ptr %l42
  store %"compiler/check:seqOf" %t95, ptr %l4
  %t96 = getelementptr %"compiler/check:seqOf", ptr %l4, i32 0, i32 0
  %t97 = load i32, ptr %t96, !tbaa !23
  store i32 %t97, ptr %rv
  br label %ret
bb22:
  %t99 = load i32, ptr %l1, !tbaa !23
  store i32 %t99, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local %"compiler/check:reflVal" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflHasAttr(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, { i64, ptr } %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l4 = alloca { ptr, { i64, ptr }, %"compiler/source:Span" }
  %l5 = alloca ptr
  %l7 = alloca i32
  %l8 = alloca i32
  %l9 = alloca { i64, i32 }
  %l13 = alloca { ptr, { i64, ptr }, %"compiler/source:Span" }
  %l15 = alloca { i64, ptr }
  %l16 = alloca i64
  %l17 = alloca { i64, ptr }
  %l19 = alloca i1
  %l21 = alloca i1
  %l25 = alloca i1
  %l29 = alloca %"compiler/check:reflVal"
  %l32 = alloca i32
  %l35 = alloca %"compiler/check:reflVal"
  %l40 = alloca %"compiler/check:reflVal"
  %l42 = alloca { i64, ptr }
  %l45 = alloca i32
  %l49 = alloca %"compiler/check:reflVal"
  %l53 = alloca { i64, i32 }
  %l57 = alloca %"compiler/check:reflVal"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/check:reflVal"
  store ptr %a0, ptr %l0
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call { ptr, { i64, ptr }, %"compiler/source:Span" } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eattrCallee(ptr %v0, ptr %v1, ptr %s0, ptr %t1, ptr %a1)
  store { ptr, { i64, ptr }, %"compiler/source:Span" } %t5, ptr %l13
  br label %bb1
bb1:
  %t6 = load { ptr, { i64, ptr }, %"compiler/source:Span" }, ptr %l13
  store { ptr, { i64, ptr }, %"compiler/source:Span" } %t6, ptr %l4
  %t7 = getelementptr { ptr, { i64, ptr }, %"compiler/source:Span" }, ptr %l4, i32 0, i32 0
  %t8 = load ptr, ptr %t7, !tbaa !29
  store ptr %t8, ptr %l5, !tbaa !29
  %t10 = getelementptr { ptr, { i64, ptr }, %"compiler/source:Span" }, ptr %l4, i32 0, i32 1
  %t11 = load { i64, ptr }, ptr %t10, !tbaa !27
  store { i64, ptr } %t11, ptr %l15, !tbaa !27
  %t12 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t13 = extractvalue { i64, ptr } %t12, 0
  store i64 %t13, ptr %l16, !tbaa !24
  %t14 = load i64, ptr %l16, !tbaa !24
  %t15 = mul i64 %t14, 1
  %t16 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t15)
  %t17 = insertvalue { i64, ptr } undef, i64 %t14, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t16, 1
  store { i64, ptr } %t18, ptr %l17, !tbaa !27
  %t19 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !27
  %t21 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = load i64, ptr %l16, !tbaa !24
  %t24 = mul i64 %t23, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t20, ptr %t22, i64 %t24, i1 false)
  %t25 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t28 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t25, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d19, i32 0, i32 1) })
  store i1 %t28, ptr %l19
  br label %bb2
bb2:
  %t29 = load i1, ptr %l19, !tbaa !21
  %t30 = xor i1 %t29, true
  br i1 %t30, label %bb3, label %bb4
bb3:
  store i1 true, ptr %l21, !tbaa !21
  br label %bb5
bb4:
  %t32 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t34 = extractvalue { i64, ptr } %t32, 0
  %t36 = icmp ne i64 %t34, 1
  store i1 %t36, ptr %l21, !tbaa !21
  br label %bb5
bb5:
  %t38 = load i1, ptr %l21, !tbaa !21
  br i1 %t38, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l25, !tbaa !21
  br label %bb8
bb7:
  %t41 = extractvalue { i64, ptr } %a3, 0
  %t43 = icmp ne i64 %t41, 0
  store i1 %t43, ptr %l25, !tbaa !21
  br label %bb8
bb8:
  %t45 = load i1, ptr %l25, !tbaa !21
  br i1 %t45, label %bb9, label %bb10
bb9:
  %t46 = call %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2enoRefl(ptr %v4)
  store %"compiler/check:reflVal" %t46, ptr %l29
  br label %bb11
bb10:
  br label %bb12
bb11:
  call void @__olang_scope_close(ptr %s0)
  %t47 = load %"compiler/check:reflVal", ptr %l29
  store %"compiler/check:reflVal" %t47, ptr %rv
  br label %ret
bb12:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t49 = load ptr, ptr %l5, !tbaa !29
  %t52 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eattrHolder(ptr %v0, ptr %s0, ptr %t48, ptr %t49)
  store i32 %t52, ptr %l32
  br label %bb13
bb13:
  %t53 = load i32, ptr %l32, !tbaa !23
  store i32 %t53, ptr %l7, !tbaa !23
  %t54 = load i32, ptr %l7, !tbaa !23
  %t56 = icmp slt i32 %t54, 0
  br i1 %t56, label %bb14, label %bb15
bb14:
  %t58 = call %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2enoRefl(ptr %v4)
  store %"compiler/check:reflVal" %t58, ptr %l35
  br label %bb16
bb15:
  br label %bb17
bb16:
  call void @__olang_scope_close(ptr %s0)
  %t59 = load %"compiler/check:reflVal", ptr %l35
  store %"compiler/check:reflVal" %t59, ptr %rv
  br label %ret
bb17:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/check:Checker", ptr %t60, i32 0, i32 148
  store i1 true, ptr %t62, !tbaa !21
  %t63 = load i32, ptr %l7, !tbaa !23
  %t64 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t67 = icmp eq i32 %t63, %t64
  br i1 %t67, label %bb18, label %bb19
bb18:
  %t69 = call %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2enoRefl(ptr %v4)
  store %"compiler/check:reflVal" %t69, ptr %l40
  br label %bb20
bb19:
  br label %bb21
bb20:
  call void @__olang_scope_close(ptr %s0)
  %t70 = load %"compiler/check:reflVal", ptr %l40
  store %"compiler/check:reflVal" %t70, ptr %rv
  br label %ret
bb21:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t72 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t72, ptr %l42, !tbaa !27
  %t73 = getelementptr { i64, ptr }, ptr %l42, i32 0, i32 1
  %t74 = load ptr, ptr %t73, !tbaa !27
  %t75 = getelementptr ptr, ptr %t74, i64 0
  %t76 = load ptr, ptr %t75, !tbaa !39
  %t80 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eresolve(ptr %v0, ptr %v2, ptr %t71, ptr %t76)
  store i32 %t80, ptr %l45
  br label %bb22
bb22:
  %t81 = load i32, ptr %l45, !tbaa !23
  store i32 %t81, ptr %l8, !tbaa !23
  %t82 = load i32, ptr %l8, !tbaa !23
  %t83 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t86 = icmp eq i32 %t82, %t83
  br i1 %t86, label %bb23, label %bb24
bb23:
  %t88 = call %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2enoRefl(ptr %v4)
  store %"compiler/check:reflVal" %t88, ptr %l49
  br label %bb25
bb24:
  br label %bb26
bb25:
  call void @__olang_scope_close(ptr %s0)
  %t89 = load %"compiler/check:reflVal", ptr %l49
  store %"compiler/check:reflVal" %t89, ptr %rv
  br label %ret
bb26:
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t91 = load i32, ptr %l7, !tbaa !23
  %t92 = load i32, ptr %l8, !tbaa !23
  %t96 = call { i64, i32 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eattrFound(ptr %v0, ptr %t90, i32 %t91, i32 %t92)
  store { i64, i32 } %t96, ptr %l53
  br label %bb27
bb27:
  %t97 = load { i64, i32 }, ptr %l53
  store { i64, i32 } %t97, ptr %l9
  %t98 = getelementptr { i64, i32 }, ptr %l9, i32 0, i32 0
  %t99 = load i64, ptr %t98, !tbaa !24
  %t103 = icmp sge i64 %t99, 0
  %t105 = call %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2ervBool(ptr %v4, i1 %t103)
  store %"compiler/check:reflVal" %t105, ptr %l57
  br label %bb28
bb28:
  call void @__olang_scope_close(ptr %s0)
  %t106 = load %"compiler/check:reflVal", ptr %l57
  store %"compiler/check:reflVal" %t106, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:reflVal", ptr %rv
  ret %"compiler/check:reflVal" %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esameLen(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i32
  %l6 = alloca i1
  %l8 = alloca i1
  %l10 = alloca i1
  %l13 = alloca ptr
  %l14 = alloca i1
  %l19 = alloca ptr
  %l20 = alloca i1
  %l29 = alloca ptr
  %l31 = alloca %"compiler/source:Span"
  %l32 = alloca { i64, ptr }
  %l33 = alloca ptr
  %l35 = alloca %"compiler/source:Span"
  %l36 = alloca { i64, ptr }
  %l37 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = call i1 @compiler_2fcheck_2eplainLen(ptr %v1, ptr %t1)
  store i1 %t3, ptr %l6
  br label %bb1
bb1:
  %t4 = load i1, ptr %l6, !tbaa !21
  %t5 = xor i1 %t4, true
  br i1 %t5, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l8, !tbaa !21
  br label %bb5
bb3:
  %t7 = load ptr, ptr %l2, !tbaa !29
  %t9 = call i1 @compiler_2fcheck_2eplainLen(ptr %v2, ptr %t7)
  store i1 %t9, ptr %l10
  br label %bb4
bb4:
  %t10 = load i1, ptr %l10, !tbaa !21
  %t11 = xor i1 %t10, true
  store i1 %t11, ptr %l8, !tbaa !21
  br label %bb5
bb5:
  %t13 = load i1, ptr %l8, !tbaa !21
  br i1 %t13, label %bb6, label %bb7
bb6:
  store i1 false, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t15 = load ptr, ptr %l1, !tbaa !29
  store ptr %t15, ptr %l13, !tbaa !29
  store i1 false, ptr %l14, !tbaa !21
  %t16 = load ptr, ptr %l13, !tbaa !29
  %t17 = icmp ne ptr %t16, null
  br i1 %t17, label %bb9, label %bb10
bb9:
  %t19 = load ptr, ptr %l13, !tbaa !29
  %t20 = load i64, ptr %t19, !range !{i64 0, i64 30}
  %t22 = icmp eq i64 %t20, 0
  store i1 %t22, ptr %l14, !tbaa !21
  br label %bb10
bb10:
  %t23 = load i1, ptr %l14, !tbaa !21
  br i1 %t23, label %bb11, label %bb12
bb11:
  %t24 = load ptr, ptr %l1, !tbaa !29
  %t26 = getelementptr { i64, [4 x i64] }, ptr %t24, i32 0, i32 1
  %t27 = getelementptr { %"compiler/source:Span", i32 }, ptr %t26, i32 0, i32 1
  %t28 = load i32, ptr %t27
  store i32 %t28, ptr %l3, !tbaa !23
  br label %bb13
bb12:
  br label %bb24
bb13:
  %t30 = load ptr, ptr %l2, !tbaa !29
  store ptr %t30, ptr %l19, !tbaa !29
  store i1 false, ptr %l20, !tbaa !21
  %t31 = load ptr, ptr %l19, !tbaa !29
  %t32 = icmp ne ptr %t31, null
  br i1 %t32, label %bb14, label %bb15
bb14:
  %t34 = load ptr, ptr %l19, !tbaa !29
  %t35 = load i64, ptr %t34, !range !{i64 0, i64 30}
  %t37 = icmp eq i64 %t35, 0
  store i1 %t37, ptr %l20, !tbaa !21
  br label %bb15
bb15:
  %t38 = load i1, ptr %l20, !tbaa !21
  br i1 %t38, label %bb16, label %bb17
bb16:
  %t39 = load ptr, ptr %l2, !tbaa !29
  %t41 = getelementptr { i64, [4 x i64] }, ptr %t39, i32 0, i32 1
  %t42 = getelementptr { %"compiler/source:Span", i32 }, ptr %t41, i32 0, i32 1
  %t43 = load i32, ptr %t42
  store i32 %t43, ptr %l4, !tbaa !23
  br label %bb18
bb17:
  br label %bb19
bb18:
  %t45 = load i32, ptr %l3, !tbaa !23
  %t46 = load i32, ptr %l4, !tbaa !23
  %t49 = icmp eq i32 %t45, %t46
  store i1 %t49, ptr %rv
  br label %ret
bb19:
  br i1 true, label %bb20, label %bb21
bb20:
  br label %bb22
bb21:
  br label %bb23
bb22:
  store i1 false, ptr %rv
  br label %ret
bb23:
  call void @__olang_check_failed(ptr @olang_loc_e2de52da0998b8a_4e4f16d2638e7f66)
  unreachable
bb24:
  br i1 true, label %bb25, label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb29
bb28:
  call void @__olang_check_failed(ptr @olang_loc_4bef50c9347fcfcb_39dc7124156e73c7)
  unreachable
bb29:
  %t52 = load ptr, ptr %l0, !tbaa !29
  store ptr %t52, ptr %l29, !tbaa !29
  %t53 = load ptr, ptr %l1, !tbaa !29
  %t55 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t53)
  store %"compiler/source:Span" %t55, ptr %l31
  br label %bb30
bb30:
  %t56 = load ptr, ptr %l29, !tbaa !29
  %t57 = load %"compiler/source:Span", ptr %l31
  %t58 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t56, %"compiler/source:Span" %t57)
  store { i64, ptr } %t58, ptr %l32
  br label %bb31
bb31:
  %t59 = load ptr, ptr %l0, !tbaa !29
  store ptr %t59, ptr %l33, !tbaa !29
  %t60 = load ptr, ptr %l2, !tbaa !29
  %t62 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %t60)
  store %"compiler/source:Span" %t62, ptr %l35
  br label %bb32
bb32:
  %t63 = load ptr, ptr %l33, !tbaa !29
  %t64 = load %"compiler/source:Span", ptr %l35
  %t65 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t63, %"compiler/source:Span" %t64)
  store { i64, ptr } %t65, ptr %l36
  br label %bb33
bb33:
  %t66 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t67 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t68 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v0, { i64, ptr } %t66, { i64, ptr } %t67)
  store i1 %t68, ptr %l37
  br label %bb34
bb34:
  %t69 = load i1, ptr %l37, !tbaa !21
  store i1 %t69, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esamePlace(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca i64
  %l6 = alloca i32
  %l7 = alloca i64
  %l8 = alloca i32
  %l9 = alloca ptr
  %l10 = alloca i64
  %l11 = alloca ptr
  %l12 = alloca i64
  %l13 = alloca ptr
  %l14 = alloca ptr
  %l15 = alloca ptr
  %l16 = alloca ptr
  %l17 = alloca ptr
  %l18 = alloca ptr
  %l19 = alloca ptr
  %l20 = alloca ptr
  %l21 = alloca ptr
  %l22 = alloca i1
  %l27 = alloca ptr
  %l28 = alloca i1
  %l37 = alloca ptr
  %l38 = alloca i1
  %l45 = alloca ptr
  %l46 = alloca i1
  %l56 = alloca i1
  %l61 = alloca ptr
  %l62 = alloca i1
  %l69 = alloca ptr
  %l70 = alloca i1
  %l80 = alloca i1
  %l84 = alloca i1
  %l86 = alloca ptr
  %l87 = alloca i1
  %l92 = alloca ptr
  %l93 = alloca i1
  %l103 = alloca i1
  %l105 = alloca ptr
  %l106 = alloca i1
  %l111 = alloca ptr
  %l112 = alloca i1
  %l122 = alloca i1
  %l128 = alloca i1
  %l130 = alloca ptr
  %l131 = alloca i1
  %l136 = alloca ptr
  %l137 = alloca i1
  %l143 = alloca ptr
  %l145 = alloca ptr
  %l149 = alloca i1
  %l153 = alloca i1
  %l157 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l21, !tbaa !29
  store i1 false, ptr %l22, !tbaa !21
  %t2 = load ptr, ptr %l21, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l21, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l22, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l22, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t12, i32 0, i32 2
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l3, !tbaa !23
  br label %bb5
bb4:
  br label %bb16
bb5:
  %t16 = load ptr, ptr %l2, !tbaa !29
  store ptr %t16, ptr %l27, !tbaa !29
  store i1 false, ptr %l28, !tbaa !21
  %t17 = load ptr, ptr %l27, !tbaa !29
  %t18 = icmp ne ptr %t17, null
  br i1 %t18, label %bb6, label %bb7
bb6:
  %t20 = load ptr, ptr %l27, !tbaa !29
  %t21 = load i64, ptr %t20, !range !{i64 0, i64 8}
  %t23 = icmp eq i64 %t21, 0
  store i1 %t23, ptr %l28, !tbaa !21
  br label %bb7
bb7:
  %t24 = load i1, ptr %l28, !tbaa !21
  br i1 %t24, label %bb8, label %bb9
bb8:
  %t25 = load ptr, ptr %l2, !tbaa !29
  %t27 = getelementptr { i64, [4 x i64] }, ptr %t25, i32 0, i32 1
  %t28 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t27, i32 0, i32 2
  %t29 = load i32, ptr %t28
  store i32 %t29, ptr %l4, !tbaa !23
  br label %bb10
bb9:
  br label %bb11
bb10:
  %t31 = load i32, ptr %l3, !tbaa !23
  %t32 = load i32, ptr %l4, !tbaa !23
  %t35 = icmp eq i32 %t31, %t32
  store i1 %t35, ptr %rv
  br label %ret
bb11:
  br i1 true, label %bb12, label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb15
bb14:
  store i1 false, ptr %rv
  br label %ret
bb15:
  call void @__olang_check_failed(ptr @olang_loc_e181575e6035f202_99a6d5836a9bf6a6)
  unreachable
bb16:
  %t38 = load ptr, ptr %l1, !tbaa !29
  store ptr %t38, ptr %l37, !tbaa !29
  store i1 false, ptr %l38, !tbaa !21
  %t39 = load ptr, ptr %l37, !tbaa !29
  %t40 = icmp ne ptr %t39, null
  br i1 %t40, label %bb17, label %bb18
bb17:
  %t42 = load ptr, ptr %l37, !tbaa !29
  %t43 = load i64, ptr %t42, !range !{i64 0, i64 8}
  %t45 = icmp eq i64 %t43, 1
  store i1 %t45, ptr %l38, !tbaa !21
  br label %bb18
bb18:
  %t46 = load i1, ptr %l38, !tbaa !21
  br i1 %t46, label %bb19, label %bb20
bb19:
  %t47 = load ptr, ptr %l1, !tbaa !29
  %t49 = getelementptr { i64, [4 x i64] }, ptr %t47, i32 0, i32 1
  %t50 = getelementptr { %"compiler/source:Span", i32, i64, i32 }, ptr %t49, i32 0, i32 2
  %t51 = load i64, ptr %t50
  store i64 %t51, ptr %l5, !tbaa !24
  %t53 = load ptr, ptr %l1, !tbaa !29
  %t55 = getelementptr { i64, [4 x i64] }, ptr %t53, i32 0, i32 1
  %t56 = getelementptr { %"compiler/source:Span", i32, i64, i32 }, ptr %t55, i32 0, i32 3
  %t57 = load i32, ptr %t56
  store i32 %t57, ptr %l6, !tbaa !23
  br label %bb21
bb20:
  br label %bb35
bb21:
  %t59 = load ptr, ptr %l2, !tbaa !29
  store ptr %t59, ptr %l45, !tbaa !29
  store i1 false, ptr %l46, !tbaa !21
  %t60 = load ptr, ptr %l45, !tbaa !29
  %t61 = icmp ne ptr %t60, null
  br i1 %t61, label %bb22, label %bb23
bb22:
  %t63 = load ptr, ptr %l45, !tbaa !29
  %t64 = load i64, ptr %t63, !range !{i64 0, i64 8}
  %t66 = icmp eq i64 %t64, 1
  store i1 %t66, ptr %l46, !tbaa !21
  br label %bb23
bb23:
  %t67 = load i1, ptr %l46, !tbaa !21
  br i1 %t67, label %bb24, label %bb25
bb24:
  %t68 = load ptr, ptr %l2, !tbaa !29
  %t70 = getelementptr { i64, [4 x i64] }, ptr %t68, i32 0, i32 1
  %t71 = getelementptr { %"compiler/source:Span", i32, i64, i32 }, ptr %t70, i32 0, i32 2
  %t72 = load i64, ptr %t71
  store i64 %t72, ptr %l7, !tbaa !24
  %t74 = load ptr, ptr %l2, !tbaa !29
  %t76 = getelementptr { i64, [4 x i64] }, ptr %t74, i32 0, i32 1
  %t77 = getelementptr { %"compiler/source:Span", i32, i64, i32 }, ptr %t76, i32 0, i32 3
  %t78 = load i32, ptr %t77
  store i32 %t78, ptr %l8, !tbaa !23
  br label %bb26
bb25:
  br label %bb30
bb26:
  %t80 = load i64, ptr %l5, !tbaa !24
  %t81 = load i64, ptr %l7, !tbaa !24
  %t84 = icmp eq i64 %t80, %t81
  br i1 %t84, label %bb27, label %bb28
bb27:
  %t86 = load i32, ptr %l6, !tbaa !23
  %t87 = load i32, ptr %l8, !tbaa !23
  %t90 = icmp eq i32 %t86, %t87
  store i1 %t90, ptr %l56, !tbaa !21
  br label %bb29
bb28:
  store i1 false, ptr %l56, !tbaa !21
  br label %bb29
bb29:
  %t92 = load i1, ptr %l56, !tbaa !21
  store i1 %t92, ptr %rv
  br label %ret
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
  call void @__olang_check_failed(ptr @olang_loc_a5d3444dbde3a383_cb32d8a11a505607)
  unreachable
bb35:
  %t94 = load ptr, ptr %l1, !tbaa !29
  store ptr %t94, ptr %l61, !tbaa !29
  store i1 false, ptr %l62, !tbaa !21
  %t95 = load ptr, ptr %l61, !tbaa !29
  %t96 = icmp ne ptr %t95, null
  br i1 %t96, label %bb36, label %bb37
bb36:
  %t98 = load ptr, ptr %l61, !tbaa !29
  %t99 = load i64, ptr %t98, !range !{i64 0, i64 8}
  %t101 = icmp eq i64 %t99, 3
  store i1 %t101, ptr %l62, !tbaa !21
  br label %bb37
bb37:
  %t102 = load i1, ptr %l62, !tbaa !21
  br i1 %t102, label %bb38, label %bb39
bb38:
  %t103 = load ptr, ptr %l1, !tbaa !29
  %t105 = getelementptr { i64, [4 x i64] }, ptr %t103, i32 0, i32 1
  %t106 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t105, i32 0, i32 2
  %t107 = load ptr, ptr %t106
  store ptr %t107, ptr %l9, !tbaa !29
  %t109 = load ptr, ptr %l1, !tbaa !29
  %t111 = getelementptr { i64, [4 x i64] }, ptr %t109, i32 0, i32 1
  %t112 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t111, i32 0, i32 3
  %t113 = load i64, ptr %t112
  store i64 %t113, ptr %l10, !tbaa !24
  br label %bb40
bb39:
  br label %bb55
bb40:
  %t115 = load ptr, ptr %l2, !tbaa !29
  store ptr %t115, ptr %l69, !tbaa !29
  store i1 false, ptr %l70, !tbaa !21
  %t116 = load ptr, ptr %l69, !tbaa !29
  %t117 = icmp ne ptr %t116, null
  br i1 %t117, label %bb41, label %bb42
bb41:
  %t119 = load ptr, ptr %l69, !tbaa !29
  %t120 = load i64, ptr %t119, !range !{i64 0, i64 8}
  %t122 = icmp eq i64 %t120, 3
  store i1 %t122, ptr %l70, !tbaa !21
  br label %bb42
bb42:
  %t123 = load i1, ptr %l70, !tbaa !21
  br i1 %t123, label %bb43, label %bb44
bb43:
  %t124 = load ptr, ptr %l2, !tbaa !29
  %t126 = getelementptr { i64, [4 x i64] }, ptr %t124, i32 0, i32 1
  %t127 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t126, i32 0, i32 2
  %t128 = load ptr, ptr %t127
  store ptr %t128, ptr %l11, !tbaa !29
  %t130 = load ptr, ptr %l2, !tbaa !29
  %t132 = getelementptr { i64, [4 x i64] }, ptr %t130, i32 0, i32 1
  %t133 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t132, i32 0, i32 3
  %t134 = load i64, ptr %t133
  store i64 %t134, ptr %l12, !tbaa !24
  br label %bb45
bb44:
  br label %bb50
bb45:
  %t136 = load i64, ptr %l10, !tbaa !24
  %t137 = load i64, ptr %l12, !tbaa !24
  %t140 = icmp eq i64 %t136, %t137
  br i1 %t140, label %bb46, label %bb47
bb46:
  %t142 = load ptr, ptr %l0, !tbaa !29
  %t143 = load ptr, ptr %l9, !tbaa !29
  %t144 = load ptr, ptr %l11, !tbaa !29
  %t148 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esamePlace(ptr %v0, ptr %v1, ptr %v2, ptr %t142, ptr %t143, ptr %t144)
  store i1 %t148, ptr %l84
  br label %bb48
bb47:
  store i1 false, ptr %l80, !tbaa !21
  br label %bb49
bb48:
  %t149 = load i1, ptr %l84, !tbaa !21
  store i1 %t149, ptr %l80, !tbaa !21
  br label %bb49
bb49:
  %t150 = load i1, ptr %l80, !tbaa !21
  store i1 %t150, ptr %rv
  br label %ret
bb50:
  br i1 true, label %bb51, label %bb52
bb51:
  br label %bb53
bb52:
  br label %bb54
bb53:
  store i1 false, ptr %rv
  br label %ret
bb54:
  call void @__olang_check_failed(ptr @olang_loc_664096f84a6143a8_9c45533022ca790c)
  unreachable
bb55:
  %t152 = load ptr, ptr %l1, !tbaa !29
  store ptr %t152, ptr %l86, !tbaa !29
  store i1 false, ptr %l87, !tbaa !21
  %t153 = load ptr, ptr %l86, !tbaa !29
  %t154 = icmp ne ptr %t153, null
  br i1 %t154, label %bb56, label %bb57
bb56:
  %t156 = load ptr, ptr %l86, !tbaa !29
  %t157 = load i64, ptr %t156, !range !{i64 0, i64 8}
  %t159 = icmp eq i64 %t157, 4
  store i1 %t159, ptr %l87, !tbaa !21
  br label %bb57
bb57:
  %t160 = load i1, ptr %l87, !tbaa !21
  br i1 %t160, label %bb58, label %bb59
bb58:
  %t161 = load ptr, ptr %l1, !tbaa !29
  %t163 = getelementptr { i64, [4 x i64] }, ptr %t161, i32 0, i32 1
  %t164 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t163, i32 0, i32 2
  %t165 = load ptr, ptr %t164
  store ptr %t165, ptr %l13, !tbaa !29
  br label %bb60
bb59:
  br label %bb72
bb60:
  %t167 = load ptr, ptr %l2, !tbaa !29
  store ptr %t167, ptr %l92, !tbaa !29
  store i1 false, ptr %l93, !tbaa !21
  %t168 = load ptr, ptr %l92, !tbaa !29
  %t169 = icmp ne ptr %t168, null
  br i1 %t169, label %bb61, label %bb62
bb61:
  %t171 = load ptr, ptr %l92, !tbaa !29
  %t172 = load i64, ptr %t171, !range !{i64 0, i64 8}
  %t174 = icmp eq i64 %t172, 4
  store i1 %t174, ptr %l93, !tbaa !21
  br label %bb62
bb62:
  %t175 = load i1, ptr %l93, !tbaa !21
  br i1 %t175, label %bb63, label %bb64
bb63:
  %t176 = load ptr, ptr %l2, !tbaa !29
  %t178 = getelementptr { i64, [4 x i64] }, ptr %t176, i32 0, i32 1
  %t179 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t178, i32 0, i32 2
  %t180 = load ptr, ptr %t179
  store ptr %t180, ptr %l14, !tbaa !29
  br label %bb65
bb64:
  br label %bb67
bb65:
  %t182 = load ptr, ptr %l0, !tbaa !29
  %t183 = load ptr, ptr %l13, !tbaa !29
  %t185 = getelementptr %"compiler/typed:Elem", ptr %t183, i32 0, i32 0
  %t186 = load ptr, ptr %t185, !tbaa !29
  %t187 = load ptr, ptr %l14, !tbaa !29
  %t189 = getelementptr %"compiler/typed:Elem", ptr %t187, i32 0, i32 0
  %t190 = load ptr, ptr %t189, !tbaa !29
  %t194 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esamePlace(ptr %v0, ptr %v1, ptr %v2, ptr %t182, ptr %t186, ptr %t190)
  store i1 %t194, ptr %l103
  br label %bb66
bb66:
  %t195 = load i1, ptr %l103, !tbaa !21
  store i1 %t195, ptr %rv
  br label %ret
bb67:
  br i1 true, label %bb68, label %bb69
bb68:
  br label %bb70
bb69:
  br label %bb71
bb70:
  store i1 false, ptr %rv
  br label %ret
bb71:
  call void @__olang_check_failed(ptr @olang_loc_5f0b92ad49630279_51f88f4b15ed303d)
  unreachable
bb72:
  %t197 = load ptr, ptr %l1, !tbaa !29
  store ptr %t197, ptr %l105, !tbaa !29
  store i1 false, ptr %l106, !tbaa !21
  %t198 = load ptr, ptr %l105, !tbaa !29
  %t199 = icmp ne ptr %t198, null
  br i1 %t199, label %bb73, label %bb74
bb73:
  %t201 = load ptr, ptr %l105, !tbaa !29
  %t202 = load i64, ptr %t201, !range !{i64 0, i64 8}
  %t204 = icmp eq i64 %t202, 5
  store i1 %t204, ptr %l106, !tbaa !21
  br label %bb74
bb74:
  %t205 = load i1, ptr %l106, !tbaa !21
  br i1 %t205, label %bb75, label %bb76
bb75:
  %t206 = load ptr, ptr %l1, !tbaa !29
  %t208 = getelementptr { i64, [4 x i64] }, ptr %t206, i32 0, i32 1
  %t209 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t208, i32 0, i32 2
  %t210 = load ptr, ptr %t209
  store ptr %t210, ptr %l15, !tbaa !29
  br label %bb77
bb76:
  br label %bb92
bb77:
  %t212 = load ptr, ptr %l2, !tbaa !29
  store ptr %t212, ptr %l111, !tbaa !29
  store i1 false, ptr %l112, !tbaa !21
  %t213 = load ptr, ptr %l111, !tbaa !29
  %t214 = icmp ne ptr %t213, null
  br i1 %t214, label %bb78, label %bb79
bb78:
  %t216 = load ptr, ptr %l111, !tbaa !29
  %t217 = load i64, ptr %t216, !range !{i64 0, i64 8}
  %t219 = icmp eq i64 %t217, 5
  store i1 %t219, ptr %l112, !tbaa !21
  br label %bb79
bb79:
  %t220 = load i1, ptr %l112, !tbaa !21
  br i1 %t220, label %bb80, label %bb81
bb80:
  %t221 = load ptr, ptr %l2, !tbaa !29
  %t223 = getelementptr { i64, [4 x i64] }, ptr %t221, i32 0, i32 1
  %t224 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t223, i32 0, i32 2
  %t225 = load ptr, ptr %t224
  store ptr %t225, ptr %l16, !tbaa !29
  br label %bb82
bb81:
  br label %bb87
bb82:
  %t227 = load ptr, ptr %l15, !tbaa !29
  %t229 = getelementptr %"compiler/typed:Payload", ptr %t227, i32 0, i32 1
  %t230 = load i64, ptr %t229, !tbaa !24
  %t231 = load ptr, ptr %l16, !tbaa !29
  %t233 = getelementptr %"compiler/typed:Payload", ptr %t231, i32 0, i32 1
  %t234 = load i64, ptr %t233, !tbaa !24
  %t237 = icmp eq i64 %t230, %t234
  br i1 %t237, label %bb83, label %bb84
bb83:
  %t239 = load ptr, ptr %l0, !tbaa !29
  %t240 = load ptr, ptr %l15, !tbaa !29
  %t242 = getelementptr %"compiler/typed:Payload", ptr %t240, i32 0, i32 0
  %t243 = load ptr, ptr %t242, !tbaa !29
  %t244 = load ptr, ptr %l16, !tbaa !29
  %t246 = getelementptr %"compiler/typed:Payload", ptr %t244, i32 0, i32 0
  %t247 = load ptr, ptr %t246, !tbaa !29
  %t251 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esamePlace(ptr %v0, ptr %v1, ptr %v2, ptr %t239, ptr %t243, ptr %t247)
  store i1 %t251, ptr %l128
  br label %bb85
bb84:
  store i1 false, ptr %l122, !tbaa !21
  br label %bb86
bb85:
  %t252 = load i1, ptr %l128, !tbaa !21
  store i1 %t252, ptr %l122, !tbaa !21
  br label %bb86
bb86:
  %t253 = load i1, ptr %l122, !tbaa !21
  store i1 %t253, ptr %rv
  br label %ret
bb87:
  br i1 true, label %bb88, label %bb89
bb88:
  br label %bb90
bb89:
  br label %bb91
bb90:
  store i1 false, ptr %rv
  br label %ret
bb91:
  call void @__olang_check_failed(ptr @olang_loc_265c788dd5eed9e_866edb98fc8c38ea)
  unreachable
bb92:
  %t255 = load ptr, ptr %l1, !tbaa !29
  store ptr %t255, ptr %l130, !tbaa !29
  store i1 false, ptr %l131, !tbaa !21
  %t256 = load ptr, ptr %l130, !tbaa !29
  %t257 = icmp ne ptr %t256, null
  br i1 %t257, label %bb93, label %bb94
bb93:
  %t259 = load ptr, ptr %l130, !tbaa !29
  %t260 = load i64, ptr %t259, !range !{i64 0, i64 8}
  %t262 = icmp eq i64 %t260, 2
  store i1 %t262, ptr %l131, !tbaa !21
  br label %bb94
bb94:
  %t263 = load i1, ptr %l131, !tbaa !21
  br i1 %t263, label %bb95, label %bb96
bb95:
  %t264 = load ptr, ptr %l1, !tbaa !29
  %t266 = getelementptr { i64, [4 x i64] }, ptr %t264, i32 0, i32 1
  %t267 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t266, i32 0, i32 2
  %t268 = load ptr, ptr %t267
  store ptr %t268, ptr %l17, !tbaa !29
  br label %bb97
bb96:
  br label %bb117
bb97:
  %t270 = load ptr, ptr %l2, !tbaa !29
  store ptr %t270, ptr %l136, !tbaa !29
  store i1 false, ptr %l137, !tbaa !21
  %t271 = load ptr, ptr %l136, !tbaa !29
  %t272 = icmp ne ptr %t271, null
  br i1 %t272, label %bb98, label %bb99
bb98:
  %t274 = load ptr, ptr %l136, !tbaa !29
  %t275 = load i64, ptr %t274, !range !{i64 0, i64 8}
  %t277 = icmp eq i64 %t275, 2
  store i1 %t277, ptr %l137, !tbaa !21
  br label %bb99
bb99:
  %t278 = load i1, ptr %l137, !tbaa !21
  br i1 %t278, label %bb100, label %bb101
bb100:
  %t279 = load ptr, ptr %l2, !tbaa !29
  %t281 = getelementptr { i64, [4 x i64] }, ptr %t279, i32 0, i32 1
  %t282 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t281, i32 0, i32 2
  %t283 = load ptr, ptr %t282
  store ptr %t283, ptr %l18, !tbaa !29
  br label %bb102
bb101:
  br label %bb112
bb102:
  %t285 = load ptr, ptr %l17, !tbaa !29
  %t287 = call ptr @compiler_2fcheck_2ereadPlace(ptr %v1, ptr %v1, ptr %t285)
  store ptr %t287, ptr %l143
  br label %bb103
bb103:
  %t288 = load ptr, ptr %l143, !tbaa !29
  store ptr %t288, ptr %l19, !tbaa !29
  %t289 = load ptr, ptr %l18, !tbaa !29
  %t291 = call ptr @compiler_2fcheck_2ereadPlace(ptr %v2, ptr %v2, ptr %t289)
  store ptr %t291, ptr %l145
  br label %bb104
bb104:
  %t292 = load ptr, ptr %l145, !tbaa !29
  store ptr %t292, ptr %l20, !tbaa !29
  %t293 = load ptr, ptr %l19, !tbaa !29
  %t295 = icmp eq ptr %t293, null
  %t297 = xor i1 %t295, true
  br i1 %t297, label %bb105, label %bb106
bb105:
  %t299 = load ptr, ptr %l20, !tbaa !29
  %t301 = icmp eq ptr %t299, null
  %t303 = xor i1 %t301, true
  store i1 %t303, ptr %l149, !tbaa !21
  br label %bb107
bb106:
  store i1 false, ptr %l149, !tbaa !21
  br label %bb107
bb107:
  %t305 = load i1, ptr %l149, !tbaa !21
  br i1 %t305, label %bb108, label %bb109
bb108:
  %t306 = load ptr, ptr %l0, !tbaa !29
  %t307 = load ptr, ptr %l19, !tbaa !29
  %t308 = load ptr, ptr %l20, !tbaa !29
  %t312 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esamePlace(ptr %v0, ptr %v1, ptr %v2, ptr %t306, ptr %t307, ptr %t308)
  store i1 %t312, ptr %l157
  br label %bb110
bb109:
  store i1 false, ptr %l153, !tbaa !21
  br label %bb111
bb110:
  %t313 = load i1, ptr %l157, !tbaa !21
  store i1 %t313, ptr %l153, !tbaa !21
  br label %bb111
bb111:
  %t314 = load i1, ptr %l153, !tbaa !21
  store i1 %t314, ptr %rv
  br label %ret
bb112:
  br i1 true, label %bb113, label %bb114
bb113:
  br label %bb115
bb114:
  br label %bb116
bb115:
  store i1 false, ptr %rv
  br label %ret
bb116:
  call void @__olang_check_failed(ptr @olang_loc_6ac4c8202b0b581f_2f15107fd7d9b5ab)
  unreachable
bb117:
  br i1 true, label %bb118, label %bb119
bb118:
  br label %bb120
bb119:
  br label %bb121
bb120:
  store i1 false, ptr %rv
  br label %ret
bb121:
  call void @__olang_check_failed(ptr @olang_loc_8bfef52d6d2c65e4_ce3ff42f583fc170)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esettleUnread(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca %"compiler/typed:Local"
  %l8 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l9 = alloca i1
  %l10 = alloca ptr
  %l11 = alloca i64
  %l12 = alloca %"compiler/names:Unread"
  %l13 = alloca { i64, [3 x i64] }
  %l19 = alloca i64
  %l25 = alloca i64
  %l27 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l30 = alloca i64
  %l32 = alloca i64
  %l37 = alloca ptr
  %l43 = alloca i64
  %l45 = alloca i64
  %l50 = alloca %"compiler/typed:Local"
  %l54 = alloca i1
  %l65 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l69 = alloca i1
  %l72 = alloca i1
  %l76 = alloca i1
  %l77 = alloca i1
  %l78 = alloca i1
  %l81 = alloca i1
  %l82 = alloca i32
  %l95 = alloca i64
  %l97 = alloca i64
  %l102 = alloca %"compiler/names:Unread"
  %l113 = alloca ptr
  %l114 = alloca { i64, [3 x i64] }
  %l117 = alloca { i64, ptr }
  %l119 = alloca %"compiler/diagmsg:Msg"
  %l120 = alloca i64
  %l128 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l129 = alloca i1
  %l132 = alloca i1
  %l133 = alloca i32
  %l138 = alloca ptr
  %l139 = alloca { i64, [3 x i64] }
  %l142 = alloca { i64, ptr }
  %l144 = alloca %"compiler/diagmsg:Msg"
  %l145 = alloca i64
  %s0 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %t202 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
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
  %t9 = getelementptr %"compiler/names:Resolver", ptr %t7, i32 0, i32 18
  %t11 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aUnread_3e_2eLen_3ccompiler_2fnames_3aUnread_3e(ptr %v0, ptr %t9)
  store i64 %t11, ptr %l19
  br label %bb1
bb1:
  %t12 = load i64, ptr %l19, !tbaa !24
  %t13 = icmp eq i64 %t12, 0
  br i1 %t13, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb3:
  br label %bb4
bb4:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/check:Checker", ptr %t15, i32 0, i32 1
  %t18 = load ptr, ptr %t17, !tbaa !29
  %t20 = getelementptr %"compiler/generic:Program", ptr %t18, i32 0, i32 0
  %t21 = load ptr, ptr %t20, !tbaa !29
  %t23 = getelementptr %"compiler/load:Loader", ptr %t21, i32 0, i32 4
  %t24 = load ptr, ptr %t23, !tbaa !29
  %t26 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrors(ptr %v0, ptr %t24)
  store i64 %t26, ptr %l25
  br label %bb5
bb5:
  %t27 = load i64, ptr %l25, !tbaa !24
  %t28 = icmp sgt i64 %t27, 0
  br i1 %t28, label %bb6, label %bb7
bb6:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb7:
  br label %bb8
bb8:
  %t30 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t30, ptr %l27
  br label %bb9
bb9:
  %t31 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l27
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t31, ptr %l1
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/check:Checker", ptr %t32, i32 0, i32 14
  store ptr %t34, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb10
bb10:
  %t36 = load i64, ptr %l3, !tbaa !24
  store i64 %t36, ptr %l30, !tbaa !24
  %t37 = load ptr, ptr %l2, !tbaa !29
  %t39 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t37)
  store i64 %t39, ptr %l32
  br label %bb11
bb11:
  %t40 = load i64, ptr %l30, !tbaa !24
  %t41 = load i64, ptr %l32, !tbaa !24
  %t42 = icmp slt i64 %t40, %t41
  %t44 = xor i1 %t42, true
  br i1 %t44, label %bb12, label %bb13
bb12:
  br label %bb51
bb13:
  br label %bb14
bb14:
  %t46 = load ptr, ptr %l2, !tbaa !29
  %t47 = load i64, ptr %l3, !tbaa !24
  %t50 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t46, i64 %t47)
  store ptr %t50, ptr %l37
  br label %bb15
bb15:
  %t51 = load ptr, ptr %l37, !tbaa !29
  store ptr %t51, ptr %l4, !tbaa !29
  %t52 = load ptr, ptr %l4, !tbaa !29
  %t54 = getelementptr %"compiler/typed:Body", ptr %t52, i32 0, i32 11
  %t55 = load ptr, ptr %t54, !tbaa !29
  %t57 = icmp eq ptr %t55, null
  br i1 %t57, label %bb16, label %bb17
bb16:
  br label %bb50
bb17:
  br label %bb18
bb18:
  %t59 = load ptr, ptr %l4, !tbaa !29
  %t61 = getelementptr %"compiler/typed:Body", ptr %t59, i32 0, i32 7
  store ptr %t61, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb19
bb19:
  store %olang.scope zeroinitializer, ptr %s7
  %t63 = load i64, ptr %l6, !tbaa !24
  store i64 %t63, ptr %l43, !tbaa !24
  %t64 = load ptr, ptr %l5, !tbaa !29
  %t66 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eLen_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t64)
  store i64 %t66, ptr %l45
  br label %bb20
bb20:
  %t67 = load i64, ptr %l43, !tbaa !24
  %t68 = load i64, ptr %l45, !tbaa !24
  %t69 = icmp slt i64 %t67, %t68
  %t71 = xor i1 %t69, true
  br i1 %t71, label %bb21, label %bb22
bb21:
  call void @__olang_scope_close(ptr %s7)
  br label %bb49
bb22:
  br label %bb23
bb23:
  %t73 = load ptr, ptr %l5, !tbaa !29
  %t74 = load i64, ptr %l6, !tbaa !24
  %t77 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t73, i64 %t74)
  store %"compiler/typed:Local" %t77, ptr %l50
  br label %bb24
bb24:
  %t78 = load %"compiler/typed:Local", ptr %l50
  store %"compiler/typed:Local" %t78, ptr %l7
  %t79 = getelementptr %"compiler/typed:Local", ptr %l7, i32 0, i32 4
  %t80 = load i32, ptr %t79, !range !{i32 0, i32 7}
  %t82 = trunc i64 1 to i32
  %t83 = icmp eq i32 %t80, %t82
  %t85 = xor i1 %t83, true
  br i1 %t85, label %bb25, label %bb26
bb25:
  store i1 true, ptr %l54, !tbaa !21
  br label %bb27
bb26:
  %t87 = getelementptr %"compiler/typed:Local", ptr %l7, i32 0, i32 0
  %t88 = load i32, ptr %t87, !tbaa !23
  %t90 = icmp eq i32 %t88, 0
  store i1 %t90, ptr %l54, !tbaa !21
  br label %bb27
bb27:
  %t92 = load i1, ptr %l54, !tbaa !21
  br i1 %t92, label %bb28, label %bb29
bb28:
  call void @__olang_scope_close(ptr %s7)
  br label %bb48
bb29:
  br label %bb30
bb30:
  %t93 = load ptr, ptr %l4, !tbaa !29
  %t95 = getelementptr %"compiler/typed:Body", ptr %t93, i32 0, i32 3
  %t96 = load i64, ptr %t95, !tbaa !24
  %t97 = getelementptr %"compiler/typed:Local", ptr %l7, i32 0, i32 1
  %t98 = getelementptr %"compiler/source:Span", ptr %t97, i32 0, i32 0
  %t99 = load i32, ptr %t98, !tbaa !23
  %t101 = sext i32 %t99 to i64
  %t103 = shl i64 %t101, 32
  %t104 = getelementptr %"compiler/typed:Local", ptr %l7, i32 0, i32 1
  %t105 = getelementptr %"compiler/source:Span", ptr %t104, i32 0, i32 1
  %t106 = load i32, ptr %t105, !tbaa !23
  %t108 = sext i32 %t106 to i64
  %t111 = or i64 %t103, %t108
  %t114 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s7, i64 %t96, i64 %t111)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t114, ptr %l65
  br label %bb31
bb31:
  %t115 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l65
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t115, ptr %l8
  %t116 = getelementptr %"compiler/typed:Local", ptr %l7, i32 0, i32 2
  %t117 = load i32, ptr %t116, !tbaa !23
  %t118 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t121 = icmp ne i32 %t117, %t118
  br i1 %t121, label %bb32, label %bb33
bb32:
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t124 = getelementptr %"compiler/typed:Local", ptr %l7, i32 0, i32 2
  %t125 = load i32, ptr %t124, !tbaa !23
  %t128 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edestructs(ptr %v0, ptr %t123, i32 %t125)
  store i1 %t128, ptr %l72
  br label %bb34
bb33:
  store i1 false, ptr %l69, !tbaa !21
  br label %bb35
bb34:
  %t129 = load i1, ptr %l72, !tbaa !21
  %t130 = xor i1 %t129, true
  store i1 %t130, ptr %l69, !tbaa !21
  br label %bb35
bb35:
  %t132 = load i1, ptr %l69, !tbaa !21
  store i1 %t132, ptr %l9, !tbaa !21
  %t133 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l8
  %t136 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2ed2e5427629ba63a7110fc86d969058(ptr %s0, ptr %l1, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t133)
  store i1 %t136, ptr %l76
  br label %bb36
bb36:
  %t137 = load i1, ptr %l76, !tbaa !21
  br i1 %t137, label %bb37, label %bb38
bb37:
  %t138 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l8
  %t141 = call { i32, i1 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H190b78e3c1eec037529224679e114a85(ptr %s0, ptr %l1, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t138)
  %t142 = extractvalue { i32, i1 } %t141, 1
  %t143 = extractvalue { i32, i1 } %t141, 0
  store i32 %t143, ptr %l82
  %t144 = icmp ne i32 %t143, 0
  br i1 %t144, label %bb40, label %ok.145, !prof !99
ok.145:
  store i1 %t142, ptr %l81
  br label %bb39
bb38:
  store i1 false, ptr %l77, !tbaa !21
  br label %bb43
bb39:
  %t146 = load i1, ptr %l81, !tbaa !21
  store i1 %t146, ptr %l78, !tbaa !21
  br label %bb42
bb40:
  br label %bb41
bb41:
  store i1 true, ptr %l78, !tbaa !21
  br label %bb42
bb42:
  %t147 = load i1, ptr %l78, !tbaa !21
  %t148 = xor i1 %t147, true
  store i1 %t148, ptr %l77, !tbaa !21
  br label %bb43
bb43:
  %t150 = load i1, ptr %l77, !tbaa !21
  br i1 %t150, label %bb44, label %bb45
bb44:
  call void @__olang_scope_close(ptr %s7)
  br label %bb48
bb45:
  br label %bb46
bb46:
  %t151 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l8
  %t152 = load i1, ptr %l9, !tbaa !21
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1308596c866d4be061d9da9113abde88(ptr %s0, ptr %l1, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t151, i1 %t152)
  br label %bb47
bb47:
  call void @__olang_scope_close(ptr %s7)
  br label %bb48
bb48:
  %t156 = load i64, ptr %l6, !tbaa !24
  %t158 = add i64 %t156, 1
  store i64 %t158, ptr %l6, !tbaa !24
  br label %bb19
bb49:
  br label %bb50
bb50:
  %t160 = load i64, ptr %l3, !tbaa !24
  %t162 = add i64 %t160, 1
  store i64 %t162, ptr %l3, !tbaa !24
  br label %bb10
bb51:
  %t164 = load ptr, ptr %l0, !tbaa !29
  %t166 = getelementptr %"compiler/check:Checker", ptr %t164, i32 0, i32 1
  %t167 = load ptr, ptr %t166, !tbaa !29
  %t169 = getelementptr %"compiler/generic:Program", ptr %t167, i32 0, i32 1
  %t170 = load ptr, ptr %t169, !tbaa !29
  %t172 = getelementptr %"compiler/names:Resolver", ptr %t170, i32 0, i32 18
  store ptr %t172, ptr %l10, !tbaa !29
  store i64 0, ptr %l11, !tbaa !24
  br label %bb52
bb52:
  store %olang.scope zeroinitializer, ptr %s13
  %t174 = load i64, ptr %l11, !tbaa !24
  store i64 %t174, ptr %l95, !tbaa !24
  %t175 = load ptr, ptr %l10, !tbaa !29
  %t177 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aUnread_3e_2eLen_3ccompiler_2fnames_3aUnread_3e(ptr %v0, ptr %t175)
  store i64 %t177, ptr %l97
  br label %bb53
bb53:
  %t178 = load i64, ptr %l95, !tbaa !24
  %t179 = load i64, ptr %l97, !tbaa !24
  %t180 = icmp slt i64 %t178, %t179
  %t182 = xor i1 %t180, true
  br i1 %t182, label %bb54, label %bb55
bb54:
  call void @__olang_scope_close(ptr %s13)
  br label %bb76
bb55:
  br label %bb56
bb56:
  %t184 = load ptr, ptr %l10, !tbaa !29
  %t185 = load i64, ptr %l11, !tbaa !24
  %t188 = call %"compiler/names:Unread" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aUnread_3e_2eAt_3ccompiler_2fnames_3aUnread_3e(ptr %v0, ptr %t184, i64 %t185)
  store %"compiler/names:Unread" %t188, ptr %l102
  br label %bb57
bb57:
  %t189 = load %"compiler/names:Unread", ptr %l102
  store %"compiler/names:Unread" %t189, ptr %l12
  %t190 = getelementptr %"compiler/names:Unread", ptr %l12, i32 0, i32 0
  %t191 = load i64, ptr %t190, !tbaa !24
  %t192 = getelementptr %"compiler/names:Unread", ptr %l12, i32 0, i32 1
  %t193 = getelementptr %"compiler/source:Span", ptr %t192, i32 0, i32 0
  %t194 = load i32, ptr %t193, !tbaa !23
  %t196 = sext i32 %t194 to i64
  %t197 = getelementptr %"compiler/names:Unread", ptr %l12, i32 0, i32 1
  %t198 = getelementptr %"compiler/source:Span", ptr %t197, i32 0, i32 1
  %t199 = load i32, ptr %t198, !tbaa !23
  %t201 = sext i32 %t199 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t202
  %t203 = getelementptr { i64, [3 x i64] }, ptr %t202, i32 0, i32 0
  store i64 3, ptr %t203
  %t205 = insertvalue { i64, i64, i64 } undef, i64 %t191, 0
  %t207 = insertvalue { i64, i64, i64 } %t205, i64 %t196, 1
  %t209 = insertvalue { i64, i64, i64 } %t207, i64 %t201, 2
  %t210 = getelementptr { i64, [3 x i64] }, ptr %t202, i32 0, i32 1
  store { i64, i64, i64 } %t209, ptr %t210
  %t211 = load { i64, [3 x i64] }, ptr %t202
  store { i64, [3 x i64] } %t211, ptr %l13
  %t213 = getelementptr %"compiler/names:Unread", ptr %l12, i32 0, i32 3
  %t214 = load i1, ptr %t213, !tbaa !21
  br i1 %t214, label %bb58, label %bb59
bb58:
  store %olang.scope zeroinitializer, ptr %s14
  %t216 = load ptr, ptr %l0, !tbaa !29
  %t218 = getelementptr %"compiler/check:Checker", ptr %t216, i32 0, i32 1
  %t219 = load ptr, ptr %t218, !tbaa !29
  %t221 = getelementptr %"compiler/generic:Program", ptr %t219, i32 0, i32 0
  %t222 = load ptr, ptr %t221, !tbaa !29
  %t224 = getelementptr %"compiler/load:Loader", ptr %t222, i32 0, i32 4
  %t225 = load ptr, ptr %t224, !tbaa !29
  store ptr %t225, ptr %l113, !tbaa !29
  %t226 = load { i64, [3 x i64] }, ptr %l13
  store { i64, [3 x i64] } %t226, ptr %l114
  %t227 = load ptr, ptr %l0, !tbaa !29
  %t228 = getelementptr %"compiler/names:Unread", ptr %l12, i32 0, i32 2
  %t229 = load i32, ptr %t228, !tbaa !23
  %t232 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %s14, ptr %t227, i32 %t229)
  store { i64, ptr } %t232, ptr %l117
  br label %bb60
bb59:
  br label %bb63
bb60:
  %t233 = load { i64, ptr }, ptr %l117, !tbaa !27
  %t234 = extractvalue { i64, ptr } %t233, 0
  %t235 = extractvalue { i64, ptr } %t233, 1
  %t236 = mul i64 %t234, 1
  %t237 = call ptr @__olang_scope_alloc(ptr %s14, i64 %t236)
  call void @llvm.memcpy.p0.p0.i64(ptr %t237, ptr %t235, i64 %t236, i1 false)
  %t238 = insertvalue { i64, ptr } undef, i64 %t234, 0
  %t239 = insertvalue { i64, ptr } %t238, ptr %t237, 1
  %t241 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLocalUnusedBare(ptr %s14, ptr %s14, { i64, ptr } %t239)
  store %"compiler/diagmsg:Msg" %t241, ptr %l119
  br label %bb61
bb61:
  %t242 = load ptr, ptr %l113, !tbaa !29
  %t243 = load { i64, [3 x i64] }, ptr %l114
  %t244 = load %"compiler/diagmsg:Msg", ptr %l119
  %t245 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrorAlone(ptr %v0, ptr %s14, ptr %t242, { i64, [3 x i64] } %t243, %"compiler/diagmsg:Msg" %t244)
  store i64 %t245, ptr %l120
  br label %bb62
bb62:
  call void @__olang_scope_close(ptr %s14)
  call void @__olang_scope_close(ptr %s13)
  br label %bb75
bb63:
  %t246 = getelementptr %"compiler/names:Unread", ptr %l12, i32 0, i32 0
  %t247 = load i64, ptr %t246, !tbaa !24
  %t248 = getelementptr %"compiler/names:Unread", ptr %l12, i32 0, i32 1
  %t249 = getelementptr %"compiler/source:Span", ptr %t248, i32 0, i32 0
  %t250 = load i32, ptr %t249, !tbaa !23
  %t252 = sext i32 %t250 to i64
  %t254 = shl i64 %t252, 32
  %t255 = getelementptr %"compiler/names:Unread", ptr %l12, i32 0, i32 1
  %t256 = getelementptr %"compiler/source:Span", ptr %t255, i32 0, i32 1
  %t257 = load i32, ptr %t256, !tbaa !23
  %t259 = sext i32 %t257 to i64
  %t262 = or i64 %t254, %t259
  %t265 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s13, i64 %t247, i64 %t262)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t265, ptr %l128
  br label %bb64
bb64:
  %t266 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l128
  %t270 = call { i32, i1 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H190b78e3c1eec037529224679e114a85(ptr %s0, ptr %l1, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t266)
  %t271 = extractvalue { i32, i1 } %t270, 1
  %t272 = extractvalue { i32, i1 } %t270, 0
  store i32 %t272, ptr %l133
  %t273 = icmp ne i32 %t272, 0
  br i1 %t273, label %bb66, label %ok.274, !prof !99
ok.274:
  store i1 %t271, ptr %l132
  br label %bb65
bb65:
  %t275 = load i1, ptr %l132, !tbaa !21
  store i1 %t275, ptr %l129, !tbaa !21
  br label %bb68
bb66:
  br label %bb67
bb67:
  store i1 false, ptr %l129, !tbaa !21
  br label %bb68
bb68:
  %t276 = load i1, ptr %l129, !tbaa !21
  %t277 = xor i1 %t276, true
  br i1 %t277, label %bb69, label %bb70
bb69:
  call void @__olang_scope_close(ptr %s13)
  br label %bb75
bb70:
  br label %bb71
bb71:
  %t279 = load ptr, ptr %l0, !tbaa !29
  %t281 = getelementptr %"compiler/check:Checker", ptr %t279, i32 0, i32 1
  %t282 = load ptr, ptr %t281, !tbaa !29
  %t284 = getelementptr %"compiler/generic:Program", ptr %t282, i32 0, i32 0
  %t285 = load ptr, ptr %t284, !tbaa !29
  %t287 = getelementptr %"compiler/load:Loader", ptr %t285, i32 0, i32 4
  %t288 = load ptr, ptr %t287, !tbaa !29
  store ptr %t288, ptr %l138, !tbaa !29
  %t289 = load { i64, [3 x i64] }, ptr %l13
  store { i64, [3 x i64] } %t289, ptr %l139
  %t290 = load ptr, ptr %l0, !tbaa !29
  %t291 = getelementptr %"compiler/names:Unread", ptr %l12, i32 0, i32 2
  %t292 = load i32, ptr %t291, !tbaa !23
  %t295 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %s13, ptr %t290, i32 %t292)
  store { i64, ptr } %t295, ptr %l142
  br label %bb72
bb72:
  %t296 = load { i64, ptr }, ptr %l142, !tbaa !27
  %t297 = extractvalue { i64, ptr } %t296, 0
  %t298 = extractvalue { i64, ptr } %t296, 1
  %t299 = mul i64 %t297, 1
  %t300 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t299)
  call void @llvm.memcpy.p0.p0.i64(ptr %t300, ptr %t298, i64 %t299, i1 false)
  %t301 = insertvalue { i64, ptr } undef, i64 %t297, 0
  %t302 = insertvalue { i64, ptr } %t301, ptr %t300, 1
  %t304 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLocalUnused(ptr %s13, ptr %s13, { i64, ptr } %t302)
  store %"compiler/diagmsg:Msg" %t304, ptr %l144
  br label %bb73
bb73:
  %t305 = load ptr, ptr %l138, !tbaa !29
  %t306 = load { i64, [3 x i64] }, ptr %l139
  %t307 = load %"compiler/diagmsg:Msg", ptr %l144
  %t308 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrorAlone(ptr %v0, ptr %s13, ptr %t305, { i64, [3 x i64] } %t306, %"compiler/diagmsg:Msg" %t307)
  store i64 %t308, ptr %l145
  br label %bb74
bb74:
  call void @__olang_scope_close(ptr %s13)
  br label %bb75
bb75:
  %t309 = load i64, ptr %l11, !tbaa !24
  %t311 = add i64 %t309, 1
  store i64 %t311, ptr %l11, !tbaa !24
  br label %bb52
bb76:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eshapeOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca ptr
  %l13 = alloca i1
  %l20 = alloca ptr
  %l21 = alloca i1
  %l28 = alloca i32
  %l31 = alloca %"compiler/check:elemsShape"
  %l38 = alloca i64
  %l41 = alloca i64
  %l59 = alloca { i64, ptr }
  %l62 = alloca i1
  %l68 = alloca %"compiler/check:elemsShape"
  %l73 = alloca %"compiler/check:elemsShape"
  %rv = alloca ptr
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l12, !tbaa !29
  store i1 false, ptr %l13, !tbaa !21
  %t2 = load ptr, ptr %l12, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l12, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 9}
  %t8 = icmp eq i64 %t6, 6
  store i1 %t8, ptr %l13, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l13, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t12, i32 0, i32 1
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [4 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t18, i32 0, i32 2
  %t20 = load { i64, ptr }, ptr %t19
  store { i64, ptr } %t20, ptr %l3, !tbaa !27
  br label %bb5
bb4:
  br label %bb39
bb5:
  %t22 = load ptr, ptr %l2, !tbaa !29
  store ptr %t22, ptr %l20, !tbaa !29
  store i1 false, ptr %l21, !tbaa !21
  %t23 = load ptr, ptr %l20, !tbaa !29
  %t24 = icmp ne ptr %t23, null
  br i1 %t24, label %bb6, label %bb7
bb6:
  %t26 = load ptr, ptr %l20, !tbaa !29
  %t27 = load i64, ptr %t26, !range !{i64 0, i64 30}
  %t29 = icmp eq i64 %t27, 15
  store i1 %t29, ptr %l21, !tbaa !21
  br label %bb7
bb7:
  %t30 = load i1, ptr %l21, !tbaa !21
  br i1 %t30, label %bb8, label %bb9
bb8:
  %t31 = load ptr, ptr %l2, !tbaa !29
  %t33 = getelementptr { i64, [4 x i64] }, ptr %t31, i32 0, i32 1
  %t34 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t33, i32 0, i32 1
  %t35 = load ptr, ptr %t34
  store ptr %t35, ptr %l4, !tbaa !29
  br label %bb10
bb9:
  br label %bb16
bb10:
  %t38 = load ptr, ptr %l4, !tbaa !29
  %t41 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeNamed(ptr %v0, ptr %v1, ptr %a0, ptr %t38)
  store i32 %t41, ptr %l28
  br label %bb11
bb11:
  %t42 = load i32, ptr %l28, !tbaa !23
  %t43 = icmp slt i32 %t42, 0
  br i1 %t43, label %bb12, label %bb13
bb12:
  %t45 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t47 = call %"compiler/check:elemsShape" @compiler_2fcheck_3aelemsShape_2ector(ptr %v1, ptr %v2, { i64, ptr } %t45, i64 -2)
  store %"compiler/check:elemsShape" %t47, ptr %l31
  br label %bb14
bb13:
  br label %bb15
bb14:
  %t48 = load %"compiler/check:elemsShape", ptr %l31
  %t49 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 24, i64 8)
  store %"compiler/check:elemsShape" %t48, ptr %t49
  store ptr %t49, ptr %rv
  br label %ret
bb15:
  br label %bb21
bb16:
  br i1 true, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb21
bb20:
  call void @__olang_check_failed(ptr @olang_loc_c0d1d2eb81d1d8d1_71bd70056b23e28d)
  unreachable
bb21:
  store i64 -1, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  %t51 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t53 = extractvalue { i64, ptr } %t51, 0
  store i64 %t53, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t55 = load i64, ptr %l7, !tbaa !24
  %t56 = load i64, ptr %l6, !tbaa !24
  %t59 = icmp sgt i64 %t55, %t56
  br i1 %t59, label %bb22, label %bb23
bb22:
  %t61 = load i64, ptr %l8, !tbaa !24
  %t63 = icmp sgt i64 %t61, 0
  br i1 %t63, label %bb24, label %bb25
bb23:
  store i64 0, ptr %l38, !tbaa !24
  br label %bb27
bb24:
  %t65 = load i64, ptr %l7, !tbaa !24
  %t66 = load i64, ptr %l6, !tbaa !24
  %t69 = sub i64 %t65, %t66
  %t70 = load i64, ptr %l8, !tbaa !24
  %t73 = add i64 %t69, %t70
  %t75 = sub i64 %t73, 1
  %t76 = load i64, ptr %l8, !tbaa !24
  %t79 = sdiv i64 %t75, %t76
  store i64 %t79, ptr %l41, !tbaa !24
  br label %bb26
bb25:
  store i64 0, ptr %l41, !tbaa !24
  br label %bb26
bb26:
  %t81 = load i64, ptr %l41, !tbaa !24
  store i64 %t81, ptr %l38, !tbaa !24
  br label %bb27
bb27:
  %t82 = load i64, ptr %l38, !tbaa !24
  store i64 %t82, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb28
bb28:
  %t83 = load i64, ptr %l10, !tbaa !24
  %t84 = load i64, ptr %l9, !tbaa !24
  %t87 = icmp slt i64 %t83, %t84
  %t89 = xor i1 %t87, true
  br i1 %t89, label %bb29, label %bb30
bb29:
  br label %bb37
bb30:
  br label %bb31
bb31:
  %t91 = load i64, ptr %l6, !tbaa !24
  %t92 = load i64, ptr %l10, !tbaa !24
  %t93 = load i64, ptr %l8, !tbaa !24
  %t96 = mul i64 %t92, %t93
  %t99 = add i64 %t91, %t96
  store i64 %t99, ptr %l11, !tbaa !24
  %t101 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t101, ptr %l59, !tbaa !27
  %t102 = load i64, ptr %l11, !tbaa !24
  %t104 = getelementptr { i64, ptr }, ptr %l59, i32 0, i32 1
  %t105 = load ptr, ptr %t104, !tbaa !27
  %t106 = getelementptr ptr, ptr %t105, i64 %t102
  %t107 = load ptr, ptr %t106, !tbaa !39
  %t109 = call i1 @compiler_2fcheck_2eisRest(ptr %v1, ptr %t107)
  store i1 %t109, ptr %l62
  br label %bb32
bb32:
  %t110 = load i1, ptr %l62, !tbaa !21
  br i1 %t110, label %bb33, label %bb34
bb33:
  %t111 = load i64, ptr %l11, !tbaa !24
  store i64 %t111, ptr %l5, !tbaa !24
  br label %bb35
bb34:
  br label %bb35
bb35:
  br label %bb36
bb36:
  %t113 = load i64, ptr %l10, !tbaa !24
  %t115 = add i64 %t113, 1
  store i64 %t115, ptr %l10, !tbaa !24
  br label %bb28
bb37:
  %t117 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t118 = load i64, ptr %l5, !tbaa !24
  %t121 = call %"compiler/check:elemsShape" @compiler_2fcheck_3aelemsShape_2ector(ptr %v1, ptr %v2, { i64, ptr } %t117, i64 %t118)
  store %"compiler/check:elemsShape" %t121, ptr %l68
  br label %bb38
bb38:
  %t122 = load %"compiler/check:elemsShape", ptr %l68
  %t123 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 24, i64 8)
  store %"compiler/check:elemsShape" %t122, ptr %t123
  store ptr %t123, ptr %rv
  br label %ret
bb39:
  br i1 true, label %bb40, label %bb41
bb40:
  br label %bb42
bb41:
  br label %bb48
bb42:
  %t125 = icmp sge i64 0, 0
  br i1 %t125, label %bb43, label %bb44
bb43:
  %t127 = icmp sle i64 0, 1152921504606846975
  br i1 %t127, label %bb45, label %bb46
bb44:
  call void @__olang_check_failed(ptr @olang_loc_70e9f05b266be8f7_36ef9a2f9f93b02b)
  unreachable
bb45:
  %t129 = mul i64 0, 8
  %t130 = insertvalue { i64, ptr } undef, i64 0, 0
  %t131 = insertvalue { i64, ptr } %t130, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t133 = call %"compiler/check:elemsShape" @compiler_2fcheck_3aelemsShape_2ector(ptr %v2, ptr %v2, { i64, ptr } %t131, i64 -2)
  store %"compiler/check:elemsShape" %t133, ptr %l73
  br label %bb47
bb46:
  call void @__olang_check_failed(ptr @olang_loc_70e9f05b266be8f7_36ef9a2f9f93b02b)
  unreachable
bb47:
  %t134 = load %"compiler/check:elemsShape", ptr %l73
  %t135 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 24, i64 8)
  store %"compiler/check:elemsShape" %t134, ptr %t135
  store ptr %t135, ptr %rv
  br label %ret
bb48:
  call void @__olang_check_failed(ptr @olang_loc_7d3bd01c87e6cabb_168a15d9febd8197)
  unreachable
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esigText(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca %"std/prelude/text:StringBuilder"
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i32
  %l16 = alloca i64
  %l18 = alloca i1
  %l19 = alloca { i64, ptr }
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i32
  %l23 = alloca i32
  %l24 = alloca { i64, ptr }
  %l25 = alloca { i64, ptr }
  %l26 = alloca i64
  %l27 = alloca i1
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca i64
  %l31 = alloca i64
  %l32 = alloca i64
  %l33 = alloca i64
  %l34 = alloca i1
  %l35 = alloca i64
  %l36 = alloca i64
  %l37 = alloca i64
  %l38 = alloca i64
  %l39 = alloca i64
  %l40 = alloca i64
  %l42 = alloca ptr
  %l46 = alloca i64
  %l47 = alloca ptr
  %l51 = alloca i32
  %l52 = alloca %"std/prelude/text:StringBuilder"
  %l53 = alloca ptr
  %l57 = alloca { i64, ptr }
  %l61 = alloca ptr
  %l66 = alloca i32
  %l67 = alloca { i64, ptr }
  %l79 = alloca i64
  %l82 = alloca i64
  %l103 = alloca ptr
  %l107 = alloca { i64, ptr }
  %l111 = alloca { i64, ptr }
  %l121 = alloca { i64, ptr }
  %l133 = alloca i64
  %l135 = alloca { i64, ptr }
  %l140 = alloca i1
  %l141 = alloca i1
  %l145 = alloca i1
  %l151 = alloca ptr
  %l155 = alloca { i64, ptr }
  %l161 = alloca { i64, ptr }
  %l169 = alloca i32
  %l181 = alloca i64
  %l184 = alloca i1
  %l185 = alloca i1
  %l189 = alloca i1
  %l198 = alloca ptr
  %l202 = alloca { i64, ptr }
  %l208 = alloca { i64, ptr }
  %l211 = alloca ptr
  %l214 = alloca i32
  %l215 = alloca { i64, ptr }
  %l223 = alloca { i64, ptr }
  %l229 = alloca ptr
  %l231 = alloca { i64, ptr }
  %l236 = alloca i32
  %l243 = alloca i32
  %l244 = alloca ptr
  %l247 = alloca ptr
  %l252 = alloca i32
  %l253 = alloca i32
  %l254 = alloca { i64, ptr }
  %l257 = alloca ptr
  %l260 = alloca ptr
  %l265 = alloca i32
  %l266 = alloca i64
  %l267 = alloca { i64, ptr }
  %l272 = alloca ptr
  %l277 = alloca i32
  %l278 = alloca { i64, ptr }
  %l283 = alloca i64
  %l289 = alloca i64
  %l292 = alloca i64
  %l312 = alloca i1
  %l314 = alloca i64
  %l322 = alloca { i64, ptr }
  %l329 = alloca i64
  %l332 = alloca i64
  %l352 = alloca i1
  %l354 = alloca i64
  %l361 = alloca ptr
  %l362 = alloca { i64, ptr }
  %l364 = alloca { i64, ptr }
  %l367 = alloca { i64, ptr }
  %l378 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %s23 = alloca %olang.scope
  %s24 = alloca %olang.scope
  %rv = alloca { i64, ptr }
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
  store ptr %t4, ptr %l42, !tbaa !29
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/check:Checker", ptr %t5, i32 0, i32 1
  %t8 = load ptr, ptr %t7, !tbaa !29
  %t9 = load i64, ptr %l1, !tbaa !24
  %t12 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %t8, i64 %t9)
  store i64 %t12, ptr %l46
  br label %bb1
bb1:
  %t13 = load ptr, ptr %l42, !tbaa !29
  %t14 = load i64, ptr %l46, !tbaa !24
  %t15 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t13, i64 %t14)
  store ptr %t15, ptr %l47
  br label %bb2
bb2:
  %t16 = load ptr, ptr %l47, !tbaa !29
  store ptr %t16, ptr %l3, !tbaa !29
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/check:Checker", ptr %t17, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !29
  %t21 = load i64, ptr %l1, !tbaa !24
  %t24 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceSig(ptr %v0, ptr %t20, i64 %t21)
  store i32 %t24, ptr %l51
  br label %bb3
bb3:
  %t25 = load i32, ptr %l51, !tbaa !23
  store i32 %t25, ptr %l4, !tbaa !23
  %t26 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t26, ptr %l52
  br label %bb4
bb4:
  %t27 = load %"std/prelude/text:StringBuilder", ptr %l52
  store %"std/prelude/text:StringBuilder" %t27, ptr %l5
  store ptr %l5, ptr %l53, !tbaa !29
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t29 = load ptr, ptr %l3, !tbaa !29
  %t31 = getelementptr %"compiler/ast:Func", ptr %t29, i32 0, i32 2
  %t32 = load i32, ptr %t31, !tbaa !23
  %t35 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t28, i32 %t32)
  store { i64, ptr } %t35, ptr %l57
  br label %bb5
bb5:
  %t36 = load ptr, ptr %l53, !tbaa !29
  %t37 = load { i64, ptr }, ptr %l57, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %v0, ptr %t36, { i64, ptr } %t37)
  br label %bb6
bb6:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l5, i8 40)
  br label %bb7
bb7:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/check:Checker", ptr %t39, i32 0, i32 1
  %t42 = load ptr, ptr %t41, !tbaa !29
  %t44 = getelementptr %"compiler/generic:Program", ptr %t42, i32 0, i32 2
  store ptr %t44, ptr %l61, !tbaa !29
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/check:Checker", ptr %t45, i32 0, i32 1
  %t48 = load ptr, ptr %t47, !tbaa !29
  %t50 = getelementptr %"compiler/generic:Program", ptr %t48, i32 0, i32 2
  %t51 = load i32, ptr %l4, !tbaa !23
  %t54 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t50, i32 %t51)
  store i32 %t54, ptr %l66
  br label %bb8
bb8:
  %t55 = load ptr, ptr %l61, !tbaa !29
  %t56 = load i32, ptr %l66, !tbaa !23
  %t57 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t55, i32 %t56)
  store { i64, ptr } %t57, ptr %l67
  br label %bb9
bb9:
  %t58 = load { i64, ptr }, ptr %l67, !tbaa !27
  store { i64, ptr } %t58, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t59 = load ptr, ptr %l3, !tbaa !29
  %t61 = getelementptr %"compiler/ast:Func", ptr %t59, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !29
  %t64 = icmp eq ptr %t62, null
  %t66 = xor i1 %t64, true
  br i1 %t66, label %bb10, label %bb11
bb10:
  store i64 1, ptr %l7, !tbaa !24
  br label %bb12
bb11:
  br label %bb12
bb12:
  store i64 0, ptr %l8, !tbaa !24
  %t68 = load ptr, ptr %l3, !tbaa !29
  %t70 = getelementptr %"compiler/ast:Func", ptr %t68, i32 0, i32 3
  %t71 = load ptr, ptr %t70, !tbaa !29
  %t73 = getelementptr %"compiler/ast:Sig", ptr %t71, i32 0, i32 0
  %t74 = load { i64, ptr }, ptr %t73, !tbaa !27
  %t76 = extractvalue { i64, ptr } %t74, 0
  store i64 %t76, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t78 = load i64, ptr %l9, !tbaa !24
  %t79 = load i64, ptr %l8, !tbaa !24
  %t82 = icmp sgt i64 %t78, %t79
  br i1 %t82, label %bb13, label %bb14
bb13:
  %t84 = load i64, ptr %l10, !tbaa !24
  %t86 = icmp sgt i64 %t84, 0
  br i1 %t86, label %bb15, label %bb16
bb14:
  store i64 0, ptr %l79, !tbaa !24
  br label %bb18
bb15:
  %t88 = load i64, ptr %l9, !tbaa !24
  %t89 = load i64, ptr %l8, !tbaa !24
  %t92 = sub i64 %t88, %t89
  %t93 = load i64, ptr %l10, !tbaa !24
  %t96 = add i64 %t92, %t93
  %t98 = sub i64 %t96, 1
  %t99 = load i64, ptr %l10, !tbaa !24
  %t102 = sdiv i64 %t98, %t99
  store i64 %t102, ptr %l82, !tbaa !24
  br label %bb17
bb16:
  store i64 0, ptr %l82, !tbaa !24
  br label %bb17
bb17:
  %t104 = load i64, ptr %l82, !tbaa !24
  store i64 %t104, ptr %l79, !tbaa !24
  br label %bb18
bb18:
  %t105 = load i64, ptr %l79, !tbaa !24
  store i64 %t105, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  br label %bb19
bb19:
  %t106 = load i64, ptr %l12, !tbaa !24
  %t107 = load i64, ptr %l11, !tbaa !24
  %t110 = icmp slt i64 %t106, %t107
  %t112 = xor i1 %t110, true
  br i1 %t112, label %bb20, label %bb21
bb20:
  br label %bb48
bb21:
  br label %bb22
bb22:
  %t114 = load i64, ptr %l8, !tbaa !24
  %t115 = load i64, ptr %l12, !tbaa !24
  %t116 = load i64, ptr %l10, !tbaa !24
  %t119 = mul i64 %t115, %t116
  %t122 = add i64 %t114, %t119
  store i64 %t122, ptr %l13, !tbaa !24
  %t124 = load i64, ptr %l13, !tbaa !24
  %t126 = icmp sgt i64 %t124, 0
  br i1 %t126, label %bb23, label %bb24
bb23:
  store %olang.scope zeroinitializer, ptr %s4
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s4, ptr %l5, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d20, i32 0, i32 1) })
  br label %bb25
bb24:
  br label %bb26
bb25:
  call void @__olang_scope_close(ptr %s4)
  br label %bb26
bb26:
  store ptr %l5, ptr %l103, !tbaa !29
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t130 = load ptr, ptr %l3, !tbaa !29
  %t132 = getelementptr %"compiler/ast:Func", ptr %t130, i32 0, i32 3
  %t133 = load ptr, ptr %t132, !tbaa !29
  %t135 = getelementptr %"compiler/ast:Sig", ptr %t133, i32 0, i32 0
  %t136 = load { i64, ptr }, ptr %t135, !tbaa !27
  store { i64, ptr } %t136, ptr %l107, !tbaa !27
  %t137 = load i64, ptr %l13, !tbaa !24
  %t139 = getelementptr { i64, ptr }, ptr %l107, i32 0, i32 1
  %t140 = load ptr, ptr %t139, !tbaa !27
  %t141 = getelementptr ptr, ptr %t140, i64 %t137
  %t142 = load ptr, ptr %t141, !tbaa !39
  %t144 = getelementptr %"compiler/ast:Param", ptr %t142, i32 0, i32 1
  %t145 = load i32, ptr %t144, !tbaa !23
  %t148 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t129, i32 %t145)
  store { i64, ptr } %t148, ptr %l111
  br label %bb27
bb27:
  %t149 = load ptr, ptr %l103, !tbaa !29
  %t150 = load { i64, ptr }, ptr %l111, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %v0, ptr %t149, { i64, ptr } %t150)
  br label %bb28
bb28:
  %t151 = load i64, ptr %l7, !tbaa !24
  %t152 = load i64, ptr %l13, !tbaa !24
  %t155 = add i64 %t151, %t152
  %t156 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t158 = extractvalue { i64, ptr } %t156, 0
  %t161 = icmp slt i64 %t155, %t158
  br i1 %t161, label %bb29, label %bb30
bb29:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l5, i8 32)
  br label %bb31
bb30:
  br label %bb46
bb31:
  %t164 = load ptr, ptr %l0, !tbaa !29
  %t165 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t165, ptr %l121, !tbaa !27
  %t166 = load i64, ptr %l7, !tbaa !24
  %t167 = load i64, ptr %l13, !tbaa !24
  %t170 = add i64 %t166, %t167
  %t172 = getelementptr { i64, ptr }, ptr %l121, i32 0, i32 1
  %t173 = load ptr, ptr %t172, !tbaa !27
  %t174 = getelementptr i32, ptr %t173, i64 %t170
  %t175 = load i32, ptr %t174, !tbaa !33
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2espell(ptr %v0, ptr %s0, ptr %t164, ptr %l5, i32 %t175, i1 false)
  br label %bb32
bb32:
  %t179 = load ptr, ptr %l0, !tbaa !29
  %t181 = getelementptr %"compiler/check:Checker", ptr %t179, i32 0, i32 1
  %t182 = load ptr, ptr %t181, !tbaa !29
  %t184 = getelementptr %"compiler/generic:Program", ptr %t182, i32 0, i32 2
  %t185 = load i32, ptr %l4, !tbaa !23
  %t186 = load i64, ptr %l7, !tbaa !24
  %t187 = load i64, ptr %l13, !tbaa !24
  %t190 = add i64 %t186, %t187
  %t194 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShareOf(ptr %v0, ptr %t184, i32 %t185, i64 %t190)
  store i64 %t194, ptr %l133
  br label %bb33
bb33:
  %t195 = load i64, ptr %l133, !tbaa !24
  store i64 %t195, ptr %l14, !tbaa !24
  %t196 = load ptr, ptr %l0, !tbaa !29
  %t197 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t197, ptr %l135, !tbaa !27
  %t198 = load i64, ptr %l7, !tbaa !24
  %t199 = load i64, ptr %l13, !tbaa !24
  %t202 = add i64 %t198, %t199
  %t204 = getelementptr { i64, ptr }, ptr %l135, i32 0, i32 1
  %t205 = load ptr, ptr %t204, !tbaa !27
  %t206 = getelementptr i32, ptr %t205, i64 %t202
  %t207 = load i32, ptr %t206, !tbaa !33
  %t210 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t196, i32 %t207)
  store i1 %t210, ptr %l140
  br label %bb34
bb34:
  %t211 = load i1, ptr %l140, !tbaa !21
  br i1 %t211, label %bb35, label %bb36
bb35:
  %t212 = load i64, ptr %l14, !tbaa !24
  %t213 = load i64, ptr %l7, !tbaa !24
  %t216 = icmp sge i64 %t212, %t213
  store i1 %t216, ptr %l141, !tbaa !21
  br label %bb37
bb36:
  store i1 false, ptr %l141, !tbaa !21
  br label %bb37
bb37:
  %t218 = load i1, ptr %l141, !tbaa !21
  br i1 %t218, label %bb38, label %bb39
bb38:
  %t219 = load i64, ptr %l14, !tbaa !24
  %t220 = load i64, ptr %l7, !tbaa !24
  %t223 = sub i64 %t219, %t220
  %t224 = load i64, ptr %l13, !tbaa !24
  %t227 = icmp slt i64 %t223, %t224
  store i1 %t227, ptr %l145, !tbaa !21
  br label %bb40
bb39:
  store i1 false, ptr %l145, !tbaa !21
  br label %bb40
bb40:
  %t229 = load i1, ptr %l145, !tbaa !21
  br i1 %t229, label %bb41, label %bb42
bb41:
  store ptr %l5, ptr %l151, !tbaa !29
  %t230 = load ptr, ptr %l0, !tbaa !29
  %t231 = load ptr, ptr %l3, !tbaa !29
  %t233 = getelementptr %"compiler/ast:Func", ptr %t231, i32 0, i32 3
  %t234 = load ptr, ptr %t233, !tbaa !29
  %t236 = getelementptr %"compiler/ast:Sig", ptr %t234, i32 0, i32 0
  %t237 = load { i64, ptr }, ptr %t236, !tbaa !27
  store { i64, ptr } %t237, ptr %l155, !tbaa !27
  %t238 = load i64, ptr %l14, !tbaa !24
  %t239 = load i64, ptr %l7, !tbaa !24
  %t242 = sub i64 %t238, %t239
  %t244 = getelementptr { i64, ptr }, ptr %l155, i32 0, i32 1
  %t245 = load ptr, ptr %t244, !tbaa !27
  %t246 = getelementptr ptr, ptr %t245, i64 %t242
  %t247 = load ptr, ptr %t246, !tbaa !39
  %t249 = getelementptr %"compiler/ast:Param", ptr %t247, i32 0, i32 1
  %t250 = load i32, ptr %t249, !tbaa !23
  %t253 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t230, i32 %t250)
  store { i64, ptr } %t253, ptr %l161
  br label %bb43
bb42:
  br label %bb45
bb43:
  %t254 = load ptr, ptr %l151, !tbaa !29
  %t255 = load { i64, ptr }, ptr %l161, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %v0, ptr %t254, { i64, ptr } %t255)
  br label %bb44
bb44:
  br label %bb45
bb45:
  br label %bb46
bb46:
  br label %bb47
bb47:
  %t256 = load i64, ptr %l12, !tbaa !24
  %t258 = add i64 %t256, 1
  store i64 %t258, ptr %l12, !tbaa !24
  br label %bb19
bb48:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l5, i8 41)
  br label %bb49
bb49:
  %t261 = load ptr, ptr %l0, !tbaa !29
  %t263 = getelementptr %"compiler/check:Checker", ptr %t261, i32 0, i32 1
  %t264 = load ptr, ptr %t263, !tbaa !29
  %t266 = getelementptr %"compiler/generic:Program", ptr %t264, i32 0, i32 2
  %t267 = load i32, ptr %l4, !tbaa !23
  %t270 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t266, i32 %t267)
  store i32 %t270, ptr %l169
  br label %bb50
bb50:
  %t271 = load i32, ptr %l169, !tbaa !23
  store i32 %t271, ptr %l15, !tbaa !23
  %t272 = load i32, ptr %l15, !tbaa !23
  %t273 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t276 = icmp ne i32 %t272, %t273
  br i1 %t276, label %bb51, label %bb52
bb51:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l5, i8 32)
  br label %bb53
bb52:
  br label %bb68
bb53:
  %t279 = load ptr, ptr %l0, !tbaa !29
  %t280 = load i32, ptr %l15, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2espell(ptr %v0, ptr %s0, ptr %t279, ptr %l5, i32 %t280, i1 false)
  br label %bb54
bb54:
  %t284 = load ptr, ptr %l0, !tbaa !29
  %t286 = getelementptr %"compiler/check:Checker", ptr %t284, i32 0, i32 1
  %t287 = load ptr, ptr %t286, !tbaa !29
  %t289 = getelementptr %"compiler/generic:Program", ptr %t287, i32 0, i32 2
  %t290 = load i32, ptr %l4, !tbaa !23
  %t293 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResultFrom(ptr %v0, ptr %t289, i32 %t290, i64 0)
  store i64 %t293, ptr %l181
  br label %bb55
bb55:
  %t294 = load i64, ptr %l181, !tbaa !24
  store i64 %t294, ptr %l16, !tbaa !24
  %t295 = load ptr, ptr %l0, !tbaa !29
  %t296 = load i32, ptr %l15, !tbaa !23
  %t299 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t295, i32 %t296)
  store i1 %t299, ptr %l184
  br label %bb56
bb56:
  %t300 = load i1, ptr %l184, !tbaa !21
  br i1 %t300, label %bb57, label %bb58
bb57:
  %t301 = load i64, ptr %l16, !tbaa !24
  %t302 = load i64, ptr %l7, !tbaa !24
  %t305 = icmp sge i64 %t301, %t302
  store i1 %t305, ptr %l185, !tbaa !21
  br label %bb59
bb58:
  store i1 false, ptr %l185, !tbaa !21
  br label %bb59
bb59:
  %t307 = load i1, ptr %l185, !tbaa !21
  br i1 %t307, label %bb60, label %bb61
bb60:
  %t308 = load i64, ptr %l16, !tbaa !24
  %t309 = load i64, ptr %l7, !tbaa !24
  %t312 = sub i64 %t308, %t309
  %t313 = load ptr, ptr %l3, !tbaa !29
  %t315 = getelementptr %"compiler/ast:Func", ptr %t313, i32 0, i32 3
  %t316 = load ptr, ptr %t315, !tbaa !29
  %t318 = getelementptr %"compiler/ast:Sig", ptr %t316, i32 0, i32 0
  %t319 = load { i64, ptr }, ptr %t318, !tbaa !27
  %t321 = extractvalue { i64, ptr } %t319, 0
  %t324 = icmp slt i64 %t312, %t321
  store i1 %t324, ptr %l189, !tbaa !21
  br label %bb62
bb61:
  store i1 false, ptr %l189, !tbaa !21
  br label %bb62
bb62:
  %t326 = load i1, ptr %l189, !tbaa !21
  br i1 %t326, label %bb63, label %bb64
bb63:
  store ptr %l5, ptr %l198, !tbaa !29
  %t327 = load ptr, ptr %l0, !tbaa !29
  %t328 = load ptr, ptr %l3, !tbaa !29
  %t330 = getelementptr %"compiler/ast:Func", ptr %t328, i32 0, i32 3
  %t331 = load ptr, ptr %t330, !tbaa !29
  %t333 = getelementptr %"compiler/ast:Sig", ptr %t331, i32 0, i32 0
  %t334 = load { i64, ptr }, ptr %t333, !tbaa !27
  store { i64, ptr } %t334, ptr %l202, !tbaa !27
  %t335 = load i64, ptr %l16, !tbaa !24
  %t336 = load i64, ptr %l7, !tbaa !24
  %t339 = sub i64 %t335, %t336
  %t341 = getelementptr { i64, ptr }, ptr %l202, i32 0, i32 1
  %t342 = load ptr, ptr %t341, !tbaa !27
  %t343 = getelementptr ptr, ptr %t342, i64 %t339
  %t344 = load ptr, ptr %t343, !tbaa !39
  %t346 = getelementptr %"compiler/ast:Param", ptr %t344, i32 0, i32 1
  %t347 = load i32, ptr %t346, !tbaa !23
  %t350 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t327, i32 %t347)
  store { i64, ptr } %t350, ptr %l208
  br label %bb65
bb64:
  br label %bb67
bb65:
  %t351 = load ptr, ptr %l198, !tbaa !29
  %t352 = load { i64, ptr }, ptr %l208, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %v0, ptr %t351, { i64, ptr } %t352)
  br label %bb66
bb66:
  br label %bb67
bb67:
  br label %bb68
bb68:
  %t353 = load ptr, ptr %l0, !tbaa !29
  %t355 = getelementptr %"compiler/check:Checker", ptr %t353, i32 0, i32 1
  %t356 = load ptr, ptr %t355, !tbaa !29
  %t358 = getelementptr %"compiler/generic:Program", ptr %t356, i32 0, i32 2
  store ptr %t358, ptr %l211, !tbaa !29
  %t359 = load ptr, ptr %l0, !tbaa !29
  %t363 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebodyErrors(ptr %v0, ptr %t359, i64 %a2)
  store i32 %t363, ptr %l214
  br label %bb69
bb69:
  %t364 = load ptr, ptr %l211, !tbaa !29
  %t365 = load i32, ptr %l214, !tbaa !23
  %t366 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t364, i32 %t365)
  store { i64, ptr } %t366, ptr %l215
  br label %bb70
bb70:
  %t367 = load { i64, ptr }, ptr %l215, !tbaa !27
  store i1 true, ptr %l18, !tbaa !21
  store { i64, ptr } %t367, ptr %l19, !tbaa !27
  store i64 0, ptr %l20, !tbaa !24
  %t370 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t372 = extractvalue { i64, ptr } %t370, 0
  store i64 %t372, ptr %l21, !tbaa !24
  br label %bb71
bb71:
  store %olang.scope zeroinitializer, ptr %s11
  %t374 = load i64, ptr %l20, !tbaa !24
  %t375 = load i64, ptr %l21, !tbaa !24
  %t378 = icmp slt i64 %t374, %t375
  %t380 = xor i1 %t378, true
  br i1 %t380, label %bb72, label %bb73
bb72:
  call void @__olang_scope_close(ptr %s11)
  br label %bb147
bb73:
  br label %bb74
bb74:
  %t382 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t382, ptr %l223, !tbaa !27
  %t383 = load i64, ptr %l20, !tbaa !24
  %t385 = getelementptr { i64, ptr }, ptr %l223, i32 0, i32 1
  %t386 = load ptr, ptr %t385, !tbaa !27
  %t387 = getelementptr i32, ptr %t386, i64 %t383
  %t388 = load i32, ptr %t387, !tbaa !33
  store i32 %t388, ptr %l22, !tbaa !23
  %t390 = load i32, ptr %l22, !tbaa !23
  %t391 = load i32, ptr @G_2ecompiler_2ftypes_2eDefaultErrT, !tbaa !23
  %t394 = icmp eq i32 %t390, %t391
  br i1 %t394, label %bb75, label %bb76
bb75:
  call void @__olang_scope_close(ptr %s11)
  br label %bb146
bb76:
  br label %bb77
bb77:
  store ptr %l5, ptr %l229, !tbaa !29
  %t396 = load i1, ptr %l18, !tbaa !21
  br i1 %t396, label %bb78, label %bb79
bb78:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d21, i32 0, i32 1) }, ptr %l231, !tbaa !27
  br label %bb80
bb79:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d22, i32 0, i32 1) }, ptr %l231, !tbaa !27
  br label %bb80
bb80:
  %t398 = load ptr, ptr %l229, !tbaa !29
  %t399 = load { i64, ptr }, ptr %l231, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s11, ptr %t398, { i64, ptr } %t399)
  br label %bb81
bb81:
  store i1 false, ptr %l18, !tbaa !21
  %t400 = load ptr, ptr %l0, !tbaa !29
  %t402 = getelementptr %"compiler/check:Checker", ptr %t400, i32 0, i32 1
  %t403 = load ptr, ptr %t402, !tbaa !29
  %t405 = getelementptr %"compiler/generic:Program", ptr %t403, i32 0, i32 2
  %t406 = load i32, ptr %l22, !tbaa !23
  %t409 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t405, i32 %t406)
  store i32 %t409, ptr %l236
  br label %bb82
bb82:
  %t410 = load i32, ptr %l236, !range !{i32 0, i32 33}
  %t412 = trunc i64 28 to i32
  %t413 = icmp eq i32 %t410, %t412
  br i1 %t413, label %bb83, label %bb84
bb83:
  store %olang.scope zeroinitializer, ptr %s13
  %t415 = load ptr, ptr %l0, !tbaa !29
  %t417 = getelementptr %"compiler/check:Checker", ptr %t415, i32 0, i32 1
  %t418 = load ptr, ptr %t417, !tbaa !29
  %t420 = getelementptr %"compiler/generic:Program", ptr %t418, i32 0, i32 2
  %t421 = load i32, ptr %l22, !tbaa !23
  %t424 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t420, i32 %t421)
  store i32 %t424, ptr %l243
  br label %bb85
bb84:
  br label %bb144
bb85:
  %t425 = load i32, ptr %l243, !tbaa !23
  store i32 %t425, ptr %l23, !tbaa !23
  %t426 = load ptr, ptr %l0, !tbaa !29
  store ptr %t426, ptr %l244, !tbaa !29
  %t427 = load ptr, ptr %l0, !tbaa !29
  %t429 = getelementptr %"compiler/check:Checker", ptr %t427, i32 0, i32 1
  %t430 = load ptr, ptr %t429, !tbaa !29
  %t432 = getelementptr %"compiler/generic:Program", ptr %t430, i32 0, i32 2
  store ptr %t432, ptr %l247, !tbaa !29
  %t433 = load ptr, ptr %l0, !tbaa !29
  %t435 = getelementptr %"compiler/check:Checker", ptr %t433, i32 0, i32 1
  %t436 = load ptr, ptr %t435, !tbaa !29
  %t438 = getelementptr %"compiler/generic:Program", ptr %t436, i32 0, i32 2
  %t439 = load i32, ptr %l23, !tbaa !23
  %t442 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t438, i32 %t439)
  store i32 %t442, ptr %l252
  br label %bb86
bb86:
  %t443 = load ptr, ptr %l247, !tbaa !29
  %t444 = load i32, ptr %l252, !tbaa !23
  %t445 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %t443, i32 %t444)
  store i32 %t445, ptr %l253
  br label %bb87
bb87:
  %t446 = load ptr, ptr %l244, !tbaa !29
  %t447 = load i32, ptr %l253, !tbaa !23
  %t448 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t446, i32 %t447)
  store { i64, ptr } %t448, ptr %l254
  br label %bb88
bb88:
  %t449 = load { i64, ptr }, ptr %l254, !tbaa !27
  store { i64, ptr } %t449, ptr %l24, !tbaa !27
  %t450 = load ptr, ptr %l0, !tbaa !29
  %t452 = getelementptr %"compiler/check:Checker", ptr %t450, i32 0, i32 5
  %t453 = load i1, ptr %t452, !tbaa !21
  br i1 %t453, label %bb89, label %bb90
bb89:
  store %olang.scope zeroinitializer, ptr %s14
  %t455 = load ptr, ptr %l0, !tbaa !29
  store ptr %t455, ptr %l257, !tbaa !29
  %t456 = load ptr, ptr %l0, !tbaa !29
  %t458 = getelementptr %"compiler/check:Checker", ptr %t456, i32 0, i32 1
  %t459 = load ptr, ptr %t458, !tbaa !29
  %t461 = getelementptr %"compiler/generic:Program", ptr %t459, i32 0, i32 2
  store ptr %t461, ptr %l260, !tbaa !29
  %t462 = load ptr, ptr %l0, !tbaa !29
  %t464 = getelementptr %"compiler/check:Checker", ptr %t462, i32 0, i32 1
  %t465 = load ptr, ptr %t464, !tbaa !29
  %t467 = getelementptr %"compiler/generic:Program", ptr %t465, i32 0, i32 2
  %t468 = load i32, ptr %l23, !tbaa !23
  %t471 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t467, i32 %t468)
  store i32 %t471, ptr %l265
  br label %bb91
bb90:
  br label %bb94
bb91:
  %t472 = load ptr, ptr %l260, !tbaa !29
  %t473 = load i32, ptr %l265, !tbaa !23
  %t474 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %t472, i32 %t473)
  store i64 %t474, ptr %l266
  br label %bb92
bb92:
  %t475 = load ptr, ptr %l257, !tbaa !29
  %t476 = load i64, ptr %l266, !tbaa !24
  %t477 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2equalifierFor(ptr %v0, ptr %s14, ptr %t475, i64 %t476)
  store { i64, ptr } %t477, ptr %l267
  br label %bb93
bb93:
  %t478 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t479 = load { i64, ptr }, ptr %l267, !tbaa !27
  %t480 = extractvalue { i64, ptr } %t479, 1
  %t481 = extractvalue { i64, ptr } %t479, 0
  %t483 = extractvalue { i64, ptr } %t478, 1
  %t484 = extractvalue { i64, ptr } %t478, 0
  %t485 = add i64 %t481, %t484
  %t486 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t485)
  call void @olang_textcopy(ptr %t486, ptr %t480, i64 %t481)
  %t487 = getelementptr i8, ptr %t486, i64 %t481
  call void @olang_textcopy(ptr %t487, ptr %t483, i64 %t484)
  %t488 = insertvalue { i64, ptr } undef, i64 %t485, 0
  %t489 = insertvalue { i64, ptr } %t488, ptr %t486, 1
  %t491 = extractvalue { i64, ptr } %t489, 0
  %t492 = extractvalue { i64, ptr } %t489, 1
  %t493 = mul i64 %t491, 1
  %t494 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t493)
  call void @llvm.memcpy.p0.p0.i64(ptr %t494, ptr %t492, i64 %t493, i1 false)
  %t495 = insertvalue { i64, ptr } undef, i64 %t491, 0
  %t496 = insertvalue { i64, ptr } %t495, ptr %t494, 1
  store { i64, ptr } %t496, ptr %l24, !tbaa !27
  call void @__olang_scope_close(ptr %s14)
  br label %bb94
bb94:
  %t498 = load ptr, ptr %l0, !tbaa !29
  %t500 = getelementptr %"compiler/check:Checker", ptr %t498, i32 0, i32 1
  %t501 = load ptr, ptr %t500, !tbaa !29
  store ptr %t501, ptr %l272, !tbaa !29
  %t502 = load ptr, ptr %l0, !tbaa !29
  %t504 = getelementptr %"compiler/check:Checker", ptr %t502, i32 0, i32 1
  %t505 = load ptr, ptr %t504, !tbaa !29
  %t507 = getelementptr %"compiler/generic:Program", ptr %t505, i32 0, i32 2
  %t508 = load i32, ptr %l23, !tbaa !23
  %t511 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t507, i32 %t508)
  store i32 %t511, ptr %l277
  br label %bb95
bb95:
  %t512 = load ptr, ptr %l272, !tbaa !29
  %t513 = load i32, ptr %l277, !tbaa !23
  %t514 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorWords(ptr %v0, ptr %s13, ptr %t512, i32 %t513)
  store { i64, ptr } %t514, ptr %l278
  br label %bb96
bb96:
  %t515 = load { i64, ptr }, ptr %l278, !tbaa !27
  store { i64, ptr } %t515, ptr %l25, !tbaa !27
  %t516 = load ptr, ptr %l0, !tbaa !29
  %t518 = getelementptr %"compiler/check:Checker", ptr %t516, i32 0, i32 1
  %t519 = load ptr, ptr %t518, !tbaa !29
  %t521 = getelementptr %"compiler/generic:Program", ptr %t519, i32 0, i32 2
  %t522 = load i32, ptr %l22, !tbaa !23
  %t525 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrMask(ptr %v0, ptr %t521, i32 %t522)
  store i64 %t525, ptr %l283
  br label %bb97
bb97:
  %t526 = load i64, ptr %l283, !tbaa !65
  store i64 %t526, ptr %l26, !tbaa !65
  store i1 true, ptr %l27, !tbaa !21
  store i64 0, ptr %l28, !tbaa !24
  %t527 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t529 = extractvalue { i64, ptr } %t527, 0
  store i64 %t529, ptr %l29, !tbaa !24
  store i64 1, ptr %l30, !tbaa !24
  %t531 = load i64, ptr %l29, !tbaa !24
  %t532 = load i64, ptr %l28, !tbaa !24
  %t535 = icmp sgt i64 %t531, %t532
  br i1 %t535, label %bb98, label %bb99
bb98:
  %t537 = load i64, ptr %l30, !tbaa !24
  %t539 = icmp sgt i64 %t537, 0
  br i1 %t539, label %bb100, label %bb101
bb99:
  store i64 0, ptr %l289, !tbaa !24
  br label %bb103
bb100:
  %t541 = load i64, ptr %l29, !tbaa !24
  %t542 = load i64, ptr %l28, !tbaa !24
  %t545 = sub i64 %t541, %t542
  %t546 = load i64, ptr %l30, !tbaa !24
  %t549 = add i64 %t545, %t546
  %t551 = sub i64 %t549, 1
  %t552 = load i64, ptr %l30, !tbaa !24
  %t555 = sdiv i64 %t551, %t552
  store i64 %t555, ptr %l292, !tbaa !24
  br label %bb102
bb101:
  store i64 0, ptr %l292, !tbaa !24
  br label %bb102
bb102:
  %t557 = load i64, ptr %l292, !tbaa !24
  store i64 %t557, ptr %l289, !tbaa !24
  br label %bb103
bb103:
  %t558 = load i64, ptr %l289, !tbaa !24
  store i64 %t558, ptr %l31, !tbaa !24
  store i64 0, ptr %l32, !tbaa !24
  br label %bb104
bb104:
  %t559 = load i64, ptr %l32, !tbaa !24
  %t560 = load i64, ptr %l31, !tbaa !24
  %t563 = icmp slt i64 %t559, %t560
  %t565 = xor i1 %t563, true
  br i1 %t565, label %bb105, label %bb106
bb105:
  br label %bb115
bb106:
  br label %bb107
bb107:
  %t567 = load i64, ptr %l28, !tbaa !24
  %t568 = load i64, ptr %l32, !tbaa !24
  %t569 = load i64, ptr %l30, !tbaa !24
  %t572 = mul i64 %t568, %t569
  %t575 = add i64 %t567, %t572
  store i64 %t575, ptr %l33, !tbaa !24
  %t577 = load i64, ptr %l33, !tbaa !24
  %t579 = icmp slt i64 %t577, 64
  br i1 %t579, label %bb108, label %bb109
bb108:
  %t581 = load i64, ptr %l26, !tbaa !65
  %t582 = load i64, ptr %l33, !tbaa !24
  store i64 %t582, ptr %l314, !tbaa !24
  %t583 = load i64, ptr %l314, !tbaa !24
  %t584 = load i64, ptr %l314, !tbaa !24
  %t585 = shl i64 1, %t584
  %t588 = and i64 %t581, %t585
  %t590 = icmp eq i64 %t588, 0
  store i1 %t590, ptr %l312, !tbaa !21
  br label %bb110
bb109:
  store i1 false, ptr %l312, !tbaa !21
  br label %bb110
bb110:
  %t592 = load i1, ptr %l312, !tbaa !21
  br i1 %t592, label %bb111, label %bb112
bb111:
  store i1 false, ptr %l27, !tbaa !21
  br label %bb113
bb112:
  br label %bb113
bb113:
  br label %bb114
bb114:
  %t593 = load i64, ptr %l32, !tbaa !24
  %t595 = add i64 %t593, 1
  store i64 %t595, ptr %l32, !tbaa !24
  br label %bb104
bb115:
  %t597 = load i1, ptr %l27, !tbaa !21
  br i1 %t597, label %bb116, label %bb117
bb116:
  %t599 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t599, ptr %l322, !tbaa !27
  %t600 = load { i64, ptr }, ptr %l322, !tbaa !27
  %t601 = extractvalue { i64, ptr } %t600, 1
  %t602 = call ptr @__olang_scope_of(ptr %t601, ptr null)
  %t603 = ptrtoint ptr %t602 to i64
  %t605 = inttoptr i64 %t603 to ptr
  %t607 = load { i64, ptr }, ptr %l322, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %t605, ptr %l5, { i64, ptr } %t607)
  br label %bb118
bb117:
  br label %bb119
bb118:
  call void @__olang_scope_close(ptr %s13)
  call void @__olang_scope_close(ptr %s11)
  br label %bb146
bb119:
  store i1 true, ptr %l34, !tbaa !21
  store i64 0, ptr %l35, !tbaa !24
  %t608 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t610 = extractvalue { i64, ptr } %t608, 0
  store i64 %t610, ptr %l36, !tbaa !24
  store i64 1, ptr %l37, !tbaa !24
  %t612 = load i64, ptr %l36, !tbaa !24
  %t613 = load i64, ptr %l35, !tbaa !24
  %t616 = icmp sgt i64 %t612, %t613
  br i1 %t616, label %bb120, label %bb121
bb120:
  %t618 = load i64, ptr %l37, !tbaa !24
  %t620 = icmp sgt i64 %t618, 0
  br i1 %t620, label %bb122, label %bb123
bb121:
  store i64 0, ptr %l329, !tbaa !24
  br label %bb125
bb122:
  %t622 = load i64, ptr %l36, !tbaa !24
  %t623 = load i64, ptr %l35, !tbaa !24
  %t626 = sub i64 %t622, %t623
  %t627 = load i64, ptr %l37, !tbaa !24
  %t630 = add i64 %t626, %t627
  %t632 = sub i64 %t630, 1
  %t633 = load i64, ptr %l37, !tbaa !24
  %t636 = sdiv i64 %t632, %t633
  store i64 %t636, ptr %l332, !tbaa !24
  br label %bb124
bb123:
  store i64 0, ptr %l332, !tbaa !24
  br label %bb124
bb124:
  %t638 = load i64, ptr %l332, !tbaa !24
  store i64 %t638, ptr %l329, !tbaa !24
  br label %bb125
bb125:
  %t639 = load i64, ptr %l329, !tbaa !24
  store i64 %t639, ptr %l38, !tbaa !24
  store i64 0, ptr %l39, !tbaa !24
  br label %bb126
bb126:
  %t640 = load i64, ptr %l39, !tbaa !24
  %t641 = load i64, ptr %l38, !tbaa !24
  %t644 = icmp slt i64 %t640, %t641
  %t646 = xor i1 %t644, true
  br i1 %t646, label %bb127, label %bb128
bb127:
  br label %bb143
bb128:
  br label %bb129
bb129:
  %t648 = load i64, ptr %l35, !tbaa !24
  %t649 = load i64, ptr %l39, !tbaa !24
  %t650 = load i64, ptr %l37, !tbaa !24
  %t653 = mul i64 %t649, %t650
  %t656 = add i64 %t648, %t653
  store i64 %t656, ptr %l40, !tbaa !24
  %t658 = load i64, ptr %l40, !tbaa !24
  %t660 = icmp slt i64 %t658, 64
  br i1 %t660, label %bb130, label %bb131
bb130:
  %t662 = load i64, ptr %l26, !tbaa !65
  %t663 = load i64, ptr %l40, !tbaa !24
  store i64 %t663, ptr %l354, !tbaa !24
  %t664 = load i64, ptr %l354, !tbaa !24
  %t665 = load i64, ptr %l354, !tbaa !24
  %t666 = shl i64 1, %t665
  %t669 = and i64 %t662, %t666
  %t671 = icmp ne i64 %t669, 0
  store i1 %t671, ptr %l352, !tbaa !21
  br label %bb132
bb131:
  store i1 false, ptr %l352, !tbaa !21
  br label %bb132
bb132:
  %t673 = load i1, ptr %l352, !tbaa !21
  br i1 %t673, label %bb133, label %bb134
bb133:
  store %olang.scope zeroinitializer, ptr %s23
  %t674 = load i1, ptr %l34, !tbaa !21
  %t676 = xor i1 %t674, true
  br i1 %t676, label %bb135, label %bb136
bb134:
  br label %bb141
bb135:
  store %olang.scope zeroinitializer, ptr %s24
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s24, ptr %l5, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d23, i32 0, i32 1) })
  br label %bb137
bb136:
  br label %bb138
bb137:
  call void @__olang_scope_close(ptr %s24)
  br label %bb138
bb138:
  store ptr %l5, ptr %l361, !tbaa !29
  %t679 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t679, ptr %l362, !tbaa !27
  %t680 = load ptr, ptr %l0, !tbaa !29
  %t681 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t681, ptr %l364, !tbaa !27
  %t682 = load i64, ptr %l40, !tbaa !24
  %t684 = getelementptr { i64, ptr }, ptr %l364, i32 0, i32 1
  %t685 = load ptr, ptr %t684, !tbaa !27
  %t686 = getelementptr i32, ptr %t685, i64 %t682
  %t687 = load i32, ptr %t686, !tbaa !33
  %t690 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s23, ptr %t680, i32 %t687)
  store { i64, ptr } %t690, ptr %l367
  br label %bb139
bb139:
  %t691 = load { i64, ptr }, ptr %l362, !tbaa !27
  %t692 = extractvalue { i64, ptr } %t691, 1
  %t693 = extractvalue { i64, ptr } %t691, 0
  %t694 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d24, i32 0, i32 1) }, 1
  %t695 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d24, i32 0, i32 1) }, 0
  %t696 = add i64 %t693, %t695
  %t697 = load { i64, ptr }, ptr %l367, !tbaa !27
  %t698 = extractvalue { i64, ptr } %t697, 1
  %t699 = extractvalue { i64, ptr } %t697, 0
  %t700 = add i64 %t696, %t699
  %t701 = call ptr @__olang_scope_alloc(ptr %s23, i64 %t700)
  call void @olang_textcopy(ptr %t701, ptr %t692, i64 %t693)
  %t702 = getelementptr i8, ptr %t701, i64 %t693
  call void @olang_textcopy(ptr %t702, ptr %t694, i64 %t695)
  %t703 = getelementptr i8, ptr %t702, i64 %t695
  call void @olang_textcopy(ptr %t703, ptr %t698, i64 %t699)
  %t704 = insertvalue { i64, ptr } undef, i64 %t700, 0
  %t705 = insertvalue { i64, ptr } %t704, ptr %t701, 1
  %t707 = extractvalue { i64, ptr } %t705, 0
  %t708 = extractvalue { i64, ptr } %t705, 1
  %t709 = mul i64 %t707, 1
  %t710 = call ptr @__olang_scope_alloc(ptr %s23, i64 %t709)
  call void @llvm.memcpy.p0.p0.i64(ptr %t710, ptr %t708, i64 %t709, i1 false)
  %t711 = insertvalue { i64, ptr } undef, i64 %t707, 0
  %t712 = insertvalue { i64, ptr } %t711, ptr %t710, 1
  %t713 = load ptr, ptr %l361, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s23, ptr %t713, { i64, ptr } %t712)
  br label %bb140
bb140:
  store i1 false, ptr %l34, !tbaa !21
  call void @__olang_scope_close(ptr %s23)
  br label %bb141
bb141:
  br label %bb142
bb142:
  %t715 = load i64, ptr %l39, !tbaa !24
  %t717 = add i64 %t715, 1
  store i64 %t717, ptr %l39, !tbaa !24
  br label %bb126
bb143:
  call void @__olang_scope_close(ptr %s13)
  call void @__olang_scope_close(ptr %s11)
  br label %bb146
bb144:
  %t719 = load ptr, ptr %l0, !tbaa !29
  %t720 = load i32, ptr %l22, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2espell(ptr %v0, ptr %s0, ptr %t719, ptr %l5, i32 %t720, i1 false)
  br label %bb145
bb145:
  call void @__olang_scope_close(ptr %s11)
  br label %bb146
bb146:
  %t724 = load i64, ptr %l20, !tbaa !24
  %t726 = add i64 %t724, 1
  store i64 %t726, ptr %l20, !tbaa !24
  br label %bb71
bb147:
  %t729 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l5)
  store { i64, ptr } %t729, ptr %l378
  br label %bb148
bb148:
  call void @__olang_scope_close(ptr %s0)
  %t730 = load { i64, ptr }, ptr %l378, !tbaa !27
  store { i64, ptr } %t730, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esigWritten(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca ptr
  %l18 = alloca { i64, ptr }
  %l24 = alloca i1
  %l37 = alloca { i64, ptr }
  %l43 = alloca i1
  %l44 = alloca i1
  %l48 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/ast:Sig", ptr %t1, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t6 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t6, 0
  store i64 %t8, ptr %l4, !tbaa !24
  br label %bb1
bb1:
  %t10 = load i64, ptr %l3, !tbaa !24
  %t11 = load i64, ptr %l4, !tbaa !24
  %t14 = icmp slt i64 %t10, %t11
  %t16 = xor i1 %t14, true
  br i1 %t16, label %bb2, label %bb3
bb2:
  br label %bb10
bb3:
  br label %bb4
bb4:
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t18, ptr %l18, !tbaa !27
  %t19 = load i64, ptr %l3, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr ptr, ptr %t22, i64 %t19
  %t24 = load ptr, ptr %t23, !tbaa !39
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/ast:Param", ptr %t24, i32 0, i32 2
  %t30 = load ptr, ptr %t29, !tbaa !29
  %t33 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewrittenMet(ptr %v0, ptr %v1, ptr %t26, ptr %t30)
  store i1 %t33, ptr %l24
  br label %bb5
bb5:
  %t34 = load i1, ptr %l24, !tbaa !21
  %t35 = xor i1 %t34, true
  br i1 %t35, label %bb6, label %bb7
bb6:
  store i1 false, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  br label %bb9
bb9:
  %t38 = load i64, ptr %l3, !tbaa !24
  %t40 = add i64 %t38, 1
  store i64 %t40, ptr %l3, !tbaa !24
  br label %bb1
bb10:
  %t42 = load ptr, ptr %l1, !tbaa !29
  %t44 = getelementptr %"compiler/ast:Sig", ptr %t42, i32 0, i32 1
  %t45 = load { i64, ptr }, ptr %t44, !tbaa !27
  store { i64, ptr } %t45, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t47 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t49 = extractvalue { i64, ptr } %t47, 0
  store i64 %t49, ptr %l8, !tbaa !24
  br label %bb11
bb11:
  %t51 = load i64, ptr %l7, !tbaa !24
  %t52 = load i64, ptr %l8, !tbaa !24
  %t55 = icmp slt i64 %t51, %t52
  %t57 = xor i1 %t55, true
  br i1 %t57, label %bb12, label %bb13
bb12:
  br label %bb24
bb13:
  br label %bb14
bb14:
  %t59 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t59, ptr %l37, !tbaa !27
  %t60 = load i64, ptr %l7, !tbaa !24
  %t62 = getelementptr { i64, ptr }, ptr %l37, i32 0, i32 1
  %t63 = load ptr, ptr %t62, !tbaa !27
  %t64 = getelementptr ptr, ptr %t63, i64 %t60
  %t65 = load ptr, ptr %t64, !tbaa !39
  store ptr %t65, ptr %l9, !tbaa !29
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t68 = load ptr, ptr %l9, !tbaa !29
  %t72 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrorResult(ptr %v0, ptr %v1, ptr %t67, ptr %t68)
  store i1 %t72, ptr %l43
  br label %bb15
bb15:
  %t73 = load i1, ptr %l43, !tbaa !21
  br i1 %t73, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l44, !tbaa !21
  br label %bb19
bb17:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t75 = load ptr, ptr %l9, !tbaa !29
  %t79 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewrittenMet(ptr %v0, ptr %v1, ptr %t74, ptr %t75)
  store i1 %t79, ptr %l48
  br label %bb18
bb18:
  %t80 = load i1, ptr %l48, !tbaa !21
  %t81 = xor i1 %t80, true
  store i1 %t81, ptr %l44, !tbaa !21
  br label %bb19
bb19:
  %t83 = load i1, ptr %l44, !tbaa !21
  br i1 %t83, label %bb20, label %bb21
bb20:
  store i1 false, ptr %rv
  br label %ret
bb21:
  br label %bb22
bb22:
  br label %bb23
bb23:
  %t85 = load i64, ptr %l7, !tbaa !24
  %t87 = add i64 %t85, 1
  store i64 %t87, ptr %l7, !tbaa !24
  br label %bb11
bb24:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eslotContract(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca i32
  %l10 = alloca ptr
  %l11 = alloca i1
  %l18 = alloca i64
  %l22 = alloca { i64, ptr }
  %l29 = alloca i64
  %l30 = alloca i64
  %l35 = alloca i64
  %l36 = alloca i32
  %l40 = alloca ptr
  %l44 = alloca { i64, ptr }
  %l45 = alloca { i64, ptr }
  %l48 = alloca ptr
  %l52 = alloca i1
  %l60 = alloca ptr
  %l64 = alloca { i64, ptr }
  %l65 = alloca { i64, ptr }
  %l68 = alloca i32
  %l69 = alloca ptr
  %l72 = alloca { i64, [2 x i64] }
  %l76 = alloca { i64, ptr }
  %l77 = alloca { i64, ptr }
  %l79 = alloca i32
  %l84 = alloca i64
  %l87 = alloca i64
  %rv = alloca i64
  %t138 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 5}
  %t8 = icmp eq i64 %t6, 3
  store i1 %t8, ptr %l11, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l11, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [3 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { i32, i64, i32 }, ptr %t12, i32 0, i32 0
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l2, !tbaa !23
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [3 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { i32, i64, i32 }, ptr %t18, i32 0, i32 1
  %t20 = load i64, ptr %t19
  store i64 %t20, ptr %l3, !tbaa !24
  br label %bb5
bb4:
  br label %bb30
bb5:
  %t22 = load i64, ptr %l3, !tbaa !24
  store i64 %t22, ptr %l18, !tbaa !24
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/check:Checker", ptr %t23, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !29
  %t27 = load i32, ptr %l2, !tbaa !23
  %t30 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAnySlots(ptr %v0, ptr %v0, ptr %t26, i32 %t27)
  store { i64, ptr } %t30, ptr %l22
  br label %bb6
bb6:
  %t31 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t32 = extractvalue { i64, ptr } %t31, 0
  %t33 = load i64, ptr %l18, !tbaa !24
  %t35 = srem i64 %t33, %t32
  store i64 %t35, ptr %l4, !tbaa !24
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/check:Checker", ptr %t37, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !29
  %t41 = load i32, ptr %l2, !tbaa !23
  %t42 = load i64, ptr %l4, !tbaa !24
  %t46 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSlotKey(ptr %v0, ptr %t40, i32 %t41, i64 %t42)
  store i64 %t46, ptr %l29
  br label %bb7
bb7:
  %t47 = load i64, ptr %l29, !tbaa !24
  store i64 %t47, ptr %l5, !tbaa !24
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/check:Checker", ptr %t48, i32 0, i32 1
  %t51 = load ptr, ptr %t50, !tbaa !29
  %t53 = getelementptr %"compiler/generic:Program", ptr %t51, i32 0, i32 64
  %t54 = load i64, ptr %l5, !tbaa !24
  %t57 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t53, i64 %t54)
  %t58 = extractvalue { i32, i64 } %t57, 1
  %t59 = extractvalue { i32, i64 } %t57, 0
  store i32 %t59, ptr %l36
  %t60 = icmp ne i32 %t59, 0
  br i1 %t60, label %bb9, label %ok.61, !prof !99
ok.61:
  store i64 %t58, ptr %l35
  br label %bb8
bb8:
  %t62 = load i64, ptr %l35, !tbaa !24
  store i64 %t62, ptr %l30, !tbaa !24
  br label %bb11
bb9:
  br label %bb10
bb10:
  store i64 -2, ptr %l30, !tbaa !24
  br label %bb11
bb11:
  %t63 = load i64, ptr %l30, !tbaa !24
  store i64 %t63, ptr %l6, !tbaa !24
  %t64 = load i64, ptr %l6, !tbaa !24
  %t66 = icmp ne i64 %t64, -2
  br i1 %t66, label %bb12, label %bb13
bb12:
  %t68 = load i64, ptr %l6, !tbaa !24
  store i64 %t68, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  store i64 -1, ptr %l7, !tbaa !24
  %t70 = load ptr, ptr %l0, !tbaa !29
  store ptr %t70, ptr %l40, !tbaa !29
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"compiler/check:Checker", ptr %t71, i32 0, i32 1
  %t74 = load ptr, ptr %t73, !tbaa !29
  %t75 = load i32, ptr %l2, !tbaa !23
  %t78 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAnySlots(ptr %v0, ptr %v0, ptr %t74, i32 %t75)
  store { i64, ptr } %t78, ptr %l44
  br label %bb15
bb15:
  %t79 = load { i64, ptr }, ptr %l44, !tbaa !27
  store { i64, ptr } %t79, ptr %l45, !tbaa !27
  %t80 = load i64, ptr %l4, !tbaa !24
  %t82 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t83 = load ptr, ptr %t82, !tbaa !27
  %t84 = getelementptr %"compiler/generic:AnySlot", ptr %t83, i64 %t80
  %t85 = load %"compiler/generic:AnySlot", ptr %t84
  %t86 = load ptr, ptr %l40, !tbaa !29
  %t88 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etraitMethod(ptr %v0, ptr %v0, ptr %t86, %"compiler/generic:AnySlot" %t85)
  store ptr %t88, ptr %l48
  br label %bb16
bb16:
  %t89 = load ptr, ptr %l48, !tbaa !29
  store ptr %t89, ptr %l8, !tbaa !29
  %t90 = load ptr, ptr %l8, !tbaa !29
  %t92 = icmp eq ptr %t90, null
  %t94 = xor i1 %t92, true
  br i1 %t94, label %bb17, label %bb18
bb17:
  %t96 = load ptr, ptr %l8, !tbaa !29
  %t98 = getelementptr %"compiler/ast:Func", ptr %t96, i32 0, i32 3
  %t99 = load ptr, ptr %t98, !tbaa !29
  %t101 = getelementptr %"compiler/ast:Sig", ptr %t99, i32 0, i32 5
  %t102 = load ptr, ptr %t101, !tbaa !29
  %t104 = icmp eq ptr %t102, null
  %t106 = xor i1 %t104, true
  store i1 %t106, ptr %l52, !tbaa !21
  br label %bb19
bb18:
  store i1 false, ptr %l52, !tbaa !21
  br label %bb19
bb19:
  %t108 = load i1, ptr %l52, !tbaa !21
  br i1 %t108, label %bb20, label %bb21
bb20:
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t111 = getelementptr %"compiler/check:Checker", ptr %t109, i32 0, i32 1
  %t112 = load ptr, ptr %t111, !tbaa !29
  %t114 = getelementptr %"compiler/generic:Program", ptr %t112, i32 0, i32 2
  store ptr %t114, ptr %l60, !tbaa !29
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t117 = getelementptr %"compiler/check:Checker", ptr %t115, i32 0, i32 1
  %t118 = load ptr, ptr %t117, !tbaa !29
  %t119 = load i32, ptr %l2, !tbaa !23
  %t122 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAnySlots(ptr %v0, ptr %v0, ptr %t118, i32 %t119)
  store { i64, ptr } %t122, ptr %l64
  br label %bb22
bb21:
  br label %bb28
bb22:
  %t123 = load { i64, ptr }, ptr %l64, !tbaa !27
  store { i64, ptr } %t123, ptr %l65, !tbaa !27
  %t124 = load i64, ptr %l4, !tbaa !24
  %t126 = getelementptr { i64, ptr }, ptr %l65, i32 0, i32 1
  %t127 = load ptr, ptr %t126, !tbaa !27
  %t128 = getelementptr %"compiler/generic:AnySlot", ptr %t127, i64 %t124
  %t129 = getelementptr %"compiler/generic:AnySlot", ptr %t128, i32 0, i32 1
  %t130 = load i32, ptr %t129, !tbaa !23
  %t131 = load ptr, ptr %l60, !tbaa !29
  %t133 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t131, i32 %t130)
  store i32 %t133, ptr %l68
  br label %bb23
bb23:
  %t134 = load i32, ptr %l68, !tbaa !23
  store i32 %t134, ptr %l9, !tbaa !23
  %t135 = load ptr, ptr %l0, !tbaa !29
  store ptr %t135, ptr %l69, !tbaa !29
  %t136 = load i32, ptr %l2, !tbaa !23
  %t137 = load i64, ptr %l4, !tbaa !24
  store { i64, [2 x i64] } zeroinitializer, ptr %t138
  %t139 = getelementptr { i64, [2 x i64] }, ptr %t138, i32 0, i32 0
  store i64 10, ptr %t139
  %t141 = insertvalue { i32, i64 } undef, i32 %t136, 0
  %t143 = insertvalue { i32, i64 } %t141, i64 %t137, 1
  %t144 = getelementptr { i64, [2 x i64] }, ptr %t138, i32 0, i32 1
  store { i32, i64 } %t143, ptr %t144
  %t145 = load { i64, [2 x i64] }, ptr %t138
  store { i64, [2 x i64] } %t145, ptr %l72
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t148 = getelementptr %"compiler/check:Checker", ptr %t146, i32 0, i32 1
  %t149 = load ptr, ptr %t148, !tbaa !29
  %t150 = load i32, ptr %l2, !tbaa !23
  %t153 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAnySlots(ptr %v0, ptr %v0, ptr %t149, i32 %t150)
  store { i64, ptr } %t153, ptr %l76
  br label %bb24
bb24:
  %t154 = load { i64, ptr }, ptr %l76, !tbaa !27
  store { i64, ptr } %t154, ptr %l77, !tbaa !27
  %t155 = load i64, ptr %l4, !tbaa !24
  %t157 = getelementptr { i64, ptr }, ptr %l77, i32 0, i32 1
  %t158 = load ptr, ptr %t157, !tbaa !27
  %t159 = getelementptr %"compiler/generic:AnySlot", ptr %t158, i64 %t155
  %t160 = getelementptr %"compiler/generic:AnySlot", ptr %t159, i32 0, i32 5
  %t161 = load i32, ptr %t160, !tbaa !23
  store i32 %t161, ptr %l79, !tbaa !23
  %t162 = load ptr, ptr %l0, !tbaa !29
  %t164 = getelementptr %"compiler/check:Checker", ptr %t162, i32 0, i32 1
  %t165 = load ptr, ptr %t164, !tbaa !29
  %t167 = getelementptr %"compiler/generic:Program", ptr %t165, i32 0, i32 2
  %t168 = load i32, ptr %l9, !tbaa !23
  %t171 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %t167, i32 %t168)
  store i64 %t171, ptr %l84
  br label %bb25
bb25:
  %t172 = load ptr, ptr %l8, !tbaa !29
  %t174 = getelementptr %"compiler/ast:Func", ptr %t172, i32 0, i32 0
  %t175 = load %"compiler/source:Span", ptr %t174
  %t176 = load ptr, ptr %l69, !tbaa !29
  %t177 = load { i64, [2 x i64] }, ptr %l72
  %t178 = load i32, ptr %l79, !tbaa !23
  %t179 = load i64, ptr %l84, !tbaa !24
  %t181 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enewBody(ptr %v0, ptr %t176, { i64, [2 x i64] } %t177, i32 %t178, i64 %t179, %"compiler/source:Span" %t175)
  store i64 %t181, ptr %l87
  br label %bb26
bb26:
  %t182 = load i64, ptr %l87, !tbaa !24
  store i64 %t182, ptr %l7, !tbaa !24
  %t183 = load ptr, ptr %l0, !tbaa !29
  %t185 = getelementptr %"compiler/check:Checker", ptr %t183, i32 0, i32 19
  %t186 = load i64, ptr %l7, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t185, i64 %t186, i64 2)
  br label %bb27
bb27:
  br label %bb28
bb28:
  %t189 = load ptr, ptr %l0, !tbaa !29
  %t191 = getelementptr %"compiler/check:Checker", ptr %t189, i32 0, i32 1
  %t192 = load ptr, ptr %t191, !tbaa !29
  %t194 = getelementptr %"compiler/generic:Program", ptr %t192, i32 0, i32 64
  %t195 = load i64, ptr %l5, !tbaa !24
  %t196 = load i64, ptr %l7, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %t194, i64 %t195, i64 %t196)
  br label %bb29
bb29:
  %t200 = load i64, ptr %l7, !tbaa !24
  store i64 %t200, ptr %rv
  br label %ret
bb30:
  br i1 true, label %bb31, label %bb32
bb31:
  br label %bb33
bb32:
  br label %bb34
bb33:
  store i64 -1, ptr %rv
  br label %ret
bb34:
  call void @__olang_check_failed(ptr @olang_loc_61cd02582a530769_6431634bdc3c1a5d)
  unreachable
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2espread(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca i64
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l18 = alloca ptr
  %l21 = alloca i32
  %l24 = alloca i64
  %l29 = alloca i32
  %l39 = alloca { i64, ptr }
  %l41 = alloca %"compiler/source:Span"
  %l45 = alloca i64
  %l57 = alloca ptr
  %l62 = alloca i32
  %l63 = alloca { i64, ptr }
  %l69 = alloca i64
  %l72 = alloca i64
  %l91 = alloca ptr
  %l95 = alloca { i64, ptr }
  %l108 = alloca ptr
  %l114 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  %t73 = alloca { i64, [3 x i64] }, align 8
  %t176 = alloca { i64, [4 x i64] }, align 8
  %t189 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t4 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t8 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %t1, ptr %t2, i32 %t4)
  store ptr %t8, ptr %l18
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l18, !tbaa !29
  store ptr %t9, ptr %l2, !tbaa !29
  %t10 = load ptr, ptr %l2, !tbaa !29
  %t13 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %t10)
  store i32 %t13, ptr %l21
  br label %bb2
bb2:
  %t14 = load i32, ptr %l21, !tbaa !23
  store i32 %t14, ptr %l3, !tbaa !23
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/check:Checker", ptr %t15, i32 0, i32 36
  %t19 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t17)
  store i64 %t19, ptr %l24
  br label %bb3
bb3:
  %t20 = load i64, ptr %l24, !tbaa !24
  store i64 %t20, ptr %l4, !tbaa !24
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/check:Checker", ptr %t21, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !29
  %t26 = getelementptr %"compiler/generic:Program", ptr %t24, i32 0, i32 2
  %t27 = load i32, ptr %l3, !tbaa !23
  %t30 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t26, i32 %t27)
  store i32 %t30, ptr %l29
  br label %bb4
bb4:
  %t31 = load i32, ptr %l29, !range !{i32 0, i32 33}
  %t33 = trunc i64 22 to i32
  %t34 = icmp eq i32 %t31, %t33
  %t36 = xor i1 %t34, true
  br i1 %t36, label %bb5, label %bb6
bb5:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/check:Checker", ptr %t38, i32 0, i32 36
  %t41 = load ptr, ptr %l2, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v2, ptr %t40, ptr %t41)
  br label %bb7
bb6:
  br label %bb9
bb7:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/check:Checker", ptr %t44, i32 0, i32 36
  %t47 = load i64, ptr %l4, !tbaa !24
  %t50 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v2, ptr %t46, i64 %t47)
  store { i64, ptr } %t50, ptr %l39
  br label %bb8
bb8:
  %t51 = load { i64, ptr }, ptr %l39, !tbaa !27
  store { i64, ptr } %t51, ptr %rv
  br label %ret
bb9:
  %t52 = load ptr, ptr %l1, !tbaa !29
  %t54 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t52)
  store %"compiler/source:Span" %t54, ptr %l41
  br label %bb10
bb10:
  %t55 = load %"compiler/source:Span", ptr %l41
  store %"compiler/source:Span" %t55, ptr %l5
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t57 = load %"compiler/source:Span", ptr %l5
  %t58 = load i32, ptr %l3, !tbaa !23
  %t62 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehidden(ptr %v0, ptr %t56, %"compiler/source:Span" %t57, i32 %t58)
  store i64 %t62, ptr %l45
  br label %bb11
bb11:
  %t63 = load i64, ptr %l45, !tbaa !24
  store i64 %t63, ptr %l6, !tbaa !24
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/check:Checker", ptr %t64, i32 0, i32 37
  %t67 = load %"compiler/source:Span", ptr %l5
  %t68 = load i64, ptr %l6, !tbaa !24
  %t70 = trunc i64 %t68 to i32
  %t72 = load ptr, ptr %l2, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t73
  %t74 = getelementptr { i64, [3 x i64] }, ptr %t73, i32 0, i32 0
  store i64 0, ptr %t74
  %t76 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t67, 0
  %t78 = insertvalue { %"compiler/source:Span", i32, ptr } %t76, i32 %t70, 1
  %t80 = insertvalue { %"compiler/source:Span", i32, ptr } %t78, ptr %t72, 2
  %t81 = getelementptr { i64, [3 x i64] }, ptr %t73, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t80, ptr %t81
  %t82 = load { i64, [3 x i64] }, ptr %t73
  %t84 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t82, ptr %t84
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t66, ptr %t84)
  br label %bb12
bb12:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr %"compiler/check:Checker", ptr %t87, i32 0, i32 1
  %t90 = load ptr, ptr %t89, !tbaa !29
  %t92 = getelementptr %"compiler/generic:Program", ptr %t90, i32 0, i32 2
  store ptr %t92, ptr %l57, !tbaa !29
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t95 = getelementptr %"compiler/check:Checker", ptr %t93, i32 0, i32 1
  %t96 = load ptr, ptr %t95, !tbaa !29
  %t98 = getelementptr %"compiler/generic:Program", ptr %t96, i32 0, i32 2
  %t99 = load i32, ptr %l3, !tbaa !23
  %t102 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t98, i32 %t99)
  store i32 %t102, ptr %l62
  br label %bb13
bb13:
  %t103 = load ptr, ptr %l57, !tbaa !29
  %t104 = load i32, ptr %l62, !tbaa !23
  %t105 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t103, i32 %t104)
  store { i64, ptr } %t105, ptr %l63
  br label %bb14
bb14:
  %t106 = load { i64, ptr }, ptr %l63, !tbaa !27
  store { i64, ptr } %t106, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t107 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t109 = extractvalue { i64, ptr } %t107, 0
  store i64 %t109, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t111 = load i64, ptr %l9, !tbaa !24
  %t112 = load i64, ptr %l8, !tbaa !24
  %t115 = icmp sgt i64 %t111, %t112
  br i1 %t115, label %bb15, label %bb16
bb15:
  %t117 = load i64, ptr %l10, !tbaa !24
  %t119 = icmp sgt i64 %t117, 0
  br i1 %t119, label %bb17, label %bb18
bb16:
  store i64 0, ptr %l69, !tbaa !24
  br label %bb20
bb17:
  %t121 = load i64, ptr %l9, !tbaa !24
  %t122 = load i64, ptr %l8, !tbaa !24
  %t125 = sub i64 %t121, %t122
  %t126 = load i64, ptr %l10, !tbaa !24
  %t129 = add i64 %t125, %t126
  %t131 = sub i64 %t129, 1
  %t132 = load i64, ptr %l10, !tbaa !24
  %t135 = sdiv i64 %t131, %t132
  store i64 %t135, ptr %l72, !tbaa !24
  br label %bb19
bb18:
  store i64 0, ptr %l72, !tbaa !24
  br label %bb19
bb19:
  %t137 = load i64, ptr %l72, !tbaa !24
  store i64 %t137, ptr %l69, !tbaa !24
  br label %bb20
bb20:
  %t138 = load i64, ptr %l69, !tbaa !24
  store i64 %t138, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  br label %bb21
bb21:
  %t139 = load i64, ptr %l12, !tbaa !24
  %t140 = load i64, ptr %l11, !tbaa !24
  %t143 = icmp slt i64 %t139, %t140
  %t145 = xor i1 %t143, true
  br i1 %t145, label %bb22, label %bb23
bb22:
  br label %bb28
bb23:
  br label %bb24
bb24:
  %t147 = load i64, ptr %l8, !tbaa !24
  %t148 = load i64, ptr %l12, !tbaa !24
  %t149 = load i64, ptr %l10, !tbaa !24
  %t152 = mul i64 %t148, %t149
  %t155 = add i64 %t147, %t152
  store i64 %t155, ptr %l13, !tbaa !24
  %t157 = load ptr, ptr %l0, !tbaa !29
  %t159 = getelementptr %"compiler/check:Checker", ptr %t157, i32 0, i32 36
  store ptr %t159, ptr %l91, !tbaa !29
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t161 = load %"compiler/source:Span", ptr %l5
  %t162 = load %"compiler/source:Span", ptr %l5
  %t163 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t163, ptr %l95, !tbaa !27
  %t164 = load i64, ptr %l13, !tbaa !24
  %t166 = getelementptr { i64, ptr }, ptr %l95, i32 0, i32 1
  %t167 = load ptr, ptr %t166, !tbaa !27
  %t168 = getelementptr i32, ptr %t167, i64 %t164
  %t169 = load i32, ptr %t168, !tbaa !33
  %t170 = load %"compiler/source:Span", ptr %l5
  %t171 = load i32, ptr %l3, !tbaa !23
  %t172 = load i64, ptr %l6, !tbaa !24
  %t174 = trunc i64 %t172 to i32
  store { i64, [4 x i64] } zeroinitializer, ptr %t176
  %t177 = getelementptr { i64, [4 x i64] }, ptr %t176, i32 0, i32 0
  store i64 0, ptr %t177
  %t179 = insertvalue { %"compiler/source:Span", i32, i32 } undef, %"compiler/source:Span" %t170, 0
  %t181 = insertvalue { %"compiler/source:Span", i32, i32 } %t179, i32 %t171, 1
  %t183 = insertvalue { %"compiler/source:Span", i32, i32 } %t181, i32 %t174, 2
  %t184 = getelementptr { i64, [4 x i64] }, ptr %t176, i32 0, i32 1
  store { %"compiler/source:Span", i32, i32 } %t183, ptr %t184
  %t185 = load { i64, [4 x i64] }, ptr %t176
  %t187 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store { i64, [4 x i64] } %t185, ptr %t187
  %t188 = load i64, ptr %l13, !tbaa !24
  store { i64, [4 x i64] } zeroinitializer, ptr %t189
  %t190 = getelementptr { i64, [4 x i64] }, ptr %t189, i32 0, i32 0
  store i64 3, ptr %t190
  %t192 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } undef, %"compiler/source:Span" %t162, 0
  %t194 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t192, i32 %t169, 1
  %t196 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t194, ptr %t187, 2
  %t198 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t196, i64 %t188, 3
  %t199 = getelementptr { i64, [4 x i64] }, ptr %t189, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr, i64 } %t198, ptr %t199
  %t200 = load { i64, [4 x i64] }, ptr %t189
  %t202 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store { i64, [4 x i64] } %t200, ptr %t202
  %t206 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v0, ptr %v0, ptr %t160, %"compiler/source:Span" %t161, ptr %t202)
  store ptr %t206, ptr %l108
  br label %bb25
bb25:
  %t207 = load ptr, ptr %l91, !tbaa !29
  %t208 = load ptr, ptr %l108, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t207, ptr %t208)
  br label %bb26
bb26:
  br label %bb27
bb27:
  %t209 = load i64, ptr %l12, !tbaa !24
  %t211 = add i64 %t209, 1
  store i64 %t211, ptr %l12, !tbaa !24
  br label %bb21
bb28:
  %t213 = load ptr, ptr %l0, !tbaa !29
  %t215 = getelementptr %"compiler/check:Checker", ptr %t213, i32 0, i32 36
  %t216 = load i64, ptr %l4, !tbaa !24
  %t219 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v2, ptr %t215, i64 %t216)
  store { i64, ptr } %t219, ptr %l114
  br label %bb29
bb29:
  %t220 = load { i64, ptr }, ptr %l114, !tbaa !27
  store { i64, ptr } %t220, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estoreOver(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca %"compiler/source:Span"
  %l9 = alloca i32
  %l10 = alloca i32
  %l12 = alloca i32
  %l16 = alloca i1
  %l19 = alloca i1
  %l20 = alloca i1
  %l25 = alloca i1
  %l27 = alloca i1
  %l30 = alloca i1
  %l39 = alloca ptr
  %l48 = alloca i64
  %l57 = alloca ptr
  %l58 = alloca i1
  %l67 = alloca i64
  %l69 = alloca ptr
  %l74 = alloca i64
  %l75 = alloca i32
  %l76 = alloca ptr
  %l81 = alloca ptr
  %l82 = alloca ptr
  %l83 = alloca %"compiler/source:Span"
  %l84 = alloca ptr
  %l94 = alloca ptr
  %l99 = alloca ptr
  %l100 = alloca %"compiler/source:Span"
  %l107 = alloca ptr
  %l111 = alloca ptr
  %s2 = alloca %olang.scope
  %t43 = alloca { i64, [3 x i64] }, align 8
  %t88 = alloca { i64, [3 x i64] }, align 8
  %t170 = alloca { i64, [4 x i64] }, align 8
  %t186 = alloca { i64, [3 x i64] }, align 8
  %t212 = alloca { i64, [4 x i64] }, align 8
  %t231 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t1)
  store i32 %t3, ptr %l12
  br label %bb1
bb1:
  %t4 = load i32, ptr %l12, !tbaa !23
  store i32 %t4, ptr %l4, !tbaa !23
  %t5 = load i32, ptr %l4, !tbaa !23
  %t6 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t9 = icmp eq i32 %t5, %t6
  br i1 %t9, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l16, !tbaa !21
  br label %bb5
bb3:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load i32, ptr %l4, !tbaa !23
  %t15 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t11, i32 %t12)
  store i1 %t15, ptr %l19
  br label %bb4
bb4:
  %t16 = load i1, ptr %l19, !tbaa !21
  store i1 %t16, ptr %l16, !tbaa !21
  br label %bb5
bb5:
  %t17 = load i1, ptr %l16, !tbaa !21
  br i1 %t17, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l20, !tbaa !21
  br label %bb9
bb7:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/check:Checker", ptr %t18, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !29
  %t23 = getelementptr %"compiler/generic:Program", ptr %t21, i32 0, i32 2
  %t24 = load i32, ptr %l4, !tbaa !23
  %t27 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNeedsDrop(ptr %v0, ptr %t23, i32 %t24)
  store i1 %t27, ptr %l25
  br label %bb8
bb8:
  %t28 = load i1, ptr %l25, !tbaa !21
  %t29 = xor i1 %t28, true
  store i1 %t29, ptr %l20, !tbaa !21
  br label %bb9
bb9:
  %t31 = load i1, ptr %l20, !tbaa !21
  br i1 %t31, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l27, !tbaa !21
  br label %bb13
bb11:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t33 = load ptr, ptr %l2, !tbaa !29
  %t36 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebufferField(ptr %v0, ptr %v1, ptr %t32, ptr %t33)
  store i1 %t36, ptr %l30
  br label %bb12
bb12:
  %t37 = load i1, ptr %l30, !tbaa !21
  store i1 %t37, ptr %l27, !tbaa !21
  br label %bb13
bb13:
  %t38 = load i1, ptr %l27, !tbaa !21
  br i1 %t38, label %bb14, label %bb15
bb14:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t40 = load %"compiler/source:Span", ptr %l1
  %t41 = load ptr, ptr %l2, !tbaa !29
  %t42 = load ptr, ptr %l3, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t43
  %t44 = getelementptr { i64, [3 x i64] }, ptr %t43, i32 0, i32 0
  store i64 1, ptr %t44
  %t46 = insertvalue { %"compiler/source:Span", ptr, ptr } undef, %"compiler/source:Span" %t40, 0
  %t48 = insertvalue { %"compiler/source:Span", ptr, ptr } %t46, ptr %t41, 1
  %t50 = insertvalue { %"compiler/source:Span", ptr, ptr } %t48, ptr %t42, 2
  %t51 = getelementptr { i64, [3 x i64] }, ptr %t43, i32 0, i32 1
  store { %"compiler/source:Span", ptr, ptr } %t50, ptr %t51
  %t52 = load { i64, [3 x i64] }, ptr %t43
  %t54 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t52, ptr %t54
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t39, ptr %t54)
  br label %bb16
bb15:
  br label %bb17
bb16:
  br label %ret
bb17:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t58 = load ptr, ptr %l2, !tbaa !29
  %t61 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estable(ptr %v0, ptr %v1, ptr %v1, ptr %t57, ptr %t58)
  store ptr %t61, ptr %l39
  br label %bb18
bb18:
  %t62 = load ptr, ptr %l39, !tbaa !29
  store ptr %t62, ptr %l5, !tbaa !29
  %t63 = load ptr, ptr %l5, !tbaa !29
  %t65 = icmp eq ptr %t63, null
  br i1 %t65, label %bb19, label %bb20
bb19:
  store %olang.scope zeroinitializer, ptr %s2
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t68 = load %"compiler/source:Span", ptr %l1
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %s2, ptr %t67, %"compiler/source:Span" %t68, { i64, ptr } { i64 85, ptr getelementptr inbounds (<{ i64, [85 x i8] }>, ptr @.d25, i32 0, i32 1) })
  br label %bb21
bb20:
  br label %bb22
bb21:
  call void @__olang_scope_close(ptr %s2)
  br label %ret
bb22:
  %t71 = load ptr, ptr %l5, !tbaa !29
  store ptr %t71, ptr %l2, !tbaa !29
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t74 = load %"compiler/source:Span", ptr %l1
  %t75 = load i32, ptr %l4, !tbaa !23
  %t79 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehidden(ptr %v0, ptr %t73, %"compiler/source:Span" %t74, i32 %t75)
  store i64 %t79, ptr %l48
  br label %bb23
bb23:
  %t80 = load i64, ptr %l48, !tbaa !24
  store i64 %t80, ptr %l6, !tbaa !24
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t82 = load %"compiler/source:Span", ptr %l1
  %t83 = load i64, ptr %l6, !tbaa !24
  %t85 = trunc i64 %t83 to i32
  %t87 = load ptr, ptr %l3, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t88
  %t89 = getelementptr { i64, [3 x i64] }, ptr %t88, i32 0, i32 0
  store i64 0, ptr %t89
  %t91 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t82, 0
  %t93 = insertvalue { %"compiler/source:Span", i32, ptr } %t91, i32 %t85, 1
  %t95 = insertvalue { %"compiler/source:Span", i32, ptr } %t93, ptr %t87, 2
  %t96 = getelementptr { i64, [3 x i64] }, ptr %t88, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t95, ptr %t96
  %t97 = load { i64, [3 x i64] }, ptr %t88
  %t99 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t97, ptr %t99
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t81, ptr %t99)
  br label %bb24
bb24:
  store i64 -1, ptr %l7, !tbaa !24
  %t102 = load ptr, ptr %l2, !tbaa !29
  store ptr %t102, ptr %l57, !tbaa !29
  store i1 false, ptr %l58, !tbaa !21
  %t103 = load ptr, ptr %l57, !tbaa !29
  %t104 = icmp ne ptr %t103, null
  br i1 %t104, label %bb25, label %bb26
bb25:
  %t106 = load ptr, ptr %l57, !tbaa !29
  %t107 = load i64, ptr %t106, !range !{i64 0, i64 8}
  %t109 = icmp eq i64 %t107, 0
  store i1 %t109, ptr %l58, !tbaa !21
  br label %bb26
bb26:
  %t110 = load i1, ptr %l58, !tbaa !21
  br i1 %t110, label %bb27, label %bb28
bb27:
  %t111 = load ptr, ptr %l2, !tbaa !29
  %t113 = getelementptr { i64, [4 x i64] }, ptr %t111, i32 0, i32 1
  %t114 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t113, i32 0, i32 0
  %t115 = load %"compiler/source:Span", ptr %t114
  store %"compiler/source:Span" %t115, ptr %l8
  %t117 = load ptr, ptr %l2, !tbaa !29
  %t119 = getelementptr { i64, [4 x i64] }, ptr %t117, i32 0, i32 1
  %t120 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t119, i32 0, i32 1
  %t121 = load i32, ptr %t120
  store i32 %t121, ptr %l9, !tbaa !23
  %t123 = load ptr, ptr %l2, !tbaa !29
  %t125 = getelementptr { i64, [4 x i64] }, ptr %t123, i32 0, i32 1
  %t126 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t125, i32 0, i32 2
  %t127 = load i32, ptr %t126
  store i32 %t127, ptr %l10, !tbaa !23
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t131 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t129)
  store ptr %t131, ptr %l69
  br label %bb29
bb28:
  br label %bb34
bb29:
  %t132 = load ptr, ptr %l69, !tbaa !29
  %t134 = getelementptr %"compiler/check:frame", ptr %t132, i32 0, i32 23
  %t135 = load i32, ptr %l10, !tbaa !23
  %t137 = sext i32 %t135 to i64
  %t140 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t134, i64 %t137)
  %t141 = extractvalue { i32, i64 } %t140, 1
  %t142 = extractvalue { i32, i64 } %t140, 0
  store i32 %t142, ptr %l75
  %t143 = icmp ne i32 %t142, 0
  br i1 %t143, label %bb31, label %ok.144, !prof !99
ok.144:
  store i64 %t141, ptr %l74
  br label %bb30
bb30:
  %t145 = load i64, ptr %l74, !tbaa !24
  store i64 %t145, ptr %l67, !tbaa !24
  br label %bb33
bb31:
  br label %bb32
bb32:
  store i64 -1, ptr %l67, !tbaa !24
  br label %bb33
bb33:
  %t146 = load i64, ptr %l67, !tbaa !24
  store i64 %t146, ptr %l7, !tbaa !24
  br label %bb34
bb34:
  %t147 = load ptr, ptr %l0, !tbaa !29
  store ptr %t147, ptr %l76, !tbaa !29
  %t148 = load ptr, ptr %l0, !tbaa !29
  %t149 = load %"compiler/source:Span", ptr %l1
  %t150 = load ptr, ptr %l2, !tbaa !29
  %t151 = load i64, ptr %l7, !tbaa !24
  %t156 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropIfHeld(ptr %v0, ptr %v1, ptr %v0, ptr %t148, %"compiler/source:Span" %t149, ptr %t150, i64 %t151)
  store ptr %t156, ptr %l81
  br label %bb35
bb35:
  %t157 = load ptr, ptr %l76, !tbaa !29
  %t158 = load ptr, ptr %l81, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t157, ptr %t158)
  br label %bb36
bb36:
  %t159 = load ptr, ptr %l0, !tbaa !29
  store ptr %t159, ptr %l82, !tbaa !29
  %t160 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t160, ptr %l83
  %t161 = load ptr, ptr %l2, !tbaa !29
  store ptr %t161, ptr %l84, !tbaa !29
  %t162 = load ptr, ptr %l0, !tbaa !29
  %t163 = load %"compiler/source:Span", ptr %l1
  %t164 = load %"compiler/source:Span", ptr %l1
  %t165 = load i32, ptr %l4, !tbaa !23
  %t166 = load i64, ptr %l6, !tbaa !24
  %t168 = trunc i64 %t166 to i32
  store { i64, [4 x i64] } zeroinitializer, ptr %t170
  %t171 = getelementptr { i64, [4 x i64] }, ptr %t170, i32 0, i32 0
  store i64 0, ptr %t171
  %t173 = insertvalue { %"compiler/source:Span", i32, i32 } undef, %"compiler/source:Span" %t164, 0
  %t175 = insertvalue { %"compiler/source:Span", i32, i32 } %t173, i32 %t165, 1
  %t177 = insertvalue { %"compiler/source:Span", i32, i32 } %t175, i32 %t168, 2
  %t178 = getelementptr { i64, [4 x i64] }, ptr %t170, i32 0, i32 1
  store { %"compiler/source:Span", i32, i32 } %t177, ptr %t178
  %t179 = load { i64, [4 x i64] }, ptr %t170
  %t181 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store { i64, [4 x i64] } %t179, ptr %t181
  %t185 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v0, ptr %v0, ptr %t162, %"compiler/source:Span" %t163, ptr %t181)
  store ptr %t185, ptr %l94
  br label %bb37
bb37:
  store { i64, [3 x i64] } zeroinitializer, ptr %t186
  %t187 = getelementptr { i64, [3 x i64] }, ptr %t186, i32 0, i32 0
  store i64 1, ptr %t187
  %t188 = load %"compiler/source:Span", ptr %l83
  %t189 = insertvalue { %"compiler/source:Span", ptr, ptr } undef, %"compiler/source:Span" %t188, 0
  %t190 = load ptr, ptr %l84, !tbaa !29
  %t191 = insertvalue { %"compiler/source:Span", ptr, ptr } %t189, ptr %t190, 1
  %t192 = load ptr, ptr %l94, !tbaa !29
  %t193 = insertvalue { %"compiler/source:Span", ptr, ptr } %t191, ptr %t192, 2
  %t194 = getelementptr { i64, [3 x i64] }, ptr %t186, i32 0, i32 1
  store { %"compiler/source:Span", ptr, ptr } %t193, ptr %t194
  %t195 = load { i64, [3 x i64] }, ptr %t186
  %t197 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t195, ptr %t197
  %t198 = load ptr, ptr %l82, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t198, ptr %t197)
  br label %bb38
bb38:
  %t200 = load i64, ptr %l7, !tbaa !24
  %t202 = icmp sge i64 %t200, 0
  br i1 %t202, label %bb39, label %bb40
bb39:
  %t204 = load ptr, ptr %l0, !tbaa !29
  store ptr %t204, ptr %l99, !tbaa !29
  %t205 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t205, ptr %l100
  %t206 = load %"compiler/source:Span", ptr %l1
  %t207 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t208 = load i64, ptr %l7, !tbaa !24
  %t210 = trunc i64 %t208 to i32
  store { i64, [4 x i64] } zeroinitializer, ptr %t212
  %t213 = getelementptr { i64, [4 x i64] }, ptr %t212, i32 0, i32 0
  store i64 0, ptr %t213
  %t215 = insertvalue { %"compiler/source:Span", i32, i32 } undef, %"compiler/source:Span" %t206, 0
  %t217 = insertvalue { %"compiler/source:Span", i32, i32 } %t215, i32 %t207, 1
  %t219 = insertvalue { %"compiler/source:Span", i32, i32 } %t217, i32 %t210, 2
  %t220 = getelementptr { i64, [4 x i64] }, ptr %t212, i32 0, i32 1
  store { %"compiler/source:Span", i32, i32 } %t219, ptr %t220
  %t221 = load { i64, [4 x i64] }, ptr %t212
  %t223 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store { i64, [4 x i64] } %t221, ptr %t223
  store ptr %t223, ptr %l107, !tbaa !29
  %t224 = load ptr, ptr %l0, !tbaa !29
  %t225 = load %"compiler/source:Span", ptr %l1
  %t226 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t230 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v0, ptr %t224, %"compiler/source:Span" %t225, i32 %t226, i64 1)
  store ptr %t230, ptr %l111
  br label %bb41
bb40:
  br label %bb43
bb41:
  store { i64, [3 x i64] } zeroinitializer, ptr %t231
  %t232 = getelementptr { i64, [3 x i64] }, ptr %t231, i32 0, i32 0
  store i64 1, ptr %t232
  %t233 = load %"compiler/source:Span", ptr %l100
  %t234 = insertvalue { %"compiler/source:Span", ptr, ptr } undef, %"compiler/source:Span" %t233, 0
  %t235 = load ptr, ptr %l107, !tbaa !29
  %t236 = insertvalue { %"compiler/source:Span", ptr, ptr } %t234, ptr %t235, 1
  %t237 = load ptr, ptr %l111, !tbaa !29
  %t238 = insertvalue { %"compiler/source:Span", ptr, ptr } %t236, ptr %t237, 2
  %t239 = getelementptr { i64, [3 x i64] }, ptr %t231, i32 0, i32 1
  store { %"compiler/source:Span", ptr, ptr } %t238, ptr %t239
  %t240 = load { i64, [3 x i64] }, ptr %t231
  %t242 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t240, ptr %t242
  %t243 = load ptr, ptr %l99, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t243, ptr %t242)
  br label %bb42
bb42:
  br label %bb43
bb43:
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etaskDefault(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca i32
  %l12 = alloca %"compiler/source:Span"
  %l13 = alloca ptr
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l3, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t3 = load ptr, ptr %l1, !tbaa !29
  %t5 = load i32, ptr %l2, !tbaa !23
  %t9 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v0, ptr %t2, ptr %t3, i32 %t5)
  store ptr %t9, ptr %l8
  br label %bb1
bb1:
  %t10 = load i32, ptr %l2, !tbaa !23
  store i32 %t10, ptr %l9, !tbaa !23
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load ptr, ptr %l1, !tbaa !29
  %t15 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eargSpan(ptr %v0, ptr %v1, ptr %t11, ptr %t12)
  store %"compiler/source:Span" %t15, ptr %l12
  br label %bb2
bb2:
  %t16 = load ptr, ptr %l3, !tbaa !29
  %t17 = load ptr, ptr %l8, !tbaa !29
  %t18 = load i32, ptr %l9, !tbaa !23
  %t19 = load %"compiler/source:Span", ptr %l12
  %t20 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v0, ptr %v2, ptr %t16, ptr %t17, i32 %t18, %"compiler/source:Span" %t19)
  store ptr %t20, ptr %l13
  br label %bb3
bb3:
  %t21 = load ptr, ptr %l13, !tbaa !29
  store ptr %t21, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunifySoft(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, ptr %a3) #0 {
entry:
  %l3 = alloca ptr
  %l4 = alloca %"compiler/generic:Binding"
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l15 = alloca %"compiler/generic:Binding"
  %l21 = alloca i32
  %l27 = alloca i64
  %l30 = alloca i64
  %l48 = alloca { i64, ptr }
  %l53 = alloca i1
  %l55 = alloca { i64, ptr }
  %l60 = alloca i1
  %l62 = alloca { i64, ptr }
  %l66 = alloca { i64, ptr }
  %l68 = alloca { i64, ptr }
  %l72 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l3, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Binding", ptr %t1, i32 0, i32 0
  %t4 = load i64, ptr %t3, !tbaa !24
  %t5 = load ptr, ptr %l3, !tbaa !29
  %t7 = getelementptr %"compiler/generic:Binding", ptr %t5, i32 0, i32 1
  %t8 = load i64, ptr %t7, !tbaa !24
  %t11 = call %"compiler/generic:Binding" @compiler_2fgeneric_3aBinding_2ector(ptr %s0, i64 %t4, i64 %t8)
  store %"compiler/generic:Binding" %t11, ptr %l15
  br label %bb1
bb1:
  %t12 = load %"compiler/generic:Binding", ptr %l15
  store %"compiler/generic:Binding" %t12, ptr %l4
  %t15 = getelementptr %"compiler/check:Checker", ptr %a0, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !29
  %t23 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnifyArg(ptr %v0, ptr %s0, ptr %t16, i32 %a1, i32 %a2, ptr %l4, i1 false, i1 false)
  store i32 %t23, ptr %l21
  %t24 = icmp ne i32 %t23, 0
  br i1 %t24, label %bb3, label %ok.25, !prof !99
ok.25:
  br label %bb2
bb2:
  br label %bb5
bb3:
  br label %bb4
bb4:
  br label %bb5
bb5:
  store i64 0, ptr %l5, !tbaa !24
  %t26 = load ptr, ptr %l3, !tbaa !29
  %t28 = getelementptr %"compiler/generic:Binding", ptr %t26, i32 0, i32 1
  %t29 = load i64, ptr %t28, !tbaa !24
  store i64 %t29, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t31 = load i64, ptr %l6, !tbaa !24
  %t32 = load i64, ptr %l5, !tbaa !24
  %t35 = icmp sgt i64 %t31, %t32
  br i1 %t35, label %bb6, label %bb7
bb6:
  %t37 = load i64, ptr %l7, !tbaa !24
  %t39 = icmp sgt i64 %t37, 0
  br i1 %t39, label %bb8, label %bb9
bb7:
  store i64 0, ptr %l27, !tbaa !24
  br label %bb11
bb8:
  %t41 = load i64, ptr %l6, !tbaa !24
  %t42 = load i64, ptr %l5, !tbaa !24
  %t45 = sub i64 %t41, %t42
  %t46 = load i64, ptr %l7, !tbaa !24
  %t49 = add i64 %t45, %t46
  %t51 = sub i64 %t49, 1
  %t52 = load i64, ptr %l7, !tbaa !24
  %t55 = sdiv i64 %t51, %t52
  store i64 %t55, ptr %l30, !tbaa !24
  br label %bb10
bb9:
  store i64 0, ptr %l30, !tbaa !24
  br label %bb10
bb10:
  %t57 = load i64, ptr %l30, !tbaa !24
  store i64 %t57, ptr %l27, !tbaa !24
  br label %bb11
bb11:
  %t58 = load i64, ptr %l27, !tbaa !24
  store i64 %t58, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb12
bb12:
  %t59 = load i64, ptr %l9, !tbaa !24
  %t60 = load i64, ptr %l8, !tbaa !24
  %t63 = icmp slt i64 %t59, %t60
  %t65 = xor i1 %t63, true
  br i1 %t65, label %bb13, label %bb14
bb13:
  br label %bb26
bb14:
  br label %bb15
bb15:
  %t67 = load i64, ptr %l5, !tbaa !24
  %t68 = load i64, ptr %l9, !tbaa !24
  %t69 = load i64, ptr %l7, !tbaa !24
  %t72 = mul i64 %t68, %t69
  %t75 = add i64 %t67, %t72
  store i64 %t75, ptr %l10, !tbaa !24
  %t77 = getelementptr %"compiler/generic:Binding", ptr %l4, i32 0, i32 2
  %t78 = load { i64, ptr }, ptr %t77, !tbaa !27
  store { i64, ptr } %t78, ptr %l48, !tbaa !27
  %t79 = load i64, ptr %l10, !tbaa !24
  %t81 = getelementptr { i64, ptr }, ptr %l48, i32 0, i32 1
  %t82 = load ptr, ptr %t81, !tbaa !27
  %t83 = getelementptr i32, ptr %t82, i64 %t79
  %t84 = load i32, ptr %t83, !tbaa !33
  %t85 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t88 = icmp ne i32 %t84, %t85
  br i1 %t88, label %bb16, label %bb17
bb16:
  %t90 = load ptr, ptr %l3, !tbaa !29
  %t92 = getelementptr %"compiler/generic:Binding", ptr %t90, i32 0, i32 2
  %t93 = load { i64, ptr }, ptr %t92, !tbaa !27
  store { i64, ptr } %t93, ptr %l55, !tbaa !27
  %t94 = load i64, ptr %l10, !tbaa !24
  %t96 = getelementptr { i64, ptr }, ptr %l55, i32 0, i32 1
  %t97 = load ptr, ptr %t96, !tbaa !27
  %t98 = getelementptr i32, ptr %t97, i64 %t94
  %t99 = load i32, ptr %t98, !tbaa !33
  %t100 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t103 = icmp eq i32 %t99, %t100
  br i1 %t103, label %bb18, label %bb19
bb17:
  store i1 false, ptr %l53, !tbaa !21
  br label %bb21
bb18:
  store i1 true, ptr %l60, !tbaa !21
  br label %bb20
bb19:
  %t105 = load ptr, ptr %l3, !tbaa !29
  %t107 = getelementptr %"compiler/generic:Binding", ptr %t105, i32 0, i32 3
  %t108 = load { i64, ptr }, ptr %t107, !tbaa !27
  store { i64, ptr } %t108, ptr %l62, !tbaa !27
  %t109 = load i64, ptr %l10, !tbaa !24
  %t111 = getelementptr { i64, ptr }, ptr %l62, i32 0, i32 1
  %t112 = load ptr, ptr %t111, !tbaa !27
  %t113 = getelementptr i1, ptr %t112, i64 %t109
  %t114 = load i1, ptr %t113, !tbaa !31
  store i1 %t114, ptr %l60, !tbaa !21
  br label %bb20
bb20:
  %t116 = load i1, ptr %l60, !tbaa !21
  store i1 %t116, ptr %l53, !tbaa !21
  br label %bb21
bb21:
  %t117 = load i1, ptr %l53, !tbaa !21
  br i1 %t117, label %bb22, label %bb23
bb22:
  %t118 = load ptr, ptr %l3, !tbaa !29
  %t120 = getelementptr %"compiler/generic:Binding", ptr %t118, i32 0, i32 2
  %t121 = load { i64, ptr }, ptr %t120, !tbaa !27
  store { i64, ptr } %t121, ptr %l66, !tbaa !27
  %t122 = load i64, ptr %l10, !tbaa !24
  %t123 = getelementptr %"compiler/generic:Binding", ptr %l4, i32 0, i32 2
  %t124 = load { i64, ptr }, ptr %t123, !tbaa !27
  store { i64, ptr } %t124, ptr %l68, !tbaa !27
  %t125 = load i64, ptr %l10, !tbaa !24
  %t127 = getelementptr { i64, ptr }, ptr %l68, i32 0, i32 1
  %t128 = load ptr, ptr %t127, !tbaa !27
  %t129 = getelementptr i32, ptr %t128, i64 %t125
  %t130 = load i32, ptr %t129, !tbaa !33
  %t133 = getelementptr { i64, ptr }, ptr %l66, i32 0, i32 1
  %t134 = load ptr, ptr %t133, !tbaa !27
  %t135 = getelementptr i32, ptr %t134, i64 %t122
  store i32 %t130, ptr %t135, !tbaa !33
  %t136 = load ptr, ptr %l3, !tbaa !29
  %t138 = getelementptr %"compiler/generic:Binding", ptr %t136, i32 0, i32 3
  %t139 = load { i64, ptr }, ptr %t138, !tbaa !27
  store { i64, ptr } %t139, ptr %l72, !tbaa !27
  %t140 = load i64, ptr %l10, !tbaa !24
  %t142 = getelementptr { i64, ptr }, ptr %l72, i32 0, i32 1
  %t143 = load ptr, ptr %t142, !tbaa !27
  %t144 = getelementptr i1, ptr %t143, i64 %t140
  store i1 false, ptr %t144, !tbaa !31
  br label %bb24
bb23:
  br label %bb24
bb24:
  br label %bb25
bb25:
  %t145 = load i64, ptr %l9, !tbaa !24
  %t147 = add i64 %t145, 1
  store i64 %t147, ptr %l9, !tbaa !24
  br label %bb12
bb26:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euniqueRef(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, %"compiler/source:Span" %a2, i1 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l4 = alloca i32
  %l5 = alloca ptr
  %l9 = alloca i1
  %l14 = alloca i32
  %l16 = alloca i1
  %l19 = alloca i64
  %l26 = alloca ptr
  %l30 = alloca i1
  %l33 = alloca i1
  %l34 = alloca i1
  %l38 = alloca i1
  %l40 = alloca i64
  %l43 = alloca ptr
  %l44 = alloca ptr
  %l50 = alloca i32
  %l52 = alloca ptr
  %s2 = alloca %olang.scope
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store %"compiler/source:Span" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t5 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euniqueExisting(ptr %v0, ptr %v1, ptr %t1, ptr %t2)
  store i1 %t5, ptr %l9
  br label %bb1
bb1:
  %t6 = load i1, ptr %l9, !tbaa !21
  %t7 = xor i1 %t6, true
  br i1 %t7, label %bb2, label %bb3
bb2:
  %t9 = load ptr, ptr %l1, !tbaa !29
  store ptr %t9, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t11 = load ptr, ptr %l1, !tbaa !29
  %t14 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t11)
  store i32 %t14, ptr %l14
  br label %bb5
bb5:
  %t15 = load i32, ptr %l14, !tbaa !23
  store i32 %t15, ptr %l4, !tbaa !23
  br i1 %a3, label %bb6, label %bb7
bb6:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t19 = load i32, ptr %l4, !tbaa !23
  %t22 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eboundMention(ptr %v0, ptr %t18, i32 %t19)
  store i64 %t22, ptr %l19
  br label %bb8
bb7:
  store i1 false, ptr %l16, !tbaa !21
  br label %bb9
bb8:
  %t23 = load i64, ptr %l19, !tbaa !24
  %t24 = icmp sge i64 %t23, 0
  store i1 %t24, ptr %l16, !tbaa !21
  br label %bb9
bb9:
  %t26 = load i1, ptr %l16, !tbaa !21
  br i1 %t26, label %bb10, label %bb11
bb10:
  store %olang.scope zeroinitializer, ptr %s2
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = load %"compiler/source:Span", ptr %l2
  %t29 = load i32, ptr %l4, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euniqueErr(ptr %v0, ptr %s2, ptr %t27, %"compiler/source:Span" %t28, i32 %t29, { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d26, i32 0, i32 1) })
  br label %bb12
bb11:
  br label %bb13
bb12:
  %t33 = load ptr, ptr %l1, !tbaa !29
  call void @__olang_scope_close(ptr %s2)
  store ptr %t33, ptr %rv
  br label %ret
bb13:
  %t35 = load ptr, ptr %l1, !tbaa !29
  %t37 = call ptr @compiler_2fcheck_2ereadPlace(ptr %v1, ptr %v1, ptr %t35)
  store ptr %t37, ptr %l26
  br label %bb14
bb14:
  %t38 = load ptr, ptr %l26, !tbaa !29
  store ptr %t38, ptr %l5, !tbaa !29
  %t39 = load ptr, ptr %l5, !tbaa !29
  %t41 = icmp eq ptr %t39, null
  %t43 = xor i1 %t41, true
  br i1 %t43, label %bb15, label %bb16
bb15:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t46 = load ptr, ptr %l5, !tbaa !29
  %t49 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplaceWritable(ptr %v0, ptr %v1, ptr %t45, ptr %t46)
  store i1 %t49, ptr %l33
  br label %bb17
bb16:
  store i1 false, ptr %l30, !tbaa !21
  br label %bb18
bb17:
  %t50 = load i1, ptr %l33, !tbaa !21
  store i1 %t50, ptr %l30, !tbaa !21
  br label %bb18
bb18:
  %t51 = load i1, ptr %l30, !tbaa !21
  br i1 %t51, label %bb19, label %bb20
bb19:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/check:Checker", ptr %t52, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !29
  %t56 = load i32, ptr %l4, !tbaa !23
  %t59 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eImmut(ptr %v0, ptr %t55, i32 %t56)
  store i1 %t59, ptr %l38
  br label %bb21
bb20:
  store i1 false, ptr %l34, !tbaa !21
  br label %bb22
bb21:
  %t60 = load i1, ptr %l38, !tbaa !21
  %t61 = xor i1 %t60, true
  store i1 %t61, ptr %l34, !tbaa !21
  br label %bb22
bb22:
  %t63 = load i1, ptr %l34, !tbaa !21
  br i1 %t63, label %bb23, label %bb24
bb23:
  %t64 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  store i64 %t64, ptr %l40, !tbaa !24
  br label %bb25
bb24:
  %t66 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  store i64 %t66, ptr %l40, !tbaa !24
  br label %bb25
bb25:
  %t68 = load i64, ptr %l40, !tbaa !24
  %t69 = load ptr, ptr %l0, !tbaa !29
  store ptr %t69, ptr %l43, !tbaa !29
  %t70 = load ptr, ptr %l1, !tbaa !29
  store ptr %t70, ptr %l44, !tbaa !29
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"compiler/check:Checker", ptr %t71, i32 0, i32 1
  %t74 = load ptr, ptr %t73, !tbaa !29
  %t76 = getelementptr %"compiler/generic:Program", ptr %t74, i32 0, i32 2
  %t77 = load i32, ptr %l4, !tbaa !23
  %t82 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t76, i32 %t77, i64 %t68)
  store i32 %t82, ptr %l50
  br label %bb26
bb26:
  %t83 = load %"compiler/source:Span", ptr %l2
  %t84 = load ptr, ptr %l43, !tbaa !29
  %t85 = load ptr, ptr %l44, !tbaa !29
  %t86 = load i32, ptr %l50, !tbaa !23
  %t88 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v1, ptr %v2, ptr %t84, ptr %t85, i32 %t86, %"compiler/source:Span" %t83)
  store ptr %t88, ptr %l52
  br label %bb27
bb27:
  %t89 = load ptr, ptr %l52, !tbaa !29
  store ptr %t89, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunrollBind(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l5 = alloca i1
  %l8 = alloca { i64, ptr }
  %l9 = alloca i1
  %l12 = alloca ptr
  %l20 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i32, ptr %l1, !tbaa !23
  %t3 = icmp eq i32 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l5, !tbaa !21
  br label %bb5
bb2:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t6 = load i32, ptr %l1, !tbaa !23
  %t9 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t5, i32 %t6)
  store { i64, ptr } %t9, ptr %l8
  br label %bb3
bb3:
  %t10 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t11 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t10, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d27, i32 0, i32 1) })
  store i1 %t11, ptr %l9
  br label %bb4
bb4:
  %t12 = load i1, ptr %l9, !tbaa !21
  store i1 %t12, ptr %l5, !tbaa !21
  br label %bb5
bb5:
  %t13 = load i1, ptr %l5, !tbaa !21
  br i1 %t13, label %bb6, label %bb7
bb6:
  call void @__olang_scope_close(ptr %s0)
  store i32 -1, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t15)
  store ptr %t17, ptr %l12
  br label %bb9
bb9:
  %t18 = load ptr, ptr %l12, !tbaa !29
  %t20 = getelementptr %"compiler/check:frame", ptr %t18, i32 0, i32 4
  %t21 = getelementptr %"compiler/generic:Context", ptr %t20, i32 0, i32 2
  %t22 = load i32, ptr %l1, !tbaa !23
  %t23 = load i32, ptr %l2, !tbaa !23
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_H943a9bb03970f71acf57214091669a7d(ptr %v0, ptr %t21, i32 %t22, i32 %t23)
  br label %bb10
bb10:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = load i32, ptr %l1, !tbaa !23
  %t29 = load i32, ptr %l2, !tbaa !23
  %t33 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflBind(ptr %v0, ptr %t27, i32 %t28, i32 %t29)
  store i32 %t33, ptr %l20
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s0)
  %t34 = load i32, ptr %l20, !tbaa !23
  store i32 %t34, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2fcheck_2eisHexDigit(i8 %a0) #0 {
entry:
  %l0 = alloca i8
  %l3 = alloca i1
  %l6 = alloca i1
  %l9 = alloca i1
  %rv = alloca i1
  store i8 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i8, ptr %l0, !tbaa !22
  %t3 = icmp uge i8 %t1, 97
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load i8, ptr %l0, !tbaa !22
  %t7 = icmp ule i8 %t5, 102
  store i1 %t7, ptr %l3, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l3, !tbaa !21
  br label %bb3
bb3:
  %t9 = load i1, ptr %l3, !tbaa !21
  br i1 %t9, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb9
bb5:
  %t10 = load i8, ptr %l0, !tbaa !22
  %t12 = icmp uge i8 %t10, 65
  br i1 %t12, label %bb6, label %bb7
bb6:
  %t14 = load i8, ptr %l0, !tbaa !22
  %t16 = icmp ule i8 %t14, 70
  store i1 %t16, ptr %l9, !tbaa !21
  br label %bb8
bb7:
  store i1 false, ptr %l9, !tbaa !21
  br label %bb8
bb8:
  %t18 = load i1, ptr %l9, !tbaa !21
  store i1 %t18, ptr %l6, !tbaa !21
  br label %bb9
bb9:
  %t19 = load i1, ptr %l6, !tbaa !21
  store i1 %t19, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2eisRest(ptr %v0, ptr %a0) #0 {
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 9}
  %t8 = icmp eq i64 %t6, 7
  store i1 %t8, ptr %l2, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l2, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb6
bb5:
  store i1 true, ptr %rv
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
  call void @__olang_check_failed(ptr @olang_loc_69063e233c23bbc5_4e0c3b9f00520e59)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local double @compiler_2fcheck_2elitF64(%"compiler/check:litv" %a0) #0 {
entry:
  %l0 = alloca %"compiler/check:litv"
  %l3 = alloca double
  %l10 = alloca double
  %rv = alloca double
  store %"compiler/check:litv" %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/check:litv", ptr %l0, i32 0, i32 6
  %t2 = load i1, ptr %t1, !tbaa !21
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = getelementptr %"compiler/check:litv", ptr %l0, i32 0, i32 7
  %t5 = load i1, ptr %t4, !tbaa !21
  br i1 %t5, label %bb3, label %bb4
bb2:
  br label %bb6
bb3:
  %t7 = getelementptr %"compiler/check:litv", ptr %l0, i32 0, i32 8
  %t8 = load i128, ptr %t7
  %t10 = uitofp i128 %t8 to double
  %t12 = fneg double %t10
  store double %t12, ptr %l3, !tbaa !26
  br label %bb5
bb4:
  %t14 = getelementptr %"compiler/check:litv", ptr %l0, i32 0, i32 8
  %t15 = load i128, ptr %t14
  %t17 = uitofp i128 %t15 to double
  store double %t17, ptr %l3, !tbaa !26
  br label %bb5
bb5:
  %t19 = load double, ptr %l3, !tbaa !26
  store double %t19, ptr %rv
  br label %ret
bb6:
  %t20 = getelementptr %"compiler/check:litv", ptr %l0, i32 0, i32 2
  %t21 = load i1, ptr %t20, !tbaa !21
  br i1 %t21, label %bb7, label %bb8
bb7:
  %t23 = getelementptr %"compiler/check:litv", ptr %l0, i32 0, i32 3
  %t24 = load i64, ptr %t23, !tbaa !24
  %t27 = uitofp i64 %t24 to double
  store double %t27, ptr %l10, !tbaa !26
  br label %bb9
bb8:
  %t29 = getelementptr %"compiler/check:litv", ptr %l0, i32 0, i32 3
  %t30 = load i64, ptr %t29, !tbaa !24
  %t32 = sitofp i64 %t30 to double
  store double %t32, ptr %l10, !tbaa !26
  br label %bb9
bb9:
  %t34 = load double, ptr %l10, !tbaa !26
  store double %t34, ptr %rv
  br label %ret
ret:
  %rr = load double, ptr %rv
  ret double %rr
}

define dso_local %"compiler/check:litv" @compiler_2fcheck_2elitv_2eofMag(i1 %a0, i128 %a1) #0 {
entry:
  %l1 = alloca i128
  %l2 = alloca i128
  %l5 = alloca %"compiler/check:litv"
  %l14 = alloca %"compiler/check:litv"
  %l20 = alloca %"compiler/check:litv"
  %l22 = alloca %"compiler/check:litv"
  %l30 = alloca %"compiler/check:litv"
  %l35 = alloca %"compiler/check:litv"
  %l36 = alloca %"compiler/check:litv"
  %s4 = alloca %olang.scope
  %rv = alloca %"compiler/check:litv"
  store i128 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i128, ptr %l1
  %t3 = icmp eq i128 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = call %"compiler/check:litv" @compiler_2fcheck_2elitv_2eintLit(i64 0)
  store %"compiler/check:litv" %t5, ptr %l5
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t6 = load %"compiler/check:litv", ptr %l5
  store %"compiler/check:litv" %t6, ptr %rv
  br label %ret
bb4:
  %t7 = shl i128 1, 63
  store i128 %t7, ptr %l2
  %t11 = xor i1 %a0, true
  br i1 %t11, label %bb5, label %bb6
bb5:
  %t13 = load i128, ptr %l1
  %t14 = load i128, ptr %l2
  %t17 = icmp ult i128 %t13, %t14
  br i1 %t17, label %bb7, label %bb8
bb6:
  br label %bb16
bb7:
  %t19 = load i128, ptr %l1
  %t21 = trunc i128 %t19 to i64
  %t23 = call %"compiler/check:litv" @compiler_2fcheck_2elitv_2eintLit(i64 %t21)
  store %"compiler/check:litv" %t23, ptr %l14
  br label %bb9
bb8:
  br label %bb10
bb9:
  %t24 = load %"compiler/check:litv", ptr %l14
  store %"compiler/check:litv" %t24, ptr %rv
  br label %ret
bb10:
  %t25 = load i128, ptr %l1
  %t26 = shl i128 1, 64
  %t29 = icmp ult i128 %t25, %t26
  br i1 %t29, label %bb11, label %bb12
bb11:
  store %olang.scope zeroinitializer, ptr %s4
  %t31 = load i128, ptr %l1
  %t33 = trunc i128 %t31 to i64
  %t35 = call %"compiler/check:litv" @compiler_2fcheck_3alitv_2ector(ptr %s4, i1 true, i1 false, i1 true, i64 %t33, double 0x0000000000000000)
  store %"compiler/check:litv" %t35, ptr %l20
  br label %bb13
bb12:
  br label %bb14
bb13:
  call void @__olang_scope_close(ptr %s4)
  %t36 = load %"compiler/check:litv", ptr %l20
  store %"compiler/check:litv" %t36, ptr %rv
  br label %ret
bb14:
  %t37 = load i128, ptr %l1
  %t39 = call %"compiler/check:litv" @compiler_2fcheck_2elitv_2ewideLit(i1 false, i128 %t37)
  store %"compiler/check:litv" %t39, ptr %l22
  br label %bb15
bb15:
  %t40 = load %"compiler/check:litv", ptr %l22
  store %"compiler/check:litv" %t40, ptr %rv
  br label %ret
bb16:
  %t41 = load i128, ptr %l1
  %t42 = load i128, ptr %l2
  %t45 = icmp ule i128 %t41, %t42
  br i1 %t45, label %bb17, label %bb18
bb17:
  %t47 = load i128, ptr %l1
  %t49 = trunc i128 %t47 to i64
  %t51 = sub i64 0, %t49
  %t54 = call %"compiler/check:litv" @compiler_2fcheck_2elitv_2eintLit(i64 %t51)
  store %"compiler/check:litv" %t54, ptr %l30
  br label %bb19
bb18:
  br label %bb20
bb19:
  %t55 = load %"compiler/check:litv", ptr %l30
  store %"compiler/check:litv" %t55, ptr %rv
  br label %ret
bb20:
  %t56 = load i128, ptr %l1
  %t57 = shl i128 1, 127
  %t60 = icmp ule i128 %t56, %t57
  br i1 %t60, label %bb21, label %bb22
bb21:
  %t62 = load i128, ptr %l1
  %t64 = call %"compiler/check:litv" @compiler_2fcheck_2elitv_2ewideLit(i1 true, i128 %t62)
  store %"compiler/check:litv" %t64, ptr %l35
  br label %bb23
bb22:
  br label %bb24
bb23:
  %t65 = load %"compiler/check:litv", ptr %l35
  store %"compiler/check:litv" %t65, ptr %rv
  br label %ret
bb24:
  %t66 = call %"compiler/check:litv" @compiler_2fcheck_2elitv_2enoLit()
  store %"compiler/check:litv" %t66, ptr %l36
  br label %bb25
bb25:
  %t67 = load %"compiler/check:litv", ptr %l36
  store %"compiler/check:litv" %t67, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:litv", ptr %rv
  ret %"compiler/check:litv" %rr
}

define dso_local i1 @compiler_2fcheck_2enamedFn(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i1
  %l3 = alloca ptr
  %l4 = alloca i1
  %l9 = alloca i1
  %l10 = alloca ptr
  %l11 = alloca i1
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
  %t8 = icmp eq i64 %t6, 15
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
  br label %bb17
bb5:
  %t16 = load ptr, ptr %l1, !tbaa !29
  store ptr %t16, ptr %l10, !tbaa !29
  store i1 false, ptr %l11, !tbaa !21
  %t17 = load ptr, ptr %l10, !tbaa !29
  %t18 = icmp ne ptr %t17, null
  br i1 %t18, label %bb6, label %bb7
bb6:
  %t20 = load ptr, ptr %l10, !tbaa !29
  %t21 = load i64, ptr %t20, !range !{i64 0, i64 3}
  %t23 = icmp eq i64 %t21, 0
  store i1 %t23, ptr %l11, !tbaa !21
  br label %bb7
bb7:
  %t24 = load i1, ptr %l11, !tbaa !21
  br i1 %t24, label %bb8, label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb11
bb10:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb16
bb11:
  br i1 true, label %bb12, label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb15
bb14:
  store i1 false, ptr %l9, !tbaa !21
  br label %bb16
bb15:
  call void @__olang_check_failed(ptr @olang_loc_a1143936e424f416_6a846c9af99dae82)
  unreachable
bb16:
  %t25 = load i1, ptr %l9, !tbaa !21
  store i1 %t25, ptr %l2, !tbaa !21
  br label %bb22
bb17:
  br i1 true, label %bb18, label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb21
bb20:
  store i1 false, ptr %l2, !tbaa !21
  br label %bb22
bb21:
  call void @__olang_check_failed(ptr @olang_loc_b0c5dfd122db8337_2ed6598a574b6003)
  unreachable
bb22:
  %t26 = load i1, ptr %l2, !tbaa !21
  store i1 %t26, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2eplainLen(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i1
  %l3 = alloca ptr
  %l4 = alloca i1
  %l7 = alloca ptr
  %l8 = alloca i1
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
  br label %bb17
bb6:
  %t10 = load ptr, ptr %l0, !tbaa !29
  store ptr %t10, ptr %l7, !tbaa !29
  store i1 false, ptr %l8, !tbaa !21
  %t11 = load ptr, ptr %l7, !tbaa !29
  %t12 = icmp ne ptr %t11, null
  br i1 %t12, label %bb7, label %bb8
bb7:
  %t14 = load ptr, ptr %l7, !tbaa !29
  %t15 = load i64, ptr %t14, !range !{i64 0, i64 30}
  %t17 = icmp eq i64 %t15, 1
  store i1 %t17, ptr %l8, !tbaa !21
  br label %bb8
bb8:
  %t18 = load i1, ptr %l8, !tbaa !21
  br i1 %t18, label %bb9, label %bb10
bb9:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr { i64, [4 x i64] }, ptr %t19, i32 0, i32 1
  %t22 = getelementptr { %"compiler/source:Span", i32 }, ptr %t21, i32 0, i32 1
  %t23 = load i32, ptr %t22, !range !{i32 0, i32 114}
  store i32 %t23, ptr %l1
  br label %bb11
bb10:
  br label %bb12
bb11:
  %t25 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t27 = trunc i64 2 to i32
  %t28 = icmp eq i32 %t25, %t27
  store i1 %t28, ptr %l2, !tbaa !21
  br label %bb17
bb12:
  br i1 true, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  store i1 false, ptr %l2, !tbaa !21
  br label %bb17
bb16:
  call void @__olang_check_failed(ptr @olang_loc_64562bc7ca55259a_4dcf078b9ca87c6)
  unreachable
bb17:
  %t30 = load i1, ptr %l2, !tbaa !21
  store i1 %t30, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2eplainPlace(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i1
  %l6 = alloca ptr
  %l7 = alloca i1
  %l10 = alloca ptr
  %l11 = alloca i1
  %l14 = alloca ptr
  %l15 = alloca i1
  %l21 = alloca i1
  %l22 = alloca ptr
  %l23 = alloca i1
  %l30 = alloca i1
  %l31 = alloca ptr
  %l32 = alloca i1
  %l39 = alloca i1
  %l40 = alloca i1
  %l43 = alloca i1
  %l44 = alloca ptr
  %l45 = alloca i1
  %l51 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l7, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l7, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb9
bb4:
  %t10 = load ptr, ptr %l0, !tbaa !29
  store ptr %t10, ptr %l10, !tbaa !29
  store i1 false, ptr %l11, !tbaa !21
  %t11 = load ptr, ptr %l10, !tbaa !29
  %t12 = icmp ne ptr %t11, null
  br i1 %t12, label %bb5, label %bb6
bb5:
  %t14 = load ptr, ptr %l10, !tbaa !29
  %t15 = load i64, ptr %t14, !range !{i64 0, i64 8}
  %t17 = icmp eq i64 %t15, 1
  store i1 %t17, ptr %l11, !tbaa !21
  br label %bb6
bb6:
  %t18 = load i1, ptr %l11, !tbaa !21
  br i1 %t18, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  store i1 true, ptr %l5, !tbaa !21
  br label %bb47
bb10:
  %t19 = load ptr, ptr %l0, !tbaa !29
  store ptr %t19, ptr %l14, !tbaa !29
  store i1 false, ptr %l15, !tbaa !21
  %t20 = load ptr, ptr %l14, !tbaa !29
  %t21 = icmp ne ptr %t20, null
  br i1 %t21, label %bb11, label %bb12
bb11:
  %t23 = load ptr, ptr %l14, !tbaa !29
  %t24 = load i64, ptr %t23, !range !{i64 0, i64 8}
  %t26 = icmp eq i64 %t24, 3
  store i1 %t26, ptr %l15, !tbaa !21
  br label %bb12
bb12:
  %t27 = load i1, ptr %l15, !tbaa !21
  br i1 %t27, label %bb13, label %bb14
bb13:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr { i64, [4 x i64] }, ptr %t28, i32 0, i32 1
  %t31 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t30, i32 0, i32 2
  %t32 = load ptr, ptr %t31
  store ptr %t32, ptr %l1, !tbaa !29
  br label %bb15
bb14:
  br label %bb17
bb15:
  %t34 = load ptr, ptr %l1, !tbaa !29
  %t36 = call i1 @compiler_2fcheck_2eplainPlace(ptr %v0, ptr %t34)
  store i1 %t36, ptr %l21
  br label %bb16
bb16:
  %t37 = load i1, ptr %l21, !tbaa !21
  store i1 %t37, ptr %l5, !tbaa !21
  br label %bb47
bb17:
  %t38 = load ptr, ptr %l0, !tbaa !29
  store ptr %t38, ptr %l22, !tbaa !29
  store i1 false, ptr %l23, !tbaa !21
  %t39 = load ptr, ptr %l22, !tbaa !29
  %t40 = icmp ne ptr %t39, null
  br i1 %t40, label %bb18, label %bb19
bb18:
  %t42 = load ptr, ptr %l22, !tbaa !29
  %t43 = load i64, ptr %t42, !range !{i64 0, i64 8}
  %t45 = icmp eq i64 %t43, 5
  store i1 %t45, ptr %l23, !tbaa !21
  br label %bb19
bb19:
  %t46 = load i1, ptr %l23, !tbaa !21
  br i1 %t46, label %bb20, label %bb21
bb20:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr { i64, [4 x i64] }, ptr %t47, i32 0, i32 1
  %t50 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t49, i32 0, i32 2
  %t51 = load ptr, ptr %t50
  store ptr %t51, ptr %l2, !tbaa !29
  br label %bb22
bb21:
  br label %bb24
bb22:
  %t53 = load ptr, ptr %l2, !tbaa !29
  %t55 = getelementptr %"compiler/typed:Payload", ptr %t53, i32 0, i32 0
  %t56 = load ptr, ptr %t55, !tbaa !29
  %t58 = call i1 @compiler_2fcheck_2eplainPlace(ptr %v0, ptr %t56)
  store i1 %t58, ptr %l30
  br label %bb23
bb23:
  %t59 = load i1, ptr %l30, !tbaa !21
  store i1 %t59, ptr %l5, !tbaa !21
  br label %bb47
bb24:
  %t60 = load ptr, ptr %l0, !tbaa !29
  store ptr %t60, ptr %l31, !tbaa !29
  store i1 false, ptr %l32, !tbaa !21
  %t61 = load ptr, ptr %l31, !tbaa !29
  %t62 = icmp ne ptr %t61, null
  br i1 %t62, label %bb25, label %bb26
bb25:
  %t64 = load ptr, ptr %l31, !tbaa !29
  %t65 = load i64, ptr %t64, !range !{i64 0, i64 8}
  %t67 = icmp eq i64 %t65, 4
  store i1 %t67, ptr %l32, !tbaa !21
  br label %bb26
bb26:
  %t68 = load i1, ptr %l32, !tbaa !21
  br i1 %t68, label %bb27, label %bb28
bb27:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr { i64, [4 x i64] }, ptr %t69, i32 0, i32 1
  %t72 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t71, i32 0, i32 2
  %t73 = load ptr, ptr %t72
  store ptr %t73, ptr %l3, !tbaa !29
  br label %bb29
bb28:
  br label %bb35
bb29:
  %t75 = load ptr, ptr %l3, !tbaa !29
  %t77 = getelementptr %"compiler/typed:Elem", ptr %t75, i32 0, i32 0
  %t78 = load ptr, ptr %t77, !tbaa !29
  %t80 = call i1 @compiler_2fcheck_2eplainPlace(ptr %v0, ptr %t78)
  store i1 %t80, ptr %l39
  br label %bb30
bb30:
  %t81 = load i1, ptr %l39, !tbaa !21
  br i1 %t81, label %bb31, label %bb32
bb31:
  %t82 = load ptr, ptr %l3, !tbaa !29
  %t84 = getelementptr %"compiler/typed:Elem", ptr %t82, i32 0, i32 1
  %t85 = load ptr, ptr %t84, !tbaa !29
  %t87 = call i1 @compiler_2fcheck_2eplainIndex(ptr %v0, ptr %t85)
  store i1 %t87, ptr %l43
  br label %bb33
bb32:
  store i1 false, ptr %l40, !tbaa !21
  br label %bb34
bb33:
  %t88 = load i1, ptr %l43, !tbaa !21
  store i1 %t88, ptr %l40, !tbaa !21
  br label %bb34
bb34:
  %t89 = load i1, ptr %l40, !tbaa !21
  store i1 %t89, ptr %l5, !tbaa !21
  br label %bb47
bb35:
  %t90 = load ptr, ptr %l0, !tbaa !29
  store ptr %t90, ptr %l44, !tbaa !29
  store i1 false, ptr %l45, !tbaa !21
  %t91 = load ptr, ptr %l44, !tbaa !29
  %t92 = icmp ne ptr %t91, null
  br i1 %t92, label %bb36, label %bb37
bb36:
  %t94 = load ptr, ptr %l44, !tbaa !29
  %t95 = load i64, ptr %t94, !range !{i64 0, i64 8}
  %t97 = icmp eq i64 %t95, 2
  store i1 %t97, ptr %l45, !tbaa !21
  br label %bb37
bb37:
  %t98 = load i1, ptr %l45, !tbaa !21
  br i1 %t98, label %bb38, label %bb39
bb38:
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t101 = getelementptr { i64, [4 x i64] }, ptr %t99, i32 0, i32 1
  %t102 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t101, i32 0, i32 2
  %t103 = load ptr, ptr %t102
  store ptr %t103, ptr %l4, !tbaa !29
  br label %bb40
bb39:
  br label %bb42
bb40:
  %t105 = load ptr, ptr %l4, !tbaa !29
  %t107 = call i1 @compiler_2fcheck_2eplainIndex(ptr %v0, ptr %t105)
  store i1 %t107, ptr %l51
  br label %bb41
bb41:
  %t108 = load i1, ptr %l51, !tbaa !21
  store i1 %t108, ptr %l5, !tbaa !21
  br label %bb47
bb42:
  br i1 true, label %bb43, label %bb44
bb43:
  br label %bb45
bb44:
  br label %bb46
bb45:
  store i1 false, ptr %l5, !tbaa !21
  br label %bb47
bb46:
  call void @__olang_check_failed(ptr @olang_loc_d5f035b3a669b232_703ee1b693614206)
  unreachable
bb47:
  %t109 = load i1, ptr %l5, !tbaa !21
  store i1 %t109, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fcheck_2estoredExpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
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
  %l12 = alloca { i64, ptr }
  %l13 = alloca ptr
  %l14 = alloca ptr
  %l15 = alloca ptr
  %l16 = alloca { i64, ptr }
  %l17 = alloca ptr
  %l18 = alloca { i64, ptr }
  %l19 = alloca ptr
  %l20 = alloca ptr
  %l23 = alloca ptr
  %l24 = alloca i1
  %l29 = alloca ptr
  %l30 = alloca i1
  %l35 = alloca ptr
  %l36 = alloca i1
  %l41 = alloca ptr
  %l42 = alloca i1
  %l47 = alloca ptr
  %l48 = alloca i1
  %l53 = alloca ptr
  %l54 = alloca i1
  %l62 = alloca ptr
  %l63 = alloca i1
  %l70 = alloca ptr
  %l71 = alloca i1
  %l76 = alloca ptr
  %l77 = alloca i1
  %l82 = alloca ptr
  %l83 = alloca i1
  %l91 = alloca ptr
  %l92 = alloca i1
  %l99 = alloca ptr
  %l100 = alloca i1
  %l107 = alloca ptr
  %l108 = alloca i1
  %l121 = alloca ptr
  %l122 = alloca i1
  %l140 = alloca ptr
  %l141 = alloca i1
  %l149 = alloca ptr
  %l150 = alloca i1
  %l157 = alloca ptr
  %l158 = alloca i1
  %l170 = alloca ptr
  %l171 = alloca i1
  %l187 = alloca ptr
  %l188 = alloca i1
  %l193 = alloca ptr
  %l194 = alloca i1
  %l199 = alloca ptr
  %l200 = alloca i1
  %l205 = alloca ptr
  %l206 = alloca i1
  %l211 = alloca ptr
  %l212 = alloca i1
  %l219 = alloca ptr
  %l220 = alloca i1
  %l232 = alloca ptr
  %l233 = alloca i1
  %l240 = alloca ptr
  %l241 = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
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
  store ptr %t5, ptr %l23, !tbaa !29
  store i1 false, ptr %l24, !tbaa !21
  %t6 = load ptr, ptr %l23, !tbaa !29
  %t7 = icmp ne ptr %t6, null
  br i1 %t7, label %bb4, label %bb5
bb4:
  %t9 = load ptr, ptr %l23, !tbaa !29
  %t10 = load i64, ptr %t9, !range !{i64 0, i64 30}
  %t12 = icmp eq i64 %t10, 2
  store i1 %t12, ptr %l24, !tbaa !21
  br label %bb5
bb5:
  %t13 = load i1, ptr %l24, !tbaa !21
  br i1 %t13, label %bb6, label %bb7
bb6:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr { i64, [4 x i64] }, ptr %t14, i32 0, i32 1
  %t17 = getelementptr { %"compiler/source:Span", ptr }, ptr %t16, i32 0, i32 1
  %t18 = load ptr, ptr %t17
  store ptr %t18, ptr %l2, !tbaa !29
  br label %bb28
bb7:
  %t20 = load ptr, ptr %l0, !tbaa !29
  store ptr %t20, ptr %l29, !tbaa !29
  store i1 false, ptr %l30, !tbaa !21
  %t21 = load ptr, ptr %l29, !tbaa !29
  %t22 = icmp ne ptr %t21, null
  br i1 %t22, label %bb8, label %bb9
bb8:
  %t24 = load ptr, ptr %l29, !tbaa !29
  %t25 = load i64, ptr %t24, !range !{i64 0, i64 30}
  %t27 = icmp eq i64 %t25, 26
  store i1 %t27, ptr %l30, !tbaa !21
  br label %bb9
bb9:
  %t28 = load i1, ptr %l30, !tbaa !21
  br i1 %t28, label %bb10, label %bb11
bb10:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr { i64, [4 x i64] }, ptr %t29, i32 0, i32 1
  %t32 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t31, i32 0, i32 2
  %t33 = load ptr, ptr %t32
  store ptr %t33, ptr %l2, !tbaa !29
  br label %bb28
bb11:
  %t35 = load ptr, ptr %l0, !tbaa !29
  store ptr %t35, ptr %l35, !tbaa !29
  store i1 false, ptr %l36, !tbaa !21
  %t36 = load ptr, ptr %l35, !tbaa !29
  %t37 = icmp ne ptr %t36, null
  br i1 %t37, label %bb12, label %bb13
bb12:
  %t39 = load ptr, ptr %l35, !tbaa !29
  %t40 = load i64, ptr %t39, !range !{i64 0, i64 30}
  %t42 = icmp eq i64 %t40, 28
  store i1 %t42, ptr %l36, !tbaa !21
  br label %bb13
bb13:
  %t43 = load i1, ptr %l36, !tbaa !21
  br i1 %t43, label %bb14, label %bb15
bb14:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr { i64, [4 x i64] }, ptr %t44, i32 0, i32 1
  %t47 = getelementptr { %"compiler/source:Span", ptr }, ptr %t46, i32 0, i32 1
  %t48 = load ptr, ptr %t47
  store ptr %t48, ptr %l2, !tbaa !29
  br label %bb28
bb15:
  %t50 = load ptr, ptr %l0, !tbaa !29
  store ptr %t50, ptr %l41, !tbaa !29
  store i1 false, ptr %l42, !tbaa !21
  %t51 = load ptr, ptr %l41, !tbaa !29
  %t52 = icmp ne ptr %t51, null
  br i1 %t52, label %bb16, label %bb17
bb16:
  %t54 = load ptr, ptr %l41, !tbaa !29
  %t55 = load i64, ptr %t54, !range !{i64 0, i64 30}
  %t57 = icmp eq i64 %t55, 3
  store i1 %t57, ptr %l42, !tbaa !21
  br label %bb17
bb17:
  %t58 = load i1, ptr %l42, !tbaa !21
  br i1 %t58, label %bb18, label %bb19
bb18:
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr { i64, [4 x i64] }, ptr %t59, i32 0, i32 1
  %t62 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t61, i32 0, i32 2
  %t63 = load ptr, ptr %t62
  store ptr %t63, ptr %l2, !tbaa !29
  br label %bb28
bb19:
  %t65 = load ptr, ptr %l0, !tbaa !29
  store ptr %t65, ptr %l47, !tbaa !29
  store i1 false, ptr %l48, !tbaa !21
  %t66 = load ptr, ptr %l47, !tbaa !29
  %t67 = icmp ne ptr %t66, null
  br i1 %t67, label %bb20, label %bb21
bb20:
  %t69 = load ptr, ptr %l47, !tbaa !29
  %t70 = load i64, ptr %t69, !range !{i64 0, i64 30}
  %t72 = icmp eq i64 %t70, 4
  store i1 %t72, ptr %l48, !tbaa !21
  br label %bb21
bb21:
  %t73 = load i1, ptr %l48, !tbaa !21
  br i1 %t73, label %bb22, label %bb23
bb22:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr { i64, [4 x i64] }, ptr %t74, i32 0, i32 1
  %t77 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t76, i32 0, i32 2
  %t78 = load ptr, ptr %t77
  store ptr %t78, ptr %l2, !tbaa !29
  br label %bb28
bb23:
  %t80 = load ptr, ptr %l0, !tbaa !29
  store ptr %t80, ptr %l53, !tbaa !29
  store i1 false, ptr %l54, !tbaa !21
  %t81 = load ptr, ptr %l53, !tbaa !29
  %t82 = icmp ne ptr %t81, null
  br i1 %t82, label %bb24, label %bb25
bb24:
  %t84 = load ptr, ptr %l53, !tbaa !29
  %t85 = load i64, ptr %t84, !range !{i64 0, i64 30}
  %t87 = icmp eq i64 %t85, 14
  store i1 %t87, ptr %l54, !tbaa !21
  br label %bb25
bb25:
  %t88 = load i1, ptr %l54, !tbaa !21
  br i1 %t88, label %bb26, label %bb27
bb26:
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t91 = getelementptr { i64, [4 x i64] }, ptr %t89, i32 0, i32 1
  %t92 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t91, i32 0, i32 1
  %t93 = load ptr, ptr %t92
  store ptr %t93, ptr %l2, !tbaa !29
  br label %bb28
bb27:
  br label %bb30
bb28:
  %t95 = load ptr, ptr %l2, !tbaa !29
  %t97 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2estoredExpr(ptr %v0, ptr %v1, ptr %t95, ptr %t97)
  br label %bb29
bb29:
  br label %bb157
bb30:
  %t100 = load ptr, ptr %l0, !tbaa !29
  store ptr %t100, ptr %l62, !tbaa !29
  store i1 false, ptr %l63, !tbaa !21
  %t101 = load ptr, ptr %l62, !tbaa !29
  %t102 = icmp ne ptr %t101, null
  br i1 %t102, label %bb31, label %bb32
bb31:
  %t104 = load ptr, ptr %l62, !tbaa !29
  %t105 = load i64, ptr %t104, !range !{i64 0, i64 30}
  %t107 = icmp eq i64 %t105, 27
  store i1 %t107, ptr %l63, !tbaa !21
  br label %bb32
bb32:
  %t108 = load i1, ptr %l63, !tbaa !21
  br i1 %t108, label %bb33, label %bb34
bb33:
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t111 = getelementptr { i64, [4 x i64] }, ptr %t109, i32 0, i32 1
  %t112 = getelementptr { %"compiler/source:Span", ptr }, ptr %t111, i32 0, i32 1
  %t113 = load ptr, ptr %t112
  store ptr %t113, ptr %l3, !tbaa !29
  br label %bb35
bb34:
  br label %bb37
bb35:
  %t115 = load ptr, ptr %l3, !tbaa !29
  %t116 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2estoredExpr(ptr %v0, ptr %v1, ptr %t115, ptr %t116)
  br label %bb36
bb36:
  br label %bb157
bb37:
  %t119 = load ptr, ptr %l0, !tbaa !29
  store ptr %t119, ptr %l70, !tbaa !29
  store i1 false, ptr %l71, !tbaa !21
  %t120 = load ptr, ptr %l70, !tbaa !29
  %t121 = icmp ne ptr %t120, null
  br i1 %t121, label %bb38, label %bb39
bb38:
  %t123 = load ptr, ptr %l70, !tbaa !29
  %t124 = load i64, ptr %t123, !range !{i64 0, i64 30}
  %t126 = icmp eq i64 %t124, 9
  store i1 %t126, ptr %l71, !tbaa !21
  br label %bb39
bb39:
  %t127 = load i1, ptr %l71, !tbaa !21
  br i1 %t127, label %bb40, label %bb41
bb40:
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t130 = getelementptr { i64, [4 x i64] }, ptr %t128, i32 0, i32 1
  %t131 = getelementptr { %"compiler/source:Span", ptr, ptr, i1 }, ptr %t130, i32 0, i32 1
  %t132 = load ptr, ptr %t131
  store ptr %t132, ptr %l4, !tbaa !29
  br label %bb50
bb41:
  %t134 = load ptr, ptr %l0, !tbaa !29
  store ptr %t134, ptr %l76, !tbaa !29
  store i1 false, ptr %l77, !tbaa !21
  %t135 = load ptr, ptr %l76, !tbaa !29
  %t136 = icmp ne ptr %t135, null
  br i1 %t136, label %bb42, label %bb43
bb42:
  %t138 = load ptr, ptr %l76, !tbaa !29
  %t139 = load i64, ptr %t138, !range !{i64 0, i64 30}
  %t141 = icmp eq i64 %t139, 11
  store i1 %t141, ptr %l77, !tbaa !21
  br label %bb43
bb43:
  %t142 = load i1, ptr %l77, !tbaa !21
  br i1 %t142, label %bb44, label %bb45
bb44:
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t145 = getelementptr { i64, [4 x i64] }, ptr %t143, i32 0, i32 1
  %t146 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t145, i32 0, i32 1
  %t147 = load ptr, ptr %t146
  store ptr %t147, ptr %l4, !tbaa !29
  br label %bb50
bb45:
  %t149 = load ptr, ptr %l0, !tbaa !29
  store ptr %t149, ptr %l82, !tbaa !29
  store i1 false, ptr %l83, !tbaa !21
  %t150 = load ptr, ptr %l82, !tbaa !29
  %t151 = icmp ne ptr %t150, null
  br i1 %t151, label %bb46, label %bb47
bb46:
  %t153 = load ptr, ptr %l82, !tbaa !29
  %t154 = load i64, ptr %t153, !range !{i64 0, i64 30}
  %t156 = icmp eq i64 %t154, 13
  store i1 %t156, ptr %l83, !tbaa !21
  br label %bb47
bb47:
  %t157 = load i1, ptr %l83, !tbaa !21
  br i1 %t157, label %bb48, label %bb49
bb48:
  %t158 = load ptr, ptr %l0, !tbaa !29
  %t160 = getelementptr { i64, [4 x i64] }, ptr %t158, i32 0, i32 1
  %t161 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t160, i32 0, i32 1
  %t162 = load ptr, ptr %t161
  store ptr %t162, ptr %l4, !tbaa !29
  br label %bb50
bb49:
  br label %bb52
bb50:
  %t164 = load ptr, ptr %l4, !tbaa !29
  %t166 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2estoredExpr(ptr %v0, ptr %v1, ptr %t164, ptr %t166)
  br label %bb51
bb51:
  br label %bb157
bb52:
  %t169 = load ptr, ptr %l0, !tbaa !29
  store ptr %t169, ptr %l91, !tbaa !29
  store i1 false, ptr %l92, !tbaa !21
  %t170 = load ptr, ptr %l91, !tbaa !29
  %t171 = icmp ne ptr %t170, null
  br i1 %t171, label %bb53, label %bb54
bb53:
  %t173 = load ptr, ptr %l91, !tbaa !29
  %t174 = load i64, ptr %t173, !range !{i64 0, i64 30}
  %t176 = icmp eq i64 %t174, 5
  store i1 %t176, ptr %l92, !tbaa !21
  br label %bb54
bb54:
  %t177 = load i1, ptr %l92, !tbaa !21
  br i1 %t177, label %bb55, label %bb56
bb55:
  %t178 = load ptr, ptr %l0, !tbaa !29
  %t180 = getelementptr { i64, [4 x i64] }, ptr %t178, i32 0, i32 1
  %t181 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t180, i32 0, i32 2
  %t182 = load ptr, ptr %t181
  store ptr %t182, ptr %l5, !tbaa !29
  %t184 = load ptr, ptr %l0, !tbaa !29
  %t186 = getelementptr { i64, [4 x i64] }, ptr %t184, i32 0, i32 1
  %t187 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t186, i32 0, i32 3
  %t188 = load ptr, ptr %t187
  store ptr %t188, ptr %l6, !tbaa !29
  br label %bb65
bb56:
  %t190 = load ptr, ptr %l0, !tbaa !29
  store ptr %t190, ptr %l99, !tbaa !29
  store i1 false, ptr %l100, !tbaa !21
  %t191 = load ptr, ptr %l99, !tbaa !29
  %t192 = icmp ne ptr %t191, null
  br i1 %t192, label %bb57, label %bb58
bb57:
  %t194 = load ptr, ptr %l99, !tbaa !29
  %t195 = load i64, ptr %t194, !range !{i64 0, i64 30}
  %t197 = icmp eq i64 %t195, 6
  store i1 %t197, ptr %l100, !tbaa !21
  br label %bb58
bb58:
  %t198 = load i1, ptr %l100, !tbaa !21
  br i1 %t198, label %bb59, label %bb60
bb59:
  %t199 = load ptr, ptr %l0, !tbaa !29
  %t201 = getelementptr { i64, [4 x i64] }, ptr %t199, i32 0, i32 1
  %t202 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t201, i32 0, i32 1
  %t203 = load ptr, ptr %t202
  store ptr %t203, ptr %l5, !tbaa !29
  %t205 = load ptr, ptr %l0, !tbaa !29
  %t207 = getelementptr { i64, [4 x i64] }, ptr %t205, i32 0, i32 1
  %t208 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t207, i32 0, i32 2
  %t209 = load ptr, ptr %t208
  store ptr %t209, ptr %l6, !tbaa !29
  br label %bb65
bb60:
  %t211 = load ptr, ptr %l0, !tbaa !29
  store ptr %t211, ptr %l107, !tbaa !29
  store i1 false, ptr %l108, !tbaa !21
  %t212 = load ptr, ptr %l107, !tbaa !29
  %t213 = icmp ne ptr %t212, null
  br i1 %t213, label %bb61, label %bb62
bb61:
  %t215 = load ptr, ptr %l107, !tbaa !29
  %t216 = load i64, ptr %t215, !range !{i64 0, i64 30}
  %t218 = icmp eq i64 %t216, 10
  store i1 %t218, ptr %l108, !tbaa !21
  br label %bb62
bb62:
  %t219 = load i1, ptr %l108, !tbaa !21
  br i1 %t219, label %bb63, label %bb64
bb63:
  %t220 = load ptr, ptr %l0, !tbaa !29
  %t222 = getelementptr { i64, [4 x i64] }, ptr %t220, i32 0, i32 1
  %t223 = getelementptr { %"compiler/source:Span", ptr, ptr, i1 }, ptr %t222, i32 0, i32 1
  %t224 = load ptr, ptr %t223
  store ptr %t224, ptr %l5, !tbaa !29
  %t226 = load ptr, ptr %l0, !tbaa !29
  %t228 = getelementptr { i64, [4 x i64] }, ptr %t226, i32 0, i32 1
  %t229 = getelementptr { %"compiler/source:Span", ptr, ptr, i1 }, ptr %t228, i32 0, i32 2
  %t230 = load ptr, ptr %t229
  store ptr %t230, ptr %l6, !tbaa !29
  br label %bb65
bb64:
  br label %bb68
bb65:
  %t232 = load ptr, ptr %l5, !tbaa !29
  %t234 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2estoredExpr(ptr %v0, ptr %v1, ptr %t232, ptr %t234)
  br label %bb66
bb66:
  %t237 = load ptr, ptr %l6, !tbaa !29
  %t239 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2estoredExpr(ptr %v0, ptr %v1, ptr %t237, ptr %t239)
  br label %bb67
bb67:
  br label %bb157
bb68:
  %t242 = load ptr, ptr %l0, !tbaa !29
  store ptr %t242, ptr %l121, !tbaa !29
  store i1 false, ptr %l122, !tbaa !21
  %t243 = load ptr, ptr %l121, !tbaa !29
  %t244 = icmp ne ptr %t243, null
  br i1 %t244, label %bb69, label %bb70
bb69:
  %t246 = load ptr, ptr %l121, !tbaa !29
  %t247 = load i64, ptr %t246, !range !{i64 0, i64 30}
  %t249 = icmp eq i64 %t247, 8
  store i1 %t249, ptr %l122, !tbaa !21
  br label %bb70
bb70:
  %t250 = load i1, ptr %l122, !tbaa !21
  br i1 %t250, label %bb71, label %bb72
bb71:
  %t251 = load ptr, ptr %l0, !tbaa !29
  %t253 = getelementptr { i64, [4 x i64] }, ptr %t251, i32 0, i32 1
  %t254 = getelementptr { %"compiler/source:Span", ptr, ptr, ptr }, ptr %t253, i32 0, i32 1
  %t255 = load ptr, ptr %t254
  store ptr %t255, ptr %l7, !tbaa !29
  %t257 = load ptr, ptr %l0, !tbaa !29
  %t259 = getelementptr { i64, [4 x i64] }, ptr %t257, i32 0, i32 1
  %t260 = getelementptr { %"compiler/source:Span", ptr, ptr, ptr }, ptr %t259, i32 0, i32 2
  %t261 = load ptr, ptr %t260
  store ptr %t261, ptr %l8, !tbaa !29
  %t263 = load ptr, ptr %l0, !tbaa !29
  %t265 = getelementptr { i64, [4 x i64] }, ptr %t263, i32 0, i32 1
  %t266 = getelementptr { %"compiler/source:Span", ptr, ptr, ptr }, ptr %t265, i32 0, i32 3
  %t267 = load ptr, ptr %t266
  store ptr %t267, ptr %l9, !tbaa !29
  br label %bb73
bb72:
  br label %bb77
bb73:
  %t269 = load ptr, ptr %l7, !tbaa !29
  %t271 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2estoredExpr(ptr %v0, ptr %v1, ptr %t269, ptr %t271)
  br label %bb74
bb74:
  %t274 = load ptr, ptr %l8, !tbaa !29
  %t276 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2estoredExpr(ptr %v0, ptr %v1, ptr %t274, ptr %t276)
  br label %bb75
bb75:
  %t279 = load ptr, ptr %l9, !tbaa !29
  %t281 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2estoredExpr(ptr %v0, ptr %v1, ptr %t279, ptr %t281)
  br label %bb76
bb76:
  br label %bb157
bb77:
  %t284 = load ptr, ptr %l0, !tbaa !29
  store ptr %t284, ptr %l140, !tbaa !29
  store i1 false, ptr %l141, !tbaa !21
  %t285 = load ptr, ptr %l140, !tbaa !29
  %t286 = icmp ne ptr %t285, null
  br i1 %t286, label %bb78, label %bb79
bb78:
  %t288 = load ptr, ptr %l140, !tbaa !29
  %t289 = load i64, ptr %t288, !range !{i64 0, i64 30}
  %t291 = icmp eq i64 %t289, 7
  store i1 %t291, ptr %l141, !tbaa !21
  br label %bb79
bb79:
  %t292 = load i1, ptr %l141, !tbaa !21
  br i1 %t292, label %bb80, label %bb81
bb80:
  %t293 = load ptr, ptr %l0, !tbaa !29
  %t295 = getelementptr { i64, [4 x i64] }, ptr %t293, i32 0, i32 1
  %t296 = getelementptr { %"compiler/source:Span", ptr }, ptr %t295, i32 0, i32 1
  %t297 = load ptr, ptr %t296
  store ptr %t297, ptr %l10, !tbaa !29
  br label %bb82
bb81:
  br label %bb84
bb82:
  %t299 = load ptr, ptr %l10, !tbaa !29
  %t301 = getelementptr %"compiler/ast:Chain", ptr %t299, i32 0, i32 1
  %t302 = load { i64, ptr }, ptr %t301, !tbaa !27
  %t303 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2estoredExprs(ptr %v0, ptr %v1, { i64, ptr } %t302, ptr %t303)
  br label %bb83
bb83:
  br label %bb157
bb84:
  %t306 = load ptr, ptr %l0, !tbaa !29
  store ptr %t306, ptr %l149, !tbaa !29
  store i1 false, ptr %l150, !tbaa !21
  %t307 = load ptr, ptr %l149, !tbaa !29
  %t308 = icmp ne ptr %t307, null
  br i1 %t308, label %bb85, label %bb86
bb85:
  %t310 = load ptr, ptr %l149, !tbaa !29
  %t311 = load i64, ptr %t310, !range !{i64 0, i64 30}
  %t313 = icmp eq i64 %t311, 12
  store i1 %t313, ptr %l150, !tbaa !21
  br label %bb86
bb86:
  %t314 = load i1, ptr %l150, !tbaa !21
  br i1 %t314, label %bb87, label %bb88
bb87:
  %t315 = load ptr, ptr %l0, !tbaa !29
  %t317 = getelementptr { i64, [4 x i64] }, ptr %t315, i32 0, i32 1
  %t318 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t317, i32 0, i32 1
  %t319 = load ptr, ptr %t318
  store ptr %t319, ptr %l11, !tbaa !29
  %t321 = load ptr, ptr %l0, !tbaa !29
  %t323 = getelementptr { i64, [4 x i64] }, ptr %t321, i32 0, i32 1
  %t324 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t323, i32 0, i32 2
  %t325 = load { i64, ptr }, ptr %t324
  store { i64, ptr } %t325, ptr %l12, !tbaa !27
  br label %bb93
bb88:
  %t327 = load ptr, ptr %l0, !tbaa !29
  store ptr %t327, ptr %l157, !tbaa !29
  store i1 false, ptr %l158, !tbaa !21
  %t328 = load ptr, ptr %l157, !tbaa !29
  %t329 = icmp ne ptr %t328, null
  br i1 %t329, label %bb89, label %bb90
bb89:
  %t331 = load ptr, ptr %l157, !tbaa !29
  %t332 = load i64, ptr %t331, !range !{i64 0, i64 30}
  %t334 = icmp eq i64 %t332, 15
  store i1 %t334, ptr %l158, !tbaa !21
  br label %bb90
bb90:
  %t335 = load i1, ptr %l158, !tbaa !21
  br i1 %t335, label %bb91, label %bb92
bb91:
  %t336 = load ptr, ptr %l0, !tbaa !29
  %t338 = getelementptr { i64, [4 x i64] }, ptr %t336, i32 0, i32 1
  %t339 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t338, i32 0, i32 1
  %t340 = load ptr, ptr %t339
  store ptr %t340, ptr %l11, !tbaa !29
  %t342 = load ptr, ptr %l0, !tbaa !29
  %t344 = getelementptr { i64, [4 x i64] }, ptr %t342, i32 0, i32 1
  %t345 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t344, i32 0, i32 2
  %t346 = load { i64, ptr }, ptr %t345
  store { i64, ptr } %t346, ptr %l12, !tbaa !27
  br label %bb93
bb92:
  br label %bb96
bb93:
  %t348 = load ptr, ptr %l11, !tbaa !29
  %t350 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2estoredExpr(ptr %v0, ptr %v1, ptr %t348, ptr %t350)
  br label %bb94
bb94:
  %t353 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t354 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2estoredExprs(ptr %v0, ptr %v1, { i64, ptr } %t353, ptr %t354)
  br label %bb95
bb95:
  br label %bb157
bb96:
  %t357 = load ptr, ptr %l0, !tbaa !29
  store ptr %t357, ptr %l170, !tbaa !29
  store i1 false, ptr %l171, !tbaa !21
  %t358 = load ptr, ptr %l170, !tbaa !29
  %t359 = icmp ne ptr %t358, null
  br i1 %t359, label %bb97, label %bb98
bb97:
  %t361 = load ptr, ptr %l170, !tbaa !29
  %t362 = load i64, ptr %t361, !range !{i64 0, i64 30}
  %t364 = icmp eq i64 %t362, 16
  store i1 %t364, ptr %l171, !tbaa !21
  br label %bb98
bb98:
  %t365 = load i1, ptr %l171, !tbaa !21
  br i1 %t365, label %bb99, label %bb100
bb99:
  %t366 = load ptr, ptr %l0, !tbaa !29
  %t368 = getelementptr { i64, [4 x i64] }, ptr %t366, i32 0, i32 1
  %t369 = getelementptr { %"compiler/source:Span", ptr, ptr, ptr }, ptr %t368, i32 0, i32 1
  %t370 = load ptr, ptr %t369
  store ptr %t370, ptr %l13, !tbaa !29
  %t372 = load ptr, ptr %l0, !tbaa !29
  %t374 = getelementptr { i64, [4 x i64] }, ptr %t372, i32 0, i32 1
  %t375 = getelementptr { %"compiler/source:Span", ptr, ptr, ptr }, ptr %t374, i32 0, i32 2
  %t376 = load ptr, ptr %t375
  store ptr %t376, ptr %l14, !tbaa !29
  %t378 = load ptr, ptr %l0, !tbaa !29
  %t380 = getelementptr { i64, [4 x i64] }, ptr %t378, i32 0, i32 1
  %t381 = getelementptr { %"compiler/source:Span", ptr, ptr, ptr }, ptr %t380, i32 0, i32 3
  %t382 = load ptr, ptr %t381
  store ptr %t382, ptr %l15, !tbaa !29
  br label %bb101
bb100:
  br label %bb105
bb101:
  %t384 = load ptr, ptr %l13, !tbaa !29
  %t386 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2estoredExpr(ptr %v0, ptr %v1, ptr %t384, ptr %t386)
  br label %bb102
bb102:
  %t389 = load ptr, ptr %l14, !tbaa !29
  %t390 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2estoredExpr(ptr %v0, ptr %v1, ptr %t389, ptr %t390)
  br label %bb103
bb103:
  %t393 = load ptr, ptr %l15, !tbaa !29
  %t394 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2estoredExpr(ptr %v0, ptr %v1, ptr %t393, ptr %t394)
  br label %bb104
bb104:
  br label %bb157
bb105:
  %t397 = load ptr, ptr %l0, !tbaa !29
  store ptr %t397, ptr %l187, !tbaa !29
  store i1 false, ptr %l188, !tbaa !21
  %t398 = load ptr, ptr %l187, !tbaa !29
  %t399 = icmp ne ptr %t398, null
  br i1 %t399, label %bb106, label %bb107
bb106:
  %t401 = load ptr, ptr %l187, !tbaa !29
  %t402 = load i64, ptr %t401, !range !{i64 0, i64 30}
  %t404 = icmp eq i64 %t402, 17
  store i1 %t404, ptr %l188, !tbaa !21
  br label %bb107
bb107:
  %t405 = load i1, ptr %l188, !tbaa !21
  br i1 %t405, label %bb108, label %bb109
bb108:
  %t406 = load ptr, ptr %l0, !tbaa !29
  %t408 = getelementptr { i64, [4 x i64] }, ptr %t406, i32 0, i32 1
  %t409 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t408, i32 0, i32 2
  %t410 = load { i64, ptr }, ptr %t409
  store { i64, ptr } %t410, ptr %l16, !tbaa !27
  br label %bb126
bb109:
  %t412 = load ptr, ptr %l0, !tbaa !29
  store ptr %t412, ptr %l193, !tbaa !29
  store i1 false, ptr %l194, !tbaa !21
  %t413 = load ptr, ptr %l193, !tbaa !29
  %t414 = icmp ne ptr %t413, null
  br i1 %t414, label %bb110, label %bb111
bb110:
  %t416 = load ptr, ptr %l193, !tbaa !29
  %t417 = load i64, ptr %t416, !range !{i64 0, i64 30}
  %t419 = icmp eq i64 %t417, 18
  store i1 %t419, ptr %l194, !tbaa !21
  br label %bb111
bb111:
  %t420 = load i1, ptr %l194, !tbaa !21
  br i1 %t420, label %bb112, label %bb113
bb112:
  %t421 = load ptr, ptr %l0, !tbaa !29
  %t423 = getelementptr { i64, [4 x i64] }, ptr %t421, i32 0, i32 1
  %t424 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t423, i32 0, i32 1
  %t425 = load { i64, ptr }, ptr %t424
  store { i64, ptr } %t425, ptr %l16, !tbaa !27
  br label %bb126
bb113:
  %t427 = load ptr, ptr %l0, !tbaa !29
  store ptr %t427, ptr %l199, !tbaa !29
  store i1 false, ptr %l200, !tbaa !21
  %t428 = load ptr, ptr %l199, !tbaa !29
  %t429 = icmp ne ptr %t428, null
  br i1 %t429, label %bb114, label %bb115
bb114:
  %t431 = load ptr, ptr %l199, !tbaa !29
  %t432 = load i64, ptr %t431, !range !{i64 0, i64 30}
  %t434 = icmp eq i64 %t432, 29
  store i1 %t434, ptr %l200, !tbaa !21
  br label %bb115
bb115:
  %t435 = load i1, ptr %l200, !tbaa !21
  br i1 %t435, label %bb116, label %bb117
bb116:
  %t436 = load ptr, ptr %l0, !tbaa !29
  %t438 = getelementptr { i64, [4 x i64] }, ptr %t436, i32 0, i32 1
  %t439 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t438, i32 0, i32 1
  %t440 = load { i64, ptr }, ptr %t439
  store { i64, ptr } %t440, ptr %l16, !tbaa !27
  br label %bb126
bb117:
  %t442 = load ptr, ptr %l0, !tbaa !29
  store ptr %t442, ptr %l205, !tbaa !29
  store i1 false, ptr %l206, !tbaa !21
  %t443 = load ptr, ptr %l205, !tbaa !29
  %t444 = icmp ne ptr %t443, null
  br i1 %t444, label %bb118, label %bb119
bb118:
  %t446 = load ptr, ptr %l205, !tbaa !29
  %t447 = load i64, ptr %t446, !range !{i64 0, i64 30}
  %t449 = icmp eq i64 %t447, 20
  store i1 %t449, ptr %l206, !tbaa !21
  br label %bb119
bb119:
  %t450 = load i1, ptr %l206, !tbaa !21
  br i1 %t450, label %bb120, label %bb121
bb120:
  %t451 = load ptr, ptr %l0, !tbaa !29
  %t453 = getelementptr { i64, [4 x i64] }, ptr %t451, i32 0, i32 1
  %t454 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t453, i32 0, i32 1
  %t455 = load { i64, ptr }, ptr %t454
  store { i64, ptr } %t455, ptr %l16, !tbaa !27
  br label %bb126
bb121:
  %t457 = load ptr, ptr %l0, !tbaa !29
  store ptr %t457, ptr %l211, !tbaa !29
  store i1 false, ptr %l212, !tbaa !21
  %t458 = load ptr, ptr %l211, !tbaa !29
  %t459 = icmp ne ptr %t458, null
  br i1 %t459, label %bb122, label %bb123
bb122:
  %t461 = load ptr, ptr %l211, !tbaa !29
  %t462 = load i64, ptr %t461, !range !{i64 0, i64 30}
  %t464 = icmp eq i64 %t462, 24
  store i1 %t464, ptr %l212, !tbaa !21
  br label %bb123
bb123:
  %t465 = load i1, ptr %l212, !tbaa !21
  br i1 %t465, label %bb124, label %bb125
bb124:
  %t466 = load ptr, ptr %l0, !tbaa !29
  %t468 = getelementptr { i64, [4 x i64] }, ptr %t466, i32 0, i32 1
  %t469 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t468, i32 0, i32 1
  %t470 = load { i64, ptr }, ptr %t469
  store { i64, ptr } %t470, ptr %l16, !tbaa !27
  br label %bb126
bb125:
  br label %bb128
bb126:
  %t472 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t473 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2estoredExprs(ptr %v0, ptr %v1, { i64, ptr } %t472, ptr %t473)
  br label %bb127
bb127:
  br label %bb157
bb128:
  %t476 = load ptr, ptr %l0, !tbaa !29
  store ptr %t476, ptr %l219, !tbaa !29
  store i1 false, ptr %l220, !tbaa !21
  %t477 = load ptr, ptr %l219, !tbaa !29
  %t478 = icmp ne ptr %t477, null
  br i1 %t478, label %bb129, label %bb130
bb129:
  %t480 = load ptr, ptr %l219, !tbaa !29
  %t481 = load i64, ptr %t480, !range !{i64 0, i64 30}
  %t483 = icmp eq i64 %t481, 21
  store i1 %t483, ptr %l220, !tbaa !21
  br label %bb130
bb130:
  %t484 = load i1, ptr %l220, !tbaa !21
  br i1 %t484, label %bb131, label %bb132
bb131:
  %t485 = load ptr, ptr %l0, !tbaa !29
  %t487 = getelementptr { i64, [4 x i64] }, ptr %t485, i32 0, i32 1
  %t488 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t487, i32 0, i32 1
  %t489 = load ptr, ptr %t488
  store ptr %t489, ptr %l17, !tbaa !29
  %t491 = load ptr, ptr %l0, !tbaa !29
  %t493 = getelementptr { i64, [4 x i64] }, ptr %t491, i32 0, i32 1
  %t494 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t493, i32 0, i32 2
  %t495 = load { i64, ptr }, ptr %t494
  store { i64, ptr } %t495, ptr %l18, !tbaa !27
  br label %bb133
bb132:
  br label %bb136
bb133:
  %t497 = load ptr, ptr %l17, !tbaa !29
  %t499 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2estoredExpr(ptr %v0, ptr %v1, ptr %t497, ptr %t499)
  br label %bb134
bb134:
  %t502 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t503 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2estoredCatches(ptr %v0, ptr %v1, { i64, ptr } %t502, ptr %t503)
  br label %bb135
bb135:
  br label %bb157
bb136:
  %t506 = load ptr, ptr %l0, !tbaa !29
  store ptr %t506, ptr %l232, !tbaa !29
  store i1 false, ptr %l233, !tbaa !21
  %t507 = load ptr, ptr %l232, !tbaa !29
  %t508 = icmp ne ptr %t507, null
  br i1 %t508, label %bb137, label %bb138
bb137:
  %t510 = load ptr, ptr %l232, !tbaa !29
  %t511 = load i64, ptr %t510, !range !{i64 0, i64 30}
  %t513 = icmp eq i64 %t511, 23
  store i1 %t513, ptr %l233, !tbaa !21
  br label %bb138
bb138:
  %t514 = load i1, ptr %l233, !tbaa !21
  br i1 %t514, label %bb139, label %bb140
bb139:
  %t515 = load ptr, ptr %l0, !tbaa !29
  %t517 = getelementptr { i64, [4 x i64] }, ptr %t515, i32 0, i32 1
  %t518 = getelementptr { %"compiler/source:Span", ptr }, ptr %t517, i32 0, i32 1
  %t519 = load ptr, ptr %t518
  store ptr %t519, ptr %l19, !tbaa !29
  br label %bb141
bb140:
  br label %bb143
bb141:
  %t521 = load ptr, ptr %l19, !tbaa !29
  %t522 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2estoredMatch(ptr %v0, ptr %v1, ptr %t521, ptr %t522)
  br label %bb142
bb142:
  br label %bb157
bb143:
  %t525 = load ptr, ptr %l0, !tbaa !29
  store ptr %t525, ptr %l240, !tbaa !29
  store i1 false, ptr %l241, !tbaa !21
  %t526 = load ptr, ptr %l240, !tbaa !29
  %t527 = icmp ne ptr %t526, null
  br i1 %t527, label %bb144, label %bb145
bb144:
  %t529 = load ptr, ptr %l240, !tbaa !29
  %t530 = load i64, ptr %t529, !range !{i64 0, i64 30}
  %t532 = icmp eq i64 %t530, 19
  store i1 %t532, ptr %l241, !tbaa !21
  br label %bb145
bb145:
  %t533 = load i1, ptr %l241, !tbaa !21
  br i1 %t533, label %bb146, label %bb147
bb146:
  %t534 = load ptr, ptr %l0, !tbaa !29
  %t536 = getelementptr { i64, [4 x i64] }, ptr %t534, i32 0, i32 1
  %t537 = getelementptr { %"compiler/source:Span", ptr }, ptr %t536, i32 0, i32 1
  %t538 = load ptr, ptr %t537
  store ptr %t538, ptr %l20, !tbaa !29
  br label %bb148
bb147:
  br label %bb152
bb148:
  %t540 = load ptr, ptr %l20, !tbaa !29
  %t542 = getelementptr %"compiler/ast:Compr", ptr %t540, i32 0, i32 1
  %t543 = load ptr, ptr %t542, !tbaa !29
  %t545 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2estoredExpr(ptr %v0, ptr %v1, ptr %t543, ptr %t545)
  br label %bb149
bb149:
  %t548 = load ptr, ptr %l20, !tbaa !29
  %t550 = getelementptr %"compiler/ast:Compr", ptr %t548, i32 0, i32 4
  %t551 = load ptr, ptr %t550, !tbaa !29
  %t553 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2estoredExpr(ptr %v0, ptr %v1, ptr %t551, ptr %t553)
  br label %bb150
bb150:
  %t556 = load ptr, ptr %l20, !tbaa !29
  %t558 = getelementptr %"compiler/ast:Compr", ptr %t556, i32 0, i32 5
  %t559 = load ptr, ptr %t558, !tbaa !29
  %t560 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2estoredExpr(ptr %v0, ptr %v1, ptr %t559, ptr %t560)
  br label %bb151
bb151:
  br label %bb157
bb152:
  br i1 true, label %bb153, label %bb154
bb153:
  br label %bb155
bb154:
  br label %bb156
bb155:
  br label %bb157
bb156:
  call void @__olang_check_failed(ptr @olang_loc_9cea8b157736196b_cebcd42f5be7b27)
  unreachable
bb157:
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l5 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  store i32 %t5, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v0, ptr %t7)
  store i32 %t9, ptr %l5
  br label %bb4
bb4:
  %t10 = load i32, ptr %l5, !tbaa !23
  store i32 %t10, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local %"compiler/check:EmbedAsk" @compiler_2fcheck_3aEmbedAsk_2ector(ptr %v0, i64 %a0, i64 %a1, i32 %a2) #0 {
entry:
  %rv = alloca %"compiler/check:EmbedAsk"
  br label %start
start:
  br label %bb0
bb0:
  %t8 = insertvalue %"compiler/check:EmbedAsk" undef, i64 %a0, 0
  %t10 = insertvalue %"compiler/check:EmbedAsk" %t8, i64 %a1, 1
  %t12 = insertvalue %"compiler/check:EmbedAsk" %t10, i32 %a2, 2
  store %"compiler/check:EmbedAsk" %t12, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:EmbedAsk", ptr %rv
  ret %"compiler/check:EmbedAsk" %rr
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
@.d0 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"OLANG_HANDLES" }>, align 8
declare void @__olang_errpay_pop()
@.d1 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d2 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2fcheck_3aChecker_2e58 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_H80f211cc28309eb3dfbe2d2a353877b8(ptr %v0, ptr %a0) #0 {
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
declare void @__olang_region_settle(ptr, i1)
declare void @__olang_region_drop(ptr) noinline
declare void @__olang_check_failed(ptr) cold noreturn
@.d3 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"an extern fn's call" }>, align 8
@.d4 = private constant <{ i64, [31 x i8] }> <{ i64 0, [31 x i8] c"a call through a function value" }>, align 8
@.d5 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"a call through an any" }>, align 8
@.d6 = private constant <{ i64, [36 x i8] }> <{ i64 0, [36 x i8] c"a call of what the compiler supplies" }>, align 8
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
@.d7 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"no call of a function" }>, align 8
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
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
define linkonce_odr void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fgeneric_3aContext(ptr %out, ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/generic:Context"
  %l3 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l5 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  call void @llvm.memmove.p0.p0.i64(ptr %l1, ptr %a0, i64 160, i1 false)
  %t2 = getelementptr %"compiler/generic:Context", ptr %l1, i32 0, i32 2
  %t4 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_Ha3611e7042201d9891a66cc0e2a71916(ptr %v0, ptr %t2)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t4, ptr %l3
  br label %bb1
bb1:
  %t5 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l3
  %t6 = getelementptr %"compiler/generic:Context", ptr %l1, i32 0, i32 2
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t5, ptr %t6
  %t7 = getelementptr %"compiler/generic:Context", ptr %l1, i32 0, i32 3
  %t9 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_Ha3611e7042201d9891a66cc0e2a71916(ptr %v0, ptr %t7)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t9, ptr %l5
  br label %bb2
bb2:
  %t10 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l5
  %t11 = getelementptr %"compiler/generic:Context", ptr %l1, i32 0, i32 3
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t10, ptr %t11
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l1, i64 160, i1 false)
  br label %ret
ret:
  ret void
}

@.d8 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"param" }>, align 8
@.d9 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d10 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"kept" }>, align 8
@.d11 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"mut" }>, align 8
@.d12 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"ref" }>, align 8
@.d13 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@__olang_prog_scope = external thread_local(initialexec) global ptr
@.d14 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"call" }>, align 8
@.d15 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"At" }>, align 8
@.d16 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Get" }>, align 8
@.d17 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"view" }>, align 8
@.d18 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"Array" }>, align 8
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

declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
@.d19 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"HasAttr" }>, align 8
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

@__olang_empty_array = external constant [16 x i64]
@.d20 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d21 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" ? " }>, align 8
@.d22 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
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
declare ptr @__olang_scope_of(ptr, ptr) noinline
@.d23 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d24 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d25 = private constant <{ i64, [85 x i8] }> <{ i64 0, [85 x i8] c"a store over a value with destructors to run, reached through what a call gives (O15)" }>, align 8
@.d26 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"a local made from it" }>, align 8
@.d27 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"_" }>, align 8
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
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_Ha3611e7042201d9891a66cc0e2a71916(ptr %v0, ptr %a0) #0 {
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

declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %a0)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAllFns(ptr %v0, ptr %a0)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnCount(ptr %v0, ptr %a0)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eRecordCount(ptr %v0, ptr %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenScan(ptr %v0, ptr %a0)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eCount(ptr %v0, ptr %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eattempt(ptr %v0, ptr %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esettleUnset(ptr %v0, ptr %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esettleLandings(ptr %v0, ptr %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esettleHeldWalks(ptr %v0, ptr %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esettleIdle(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_Hda4ef06466535e66801340e999dad217(ptr %v0, ptr %a0)
declare %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_H87a29777ccf22aa2985fa9d3c61f9cd3(ptr %v0, ptr %a0, i64 %a1)
declare { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftypes_3aListId_3e__H9cb5d99387f926677a92c13412f9a8b2(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esettleFacts(ptr %v0, ptr %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esettleInPlace(ptr %v0, ptr %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efactsUndecided(ptr %v0, ptr %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einPlaceUndecided(ptr %v0, ptr %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esettleFixed(ptr %v0, ptr %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esettleDropOrder(ptr %v0, ptr %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecopyEffects(ptr %v0, ptr %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ejudgeEffects(ptr %v0, ptr %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eorderGlobals(ptr %v0, ptr %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esettleAllViews(ptr %v0, ptr %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esettleWeak(ptr %v0, ptr %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emutStorage(ptr %v0, ptr %a0)
declare { i32, { i64, ptr } } @std_2fos_2eEnv(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehandleReport(ptr %v0, ptr %a0)
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eForget(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereset(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2epastAway(ptr %v0, ptr %v1, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewritableTemp(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, ptr %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewritable(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_1698deca837a7d96_de8e9bfeb7067cd2 = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eatCallee(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnIsExtern(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2eFnOwner(i64 %a0)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnInstance(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/generic:Binding" @compiler_2fgeneric_3aBinding_2ector(ptr %v0, i64 %a0, i64 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunify(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, ptr %a3, i1 %a4, i1 %a5)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInferThroughBounds(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebodyRefusal(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_4f357d5c515ec460_c39407ade47891c4 = external constant [0 x i8]
@olang_loc_5259ca87fe3b4871_3fe667824d420b5 = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eReadOnly = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eWritable = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroRef(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehidden(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i32 %a2)
declare %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroKey(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2fcheck_2ereadPlace(ptr %v0, ptr %v1, ptr %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroPlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1308596c866d4be061d9da9113abde88(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1, i1 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroTrack(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_15dc8e5e4dc9449e_12f0342e5abdcdfa = external constant [0 x i8]
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eInst(ptr %v0, ptr %a0)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
@olang_loc_7e3b8ef59b75af1f_c18e9d0b6f53f27b = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCallbackNotExport(ptr %v0)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, %"compiler/diagmsg:Msg" %a2)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsUpper(i8 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2_H2251bc8fca359ca0394d0bb11af7ba0a(ptr %v0, ptr %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v1, ptr %a0)
declare { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eat(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCaseIsPrivate(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrorOncePerLine(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %v0, i64 %a0)
declare ptr @compiler_2fcheck_2eexprPath(ptr %v0, ptr %v1, ptr %a0)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eEntriesOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emerged(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enormalSet(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare { i64, i32 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrorWord(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eentryOf(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_1e68dbdbde35cba9_f30fa4c89b16ec2d = external constant [0 x i8]
@olang_loc_af264802bedcf8d8_5deeb41ed3d90c7c = external constant [0 x i8]
@olang_loc_986dcc23e228494c_5356e2d9a8a4da00 = external constant [0 x i8]
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eCutOff(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_b95c45f94d7269e2_7c3a0c34c4e08fe6 = external constant [0 x i8]
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrLocalName(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrItemPath(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_91bbe37ca794b073_cd30040e8f82c287 = external constant [0 x i8]
declare %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eholdsHandle(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elentAt(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehandleLine(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, ptr %a2, i64 %a3, { i64, ptr } %a4, { i64, ptr } %a5)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_3f_26_3e_2eAt__H2e4a6474e10b73ca754517844b8d7700(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare ptr @compiler_2ftyped_2eCopiedOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i64 @compiler_2fcheck_2ehandleRoot(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2ehandleCall(ptr %v0, ptr %v1, ptr %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eviewCallee(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehandleCallee(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v0, ptr %a0)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocal(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2, i32 %a3, i32 %a4, { i64, [1 x i64] } %a5)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i64 %a2)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eflowsInto(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_aec4d07a8c55eb24_c1f86bfc15f940a8 = external constant [0 x i8]
@olang_loc_f7ce27c314005a15_bac367b114faff79 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopesOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i32 %a3, i32 %a4, i64 %a5, i1 %a6, i32 %a7, i64 %a8)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNamesIdOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRefunc(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i32 %a3, i32 %a4, i32 %a5, i64 %a6)
@olang_loc_24473ecab934ff5a_e5063e673d38f936 = external constant [0 x i8]
@olang_loc_1dc6773449e59e5b_c7fcef2f52138cd7 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H5696e1a008d256bf9453cde2b49c6c45(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %a0)
@olang_loc_eb65b3680edb0345_685145072e457a11 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eglobalDeps(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2)
@olang_loc_becd3eb77e076db3_2d856a700a1e74b7 = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eIndexOf_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aCycle(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i64 %a3)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %a0, i32 %a1)
declare { i32, %"compiler/check:seqOf" } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eseqType(ptr %v0, ptr %a0, i32 %a1)
declare { ptr, { i64, ptr }, %"compiler/source:Span" } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eattrCallee(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2enoRefl(ptr %v0)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eattrHolder(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eresolve(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, i32 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eattrFound(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2ervBool(ptr %v0, i1 %a0)
@olang_loc_e2de52da0998b8a_4e4f16d2638e7f66 = external constant [0 x i8]
@olang_loc_4bef50c9347fcfcb_39dc7124156e73c7 = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v0, ptr %a0)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
@olang_loc_e181575e6035f202_99a6d5836a9bf6a6 = external constant [0 x i8]
@olang_loc_a5d3444dbde3a383_cb32d8a11a505607 = external constant [0 x i8]
@olang_loc_664096f84a6143a8_9c45533022ca790c = external constant [0 x i8]
@olang_loc_5f0b92ad49630279_51f88f4b15ed303d = external constant [0 x i8]
@olang_loc_265c788dd5eed9e_866edb98fc8c38ea = external constant [0 x i8]
@olang_loc_6ac4c8202b0b581f_2f15107fd7d9b5ab = external constant [0 x i8]
@olang_loc_8bfef52d6d2c65e4_ce3ff42f583fc170 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aUnread_3e_2eLen_3ccompiler_2fnames_3aUnread_3e(ptr %v0, ptr %a0)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrors(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eLen_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0)
declare %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %v0, i64 %a0, i64 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edestructs(ptr %v0, ptr %a0, i32 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2ed2e5427629ba63a7110fc86d969058(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare { i32, i1 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H190b78e3c1eec037529224679e114a85(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare %"compiler/names:Unread" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aUnread_3e_2eAt_3ccompiler_2fnames_3aUnread_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLocalUnusedBare(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrorAlone(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLocalUnused(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeNamed(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/check:elemsShape" @compiler_2fcheck_3aelemsShape_2ector(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1)
@olang_loc_c0d1d2eb81d1d8d1_71bd70056b23e28d = external constant [0 x i8]
@olang_loc_70e9f05b266be8f7_36ef9a2f9f93b02b = external constant [0 x i8]
@olang_loc_7d3bd01c87e6cabb_168a15d9febd8197 = external constant [0 x i8]
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceSig(ptr %v0, ptr %a0, i64 %a1)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %a0, i8 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2espell(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, i1 %a3)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShareOf(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
@G_2ecompiler_2ftypes_2eVoidT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResultFrom(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebodyErrors(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2ftypes_2eDefaultErrT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\10\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2equalifierFor(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorWords(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrMask(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewrittenMet(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrorResult(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAnySlots(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSlotKey(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etraitMethod(ptr %v0, ptr %v1, ptr %a0, %"compiler/generic:AnySlot" %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enewBody(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, i32 %a2, i64 %a3, %"compiler/source:Span" %a4)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
@olang_loc_61cd02582a530769_6431634bdc3c1a5d = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v0, ptr %a0)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNeedsDrop(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebufferField(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estable(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropIfHeld(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i64 %a3)
@G_2ecompiler_2ftypes_2eBoolT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i64 %a3)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eargSpan(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnifyArg(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, ptr %a3, i1 %a4, i1 %a5)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euniqueExisting(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eboundMention(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euniqueErr(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, { i64, ptr } %a3)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplaceWritable(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eImmut(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_H943a9bb03970f71acf57214091669a7d(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflBind(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
@olang_loc_69063e233c23bbc5_4e0c3b9f00520e59 = external constant [0 x i8]
declare %"compiler/check:litv" @compiler_2fcheck_2elitv_2eintLit(i64 %a0)
declare %"compiler/check:litv" @compiler_2fcheck_3alitv_2ector(ptr %v0, i1 %a0, i1 %a1, i1 %a2, i64 %a3, double %a4)
declare %"compiler/check:litv" @compiler_2fcheck_2elitv_2ewideLit(i1 %a0, i128 %a1)
declare %"compiler/check:litv" @compiler_2fcheck_2elitv_2enoLit()
@olang_loc_a1143936e424f416_6a846c9af99dae82 = external constant [0 x i8]
@olang_loc_b0c5dfd122db8337_2ed6598a574b6003 = external constant [0 x i8]
@olang_loc_64562bc7ca55259a_4dcf078b9ca87c6 = external constant [0 x i8]
declare i1 @compiler_2fcheck_2eplainIndex(ptr %v0, ptr %a0)
@olang_loc_d5f035b3a669b232_703ee1b693614206 = external constant [0 x i8]
declare void @compiler_2fcheck_2estoredExprs(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1)
declare void @compiler_2fcheck_2estoredCatches(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1)
declare void @compiler_2fcheck_2estoredMatch(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_9cea8b157736196b_cebcd42f5be7b27 = external constant [0 x i8]
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v0, ptr %a0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e_2ector(ptr %v0)

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
